package com.mbridge.msdk.foundation.download;

import android.os.Parcel;
import android.os.Parcelable;

public class DownloadProgress implements Parcelable {
    public static final Parcelable.Creator<DownloadProgress> CREATOR = new Parcelable.Creator<DownloadProgress>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public DownloadProgress createFromParcel(Parcel parcel) {
            return new DownloadProgress(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public DownloadProgress[] newArray(int i10) {
            return new DownloadProgress[i10];
        }
    };
    private long current;
    private int currentDownloadRate;
    private long total;

    public DownloadProgress(long j10, long j11, int i10) {
        this.current = j10;
        this.total = j11;
        this.currentDownloadRate = i10;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public long getCurrent() {
        return this.current;
    }

    public int getCurrentDownloadRate() {
        return this.currentDownloadRate;
    }

    public long getTotal() {
        return this.total;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeLong(this.current);
        parcel.writeLong(this.total);
        parcel.writeInt(this.currentDownloadRate);
    }

    protected DownloadProgress(Parcel parcel) {
        this.current = parcel.readLong();
        this.total = parcel.readLong();
        this.currentDownloadRate = parcel.readInt();
    }
}
