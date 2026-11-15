package com.mgmi.model;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;

public class VASTBootModel implements Parcelable {
    public static final Parcelable.Creator<VASTBootModel> CREATOR = new Parcelable.Creator<VASTBootModel>() {
        @Override
        public VASTBootModel createFromParcel(Parcel parcel) {
            return new VASTBootModel(parcel);
        }

        @Override
        public VASTBootModel[] newArray(int i) {
            return new VASTBootModel[i];
        }
    };
    public List<String> backup_url;
    public String childId;
    public List<String> click;
    public String clickTracking;
    public int duration;
    public List<String> impression;
    public String jumpId;
    public String jumpKind;
    public String jump_type;
    public List<String> jump_val;
    public String mediaFile;
    public String pageUrl;
    public String update_url;

    public VASTBootModel() {
        this.impression = new ArrayList();
        this.clickTracking = "";
        this.mediaFile = "";
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "VASTBootModel{impression=" + this.impression + ", clickTracking='" + this.clickTracking + "', mediaFile='" + this.mediaFile + "', click=" + this.click + ", jump_type='" + this.jump_type + "', jump_val=" + this.jump_val + ", update_url='" + this.update_url + "', duration=" + this.duration + ",backupUrl=" + this.backup_url + '}';
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeStringList(this.impression);
        parcel.writeString(this.clickTracking);
        parcel.writeString(this.mediaFile);
        parcel.writeStringList(this.click);
        parcel.writeString(this.jumpKind);
        parcel.writeString(this.jumpId);
        parcel.writeString(this.childId);
        parcel.writeString(this.pageUrl);
        parcel.writeString(this.jump_type);
        parcel.writeStringList(this.jump_val);
        parcel.writeString(this.update_url);
        parcel.writeInt(this.duration);
        parcel.writeStringList(this.backup_url);
    }

    public VASTBootModel(Parcel parcel) {
        this.impression = new ArrayList();
        this.clickTracking = "";
        this.mediaFile = "";
        this.impression = parcel.createStringArrayList();
        this.clickTracking = parcel.readString();
        this.mediaFile = parcel.readString();
        this.click = parcel.createStringArrayList();
        this.jumpKind = parcel.readString();
        this.jumpId = parcel.readString();
        this.childId = parcel.readString();
        this.pageUrl = parcel.readString();
        this.jump_type = parcel.readString();
        this.jump_val = parcel.createStringArrayList();
        this.update_url = parcel.readString();
        this.duration = parcel.readInt();
        this.backup_url = parcel.createStringArrayList();
    }
}
