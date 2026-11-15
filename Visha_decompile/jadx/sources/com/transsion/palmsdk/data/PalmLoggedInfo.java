package com.transsion.palmsdk.data;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;

public class PalmLoggedInfo implements Parcelable {
    public static final Parcelable.Creator<PalmLoggedInfo> CREATOR = new Parcelable.Creator<PalmLoggedInfo>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public PalmLoggedInfo createFromParcel(Parcel parcel) {
            return new PalmLoggedInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public PalmLoggedInfo[] newArray(int i) {
            return new PalmLoggedInfo[i];
        }
    };
    private String avatarUrl;
    private String loggedId;
    private String nickName;
    private String targetApp;
    private String userName;

    public PalmLoggedInfo() {
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public String getAvatarUrl() {
        return this.avatarUrl;
    }

    public String getLoggedId() {
        return this.loggedId;
    }

    public String getNickName() {
        return this.nickName;
    }

    public String getTargetApp() {
        return this.targetApp;
    }

    public String getUserName() {
        return this.userName;
    }

    public boolean isLogged() {
        return !TextUtils.isEmpty(this.loggedId);
    }

    public void setAvatarUrl(String str) {
        this.avatarUrl = str;
    }

    public void setLoggedId(String str) {
        this.loggedId = str;
    }

    public void setNickName(String str) {
        this.nickName = str;
    }

    public void setTargetApp(String str) {
        this.targetApp = str;
    }

    public void setUserName(String str) {
        this.userName = str;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.nickName);
        parcel.writeString(this.userName);
        parcel.writeString(this.avatarUrl);
        parcel.writeString(this.loggedId);
        parcel.writeString(this.targetApp);
    }

    public PalmLoggedInfo(Parcel parcel) {
        this.nickName = parcel.readString();
        this.userName = parcel.readString();
        this.avatarUrl = parcel.readString();
        this.loggedId = parcel.readString();
        this.targetApp = parcel.readString();
    }
}
