package com.mgmi.model;

import android.os.Parcel;
import android.os.Parcelable;

public class HeadInfo implements Parcelable {
    public static final Parcelable.Creator<HeadInfo> CREATOR = new Parcelable.Creator<HeadInfo>() {
        @Override
        public HeadInfo createFromParcel(Parcel parcel) {
            return new HeadInfo(parcel);
        }

        @Override
        public HeadInfo[] newArray(int i) {
            return new HeadInfo[i];
        }
    };
    private boolean isShowHead;
    private String userAvater;
    private String userName;

    public HeadInfo() {
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public String getUserAvater() {
        return this.userAvater;
    }

    public String getUserName() {
        return this.userName;
    }

    public boolean isShowHead() {
        return this.isShowHead;
    }

    public void setShowHead(boolean z) {
        this.isShowHead = z;
    }

    public void setUserAvater(String str) {
        this.userAvater = str;
    }

    public void setUserName(String str) {
        this.userName = str;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeByte(this.isShowHead ? (byte) 1 : (byte) 0);
        parcel.writeString(this.userAvater);
        parcel.writeString(this.userName);
    }

    public HeadInfo(Parcel parcel) {
        this.isShowHead = parcel.readByte() != 0;
        this.userAvater = parcel.readString();
        this.userName = parcel.readString();
    }
}
