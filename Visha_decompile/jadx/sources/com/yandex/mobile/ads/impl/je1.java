package com.yandex.mobile.ads.impl;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.lzy.okgo.model.HttpHeaders;
import defpackage.y45;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.ExecutionException;

public final class je1 extends jk {
    private final nn.a e;
    private final uh0 f;

    @Nullable
    private final String g;

    @Nullable
    private final um h;

    @Nullable
    private final uh0 i;

    @Nullable
    private wj1<String> j;

    @Nullable
    private vq1 k;

    @Nullable
    private InputStream l;
    private boolean m;
    private long n;
    private long o;

    static {
        u60.a("goog.exo.okhttp");
    }

    public je1(fe1 fe1Var, @Nullable String str, @Nullable uh0 uh0Var) {
        super(true);
        this.e = (nn.a) hg.a(fe1Var);
        this.g = str;
        this.h = null;
        this.i = uh0Var;
        this.j = null;
        this.f = new uh0();
    }

    private int c(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        long j = this.n;
        if (j != -1) {
            long j2 = j - this.o;
            if (j2 == 0) {
                return -1;
            }
            i2 = (int) Math.min(i2, j2);
        }
        InputStream inputStream = this.l;
        int i3 = f92.a;
        int i4 = inputStream.read(bArr, i, i2);
        if (i4 == -1) {
            return -1;
        }
        this.o += (long) i4;
        c(i4);
        return i4;
    }

    private void f() {
        vq1 vq1Var = this.k;
        if (vq1Var != null) {
            zq1 zq1VarA = vq1Var.a();
            zq1VarA.getClass();
            g92.a((Closeable) zq1VarA.c());
            this.k = null;
        }
        this.l = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final long a(xv xvVar) throws rh0 {
        gi0 gi0VarA;
        String string;
        long j = 0;
        this.o = 0L;
        this.n = 0L;
        b(xvVar);
        long j2 = xvVar.f;
        long j3 = xvVar.g;
        String string2 = xvVar.a.toString();
        y45.j(string2, "<this>");
        try {
            y45.j(string2, "<this>");
            gi0VarA = new gi0.a().a(null, string2).a();
        } catch (IllegalArgumentException unused) {
            gi0VarA = null;
        }
        if (gi0VarA == null) {
            throw new rh0("Malformed URL", 1004);
        }
        vp1.a aVarA = new vp1.a().a(gi0VarA);
        um umVar = this.h;
        if (umVar != null) {
            aVarA.a(umVar);
        }
        HashMap map = new HashMap();
        uh0 uh0Var = this.i;
        if (uh0Var != null) {
            map.putAll(uh0Var.a());
        }
        map.putAll(this.f.a());
        map.putAll(xvVar.e);
        for (Map.Entry entry : map.entrySet()) {
            aVarA.b((String) entry.getKey(), (String) entry.getValue());
        }
        int i = hi0.c;
        if (j2 == 0 && j3 == -1) {
            string = null;
        } else {
            StringBuilder sb = new StringBuilder("bytes=");
            sb.append(j2);
            sb.append("-");
            if (j3 != -1) {
                sb.append((j2 + j3) - 1);
            }
            string = sb.toString();
        }
        if (string != null) {
            aVarA.a("Range", string);
        }
        String str = this.g;
        if (str != null) {
            aVarA.a("User-Agent", str);
        }
        if ((xvVar.i & 1) != 1) {
            aVarA.a(HttpHeaders.HEAD_KEY_ACCEPT_ENCODING, "identity");
        }
        byte[] bArr = xvVar.d;
        aVarA.a(xv.a(xvVar.c), bArr != null ? yp1.a(bArr) : xvVar.c == 2 ? yp1.a(f92.f) : null);
        zn1 zn1VarA = this.e.a(aVarA.a());
        try {
            xx1 xx1VarB = xx1.b();
            zn1VarA.a(new ie1(xx1VarB));
            try {
                vq1 vq1Var = (vq1) xx1VarB.get();
                this.k = vq1Var;
                zq1 zq1VarA = vq1Var.a();
                zq1VarA.getClass();
                this.l = zq1VarA.c().inputStream();
                int iD = vq1Var.d();
                if (!vq1Var.h()) {
                    if (iD == 416) {
                        if (xvVar.f == hi0.a(vq1Var.g().a(HttpHeaders.HEAD_KEY_CONTENT_RANGE))) {
                            this.m = true;
                            c(xvVar);
                            long j4 = xvVar.g;
                            if (j4 != -1) {
                                return j4;
                            }
                            return 0L;
                        }
                    }
                    try {
                        InputStream inputStream = this.l;
                        inputStream.getClass();
                        int i2 = f92.a;
                        byte[] bArr2 = new byte[4096];
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        while (true) {
                            int i3 = inputStream.read(bArr2);
                            if (i3 == -1) {
                                break;
                            }
                            byteArrayOutputStream.write(bArr2, 0, i3);
                        }
                        byteArrayOutputStream.toByteArray();
                    } catch (IOException unused2) {
                        int i4 = f92.a;
                    }
                    TreeMap treeMapC = vq1Var.g().c();
                    f();
                    throw new th0(iD, iD == 416 ? new uv(2008) : null, treeMapC);
                }
                cx0 cx0VarB = zq1VarA.b();
                String string3 = cx0VarB != null ? cx0VarB.toString() : "";
                wj1<String> wj1Var = this.j;
                if (wj1Var != null && !wj1Var.apply(string3)) {
                    f();
                    throw new sh0(string3);
                }
                if (iD == 200) {
                    long j5 = xvVar.f;
                    if (j5 != 0) {
                        j = j5;
                    }
                }
                long j6 = xvVar.g;
                if (j6 != -1) {
                    this.n = j6;
                } else {
                    long jA = zq1VarA.a();
                    this.n = jA != -1 ? jA - j : -1L;
                }
                this.m = true;
                c(xvVar);
                try {
                    a(j);
                    return this.n;
                } catch (rh0 e) {
                    f();
                    throw e;
                }
            } catch (InterruptedException unused3) {
                zn1VarA.a();
                throw new InterruptedIOException();
            } catch (ExecutionException e2) {
                throw new IOException(e2);
            }
        } catch (IOException e3) {
            throw rh0.a(e3, 1);
        }
    }

    @Override
    public final void close() {
        if (this.m) {
            this.m = false;
            e();
            f();
        }
    }

    @Override
    public final Map<String, List<String>> getResponseHeaders() {
        vq1 vq1Var = this.k;
        return vq1Var == null ? Collections.emptyMap() : vq1Var.g().c();
    }

    @Override
    @Nullable
    public final Uri getUri() {
        vq1 vq1Var = this.k;
        if (vq1Var == null) {
            return null;
        }
        return Uri.parse(vq1Var.o().g().toString());
    }

    @Override
    public final int read(byte[] bArr, int i, int i2) throws rh0 {
        try {
            return c(bArr, i, i2);
        } catch (IOException e) {
            int i3 = f92.a;
            throw rh0.a(e, 2);
        }
    }

    private void a(long j) throws rh0 {
        if (j == 0) {
            return;
        }
        byte[] bArr = new byte[4096];
        while (j > 0) {
            try {
                int iMin = (int) Math.min(j, 4096);
                InputStream inputStream = this.l;
                int i = f92.a;
                int i2 = inputStream.read(bArr, 0, iMin);
                if (Thread.currentThread().isInterrupted()) {
                    throw new InterruptedIOException();
                }
                if (i2 != -1) {
                    j -= (long) i2;
                    c(i2);
                } else {
                    throw new rh0(2008);
                }
            } catch (IOException e) {
                if (e instanceof rh0) {
                    throw ((rh0) e);
                }
                throw new rh0(2000);
            }
        }
    }
}
