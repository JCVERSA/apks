package com.transsion.livecaption.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;

@Keep
public class LLMBean implements Parcelable {
    public static final Parcelable.Creator<LLMBean> CREATOR = new Parcelable.Creator<LLMBean>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public LLMBean createFromParcel(Parcel parcel) {
            return new LLMBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public LLMBean[] newArray(int i) {
            return new LLMBean[i];
        }
    };
    private int senseType;
    private int status;
    private String taskId;

    public LLMBean() {
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public int getSenseType() {
        return this.senseType;
    }

    public int getStatus() {
        return this.status;
    }

    public String getTaskId() {
        return this.taskId;
    }

    public void setSenseType(int i) {
        this.senseType = i;
    }

    public void setStatus(int i) {
        this.status = i;
    }

    public void setTaskId(String str) {
        this.taskId = str;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.taskId);
        parcel.writeInt(this.senseType);
        parcel.writeInt(this.status);
    }

    public LLMBean(Parcel parcel) {
        this.taskId = parcel.readString();
        this.senseType = parcel.readInt();
        this.status = parcel.readInt();
    }
}
