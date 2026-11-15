package com.yandex.mobile.ads.impl;

import defpackage.bc8;
import defpackage.ca3;
import defpackage.ef5;
import defpackage.ld9;
import defpackage.od4;
import defpackage.y45;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import org.mozilla.javascript.ES6Iterator;

@ld9
public final class ax {
    public static final b Companion = new b(0);
    private final boolean a;
    private final Boolean b;
    private final Boolean c;
    private final boolean d;

    public static final class a implements od4 {
        public static final a a;
        private static final PluginGeneratedSerialDescriptor b;

        static {
            a aVar = new a();
            a = aVar;
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.yandex.mobile.ads.features.debugpanel.data.local.model.DebugPanelConsentsData", aVar, 4);
            pluginGeneratedSerialDescriptor.k("has_location_consent", false);
            pluginGeneratedSerialDescriptor.k("age_restricted_user", false);
            pluginGeneratedSerialDescriptor.k("has_user_consent", false);
            pluginGeneratedSerialDescriptor.k("has_cmp_value", false);
            b = pluginGeneratedSerialDescriptor;
        }

        private a() {
        }

        @Override
        public final ef5[] childSerializers() {
            defpackage.bi0 bi0Var = defpackage.bi0.a;
            return new ef5[]{bi0Var, defpackage.qn0.t(bi0Var), defpackage.qn0.t(bi0Var), bi0Var};
        }

        @Override
        public final Object deserialize(defpackage.hu1 hu1Var) {
            boolean z;
            boolean zD;
            int i;
            Boolean bool;
            Boolean bool2;
            y45.j(hu1Var, "decoder");
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = b;
            defpackage.fd1 fd1VarB = hu1Var.b(pluginGeneratedSerialDescriptor);
            if (fd1VarB.j()) {
                boolean zD2 = fd1VarB.D(pluginGeneratedSerialDescriptor, 0);
                defpackage.bi0 bi0Var = defpackage.bi0.a;
                Boolean bool3 = (Boolean) fd1VarB.r(pluginGeneratedSerialDescriptor, 1, bi0Var, null);
                Boolean bool4 = (Boolean) fd1VarB.r(pluginGeneratedSerialDescriptor, 2, bi0Var, null);
                z = zD2;
                zD = fd1VarB.D(pluginGeneratedSerialDescriptor, 3);
                bool2 = bool4;
                bool = bool3;
                i = 15;
            } else {
                boolean z2 = true;
                boolean zD3 = false;
                int i2 = 0;
                Boolean bool5 = null;
                Boolean bool6 = null;
                boolean zD4 = false;
                while (z2) {
                    int iV = fd1VarB.v(pluginGeneratedSerialDescriptor);
                    if (iV == -1) {
                        z2 = false;
                    } else if (iV == 0) {
                        zD3 = fd1VarB.D(pluginGeneratedSerialDescriptor, 0);
                        i2 |= 1;
                    } else if (iV == 1) {
                        bool5 = (Boolean) fd1VarB.r(pluginGeneratedSerialDescriptor, 1, defpackage.bi0.a, bool5);
                        i2 |= 2;
                    } else if (iV == 2) {
                        bool6 = (Boolean) fd1VarB.r(pluginGeneratedSerialDescriptor, 2, defpackage.bi0.a, bool6);
                        i2 |= 4;
                    } else {
                        if (iV != 3) {
                            throw new UnknownFieldException(iV);
                        }
                        zD4 = fd1VarB.D(pluginGeneratedSerialDescriptor, 3);
                        i2 |= 8;
                    }
                }
                z = zD3;
                zD = zD4;
                i = i2;
                bool = bool5;
                bool2 = bool6;
            }
            fd1VarB.c(pluginGeneratedSerialDescriptor);
            return new ax(i, z, bool, bool2, zD);
        }

        @Override
        public final kotlinx.serialization.descriptors.a getDescriptor() {
            return b;
        }

        @Override
        public final void serialize(ca3 ca3Var, Object obj) {
            ax axVar = (ax) obj;
            y45.j(ca3Var, "encoder");
            y45.j(axVar, ES6Iterator.VALUE_PROPERTY);
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = b;
            defpackage.id1 id1VarB = ca3Var.b(pluginGeneratedSerialDescriptor);
            ax.a(axVar, id1VarB, pluginGeneratedSerialDescriptor);
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

    public ax(int i, boolean z, Boolean bool, Boolean bool2, boolean z2) {
        if (15 != (i & 15)) {
            bc8.a(i, 15, a.a.getDescriptor());
        }
        this.a = z;
        this.b = bool;
        this.c = bool2;
        this.d = z2;
    }

    public final Boolean a() {
        return this.b;
    }

    public final boolean b() {
        return this.d;
    }

    public final boolean c() {
        return this.a;
    }

    public final Boolean d() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ax)) {
            return false;
        }
        ax axVar = (ax) obj;
        return this.a == axVar.a && y45.e(this.b, axVar.b) && y45.e(this.c, axVar.c) && this.d == axVar.d;
    }

    public final int hashCode() {
        int iHashCode = Boolean.hashCode(this.a) * 31;
        Boolean bool = this.b;
        int iHashCode2 = (iHashCode + (bool == null ? 0 : bool.hashCode())) * 31;
        Boolean bool2 = this.c;
        return Boolean.hashCode(this.d) + ((iHashCode2 + (bool2 != null ? bool2.hashCode() : 0)) * 31);
    }

    public final String toString() {
        return "DebugPanelConsentsData(hasLocationConsent=" + this.a + ", ageRestrictedUser=" + this.b + ", hasUserConsent=" + this.c + ", hasCmpValue=" + this.d + ")";
    }

    public ax(boolean z, Boolean bool, Boolean bool2, boolean z2) {
        this.a = z;
        this.b = bool;
        this.c = bool2;
        this.d = z2;
    }

    public static final void a(ax axVar, defpackage.id1 id1Var, PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor) {
        id1Var.o(pluginGeneratedSerialDescriptor, 0, axVar.a);
        defpackage.bi0 bi0Var = defpackage.bi0.a;
        id1Var.h(pluginGeneratedSerialDescriptor, 1, bi0Var, axVar.b);
        id1Var.h(pluginGeneratedSerialDescriptor, 2, bi0Var, axVar.c);
        id1Var.o(pluginGeneratedSerialDescriptor, 3, axVar.d);
    }
}
