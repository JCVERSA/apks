package com.yandex.mobile.ads.impl;

import com.lzy.okgo.model.Progress;
import defpackage.bc8;
import defpackage.ca3;
import defpackage.ef5;
import defpackage.ld9;
import defpackage.od4;
import defpackage.y45;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import org.mozilla.javascript.ES6Iterator;

@ld9
public final class m11 {
    public static final b Companion = new b(0);
    private final o11 a;
    private final p11 b;

    public static final class a implements od4 {
        public static final a a;
        private static final PluginGeneratedSerialDescriptor b;

        static {
            a aVar = new a();
            a = aVar;
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.monetization.ads.utils.logger.model.MobileAdsNetworkLog", aVar, 2);
            pluginGeneratedSerialDescriptor.k(Progress.REQUEST, false);
            pluginGeneratedSerialDescriptor.k("response", false);
            b = pluginGeneratedSerialDescriptor;
        }

        private a() {
        }

        @Override
        public final ef5[] childSerializers() {
            return new ef5[]{o11.a.a, defpackage.qn0.t(p11.a.a)};
        }

        @Override
        public final Object deserialize(defpackage.hu1 hu1Var) {
            int i;
            o11 o11Var;
            p11 p11Var;
            y45.j(hu1Var, "decoder");
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = b;
            defpackage.fd1 fd1VarB = hu1Var.b(pluginGeneratedSerialDescriptor);
            o11 o11Var2 = null;
            if (fd1VarB.j()) {
                o11Var = (o11) fd1VarB.A(pluginGeneratedSerialDescriptor, 0, o11.a.a, null);
                p11Var = (p11) fd1VarB.r(pluginGeneratedSerialDescriptor, 1, p11.a.a, null);
                i = 3;
            } else {
                boolean z = true;
                int i2 = 0;
                p11 p11Var2 = null;
                while (z) {
                    int iV = fd1VarB.v(pluginGeneratedSerialDescriptor);
                    if (iV == -1) {
                        z = false;
                    } else if (iV == 0) {
                        o11Var2 = (o11) fd1VarB.A(pluginGeneratedSerialDescriptor, 0, o11.a.a, o11Var2);
                        i2 |= 1;
                    } else {
                        if (iV != 1) {
                            throw new UnknownFieldException(iV);
                        }
                        p11Var2 = (p11) fd1VarB.r(pluginGeneratedSerialDescriptor, 1, p11.a.a, p11Var2);
                        i2 |= 2;
                    }
                }
                i = i2;
                o11Var = o11Var2;
                p11Var = p11Var2;
            }
            fd1VarB.c(pluginGeneratedSerialDescriptor);
            return new m11(i, o11Var, p11Var);
        }

        @Override
        public final kotlinx.serialization.descriptors.a getDescriptor() {
            return b;
        }

        @Override
        public final void serialize(ca3 ca3Var, Object obj) {
            m11 m11Var = (m11) obj;
            y45.j(ca3Var, "encoder");
            y45.j(m11Var, ES6Iterator.VALUE_PROPERTY);
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = b;
            defpackage.id1 id1VarB = ca3Var.b(pluginGeneratedSerialDescriptor);
            m11.a(m11Var, id1VarB, pluginGeneratedSerialDescriptor);
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

    public m11(int i, o11 o11Var, p11 p11Var) {
        if (3 != (i & 3)) {
            bc8.a(i, 3, a.a.getDescriptor());
        }
        this.a = o11Var;
        this.b = p11Var;
    }

    public static final void a(m11 m11Var, defpackage.id1 id1Var, PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor) {
        id1Var.q(pluginGeneratedSerialDescriptor, 0, o11.a.a, m11Var.a);
        id1Var.h(pluginGeneratedSerialDescriptor, 1, p11.a.a, m11Var.b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m11)) {
            return false;
        }
        m11 m11Var = (m11) obj;
        return y45.e(this.a, m11Var.a) && y45.e(this.b, m11Var.b);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        p11 p11Var = this.b;
        return iHashCode + (p11Var == null ? 0 : p11Var.hashCode());
    }

    public final String toString() {
        return "MobileAdsNetworkLog(request=" + this.a + ", response=" + this.b + ")";
    }

    public m11(o11 o11Var, p11 p11Var) {
        y45.j(o11Var, Progress.REQUEST);
        this.a = o11Var;
        this.b = p11Var;
    }
}
