package com.transsion.hubsdk.api.app;

import android.os.Parcel;
import android.os.Parcelable;

public class TranNotificationRanking implements Parcelable {
    public static final Parcelable.Creator<TranNotificationRanking> CREATOR = new Parcelable.Creator<TranNotificationRanking>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public TranNotificationRanking createFromParcel(Parcel parcel) {
            return new TranNotificationRanking(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public TranNotificationRanking[] newArray(int i) {
            return new TranNotificationRanking[i];
        }
    };
    private boolean mIsTranForceAppGroup;
    private String mPackageName;
    private int mUid;

    public TranNotificationRanking(String str, int i, boolean z) {
        this.mPackageName = str;
        this.mUid = i;
        this.mIsTranForceAppGroup = z;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public String getPackageName() {
        return this.mPackageName;
    }

    public int getUid() {
        return this.mUid;
    }

    public boolean isForceAppGroup() {
        return this.mIsTranForceAppGroup;
    }

    public String toString() {
        return "TranNotificationRanking{mPackageName='" + this.mPackageName + "', mUid=" + this.mUid + ", mIsTranForceAppGroup=" + this.mIsTranForceAppGroup + '}';
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mPackageName);
        parcel.writeInt(this.mUid);
        parcel.writeByte(this.mIsTranForceAppGroup ? (byte) 1 : (byte) 0);
    }

    public TranNotificationRanking(Parcel parcel) {
        this.mPackageName = parcel.readString();
        this.mUid = parcel.readInt();
        this.mIsTranForceAppGroup = parcel.readByte() != 0;
    }
}
