package com.yandex.mobile.ads.impl;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.bc8;
import defpackage.c0a;
import defpackage.ca3;
import defpackage.ef5;
import defpackage.kl5;
import defpackage.ld9;
import defpackage.od4;
import defpackage.y45;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import org.mozilla.javascript.ES6Iterator;

@ld9
public final class g01 implements Parcelable {
    private static final ef5[] d;
    private final String b;
    private final Map<String, String> c;
    public static final b Companion = new b(0);
    public static final Parcelable.Creator<g01> CREATOR = new c();

    public static final class a implements od4 {
        public static final a a;
        private static final PluginGeneratedSerialDescriptor b;

        static {
            a aVar = new a();
            a = aVar;
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.monetization.ads.base.model.mediation.prefetch.config.MediationPrefetchNetwork", aVar, 2);
            pluginGeneratedSerialDescriptor.k("adapter", false);
            pluginGeneratedSerialDescriptor.k("network_data", false);
            b = pluginGeneratedSerialDescriptor;
        }

        private a() {
        }

        @Override
        public final ef5[] childSerializers() {
            return new ef5[]{c0a.a, g01.d[1]};
        }

        @Override
        public final Object deserialize(defpackage.hu1 hu1Var) {
            int i;
            String strI;
            Map map;
            y45.j(hu1Var, "decoder");
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = b;
            defpackage.fd1 fd1VarB = hu1Var.b(pluginGeneratedSerialDescriptor);
            ef5[] ef5VarArr = g01.d;
            String strI2 = null;
            if (fd1VarB.j()) {
                strI = fd1VarB.i(pluginGeneratedSerialDescriptor, 0);
                map = (Map) fd1VarB.A(pluginGeneratedSerialDescriptor, 1, ef5VarArr[1], null);
                i = 3;
            } else {
                boolean z = true;
                int i2 = 0;
                Map map2 = null;
                while (z) {
                    int iV = fd1VarB.v(pluginGeneratedSerialDescriptor);
                    if (iV == -1) {
                        z = false;
                    } else if (iV == 0) {
                        strI2 = fd1VarB.i(pluginGeneratedSerialDescriptor, 0);
                        i2 |= 1;
                    } else {
                        if (iV != 1) {
                            throw new UnknownFieldException(iV);
                        }
                        map2 = (Map) fd1VarB.A(pluginGeneratedSerialDescriptor, 1, ef5VarArr[1], map2);
                        i2 |= 2;
                    }
                }
                i = i2;
                strI = strI2;
                map = map2;
            }
            fd1VarB.c(pluginGeneratedSerialDescriptor);
            return new g01(i, strI, map);
        }

        @Override
        public final kotlinx.serialization.descriptors.a getDescriptor() {
            return b;
        }

        @Override
        public final void serialize(ca3 ca3Var, Object obj) {
            g01 g01Var = (g01) obj;
            y45.j(ca3Var, "encoder");
            y45.j(g01Var, ES6Iterator.VALUE_PROPERTY);
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = b;
            defpackage.id1 id1VarB = ca3Var.b(pluginGeneratedSerialDescriptor);
            g01.a(g01Var, id1VarB, pluginGeneratedSerialDescriptor);
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

    public static final class c implements Parcelable.Creator<g01> {
        @Override
        public final g01 createFromParcel(Parcel parcel) {
            y45.j(parcel, "parcel");
            String string = parcel.readString();
            int i = parcel.readInt();
            LinkedHashMap linkedHashMap = new LinkedHashMap(i);
            for (int i2 = 0; i2 != i; i2++) {
                linkedHashMap.put(parcel.readString(), parcel.readString());
            }
            return new g01(string, linkedHashMap);
        }

        @Override
        public final g01[] newArray(int i) {
            return new g01[i];
        }
    }

    static {
        c0a c0aVar = c0a.a;
        d = new ef5[]{null, new kl5(c0aVar, defpackage.qn0.t(c0aVar))};
    }

    public g01(int i, String str, Map map) {
        if (3 != (i & 3)) {
            bc8.a(i, 3, a.a.getDescriptor());
        }
        this.b = str;
        this.c = map;
    }

    public static final void a(g01 g01Var, defpackage.id1 id1Var, PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor) {
        ef5[] ef5VarArr = d;
        id1Var.p(pluginGeneratedSerialDescriptor, 0, g01Var.b);
        id1Var.q(pluginGeneratedSerialDescriptor, 1, ef5VarArr[1], g01Var.c);
    }

    public final String d() {
        return this.b;
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public final Map<String, String> e() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g01)) {
            return false;
        }
        g01 g01Var = (g01) obj;
        return y45.e(this.b, g01Var.b) && y45.e(this.c, g01Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + (this.b.hashCode() * 31);
    }

    public final String toString() {
        return "MediationPrefetchNetwork(adapter=" + this.b + ", networkData=" + this.c + ")";
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        y45.j(parcel, "out");
        parcel.writeString(this.b);
        Map<String, String> map = this.c;
        parcel.writeInt(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            parcel.writeString(entry.getKey());
            parcel.writeString(entry.getValue());
        }
    }

    public g01(String str, LinkedHashMap linkedHashMap) {
        y45.j(str, "adapter");
        y45.j(linkedHashMap, "networkData");
        this.b = str;
        this.c = linkedHashMap;
    }
}
