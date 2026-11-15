package com.yandex.mobile.ads.impl;

import android.os.SystemClock;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;

final class fd1 {

    public static class a {
        private final String a;
        private final si2 b;

        private a(String str, si2 si2Var) {
            this.a = str;
            this.b = si2Var;
        }
    }

    public static void a(up1<?> up1Var, a aVar) throws si2 {
        nr1 nr1VarH = up1Var.h();
        int iJ = up1Var.j();
        try {
            nr1VarH.a(aVar.b);
            up1Var.a(aVar.a + "-retry [timeout=" + iJ + "]");
        } catch (si2 e) {
            up1Var.a(aVar.a + "-timeout-giveup [timeout=" + iJ + "]");
            throw e;
        }
    }

    public static xc1 a(up1<?> up1Var, long j, List<kf0> list) {
        tm.a aVarC = up1Var.c();
        if (aVarC == null) {
            return new xc1(304, (byte[]) null, true, j, list);
        }
        TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        if (!list.isEmpty()) {
            Iterator<kf0> it = list.iterator();
            while (it.hasNext()) {
                treeSet.add(it.next().a());
            }
        }
        ArrayList arrayList = new ArrayList(list);
        List<kf0> list2 = aVarC.h;
        if (list2 != null) {
            if (!list2.isEmpty()) {
                for (kf0 kf0Var : aVarC.h) {
                    if (!treeSet.contains(kf0Var.a())) {
                        arrayList.add(kf0Var);
                    }
                }
            }
        } else if (!aVarC.g.isEmpty()) {
            for (Map.Entry<String, String> entry : aVarC.g.entrySet()) {
                if (!treeSet.contains(entry.getKey())) {
                    arrayList.add(new kf0(entry.getKey(), entry.getValue()));
                }
            }
        }
        return new xc1(304, aVarC.a, true, j, (List<kf0>) arrayList);
    }

    public static byte[] a(InputStream inputStream, int i, pm pmVar) throws Throwable {
        byte[] bArrA;
        kj1 kj1Var = new kj1(pmVar, i);
        try {
            bArrA = pmVar.a(1024);
            while (true) {
                try {
                    int i2 = inputStream.read(bArrA);
                    if (i2 == -1) {
                        break;
                    }
                    kj1Var.write(bArrA, 0, i2);
                } catch (Throwable th) {
                    th = th;
                    try {
                        inputStream.close();
                    } catch (IOException unused) {
                        boolean z = ti2.a;
                        sp0.e(new Object[0]);
                    }
                    pmVar.a(bArrA);
                    kj1Var.close();
                    throw th;
                }
            }
            byte[] byteArray = kj1Var.toByteArray();
            try {
                inputStream.close();
            } catch (IOException unused2) {
                boolean z2 = ti2.a;
                sp0.e(new Object[0]);
            }
            pmVar.a(bArrA);
            kj1Var.close();
            return byteArray;
        } catch (Throwable th2) {
            th = th2;
            bArrA = null;
        }
    }

    public static a a(up1<?> up1Var, IOException iOException, long j, @Nullable ci0 ci0Var, @Nullable byte[] bArr) throws si2 {
        if (iOException instanceof SocketTimeoutException) {
            return new a("socket", new l52());
        }
        if (iOException instanceof MalformedURLException) {
            throw new RuntimeException("Bad URL " + up1Var.l(), iOException);
        }
        if (ci0Var != null) {
            int iD = ci0Var.d();
            Object[] objArr = {Integer.valueOf(iD), up1Var.l()};
            boolean z = ti2.a;
            sp0.b(objArr);
            if (bArr != null) {
                xc1 xc1Var = new xc1(iD, bArr, false, SystemClock.elapsedRealtime() - j, ci0Var.c());
                if (iD == 401 || iD == 403) {
                    return new a("auth", new ai(xc1Var));
                }
                if (iD >= 400 && iD <= 499) {
                    throw new fp(xc1Var);
                }
                if (iD >= 500 && iD <= 599 && up1Var.v()) {
                    return new a("server", new nx1(xc1Var));
                }
                throw new nx1(xc1Var);
            }
            return new a("network", new uc1());
        }
        if (up1Var.u()) {
            return new a("connection", new nd1());
        }
        throw new nd1(iOException);
    }

    public static void a(long j, up1<?> up1Var, byte[] bArr, int i) {
        if (ti2.a || j > C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS) {
            sp0.a(up1Var, Long.valueOf(j), bArr != null ? Integer.valueOf(bArr.length) : "null", Integer.valueOf(i), Integer.valueOf(up1Var.h().b()));
        }
    }
}
