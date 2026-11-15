package com.facebook.biddingkit.utils;

import java.util.UUID;

public class RandomString {
    private static final int LENGTH = 20;

    public static String get() {
        return UUID.randomUUID().toString().replaceAll("-", "").substring(0, 20);
    }
}
