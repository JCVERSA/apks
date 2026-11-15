package com.yandex.mobile.ads.impl;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.y45;

public final class ur1 implements Parcelable {
    public static final Parcelable.Creator<ur1> CREATOR = new b();
    private final boolean b;
    private final hp c;
    private final rx1 d;

    public static final class a {
        private boolean a;
        private hp b;
        private rx1 c;

        public final a a(hp hpVar) {
            this.b = hpVar;
            return this;
        }

        public final a a(rx1 rx1Var) {
            this.c = rx1Var;
            return this;
        }

        public final a a(boolean z) {
            this.a = z;
            return this;
        }

        public final ur1 a() {
            return new ur1(this.a, this.b, this.c);
        }
    }

    public static final class b implements Parcelable.Creator<ur1> {
        @Override
        public final ur1 createFromParcel(Parcel parcel) {
            y45.j(parcel, "parcel");
            return new ur1(parcel.readInt() != 0, parcel.readInt() == 0 ? null : hp.CREATOR.createFromParcel(parcel), parcel.readInt() != 0 ? rx1.CREATOR.createFromParcel(parcel) : null);
        }

        @Override
        public final ur1[] newArray(int i) {
            return new ur1[i];
        }
    }

    public ur1(boolean z, hp hpVar, rx1 rx1Var) {
        this.b = z;
        this.c = hpVar;
        this.d = rx1Var;
    }

    public final hp c() {
        return this.c;
    }

    public final rx1 d() {
        return this.d;
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public final boolean e() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ur1)) {
            return false;
        }
        ur1 ur1Var = (ur1) obj;
        return this.b == ur1Var.b && y45.e(this.c, ur1Var.c) && y45.e(this.d, ur1Var.d);
    }

    public final int hashCode() {
        int iHashCode = Boolean.hashCode(this.b) * 31;
        hp hpVar = this.c;
        int iHashCode2 = (iHashCode + (hpVar == null ? 0 : hpVar.hashCode())) * 31;
        rx1 rx1Var = this.d;
        return iHashCode2 + (rx1Var != null ? rx1Var.hashCode() : 0);
    }

    public final String toString() {
        return "RewardData(serverSideRewardType=" + this.b + ", clientSideReward=" + this.c + ", serverSideReward=" + this.d + ")";
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        y45.j(parcel, "out");
        parcel.writeInt(this.b ? 1 : 0);
        hp hpVar = this.c;
        if (hpVar == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            hpVar.writeToParcel(parcel, i);
        }
        rx1 rx1Var = this.d;
        if (rx1Var == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            rx1Var.writeToParcel(parcel, i);
        }
    }
}
