package com.cloud.hisavana.sdk.common.bean;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;

public class ImgListDTO implements Parcelable {
    public static final Parcelable.Creator<ImgListDTO> CREATOR = new Parcelable.Creator<ImgListDTO>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public ImgListDTO createFromParcel(Parcel parcel) {
            return new ImgListDTO(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public ImgListDTO[] newArray(int i) {
            return new ImgListDTO[i];
        }
    };
    private int hv;
    private transient Uri uri;
    private String url;

    public ImgListDTO() {
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public int getHv() {
        return this.hv;
    }

    public Uri getUri() {
        return this.uri;
    }

    public String getUrl() {
        return this.url;
    }

    public void setHv(int i) {
        this.hv = i;
    }

    public void setUri(Uri uri) {
        this.uri = uri;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.url);
        parcel.writeParcelable(this.uri, i);
        parcel.writeInt(this.hv);
    }

    public ImgListDTO(Parcel parcel) {
        this.url = parcel.readString();
        this.uri = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.hv = parcel.readInt();
    }
}
