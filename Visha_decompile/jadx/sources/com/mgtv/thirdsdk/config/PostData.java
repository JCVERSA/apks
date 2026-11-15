package com.mgtv.thirdsdk.config;

import android.os.Parcel;
import android.os.Parcelable;
import com.mgtv.json.JsonInterface;
import java.util.ArrayList;
import java.util.List;

public class PostData implements Parcelable, JsonInterface {
    public static final Parcelable.Creator<PostData> CREATOR = new Parcelable.Creator<PostData>() {
        @Override
        public PostData createFromParcel(Parcel parcel) {
            return new PostData(parcel);
        }

        @Override
        public PostData[] newArray(int i) {
            return new PostData[i];
        }
    };
    public String appVersion;
    public String channel;
    public String chipMf;
    public String cpuinfo;
    public String device;
    public String imgoplayerVersion;
    public String mac;
    public List<PostDataModel> models;
    public String osType;
    public String osVersion;
    public String ticket;
    public String userId;
    public int versionCode;

    public PostData() {
        this.models = new ArrayList();
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.osType);
        parcel.writeString(this.appVersion);
        parcel.writeInt(this.versionCode);
        parcel.writeString(this.device);
        parcel.writeString(this.osVersion);
        parcel.writeString(this.userId);
        parcel.writeString(this.mac);
        parcel.writeString(this.ticket);
        parcel.writeString(this.channel);
        parcel.writeTypedList(this.models);
        parcel.writeString(this.cpuinfo);
        parcel.writeString(this.imgoplayerVersion);
        parcel.writeString(this.chipMf);
    }

    public PostData(Parcel parcel) {
        this.models = new ArrayList();
        this.osType = parcel.readString();
        this.appVersion = parcel.readString();
        this.versionCode = parcel.readInt();
        this.device = parcel.readString();
        this.osVersion = parcel.readString();
        this.userId = parcel.readString();
        this.mac = parcel.readString();
        this.ticket = parcel.readString();
        this.channel = parcel.readString();
        this.models = parcel.createTypedArrayList(PostDataModel.CREATOR);
        this.cpuinfo = parcel.readString();
        this.imgoplayerVersion = parcel.readString();
        this.chipMf = parcel.readString();
    }
}
