package org.bouncycastle.pqc.crypto.lms;

import com.google.android.gms.common.ConnectionResult;
import defpackage.cx6;
import defpackage.l1;
import java.util.HashMap;
import java.util.Map;

public class LMOtsParameters {
    public static final LMOtsParameters h;
    public static final LMOtsParameters i;
    public static final LMOtsParameters j;
    public static final LMOtsParameters k;
    public static final LMOtsParameters l;
    public static final LMOtsParameters m;
    public static final LMOtsParameters n;
    public static final LMOtsParameters o;
    public static final LMOtsParameters p;
    public static final LMOtsParameters q;
    public static final LMOtsParameters r;
    public static final LMOtsParameters s;
    public static final LMOtsParameters t;
    public static final LMOtsParameters u;
    public static final LMOtsParameters v;
    public static final LMOtsParameters w;
    public static final Map x;
    public final int a;
    public final int b;
    public final int c;
    public final int d;
    public final int e;
    public final int f;
    public final l1 g;

    static {
        l1 l1Var = cx6.c;
        h = new LMOtsParameters(1, 32, 1, 265, 7, 8516, l1Var);
        i = new LMOtsParameters(2, 32, 2, 133, 6, 4292, l1Var);
        j = new LMOtsParameters(3, 32, 4, 67, 4, 2180, l1Var);
        k = new LMOtsParameters(4, 32, 8, 34, 0, 1124, l1Var);
        l = new LMOtsParameters(5, 24, 1, 200, 8, 5436, l1Var);
        m = new LMOtsParameters(6, 24, 2, 101, 6, 2940, l1Var);
        n = new LMOtsParameters(7, 24, 4, 51, 4, ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED, l1Var);
        o = new LMOtsParameters(8, 24, 8, 26, 0, 1020, l1Var);
        l1 l1Var2 = cx6.t;
        p = new LMOtsParameters(9, 32, 1, 265, 7, 8516, l1Var2);
        q = new LMOtsParameters(10, 32, 2, 133, 6, 4292, l1Var2);
        r = new LMOtsParameters(11, 32, 4, 67, 4, 2180, l1Var2);
        s = new LMOtsParameters(12, 32, 8, 34, 0, 1124, l1Var2);
        t = new LMOtsParameters(13, 24, 1, 200, 8, 5436, l1Var2);
        u = new LMOtsParameters(14, 24, 2, 101, 6, 2940, l1Var2);
        v = new LMOtsParameters(15, 24, 4, 51, 4, ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED, l1Var2);
        w = new LMOtsParameters(16, 24, 8, 26, 0, 1020, l1Var2);
        x = new HashMap<Object, LMOtsParameters>() {
            {
                LMOtsParameters lMOtsParameters = LMOtsParameters.h;
                put(Integer.valueOf(lMOtsParameters.a), lMOtsParameters);
                LMOtsParameters lMOtsParameters2 = LMOtsParameters.i;
                put(Integer.valueOf(lMOtsParameters2.a), lMOtsParameters2);
                LMOtsParameters lMOtsParameters3 = LMOtsParameters.j;
                put(Integer.valueOf(lMOtsParameters3.a), lMOtsParameters3);
                LMOtsParameters lMOtsParameters4 = LMOtsParameters.k;
                put(Integer.valueOf(lMOtsParameters4.a), lMOtsParameters4);
                LMOtsParameters lMOtsParameters5 = LMOtsParameters.l;
                put(Integer.valueOf(lMOtsParameters5.a), lMOtsParameters5);
                LMOtsParameters lMOtsParameters6 = LMOtsParameters.m;
                put(Integer.valueOf(lMOtsParameters6.a), lMOtsParameters6);
                LMOtsParameters lMOtsParameters7 = LMOtsParameters.n;
                put(Integer.valueOf(lMOtsParameters7.a), lMOtsParameters7);
                LMOtsParameters lMOtsParameters8 = LMOtsParameters.o;
                put(Integer.valueOf(lMOtsParameters8.a), lMOtsParameters8);
                LMOtsParameters lMOtsParameters9 = LMOtsParameters.p;
                put(Integer.valueOf(lMOtsParameters9.a), lMOtsParameters9);
                LMOtsParameters lMOtsParameters10 = LMOtsParameters.q;
                put(Integer.valueOf(lMOtsParameters10.a), lMOtsParameters10);
                LMOtsParameters lMOtsParameters11 = LMOtsParameters.r;
                put(Integer.valueOf(lMOtsParameters11.a), lMOtsParameters11);
                LMOtsParameters lMOtsParameters12 = LMOtsParameters.s;
                put(Integer.valueOf(lMOtsParameters12.a), lMOtsParameters12);
                LMOtsParameters lMOtsParameters13 = LMOtsParameters.t;
                put(Integer.valueOf(lMOtsParameters13.a), lMOtsParameters13);
                LMOtsParameters lMOtsParameters14 = LMOtsParameters.u;
                put(Integer.valueOf(lMOtsParameters14.a), lMOtsParameters14);
                LMOtsParameters lMOtsParameters15 = LMOtsParameters.v;
                put(Integer.valueOf(lMOtsParameters15.a), lMOtsParameters15);
                LMOtsParameters lMOtsParameters16 = LMOtsParameters.w;
                put(Integer.valueOf(lMOtsParameters16.a), lMOtsParameters16);
            }
        };
    }

    public LMOtsParameters(int i2, int i3, int i4, int i5, int i6, int i7, l1 l1Var) {
        this.a = i2;
        this.b = i3;
        this.c = i4;
        this.d = i5;
        this.e = i6;
        this.f = i7;
        this.g = l1Var;
    }

    public static LMOtsParameters f(int i2) {
        return (LMOtsParameters) x.get(Integer.valueOf(i2));
    }

    public l1 b() {
        return this.g;
    }

    public int c() {
        return this.e;
    }

    public int d() {
        return this.b;
    }

    public int e() {
        return this.d;
    }

    public int g() {
        return this.a;
    }

    public int h() {
        return this.c;
    }
}
