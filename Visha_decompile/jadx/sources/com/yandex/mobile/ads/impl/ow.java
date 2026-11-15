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
public final class ow {
    public static final b Companion = new b(0);
    private static final ef5[] g = {null, null, new defpackage.zg(ny.a.a), null, null, new defpackage.zg(ly.a.a)};
    private final String a;
    private final String b;
    private final List<ny> c;
    private final String d;
    private final my e;
    private final List<ly> f;

    public static final class a implements od4 {
        public static final a a;
        private static final PluginGeneratedSerialDescriptor b;

        static {
            a aVar = new a();
            a = aVar;
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.yandex.mobile.ads.features.debugpanel.data.remote.model.DebugPanelAdUnitWaterfallMediation", aVar, 6);
            pluginGeneratedSerialDescriptor.k("adapter", true);
            pluginGeneratedSerialDescriptor.k("network_name", false);
            pluginGeneratedSerialDescriptor.k("waterfall_parameters", false);
            pluginGeneratedSerialDescriptor.k("network_ad_unit_id_name", true);
            pluginGeneratedSerialDescriptor.k("currency", false);
            pluginGeneratedSerialDescriptor.k("cpm_floors", false);
            b = pluginGeneratedSerialDescriptor;
        }

        private a() {
        }

        @Override
        public final ef5[] childSerializers() {
            ef5[] ef5VarArr = ow.g;
            c0a c0aVar = c0a.a;
            return new ef5[]{defpackage.qn0.t(c0aVar), c0aVar, ef5VarArr[2], defpackage.qn0.t(c0aVar), defpackage.qn0.t(my.a.a), ef5VarArr[5]};
        }

        @Override
        public final Object deserialize(defpackage.hu1 hu1Var) {
            int i;
            String str;
            String str2;
            List list;
            String str3;
            my myVar;
            List list2;
            y45.j(hu1Var, "decoder");
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = b;
            defpackage.fd1 fd1VarB = hu1Var.b(pluginGeneratedSerialDescriptor);
            ef5[] ef5VarArr = ow.g;
            int i2 = 3;
            String str4 = null;
            if (fd1VarB.j()) {
                c0a c0aVar = c0a.a;
                String str5 = (String) fd1VarB.r(pluginGeneratedSerialDescriptor, 0, c0aVar, null);
                String strI = fd1VarB.i(pluginGeneratedSerialDescriptor, 1);
                List list3 = (List) fd1VarB.A(pluginGeneratedSerialDescriptor, 2, ef5VarArr[2], null);
                String str6 = (String) fd1VarB.r(pluginGeneratedSerialDescriptor, 3, c0aVar, null);
                my myVar2 = (my) fd1VarB.r(pluginGeneratedSerialDescriptor, 4, my.a.a, null);
                list2 = (List) fd1VarB.A(pluginGeneratedSerialDescriptor, 5, ef5VarArr[5], null);
                str3 = str6;
                myVar = myVar2;
                i = 63;
                list = list3;
                str2 = strI;
                str = str5;
            } else {
                boolean z = true;
                int i3 = 0;
                String strI2 = null;
                List list4 = null;
                String str7 = null;
                my myVar3 = null;
                List list5 = null;
                while (z) {
                    int iV = fd1VarB.v(pluginGeneratedSerialDescriptor);
                    switch (iV) {
                        case -1:
                            z = false;
                            i2 = 3;
                            break;
                        case 0:
                            str4 = (String) fd1VarB.r(pluginGeneratedSerialDescriptor, 0, c0a.a, str4);
                            i3 |= 1;
                            i2 = 3;
                            break;
                        case 1:
                            strI2 = fd1VarB.i(pluginGeneratedSerialDescriptor, 1);
                            i3 |= 2;
                            break;
                        case 2:
                            list4 = (List) fd1VarB.A(pluginGeneratedSerialDescriptor, 2, ef5VarArr[2], list4);
                            i3 |= 4;
                            break;
                        case 3:
                            str7 = (String) fd1VarB.r(pluginGeneratedSerialDescriptor, i2, c0a.a, str7);
                            i3 |= 8;
                            break;
                        case 4:
                            myVar3 = (my) fd1VarB.r(pluginGeneratedSerialDescriptor, 4, my.a.a, myVar3);
                            i3 |= 16;
                            break;
                        case 5:
                            list5 = (List) fd1VarB.A(pluginGeneratedSerialDescriptor, 5, ef5VarArr[5], list5);
                            i3 |= 32;
                            break;
                        default:
                            throw new UnknownFieldException(iV);
                    }
                }
                i = i3;
                str = str4;
                str2 = strI2;
                list = list4;
                str3 = str7;
                myVar = myVar3;
                list2 = list5;
            }
            fd1VarB.c(pluginGeneratedSerialDescriptor);
            return new ow(i, str, str2, list, str3, myVar, list2);
        }

        @Override
        public final kotlinx.serialization.descriptors.a getDescriptor() {
            return b;
        }

        @Override
        public final void serialize(ca3 ca3Var, Object obj) {
            ow owVar = (ow) obj;
            y45.j(ca3Var, "encoder");
            y45.j(owVar, ES6Iterator.VALUE_PROPERTY);
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = b;
            defpackage.id1 id1VarB = ca3Var.b(pluginGeneratedSerialDescriptor);
            ow.a(owVar, id1VarB, pluginGeneratedSerialDescriptor);
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

    public ow(int i, String str, String str2, List list, String str3, my myVar, List list2) {
        if (54 != (i & 54)) {
            bc8.a(i, 54, a.a.getDescriptor());
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
        this.e = myVar;
        this.f = list2;
    }

    public static final void a(ow owVar, defpackage.id1 id1Var, PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor) {
        ef5[] ef5VarArr = g;
        if (id1Var.r(pluginGeneratedSerialDescriptor, 0) || owVar.a != null) {
            id1Var.h(pluginGeneratedSerialDescriptor, 0, c0a.a, owVar.a);
        }
        id1Var.p(pluginGeneratedSerialDescriptor, 1, owVar.b);
        id1Var.q(pluginGeneratedSerialDescriptor, 2, ef5VarArr[2], owVar.c);
        if (id1Var.r(pluginGeneratedSerialDescriptor, 3) || owVar.d != null) {
            id1Var.h(pluginGeneratedSerialDescriptor, 3, c0a.a, owVar.d);
        }
        id1Var.h(pluginGeneratedSerialDescriptor, 4, my.a.a, owVar.e);
        id1Var.q(pluginGeneratedSerialDescriptor, 5, ef5VarArr[5], owVar.f);
    }

    public final List<ly> b() {
        return this.f;
    }

    public final my c() {
        return this.e;
    }

    public final String d() {
        return this.d;
    }

    public final String e() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ow)) {
            return false;
        }
        ow owVar = (ow) obj;
        return y45.e(this.a, owVar.a) && y45.e(this.b, owVar.b) && y45.e(this.c, owVar.c) && y45.e(this.d, owVar.d) && y45.e(this.e, owVar.e) && y45.e(this.f, owVar.f);
    }

    public final List<ny> f() {
        return this.c;
    }

    public final int hashCode() {
        String str = this.a;
        int iA = aa.a(this.c, v3.a(this.b, (str == null ? 0 : str.hashCode()) * 31, 31), 31);
        String str2 = this.d;
        int iHashCode = (iA + (str2 == null ? 0 : str2.hashCode())) * 31;
        my myVar = this.e;
        return this.f.hashCode() + ((iHashCode + (myVar != null ? myVar.hashCode() : 0)) * 31);
    }

    public final String toString() {
        return "DebugPanelAdUnitWaterfallMediation(adapter=" + this.a + ", networkName=" + this.b + ", waterfallParameters=" + this.c + ", networkAdUnitIdName=" + this.d + ", currency=" + this.e + ", cpmFloors=" + this.f + ")";
    }
}
