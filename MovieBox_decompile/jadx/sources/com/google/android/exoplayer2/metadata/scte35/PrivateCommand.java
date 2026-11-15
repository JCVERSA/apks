package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;

public final class PrivateCommand extends SpliceCommand {
    public static final Parcelable.Creator<PrivateCommand> CREATOR = new a();
    public final byte[] commandBytes;
    public final long identifier;
    public final long ptsAdjustment;

    class a implements Parcelable.Creator {
        a() {
        }

        @Override
        public PrivateCommand createFromParcel(Parcel parcel) {
            return new PrivateCommand(parcel, null);
        }

        @Override
        public PrivateCommand[] newArray(int i10) {
            return new PrivateCommand[i10];
        }
    }

    PrivateCommand(Parcel parcel, a aVar) {
        this(parcel);
    }

    static PrivateCommand parseFromSection(d0 d0Var, int i10, long j10) {
        long jF = d0Var.F();
        int i11 = i10 - 4;
        byte[] bArr = new byte[i11];
        d0Var.j(bArr, 0, i11);
        return new PrivateCommand(jF, bArr, j10);
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeLong(this.ptsAdjustment);
        parcel.writeLong(this.identifier);
        parcel.writeByteArray(this.commandBytes);
    }

    private PrivateCommand(long j10, byte[] bArr, long j11) {
        this.ptsAdjustment = j11;
        this.identifier = j10;
        this.commandBytes = bArr;
    }

    private PrivateCommand(Parcel parcel) {
        this.ptsAdjustment = parcel.readLong();
        this.identifier = parcel.readLong();
        this.commandBytes = (byte[]) p0.j(parcel.createByteArray());
    }
}
