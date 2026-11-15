package com.transsion.livecaption.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;

@Keep
public class NotificationConversationItem implements Parcelable {
    public static final Parcelable.Creator<NotificationConversationItem> CREATOR = new Parcelable.Creator<NotificationConversationItem>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public NotificationConversationItem createFromParcel(Parcel parcel) {
            return new NotificationConversationItem(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public NotificationConversationItem[] newArray(int i) {
            return new NotificationConversationItem[i];
        }
    };
    private String groupKey;
    private String mSummary;
    private String message1;
    private String message2;
    private String message3;
    private String message4;
    private String message5;
    private String notiKey;
    private String packageName;
    private int status;
    private String title;

    public NotificationConversationItem() {
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public String getGroupKey() {
        return this.groupKey;
    }

    public String getMessage1() {
        return this.message1;
    }

    public String getMessage2() {
        return this.message2;
    }

    public String getMessage3() {
        return this.message3;
    }

    public String getMessage4() {
        return this.message4;
    }

    public String getMessage5() {
        return this.message5;
    }

    public String getNotiKey() {
        return this.notiKey;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public int getStatus() {
        return this.status;
    }

    public String getSummary() {
        return this.mSummary;
    }

    public String getTitle() {
        return this.title;
    }

    public void setGroupKey(String str) {
        this.groupKey = str;
    }

    public void setMessage1(String str) {
        this.message1 = str;
    }

    public void setMessage2(String str) {
        this.message2 = str;
    }

    public void setMessage3(String str) {
        this.message3 = str;
    }

    public void setMessage4(String str) {
        this.message4 = str;
    }

    public void setMessage5(String str) {
        this.message5 = str;
    }

    public void setNotiKey(String str) {
        this.notiKey = str;
    }

    public void setPackageName(String str) {
        this.packageName = str;
    }

    public void setStatus(int i) {
        this.status = i;
    }

    public void setSummary(String str) {
        this.mSummary = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    @NonNull
    public String toString() {
        return "NotificationConversation{notiKey='" + this.notiKey + "', title='" + this.title + "', message1='" + this.message1 + "', message2='" + this.message2 + "', message3='" + this.message3 + "', message4='" + this.message4 + "', message5='" + this.message5 + "', summary='" + this.mSummary + "', status=" + this.status + "', packageName='" + this.packageName + "'}";
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.notiKey);
        parcel.writeString(this.groupKey);
        parcel.writeString(this.title);
        parcel.writeString(this.message1);
        parcel.writeString(this.message2);
        parcel.writeString(this.message3);
        parcel.writeString(this.message4);
        parcel.writeString(this.message5);
        parcel.writeString(this.mSummary);
        parcel.writeInt(this.status);
        parcel.writeString(this.packageName);
    }

    public NotificationConversationItem(Parcel parcel) {
        this.notiKey = parcel.readString();
        this.groupKey = parcel.readString();
        this.title = parcel.readString();
        this.message1 = parcel.readString();
        this.message2 = parcel.readString();
        this.message3 = parcel.readString();
        this.message4 = parcel.readString();
        this.message5 = parcel.readString();
        this.mSummary = parcel.readString();
        this.status = parcel.readInt();
        this.packageName = parcel.readString();
    }
}
