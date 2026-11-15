package com.amazonaws.services.s3.model;

import java.util.List;

public class CORSRule {

    private String f18070a;

    private List f18071b;

    private List f18072c;

    private int f18073d;

    private List f18074e;

    private List f18075f;

    public enum AllowedMethods {
        GET("GET"),
        PUT("PUT"),
        HEAD("HEAD"),
        POST("POST"),
        DELETE("DELETE");

        private final String AllowedMethod;

        AllowedMethods(String str) {
            this.AllowedMethod = str;
        }

        public static AllowedMethods fromValue(String str) throws IllegalArgumentException {
            for (AllowedMethods allowedMethods : values()) {
                String string = allowedMethods.toString();
                if (string == null && str == null) {
                    return allowedMethods;
                }
                if (string != null && string.equals(str)) {
                    return allowedMethods;
                }
            }
            throw new IllegalArgumentException("Cannot create enum from " + str + " value!");
        }

        @Override
        public String toString() {
            return this.AllowedMethod;
        }
    }

    public void a(List list) {
        this.f18075f = list;
    }

    public void b(List list) {
        this.f18071b = list;
    }

    public void c(List list) {
        this.f18072c = list;
    }

    public void d(List list) {
        this.f18074e = list;
    }

    public void e(String str) {
        this.f18070a = str;
    }

    public void f(int i10) {
        this.f18073d = i10;
    }
}
