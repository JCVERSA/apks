package com.yandex.mobile.ads.impl;

import com.lzy.okgo.model.Progress;
import defpackage.bc8;
import defpackage.c0a;
import defpackage.ca3;
import defpackage.ef5;
import defpackage.kr5;
import defpackage.ld9;
import defpackage.od4;
import defpackage.y45;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import org.mozilla.javascript.ES6Iterator;

@ld9
public final class u11 {
    public static final b Companion = new b(0);
    private final long a;
    private final String b;
    private final String c;
    private final String d;

    public static final class a implements od4 {
        public static final a a;
        private static final PluginGeneratedSerialDescriptor b;

        static {
            a aVar = new a();
            a = aVar;
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.monetization.ads.utils.logger.model.MobileAdsSdkLog", aVar, 4);
            pluginGeneratedSerialDescriptor.k("timestamp", false);
            pluginGeneratedSerialDescriptor.k("type", false);
            pluginGeneratedSerialDescriptor.k(Progress.TAG, false);
            pluginGeneratedSerialDescriptor.k("text", false);
            b = pluginGeneratedSerialDescriptor;
        }

        private a() {
        }

        @Override
        public final ef5[] childSerializers() {
            c0a c0aVar = c0a.a;
            return new ef5[]{kr5.a, c0aVar, c0aVar, c0aVar};
        }

        @Override
        public final Object deserialize(defpackage.hu1 hu1Var) {
            String str;
            String strI;
            String str2;
            int i;
            long j;
            y45.j(hu1Var, "decoder");
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = b;
            defpackage.fd1 fd1VarB = hu1Var.b(pluginGeneratedSerialDescriptor);
            if (fd1VarB.j()) {
                long jE = fd1VarB.e(pluginGeneratedSerialDescriptor, 0);
                String strI2 = fd1VarB.i(pluginGeneratedSerialDescriptor, 1);
                String strI3 = fd1VarB.i(pluginGeneratedSerialDescriptor, 2);
                str = strI2;
                strI = fd1VarB.i(pluginGeneratedSerialDescriptor, 3);
                str2 = strI3;
                i = 15;
                j = jE;
            } else {
                String strI4 = null;
                boolean z = true;
                int i2 = 0;
                long jE2 = 0;
                String strI5 = null;
                String strI6 = null;
                while (z) {
                    int iV = fd1VarB.v(pluginGeneratedSerialDescriptor);
                    if (iV == -1) {
                        z = false;
                    } else if (iV == 0) {
                        jE2 = fd1VarB.e(pluginGeneratedSerialDescriptor, 0);
                        i2 |= 1;
                    } else if (iV == 1) {
                        strI4 = fd1VarB.i(pluginGeneratedSerialDescriptor, 1);
                        i2 |= 2;
                    } else if (iV == 2) {
                        strI6 = fd1VarB.i(pluginGeneratedSerialDescriptor, 2);
                        i2 |= 4;
                    } else {
                        if (iV != 3) {
                            throw new UnknownFieldException(iV);
                        }
                        strI5 = fd1VarB.i(pluginGeneratedSerialDescriptor, 3);
                        i2 |= 8;
                    }
                }
                str = strI4;
                strI = strI5;
                str2 = strI6;
                i = i2;
                j = jE2;
            }
            fd1VarB.c(pluginGeneratedSerialDescriptor);
            return new u11(i, j, str, str2, strI);
        }

        @Override
        public final kotlinx.serialization.descriptors.a getDescriptor() {
            return b;
        }

        @Override
        public final void serialize(ca3 ca3Var, Object obj) {
            u11 u11Var = (u11) obj;
            y45.j(ca3Var, "encoder");
            y45.j(u11Var, ES6Iterator.VALUE_PROPERTY);
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = b;
            defpackage.id1 id1VarB = ca3Var.b(pluginGeneratedSerialDescriptor);
            u11.a(u11Var, id1VarB, pluginGeneratedSerialDescriptor);
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

    public u11(int i, long j, String str, String str2, String str3) {
        if (15 != (i & 15)) {
            bc8.a(i, 15, a.a.getDescriptor());
        }
        this.a = j;
        this.b = str;
        this.c = str2;
        this.d = str3;
    }

    public static final void a(u11 u11Var, defpackage.id1 id1Var, PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor) {
        id1Var.u(pluginGeneratedSerialDescriptor, 0, u11Var.a);
        id1Var.p(pluginGeneratedSerialDescriptor, 1, u11Var.b);
        id1Var.p(pluginGeneratedSerialDescriptor, 2, u11Var.c);
        id1Var.p(pluginGeneratedSerialDescriptor, 3, u11Var.d);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof u11)) {
            return false;
        }
        u11 u11Var = (u11) obj;
        return this.a == u11Var.a && y45.e(this.b, u11Var.b) && y45.e(this.c, u11Var.c) && y45.e(this.d, u11Var.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + v3.a(this.c, v3.a(this.b, Long.hashCode(this.a) * 31, 31), 31);
    }

    public final String toString() {
        return "MobileAdsSdkLog(timestamp=" + this.a + ", type=" + this.b + ", tag=" + this.c + ", text=" + this.d + ")";
    }

    public u11(long j, String str, String str2, String str3) {
        y45.j(str, "type");
        y45.j(str2, Progress.TAG);
        y45.j(str3, "text");
        this.a = j;
        this.b = str;
        this.c = str2;
        this.d = str3;
    }
}
