package com.mgtv.thirdsdk.config;

import android.os.Parcel;
import android.os.Parcelable;
import com.mgtv.json.JsonInterface;

public class PostDataModel implements Parcelable, JsonInterface {
    public static final Parcelable.Creator<PostDataModel> CREATOR = new Parcelable.Creator<PostDataModel>() {
        @Override
        public PostDataModel createFromParcel(Parcel parcel) {
            return new PostDataModel(parcel);
        }

        @Override
        public PostDataModel[] newArray(int i) {
            return new PostDataModel[i];
        }
    };
    public String model;
    public int version;

    public PostDataModel() {
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.model);
        parcel.writeInt(this.version);
    }

    public PostDataModel(Parcel parcel) {
        this.model = parcel.readString();
        this.version = parcel.readInt();
    }
}
