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
public final class rx {
    public static final b Companion = new b(0);
    private static final ef5[] h = {null, null, null, null, new defpackage.zg(uw.a.a), new defpackage.zg(hw.a.a), new defpackage.zg(qx.a.a)};
    private final String a;
    private final String b;
    private final String c;
    private final String d;
    private final List<uw> e;
    private final List<hw> f;
    private final List<qx> g;

    public static final class a implements od4 {
        public static final a a;
        private static final PluginGeneratedSerialDescriptor b;

        static {
            a aVar = new a();
            a = aVar;
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.yandex.mobile.ads.features.debugpanel.data.remote.model.DebugPanelRemoteData", aVar, 7);
            pluginGeneratedSerialDescriptor.k("page_id", true);
            pluginGeneratedSerialDescriptor.k("latest_sdk_version", true);
            pluginGeneratedSerialDescriptor.k("app_ads_txt_url", true);
            pluginGeneratedSerialDescriptor.k("app_status", true);
            pluginGeneratedSerialDescriptor.k("alerts", true);
            pluginGeneratedSerialDescriptor.k("ad_units", true);
            pluginGeneratedSerialDescriptor.k("mediation_networks", false);
            b = pluginGeneratedSerialDescriptor;
        }

        private a() {
        }

        @Override
        public final ef5[] childSerializers() {
            ef5[] ef5VarArr = rx.h;
            c0a c0aVar = c0a.a;
            return new ef5[]{defpackage.qn0.t(c0aVar), defpackage.qn0.t(c0aVar), defpackage.qn0.t(c0aVar), defpackage.qn0.t(c0aVar), defpackage.qn0.t(ef5VarArr[4]), defpackage.qn0.t(ef5VarArr[5]), ef5VarArr[6]};
        }

        @Override
        public final Object deserialize(defpackage.hu1 hu1Var) {
            int i;
            List list;
            List list2;
            String str;
            String str2;
            String str3;
            String str4;
            List list3;
            y45.j(hu1Var, "decoder");
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = b;
            defpackage.fd1 fd1VarB = hu1Var.b(pluginGeneratedSerialDescriptor);
            ef5[] ef5VarArr = rx.h;
            int i2 = 3;
            String str5 = null;
            if (fd1VarB.j()) {
                c0a c0aVar = c0a.a;
                String str6 = (String) fd1VarB.r(pluginGeneratedSerialDescriptor, 0, c0aVar, null);
                String str7 = (String) fd1VarB.r(pluginGeneratedSerialDescriptor, 1, c0aVar, null);
                String str8 = (String) fd1VarB.r(pluginGeneratedSerialDescriptor, 2, c0aVar, null);
                String str9 = (String) fd1VarB.r(pluginGeneratedSerialDescriptor, 3, c0aVar, null);
                List list4 = (List) fd1VarB.r(pluginGeneratedSerialDescriptor, 4, ef5VarArr[4], null);
                List list5 = (List) fd1VarB.r(pluginGeneratedSerialDescriptor, 5, ef5VarArr[5], null);
                list = (List) fd1VarB.A(pluginGeneratedSerialDescriptor, 6, ef5VarArr[6], null);
                str4 = str9;
                list3 = list4;
                str3 = str8;
                i = 127;
                list2 = list5;
                str2 = str7;
                str = str6;
            } else {
                boolean z = true;
                int i3 = 0;
                List list6 = null;
                List list7 = null;
                String str10 = null;
                String str11 = null;
                String str12 = null;
                List list8 = null;
                while (z) {
                    int iV = fd1VarB.v(pluginGeneratedSerialDescriptor);
                    switch (iV) {
                        case -1:
                            z = false;
                            i2 = 3;
                            break;
                        case 0:
                            str5 = (String) fd1VarB.r(pluginGeneratedSerialDescriptor, 0, c0a.a, str5);
                            i3 |= 1;
                            i2 = 3;
                            break;
                        case 1:
                            str10 = (String) fd1VarB.r(pluginGeneratedSerialDescriptor, 1, c0a.a, str10);
                            i3 |= 2;
                            i2 = 3;
                            break;
                        case 2:
                            str11 = (String) fd1VarB.r(pluginGeneratedSerialDescriptor, 2, c0a.a, str11);
                            i3 |= 4;
                            i2 = 3;
                            break;
                        case 3:
                            str12 = (String) fd1VarB.r(pluginGeneratedSerialDescriptor, i2, c0a.a, str12);
                            i3 |= 8;
                            break;
                        case 4:
                            list8 = (List) fd1VarB.r(pluginGeneratedSerialDescriptor, 4, ef5VarArr[4], list8);
                            i3 |= 16;
                            break;
                        case 5:
                            list7 = (List) fd1VarB.r(pluginGeneratedSerialDescriptor, 5, ef5VarArr[5], list7);
                            i3 |= 32;
                            break;
                        case 6:
                            list6 = (List) fd1VarB.A(pluginGeneratedSerialDescriptor, 6, ef5VarArr[6], list6);
                            i3 |= 64;
                            break;
                        default:
                            throw new UnknownFieldException(iV);
                    }
                }
                i = i3;
                list = list6;
                list2 = list7;
                str = str5;
                str2 = str10;
                str3 = str11;
                str4 = str12;
                list3 = list8;
            }
            fd1VarB.c(pluginGeneratedSerialDescriptor);
            return new rx(i, str, str2, str3, str4, list3, list2, list);
        }

        @Override
        public final kotlinx.serialization.descriptors.a getDescriptor() {
            return b;
        }

        @Override
        public final void serialize(ca3 ca3Var, Object obj) {
            rx rxVar = (rx) obj;
            y45.j(ca3Var, "encoder");
            y45.j(rxVar, ES6Iterator.VALUE_PROPERTY);
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = b;
            defpackage.id1 id1VarB = ca3Var.b(pluginGeneratedSerialDescriptor);
            rx.a(rxVar, id1VarB, pluginGeneratedSerialDescriptor);
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

    public rx(int i, String str, String str2, String str3, String str4, List list, List list2, List list3) {
        if (64 != (i & 64)) {
            bc8.a(i, 64, a.a.getDescriptor());
        }
        if ((i & 1) == 0) {
            this.a = null;
        } else {
            this.a = str;
        }
        if ((i & 2) == 0) {
            this.b = null;
        } else {
            this.b = str2;
        }
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
        if ((i & 16) == 0) {
            this.e = null;
        } else {
            this.e = list;
        }
        if ((i & 32) == 0) {
            this.f = null;
        } else {
            this.f = list2;
        }
        this.g = list3;
    }

    public static final void a(rx rxVar, defpackage.id1 id1Var, PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor) {
        ef5[] ef5VarArr = h;
        if (id1Var.r(pluginGeneratedSerialDescriptor, 0) || rxVar.a != null) {
            id1Var.h(pluginGeneratedSerialDescriptor, 0, c0a.a, rxVar.a);
        }
        if (id1Var.r(pluginGeneratedSerialDescriptor, 1) || rxVar.b != null) {
            id1Var.h(pluginGeneratedSerialDescriptor, 1, c0a.a, rxVar.b);
        }
        if (id1Var.r(pluginGeneratedSerialDescriptor, 2) || rxVar.c != null) {
            id1Var.h(pluginGeneratedSerialDescriptor, 2, c0a.a, rxVar.c);
        }
        if (id1Var.r(pluginGeneratedSerialDescriptor, 3) || rxVar.d != null) {
            id1Var.h(pluginGeneratedSerialDescriptor, 3, c0a.a, rxVar.d);
        }
        if (id1Var.r(pluginGeneratedSerialDescriptor, 4) || rxVar.e != null) {
            id1Var.h(pluginGeneratedSerialDescriptor, 4, ef5VarArr[4], rxVar.e);
        }
        if (id1Var.r(pluginGeneratedSerialDescriptor, 5) || rxVar.f != null) {
            id1Var.h(pluginGeneratedSerialDescriptor, 5, ef5VarArr[5], rxVar.f);
        }
        id1Var.q(pluginGeneratedSerialDescriptor, 6, ef5VarArr[6], rxVar.g);
    }

    public final List<hw> b() {
        return this.f;
    }

    public final List<uw> c() {
        return this.e;
    }

    public final String d() {
        return this.c;
    }

    public final String e() {
        return this.d;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof rx)) {
            return false;
        }
        rx rxVar = (rx) obj;
        return y45.e(this.a, rxVar.a) && y45.e(this.b, rxVar.b) && y45.e(this.c, rxVar.c) && y45.e(this.d, rxVar.d) && y45.e(this.e, rxVar.e) && y45.e(this.f, rxVar.f) && y45.e(this.g, rxVar.g);
    }

    public final List<qx> f() {
        return this.g;
    }

    public final String g() {
        return this.a;
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.d;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        List<uw> list = this.e;
        int iHashCode5 = (iHashCode4 + (list == null ? 0 : list.hashCode())) * 31;
        List<hw> list2 = this.f;
        return this.g.hashCode() + ((iHashCode5 + (list2 != null ? list2.hashCode() : 0)) * 31);
    }

    public final String toString() {
        return "DebugPanelRemoteData(pageId=" + this.a + ", latestSdkVersion=" + this.b + ", appAdsTxtUrl=" + this.c + ", appStatus=" + this.d + ", alerts=" + this.e + ", adUnits=" + this.f + ", mediationNetworks=" + this.g + ")";
    }
}
