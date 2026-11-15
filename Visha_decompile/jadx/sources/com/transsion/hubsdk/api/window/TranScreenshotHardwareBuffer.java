package com.transsion.hubsdk.api.window;

import android.graphics.Bitmap;
import android.graphics.ColorSpace;
import android.hardware.HardwareBuffer;
import android.os.Parcel;
import android.os.Parcelable;

public class TranScreenshotHardwareBuffer implements Parcelable {
    public static final Parcelable.Creator<TranScreenshotHardwareBuffer> CREATOR = new Parcelable.Creator<TranScreenshotHardwareBuffer>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public TranScreenshotHardwareBuffer createFromParcel(Parcel parcel) {
            return new TranScreenshotHardwareBuffer(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public TranScreenshotHardwareBuffer[] newArray(int i) {
            return new TranScreenshotHardwareBuffer[i];
        }
    };
    private static final String TAG = "TranScreenshotHardwareBuffer";
    private Bitmap mBitmap;
    private ColorSpace mColorSpace;
    private boolean mContainsHdrLayers;
    private boolean mContainsSecureLayers;
    private HardwareBuffer mHardwareBuffer;

    public TranScreenshotHardwareBuffer() {
    }

    public Bitmap asBitmap() {
        return this.mBitmap;
    }

    public boolean containsHdrLayers() {
        return this.mContainsHdrLayers;
    }

    public boolean containsSecureLayers() {
        return this.mContainsSecureLayers;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public ColorSpace getColorSpace() {
        return this.mColorSpace;
    }

    public HardwareBuffer getHardwareBuffer() {
        return this.mHardwareBuffer;
    }

    public void setBitmap(Bitmap bitmap) {
        this.mBitmap = bitmap;
    }

    public void setColorSpace(ColorSpace colorSpace) {
        this.mColorSpace = colorSpace;
    }

    public void setContainsHdrLayers(boolean z) {
        this.mContainsHdrLayers = z;
    }

    public void setContainsSecureLayers(boolean z) {
        this.mContainsSecureLayers = z;
    }

    public void setHardwareBuffer(HardwareBuffer hardwareBuffer) {
        this.mHardwareBuffer = hardwareBuffer;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.mHardwareBuffer, i);
        parcel.writeInt(this.mColorSpace.getId());
        parcel.writeByte(this.mContainsSecureLayers ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.mContainsHdrLayers ? (byte) 1 : (byte) 0);
    }

    public TranScreenshotHardwareBuffer(HardwareBuffer hardwareBuffer, ColorSpace colorSpace, boolean z, boolean z2) {
        this.mHardwareBuffer = hardwareBuffer;
        this.mColorSpace = colorSpace;
        this.mContainsSecureLayers = z;
        this.mContainsHdrLayers = z2;
    }

    public TranScreenshotHardwareBuffer(Parcel parcel) {
        ColorSpace colorSpace;
        this.mHardwareBuffer = (HardwareBuffer) parcel.readParcelable(HardwareBuffer.class.getClassLoader());
        int i = parcel.readInt();
        if (i >= 0 && i < ColorSpace.Named.values().length) {
            colorSpace = ColorSpace.get(ColorSpace.Named.values()[i]);
        } else {
            colorSpace = ColorSpace.get(ColorSpace.Named.SRGB);
        }
        this.mColorSpace = colorSpace;
        this.mContainsSecureLayers = parcel.readByte() != 0;
        this.mContainsHdrLayers = parcel.readByte() != 0;
    }
}
