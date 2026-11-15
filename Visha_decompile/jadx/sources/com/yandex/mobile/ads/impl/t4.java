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
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import org.mozilla.javascript.ES6Iterator;

@ld9
public final class t4 implements Parcelable {
    private final String b;
    public static final b Companion = new b(0);
    public static final Parcelable.Creator<t4> CREATOR = new c();

    public static final class a implements od4 {
        public static final a a;
        private static final PluginGeneratedSerialDescriptor b;

        static {
            a aVar = new a();
            a = aVar;
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.monetization.ads.common.AdImpressionData", aVar, 1);
            pluginGeneratedSerialDescriptor.k("rawData", false);
            b = pluginGeneratedSerialDescriptor;
        }

        private a() {
        }

        @Override
        public final ef5[] childSerializers() {
            return new ef5[]{c0a.a};
        }

        @Override
        public final Object deserialize(defpackage.hu1 hu1Var) {
            String strI;
            y45.j(hu1Var, "decoder");
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = b;
            defpackage.fd1 fd1VarB = hu1Var.b(pluginGeneratedSerialDescriptor);
            int i = 1;
            if (fd1VarB.j()) {
                strI = fd1VarB.i(pluginGeneratedSerialDescriptor, 0);
            } else {
                strI = null;
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
                        strI = fd1VarB.i(pluginGeneratedSerialDescriptor, 0);
                        i2 = 1;
                    }
                }
                i = i2;
            }
            fd1VarB.c(pluginGeneratedSerialDescriptor);
            return new t4(i, strI);
        }

        @Override
        public final kotlinx.serialization.descriptors.a getDescriptor() {
            return b;
        }

        @Override
        public final void serialize(ca3 ca3Var, Object obj) {
            t4 t4Var = (t4) obj;
            y45.j(ca3Var, "encoder");
            y45.j(t4Var, ES6Iterator.VALUE_PROPERTY);
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = b;
            defpackage.id1 id1VarB = ca3Var.b(pluginGeneratedSerialDescriptor);
            t4.a(t4Var, id1VarB, pluginGeneratedSerialDescriptor);
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

    public static final class c implements Parcelable.Creator<t4> {
        @Override
        public final t4 createFromParcel(Parcel parcel) {
            y45.j(parcel, "parcel");
            return new t4(parcel.readString());
        }

        @Override
        public final t4[] newArray(int i) {
            return new t4[i];
        }
    }

    public t4(int i, String str) {
        if (1 != (i & 1)) {
            bc8.a(i, 1, a.a.getDescriptor());
        }
        this.b = str;
    }

    public static final void a(t4 t4Var, defpackage.id1 id1Var, PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor) {
        id1Var.p(pluginGeneratedSerialDescriptor, 0, t4Var.b);
    }

    public final String c() {
        return this.b;
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof t4) && y45.e(this.b, ((t4) obj).b);
    }

    public final int hashCode() {
        return this.b.hashCode();
    }

    public final String toString() {
        return "AdImpressionData(rawData=" + this.b + ")";
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        y45.j(parcel, "out");
        parcel.writeString(this.b);
    }

    public t4(String str) {
        y45.j(str, "rawData");
        this.b = str;
    }
}
