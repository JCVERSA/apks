package com.hunantv.imgo.entity;

import android.os.Parcel;
import android.os.Parcelable;
import com.mgtv.task.http.host.HostConfig;
import com.mgtv.task.http.retry.RetryConfig;

public class BaseConfigData implements Parcelable, com.mgtv.json.JsonInterface {
    public static final Parcelable.Creator<BaseConfigData> CREATOR = new Parcelable.Creator<BaseConfigData>() {
        @Override
        public BaseConfigData createFromParcel(Parcel parcel) {
            return new BaseConfigData(parcel);
        }

        @Override
        public BaseConfigData[] newArray(int i) {
            return new BaseConfigData[i];
        }
    };
    public AdModule adModule;
    public HostConfig n_netRetry;
    public RetryConfig netRetry;

    public BaseConfigData() {
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.adModule, i);
        parcel.writeParcelable(this.n_netRetry, i);
        parcel.writeParcelable(this.netRetry, i);
    }

    public BaseConfigData(Parcel parcel) {
        this.adModule = (AdModule) parcel.readParcelable(AdModule.class.getClassLoader());
        this.n_netRetry = (HostConfig) parcel.readParcelable(HostConfig.class.getClassLoader());
        this.netRetry = (RetryConfig) parcel.readParcelable(RetryConfig.class.getClassLoader());
    }
}
