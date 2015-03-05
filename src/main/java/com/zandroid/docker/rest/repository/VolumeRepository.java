package com.zandroid.docker.rest.repository;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.zandroid.docker.model.Volume;

@RepositoryRestResource(collectionResourceRel = "volume", path = "volume")
public interface VolumeRepository extends MongoRepository<Volume, String> {

}
