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
import org.mozilla.javascript.NativeSymbol;

@ld9
public final class my {
    public static final b Companion = new b(0);
    private final String a;
    private final String b;

    public static final class a implements od4 {
        public static final a a;
        private static final PluginGeneratedSerialDescriptor b;

        static {
            a aVar = new a();
            a = aVar;
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.yandex.mobile.ads.features.debugpanel.data.remote.model.DebugPanelWaterfallCurrency", aVar, 2);
            pluginGeneratedSerialDescriptor.k("name", false);
            pluginGeneratedSerialDescriptor.k(NativeSymbol.TYPE_NAME, false);
            b = pluginGeneratedSerialDescriptor;
        }

        private a() {
        }

        @Override
        public final ef5[] childSerializers() {
            c0a c0aVar = c0a.a;
            return new ef5[]{c0aVar, c0aVar};
        }

        @Override
        public final Object deserialize(defpackage.hu1 hu1Var) {
            String strI;
            String strI2;
            int i;
            y45.j(hu1Var, "decoder");
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = b;
            defpackage.fd1 fd1VarB = hu1Var.b(pluginGeneratedSerialDescriptor);
            if (fd1VarB.j()) {
                strI = fd1VarB.i(pluginGeneratedSerialDescriptor, 0);
                strI2 = fd1VarB.i(pluginGeneratedSerialDescriptor, 1);
                i = 3;
            } else {
                strI = null;
                String strI3 = null;
                boolean z = true;
                int i2 = 0;
                while (z) {
                    int iV = fd1VarB.v(pluginGeneratedSerialDescriptor);
                    if (iV == -1) {
                        z = false;
                    } else if (iV == 0) {
                        strI = fd1VarB.i(pluginGeneratedSerialDescriptor, 0);
                        i2 |= 1;
                    } else {
                        if (iV != 1) {
                            throw new UnknownFieldException(iV);
                        }
                        strI3 = fd1VarB.i(pluginGeneratedSerialDescriptor, 1);
                        i2 |= 2;
                    }
                }
                strI2 = strI3;
                i = i2;
            }
            fd1VarB.c(pluginGeneratedSerialDescriptor);
            return new my(i, strI, strI2);
        }

        @Override
        public final kotlinx.serialization.descriptors.a getDescriptor() {
            return b;
        }

        @Override
        public final void serialize(ca3 ca3Var, Object obj) {
            my myVar = (my) obj;
            y45.j(ca3Var, "encoder");
            y45.j(myVar, ES6Iterator.VALUE_PROPERTY);
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = b;
            defpackage.id1 id1VarB = ca3Var.b(pluginGeneratedSerialDescriptor);
            my.a(myVar, id1VarB, pluginGeneratedSerialDescriptor);
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

    public my(int i, String str, String str2) {
        if (3 != (i & 3)) {
            bc8.a(i, 3, a.a.getDescriptor());
        }
        this.a = str;
        this.b = str2;
    }

    public static final void a(my myVar, defpackage.id1 id1Var, PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor) {
        id1Var.p(pluginGeneratedSerialDescriptor, 0, myVar.a);
        id1Var.p(pluginGeneratedSerialDescriptor, 1, myVar.b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof my)) {
            return false;
        }
        my myVar = (my) obj;
        return y45.e(this.a, myVar.a) && y45.e(this.b, myVar.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "DebugPanelWaterfallCurrency(name=" + this.a + ", symbol=" + this.b + ")";
    }
}
