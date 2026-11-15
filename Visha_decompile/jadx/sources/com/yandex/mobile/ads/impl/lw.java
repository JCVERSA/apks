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
public final class lw {
    public static final b Companion = new b(0);
    private static final ef5[] c = {new defpackage.zg(ow.a.a), new defpackage.zg(iw.a.a)};
    private final List<ow> a;
    private final List<iw> b;

    public static final class a implements od4 {
        public static final a a;
        private static final PluginGeneratedSerialDescriptor b;

        static {
            a aVar = new a();
            a = aVar;
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.yandex.mobile.ads.features.debugpanel.data.remote.model.DebugPanelAdUnitMediation", aVar, 2);
            pluginGeneratedSerialDescriptor.k("waterfall", false);
            pluginGeneratedSerialDescriptor.k("bidding", false);
            b = pluginGeneratedSerialDescriptor;
        }

        private a() {
        }

        @Override
        public final ef5[] childSerializers() {
            ef5[] ef5VarArr = lw.c;
            return new ef5[]{ef5VarArr[0], ef5VarArr[1]};
        }

        @Override
        public final Object deserialize(defpackage.hu1 hu1Var) {
            int i;
            List list;
            List list2;
            y45.j(hu1Var, "decoder");
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = b;
            defpackage.fd1 fd1VarB = hu1Var.b(pluginGeneratedSerialDescriptor);
            ef5[] ef5VarArr = lw.c;
            List list3 = null;
            if (fd1VarB.j()) {
                list = (List) fd1VarB.A(pluginGeneratedSerialDescriptor, 0, ef5VarArr[0], null);
                list2 = (List) fd1VarB.A(pluginGeneratedSerialDescriptor, 1, ef5VarArr[1], null);
                i = 3;
            } else {
                boolean z = true;
                int i2 = 0;
                List list4 = null;
                while (z) {
                    int iV = fd1VarB.v(pluginGeneratedSerialDescriptor);
                    if (iV == -1) {
                        z = false;
                    } else if (iV == 0) {
                        list3 = (List) fd1VarB.A(pluginGeneratedSerialDescriptor, 0, ef5VarArr[0], list3);
                        i2 |= 1;
                    } else {
                        if (iV != 1) {
                            throw new UnknownFieldException(iV);
                        }
                        list4 = (List) fd1VarB.A(pluginGeneratedSerialDescriptor, 1, ef5VarArr[1], list4);
                        i2 |= 2;
                    }
                }
                i = i2;
                list = list3;
                list2 = list4;
            }
            fd1VarB.c(pluginGeneratedSerialDescriptor);
            return new lw(i, list, list2);
        }

        @Override
        public final kotlinx.serialization.descriptors.a getDescriptor() {
            return b;
        }

        @Override
        public final void serialize(ca3 ca3Var, Object obj) {
            lw lwVar = (lw) obj;
            y45.j(ca3Var, "encoder");
            y45.j(lwVar, ES6Iterator.VALUE_PROPERTY);
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = b;
            defpackage.id1 id1VarB = ca3Var.b(pluginGeneratedSerialDescriptor);
            lw.a(lwVar, id1VarB, pluginGeneratedSerialDescriptor);
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

    public lw(int i, List list, List list2) {
        if (3 != (i & 3)) {
            bc8.a(i, 3, a.a.getDescriptor());
        }
        this.a = list;
        this.b = list2;
    }

    public static final void a(lw lwVar, defpackage.id1 id1Var, PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor) {
        ef5[] ef5VarArr = c;
        id1Var.q(pluginGeneratedSerialDescriptor, 0, ef5VarArr[0], lwVar.a);
        id1Var.q(pluginGeneratedSerialDescriptor, 1, ef5VarArr[1], lwVar.b);
    }

    public final List<iw> b() {
        return this.b;
    }

    public final List<ow> c() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof lw)) {
            return false;
        }
        lw lwVar = (lw) obj;
        return y45.e(this.a, lwVar.a) && y45.e(this.b, lwVar.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "DebugPanelAdUnitMediation(waterfall=" + this.a + ", bidding=" + this.b + ")";
    }
}
