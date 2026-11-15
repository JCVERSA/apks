package com.mgmi.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.math.BigInteger;

public class VASTMediaFile implements Parcelable {
    public static final Parcelable.Creator<VASTMediaFile> CREATOR = new Parcelable.Creator<VASTMediaFile>() {
        @Override
        public VASTMediaFile createFromParcel(Parcel parcel) {
            VASTMediaFile vASTMediaFile = new VASTMediaFile();
            vASTMediaFile.value = parcel.readString();
            vASTMediaFile.videoClick = (Clicks) parcel.readParcelable(Clicks.class.getClassLoader());
            return vASTMediaFile;
        }

        @Override
        public VASTMediaFile[] newArray(int i) {
            return new VASTMediaFile[i];
        }
    };
    private String apiFramework;
    private BigInteger bitrate;
    private String delivery;
    private int duration;
    private BigInteger height;
    private String id;
    private Boolean maintainAspectRatio;
    private Boolean scalable;
    private String type;
    public String value;
    private Clicks videoClick;
    private BigInteger width;

    @Override
    public int describeContents() {
        return 0;
    }

    public String getApiFramework() {
        return this.apiFramework;
    }

    public BigInteger getBitrate() {
        return this.bitrate;
    }

    public String getDelivery() {
        return this.delivery;
    }

    public int getDuration() {
        return this.duration;
    }

    public BigInteger getHeight() {
        return this.height;
    }

    public String getId() {
        return this.id;
    }

    public String getType() {
        return this.type;
    }

    public String getValue() {
        return this.value;
    }

    public Clicks getVideoClick() {
        return this.videoClick;
    }

    public BigInteger getWidth() {
        return this.width;
    }

    public boolean hasClickEvents() {
        Clicks clicks = this.videoClick;
        if (clicks == null) {
            return false;
        }
        return !TextUtils.isEmpty(clicks.getClickThrough());
    }

    public Boolean isMaintainAspectRatio() {
        return this.maintainAspectRatio;
    }

    public Boolean isScalable() {
        return this.scalable;
    }

    public void setApiFramework(String str) {
        this.apiFramework = str;
    }

    public void setBitrate(BigInteger bigInteger) {
        this.bitrate = bigInteger;
    }

    public void setDelivery(String str) {
        this.delivery = str;
    }

    public void setDuration(int i) {
        this.duration = i;
    }

    public void setHeight(BigInteger bigInteger) {
        this.height = bigInteger;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setMaintainAspectRatio(Boolean bool) {
        this.maintainAspectRatio = bool;
    }

    public void setScalable(Boolean bool) {
        this.scalable = bool;
    }

    public void setType(String str) {
        this.type = str;
    }

    public void setValue(String str) {
        this.value = str;
    }

    public void setVideoClick(Clicks clicks) {
        this.videoClick = clicks;
    }

    public void setWidth(BigInteger bigInteger) {
        this.width = bigInteger;
    }

    public String toString() {
        return "MediaFile [value=" + this.value + ", id=" + this.id + ", delivery=" + this.delivery + ", type=" + this.type + ", bitrate=" + this.bitrate + ", width=" + this.width + ", height=" + this.height + ", scalable=" + this.scalable + ", maintainAspectRatio=" + this.maintainAspectRatio + ", apiFramework=" + this.apiFramework + "]";
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.value);
        parcel.writeParcelable(this.videoClick, i);
    }
}
