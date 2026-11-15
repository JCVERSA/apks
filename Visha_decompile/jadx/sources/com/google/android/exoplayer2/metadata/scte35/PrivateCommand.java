package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.blb;
import defpackage.qw7;

public final class PrivateCommand extends SpliceCommand {
    public static final Parcelable.Creator<PrivateCommand> CREATOR = new a();
    public final byte[] commandBytes;
    public final long identifier;
    public final long ptsAdjustment;

    public class a implements Parcelable.Creator {
        @Override
        public PrivateCommand createFromParcel(Parcel parcel) {
            return new PrivateCommand(parcel, null);
        }

        @Override
        public PrivateCommand[] newArray(int i) {
            return new PrivateCommand[i];
        }
    }

    public PrivateCommand(Parcel parcel, a aVar) {
        this(parcel);
    }

    public static PrivateCommand parseFromSection(qw7 qw7Var, int i, long j) {
        long jE = qw7Var.E();
        int i2 = i - 4;
        byte[] bArr = new byte[i2];
        qw7Var.j(bArr, 0, i2);
        return new PrivateCommand(jE, bArr, j);
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.ptsAdjustment);
        parcel.writeLong(this.identifier);
        parcel.writeByteArray(this.commandBytes);
    }

    private PrivateCommand(long j, byte[] bArr, long j2) {
        this.ptsAdjustment = j2;
        this.identifier = j;
        this.commandBytes = bArr;
    }

    private PrivateCommand(Parcel parcel) {
        this.ptsAdjustment = parcel.readLong();
        this.identifier = parcel.readLong();
        this.commandBytes = (byte[]) blb.j(parcel.createByteArray());
    }
}
