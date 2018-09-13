package br.com.portifolio.conf;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.amazonaws.auth.AWSStaticCredentialsProvider;
import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.regions.Regions;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3ClientBuilder;

@Configuration
public class S3Config {
	
	private String awsId;
	
	private String awsKey;
	
	private String region = "sa-east-1";

	@Bean
	public AmazonS3 s3client() {
	BasicAWSCredentials awsCred	= new BasicAWSCredentials(awsId, awsKey);
	AmazonS3 s3client = AmazonS3ClientBuilder.standard().withRegion(Regions.fromName(region)) 
		.withCredentials(new AWSStaticCredentialsProvider(awsCred)).build();
			
	return s3client;
			
	}
	

}
