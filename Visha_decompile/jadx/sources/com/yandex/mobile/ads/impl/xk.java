package com.yandex.mobile.ads.impl;

import android.os.SystemClock;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collections;
import java.util.List;

public final class xk implements sc1 {
    private final nk a;
    protected final pm b;

    public xk(fi0 fi0Var, pm pmVar) {
        this.a = fi0Var;
        this.b = pmVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x001a, code lost:
    
        r12 = r3.d();
        r0 = r3.c();
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final xc1 a(up1<?> up1Var) throws si2 {
        IOException iOException;
        ci0 ci0Var;
        byte[] bArr;
        ci0 ci0VarA;
        int iD;
        List<kf0> listC;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        while (true) {
            Collections.emptyList();
            try {
                ci0VarA = this.a.a(up1Var, wh0.a(up1Var.c()));
                try {
                    break;
                } catch (IOException e) {
                    bArr = null;
                    ci0Var = ci0VarA;
                    iOException = e;
                }
            } catch (IOException e2) {
                iOException = e2;
                ci0Var = null;
                bArr = null;
            }
            fd1.a(up1Var, fd1.a(up1Var, iOException, jElapsedRealtime, ci0Var, bArr));
        }
        if (iD == 304) {
            return fd1.a(up1Var, SystemClock.elapsedRealtime() - jElapsedRealtime, listC);
        }
        InputStream inputStreamA = ci0VarA.a();
        byte[] bArrA = inputStreamA != null ? fd1.a(inputStreamA, ci0VarA.b(), this.b) : new byte[0];
        fd1.a(SystemClock.elapsedRealtime() - jElapsedRealtime, up1Var, bArrA, iD);
        if (iD < 200 || iD > 299) {
            throw new IOException();
        }
        return new xc1(iD, bArrA, false, SystemClock.elapsedRealtime() - jElapsedRealtime, listC);
    }
}
