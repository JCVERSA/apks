package com.yandex.mobile.ads.impl;

import defpackage.bc8;
import defpackage.c0a;
import defpackage.ca3;
import defpackage.ef5;
import defpackage.ld9;
import defpackage.od4;
import defpackage.y45;
import java.util.List;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import org.mozilla.javascript.ES6Iterator;

@ld9
public final class yx {
    public static final b Companion = new b(0);
    private static final ef5[] d = {null, null, new defpackage.zg(c0a.a)};
    private final String a;
    private final boolean b;
    private final List<String> c;

    public static final class a implements od4 {
        public static final a a;
        private static final PluginGeneratedSerialDescriptor b;

        static {
            a aVar = new a();
            a = aVar;
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.yandex.mobile.ads.features.debugpanel.data.local.model.DebugPanelSdkData", aVar, 3);
            pluginGeneratedSerialDescriptor.k("version", false);
            pluginGeneratedSerialDescriptor.k("is_integrated", false);
            pluginGeneratedSerialDescriptor.k("integration_messages", false);
            b = pluginGeneratedSerialDescriptor;
        }

        private a() {
        }

        @Override
        public final ef5[] childSerializers() {
            return new ef5[]{c0a.a, defpackage.bi0.a, yx.d[2]};
        }

        @Override
        public final Object deserialize(defpackage.hu1 hu1Var) {
            int i;
            boolean zD;
            String strI;
            List list;
            y45.j(hu1Var, "decoder");
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = b;
            defpackage.fd1 fd1VarB = hu1Var.b(pluginGeneratedSerialDescriptor);
            ef5[] ef5VarArr = yx.d;
            if (fd1VarB.j()) {
                strI = fd1VarB.i(pluginGeneratedSerialDescriptor, 0);
                zD = fd1VarB.D(pluginGeneratedSerialDescriptor, 1);
                list = (List) fd1VarB.A(pluginGeneratedSerialDescriptor, 2, ef5VarArr[2], null);
                i = 7;
            } else {
                boolean z = true;
                int i2 = 0;
                String strI2 = null;
                List list2 = null;
                boolean zD2 = false;
                while (z) {
                    int iV = fd1VarB.v(pluginGeneratedSerialDescriptor);
                    if (iV == -1) {
                        z = false;
                    } else if (iV == 0) {
                        strI2 = fd1VarB.i(pluginGeneratedSerialDescriptor, 0);
                        i2 |= 1;
                    } else if (iV == 1) {
                        zD2 = fd1VarB.D(pluginGeneratedSerialDescriptor, 1);
                        i2 |= 2;
                    } else {
                        if (iV != 2) {
                            throw new UnknownFieldException(iV);
                        }
                        list2 = (List) fd1VarB.A(pluginGeneratedSerialDescriptor, 2, ef5VarArr[2], list2);
                        i2 |= 4;
                    }
                }
                i = i2;
                zD = zD2;
                strI = strI2;
                list = list2;
            }
            fd1VarB.c(pluginGeneratedSerialDescriptor);
            return new yx(i, strI, zD, list);
        }

        @Override
        public final kotlinx.serialization.descriptors.a getDescriptor() {
            return b;
        }

        @Override
        public final void serialize(ca3 ca3Var, Object obj) {
            yx yxVar = (yx) obj;
            y45.j(ca3Var, "encoder");
            y45.j(yxVar, ES6Iterator.VALUE_PROPERTY);
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = b;
            defpackage.id1 id1VarB = ca3Var.b(pluginGeneratedSerialDescriptor);
            yx.a(yxVar, id1VarB, pluginGeneratedSerialDescriptor);
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

    public yx(int i, String str, boolean z, List list) {
        if (7 != (i & 7)) {
            bc8.a(i, 7, a.a.getDescriptor());
        }
        this.a = str;
        this.b = z;
        this.c = list;
    }

    public static final void a(yx yxVar, defpackage.id1 id1Var, PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor) {
        ef5[] ef5VarArr = d;
        id1Var.p(pluginGeneratedSerialDescriptor, 0, yxVar.a);
        id1Var.o(pluginGeneratedSerialDescriptor, 1, yxVar.b);
        id1Var.q(pluginGeneratedSerialDescriptor, 2, ef5VarArr[2], yxVar.c);
    }

    public final List<String> b() {
        return this.c;
    }

    public final String c() {
        return this.a;
    }

    public final boolean d() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof yx)) {
            return false;
        }
        yx yxVar = (yx) obj;
        return y45.e(this.a, yxVar.a) && this.b == yxVar.b && y45.e(this.c, yxVar.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + a7.a(this.b, this.a.hashCode() * 31, 31);
    }

    public final String toString() {
        return "DebugPanelSdkData(version=" + this.a + ", isIntegratedSuccess=" + this.b + ", integrationMessages=" + this.c + ")";
    }

    public yx(boolean z, List list) {
        y45.j("7.12.2", "version");
        y45.j(list, "integrationMessages");
        this.a = "7.12.2";
        this.b = z;
        this.c = list;
    }
}
