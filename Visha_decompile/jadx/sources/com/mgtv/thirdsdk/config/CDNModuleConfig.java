package com.mgtv.thirdsdk.config;

import android.os.Parcel;
import android.os.Parcelable;
import com.mgtv.json.JsonInterface;

public class CDNModuleConfig implements Parcelable, JsonInterface {
    public static final Parcelable.Creator<CDNModuleConfig> CREATOR = new Parcelable.Creator<CDNModuleConfig>() {
        @Override
        public CDNModuleConfig createFromParcel(Parcel parcel) {
            return new CDNModuleConfig(parcel);
        }

        @Override
        public CDNModuleConfig[] newArray(int i) {
            return new CDNModuleConfig[i];
        }
    };
    public int hlsconfig;
    public int useMGHttpDns;
    public int videoDownloadType;

    public CDNModuleConfig() {
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.hlsconfig);
        parcel.writeInt(this.videoDownloadType);
        parcel.writeInt(this.useMGHttpDns);
    }

    public CDNModuleConfig(Parcel parcel) {
        this.hlsconfig = parcel.readInt();
        this.videoDownloadType = parcel.readInt();
        this.useMGHttpDns = parcel.readInt();
    }
}
