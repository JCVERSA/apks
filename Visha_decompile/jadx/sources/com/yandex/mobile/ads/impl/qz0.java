package com.yandex.mobile.ads.impl;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.bc8;
import defpackage.c0a;
import defpackage.ca3;
import defpackage.ef5;
import defpackage.ld9;
import defpackage.od4;
import defpackage.y45;
import java.util.ArrayList;
import java.util.List;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import org.mozilla.javascript.ES6Iterator;

@ld9
public final class qz0 {
    public static final b Companion = new b(0);
    private static final ef5[] e = {null, null, null, new defpackage.zg(c.a.a)};
    private final String a;
    private final String b;
    private final String c;
    private final List<c> d;

    public static final class a implements od4 {
        public static final a a;
        private static final PluginGeneratedSerialDescriptor b;

        static {
            a aVar = new a();
            a = aVar;
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.monetization.ads.core.initializer.validation.adapters.MediationNetworkData", aVar, 4);
            pluginGeneratedSerialDescriptor.k("name", false);
            pluginGeneratedSerialDescriptor.k(TtmlNode.ATTR_ID, false);
            pluginGeneratedSerialDescriptor.k("version", false);
            pluginGeneratedSerialDescriptor.k("adapters", false);
            b = pluginGeneratedSerialDescriptor;
        }

        private a() {
        }

        @Override
        public final ef5[] childSerializers() {
            ef5[] ef5VarArr = qz0.e;
            c0a c0aVar = c0a.a;
            return new ef5[]{c0aVar, c0aVar, defpackage.qn0.t(c0aVar), ef5VarArr[3]};
        }

        @Override
        public final Object deserialize(defpackage.hu1 hu1Var) {
            int i;
            String str;
            String str2;
            String str3;
            List list;
            y45.j(hu1Var, "decoder");
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = b;
            defpackage.fd1 fd1VarB = hu1Var.b(pluginGeneratedSerialDescriptor);
            ef5[] ef5VarArr = qz0.e;
            String strI = null;
            if (fd1VarB.j()) {
                String strI2 = fd1VarB.i(pluginGeneratedSerialDescriptor, 0);
                String strI3 = fd1VarB.i(pluginGeneratedSerialDescriptor, 1);
                String str4 = (String) fd1VarB.r(pluginGeneratedSerialDescriptor, 2, c0a.a, null);
                list = (List) fd1VarB.A(pluginGeneratedSerialDescriptor, 3, ef5VarArr[3], null);
                str = strI2;
                str3 = str4;
                i = 15;
                str2 = strI3;
            } else {
                boolean z = true;
                int i2 = 0;
                String strI4 = null;
                String str5 = null;
                List list2 = null;
                while (z) {
                    int iV = fd1VarB.v(pluginGeneratedSerialDescriptor);
                    if (iV == -1) {
                        z = false;
                    } else if (iV == 0) {
                        strI = fd1VarB.i(pluginGeneratedSerialDescriptor, 0);
                        i2 |= 1;
                    } else if (iV == 1) {
                        strI4 = fd1VarB.i(pluginGeneratedSerialDescriptor, 1);
                        i2 |= 2;
                    } else if (iV == 2) {
                        str5 = (String) fd1VarB.r(pluginGeneratedSerialDescriptor, 2, c0a.a, str5);
                        i2 |= 4;
                    } else {
                        if (iV != 3) {
                            throw new UnknownFieldException(iV);
                        }
                        list2 = (List) fd1VarB.A(pluginGeneratedSerialDescriptor, 3, ef5VarArr[3], list2);
                        i2 |= 8;
                    }
                }
                i = i2;
                str = strI;
                str2 = strI4;
                str3 = str5;
                list = list2;
            }
            fd1VarB.c(pluginGeneratedSerialDescriptor);
            return new qz0(i, str, str2, str3, list);
        }

        @Override
        public final kotlinx.serialization.descriptors.a getDescriptor() {
            return b;
        }

        @Override
        public final void serialize(ca3 ca3Var, Object obj) {
            qz0 qz0Var = (qz0) obj;
            y45.j(ca3Var, "encoder");
            y45.j(qz0Var, ES6Iterator.VALUE_PROPERTY);
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = b;
            defpackage.id1 id1VarB = ca3Var.b(pluginGeneratedSerialDescriptor);
            qz0.a(qz0Var, id1VarB, pluginGeneratedSerialDescriptor);
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

    @ld9
    public static final class c {
        public static final b Companion = new b(0);
        private final String a;
        private final String b;
        private final boolean c;

        public static final class a implements od4 {
            public static final a a;
            private static final PluginGeneratedSerialDescriptor b;

            static {
                a aVar = new a();
                a = aVar;
                PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.monetization.ads.core.initializer.validation.adapters.MediationNetworkData.MediationAdapterData", aVar, 3);
                pluginGeneratedSerialDescriptor.k("format", false);
                pluginGeneratedSerialDescriptor.k("version", false);
                pluginGeneratedSerialDescriptor.k("isIntegrated", false);
                b = pluginGeneratedSerialDescriptor;
            }

            private a() {
            }

            @Override
            public final ef5[] childSerializers() {
                c0a c0aVar = c0a.a;
                return new ef5[]{c0aVar, defpackage.qn0.t(c0aVar), defpackage.bi0.a};
            }

            @Override
            public final Object deserialize(defpackage.hu1 hu1Var) {
                boolean zD;
                int i;
                String strI;
                String str;
                y45.j(hu1Var, "decoder");
                PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = b;
                defpackage.fd1 fd1VarB = hu1Var.b(pluginGeneratedSerialDescriptor);
                if (fd1VarB.j()) {
                    strI = fd1VarB.i(pluginGeneratedSerialDescriptor, 0);
                    str = (String) fd1VarB.r(pluginGeneratedSerialDescriptor, 1, c0a.a, null);
                    zD = fd1VarB.D(pluginGeneratedSerialDescriptor, 2);
                    i = 7;
                } else {
                    boolean z = true;
                    boolean zD2 = false;
                    String strI2 = null;
                    String str2 = null;
                    int i2 = 0;
                    while (z) {
                        int iV = fd1VarB.v(pluginGeneratedSerialDescriptor);
                        if (iV == -1) {
                            z = false;
                        } else if (iV == 0) {
                            strI2 = fd1VarB.i(pluginGeneratedSerialDescriptor, 0);
                            i2 |= 1;
                        } else if (iV == 1) {
                            str2 = (String) fd1VarB.r(pluginGeneratedSerialDescriptor, 1, c0a.a, str2);
                            i2 |= 2;
                        } else {
                            if (iV != 2) {
                                throw new UnknownFieldException(iV);
                            }
                            zD2 = fd1VarB.D(pluginGeneratedSerialDescriptor, 2);
                            i2 |= 4;
                        }
                    }
                    zD = zD2;
                    i = i2;
                    strI = strI2;
                    str = str2;
                }
                fd1VarB.c(pluginGeneratedSerialDescriptor);
                return new c(i, strI, str, zD);
            }

            @Override
            public final kotlinx.serialization.descriptors.a getDescriptor() {
                return b;
            }

            @Override
            public final void serialize(ca3 ca3Var, Object obj) {
                c cVar = (c) obj;
                y45.j(ca3Var, "encoder");
                y45.j(cVar, ES6Iterator.VALUE_PROPERTY);
                PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = b;
                defpackage.id1 id1VarB = ca3Var.b(pluginGeneratedSerialDescriptor);
                c.a(cVar, id1VarB, pluginGeneratedSerialDescriptor);
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

        public c(int i, String str, String str2, boolean z) {
            if (7 != (i & 7)) {
                bc8.a(i, 7, a.a.getDescriptor());
            }
            this.a = str;
            this.b = str2;
            this.c = z;
        }

        public final String a() {
            return this.a;
        }

        public final String b() {
            return this.b;
        }

        public final boolean c() {
            return this.c;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return y45.e(this.a, cVar.a) && y45.e(this.b, cVar.b) && this.c == cVar.c;
        }

        public final int hashCode() {
            int iHashCode = this.a.hashCode() * 31;
            String str = this.b;
            return Boolean.hashCode(this.c) + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31);
        }

        public final String toString() {
            return "MediationAdapterData(format=" + this.a + ", version=" + this.b + ", isIntegrated=" + this.c + ")";
        }

        public c(String str, String str2, boolean z) {
            y45.j(str, "format");
            this.a = str;
            this.b = str2;
            this.c = z;
        }

        public static final void a(c cVar, defpackage.id1 id1Var, PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor) {
            id1Var.p(pluginGeneratedSerialDescriptor, 0, cVar.a);
            id1Var.h(pluginGeneratedSerialDescriptor, 1, c0a.a, cVar.b);
            id1Var.o(pluginGeneratedSerialDescriptor, 2, cVar.c);
        }
    }

    public qz0(int i, String str, String str2, String str3, List list) {
        if (15 != (i & 15)) {
            bc8.a(i, 15, a.a.getDescriptor());
        }
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = list;
    }

    public static final void a(qz0 qz0Var, defpackage.id1 id1Var, PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor) {
        ef5[] ef5VarArr = e;
        id1Var.p(pluginGeneratedSerialDescriptor, 0, qz0Var.a);
        id1Var.p(pluginGeneratedSerialDescriptor, 1, qz0Var.b);
        id1Var.h(pluginGeneratedSerialDescriptor, 2, c0a.a, qz0Var.c);
        id1Var.q(pluginGeneratedSerialDescriptor, 3, ef5VarArr[3], qz0Var.d);
    }

    public final List<c> b() {
        return this.d;
    }

    public final String c() {
        return this.b;
    }

    public final String d() {
        return this.a;
    }

    public final String e() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof qz0)) {
            return false;
        }
        qz0 qz0Var = (qz0) obj;
        return y45.e(this.a, qz0Var.a) && y45.e(this.b, qz0Var.b) && y45.e(this.c, qz0Var.c) && y45.e(this.d, qz0Var.d);
    }

    public final int hashCode() {
        int iA = v3.a(this.b, this.a.hashCode() * 31, 31);
        String str = this.c;
        return this.d.hashCode() + ((iA + (str == null ? 0 : str.hashCode())) * 31);
    }

    public final String toString() {
        return "MediationNetworkData(name=" + this.a + ", id=" + this.b + ", version=" + this.c + ", adapters=" + this.d + ")";
    }

    public qz0(String str, String str2, String str3, ArrayList arrayList) {
        y45.j(str, "name");
        y45.j(str2, TtmlNode.ATTR_ID);
        y45.j(arrayList, "adapters");
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = arrayList;
    }
}
