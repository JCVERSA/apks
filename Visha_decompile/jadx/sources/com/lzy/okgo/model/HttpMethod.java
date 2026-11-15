package com.lzy.okgo.model;

import androidx.browser.trusted.sharing.ShareTarget;

public enum HttpMethod {
    GET(ShareTarget.METHOD_GET),
    POST("POST"),
    PUT("PUT"),
    DELETE("DELETE"),
    HEAD("HEAD"),
    PATCH("PATCH"),
    OPTIONS("OPTIONS"),
    TRACE("TRACE");

    private final String value;

    public static class a {
        public static final int[] a;

        static {
            int[] iArr = new int[HttpMethod.values().length];
            a = iArr;
            try {
                iArr[HttpMethod.POST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[HttpMethod.PUT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[HttpMethod.PATCH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[HttpMethod.DELETE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[HttpMethod.OPTIONS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    HttpMethod(String str) {
        this.value = str;
    }

    public boolean hasBody() {
        int i = a.a[ordinal()];
        return i == 1 || i == 2 || i == 3 || i == 4 || i == 5;
    }

    @Override
    public String toString() {
        return this.value;
    }
}
