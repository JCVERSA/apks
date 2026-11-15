package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class sb2 {
    private final String a;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public sb2(int i, String str) {
        this(str);
        y45.j(str, "errorDescription");
    }

    public final String a() {
        return this.a;
    }

    public static final class a {
        public static sb2 a(String str) {
            if (str == null) {
                str = "Ad request failed with network error";
            }
            return new sb2(2, str);
        }

        public static sb2 b(String str) {
            y45.j(str, "description");
            return new sb2(1, str);
        }

        public static sb2 a(g50 g50Var) {
            y45.j(g50Var, "error");
            String message = g50Var.getMessage();
            if (message == null) {
                message = "Ad request completed successfully, but there are no ads available.";
            }
            return new sb2(3, message);
        }

        public static sb2 b() {
            y45.j("Server temporarily unavailable. Please, try again later.", "message");
            return new sb2(4, "Server temporarily unavailable. Please, try again later.");
        }

        public static sb2 a() {
            return new sb2(1, "Internal error. Failed to parse response");
        }
    }

    private sb2(String str) {
        this.a = str;
    }
}
