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
public final class iw {
    public static final b Companion = new b(0);
    private static final ef5[] f = {null, null, new defpackage.zg(yw.a.a), null, null};
    private final String a;
    private final String b;
    private final List<yw> c;
    private final String d;
    private final String e;

    public static final class a implements od4 {
        public static final a a;
        private static final PluginGeneratedSerialDescriptor b;

        static {
            a aVar = new a();
            a = aVar;
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.yandex.mobile.ads.features.debugpanel.data.remote.model.DebugPanelAdUnitBiddingMediation", aVar, 5);
            pluginGeneratedSerialDescriptor.k("adapter", true);
            pluginGeneratedSerialDescriptor.k("network_name", false);
            pluginGeneratedSerialDescriptor.k("bidding_parameters", false);
            pluginGeneratedSerialDescriptor.k("network_ad_unit_id", true);
            pluginGeneratedSerialDescriptor.k("network_ad_unit_id_name", true);
            b = pluginGeneratedSerialDescriptor;
        }

        private a() {
        }

        @Override
        public final ef5[] childSerializers() {
            ef5[] ef5VarArr = iw.f;
            c0a c0aVar = c0a.a;
            return new ef5[]{defpackage.qn0.t(c0aVar), c0aVar, ef5VarArr[2], defpackage.qn0.t(c0aVar), defpackage.qn0.t(c0aVar)};
        }

        @Override
        public final Object deserialize(defpackage.hu1 hu1Var) {
            int i;
            String str;
            String str2;
            List list;
            String str3;
            String str4;
            y45.j(hu1Var, "decoder");
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = b;
            defpackage.fd1 fd1VarB = hu1Var.b(pluginGeneratedSerialDescriptor);
            ef5[] ef5VarArr = iw.f;
            String str5 = null;
            if (fd1VarB.j()) {
                c0a c0aVar = c0a.a;
                String str6 = (String) fd1VarB.r(pluginGeneratedSerialDescriptor, 0, c0aVar, null);
                String strI = fd1VarB.i(pluginGeneratedSerialDescriptor, 1);
                List list2 = (List) fd1VarB.A(pluginGeneratedSerialDescriptor, 2, ef5VarArr[2], null);
                String str7 = (String) fd1VarB.r(pluginGeneratedSerialDescriptor, 3, c0aVar, null);
                list = list2;
                str4 = (String) fd1VarB.r(pluginGeneratedSerialDescriptor, 4, c0aVar, null);
                str3 = str7;
                i = 31;
                str2 = strI;
                str = str6;
            } else {
                boolean z = true;
                int i2 = 0;
                String strI2 = null;
                List list3 = null;
                String str8 = null;
                String str9 = null;
                while (z) {
                    int iV = fd1VarB.v(pluginGeneratedSerialDescriptor);
                    if (iV == -1) {
                        z = false;
                    } else if (iV == 0) {
                        str5 = (String) fd1VarB.r(pluginGeneratedSerialDescriptor, 0, c0a.a, str5);
                        i2 |= 1;
                    } else if (iV == 1) {
                        strI2 = fd1VarB.i(pluginGeneratedSerialDescriptor, 1);
                        i2 |= 2;
                    } else if (iV == 2) {
                        list3 = (List) fd1VarB.A(pluginGeneratedSerialDescriptor, 2, ef5VarArr[2], list3);
                        i2 |= 4;
                    } else if (iV == 3) {
                        str8 = (String) fd1VarB.r(pluginGeneratedSerialDescriptor, 3, c0a.a, str8);
                        i2 |= 8;
                    } else {
                        if (iV != 4) {
                            throw new UnknownFieldException(iV);
                        }
                        str9 = (String) fd1VarB.r(pluginGeneratedSerialDescriptor, 4, c0a.a, str9);
                        i2 |= 16;
                    }
                }
                i = i2;
                str = str5;
                str2 = strI2;
                list = list3;
                str3 = str8;
                str4 = str9;
            }
            fd1VarB.c(pluginGeneratedSerialDescriptor);
            return new iw(i, str, str2, list, str3, str4);
        }

        @Override
        public final kotlinx.serialization.descriptors.a getDescriptor() {
            return b;
        }

        @Override
        public final void serialize(ca3 ca3Var, Object obj) {
            iw iwVar = (iw) obj;
            y45.j(ca3Var, "encoder");
            y45.j(iwVar, ES6Iterator.VALUE_PROPERTY);
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = b;
            defpackage.id1 id1VarB = ca3Var.b(pluginGeneratedSerialDescriptor);
            iw.a(iwVar, id1VarB, pluginGeneratedSerialDescriptor);
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

    public iw(int i, String str, String str2, List list, String str3, String str4) {
        if (6 != (i & 6)) {
            bc8.a(i, 6, a.a.getDescriptor());
        }
        if ((i & 1) == 0) {
            this.a = null;
        } else {
            this.a = str;
        }
        this.b = str2;
        this.c = list;
        if ((i & 8) == 0) {
            this.d = null;
        } else {
            this.d = str3;
        }
        if ((i & 16) == 0) {
            this.e = null;
        } else {
            this.e = str4;
        }
    }

    public static final void a(iw iwVar, defpackage.id1 id1Var, PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor) {
        ef5[] ef5VarArr = f;
        if (id1Var.r(pluginGeneratedSerialDescriptor, 0) || iwVar.a != null) {
            id1Var.h(pluginGeneratedSerialDescriptor, 0, c0a.a, iwVar.a);
        }
        id1Var.p(pluginGeneratedSerialDescriptor, 1, iwVar.b);
        id1Var.q(pluginGeneratedSerialDescriptor, 2, ef5VarArr[2], iwVar.c);
        if (id1Var.r(pluginGeneratedSerialDescriptor, 3) || iwVar.d != null) {
            id1Var.h(pluginGeneratedSerialDescriptor, 3, c0a.a, iwVar.d);
        }
        if (!id1Var.r(pluginGeneratedSerialDescriptor, 4) && iwVar.e == null) {
            return;
        }
        id1Var.h(pluginGeneratedSerialDescriptor, 4, c0a.a, iwVar.e);
    }

    public final String b() {
        return this.d;
    }

    public final List<yw> c() {
        return this.c;
    }

    public final String d() {
        return this.e;
    }

    public final String e() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof iw)) {
            return false;
        }
        iw iwVar = (iw) obj;
        return y45.e(this.a, iwVar.a) && y45.e(this.b, iwVar.b) && y45.e(this.c, iwVar.c) && y45.e(this.d, iwVar.d) && y45.e(this.e, iwVar.e);
    }

    public final int hashCode() {
        String str = this.a;
        int iA = aa.a(this.c, v3.a(this.b, (str == null ? 0 : str.hashCode()) * 31, 31), 31);
        String str2 = this.d;
        int iHashCode = (iA + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.e;
        return iHashCode + (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        return "DebugPanelAdUnitBiddingMediation(adapter=" + this.a + ", networkName=" + this.b + ", biddingParameters=" + this.c + ", adUnitId=" + this.d + ", networkAdUnitIdName=" + this.e + ")";
    }
}
