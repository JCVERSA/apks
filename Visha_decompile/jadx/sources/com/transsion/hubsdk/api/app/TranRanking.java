package com.transsion.hubsdk.api.app;

import android.os.Parcel;
import android.os.Parcelable;

public class TranRanking implements Parcelable {
    public static final Parcelable.Creator<TranRanking> CREATOR = new Parcelable.Creator<TranRanking>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public TranRanking createFromParcel(Parcel parcel) {
            return new TranRanking(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public TranRanking[] newArray(int i) {
            return new TranRanking[i];
        }
    };
    private boolean mIsMute;
    private String mPackageName;
    private int mUid;

    public TranRanking(String str, int i, boolean z) {
        this.mPackageName = str;
        this.mUid = i;
        this.mIsMute = z;
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

    public boolean isMute() {
        return this.mIsMute;
    }

    public String toString() {
        return "TranRanking{mPackageName='" + this.mPackageName + "', mUid=" + this.mUid + ", mIsMute=" + this.mIsMute + '}';
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mPackageName);
        parcel.writeInt(this.mUid);
        parcel.writeByte(this.mIsMute ? (byte) 1 : (byte) 0);
    }

    public TranRanking(Parcel parcel) {
        this.mPackageName = parcel.readString();
        this.mUid = parcel.readInt();
        this.mIsMute = parcel.readByte() != 0;
    }
}
