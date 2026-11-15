package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import java.io.IOException;

public final class sq0 implements z70 {
    private b80 b;
    private int c;
    private int d;
    private int e;

    @Nullable
    private z11 g;
    private a80 h;
    private p22 i;

    @Nullable
    private b21 j;
    private final ag1 a = new ag1(6);
    private long f = -1;

    private void a() {
        b80 b80Var = this.b;
        b80Var.getClass();
        b80Var.a(1024, 4).a(new jc0.a().b().a(new k01(new k01.b[0])).a());
        b80 b80Var2 = this.b;
        b80Var2.getClass();
        b80Var2.a();
        this.b.a(new ex1.b(C.TIME_UNSET, 0L));
        this.c = 6;
    }

    @Override
    public final void release() {
    }

    @Override
    public final void a(b80 b80Var) {
        this.b = b80Var;
    }

    /* JADX WARN: Code duplicated, block: B:80:0x0182  */
    @Override
    public final int a(a80 a80Var, pj1 pj1Var) throws IOException {
        int i;
        String strQ;
        z11 z11Var;
        y11 y11VarA;
        long j;
        int i2 = this.c;
        long j2 = -1;
        if (i2 == 0) {
            this.a.c(2);
            ((wz) a80Var).a(this.a.c(), 0, 2, false);
            int iZ = this.a.z();
            this.d = iZ;
            if (iZ == 65498) {
                if (this.f != -1) {
                    this.c = 4;
                    return 0;
                }
                a();
                return 0;
            }
            if ((iZ >= 65488 && iZ <= 65497) || iZ == 65281) {
                return 0;
            }
            this.c = 1;
            return 0;
        }
        if (i2 == 1) {
            this.a.c(2);
            ((wz) a80Var).a(this.a.c(), 0, 2, false);
            this.e = this.a.z() - 2;
            this.c = 2;
            return 0;
        }
        if (i2 != 2) {
            if (i2 != 4) {
                if (i2 != 5) {
                    if (i2 == 6) {
                        return -1;
                    }
                    throw new IllegalStateException();
                }
                if (this.i == null || a80Var != this.h) {
                    this.h = a80Var;
                    this.i = new p22((wz) a80Var, this.f);
                }
                b21 b21Var = this.j;
                b21Var.getClass();
                int iA = b21Var.a(this.i, pj1Var);
                if (iA == 1) {
                    pj1Var.a += this.f;
                }
                return iA;
            }
            wz wzVar = (wz) a80Var;
            long jA = wzVar.a();
            long j3 = this.f;
            if (jA != j3) {
                pj1Var.a = j3;
                return 1;
            }
            if (!wzVar.b(this.a.c(), 0, 1, true)) {
                a();
            } else {
                wzVar.c();
                if (this.j == null) {
                    this.j = new b21();
                }
                p22 p22Var = new p22(wzVar, this.f);
                this.i = p22Var;
                if (this.j.a(p22Var)) {
                    b21 b21Var2 = this.j;
                    long j4 = this.f;
                    b80 b80Var = this.b;
                    b80Var.getClass();
                    b21Var2.a(new q22(j4, b80Var));
                    z11 z11Var2 = this.g;
                    z11Var2.getClass();
                    k01.b[] bVarArr = {z11Var2};
                    b80 b80Var2 = this.b;
                    b80Var2.getClass();
                    b80Var2.a(1024, 4).a(new jc0.a().b().a(new k01(bVarArr)).a());
                    this.c = 5;
                } else {
                    a();
                }
            }
            return 0;
        }
        if (this.d == 65505) {
            ag1 ag1Var = new ag1(this.e);
            wz wzVar2 = (wz) a80Var;
            wzVar2.a(ag1Var.c(), 0, this.e, false);
            if (this.g == null && "http://ns.adobe.com/xap/1.0/".equals(ag1Var.q()) && (strQ = ag1Var.q()) != null) {
                long jB = wzVar2.b();
                if (jB == -1 || (y11VarA = gl2.a(strQ)) == null || y11VarA.b.size() < 2) {
                    z11Var = null;
                } else {
                    int size = y11VarA.b.size() - 1;
                    boolean z = false;
                    long j5 = -1;
                    long j6 = -1;
                    long j7 = -1;
                    long j8 = -1;
                    while (size >= 0) {
                        y11.a aVar = y11VarA.b.get(size);
                        boolean zEquals = MimeTypes.VIDEO_MP4.equals(aVar.a) | z;
                        if (size == 0) {
                            jB -= aVar.c;
                            j = 0;
                        } else {
                            j = jB - aVar.b;
                        }
                        long j9 = jB;
                        jB = j;
                        if (!zEquals || jB == j9) {
                            z = zEquals;
                        } else {
                            j8 = j9 - jB;
                            j7 = jB;
                            z = false;
                        }
                        if (size == 0) {
                            j5 = jB;
                            j6 = j9;
                        }
                        size--;
                        j2 = -1;
                    }
                    long j10 = j2;
                    if (j7 == j10 || j8 == j10 || j5 == j10 || j6 == j10) {
                        z11Var = null;
                    } else {
                        z11Var = new z11(j5, j6, y11VarA.a, j7, j8);
                    }
                }
                this.g = z11Var;
                if (z11Var != null) {
                    this.f = z11Var.e;
                }
            } else {
                i = 0;
            }
            this.c = i;
            return i;
        }
        ((wz) a80Var).a(this.e);
        i = 0;
        this.c = i;
        return i;
    }

    @Override
    public final void a(long j, long j2) {
        if (j == 0) {
            this.c = 0;
            this.j = null;
        } else if (this.c == 5) {
            b21 b21Var = this.j;
            b21Var.getClass();
            b21Var.a(j, j2);
        }
    }

    @Override
    public final boolean a(a80 a80Var) throws IOException {
        wz wzVar = (wz) a80Var;
        this.a.c(2);
        wzVar.b(this.a.c(), 0, 2, false);
        if (this.a.z() != 65496) {
            return false;
        }
        this.a.c(2);
        wzVar.b(this.a.c(), 0, 2, false);
        int iZ = this.a.z();
        this.d = iZ;
        if (iZ == 65504) {
            this.a.c(2);
            wzVar.b(this.a.c(), 0, 2, false);
            wzVar.a(false, this.a.z() - 2);
            this.a.c(2);
            wzVar.b(this.a.c(), 0, 2, false);
            this.d = this.a.z();
        }
        if (this.d != 65505) {
            return false;
        }
        wzVar.a(false, 2);
        this.a.c(6);
        wzVar.b(this.a.c(), 0, 6, false);
        return this.a.v() == 1165519206 && this.a.z() == 0;
    }
}
