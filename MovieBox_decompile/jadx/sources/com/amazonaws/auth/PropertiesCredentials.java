package com.amazonaws.auth;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class PropertiesCredentials implements AWSCredentials {

    private final String f17748a;

    private final String f17749b;

    public PropertiesCredentials(File file) throws FileNotFoundException {
        if (!file.exists()) {
            throw new FileNotFoundException("File doesn't exist:  " + file.getAbsolutePath());
        }
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            Properties properties = new Properties();
            properties.load(fileInputStream);
            if (properties.getProperty("accessKey") == null || properties.getProperty("secretKey") == null) {
                throw new IllegalArgumentException("The specified file (" + file.getAbsolutePath() + ") doesn't contain the expected properties 'accessKey' and 'secretKey'.");
            }
            this.f17748a = properties.getProperty("accessKey");
            this.f17749b = properties.getProperty("secretKey");
            try {
                fileInputStream.close();
            } catch (IOException unused) {
            }
        } catch (Throwable th2) {
            try {
                fileInputStream.close();
            } catch (IOException unused2) {
            }
            throw th2;
        }
    }

    @Override
    public String b() {
        return this.f17748a;
    }

    @Override
    public String c() {
        return this.f17749b;
    }

    public PropertiesCredentials(InputStream inputStream) {
        Properties properties = new Properties();
        try {
            properties.load(inputStream);
            try {
                inputStream.close();
            } catch (Exception unused) {
            }
            if (properties.getProperty("accessKey") != null && properties.getProperty("secretKey") != null) {
                this.f17748a = properties.getProperty("accessKey");
                this.f17749b = properties.getProperty("secretKey");
                return;
            }
            throw new IllegalArgumentException("The specified properties data doesn't contain the expected properties 'accessKey' and 'secretKey'.");
        } catch (Throwable th2) {
            try {
                inputStream.close();
            } catch (Exception unused2) {
            }
            throw th2;
        }
    }
}
