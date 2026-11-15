package com.yandex.mobile.ads.impl;

import androidx.media3.extractor.text.ttml.TtmlNode;
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
public final class qx {
    public static final b Companion = new b(0);
    private static final ef5[] g = {null, null, null, null, new defpackage.zg(c0a.a), null};
    private final String a;
    private final String b;
    private final String c;
    private final String d;
    private final List<String> e;
    private final String f;

    public static final class a implements od4 {
        public static final a a;
        private static final PluginGeneratedSerialDescriptor b;

        static {
            a aVar = new a();
            a = aVar;
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.yandex.mobile.ads.features.debugpanel.data.remote.model.DebugPanelMediationNetwork", aVar, 6);
            pluginGeneratedSerialDescriptor.k(TtmlNode.ATTR_ID, true);
            pluginGeneratedSerialDescriptor.k("name", false);
            pluginGeneratedSerialDescriptor.k("logo_url", true);
            pluginGeneratedSerialDescriptor.k("adapter_status", true);
            pluginGeneratedSerialDescriptor.k("adapters", false);
            pluginGeneratedSerialDescriptor.k("latest_adapter_version", true);
            b = pluginGeneratedSerialDescriptor;
        }

        private a() {
        }

        @Override
        public final ef5[] childSerializers() {
            ef5[] ef5VarArr = qx.g;
            c0a c0aVar = c0a.a;
            return new ef5[]{defpackage.qn0.t(c0aVar), c0aVar, defpackage.qn0.t(c0aVar), defpackage.qn0.t(c0aVar), ef5VarArr[4], defpackage.qn0.t(c0aVar)};
        }

        @Override
        public final Object deserialize(defpackage.hu1 hu1Var) {
            int i;
            String str;
            String str2;
            String str3;
            String str4;
            List list;
            String str5;
            y45.j(hu1Var, "decoder");
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = b;
            defpackage.fd1 fd1VarB = hu1Var.b(pluginGeneratedSerialDescriptor);
            ef5[] ef5VarArr = qx.g;
            int i2 = 5;
            String str6 = null;
            if (fd1VarB.j()) {
                c0a c0aVar = c0a.a;
                String str7 = (String) fd1VarB.r(pluginGeneratedSerialDescriptor, 0, c0aVar, null);
                String strI = fd1VarB.i(pluginGeneratedSerialDescriptor, 1);
                String str8 = (String) fd1VarB.r(pluginGeneratedSerialDescriptor, 2, c0aVar, null);
                String str9 = (String) fd1VarB.r(pluginGeneratedSerialDescriptor, 3, c0aVar, null);
                list = (List) fd1VarB.A(pluginGeneratedSerialDescriptor, 4, ef5VarArr[4], null);
                str5 = (String) fd1VarB.r(pluginGeneratedSerialDescriptor, 5, c0aVar, null);
                i = 63;
                str4 = str9;
                str3 = str8;
                str2 = strI;
                str = str7;
            } else {
                boolean z = true;
                int i3 = 0;
                String strI2 = null;
                String str10 = null;
                String str11 = null;
                List list2 = null;
                String str12 = null;
                while (z) {
                    int iV = fd1VarB.v(pluginGeneratedSerialDescriptor);
                    switch (iV) {
                        case -1:
                            z = false;
                            i2 = 5;
                            break;
                        case 0:
                            str6 = (String) fd1VarB.r(pluginGeneratedSerialDescriptor, 0, c0a.a, str6);
                            i3 |= 1;
                            i2 = 5;
                            break;
                        case 1:
                            strI2 = fd1VarB.i(pluginGeneratedSerialDescriptor, 1);
                            i3 |= 2;
                            break;
                        case 2:
                            str10 = (String) fd1VarB.r(pluginGeneratedSerialDescriptor, 2, c0a.a, str10);
                            i3 |= 4;
                            break;
                        case 3:
                            str11 = (String) fd1VarB.r(pluginGeneratedSerialDescriptor, 3, c0a.a, str11);
                            i3 |= 8;
                            break;
                        case 4:
                            list2 = (List) fd1VarB.A(pluginGeneratedSerialDescriptor, 4, ef5VarArr[4], list2);
                            i3 |= 16;
                            break;
                        case 5:
                            str12 = (String) fd1VarB.r(pluginGeneratedSerialDescriptor, i2, c0a.a, str12);
                            i3 |= 32;
                            break;
                        default:
                            throw new UnknownFieldException(iV);
                    }
                }
                i = i3;
                str = str6;
                str2 = strI2;
                str3 = str10;
                str4 = str11;
                list = list2;
                str5 = str12;
            }
            fd1VarB.c(pluginGeneratedSerialDescriptor);
            return new qx(i, str, str2, str3, str4, list, str5);
        }

        @Override
        public final kotlinx.serialization.descriptors.a getDescriptor() {
            return b;
        }

        @Override
        public final void serialize(ca3 ca3Var, Object obj) {
            qx qxVar = (qx) obj;
            y45.j(ca3Var, "encoder");
            y45.j(qxVar, ES6Iterator.VALUE_PROPERTY);
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = b;
            defpackage.id1 id1VarB = ca3Var.b(pluginGeneratedSerialDescriptor);
            qx.a(qxVar, id1VarB, pluginGeneratedSerialDescriptor);
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

    public qx(int i, String str, String str2, String str3, String str4, List list, String str5) {
        if (18 != (i & 18)) {
            bc8.a(i, 18, a.a.getDescriptor());
        }
        if ((i & 1) == 0) {
            this.a = null;
        } else {
            this.a = str;
        }
        this.b = str2;
        if ((i & 4) == 0) {
            this.c = null;
        } else {
            this.c = str3;
        }
        if ((i & 8) == 0) {
            this.d = null;
        } else {
            this.d = str4;
        }
        this.e = list;
        if ((i & 32) == 0) {
            this.f = null;
        } else {
            this.f = str5;
        }
    }

    public static final void a(qx qxVar, defpackage.id1 id1Var, PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor) {
        ef5[] ef5VarArr = g;
        if (id1Var.r(pluginGeneratedSerialDescriptor, 0) || qxVar.a != null) {
            id1Var.h(pluginGeneratedSerialDescriptor, 0, c0a.a, qxVar.a);
        }
        id1Var.p(pluginGeneratedSerialDescriptor, 1, qxVar.b);
        if (id1Var.r(pluginGeneratedSerialDescriptor, 2) || qxVar.c != null) {
            id1Var.h(pluginGeneratedSerialDescriptor, 2, c0a.a, qxVar.c);
        }
        if (id1Var.r(pluginGeneratedSerialDescriptor, 3) || qxVar.d != null) {
            id1Var.h(pluginGeneratedSerialDescriptor, 3, c0a.a, qxVar.d);
        }
        id1Var.q(pluginGeneratedSerialDescriptor, 4, ef5VarArr[4], qxVar.e);
        if (!id1Var.r(pluginGeneratedSerialDescriptor, 5) && qxVar.f == null) {
            return;
        }
        id1Var.h(pluginGeneratedSerialDescriptor, 5, c0a.a, qxVar.f);
    }

    public final List<String> b() {
        return this.e;
    }

    public final String c() {
        return this.a;
    }

    public final String d() {
        return this.f;
    }

    public final String e() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof qx)) {
            return false;
        }
        qx qxVar = (qx) obj;
        return y45.e(this.a, qxVar.a) && y45.e(this.b, qxVar.b) && y45.e(this.c, qxVar.c) && y45.e(this.d, qxVar.d) && y45.e(this.e, qxVar.e) && y45.e(this.f, qxVar.f);
    }

    public final String f() {
        return this.b;
    }

    public final int hashCode() {
        String str = this.a;
        int iA = v3.a(this.b, (str == null ? 0 : str.hashCode()) * 31, 31);
        String str2 = this.c;
        int iHashCode = (iA + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.d;
        int iA2 = aa.a(this.e, (iHashCode + (str3 == null ? 0 : str3.hashCode())) * 31, 31);
        String str4 = this.f;
        return iA2 + (str4 != null ? str4.hashCode() : 0);
    }

    public final String toString() {
        return "DebugPanelMediationNetwork(id=" + this.a + ", name=" + this.b + ", logoUrl=" + this.c + ", adapterStatus=" + this.d + ", adapters=" + this.e + ", latestAdapterVersion=" + this.f + ")";
    }
}
