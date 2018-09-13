package br.com.portifolio.infra;

import java.io.File;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonServiceException;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.model.PutObjectRequest;

@Service
public class S3Service {
	
	private Logger LOG = LoggerFactory.getLogger(S3Service.class);
	
	private String bucketName = "portfolio-s3";
	
	@Autowired
	private AmazonS3 s3client;
	
	public void uploadFile(String localFilePath) {
		try {
			File file = new File(localFilePath);
			LOG.info("iniciando upload");
			s3client.putObject(new PutObjectRequest(bucketName, "teste.jpg", file));
			LOG.info("finalizando");
		} catch (AmazonServiceException e) {
			LOG.info("Amazon Exception" + e.getErrorMessage());
			LOG.info("Status code: "  + e.getErrorCode() );
		}
		catch (AmazonClientException e) {
			LOG.info("Amazon Exeption: " + e.getMessage());
		}
	}
	
	
	
	

}
