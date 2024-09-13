import pandas as pd
from sklearn.preprocessing import MinMaxScaler
import numpy as np
from sklearn.utils import shuffle
import tensorflow as tf
import pickle
import os

########## 데이터 로드

df = pd.read_csv('./005930.KS.csv')

########## 데이터 분석

print(df.head())
print(df.info())
print(df.describe())

########## 데이터 전처리

df = df[['Close']]
print(df)

data = df.to_numpy()
train = data[:(len(data) - int(len(data) * 0.3))]
test = data[:int(len(data) * 0.3)]

transformer = MinMaxScaler()
train = transformer.fit_transform(train)
test = transformer.transform(test)

sequence_length = 7
window_length = sequence_length + 1

x_train = []
y_train = []
for i in range(0, len(train) - window_length + 1):
    window = train[i:i + window_length, :]
    x_train.append(window[:-1])
    y_train.append(window[-1])
x_train = np.array(x_train)
y_train = np.array(y_train)

x_test = []
y_test = []
for i in range(0, len(test) - window_length + 1):
    window = test[i:i + window_length, :]
    x_test.append(window[:-1])
    y_test.append(window[-1])
x_test = np.array(x_test)
y_test = np.array(y_test)

print(x_train.shape)
print(y_train.shape)
print(x_test.shape)
print(y_test.shape)

# 수정된 부분: shuffle 함수 사용
x_train, y_train = shuffle(x_train, y_train)

if not os.path.exists('./samsung_electronics_stock_close_price_time_series_regression_model'):
    os.makedirs('./samsung_electronics_stock_close_price_time_series_regression_model')

with open('./transformer.pkl', 'wb') as f:
    pickle.dump(transformer, f)

########## 모델 생성

# Keras의 LSTM을 사용한 모델 구성
model = tf.keras.Sequential([
    tf.keras.layers.LSTM(units=10, input_shape=(sequence_length, 1), return_sequences=False),
    tf.keras.layers.Dense(32, activation='relu'),
    tf.keras.layers.Dense(1, name='output')
])

model.compile(optimizer='adam', loss='mean_squared_error')

model.summary()

########## 모델 학습

history = model.fit(x_train, y_train, epochs=50, validation_data=(x_test, y_test))

# 모델 저장
model.save('./samsung_electronics_stock_close_price_time_series_regression_model/model.h5')

########## 모델 예측 및 검증

y_test_inverse = transformer.inverse_transform(y_test)
y_predict = model.predict(x_test)
y_predict_inverse = transformer.inverse_transform(y_predict)

import matplotlib.pyplot as plt
plt.plot(y_test_inverse, label='Actual')
plt.plot(y_predict_inverse, label='Predicted')
plt.xlabel('Time Period')
plt.ylabel('Close Price')
plt.legend()
plt.show()

x_test_sample = np.array([[30000.000000, 29300.000000, 30000.000000, 29980.000000, 29700.000000, 29020.000000, 28740.000000]])
x_test_sample = transformer.transform(x_test_sample)
x_test_sample = np.expand_dims(x_test_sample, -1)
print(x_test_sample)

y_predict_sample = model.predict(x_test_sample)
y_predict_sample_inverse = transformer.inverse_transform(y_predict_sample)
print(y_predict_sample_inverse.flatten()[0])