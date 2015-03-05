package com.zandroid.docker.model;

import lombok.Data;

import org.springframework.data.annotation.Id;

@Data
public class Volume {
	
	@Id
	private String id;
	
	private String volumeType;
	
	private String status;
	
	private Integer size;
	
	private String name;

}
