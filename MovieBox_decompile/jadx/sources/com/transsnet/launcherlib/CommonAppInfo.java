package com.transsnet.launcherlib;

import android.os.Parcel;
import android.os.Parcelable;

public class CommonAppInfo implements Parcelable {
    public static final Parcelable.Creator<CommonAppInfo> CREATOR = new a();
    private int category;
    private int descVersion;
    private String description;
    private String downloadUrl;
    private String iconUrl;
    private String pkgName;
    private long size;
    private String starLevel;
    private String subDescription;
    private String title;
    private int versionCode;
    private String versionName;

    class a implements Parcelable.Creator {
        a() {
        }

        @Override
        public CommonAppInfo createFromParcel(Parcel parcel) {
            return new CommonAppInfo(parcel);
        }

        @Override
        public CommonAppInfo[] newArray(int i10) {
            return new CommonAppInfo[i10];
        }
    }

    public CommonAppInfo() {
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public int getCategory() {
        return this.category;
    }

    public int getDescVersion() {
        return this.descVersion;
    }

    public String getDescription() {
        return this.description;
    }

    public String getDownloadUrl() {
        return this.downloadUrl;
    }

    public String getIconUrl() {
        return this.iconUrl;
    }

    public String getPkgName() {
        return this.pkgName;
    }

    public long getSize() {
        return this.size;
    }

    public String getStarLevel() {
        return this.starLevel;
    }

    public String getSubDescription() {
        return this.subDescription;
    }

    public String getTitle() {
        return this.title;
    }

    public int getVersionCode() {
        return this.versionCode;
    }

    public String getVersionName() {
        return this.versionName;
    }

    public void setCategory(int i10) {
        this.category = i10;
    }

    public void setDescVersion(int i10) {
        this.descVersion = i10;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public void setDownloadUrl(String str) {
        this.downloadUrl = str;
    }

    public void setIconUrl(String str) {
        this.iconUrl = str;
    }

    public void setPkgName(String str) {
        this.pkgName = str;
    }

    public void setSize(long j10) {
        this.size = j10;
    }

    public void setStarLevel(String str) {
        this.starLevel = str;
    }

    public void setSubDescription(String str) {
        this.subDescription = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setVersionCode(int i10) {
        this.versionCode = i10;
    }

    public void setVersionName(String str) {
        this.versionName = str;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.title);
        parcel.writeInt(this.descVersion);
        parcel.writeString(this.description);
        parcel.writeString(this.subDescription);
        parcel.writeString(this.iconUrl);
        parcel.writeInt(this.category);
        parcel.writeString(this.downloadUrl);
        parcel.writeString(this.pkgName);
        parcel.writeString(this.versionName);
        parcel.writeInt(this.versionCode);
        parcel.writeLong(this.size);
        parcel.writeString(this.starLevel);
    }

    protected CommonAppInfo(Parcel parcel) {
        this.title = parcel.readString();
        this.descVersion = parcel.readInt();
        this.description = parcel.readString();
        this.subDescription = parcel.readString();
        this.iconUrl = parcel.readString();
        this.category = parcel.readInt();
        this.downloadUrl = parcel.readString();
        this.pkgName = parcel.readString();
        this.versionName = parcel.readString();
        this.versionCode = parcel.readInt();
        this.size = parcel.readLong();
        this.starLevel = parcel.readString();
    }
}
