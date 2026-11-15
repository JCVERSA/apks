package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import com.google.android.exoplayer2.n1;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class n {

    public final Uri f26665a;

    public final long f26666b;

    public final int f26667c;

    public final byte[] f26668d;

    public final Map f26669e;

    public final long f26670f;

    public final long f26671g;

    public final long f26672h;

    public final String f26673i;

    public final int f26674j;

    public final Object f26675k;

    public static final class b {

        private Uri f26676a;

        private long f26677b;

        private int f26678c;

        private byte[] f26679d;

        private Map f26680e;

        private long f26681f;

        private long f26682g;

        private String f26683h;

        private int f26684i;

        private Object f26685j;

        public n a() {
            com.google.android.exoplayer2.util.a.j(this.f26676a, "The uri must be set.");
            return new n(this.f26676a, this.f26677b, this.f26678c, this.f26679d, this.f26680e, this.f26681f, this.f26682g, this.f26683h, this.f26684i, this.f26685j);
        }

        public b b(int i10) {
            this.f26684i = i10;
            return this;
        }

        public b c(byte[] bArr) {
            this.f26679d = bArr;
            return this;
        }

        public b d(int i10) {
            this.f26678c = i10;
            return this;
        }

        public b e(Map map) {
            this.f26680e = map;
            return this;
        }

        public b f(String str) {
            this.f26683h = str;
            return this;
        }

        public b g(long j10) {
            this.f26682g = j10;
            return this;
        }

        public b h(long j10) {
            this.f26681f = j10;
            return this;
        }

        public b i(Uri uri) {
            this.f26676a = uri;
            return this;
        }

        public b j(String str) {
            this.f26676a = Uri.parse(str);
            return this;
        }

        public b k(long j10) {
            this.f26677b = j10;
            return this;
        }

        public b() {
            this.f26678c = 1;
            this.f26680e = Collections.emptyMap();
            this.f26682g = -1L;
        }

        private b(n nVar) {
            this.f26676a = nVar.f26665a;
            this.f26677b = nVar.f26666b;
            this.f26678c = nVar.f26667c;
            this.f26679d = nVar.f26668d;
            this.f26680e = nVar.f26669e;
            this.f26681f = nVar.f26671g;
            this.f26682g = nVar.f26672h;
            this.f26683h = nVar.f26673i;
            this.f26684i = nVar.f26674j;
            this.f26685j = nVar.f26675k;
        }
    }

    static {
        n1.a("goog.exo.datasource");
    }

    public static String c(int i10) {
        if (i10 == 1) {
            return "GET";
        }
        if (i10 == 2) {
            return "POST";
        }
        if (i10 == 3) {
            return "HEAD";
        }
        throw new IllegalStateException();
    }

    public b a() {
        return new b();
    }

    public final String b() {
        return c(this.f26667c);
    }

    public boolean d(int i10) {
        return (this.f26674j & i10) == i10;
    }

    public n e(long j10) {
        long j11 = this.f26672h;
        return f(j10, j11 != -1 ? j11 - j10 : -1L);
    }

    public n f(long j10, long j11) {
        return (j10 == 0 && this.f26672h == j11) ? this : new n(this.f26665a, this.f26666b, this.f26667c, this.f26668d, this.f26669e, this.f26671g + j10, j11, this.f26673i, this.f26674j, this.f26675k);
    }

    public String toString() {
        return "DataSpec[" + b() + " " + this.f26665a + ", " + this.f26671g + ", " + this.f26672h + ", " + this.f26673i + ", " + this.f26674j + "]";
    }

    public n(Uri uri) {
        this(uri, 0L, -1L);
    }

    public n(Uri uri, long j10, long j11) {
        this(uri, 0L, 1, null, Collections.emptyMap(), j10, j11, null, 0, null);
    }

    private n(Uri uri, long j10, int i10, byte[] bArr, Map map, long j11, long j12, String str, int i11, Object obj) {
        byte[] bArr2 = bArr;
        long j13 = j10 + j11;
        com.google.android.exoplayer2.util.a.a(j13 >= 0);
        com.google.android.exoplayer2.util.a.a(j11 >= 0);
        com.google.android.exoplayer2.util.a.a(j12 > 0 || j12 == -1);
        this.f26665a = uri;
        this.f26666b = j10;
        this.f26667c = i10;
        this.f26668d = (bArr2 == null || bArr2.length == 0) ? null : bArr2;
        this.f26669e = Collections.unmodifiableMap(new HashMap(map));
        this.f26671g = j11;
        this.f26670f = j13;
        this.f26672h = j12;
        this.f26673i = str;
        this.f26674j = i11;
        this.f26675k = obj;
    }
}
