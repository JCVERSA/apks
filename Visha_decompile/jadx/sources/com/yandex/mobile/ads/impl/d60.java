package com.yandex.mobile.ads.impl;

import androidx.browser.trusted.sharing.ShareTarget;
import androidx.core.app.NotificationCompat;
import defpackage.y45;
import defpackage.zfb;
import java.io.IOException;
import java.net.Socket;
import java.util.List;

public final class d60 {
    private final co1 a;
    private final ab b;
    private final zn1 c;
    private final w50 d;
    private ys1.b e;
    private ys1 f;
    private int g;
    private int h;
    private int i;
    private vs1 j;

    public d60(co1 co1Var, ab abVar, zn1 zn1Var, w50 w50Var) {
        y45.j(co1Var, "connectionPool");
        y45.j(abVar, "address");
        y45.j(zn1Var, NotificationCompat.CATEGORY_CALL);
        y45.j(w50Var, "eventListener");
        this.a = co1Var;
        this.b = abVar;
        this.c = zn1Var;
        this.d = w50Var;
    }

    public final c60 a(fe1 fe1Var, do1 do1Var) {
        y45.j(fe1Var, "client");
        y45.j(do1Var, "chain");
        try {
            int iC = do1Var.c();
            int iE = do1Var.e();
            int iG = do1Var.g();
            fe1Var.getClass();
            return a(iC, iE, iG, fe1Var.v(), !y45.e(do1Var.f().f(), ShareTarget.METHOD_GET)).a(fe1Var, do1Var);
        } catch (xs1 e) {
            a(e.b());
            throw e;
        } catch (IOException e2) {
            a(e2);
            throw new xs1(e2);
        }
    }

    public final boolean b() {
        ys1 ys1Var;
        ao1 ao1VarD;
        int i = this.g;
        if (i == 0 && this.h == 0 && this.i == 0) {
            return false;
        }
        if (this.j != null) {
            return true;
        }
        vs1 vs1VarK = null;
        if (i <= 1 && this.h <= 1 && this.i <= 0 && (ao1VarD = this.c.d()) != null) {
            synchronized (ao1VarD) {
                if (ao1VarD.e() == 0) {
                    gi0 gi0VarK = ao1VarD.k().a().k();
                    gi0 gi0VarK2 = this.b.k();
                    byte[] bArr = g92.a;
                    y45.j(gi0VarK, "<this>");
                    y45.j(gi0VarK2, "other");
                    if (y45.e(gi0VarK.g(), gi0VarK2.g()) && gi0VarK.i() == gi0VarK2.i() && y45.e(gi0VarK.k(), gi0VarK2.k())) {
                        vs1VarK = ao1VarD.k();
                    }
                }
            }
        }
        if (vs1VarK != null) {
            this.j = vs1VarK;
            return true;
        }
        ys1.b bVar = this.e;
        if ((bVar == null || !bVar.b()) && (ys1Var = this.f) != null) {
            return ys1Var.a();
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:32:0x007b  */
    /* JADX WARN: Code duplicated, block: B:33:0x0096  */
    /* JADX WARN: Code duplicated, block: B:35:0x009a  */
    /* JADX WARN: Code duplicated, block: B:37:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:39:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:41:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:44:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:47:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:49:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:50:0x010d  */
    /* JADX WARN: Code duplicated, block: B:55:0x014e  */
    /* JADX WARN: Code duplicated, block: B:56:0x0174  */
    /* JADX WARN: Code duplicated, block: B:86:0x0175 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:94:0x01cc A[SYNTHETIC] */
    private final ao1 a(int i, int i2, int i3, boolean z, boolean z2) throws IOException {
        vs1 vs1VarC;
        ys1.b bVar;
        ys1 ys1Var;
        ys1.b bVarB;
        List<vs1> listA;
        ao1 ao1Var;
        ys1.b bVar2;
        ys1 ys1Var2;
        Socket socketL;
        while (!this.c.j()) {
            ao1 ao1VarD = this.c.d();
            if (ao1VarD != null) {
                synchronized (ao1VarD) {
                    try {
                        socketL = (ao1VarD.d() || !a(ao1VarD.k().a().k())) ? this.c.l() : null;
                        zfb zfbVar = zfb.a;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (this.c.d() == null) {
                    if (socketL != null) {
                        g92.a(socketL);
                    }
                    w50 w50Var = this.d;
                    zn1 zn1Var = this.c;
                    w50Var.getClass();
                    y45.j(zn1Var, NotificationCompat.CATEGORY_CALL);
                    y45.j(ao1VarD, "connection");
                    this.g = 0;
                    this.h = 0;
                    this.i = 0;
                    if (this.a.a(this.b, this.c, null, false)) {
                        ao1VarD = this.c.d();
                        y45.g(ao1VarD);
                        w50 w50Var2 = this.d;
                        zn1 zn1Var2 = this.c;
                        w50Var2.getClass();
                        y45.j(zn1Var2, NotificationCompat.CATEGORY_CALL);
                        y45.j(ao1VarD, "connection");
                    } else {
                        vs1VarC = this.j;
                        try {
                            if (vs1VarC != null) {
                                y45.g(vs1VarC);
                                this.j = null;
                            } else {
                                bVar = this.e;
                                if (bVar != null) {
                                    y45.g(bVar);
                                    if (bVar.b()) {
                                        ys1.b bVar3 = this.e;
                                        y45.g(bVar3);
                                        vs1VarC = bVar3.c();
                                    }
                                }
                                ys1Var = this.f;
                                if (ys1Var == null) {
                                    ys1Var = new ys1(this.b, this.c.c().n(), this.c, this.d);
                                    this.f = ys1Var;
                                }
                                bVarB = ys1Var.b();
                                this.e = bVarB;
                                listA = bVarB.a();
                                if (!this.c.j()) {
                                    if (this.a.a(this.b, this.c, listA, false)) {
                                        ao1VarD = this.c.d();
                                        y45.g(ao1VarD);
                                        w50 w50Var3 = this.d;
                                        zn1 zn1Var3 = this.c;
                                        w50Var3.getClass();
                                        y45.j(zn1Var3, NotificationCompat.CATEGORY_CALL);
                                        y45.j(ao1VarD, "connection");
                                    } else {
                                        vs1VarC = bVarB.c();
                                        ao1Var = new ao1(this.a, vs1VarC);
                                        this.c.b(ao1Var);
                                        ao1Var.a(i, i2, i3, z, this.c, this.d);
                                        this.c.b((ao1) null);
                                        this.c.c().n().a(ao1Var.k());
                                        if (this.a.a(this.b, this.c, listA, true)) {
                                            ao1 ao1VarD2 = this.c.d();
                                            y45.g(ao1VarD2);
                                            this.j = vs1VarC;
                                            g92.a(ao1Var.m());
                                            w50 w50Var4 = this.d;
                                            zn1 zn1Var4 = this.c;
                                            w50Var4.getClass();
                                            y45.j(zn1Var4, NotificationCompat.CATEGORY_CALL);
                                            y45.j(ao1VarD2, "connection");
                                            ao1VarD = ao1VarD2;
                                        } else {
                                            synchronized (ao1Var) {
                                                this.a.b(ao1Var);
                                                this.c.a(ao1Var);
                                                zfb zfbVar2 = zfb.a;
                                            }
                                            w50 w50Var5 = this.d;
                                            zn1 zn1Var5 = this.c;
                                            w50Var5.getClass();
                                            y45.j(zn1Var5, NotificationCompat.CATEGORY_CALL);
                                            y45.j(ao1Var, "connection");
                                            ao1VarD = ao1Var;
                                        }
                                    }
                                } else {
                                    throw new IOException("Canceled");
                                }
                            }
                            ao1Var.a(i, i2, i3, z, this.c, this.d);
                            this.c.b((ao1) null);
                            this.c.c().n().a(ao1Var.k());
                            if (this.a.a(this.b, this.c, listA, true)) {
                                ao1 ao1VarD3 = this.c.d();
                                y45.g(ao1VarD3);
                                this.j = vs1VarC;
                                g92.a(ao1Var.m());
                                w50 w50Var6 = this.d;
                                zn1 zn1Var6 = this.c;
                                w50Var6.getClass();
                                y45.j(zn1Var6, NotificationCompat.CATEGORY_CALL);
                                y45.j(ao1VarD3, "connection");
                                ao1VarD = ao1VarD3;
                            } else {
                                synchronized (ao1Var) {
                                    this.a.b(ao1Var);
                                    this.c.a(ao1Var);
                                    zfb zfbVar3 = zfb.a;
                                    w50 w50Var7 = this.d;
                                    zn1 zn1Var7 = this.c;
                                    w50Var7.getClass();
                                    y45.j(zn1Var7, NotificationCompat.CATEGORY_CALL);
                                    y45.j(ao1Var, "connection");
                                    ao1VarD = ao1Var;
                                }
                            }
                        } catch (Throwable th2) {
                            this.c.b((ao1) null);
                            throw th2;
                        }
                        listA = null;
                        ao1Var = new ao1(this.a, vs1VarC);
                        this.c.b(ao1Var);
                    }
                } else if (socketL != null) {
                    throw new IllegalStateException("Check failed.");
                }
            } else {
                this.g = 0;
                this.h = 0;
                this.i = 0;
                if (this.a.a(this.b, this.c, null, false)) {
                    ao1VarD = this.c.d();
                    y45.g(ao1VarD);
                    w50 w50Var8 = this.d;
                    zn1 zn1Var8 = this.c;
                    w50Var8.getClass();
                    y45.j(zn1Var8, NotificationCompat.CATEGORY_CALL);
                    y45.j(ao1VarD, "connection");
                } else {
                    vs1VarC = this.j;
                    if (vs1VarC != null) {
                        y45.g(vs1VarC);
                        this.j = null;
                    } else {
                        bVar = this.e;
                        if (bVar != null) {
                            y45.g(bVar);
                            if (bVar.b()) {
                                ys1.b bVar4 = this.e;
                                y45.g(bVar4);
                                vs1VarC = bVar4.c();
                            }
                        }
                        ys1Var = this.f;
                        if (ys1Var == null) {
                            ys1Var = new ys1(this.b, this.c.c().n(), this.c, this.d);
                            this.f = ys1Var;
                        }
                        bVarB = ys1Var.b();
                        this.e = bVarB;
                        listA = bVarB.a();
                        if (!this.c.j()) {
                            if (this.a.a(this.b, this.c, listA, false)) {
                                ao1VarD = this.c.d();
                                y45.g(ao1VarD);
                                w50 w50Var9 = this.d;
                                zn1 zn1Var9 = this.c;
                                w50Var9.getClass();
                                y45.j(zn1Var9, NotificationCompat.CATEGORY_CALL);
                                y45.j(ao1VarD, "connection");
                            } else {
                                vs1VarC = bVarB.c();
                                ao1Var = new ao1(this.a, vs1VarC);
                                this.c.b(ao1Var);
                                ao1Var.a(i, i2, i3, z, this.c, this.d);
                                this.c.b((ao1) null);
                                this.c.c().n().a(ao1Var.k());
                                if (this.a.a(this.b, this.c, listA, true)) {
                                    ao1 ao1VarD4 = this.c.d();
                                    y45.g(ao1VarD4);
                                    this.j = vs1VarC;
                                    g92.a(ao1Var.m());
                                    w50 w50Var10 = this.d;
                                    zn1 zn1Var10 = this.c;
                                    w50Var10.getClass();
                                    y45.j(zn1Var10, NotificationCompat.CATEGORY_CALL);
                                    y45.j(ao1VarD4, "connection");
                                    ao1VarD = ao1VarD4;
                                } else {
                                    synchronized (ao1Var) {
                                        this.a.b(ao1Var);
                                        this.c.a(ao1Var);
                                        zfb zfbVar4 = zfb.a;
                                        w50 w50Var11 = this.d;
                                        zn1 zn1Var11 = this.c;
                                        w50Var11.getClass();
                                        y45.j(zn1Var11, NotificationCompat.CATEGORY_CALL);
                                        y45.j(ao1Var, "connection");
                                        ao1VarD = ao1Var;
                                    }
                                }
                            }
                        } else {
                            throw new IOException("Canceled");
                        }
                    }
                    listA = null;
                    ao1Var = new ao1(this.a, vs1VarC);
                    this.c.b(ao1Var);
                    ao1Var.a(i, i2, i3, z, this.c, this.d);
                    this.c.b((ao1) null);
                    this.c.c().n().a(ao1Var.k());
                    if (this.a.a(this.b, this.c, listA, true)) {
                        ao1 ao1VarD5 = this.c.d();
                        y45.g(ao1VarD5);
                        this.j = vs1VarC;
                        g92.a(ao1Var.m());
                        w50 w50Var12 = this.d;
                        zn1 zn1Var12 = this.c;
                        w50Var12.getClass();
                        y45.j(zn1Var12, NotificationCompat.CATEGORY_CALL);
                        y45.j(ao1VarD5, "connection");
                        ao1VarD = ao1VarD5;
                    } else {
                        synchronized (ao1Var) {
                            this.a.b(ao1Var);
                            this.c.a(ao1Var);
                            zfb zfbVar5 = zfb.a;
                            w50 w50Var13 = this.d;
                            zn1 zn1Var13 = this.c;
                            w50Var13.getClass();
                            y45.j(zn1Var13, NotificationCompat.CATEGORY_CALL);
                            y45.j(ao1Var, "connection");
                            ao1VarD = ao1Var;
                        }
                    }
                }
            }
            if (ao1VarD.a(z2)) {
                return ao1VarD;
            }
            ao1VarD.j();
            if (this.j == null && (bVar2 = this.e) != null && !bVar2.b() && (ys1Var2 = this.f) != null && !ys1Var2.a()) {
                throw new IOException("exhausted all routes");
            }
        }
        throw new IOException("Canceled");
    }

    public final ab a() {
        return this.b;
    }

    public final boolean a(gi0 gi0Var) {
        y45.j(gi0Var, "url");
        gi0 gi0VarK = this.b.k();
        return gi0Var.i() == gi0VarK.i() && y45.e(gi0Var.g(), gi0VarK.g());
    }

    public final void a(IOException iOException) {
        y45.j(iOException, "e");
        this.j = null;
        if ((iOException instanceof z22) && ((z22) iOException).b == t50.h) {
            this.g++;
        } else if (iOException instanceof qr) {
            this.h++;
        } else {
            this.i++;
        }
    }
}
