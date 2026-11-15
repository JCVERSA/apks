package com.amazonaws.mobileconnectors.s3.transferutility;

import com.amazonaws.services.s3.AmazonS3;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

abstract class S3ClientReference {

    private static Map f17834a = new ConcurrentHashMap();

    public static AmazonS3 a(Integer num) {
        return (AmazonS3) f17834a.get(num);
    }

    public static void b(Integer num, AmazonS3 amazonS3) {
        f17834a.put(num, amazonS3);
    }

    public static void c(Integer num) {
        f17834a.remove(num);
    }
}
