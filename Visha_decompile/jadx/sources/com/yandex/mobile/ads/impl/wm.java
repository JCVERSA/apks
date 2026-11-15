package com.yandex.mobile.ads.impl;

import android.net.Uri;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public final class wm implements tv {
    private final sm a;
    private final tv b;

    @Nullable
    private final o42 c;
    private final tv d;
    private final en e;
    private final boolean f;
    private final boolean g;
    private final boolean h;

    @Nullable
    private Uri i;

    @Nullable
    private xv j;

    @Nullable
    private xv k;

    @Nullable
    private tv l;
    private long m;
    private long n;
    private long o;

    @Nullable
    private fn p;
    private boolean q;
    private boolean r;
    private long s;

    /* JADX WARN: Multi-variable type inference failed */
    private void e() throws IOException {
        tv tvVar = this.l;
        if (tvVar == null) {
            return;
        }
        try {
            tvVar.close();
        } finally {
            this.k = null;
            this.l = null;
            fn fnVar = this.p;
            if (fnVar != null) {
                this.a.b(fnVar);
                this.p = null;
            }
        }
    }

    private boolean h() {
        return this.l == this.b;
    }

    @Override
    public final void a(d72 d72Var) {
        d72Var.getClass();
        this.b.a(d72Var);
        this.d.a(d72Var);
    }

    @Override
    public final void close() throws IOException {
        this.j = null;
        this.i = null;
        this.n = 0L;
        try {
            e();
        } catch (Throwable th) {
            if (h() || (th instanceof sm.a)) {
                this.q = true;
            }
            throw th;
        }
    }

    public final sm f() {
        return this.a;
    }

    public final en g() {
        return this.e;
    }

    @Override
    public final Map<String, List<String>> getResponseHeaders() {
        return !h() ? this.d.getResponseHeaders() : Collections.emptyMap();
    }

    @Override
    @Nullable
    public final Uri getUri() {
        return this.i;
    }

    @Override
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        if (i2 == 0) {
            return 0;
        }
        if (this.o == 0) {
            return -1;
        }
        xv xvVar = this.j;
        xvVar.getClass();
        xv xvVar2 = this.k;
        xvVar2.getClass();
        try {
            if (this.n >= this.s) {
                a(xvVar, true);
            }
            tv tvVar = this.l;
            tvVar.getClass();
            int i4 = tvVar.read(bArr, i, i2);
            if (i4 != -1) {
                long j = i4;
                this.n += j;
                this.m += j;
                long j2 = this.o;
                if (j2 != -1) {
                    this.o = j2 - j;
                }
                return i4;
            }
            if (!h()) {
                long j3 = xvVar2.g;
                if (j3 != -1) {
                    i3 = i4;
                    if (this.m < j3) {
                    }
                } else {
                    i3 = i4;
                }
                String str = xvVar.h;
                int i5 = f92.a;
                this.o = 0L;
                if (this.l != this.c) {
                    return i3;
                }
                es esVar = new es();
                es.a(esVar, this.n);
                this.a.a(str, esVar);
                return i3;
            }
            i3 = i4;
            long j4 = this.o;
            if (j4 <= 0 && j4 != -1) {
                return i3;
            }
            e();
            a(xvVar, false);
            return read(bArr, i, i2);
        } catch (Throwable th) {
            if (h() || (th instanceof sm.a)) {
                this.q = true;
            }
            throw th;
        }
    }

    private wm(sm smVar, @Nullable tv tvVar, hb0 hb0Var, @Nullable vm vmVar, @Nullable en enVar, int i, int i2) {
        this.a = smVar;
        this.b = hb0Var;
        this.e = enVar == null ? en.a : enVar;
        this.f = (i & 1) != 0;
        this.g = false;
        this.h = false;
        if (tvVar != null) {
            this.d = tvVar;
            this.c = vmVar != null ? new o42(tvVar, vmVar) : null;
        } else {
            this.d = mh1.a;
            this.c = null;
        }
    }

    @Override
    public final long a(xv xvVar) throws IOException {
        try {
            String strA = this.e.a(xvVar);
            xv xvVarA = xvVar.a().a(strA).a();
            this.j = xvVarA;
            sm smVar = this.a;
            Uri uri = xvVarA.a;
            String strC = smVar.b(strA).c();
            Uri uri2 = strC == null ? null : Uri.parse(strC);
            if (uri2 != null) {
                uri = uri2;
            }
            this.i = uri;
            this.n = xvVar.f;
            boolean z = (this.g && this.q) || (this.h && xvVar.g == -1);
            this.r = z;
            if (z) {
                this.o = -1L;
            } else {
                long jB = this.a.b(strA).b();
                this.o = jB;
                if (jB != -1) {
                    long j = jB - xvVar.f;
                    this.o = j;
                    if (j < 0) {
                        throw new uv(2008);
                    }
                }
            }
            long jMin = xvVar.g;
            if (jMin != -1) {
                long j2 = this.o;
                if (j2 != -1) {
                    jMin = Math.min(j2, jMin);
                }
                this.o = jMin;
            }
            long j3 = this.o;
            if (j3 > 0 || j3 == -1) {
                a(xvVarA, false);
            }
            long j4 = xvVar.g;
            return j4 != -1 ? j4 : this.o;
        } catch (Throwable th) {
            if (h() || (th instanceof sm.a)) {
                this.q = true;
            }
            throw th;
        }
    }

    public static final class a implements tv.a {
        private sm a;
        private hb0.b b = new hb0.b();
        private en c = en.a;

        @Nullable
        private tv.a d;

        @Override
        public final tv a() {
            tv.a aVar = this.d;
            tv tvVarA = aVar != null ? aVar.a() : null;
            sm smVar = this.a;
            smVar.getClass();
            vm vmVarA = tvVarA != null ? new vm.b().a(smVar).a() : null;
            this.b.getClass();
            return new wm(smVar, tvVarA, new hb0(), vmVarA, this.c, 0, 0);
        }

        public final wm b() {
            tv.a aVar = this.d;
            tv tvVarA = aVar != null ? aVar.a() : null;
            sm smVar = this.a;
            smVar.getClass();
            vm vmVarA = tvVarA != null ? new vm.b().a(smVar).a() : null;
            this.b.getClass();
            return new wm(smVar, tvVarA, new hb0(), vmVarA, this.c, 1, -1000);
        }

        public final a a(sm smVar) {
            this.a = smVar;
            return this;
        }

        public final a a(@Nullable oz.a aVar) {
            this.d = aVar;
            return this;
        }
    }

    private void a(xv xvVar, boolean z) throws IOException {
        fn fnVarE;
        xv xvVarA;
        tv tvVar;
        String str = xvVar.h;
        int i = f92.a;
        if (this.r) {
            fnVarE = null;
        } else if (this.f) {
            try {
                fnVarE = this.a.e(str, this.n, this.o);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                throw new InterruptedIOException();
            }
        } else {
            fnVarE = this.a.c(str, this.n, this.o);
        }
        if (fnVarE == null) {
            tvVar = this.d;
            xvVarA = xvVar.a().b(this.n).a(this.o).a();
        } else if (fnVarE.e) {
            Uri uriFromFile = Uri.fromFile(fnVarE.f);
            long j = fnVarE.c;
            long j2 = this.n - j;
            long jMin = fnVarE.d - j2;
            long j3 = this.o;
            if (j3 != -1) {
                jMin = Math.min(jMin, j3);
            }
            xvVarA = xvVar.a().a(uriFromFile).c(j).b(j2).a(jMin).a();
            tvVar = this.b;
        } else {
            long jMin2 = fnVarE.d;
            if (jMin2 == -1) {
                jMin2 = this.o;
            } else {
                long j4 = this.o;
                if (j4 != -1) {
                    jMin2 = Math.min(jMin2, j4);
                }
            }
            xvVarA = xvVar.a().b(this.n).a(jMin2).a();
            tvVar = this.c;
            if (tvVar == null) {
                tvVar = this.d;
                this.a.b(fnVarE);
                fnVarE = null;
            }
        }
        this.s = (this.r || tvVar != this.d) ? Long.MAX_VALUE : this.n + 102400;
        if (z) {
            tv tvVar2 = this.l;
            tv tvVar3 = this.d;
            if (tvVar2 != tvVar3) {
                throw new IllegalStateException();
            }
            if (tvVar == tvVar3) {
                return;
            }
            try {
                e();
            } catch (Throwable th) {
                if (!fnVarE.e) {
                    this.a.b(fnVarE);
                    throw th;
                }
                throw th;
            }
        }
        if (fnVarE != null && !fnVarE.e) {
            this.p = fnVarE;
        }
        this.l = tvVar;
        this.k = xvVarA;
        this.m = 0L;
        long jA = tvVar.a(xvVarA);
        es esVar = new es();
        if (xvVarA.g == -1 && jA != -1) {
            this.o = jA;
            es.a(esVar, this.n + jA);
        }
        if (!h()) {
            Uri uri = tvVar.getUri();
            this.i = uri;
            es.a(esVar, xvVar.a.equals(uri) ? null : this.i);
        }
        if (this.l == this.c) {
            this.a.a(str, esVar);
        }
    }
}
