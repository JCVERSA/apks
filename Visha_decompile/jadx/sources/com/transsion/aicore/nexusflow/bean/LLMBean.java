package com.transsion.aicore.nexusflow.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.google.gson.annotations.SerializedName;

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

    @SerializedName("senseType")
    public int mSenseType;

    @SerializedName("status")
    public int mStatus;

    @SerializedName("taskId")
    public String mTaskId;

    public LLMBean() {
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mTaskId);
        parcel.writeInt(this.mSenseType);
        parcel.writeInt(this.mStatus);
    }

    public LLMBean(Parcel parcel) {
        this.mTaskId = parcel.readString();
        this.mSenseType = parcel.readInt();
        this.mStatus = parcel.readInt();
    }
}
