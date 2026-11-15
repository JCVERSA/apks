package com.yandex.mobile.ads.impl;

import com.hisavana.common.tracking.TrackingKey;
import defpackage.bc8;
import defpackage.c0a;
import defpackage.ca3;
import defpackage.ef5;
import defpackage.ld9;
import defpackage.od4;
import defpackage.v15;
import defpackage.y45;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import org.mozilla.javascript.ES6Iterator;

@ld9
public final class sk1 {
    public static final b Companion = new b(0);
    private static final ef5[] d = {tk1.Companion.serializer(), null, null};
    private final tk1 a;
    private final String b;
    private final Integer c;

    public static final class a implements od4 {
        public static final a a;
        private static final PluginGeneratedSerialDescriptor b;

        static {
            a aVar = new a();
            a = aVar;
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.monetization.ads.base.model.mediation.prefetch.PrefetchedMediationResult", aVar, 3);
            pluginGeneratedSerialDescriptor.k("status", false);
            pluginGeneratedSerialDescriptor.k(TrackingKey.ERROR_MESSAGE, false);
            pluginGeneratedSerialDescriptor.k("status_code", false);
            b = pluginGeneratedSerialDescriptor;
        }

        private a() {
        }

        @Override
        public final ef5[] childSerializers() {
            return new ef5[]{sk1.d[0], defpackage.qn0.t(c0a.a), defpackage.qn0.t(v15.a)};
        }

        @Override
        public final Object deserialize(defpackage.hu1 hu1Var) {
            int i;
            tk1 tk1Var;
            String str;
            Integer num;
            y45.j(hu1Var, "decoder");
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = b;
            defpackage.fd1 fd1VarB = hu1Var.b(pluginGeneratedSerialDescriptor);
            ef5[] ef5VarArr = sk1.d;
            tk1 tk1Var2 = null;
            if (fd1VarB.j()) {
                tk1Var = (tk1) fd1VarB.A(pluginGeneratedSerialDescriptor, 0, ef5VarArr[0], null);
                str = (String) fd1VarB.r(pluginGeneratedSerialDescriptor, 1, c0a.a, null);
                num = (Integer) fd1VarB.r(pluginGeneratedSerialDescriptor, 2, v15.a, null);
                i = 7;
            } else {
                boolean z = true;
                int i2 = 0;
                String str2 = null;
                Integer num2 = null;
                while (z) {
                    int iV = fd1VarB.v(pluginGeneratedSerialDescriptor);
                    if (iV == -1) {
                        z = false;
                    } else if (iV == 0) {
                        tk1Var2 = (tk1) fd1VarB.A(pluginGeneratedSerialDescriptor, 0, ef5VarArr[0], tk1Var2);
                        i2 |= 1;
                    } else if (iV == 1) {
                        str2 = (String) fd1VarB.r(pluginGeneratedSerialDescriptor, 1, c0a.a, str2);
                        i2 |= 2;
                    } else {
                        if (iV != 2) {
                            throw new UnknownFieldException(iV);
                        }
                        num2 = (Integer) fd1VarB.r(pluginGeneratedSerialDescriptor, 2, v15.a, num2);
                        i2 |= 4;
                    }
                }
                i = i2;
                tk1Var = tk1Var2;
                str = str2;
                num = num2;
            }
            fd1VarB.c(pluginGeneratedSerialDescriptor);
            return new sk1(i, tk1Var, str, num);
        }

        @Override
        public final kotlinx.serialization.descriptors.a getDescriptor() {
            return b;
        }

        @Override
        public final void serialize(ca3 ca3Var, Object obj) {
            sk1 sk1Var = (sk1) obj;
            y45.j(ca3Var, "encoder");
            y45.j(sk1Var, ES6Iterator.VALUE_PROPERTY);
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = b;
            defpackage.id1 id1VarB = ca3Var.b(pluginGeneratedSerialDescriptor);
            sk1.a(sk1Var, id1VarB, pluginGeneratedSerialDescriptor);
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

    public sk1(int i, tk1 tk1Var, String str, Integer num) {
        if (7 != (i & 7)) {
            bc8.a(i, 7, a.a.getDescriptor());
        }
        this.a = tk1Var;
        this.b = str;
        this.c = num;
    }

    public static final void a(sk1 sk1Var, defpackage.id1 id1Var, PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor) {
        id1Var.q(pluginGeneratedSerialDescriptor, 0, d[0], sk1Var.a);
        id1Var.h(pluginGeneratedSerialDescriptor, 1, c0a.a, sk1Var.b);
        id1Var.h(pluginGeneratedSerialDescriptor, 2, v15.a, sk1Var.c);
    }

    public sk1(tk1 tk1Var, String str, Integer num) {
        y45.j(tk1Var, "status");
        this.a = tk1Var;
        this.b = str;
        this.c = num;
    }
}
