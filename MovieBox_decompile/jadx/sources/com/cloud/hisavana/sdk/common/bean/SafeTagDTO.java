package com.cloud.hisavana.sdk.common.bean;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;

public class SafeTagDTO implements Parcelable {
    public static final Parcelable.Creator<SafeTagDTO> CREATOR = new Parcelable.Creator<SafeTagDTO>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public SafeTagDTO createFromParcel(Parcel parcel) {
            return new SafeTagDTO(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public SafeTagDTO[] newArray(int i10) {
            return new SafeTagDTO[i10];
        }
    };
    private String icon;

    private String f21453id;
    private String isDeleted;
    private String nameTK;

    @SerializedName("name")
    private String nameX;
    private String priority;
    private String type;

    public SafeTagDTO() {
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public String getIcon() {
        return this.icon;
    }

    public String getId() {
        return this.f21453id;
    }

    public String getIsDeleted() {
        return this.isDeleted;
    }

    public String getNameTK() {
        return this.nameTK;
    }

    public String getNameX() {
        return this.nameX;
    }

    public String getPriority() {
        return this.priority;
    }

    public String getType() {
        return this.type;
    }

    public void setIcon(String str) {
        this.icon = str;
    }

    public void setId(String str) {
        this.f21453id = str;
    }

    public void setIsDeleted(String str) {
        this.isDeleted = str;
    }

    public void setNameTK(String str) {
        this.nameTK = str;
    }

    public void setNameX(String str) {
        this.nameX = str;
    }

    public void setPriority(String str) {
        this.priority = str;
    }

    public void setType(String str) {
        this.type = str;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.isDeleted);
        parcel.writeString(this.icon);
        parcel.writeString(this.nameX);
        parcel.writeString(this.f21453id);
        parcel.writeString(this.priority);
        parcel.writeString(this.type);
        parcel.writeString(this.nameTK);
    }

    protected SafeTagDTO(Parcel parcel) {
        this.isDeleted = parcel.readString();
        this.icon = parcel.readString();
        this.nameX = parcel.readString();
        this.f21453id = parcel.readString();
        this.priority = parcel.readString();
        this.type = parcel.readString();
        this.nameTK = parcel.readString();
    }
}
