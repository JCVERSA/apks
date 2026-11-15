package com.yandex.mobile.ads.impl;

import defpackage.bc8;
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
public final class sx {
    public static final b Companion = new b(0);
    private static final ef5[] g = {null, null, new defpackage.zg(qz0.a.a), null, new defpackage.zg(u11.a.a), new defpackage.zg(m11.a.a)};
    private final xw a;
    private final yx b;
    private final List<qz0> c;
    private final ax d;
    private final List<u11> e;
    private final List<m11> f;

    public static final class a implements od4 {
        public static final a a;
        private static final PluginGeneratedSerialDescriptor b;

        static {
            a aVar = new a();
            a = aVar;
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.yandex.mobile.ads.features.debugpanel.data.model.DebugPanelReportData", aVar, 6);
            pluginGeneratedSerialDescriptor.k("app_data", false);
            pluginGeneratedSerialDescriptor.k("sdk_data", false);
            pluginGeneratedSerialDescriptor.k("adapters_data", false);
            pluginGeneratedSerialDescriptor.k("consents_data", false);
            pluginGeneratedSerialDescriptor.k("sdk_logs", false);
            pluginGeneratedSerialDescriptor.k("network_logs", false);
            b = pluginGeneratedSerialDescriptor;
        }

        private a() {
        }

        @Override
        public final ef5[] childSerializers() {
            ef5[] ef5VarArr = sx.g;
            return new ef5[]{xw.a.a, yx.a.a, ef5VarArr[2], ax.a.a, ef5VarArr[4], ef5VarArr[5]};
        }

        @Override
        public final Object deserialize(defpackage.hu1 hu1Var) {
            int i;
            xw xwVar;
            yx yxVar;
            List list;
            ax axVar;
            List list2;
            List list3;
            y45.j(hu1Var, "decoder");
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = b;
            defpackage.fd1 fd1VarB = hu1Var.b(pluginGeneratedSerialDescriptor);
            ef5[] ef5VarArr = sx.g;
            int i2 = 3;
            xw xwVar2 = null;
            if (fd1VarB.j()) {
                xw xwVar3 = (xw) fd1VarB.A(pluginGeneratedSerialDescriptor, 0, xw.a.a, null);
                yx yxVar2 = (yx) fd1VarB.A(pluginGeneratedSerialDescriptor, 1, yx.a.a, null);
                List list4 = (List) fd1VarB.A(pluginGeneratedSerialDescriptor, 2, ef5VarArr[2], null);
                ax axVar2 = (ax) fd1VarB.A(pluginGeneratedSerialDescriptor, 3, ax.a.a, null);
                List list5 = (List) fd1VarB.A(pluginGeneratedSerialDescriptor, 4, ef5VarArr[4], null);
                list3 = (List) fd1VarB.A(pluginGeneratedSerialDescriptor, 5, ef5VarArr[5], null);
                xwVar = xwVar3;
                axVar = axVar2;
                i = 63;
                list2 = list5;
                list = list4;
                yxVar = yxVar2;
            } else {
                boolean z = true;
                int i3 = 0;
                yx yxVar3 = null;
                List list6 = null;
                ax axVar3 = null;
                List list7 = null;
                List list8 = null;
                while (z) {
                    int iV = fd1VarB.v(pluginGeneratedSerialDescriptor);
                    switch (iV) {
                        case -1:
                            z = false;
                            i2 = 3;
                            break;
                        case 0:
                            xwVar2 = (xw) fd1VarB.A(pluginGeneratedSerialDescriptor, 0, xw.a.a, xwVar2);
                            i3 |= 1;
                            i2 = 3;
                            break;
                        case 1:
                            yxVar3 = (yx) fd1VarB.A(pluginGeneratedSerialDescriptor, 1, yx.a.a, yxVar3);
                            i3 |= 2;
                            break;
                        case 2:
                            list6 = (List) fd1VarB.A(pluginGeneratedSerialDescriptor, 2, ef5VarArr[2], list6);
                            i3 |= 4;
                            break;
                        case 3:
                            axVar3 = (ax) fd1VarB.A(pluginGeneratedSerialDescriptor, i2, ax.a.a, axVar3);
                            i3 |= 8;
                            break;
                        case 4:
                            list7 = (List) fd1VarB.A(pluginGeneratedSerialDescriptor, 4, ef5VarArr[4], list7);
                            i3 |= 16;
                            break;
                        case 5:
                            list8 = (List) fd1VarB.A(pluginGeneratedSerialDescriptor, 5, ef5VarArr[5], list8);
                            i3 |= 32;
                            break;
                        default:
                            throw new UnknownFieldException(iV);
                    }
                }
                i = i3;
                xwVar = xwVar2;
                yxVar = yxVar3;
                list = list6;
                axVar = axVar3;
                list2 = list7;
                list3 = list8;
            }
            fd1VarB.c(pluginGeneratedSerialDescriptor);
            return new sx(i, xwVar, yxVar, list, axVar, list2, list3);
        }

        @Override
        public final kotlinx.serialization.descriptors.a getDescriptor() {
            return b;
        }

        @Override
        public final void serialize(ca3 ca3Var, Object obj) {
            sx sxVar = (sx) obj;
            y45.j(ca3Var, "encoder");
            y45.j(sxVar, ES6Iterator.VALUE_PROPERTY);
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = b;
            defpackage.id1 id1VarB = ca3Var.b(pluginGeneratedSerialDescriptor);
            sx.a(sxVar, id1VarB, pluginGeneratedSerialDescriptor);
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

    public sx(int i, xw xwVar, yx yxVar, List list, ax axVar, List list2, List list3) {
        if (63 != (i & 63)) {
            bc8.a(i, 63, a.a.getDescriptor());
        }
        this.a = xwVar;
        this.b = yxVar;
        this.c = list;
        this.d = axVar;
        this.e = list2;
        this.f = list3;
    }

    public static final void a(sx sxVar, defpackage.id1 id1Var, PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor) {
        ef5[] ef5VarArr = g;
        id1Var.q(pluginGeneratedSerialDescriptor, 0, xw.a.a, sxVar.a);
        id1Var.q(pluginGeneratedSerialDescriptor, 1, yx.a.a, sxVar.b);
        id1Var.q(pluginGeneratedSerialDescriptor, 2, ef5VarArr[2], sxVar.c);
        id1Var.q(pluginGeneratedSerialDescriptor, 3, ax.a.a, sxVar.d);
        id1Var.q(pluginGeneratedSerialDescriptor, 4, ef5VarArr[4], sxVar.e);
        id1Var.q(pluginGeneratedSerialDescriptor, 5, ef5VarArr[5], sxVar.f);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof sx)) {
            return false;
        }
        sx sxVar = (sx) obj;
        return y45.e(this.a, sxVar.a) && y45.e(this.b, sxVar.b) && y45.e(this.c, sxVar.c) && y45.e(this.d, sxVar.d) && y45.e(this.e, sxVar.e) && y45.e(this.f, sxVar.f);
    }

    public final int hashCode() {
        return this.f.hashCode() + aa.a(this.e, (this.d.hashCode() + aa.a(this.c, (this.b.hashCode() + (this.a.hashCode() * 31)) * 31, 31)) * 31, 31);
    }

    public final String toString() {
        return "DebugPanelReportData(appData=" + this.a + ", sdkData=" + this.b + ", networksData=" + this.c + ", consentsData=" + this.d + ", sdkLogs=" + this.e + ", networkLogs=" + this.f + ")";
    }

    public sx(xw xwVar, yx yxVar, List<qz0> list, ax axVar, List<u11> list2, List<m11> list3) {
        y45.j(xwVar, "appData");
        y45.j(yxVar, "sdkData");
        y45.j(list, "networksData");
        y45.j(axVar, "consentsData");
        y45.j(list2, "sdkLogs");
        y45.j(list3, "networkLogs");
        this.a = xwVar;
        this.b = yxVar;
        this.c = list;
        this.d = axVar;
        this.e = list2;
        this.f = list3;
    }
}
