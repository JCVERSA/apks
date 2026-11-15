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
public final class fk1 {
    public static final b Companion = new b(0);
    private static final ef5[] b = {new defpackage.zg(hk1.a.a)};
    private final List<hk1> a;

    public static final class a implements od4 {
        public static final a a;
        private static final PluginGeneratedSerialDescriptor b;

        static {
            a aVar = new a();
            a = aVar;
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.monetization.ads.base.model.mediation.prefetch.PrefetchedMediationData", aVar, 1);
            pluginGeneratedSerialDescriptor.k("prefetched_mediation_data", false);
            b = pluginGeneratedSerialDescriptor;
        }

        private a() {
        }

        @Override
        public final ef5[] childSerializers() {
            return new ef5[]{fk1.b[0]};
        }

        @Override
        public final Object deserialize(defpackage.hu1 hu1Var) {
            List list;
            y45.j(hu1Var, "decoder");
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = b;
            defpackage.fd1 fd1VarB = hu1Var.b(pluginGeneratedSerialDescriptor);
            ef5[] ef5VarArr = fk1.b;
            int i = 1;
            List list2 = null;
            if (fd1VarB.j()) {
                list = (List) fd1VarB.A(pluginGeneratedSerialDescriptor, 0, ef5VarArr[0], null);
            } else {
                boolean z = true;
                int i2 = 0;
                while (z) {
                    int iV = fd1VarB.v(pluginGeneratedSerialDescriptor);
                    if (iV == -1) {
                        z = false;
                    } else {
                        if (iV != 0) {
                            throw new UnknownFieldException(iV);
                        }
                        list2 = (List) fd1VarB.A(pluginGeneratedSerialDescriptor, 0, ef5VarArr[0], list2);
                        i2 = 1;
                    }
                }
                list = list2;
                i = i2;
            }
            fd1VarB.c(pluginGeneratedSerialDescriptor);
            return new fk1(i, list);
        }

        @Override
        public final kotlinx.serialization.descriptors.a getDescriptor() {
            return b;
        }

        @Override
        public final void serialize(ca3 ca3Var, Object obj) {
            fk1 fk1Var = (fk1) obj;
            y45.j(ca3Var, "encoder");
            y45.j(fk1Var, ES6Iterator.VALUE_PROPERTY);
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = b;
            defpackage.id1 id1VarB = ca3Var.b(pluginGeneratedSerialDescriptor);
            fk1.a(fk1Var, id1VarB, pluginGeneratedSerialDescriptor);
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

    public fk1(int i, List list) {
        if (1 != (i & 1)) {
            bc8.a(i, 1, a.a.getDescriptor());
        }
        this.a = list;
    }

    public static final void a(fk1 fk1Var, defpackage.id1 id1Var, PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor) {
        id1Var.q(pluginGeneratedSerialDescriptor, 0, b[0], fk1Var.a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof fk1) && y45.e(this.a, ((fk1) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "PrefetchedMediationData(mediationPrefetchAdapters=" + this.a + ")";
    }

    public fk1(List<hk1> list) {
        y45.j(list, "mediationPrefetchAdapters");
        this.a = list;
    }
}
