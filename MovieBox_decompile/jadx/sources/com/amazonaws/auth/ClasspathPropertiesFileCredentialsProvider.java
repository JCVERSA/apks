package com.amazonaws.auth;

import com.amazonaws.AmazonClientException;
import java.io.IOException;
import java.io.InputStream;

@Deprecated
public class ClasspathPropertiesFileCredentialsProvider implements AWSCredentialsProvider {

    private static String f17740b = "AwsCredentials.properties";

    private final String f17741a;

    public ClasspathPropertiesFileCredentialsProvider() {
        this(f17740b);
    }

    @Override
    public AWSCredentials a() {
        InputStream resourceAsStream = getClass().getResourceAsStream(this.f17741a);
        if (resourceAsStream == null) {
            throw new AmazonClientException("Unable to load AWS credentials from the " + this.f17741a + " file on the classpath");
        }
        try {
            return new PropertiesCredentials(resourceAsStream);
        } catch (IOException e10) {
            throw new AmazonClientException("Unable to load AWS credentials from the " + this.f17741a + " file on the classpath", e10);
        }
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.f17741a + ")";
    }

    public ClasspathPropertiesFileCredentialsProvider(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Credentials file path cannot be null");
        }
        if (str.startsWith("/")) {
            this.f17741a = str;
            return;
        }
        this.f17741a = "/" + str;
    }
}
