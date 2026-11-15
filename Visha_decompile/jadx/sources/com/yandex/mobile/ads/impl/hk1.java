package com.yandex.mobile.ads.impl;

import defpackage.bc8;
import defpackage.c0a;
import defpackage.ca3;
import defpackage.ef5;
import defpackage.ld9;
import defpackage.od4;
import defpackage.y45;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import org.mozilla.javascript.ES6Iterator;

@ld9
public final class hk1 {
    public static final b Companion = new b(0);
    private final String a;
    private final lk1 b;
    private final uk1 c;
    private final sk1 d;
    private final String e;

    public static final class a implements od4 {
        public static final a a;
        private static final PluginGeneratedSerialDescriptor b;

        static {
            a aVar = new a();
            a = aVar;
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.monetization.ads.base.model.mediation.prefetch.PrefetchedMediationInfo", aVar, 5);
            pluginGeneratedSerialDescriptor.k("adapter", false);
            pluginGeneratedSerialDescriptor.k("network_winner", false);
            pluginGeneratedSerialDescriptor.k("revenue", false);
            pluginGeneratedSerialDescriptor.k("result", false);
            pluginGeneratedSerialDescriptor.k("network_ad_info", false);
            b = pluginGeneratedSerialDescriptor;
        }

        private a() {
        }

        @Override
        public final ef5[] childSerializers() {
            c0a c0aVar = c0a.a;
            return new ef5[]{c0aVar, defpackage.qn0.t(lk1.a.a), defpackage.qn0.t(uk1.a.a), sk1.a.a, defpackage.qn0.t(c0aVar)};
        }

        @Override
        public final Object deserialize(defpackage.hu1 hu1Var) {
            int i;
            String str;
            lk1 lk1Var;
            uk1 uk1Var;
            sk1 sk1Var;
            String str2;
            y45.j(hu1Var, "decoder");
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = b;
            defpackage.fd1 fd1VarB = hu1Var.b(pluginGeneratedSerialDescriptor);
            String strI = null;
            if (fd1VarB.j()) {
                String strI2 = fd1VarB.i(pluginGeneratedSerialDescriptor, 0);
                lk1 lk1Var2 = (lk1) fd1VarB.r(pluginGeneratedSerialDescriptor, 1, lk1.a.a, null);
                uk1 uk1Var2 = (uk1) fd1VarB.r(pluginGeneratedSerialDescriptor, 2, uk1.a.a, null);
                str = strI2;
                sk1Var = (sk1) fd1VarB.A(pluginGeneratedSerialDescriptor, 3, sk1.a.a, null);
                str2 = (String) fd1VarB.r(pluginGeneratedSerialDescriptor, 4, c0a.a, null);
                uk1Var = uk1Var2;
                lk1Var = lk1Var2;
                i = 31;
            } else {
                boolean z = true;
                int i2 = 0;
                lk1 lk1Var3 = null;
                uk1 uk1Var3 = null;
                sk1 sk1Var2 = null;
                String str3 = null;
                while (z) {
                    int iV = fd1VarB.v(pluginGeneratedSerialDescriptor);
                    if (iV == -1) {
                        z = false;
                    } else if (iV == 0) {
                        strI = fd1VarB.i(pluginGeneratedSerialDescriptor, 0);
                        i2 |= 1;
                    } else if (iV == 1) {
                        lk1Var3 = (lk1) fd1VarB.r(pluginGeneratedSerialDescriptor, 1, lk1.a.a, lk1Var3);
                        i2 |= 2;
                    } else if (iV == 2) {
                        uk1Var3 = (uk1) fd1VarB.r(pluginGeneratedSerialDescriptor, 2, uk1.a.a, uk1Var3);
                        i2 |= 4;
                    } else if (iV == 3) {
                        sk1Var2 = (sk1) fd1VarB.A(pluginGeneratedSerialDescriptor, 3, sk1.a.a, sk1Var2);
                        i2 |= 8;
                    } else {
                        if (iV != 4) {
                            throw new UnknownFieldException(iV);
                        }
                        str3 = (String) fd1VarB.r(pluginGeneratedSerialDescriptor, 4, c0a.a, str3);
                        i2 |= 16;
                    }
                }
                i = i2;
                str = strI;
                lk1Var = lk1Var3;
                uk1Var = uk1Var3;
                sk1Var = sk1Var2;
                str2 = str3;
            }
            fd1VarB.c(pluginGeneratedSerialDescriptor);
            return new hk1(i, str, lk1Var, uk1Var, sk1Var, str2);
        }

        @Override
        public final kotlinx.serialization.descriptors.a getDescriptor() {
            return b;
        }

        @Override
        public final void serialize(ca3 ca3Var, Object obj) {
            hk1 hk1Var = (hk1) obj;
            y45.j(ca3Var, "encoder");
            y45.j(hk1Var, ES6Iterator.VALUE_PROPERTY);
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = b;
            defpackage.id1 id1VarB = ca3Var.b(pluginGeneratedSerialDescriptor);
            hk1.a(hk1Var, id1VarB, pluginGeneratedSerialDescriptor);
            id1VarB.c(pluginGeneratedSerialDescriptor);
        }

        @Override
        public final ef5[] typeParametersSerializers() {
            return od4.a.a(this);
        }
    }

    public static final class b {
        private b() {
        }

        public final ef5 serializer() {
            return a.a;
        }

        public b(int i) {
            this();
        }
    }

    public hk1(int i, String str, lk1 lk1Var, uk1 uk1Var, sk1 sk1Var, String str2) {
        if (31 != (i & 31)) {
            bc8.a(i, 31, a.a.getDescriptor());
        }
        this.a = str;
        this.b = lk1Var;
        this.c = uk1Var;
        this.d = sk1Var;
        this.e = str2;
    }

    public static final void a(hk1 hk1Var, defpackage.id1 id1Var, PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor) {
        id1Var.p(pluginGeneratedSerialDescriptor, 0, hk1Var.a);
        id1Var.h(pluginGeneratedSerialDescriptor, 1, lk1.a.a, hk1Var.b);
        id1Var.h(pluginGeneratedSerialDescriptor, 2, uk1.a.a, hk1Var.c);
        id1Var.q(pluginGeneratedSerialDescriptor, 3, sk1.a.a, hk1Var.d);
        id1Var.h(pluginGeneratedSerialDescriptor, 4, c0a.a, hk1Var.e);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof hk1)) {
            return false;
        }
        hk1 hk1Var = (hk1) obj;
        return y45.e(this.a, hk1Var.a) && y45.e(this.b, hk1Var.b) && y45.e(this.c, hk1Var.c) && y45.e(this.d, hk1Var.d) && y45.e(this.e, hk1Var.e);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        lk1 lk1Var = this.b;
        int iHashCode2 = (iHashCode + (lk1Var == null ? 0 : lk1Var.hashCode())) * 31;
        uk1 uk1Var = this.c;
        int iHashCode3 = (this.d.hashCode() + ((iHashCode2 + (uk1Var == null ? 0 : uk1Var.hashCode())) * 31)) * 31;
        String str = this.e;
        return iHashCode3 + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        return "PrefetchedMediationInfo(adapter=" + this.a + ", networkWinner=" + this.b + ", revenue=" + this.c + ", result=" + this.d + ", networkAdInfo=" + this.e + ")";
    }

    public hk1(String str, lk1 lk1Var, uk1 uk1Var, sk1 sk1Var, String str2) {
        y45.j(str, "adapter");
        y45.j(sk1Var, "result");
        this.a = str;
        this.b = lk1Var;
        this.c = uk1Var;
        this.d = sk1Var;
        this.e = str2;
    }
}
