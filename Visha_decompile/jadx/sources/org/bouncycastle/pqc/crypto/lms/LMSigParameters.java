package org.bouncycastle.pqc.crypto.lms;

import defpackage.cx6;
import defpackage.l1;
import java.util.HashMap;
import java.util.Map;

public class LMSigParameters {
    public static final LMSigParameters e;
    public static final LMSigParameters f;
    public static final LMSigParameters g;
    public static final LMSigParameters h;
    public static final LMSigParameters i;
    public static final LMSigParameters j;
    public static final LMSigParameters k;
    public static final LMSigParameters l;
    public static final LMSigParameters m;
    public static final LMSigParameters n;
    public static final LMSigParameters o;
    public static final LMSigParameters p;
    public static final LMSigParameters q;
    public static final LMSigParameters r;
    public static final LMSigParameters s;
    public static final LMSigParameters t;
    public static final LMSigParameters u;
    public static final LMSigParameters v;
    public static final LMSigParameters w;
    public static final LMSigParameters x;
    public static Map y;
    public final int a;
    public final int b;
    public final int c;
    public final l1 d;

    static {
        l1 l1Var = cx6.c;
        e = new LMSigParameters(5, 32, 5, l1Var);
        f = new LMSigParameters(6, 32, 10, l1Var);
        g = new LMSigParameters(7, 32, 15, l1Var);
        h = new LMSigParameters(8, 32, 20, l1Var);
        i = new LMSigParameters(9, 32, 25, l1Var);
        j = new LMSigParameters(10, 24, 5, l1Var);
        k = new LMSigParameters(11, 24, 10, l1Var);
        l = new LMSigParameters(12, 24, 15, l1Var);
        m = new LMSigParameters(13, 24, 20, l1Var);
        n = new LMSigParameters(14, 24, 25, l1Var);
        l1 l1Var2 = cx6.t;
        o = new LMSigParameters(15, 32, 5, l1Var2);
        p = new LMSigParameters(16, 32, 10, l1Var2);
        q = new LMSigParameters(17, 32, 15, l1Var2);
        r = new LMSigParameters(18, 32, 20, l1Var2);
        s = new LMSigParameters(19, 32, 25, l1Var2);
        t = new LMSigParameters(20, 24, 5, l1Var2);
        u = new LMSigParameters(21, 24, 10, l1Var2);
        v = new LMSigParameters(22, 24, 15, l1Var2);
        w = new LMSigParameters(23, 24, 20, l1Var2);
        x = new LMSigParameters(24, 24, 25, l1Var2);
        y = new HashMap<Object, LMSigParameters>() {
            {
                LMSigParameters lMSigParameters = LMSigParameters.e;
                put(Integer.valueOf(lMSigParameters.a), lMSigParameters);
                LMSigParameters lMSigParameters2 = LMSigParameters.f;
                put(Integer.valueOf(lMSigParameters2.a), lMSigParameters2);
                LMSigParameters lMSigParameters3 = LMSigParameters.g;
                put(Integer.valueOf(lMSigParameters3.a), lMSigParameters3);
                LMSigParameters lMSigParameters4 = LMSigParameters.h;
                put(Integer.valueOf(lMSigParameters4.a), lMSigParameters4);
                LMSigParameters lMSigParameters5 = LMSigParameters.i;
                put(Integer.valueOf(lMSigParameters5.a), lMSigParameters5);
                LMSigParameters lMSigParameters6 = LMSigParameters.j;
                put(Integer.valueOf(lMSigParameters6.a), lMSigParameters6);
                LMSigParameters lMSigParameters7 = LMSigParameters.k;
                put(Integer.valueOf(lMSigParameters7.a), lMSigParameters7);
                LMSigParameters lMSigParameters8 = LMSigParameters.l;
                put(Integer.valueOf(lMSigParameters8.a), lMSigParameters8);
                LMSigParameters lMSigParameters9 = LMSigParameters.m;
                put(Integer.valueOf(lMSigParameters9.a), lMSigParameters9);
                LMSigParameters lMSigParameters10 = LMSigParameters.n;
                put(Integer.valueOf(lMSigParameters10.a), lMSigParameters10);
                LMSigParameters lMSigParameters11 = LMSigParameters.o;
                put(Integer.valueOf(lMSigParameters11.a), lMSigParameters11);
                LMSigParameters lMSigParameters12 = LMSigParameters.p;
                put(Integer.valueOf(lMSigParameters12.a), lMSigParameters12);
                LMSigParameters lMSigParameters13 = LMSigParameters.q;
                put(Integer.valueOf(lMSigParameters13.a), lMSigParameters13);
                LMSigParameters lMSigParameters14 = LMSigParameters.r;
                put(Integer.valueOf(lMSigParameters14.a), lMSigParameters14);
                LMSigParameters lMSigParameters15 = LMSigParameters.s;
                put(Integer.valueOf(lMSigParameters15.a), lMSigParameters15);
                LMSigParameters lMSigParameters16 = LMSigParameters.t;
                put(Integer.valueOf(lMSigParameters16.a), lMSigParameters16);
                LMSigParameters lMSigParameters17 = LMSigParameters.u;
                put(Integer.valueOf(lMSigParameters17.a), lMSigParameters17);
                LMSigParameters lMSigParameters18 = LMSigParameters.v;
                put(Integer.valueOf(lMSigParameters18.a), lMSigParameters18);
                LMSigParameters lMSigParameters19 = LMSigParameters.w;
                put(Integer.valueOf(lMSigParameters19.a), lMSigParameters19);
                LMSigParameters lMSigParameters20 = LMSigParameters.x;
                put(Integer.valueOf(lMSigParameters20.a), lMSigParameters20);
            }
        };
    }

    public LMSigParameters(int i2, int i3, int i4, l1 l1Var) {
        this.a = i2;
        this.b = i3;
        this.c = i4;
        this.d = l1Var;
    }

    public static LMSigParameters e(int i2) {
        return (LMSigParameters) y.get(Integer.valueOf(i2));
    }

    public l1 b() {
        return this.d;
    }

    public int c() {
        return this.c;
    }

    public int d() {
        return this.b;
    }

    public int f() {
        return this.a;
    }
}
