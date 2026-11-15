package com.cloud.hisavana.sdk.common.tracking;

import android.os.Parcel;
import android.os.Parcelable;

public class DownUpPointBean implements Parcelable {
    public static final Parcelable.Creator<DownUpPointBean> CREATOR = new a();
    private float downX;
    private float downY;
    private int imageH;
    private int imageW;
    private float upX;
    private float upY;

    class a implements Parcelable.Creator {
        a() {
        }

        @Override
        public DownUpPointBean createFromParcel(Parcel parcel) {
            return new DownUpPointBean(parcel);
        }

        @Override
        public DownUpPointBean[] newArray(int i10) {
            return new DownUpPointBean[i10];
        }
    }

    public DownUpPointBean() {
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public float getDownX() {
        return this.downX;
    }

    public float getDownY() {
        return this.downY;
    }

    public int getImageH() {
        return this.imageH;
    }

    public int getImageW() {
        return this.imageW;
    }

    public float getUpX() {
        return this.upX;
    }

    public float getUpY() {
        return this.upY;
    }

    public void setDownX(float f10) {
        this.downX = f10;
    }

    public void setDownY(float f10) {
        this.downY = f10;
    }

    public void setImageH(int i10) {
        this.imageH = i10;
    }

    public void setImageW(int i10) {
        this.imageW = i10;
    }

    public void setUpX(float f10) {
        this.upX = f10;
    }

    public void setUpY(float f10) {
        this.upY = f10;
    }

    public String toString() {
        return "DownUpPointBean{downX=" + this.downX + ", downY=" + this.downY + ", upX=" + this.upX + ", upY=" + this.upY + ", imageH=" + this.imageH + ", imageW=" + this.imageW + '}';
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeFloat(this.downX);
        parcel.writeFloat(this.downY);
        parcel.writeFloat(this.upX);
        parcel.writeFloat(this.upY);
        parcel.writeInt(this.imageH);
        parcel.writeInt(this.imageW);
    }

    public DownUpPointBean(float f10, float f11, float f12, float f13, int i10, int i11) {
        this.downX = f10;
        this.downY = f11;
        this.upX = f12;
        this.upY = f13;
        this.imageH = i10;
        this.imageW = i11;
    }

    protected DownUpPointBean(Parcel parcel) {
        this.downX = parcel.readFloat();
        this.downY = parcel.readFloat();
        this.upX = parcel.readFloat();
        this.upY = parcel.readFloat();
        this.imageH = parcel.readInt();
        this.imageW = parcel.readInt();
    }
}
