package com.yandex.mobile.ads.impl;

import com.transsion.push.PushConstants;
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
public final class xw {
    public static final b Companion = new b(0);
    private final String a;
    private final String b;
    private final String c;
    private final String d;

    public static final class a implements od4 {
        public static final a a;
        private static final PluginGeneratedSerialDescriptor b;

        static {
            a aVar = new a();
            a = aVar;
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.yandex.mobile.ads.features.debugpanel.data.local.model.DebugPanelAppData", aVar, 4);
            pluginGeneratedSerialDescriptor.k("app_id", false);
            pluginGeneratedSerialDescriptor.k("app_version", false);
            pluginGeneratedSerialDescriptor.k("system", false);
            pluginGeneratedSerialDescriptor.k("api_level", false);
            b = pluginGeneratedSerialDescriptor;
        }

        private a() {
        }

        @Override
        public final ef5[] childSerializers() {
            c0a c0aVar = c0a.a;
            return new ef5[]{c0aVar, c0aVar, c0aVar, c0aVar};
        }

        @Override
        public final Object deserialize(defpackage.hu1 hu1Var) {
            String str;
            String strI;
            String str2;
            String str3;
            int i;
            y45.j(hu1Var, "decoder");
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = b;
            defpackage.fd1 fd1VarB = hu1Var.b(pluginGeneratedSerialDescriptor);
            if (fd1VarB.j()) {
                String strI2 = fd1VarB.i(pluginGeneratedSerialDescriptor, 0);
                String strI3 = fd1VarB.i(pluginGeneratedSerialDescriptor, 1);
                String strI4 = fd1VarB.i(pluginGeneratedSerialDescriptor, 2);
                str = strI2;
                strI = fd1VarB.i(pluginGeneratedSerialDescriptor, 3);
                str2 = strI4;
                str3 = strI3;
                i = 15;
            } else {
                String strI5 = null;
                String strI6 = null;
                String strI7 = null;
                String strI8 = null;
                boolean z = true;
                int i2 = 0;
                while (z) {
                    int iV = fd1VarB.v(pluginGeneratedSerialDescriptor);
                    if (iV == -1) {
                        z = false;
                    } else if (iV == 0) {
                        strI5 = fd1VarB.i(pluginGeneratedSerialDescriptor, 0);
                        i2 |= 1;
                    } else if (iV == 1) {
                        strI8 = fd1VarB.i(pluginGeneratedSerialDescriptor, 1);
                        i2 |= 2;
                    } else if (iV == 2) {
                        strI7 = fd1VarB.i(pluginGeneratedSerialDescriptor, 2);
                        i2 |= 4;
                    } else {
                        if (iV != 3) {
                            throw new UnknownFieldException(iV);
                        }
                        strI6 = fd1VarB.i(pluginGeneratedSerialDescriptor, 3);
                        i2 |= 8;
                    }
                }
                str = strI5;
                strI = strI6;
                str2 = strI7;
                str3 = strI8;
                i = i2;
            }
            fd1VarB.c(pluginGeneratedSerialDescriptor);
            return new xw(i, str, str3, str2, strI);
        }

        @Override
        public final kotlinx.serialization.descriptors.a getDescriptor() {
            return b;
        }

        @Override
        public final void serialize(ca3 ca3Var, Object obj) {
            xw xwVar = (xw) obj;
            y45.j(ca3Var, "encoder");
            y45.j(xwVar, ES6Iterator.VALUE_PROPERTY);
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = b;
            defpackage.id1 id1VarB = ca3Var.b(pluginGeneratedSerialDescriptor);
            xw.a(xwVar, id1VarB, pluginGeneratedSerialDescriptor);
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

    public xw(int i, String str, String str2, String str3, String str4) {
        if (15 != (i & 15)) {
            bc8.a(i, 15, a.a.getDescriptor());
        }
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
    }

    public final String a() {
        return this.d;
    }

    public final String b() {
        return this.a;
    }

    public final String c() {
        return this.b;
    }

    public final String d() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof xw)) {
            return false;
        }
        xw xwVar = (xw) obj;
        return y45.e(this.a, xwVar.a) && y45.e(this.b, xwVar.b) && y45.e(this.c, xwVar.c) && y45.e(this.d, xwVar.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + v3.a(this.c, v3.a(this.b, this.a.hashCode() * 31, 31), 31);
    }

    public final String toString() {
        return "DebugPanelAppData(appId=" + this.a + ", appVersion=" + this.b + ", system=" + this.c + ", androidApiLevel=" + this.d + ")";
    }

    public xw(String str, String str2, String str3, String str4) {
        y45.j(str, PushConstants.PROVIDER_FIELD_APP_ID);
        y45.j(str2, "appVersion");
        y45.j(str3, "system");
        y45.j(str4, "androidApiLevel");
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
    }

    public static final void a(xw xwVar, defpackage.id1 id1Var, PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor) {
        id1Var.p(pluginGeneratedSerialDescriptor, 0, xwVar.a);
        id1Var.p(pluginGeneratedSerialDescriptor, 1, xwVar.b);
        id1Var.p(pluginGeneratedSerialDescriptor, 2, xwVar.c);
        id1Var.p(pluginGeneratedSerialDescriptor, 3, xwVar.d);
    }
}
