package com.mgtv.thirdsdk.config;

import android.os.Parcel;
import android.os.Parcelable;
import com.mgtv.json.JsonInterface;
import com.mgtv.task.http.host.HostConfig;
import com.mgtv.task.http.retry.RetryConfig;

public class ConfigData implements Parcelable, JsonInterface {
    public static final Parcelable.Creator<ConfigData> CREATOR = new Parcelable.Creator<ConfigData>() {
        @Override
        public ConfigData createFromParcel(Parcel parcel) {
            return new ConfigData(parcel);
        }

        @Override
        public ConfigData[] newArray(int i) {
            return new ConfigData[i];
        }
    };
    public CDNModuleConfig cdnModule;
    public HostConfig n_netRetry;
    public RetryConfig netRetry;

    public ConfigData() {
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.n_netRetry, i);
        parcel.writeParcelable(this.netRetry, i);
        parcel.writeParcelable(this.cdnModule, i);
    }

    public ConfigData(Parcel parcel) {
        this.n_netRetry = (HostConfig) parcel.readParcelable(HostConfig.class.getClassLoader());
        this.netRetry = (RetryConfig) parcel.readParcelable(RetryConfig.class.getClassLoader());
        this.cdnModule = (CDNModuleConfig) parcel.readParcelable(CDNModuleConfig.class.getClassLoader());
    }
}
