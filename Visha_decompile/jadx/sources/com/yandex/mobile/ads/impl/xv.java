package com.yandex.mobile.ads.impl;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.browser.trusted.sharing.ShareTarget;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class xv {
    public final Uri a;
    public final long b;
    public final int c;

    @Nullable
    public final byte[] d;
    public final Map<String, String> e;
    public final long f;
    public final long g;

    @Nullable
    public final String h;
    public final int i;

    @Nullable
    public final Object j;

    public static final class a {

        @Nullable
        private Uri a;
        private long b;
        private int c;

        @Nullable
        private byte[] d;
        private Map<String, String> e;
        private long f;
        private long g;

        @Nullable
        private String h;
        private int i;

        @Nullable
        private Object j;

        public final xv a() {
            if (this.a != null) {
                return new xv(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j);
            }
            throw new IllegalStateException("The uri must be set.");
        }

        public final a b() {
            this.c = 2;
            return this;
        }

        public final a c(long j) {
            this.b = j;
            return this;
        }

        public a() {
            this.c = 1;
            this.e = Collections.emptyMap();
            this.g = -1L;
        }

        public final a b(long j) {
            this.f = j;
            return this;
        }

        public final a b(String str) {
            this.a = Uri.parse(str);
            return this;
        }

        public final a a(int i) {
            this.i = i;
            return this;
        }

        public final a a(@Nullable byte[] bArr) {
            this.d = bArr;
            return this;
        }

        private a(xv xvVar) {
            this.a = xvVar.a;
            this.b = xvVar.b;
            this.c = xvVar.c;
            this.d = xvVar.d;
            this.e = xvVar.e;
            this.f = xvVar.f;
            this.g = xvVar.g;
            this.h = xvVar.h;
            this.i = xvVar.i;
            this.j = xvVar.j;
        }

        public final a a(Map<String, String> map) {
            this.e = map;
            return this;
        }

        public final a a(@Nullable String str) {
            this.h = str;
            return this;
        }

        public final a a(long j) {
            this.g = j;
            return this;
        }

        public final a a(Uri uri) {
            this.a = uri;
            return this;
        }
    }

    static {
        u60.a("goog.exo.datasource");
    }

    public static String a(int i) {
        if (i == 1) {
            return ShareTarget.METHOD_GET;
        }
        if (i == 2) {
            return "POST";
        }
        if (i == 3) {
            return "HEAD";
        }
        throw new IllegalStateException();
    }

    public final String toString() {
        return "DataSpec[" + a(this.c) + " " + this.a + ", " + this.f + ", " + this.g + ", " + this.h + ", " + this.i + "]";
    }

    private xv(Uri uri, long j, int i, @Nullable byte[] bArr, Map<String, String> map, long j2, long j3, @Nullable String str, int i2, @Nullable Object obj) {
        byte[] bArr2 = bArr;
        hg.a(j + j2 >= 0);
        hg.a(j2 >= 0);
        hg.a(j3 > 0 || j3 == -1);
        this.a = uri;
        this.b = j;
        this.c = i;
        this.d = (bArr2 == null || bArr2.length == 0) ? null : bArr2;
        this.e = Collections.unmodifiableMap(new HashMap(map));
        this.f = j2;
        this.g = j3;
        this.h = str;
        this.i = i2;
        this.j = obj;
    }

    public final xv a(long j) {
        return this.g == j ? this : new xv(this.a, this.b, this.c, this.d, this.e, this.f, j, this.h, this.i, this.j);
    }

    public final a a() {
        return new a();
    }
}
