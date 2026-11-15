package io.appmetrica.analytics.impl;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public abstract class Wi {
    public static byte[] a(String str) throws NoSuchAlgorithmException {
        MessageDigest messageDigest = MessageDigest.getInstance("MD5");
        messageDigest.reset();
        messageDigest.update(str.getBytes("UTF-8"));
        return messageDigest.digest();
    }
}
