package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.p0;
import java.util.Arrays;

public final class MlltFrame extends Id3Frame {
    public static final Parcelable.Creator<MlltFrame> CREATOR = new a();
    public static final String ID = "MLLT";
    public final int bytesBetweenReference;
    public final int[] bytesDeviations;
    public final int millisecondsBetweenReference;
    public final int[] millisecondsDeviations;
    public final int mpegFramesBetweenReference;

    class a implements Parcelable.Creator {
        a() {
        }

        @Override
        public MlltFrame createFromParcel(Parcel parcel) {
            return new MlltFrame(parcel);
        }

        @Override
        public MlltFrame[] newArray(int i10) {
            return new MlltFrame[i10];
        }
    }

    public MlltFrame(int i10, int i11, int i12, int[] iArr, int[] iArr2) {
        super(ID);
        this.mpegFramesBetweenReference = i10;
        this.bytesBetweenReference = i11;
        this.millisecondsBetweenReference = i12;
        this.bytesDeviations = iArr;
        this.millisecondsDeviations = iArr2;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || MlltFrame.class != obj.getClass()) {
            return false;
        }
        MlltFrame mlltFrame = (MlltFrame) obj;
        return this.mpegFramesBetweenReference == mlltFrame.mpegFramesBetweenReference && this.bytesBetweenReference == mlltFrame.bytesBetweenReference && this.millisecondsBetweenReference == mlltFrame.millisecondsBetweenReference && Arrays.equals(this.bytesDeviations, mlltFrame.bytesDeviations) && Arrays.equals(this.millisecondsDeviations, mlltFrame.millisecondsDeviations);
    }

    public int hashCode() {
        return ((((((((527 + this.mpegFramesBetweenReference) * 31) + this.bytesBetweenReference) * 31) + this.millisecondsBetweenReference) * 31) + Arrays.hashCode(this.bytesDeviations)) * 31) + Arrays.hashCode(this.millisecondsDeviations);
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.mpegFramesBetweenReference);
        parcel.writeInt(this.bytesBetweenReference);
        parcel.writeInt(this.millisecondsBetweenReference);
        parcel.writeIntArray(this.bytesDeviations);
        parcel.writeIntArray(this.millisecondsDeviations);
    }

    MlltFrame(Parcel parcel) {
        super(ID);
        this.mpegFramesBetweenReference = parcel.readInt();
        this.bytesBetweenReference = parcel.readInt();
        this.millisecondsBetweenReference = parcel.readInt();
        this.bytesDeviations = (int[]) p0.j(parcel.createIntArray());
        this.millisecondsDeviations = (int[]) p0.j(parcel.createIntArray());
    }
}
