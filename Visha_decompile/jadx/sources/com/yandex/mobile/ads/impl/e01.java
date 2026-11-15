package com.yandex.mobile.ads.impl;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.bc8;
import defpackage.c0a;
import defpackage.ca3;
import defpackage.ef5;
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
public final class e01 implements Parcelable {
    private final String b;
    private final List<g01> c;
    public static final b Companion = new b(0);
    public static final Parcelable.Creator<e01> CREATOR = new c();
    private static final ef5[] d = {null, new defpackage.zg(g01.a.a)};

    public static final class a implements od4 {
        public static final a a;
        private static final PluginGeneratedSerialDescriptor b;

        static {
            a aVar = new a();
            a = aVar;
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.monetization.ads.base.model.mediation.prefetch.config.MediationPrefetchAdUnit", aVar, 2);
            pluginGeneratedSerialDescriptor.k("ad_unit_id", false);
            pluginGeneratedSerialDescriptor.k("networks", false);
            b = pluginGeneratedSerialDescriptor;
        }

        private a() {
        }

        @Override
        public final ef5[] childSerializers() {
            return new ef5[]{c0a.a, e01.d[1]};
        }

        @Override
        public final Object deserialize(defpackage.hu1 hu1Var) {
            int i;
            String strI;
            List list;
            y45.j(hu1Var, "decoder");
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = b;
            defpackage.fd1 fd1VarB = hu1Var.b(pluginGeneratedSerialDescriptor);
            ef5[] ef5VarArr = e01.d;
            String strI2 = null;
            if (fd1VarB.j()) {
                strI = fd1VarB.i(pluginGeneratedSerialDescriptor, 0);
                list = (List) fd1VarB.A(pluginGeneratedSerialDescriptor, 1, ef5VarArr[1], null);
                i = 3;
            } else {
                boolean z = true;
                int i2 = 0;
                List list2 = null;
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
                        list2 = (List) fd1VarB.A(pluginGeneratedSerialDescriptor, 1, ef5VarArr[1], list2);
                        i2 |= 2;
                    }
                }
                i = i2;
                strI = strI2;
                list = list2;
            }
            fd1VarB.c(pluginGeneratedSerialDescriptor);
            return new e01(i, strI, list);
        }

        @Override
        public final kotlinx.serialization.descriptors.a getDescriptor() {
            return b;
        }

        @Override
        public final void serialize(ca3 ca3Var, Object obj) {
            e01 e01Var = (e01) obj;
            y45.j(ca3Var, "encoder");
            y45.j(e01Var, ES6Iterator.VALUE_PROPERTY);
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = b;
            defpackage.id1 id1VarB = ca3Var.b(pluginGeneratedSerialDescriptor);
            e01.a(e01Var, id1VarB, pluginGeneratedSerialDescriptor);
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

    public static final class c implements Parcelable.Creator<e01> {
        @Override
        public final e01 createFromParcel(Parcel parcel) {
            y45.j(parcel, "parcel");
            String string = parcel.readString();
            int i = parcel.readInt();
            ArrayList arrayList = new ArrayList(i);
            for (int i2 = 0; i2 != i; i2++) {
                arrayList.add(g01.CREATOR.createFromParcel(parcel));
            }
            return new e01(string, arrayList);
        }

        @Override
        public final e01[] newArray(int i) {
            return new e01[i];
        }
    }

    public e01(int i, String str, List list) {
        if (3 != (i & 3)) {
            bc8.a(i, 3, a.a.getDescriptor());
        }
        this.b = str;
        this.c = list;
    }

    public static final void a(e01 e01Var, defpackage.id1 id1Var, PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor) {
        ef5[] ef5VarArr = d;
        id1Var.p(pluginGeneratedSerialDescriptor, 0, e01Var.b);
        id1Var.q(pluginGeneratedSerialDescriptor, 1, ef5VarArr[1], e01Var.c);
    }

    public final String d() {
        return this.b;
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public final List<g01> e() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e01)) {
            return false;
        }
        e01 e01Var = (e01) obj;
        return y45.e(this.b, e01Var.b) && y45.e(this.c, e01Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + (this.b.hashCode() * 31);
    }

    public final String toString() {
        return "MediationPrefetchAdUnit(adUnitId=" + this.b + ", networks=" + this.c + ")";
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        y45.j(parcel, "out");
        parcel.writeString(this.b);
        List<g01> list = this.c;
        parcel.writeInt(list.size());
        Iterator<g01> it = list.iterator();
        while (it.hasNext()) {
            it.next().writeToParcel(parcel, i);
        }
    }

    public e01(String str, ArrayList arrayList) {
        y45.j(str, "adUnitId");
        y45.j(arrayList, "networks");
        this.b = str;
        this.c = arrayList;
    }
}
