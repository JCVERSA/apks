package com.transsion.hubsdk.api.view;

import android.os.Parcel;
import android.os.Parcelable;

public class TranBrightnessInfo implements Parcelable {
    public static final int BRIGHTNESS_MAX_REASON_NONE = 0;
    public static final int BRIGHTNESS_MAX_REASON_THERMAL = 1;
    public static final Parcelable.Creator<TranBrightnessInfo> CREATOR = new Parcelable.Creator<TranBrightnessInfo>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public TranBrightnessInfo createFromParcel(Parcel parcel) {
            return new TranBrightnessInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public TranBrightnessInfo[] newArray(int i) {
            return new TranBrightnessInfo[i];
        }
    };
    public static final int HIGH_BRIGHTNESS_MODE_HDR = 2;
    public static final int HIGH_BRIGHTNESS_MODE_OFF = 0;
    public static final int HIGH_BRIGHTNESS_MODE_SUNLIGHT = 1;
    public float mAdjustedBrightness;
    public float mBrightness;
    public int mBrightnessMaxReason;
    public float mBrightnessMaximum;
    public float mBrightnessMinimum;
    public int mHighBrightnessMode;
    public float mHighBrightnessTransitionPoint;

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeFloat(this.mBrightness);
        parcel.writeFloat(this.mAdjustedBrightness);
        parcel.writeFloat(this.mBrightnessMinimum);
        parcel.writeFloat(this.mBrightnessMaximum);
        parcel.writeInt(this.mHighBrightnessMode);
        parcel.writeFloat(this.mHighBrightnessTransitionPoint);
        parcel.writeInt(this.mBrightnessMaxReason);
    }

    public TranBrightnessInfo() {
    }

    private TranBrightnessInfo(Parcel parcel) {
        this.mBrightness = parcel.readFloat();
        this.mAdjustedBrightness = parcel.readFloat();
        this.mBrightnessMinimum = parcel.readFloat();
        this.mBrightnessMaximum = parcel.readFloat();
        this.mHighBrightnessMode = parcel.readInt();
        this.mHighBrightnessTransitionPoint = parcel.readFloat();
        this.mBrightnessMaxReason = parcel.readInt();
    }
}
