package com.transsion.hubsdk.api.window;

import android.graphics.ColorSpace;
import android.hardware.HardwareBuffer;
import android.os.Parcel;
import android.os.Parcelable;

public class TranTaskSnapshot implements Parcelable {
    public static final Parcelable.Creator<TranTaskSnapshot> CREATOR = new Parcelable.Creator<TranTaskSnapshot>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public TranTaskSnapshot createFromParcel(Parcel parcel) {
            return new TranTaskSnapshot(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public TranTaskSnapshot[] newArray(int i) {
            return new TranTaskSnapshot[i];
        }
    };
    public ColorSpace mColorSpace;
    public HardwareBuffer mSnapshot;

    @Override
    public int describeContents() {
        return 0;
    }

    public ColorSpace getColorSpace() {
        return this.mColorSpace;
    }

    public HardwareBuffer getHardwareBuffer() {
        return this.mSnapshot;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        HardwareBuffer hardwareBuffer = this.mSnapshot;
        parcel.writeTypedObject((hardwareBuffer == null || hardwareBuffer.isClosed()) ? null : this.mSnapshot, 0);
        parcel.writeInt(this.mColorSpace.getId());
    }

    public TranTaskSnapshot() {
    }

    public TranTaskSnapshot(HardwareBuffer hardwareBuffer, ColorSpace colorSpace) {
        this.mSnapshot = hardwareBuffer;
        this.mColorSpace = colorSpace.getId() < 0 ? ColorSpace.get(ColorSpace.Named.SRGB) : colorSpace;
    }

    private TranTaskSnapshot(Parcel parcel) {
        ColorSpace colorSpace;
        this.mSnapshot = (HardwareBuffer) parcel.readTypedObject(HardwareBuffer.CREATOR);
        int i = parcel.readInt();
        if (i >= 0 && i < ColorSpace.Named.values().length) {
            colorSpace = ColorSpace.get(ColorSpace.Named.values()[i]);
        } else {
            colorSpace = ColorSpace.get(ColorSpace.Named.SRGB);
        }
        this.mColorSpace = colorSpace;
    }
}
