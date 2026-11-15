package com.facebook.ads.androidx.media3.extractor.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.redexgen.core.AbstractC06244a;
import com.facebook.ads.redexgen.core.C0964Ht;
import com.facebook.ads.redexgen.core.C4J;

public final class PrivateCommand extends SpliceCommand {
    public static final Parcelable.Creator<PrivateCommand> CREATOR = new C0964Ht();
    public final long A00;
    public final long A01;
    public final byte[] A02;

    public PrivateCommand(long j, byte[] bArr, long j2) {
        this.A01 = j2;
        this.A00 = j;
        this.A02 = bArr;
    }

    public PrivateCommand(Parcel parcel) {
        this.A01 = parcel.readLong();
        this.A00 = parcel.readLong();
        this.A02 = (byte[]) AbstractC06244a.A0f(parcel.createByteArray());
    }

    public PrivateCommand(Parcel parcel, C0964Ht c0964Ht) {
        this(parcel);
    }

    public static PrivateCommand A00(C4J c4j, int i, long j) {
        long jA0Q = c4j.A0Q();
        byte[] bArr = new byte[i - 4];
        c4j.A0k(bArr, 0, bArr.length);
        return new PrivateCommand(jA0Q, bArr, j);
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.A01);
        parcel.writeLong(this.A00);
        parcel.writeByteArray(this.A02);
    }
}
