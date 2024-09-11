package com.kh.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.kh.entity.Hamburger;

public interface HRepository  extends JpaRepository<Hamburger, Integer>{

}