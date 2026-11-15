package com.yandex.mobile.ads.impl;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.ca3;
import defpackage.ef5;
import defpackage.kr5;
import defpackage.ld9;
import defpackage.od4;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import org.mozilla.javascript.ES6Iterator;

@ld9
public final class h01 implements Parcelable {
    private final long b;
    private final List<e01> c;
    public static final b Companion = new b(0);
    public static final Parcelable.Creator<h01> CREATOR = new c();
    private static final ef5[] d = {null, new defpackage.zg(e01.a.a)};

    public static final class a implements od4 {
        public static final a a;
        private static final PluginGeneratedSerialDescriptor b;

        static {
            a aVar = new a();
            a = aVar;
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.monetization.ads.base.model.mediation.prefetch.config.MediationPrefetchSettings", aVar, 2);
            pluginGeneratedSerialDescriptor.k("load_timeout_millis", true);
            pluginGeneratedSerialDescriptor.k("mediation_prefetch_ad_units", true);
            b = pluginGeneratedSerialDescriptor;
        }

        private a() {
        }

        @Override
        public final ef5[] childSerializers() {
            return new ef5[]{kr5.a, h01.d[1]};
        }

        @Override
        public final Object deserialize(defpackage.hu1 hu1Var) {
            long jE;
            int i;
            List list;
            y45.j(hu1Var, "decoder");
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = b;
            defpackage.fd1 fd1VarB = hu1Var.b(pluginGeneratedSerialDescriptor);
            ef5[] ef5VarArr = h01.d;
            List list2 = null;
            if (fd1VarB.j()) {
                jE = fd1VarB.e(pluginGeneratedSerialDescriptor, 0);
                list = (List) fd1VarB.A(pluginGeneratedSerialDescriptor, 1, ef5VarArr[1], null);
                i = 3;
            } else {
                jE = 0;
                boolean z = true;
                i = 0;
                while (z) {
                    int iV = fd1VarB.v(pluginGeneratedSerialDescriptor);
                    if (iV == -1) {
                        z = false;
                    } else if (iV == 0) {
                        jE = fd1VarB.e(pluginGeneratedSerialDescriptor, 0);
                        i |= 1;
                    } else {
                        if (iV != 1) {
                            throw new UnknownFieldException(iV);
                        }
                        list2 = (List) fd1VarB.A(pluginGeneratedSerialDescriptor, 1, ef5VarArr[1], list2);
                        i |= 2;
                    }
                }
                list = list2;
            }
            fd1VarB.c(pluginGeneratedSerialDescriptor);
            return new h01(i, jE, list);
        }

        @Override
        public final kotlinx.serialization.descriptors.a getDescriptor() {
            return b;
        }

        @Override
        public final void serialize(ca3 ca3Var, Object obj) {
            h01 h01Var = (h01) obj;
            y45.j(ca3Var, "encoder");
            y45.j(h01Var, ES6Iterator.VALUE_PROPERTY);
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = b;
            defpackage.id1 id1VarB = ca3Var.b(pluginGeneratedSerialDescriptor);
            h01.a(h01Var, id1VarB, pluginGeneratedSerialDescriptor);
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

    public static final class c implements Parcelable.Creator<h01> {
        @Override
        public final h01 createFromParcel(Parcel parcel) {
            y45.j(parcel, "parcel");
            long j = parcel.readLong();
            int i = parcel.readInt();
            ArrayList arrayList = new ArrayList(i);
            for (int i2 = 0; i2 != i; i2++) {
                arrayList.add(e01.CREATOR.createFromParcel(parcel));
            }
            return new h01(j, arrayList);
        }

        @Override
        public final h01[] newArray(int i) {
            return new h01[i];
        }
    }

    public h01() {
        this(0);
    }

    public static final void a(h01 h01Var, defpackage.id1 id1Var, PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor) {
        ef5[] ef5VarArr = d;
        if (id1Var.r(pluginGeneratedSerialDescriptor, 0) || h01Var.b != 30000) {
            id1Var.u(pluginGeneratedSerialDescriptor, 0, h01Var.b);
        }
        if (!id1Var.r(pluginGeneratedSerialDescriptor, 1) && y45.e(h01Var.c, defpackage.y71.k())) {
            return;
        }
        id1Var.q(pluginGeneratedSerialDescriptor, 1, ef5VarArr[1], h01Var.c);
    }

    public final long d() {
        return this.b;
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public final List<e01> e() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h01)) {
            return false;
        }
        h01 h01Var = (h01) obj;
        return this.b == h01Var.b && y45.e(this.c, h01Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + (Long.hashCode(this.b) * 31);
    }

    public final String toString() {
        return "MediationPrefetchSettings(loadTimeoutMillis=" + this.b + ", mediationPrefetchAdUnits=" + this.c + ")";
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        y45.j(parcel, "out");
        parcel.writeLong(this.b);
        List<e01> list = this.c;
        parcel.writeInt(list.size());
        Iterator<e01> it = list.iterator();
        while (it.hasNext()) {
            it.next().writeToParcel(parcel, i);
        }
    }

    public h01(int i) {
        this(30000L, defpackage.y71.k());
    }

    public h01(int i, long j, List list) {
        this.b = (i & 1) == 0 ? 30000L : j;
        if ((i & 2) == 0) {
            this.c = defpackage.y71.k();
        } else {
            this.c = list;
        }
    }

    public h01(long j, List<e01> list) {
        y45.j(list, "mediationPrefetchAdUnits");
        this.b = j;
        this.c = list;
    }
}
