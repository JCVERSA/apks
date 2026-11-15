package com.yandex.mobile.ads.impl;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.bc8;
import defpackage.c0a;
import defpackage.ca3;
import defpackage.ef5;
import defpackage.kl5;
import defpackage.kr5;
import defpackage.ld9;
import defpackage.od4;
import defpackage.y45;
import java.util.Map;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import org.mozilla.javascript.ES6Iterator;

@ld9
public final class o11 {
    public static final b Companion = new b(0);
    private static final ef5[] f;
    private final long a;
    private final String b;
    private final String c;
    private final Map<String, String> d;
    private final String e;

    public static final class a implements od4 {
        public static final a a;
        private static final PluginGeneratedSerialDescriptor b;

        static {
            a aVar = new a();
            a = aVar;
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.monetization.ads.utils.logger.model.MobileAdsNetworkRequestLog", aVar, 5);
            pluginGeneratedSerialDescriptor.k("timestamp", false);
            pluginGeneratedSerialDescriptor.k("method", false);
            pluginGeneratedSerialDescriptor.k("url", false);
            pluginGeneratedSerialDescriptor.k("headers", false);
            pluginGeneratedSerialDescriptor.k(TtmlNode.TAG_BODY, false);
            b = pluginGeneratedSerialDescriptor;
        }

        private a() {
        }

        @Override
        public final ef5[] childSerializers() {
            ef5[] ef5VarArr = o11.f;
            c0a c0aVar = c0a.a;
            return new ef5[]{kr5.a, c0aVar, c0aVar, defpackage.qn0.t(ef5VarArr[3]), defpackage.qn0.t(c0aVar)};
        }

        @Override
        public final Object deserialize(defpackage.hu1 hu1Var) {
            int i;
            String str;
            String str2;
            Map map;
            String str3;
            long j;
            y45.j(hu1Var, "decoder");
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = b;
            defpackage.fd1 fd1VarB = hu1Var.b(pluginGeneratedSerialDescriptor);
            ef5[] ef5VarArr = o11.f;
            String strI = null;
            if (fd1VarB.j()) {
                long jE = fd1VarB.e(pluginGeneratedSerialDescriptor, 0);
                String strI2 = fd1VarB.i(pluginGeneratedSerialDescriptor, 1);
                String strI3 = fd1VarB.i(pluginGeneratedSerialDescriptor, 2);
                map = (Map) fd1VarB.r(pluginGeneratedSerialDescriptor, 3, ef5VarArr[3], null);
                str = strI2;
                str3 = (String) fd1VarB.r(pluginGeneratedSerialDescriptor, 4, c0a.a, null);
                str2 = strI3;
                i = 31;
                j = jE;
            } else {
                boolean z = true;
                int i2 = 0;
                String str4 = null;
                long jE2 = 0;
                String strI4 = null;
                Map map2 = null;
                while (z) {
                    int iV = fd1VarB.v(pluginGeneratedSerialDescriptor);
                    if (iV == -1) {
                        z = false;
                    } else if (iV == 0) {
                        jE2 = fd1VarB.e(pluginGeneratedSerialDescriptor, 0);
                        i2 |= 1;
                    } else if (iV == 1) {
                        strI = fd1VarB.i(pluginGeneratedSerialDescriptor, 1);
                        i2 |= 2;
                    } else if (iV == 2) {
                        strI4 = fd1VarB.i(pluginGeneratedSerialDescriptor, 2);
                        i2 |= 4;
                    } else if (iV == 3) {
                        map2 = (Map) fd1VarB.r(pluginGeneratedSerialDescriptor, 3, ef5VarArr[3], map2);
                        i2 |= 8;
                    } else {
                        if (iV != 4) {
                            throw new UnknownFieldException(iV);
                        }
                        str4 = (String) fd1VarB.r(pluginGeneratedSerialDescriptor, 4, c0a.a, str4);
                        i2 |= 16;
                    }
                }
                i = i2;
                str = strI;
                str2 = strI4;
                map = map2;
                str3 = str4;
                j = jE2;
            }
            fd1VarB.c(pluginGeneratedSerialDescriptor);
            return new o11(i, j, str, str2, map, str3);
        }

        @Override
        public final kotlinx.serialization.descriptors.a getDescriptor() {
            return b;
        }

        @Override
        public final void serialize(ca3 ca3Var, Object obj) {
            o11 o11Var = (o11) obj;
            y45.j(ca3Var, "encoder");
            y45.j(o11Var, ES6Iterator.VALUE_PROPERTY);
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = b;
            defpackage.id1 id1VarB = ca3Var.b(pluginGeneratedSerialDescriptor);
            o11.a(o11Var, id1VarB, pluginGeneratedSerialDescriptor);
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

    static {
        c0a c0aVar = c0a.a;
        f = new ef5[]{null, null, null, new kl5(c0aVar, defpackage.qn0.t(c0aVar)), null};
    }

    public o11(int i, long j, String str, String str2, Map map, String str3) {
        if (31 != (i & 31)) {
            bc8.a(i, 31, a.a.getDescriptor());
        }
        this.a = j;
        this.b = str;
        this.c = str2;
        this.d = map;
        this.e = str3;
    }

    public static final void a(o11 o11Var, defpackage.id1 id1Var, PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor) {
        ef5[] ef5VarArr = f;
        id1Var.u(pluginGeneratedSerialDescriptor, 0, o11Var.a);
        id1Var.p(pluginGeneratedSerialDescriptor, 1, o11Var.b);
        id1Var.p(pluginGeneratedSerialDescriptor, 2, o11Var.c);
        id1Var.h(pluginGeneratedSerialDescriptor, 3, ef5VarArr[3], o11Var.d);
        id1Var.h(pluginGeneratedSerialDescriptor, 4, c0a.a, o11Var.e);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o11)) {
            return false;
        }
        o11 o11Var = (o11) obj;
        return this.a == o11Var.a && y45.e(this.b, o11Var.b) && y45.e(this.c, o11Var.c) && y45.e(this.d, o11Var.d) && y45.e(this.e, o11Var.e);
    }

    public final int hashCode() {
        int iA = v3.a(this.c, v3.a(this.b, Long.hashCode(this.a) * 31, 31), 31);
        Map<String, String> map = this.d;
        int iHashCode = (iA + (map == null ? 0 : map.hashCode())) * 31;
        String str = this.e;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        return "MobileAdsNetworkRequestLog(timestamp=" + this.a + ", method=" + this.b + ", url=" + this.c + ", headers=" + this.d + ", body=" + this.e + ")";
    }

    public o11(long j, String str, String str2, Map<String, String> map, String str3) {
        y45.j(str, "method");
        y45.j(str2, "url");
        this.a = j;
        this.b = str;
        this.c = str2;
        this.d = map;
        this.e = str3;
    }
}
