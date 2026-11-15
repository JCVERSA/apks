package com.transsnet.launcherlib;

import android.os.Parcel;
import android.os.Parcelable;

public class PalmStoreDownLoadTaskInfo implements Parcelable {
    public static final Parcelable.Creator<PalmStoreDownLoadTaskInfo> CREATOR = new a();
    private String fromPage;
    private String iconUrl;
    private String name;
    private String pkgName;
    private float progress;
    private int status;
    private String taskId;

    class a implements Parcelable.Creator {
        a() {
        }

        @Override
        public PalmStoreDownLoadTaskInfo createFromParcel(Parcel parcel) {
            return new PalmStoreDownLoadTaskInfo(parcel);
        }

        @Override
        public PalmStoreDownLoadTaskInfo[] newArray(int i10) {
            return new PalmStoreDownLoadTaskInfo[i10];
        }
    }

    public PalmStoreDownLoadTaskInfo() {
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public String getFromPage() {
        return this.fromPage;
    }

    public String getIconUrl() {
        return this.iconUrl;
    }

    public String getName() {
        return this.name;
    }

    public String getPkgName() {
        return this.pkgName;
    }

    public float getProgress() {
        return this.progress;
    }

    public int getStatus() {
        return this.status;
    }

    public String getTaskId() {
        return this.taskId;
    }

    public void setFromPage(String str) {
        this.fromPage = str;
    }

    public void setIconUrl(String str) {
        this.iconUrl = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setPkgName(String str) {
        this.pkgName = str;
    }

    public void setProgress(float f10) {
        this.progress = f10;
    }

    public void setStatus(int i10) {
        this.status = i10;
    }

    public void setTaskId(String str) {
        this.taskId = str;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.taskId);
        parcel.writeString(this.pkgName);
        parcel.writeString(this.iconUrl);
        parcel.writeString(this.name);
        parcel.writeFloat(this.progress);
        parcel.writeInt(this.status);
    }

    protected PalmStoreDownLoadTaskInfo(Parcel parcel) {
        this.taskId = parcel.readString();
        this.pkgName = parcel.readString();
        this.iconUrl = parcel.readString();
        this.name = parcel.readString();
        this.progress = parcel.readFloat();
        this.status = parcel.readInt();
    }
}
