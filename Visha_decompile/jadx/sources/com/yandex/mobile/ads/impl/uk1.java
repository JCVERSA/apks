package com.yandex.mobile.ads.impl;

import defpackage.bc8;
import defpackage.ca3;
import defpackage.ef5;
import defpackage.ld9;
import defpackage.nx2;
import defpackage.od4;
import defpackage.y45;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import org.mozilla.javascript.ES6Iterator;

@ld9
public final class uk1 {
    public static final b Companion = new b(0);
    private final double a;

    public static final class a implements od4 {
        public static final a a;
        private static final PluginGeneratedSerialDescriptor b;

        static {
            a aVar = new a();
            a = aVar;
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.monetization.ads.base.model.mediation.prefetch.PrefetchedMediationRevenue", aVar, 1);
            pluginGeneratedSerialDescriptor.k(ES6Iterator.VALUE_PROPERTY, false);
            b = pluginGeneratedSerialDescriptor;
        }

        private a() {
        }

        @Override
        public final ef5[] childSerializers() {
            return new ef5[]{nx2.a};
        }

        @Override
        public final Object deserialize(defpackage.hu1 hu1Var) {
            double dG;
            y45.j(hu1Var, "decoder");
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = b;
            defpackage.fd1 fd1VarB = hu1Var.b(pluginGeneratedSerialDescriptor);
            int i = 1;
            if (fd1VarB.j()) {
                dG = fd1VarB.G(pluginGeneratedSerialDescriptor, 0);
            } else {
                double dG2 = 0.0d;
                boolean z = true;
                int i2 = 0;
                while (z) {
                    int iV = fd1VarB.v(pluginGeneratedSerialDescriptor);
                    if (iV == -1) {
                        z = false;
                    } else {
                        if (iV != 0) {
                            throw new UnknownFieldException(iV);
                        }
                        dG2 = fd1VarB.G(pluginGeneratedSerialDescriptor, 0);
                        i2 = 1;
                    }
                }
                dG = dG2;
                i = i2;
            }
            fd1VarB.c(pluginGeneratedSerialDescriptor);
            return new uk1(i, dG);
        }

        @Override
        public final kotlinx.serialization.descriptors.a getDescriptor() {
            return b;
        }

        @Override
        public final void serialize(ca3 ca3Var, Object obj) {
            uk1 uk1Var = (uk1) obj;
            y45.j(ca3Var, "encoder");
            y45.j(uk1Var, ES6Iterator.VALUE_PROPERTY);
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = b;
            defpackage.id1 id1VarB = ca3Var.b(pluginGeneratedSerialDescriptor);
            uk1.a(uk1Var, id1VarB, pluginGeneratedSerialDescriptor);
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

    public uk1(double d) {
        this.a = d;
    }

    public static final void a(uk1 uk1Var, defpackage.id1 id1Var, PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor) {
        id1Var.F(pluginGeneratedSerialDescriptor, 0, uk1Var.a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof uk1) && Double.compare(this.a, ((uk1) obj).a) == 0;
    }

    public final int hashCode() {
        return Double.hashCode(this.a);
    }

    public final String toString() {
        return "PrefetchedMediationRevenue(value=" + this.a + ")";
    }

    public uk1(int i, double d) {
        if (1 != (i & 1)) {
            bc8.a(i, 1, a.a.getDescriptor());
        }
        this.a = d;
    }
}
