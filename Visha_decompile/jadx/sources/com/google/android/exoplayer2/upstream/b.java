package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import androidx.browser.trusted.sharing.ShareTarget;
import defpackage.pi3;
import defpackage.zi;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class b {
    public final Uri a;
    public final long b;
    public final int c;
    public final byte[] d;
    public final Map e;
    public final long f;
    public final long g;
    public final long h;
    public final String i;
    public final int j;
    public final Object k;

    public static final class C0085b {
        public Uri a;
        public long b;
        public int c;
        public byte[] d;
        public Map e;
        public long f;
        public long g;
        public String h;
        public int i;
        public Object j;

        public b a() {
            zi.j(this.a, "The uri must be set.");
            return new b(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j);
        }

        public C0085b b(int i) {
            this.i = i;
            return this;
        }

        public C0085b c(byte[] bArr) {
            this.d = bArr;
            return this;
        }

        public C0085b d(int i) {
            this.c = i;
            return this;
        }

        public C0085b e(Map map) {
            this.e = map;
            return this;
        }

        public C0085b f(String str) {
            this.h = str;
            return this;
        }

        public C0085b g(long j) {
            this.g = j;
            return this;
        }

        public C0085b h(long j) {
            this.f = j;
            return this;
        }

        public C0085b i(Uri uri) {
            this.a = uri;
            return this;
        }

        public C0085b j(String str) {
            this.a = Uri.parse(str);
            return this;
        }

        public C0085b k(long j) {
            this.b = j;
            return this;
        }

        public C0085b() {
            this.c = 1;
            this.e = Collections.emptyMap();
            this.g = -1L;
        }

        public C0085b(b bVar) {
            this.a = bVar.a;
            this.b = bVar.b;
            this.c = bVar.c;
            this.d = bVar.d;
            this.e = bVar.e;
            this.f = bVar.g;
            this.g = bVar.h;
            this.h = bVar.i;
            this.i = bVar.j;
            this.j = bVar.k;
        }
    }

    static {
        pi3.a("goog.exo.datasource");
    }

    public static String c(int i) {
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

    public C0085b a() {
        return new C0085b();
    }

    public final String b() {
        return c(this.c);
    }

    public boolean d(int i) {
        return (this.j & i) == i;
    }

    public b e(long j, long j2) {
        return (j == 0 && this.h == j2) ? this : new b(this.a, this.b, this.c, this.d, this.e, this.g + j, j2, this.i, this.j, this.k);
    }

    public String toString() {
        return "DataSpec[" + b() + " " + this.a + ", " + this.g + ", " + this.h + ", " + this.i + ", " + this.j + "]";
    }

    public b(Uri uri, long j, int i, byte[] bArr, Map map, long j2, long j3, String str, int i2, Object obj) {
        byte[] bArr2 = bArr;
        long j4 = j + j2;
        zi.a(j4 >= 0);
        zi.a(j2 >= 0);
        zi.a(j3 > 0 || j3 == -1);
        this.a = uri;
        this.b = j;
        this.c = i;
        this.d = (bArr2 == null || bArr2.length == 0) ? null : bArr2;
        this.e = Collections.unmodifiableMap(new HashMap(map));
        this.g = j2;
        this.f = j4;
        this.h = j3;
        this.i = str;
        this.j = i2;
        this.k = obj;
    }
}
