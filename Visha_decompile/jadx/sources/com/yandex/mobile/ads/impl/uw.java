package com.yandex.mobile.ads.impl;

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
public final class uw {
    public static final b Companion = new b(0);
    private final String a;
    private final String b;
    private final String c;

    public static final class a implements od4 {
        public static final a a;
        private static final PluginGeneratedSerialDescriptor b;

        static {
            a aVar = new a();
            a = aVar;
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.yandex.mobile.ads.features.debugpanel.data.remote.model.DebugPanelAlert", aVar, 3);
            pluginGeneratedSerialDescriptor.k("title", true);
            pluginGeneratedSerialDescriptor.k("message", true);
            pluginGeneratedSerialDescriptor.k("type", true);
            b = pluginGeneratedSerialDescriptor;
        }

        private a() {
        }

        @Override
        public final ef5[] childSerializers() {
            c0a c0aVar = c0a.a;
            return new ef5[]{defpackage.qn0.t(c0aVar), defpackage.qn0.t(c0aVar), defpackage.qn0.t(c0aVar)};
        }

        @Override
        public final Object deserialize(defpackage.hu1 hu1Var) {
            int i;
            String str;
            String str2;
            String str3;
            y45.j(hu1Var, "decoder");
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = b;
            defpackage.fd1 fd1VarB = hu1Var.b(pluginGeneratedSerialDescriptor);
            String str4 = null;
            if (fd1VarB.j()) {
                c0a c0aVar = c0a.a;
                str = (String) fd1VarB.r(pluginGeneratedSerialDescriptor, 0, c0aVar, null);
                str2 = (String) fd1VarB.r(pluginGeneratedSerialDescriptor, 1, c0aVar, null);
                str3 = (String) fd1VarB.r(pluginGeneratedSerialDescriptor, 2, c0aVar, null);
                i = 7;
            } else {
                boolean z = true;
                int i2 = 0;
                String str5 = null;
                String str6 = null;
                while (z) {
                    int iV = fd1VarB.v(pluginGeneratedSerialDescriptor);
                    if (iV == -1) {
                        z = false;
                    } else if (iV == 0) {
                        str4 = (String) fd1VarB.r(pluginGeneratedSerialDescriptor, 0, c0a.a, str4);
                        i2 |= 1;
                    } else if (iV == 1) {
                        str5 = (String) fd1VarB.r(pluginGeneratedSerialDescriptor, 1, c0a.a, str5);
                        i2 |= 2;
                    } else {
                        if (iV != 2) {
                            throw new UnknownFieldException(iV);
                        }
                        str6 = (String) fd1VarB.r(pluginGeneratedSerialDescriptor, 2, c0a.a, str6);
                        i2 |= 4;
                    }
                }
                i = i2;
                str = str4;
                str2 = str5;
                str3 = str6;
            }
            fd1VarB.c(pluginGeneratedSerialDescriptor);
            return new uw(i, str, str2, str3);
        }

        @Override
        public final kotlinx.serialization.descriptors.a getDescriptor() {
            return b;
        }

        @Override
        public final void serialize(ca3 ca3Var, Object obj) {
            uw uwVar = (uw) obj;
            y45.j(ca3Var, "encoder");
            y45.j(uwVar, ES6Iterator.VALUE_PROPERTY);
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = b;
            defpackage.id1 id1VarB = ca3Var.b(pluginGeneratedSerialDescriptor);
            uw.a(uwVar, id1VarB, pluginGeneratedSerialDescriptor);
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

    public uw() {
        this(0);
    }

    public final String a() {
        return this.b;
    }

    public final String b() {
        return this.a;
    }

    public final String c() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof uw)) {
            return false;
        }
        uw uwVar = (uw) obj;
        return y45.e(this.a, uwVar.a) && y45.e(this.b, uwVar.b) && y45.e(this.c, uwVar.c);
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.c;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        return "DebugPanelAlert(title=" + this.a + ", message=" + this.b + ", type=" + this.c + ")";
    }

    public uw(int i) {
        this(null, null, null);
    }

    public static final void a(uw uwVar, defpackage.id1 id1Var, PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor) {
        if (id1Var.r(pluginGeneratedSerialDescriptor, 0) || uwVar.a != null) {
            id1Var.h(pluginGeneratedSerialDescriptor, 0, c0a.a, uwVar.a);
        }
        if (id1Var.r(pluginGeneratedSerialDescriptor, 1) || uwVar.b != null) {
            id1Var.h(pluginGeneratedSerialDescriptor, 1, c0a.a, uwVar.b);
        }
        if (!id1Var.r(pluginGeneratedSerialDescriptor, 2) && uwVar.c == null) {
            return;
        }
        id1Var.h(pluginGeneratedSerialDescriptor, 2, c0a.a, uwVar.c);
    }

    public uw(int i, String str, String str2, String str3) {
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
    }

    public uw(String str, String str2, String str3) {
        this.a = str;
        this.b = str2;
        this.c = str3;
    }
}
