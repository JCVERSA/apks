package com.yandex.mobile.ads.impl;

import com.hisavana.common.tracking.TrackingKey;
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
public final class hw {
    public static final b Companion = new b(0);
    private final String a;
    private final String b;
    private final String c;
    private final lw d;

    public static final class a implements od4 {
        public static final a a;
        private static final PluginGeneratedSerialDescriptor b;

        static {
            a aVar = new a();
            a = aVar;
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.yandex.mobile.ads.features.debugpanel.data.remote.model.DebugPanelAdUnit", aVar, 4);
            pluginGeneratedSerialDescriptor.k("name", false);
            pluginGeneratedSerialDescriptor.k(TrackingKey.AD_TYPE, false);
            pluginGeneratedSerialDescriptor.k("ad_unit_id", false);
            pluginGeneratedSerialDescriptor.k("mediation", true);
            b = pluginGeneratedSerialDescriptor;
        }

        private a() {
        }

        @Override
        public final ef5[] childSerializers() {
            ef5 ef5VarT = defpackage.qn0.t(lw.a.a);
            c0a c0aVar = c0a.a;
            return new ef5[]{c0aVar, c0aVar, c0aVar, ef5VarT};
        }

        @Override
        public final Object deserialize(defpackage.hu1 hu1Var) {
            int i;
            String str;
            String str2;
            String str3;
            lw lwVar;
            y45.j(hu1Var, "decoder");
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = b;
            defpackage.fd1 fd1VarB = hu1Var.b(pluginGeneratedSerialDescriptor);
            String strI = null;
            if (fd1VarB.j()) {
                String strI2 = fd1VarB.i(pluginGeneratedSerialDescriptor, 0);
                String strI3 = fd1VarB.i(pluginGeneratedSerialDescriptor, 1);
                String strI4 = fd1VarB.i(pluginGeneratedSerialDescriptor, 2);
                str = strI2;
                lwVar = (lw) fd1VarB.r(pluginGeneratedSerialDescriptor, 3, lw.a.a, null);
                str3 = strI4;
                str2 = strI3;
                i = 15;
            } else {
                boolean z = true;
                int i2 = 0;
                String strI5 = null;
                String strI6 = null;
                lw lwVar2 = null;
                while (z) {
                    int iV = fd1VarB.v(pluginGeneratedSerialDescriptor);
                    if (iV == -1) {
                        z = false;
                    } else if (iV == 0) {
                        strI = fd1VarB.i(pluginGeneratedSerialDescriptor, 0);
                        i2 |= 1;
                    } else if (iV == 1) {
                        strI5 = fd1VarB.i(pluginGeneratedSerialDescriptor, 1);
                        i2 |= 2;
                    } else if (iV == 2) {
                        strI6 = fd1VarB.i(pluginGeneratedSerialDescriptor, 2);
                        i2 |= 4;
                    } else {
                        if (iV != 3) {
                            throw new UnknownFieldException(iV);
                        }
                        lwVar2 = (lw) fd1VarB.r(pluginGeneratedSerialDescriptor, 3, lw.a.a, lwVar2);
                        i2 |= 8;
                    }
                }
                i = i2;
                str = strI;
                str2 = strI5;
                str3 = strI6;
                lwVar = lwVar2;
            }
            fd1VarB.c(pluginGeneratedSerialDescriptor);
            return new hw(i, str, str2, str3, lwVar);
        }

        @Override
        public final kotlinx.serialization.descriptors.a getDescriptor() {
            return b;
        }

        @Override
        public final void serialize(ca3 ca3Var, Object obj) {
            hw hwVar = (hw) obj;
            y45.j(ca3Var, "encoder");
            y45.j(hwVar, ES6Iterator.VALUE_PROPERTY);
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = b;
            defpackage.id1 id1VarB = ca3Var.b(pluginGeneratedSerialDescriptor);
            hw.a(hwVar, id1VarB, pluginGeneratedSerialDescriptor);
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

    public hw(int i, String str, String str2, String str3, lw lwVar) {
        if (7 != (i & 7)) {
            bc8.a(i, 7, a.a.getDescriptor());
        }
        this.a = str;
        this.b = str2;
        this.c = str3;
        if ((i & 8) == 0) {
            this.d = null;
        } else {
            this.d = lwVar;
        }
    }

    public final String a() {
        return this.c;
    }

    public final String b() {
        return this.b;
    }

    public final lw c() {
        return this.d;
    }

    public final String d() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof hw)) {
            return false;
        }
        hw hwVar = (hw) obj;
        return y45.e(this.a, hwVar.a) && y45.e(this.b, hwVar.b) && y45.e(this.c, hwVar.c) && y45.e(this.d, hwVar.d);
    }

    public final int hashCode() {
        int iA = v3.a(this.c, v3.a(this.b, this.a.hashCode() * 31, 31), 31);
        lw lwVar = this.d;
        return iA + (lwVar == null ? 0 : lwVar.hashCode());
    }

    public final String toString() {
        return "DebugPanelAdUnit(name=" + this.a + ", format=" + this.b + ", adUnitId=" + this.c + ", mediation=" + this.d + ")";
    }

    public static final void a(hw hwVar, defpackage.id1 id1Var, PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor) {
        id1Var.p(pluginGeneratedSerialDescriptor, 0, hwVar.a);
        id1Var.p(pluginGeneratedSerialDescriptor, 1, hwVar.b);
        id1Var.p(pluginGeneratedSerialDescriptor, 2, hwVar.c);
        if (!id1Var.r(pluginGeneratedSerialDescriptor, 3) && hwVar.d == null) {
            return;
        }
        id1Var.h(pluginGeneratedSerialDescriptor, 3, lw.a.a, hwVar.d);
    }
}
