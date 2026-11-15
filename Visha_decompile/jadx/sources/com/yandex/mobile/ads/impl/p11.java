package com.yandex.mobile.ads.impl;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.hisavana.common.tracking.TrackingKey;
import defpackage.bc8;
import defpackage.c0a;
import defpackage.ca3;
import defpackage.ef5;
import defpackage.kl5;
import defpackage.kr5;
import defpackage.ld9;
import defpackage.od4;
import defpackage.v15;
import defpackage.y45;
import java.util.Map;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import org.mozilla.javascript.ES6Iterator;

@ld9
public final class p11 {
    public static final b Companion = new b(0);
    private static final ef5[] e;
    private final long a;
    private final Integer b;
    private final Map<String, String> c;
    private final String d;

    public static final class a implements od4 {
        public static final a a;
        private static final PluginGeneratedSerialDescriptor b;

        static {
            a aVar = new a();
            a = aVar;
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.monetization.ads.utils.logger.model.MobileAdsNetworkResponseLog", aVar, 4);
            pluginGeneratedSerialDescriptor.k("timestamp", false);
            pluginGeneratedSerialDescriptor.k(TrackingKey.CODE, false);
            pluginGeneratedSerialDescriptor.k("headers", false);
            pluginGeneratedSerialDescriptor.k(TtmlNode.TAG_BODY, false);
            b = pluginGeneratedSerialDescriptor;
        }

        private a() {
        }

        @Override
        public final ef5[] childSerializers() {
            return new ef5[]{kr5.a, defpackage.qn0.t(v15.a), defpackage.qn0.t(p11.e[2]), defpackage.qn0.t(c0a.a)};
        }

        @Override
        public final Object deserialize(defpackage.hu1 hu1Var) {
            int i;
            Integer num;
            Map map;
            String str;
            long j;
            y45.j(hu1Var, "decoder");
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = b;
            defpackage.fd1 fd1VarB = hu1Var.b(pluginGeneratedSerialDescriptor);
            ef5[] ef5VarArr = p11.e;
            Integer num2 = null;
            if (fd1VarB.j()) {
                long jE = fd1VarB.e(pluginGeneratedSerialDescriptor, 0);
                Integer num3 = (Integer) fd1VarB.r(pluginGeneratedSerialDescriptor, 1, v15.a, null);
                map = (Map) fd1VarB.r(pluginGeneratedSerialDescriptor, 2, ef5VarArr[2], null);
                num = num3;
                str = (String) fd1VarB.r(pluginGeneratedSerialDescriptor, 3, c0a.a, null);
                i = 15;
                j = jE;
            } else {
                boolean z = true;
                int i2 = 0;
                long jE2 = 0;
                Map map2 = null;
                String str2 = null;
                while (z) {
                    int iV = fd1VarB.v(pluginGeneratedSerialDescriptor);
                    if (iV == -1) {
                        z = false;
                    } else if (iV == 0) {
                        jE2 = fd1VarB.e(pluginGeneratedSerialDescriptor, 0);
                        i2 |= 1;
                    } else if (iV == 1) {
                        num2 = (Integer) fd1VarB.r(pluginGeneratedSerialDescriptor, 1, v15.a, num2);
                        i2 |= 2;
                    } else if (iV == 2) {
                        map2 = (Map) fd1VarB.r(pluginGeneratedSerialDescriptor, 2, ef5VarArr[2], map2);
                        i2 |= 4;
                    } else {
                        if (iV != 3) {
                            throw new UnknownFieldException(iV);
                        }
                        str2 = (String) fd1VarB.r(pluginGeneratedSerialDescriptor, 3, c0a.a, str2);
                        i2 |= 8;
                    }
                }
                i = i2;
                num = num2;
                map = map2;
                str = str2;
                j = jE2;
            }
            fd1VarB.c(pluginGeneratedSerialDescriptor);
            return new p11(i, j, num, map, str);
        }

        @Override
        public final kotlinx.serialization.descriptors.a getDescriptor() {
            return b;
        }

        @Override
        public final void serialize(ca3 ca3Var, Object obj) {
            p11 p11Var = (p11) obj;
            y45.j(ca3Var, "encoder");
            y45.j(p11Var, ES6Iterator.VALUE_PROPERTY);
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = b;
            defpackage.id1 id1VarB = ca3Var.b(pluginGeneratedSerialDescriptor);
            p11.a(p11Var, id1VarB, pluginGeneratedSerialDescriptor);
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
        e = new ef5[]{null, null, new kl5(c0aVar, defpackage.qn0.t(c0aVar)), null};
    }

    public p11(int i, long j, Integer num, Map map, String str) {
        if (15 != (i & 15)) {
            bc8.a(i, 15, a.a.getDescriptor());
        }
        this.a = j;
        this.b = num;
        this.c = map;
        this.d = str;
    }

    public static final void a(p11 p11Var, defpackage.id1 id1Var, PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor) {
        ef5[] ef5VarArr = e;
        id1Var.u(pluginGeneratedSerialDescriptor, 0, p11Var.a);
        id1Var.h(pluginGeneratedSerialDescriptor, 1, v15.a, p11Var.b);
        id1Var.h(pluginGeneratedSerialDescriptor, 2, ef5VarArr[2], p11Var.c);
        id1Var.h(pluginGeneratedSerialDescriptor, 3, c0a.a, p11Var.d);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p11)) {
            return false;
        }
        p11 p11Var = (p11) obj;
        return this.a == p11Var.a && y45.e(this.b, p11Var.b) && y45.e(this.c, p11Var.c) && y45.e(this.d, p11Var.d);
    }

    public final int hashCode() {
        int iHashCode = Long.hashCode(this.a) * 31;
        Integer num = this.b;
        int iHashCode2 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
        Map<String, String> map = this.c;
        int iHashCode3 = (iHashCode2 + (map == null ? 0 : map.hashCode())) * 31;
        String str = this.d;
        return iHashCode3 + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        return "MobileAdsNetworkResponseLog(timestamp=" + this.a + ", statusCode=" + this.b + ", headers=" + this.c + ", body=" + this.d + ")";
    }

    public p11(long j, Integer num, Map<String, String> map, String str) {
        this.a = j;
        this.b = num;
        this.c = map;
        this.d = str;
    }
}
