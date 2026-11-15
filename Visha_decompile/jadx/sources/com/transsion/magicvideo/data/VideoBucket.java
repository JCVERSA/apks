package com.transsion.magicvideo.data;

import android.os.Parcel;
import android.os.Parcelable;

public class VideoBucket implements Parcelable {
    public static final Parcelable.Creator<VideoBucket> CREATOR = new Parcelable.Creator<VideoBucket>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public VideoBucket createFromParcel(Parcel parcel) {
            return new VideoBucket(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public VideoBucket[] newArray(int i) {
            return new VideoBucket[i];
        }
    };
    private int cnt;
    private String folder_name;
    private String nplaylist_name;

    public VideoBucket() {
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public int getCnt() {
        return this.cnt;
    }

    public String getFolder_name() {
        return this.folder_name;
    }

    public String getNplaylist_name() {
        return this.nplaylist_name;
    }

    public void setCnt(int i) {
        this.cnt = i;
    }

    public void setFolder_name(String str) {
        this.folder_name = str;
    }

    public void setNplaylist_name(String str) {
        this.nplaylist_name = str;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.folder_name);
        parcel.writeString(this.nplaylist_name);
        parcel.writeInt(this.cnt);
    }

    public VideoBucket(Parcel parcel) {
        this.folder_name = parcel.readString();
        this.nplaylist_name = parcel.readString();
        this.cnt = parcel.readInt();
    }
}
