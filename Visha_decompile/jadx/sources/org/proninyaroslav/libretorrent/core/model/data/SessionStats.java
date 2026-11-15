package org.proninyaroslav.libretorrent.core.model.data;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;

public class SessionStats extends AbstractInfoParcel {
    public static final Parcelable.Creator<SessionStats> CREATOR = new Parcelable.Creator<SessionStats>() {
        @Override
        public SessionStats createFromParcel(Parcel parcel) {
            return new SessionStats(parcel);
        }

        @Override
        public SessionStats[] newArray(int i) {
            return new SessionStats[i];
        }
    };
    public long dhtNodes;
    public long downloadSpeed;
    public int listenPort;
    public long totalDownload;
    public long totalUpload;
    public long uploadSpeed;

    public SessionStats(long j, long j2, long j3, long j4, long j5, int i) {
        this.dhtNodes = j;
        this.totalDownload = j2;
        this.totalUpload = j3;
        this.downloadSpeed = j4;
        this.uploadSpeed = j5;
        this.listenPort = i;
    }

    @Override
    public int compareTo(@NonNull Object obj) {
        return this.parcelId.compareTo(((SessionStats) obj).parcelId);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof SessionStats)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        SessionStats sessionStats = (SessionStats) obj;
        return this.dhtNodes == sessionStats.dhtNodes && this.totalDownload == sessionStats.totalDownload && this.totalUpload == sessionStats.totalUpload && this.downloadSpeed == sessionStats.downloadSpeed && this.uploadSpeed == sessionStats.uploadSpeed && this.listenPort == sessionStats.listenPort;
    }

    @Override
    public int hashCode() {
        long j = this.dhtNodes;
        long j2 = this.totalDownload;
        int i = (((((int) (j ^ (j >>> 32))) + 31) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31;
        long j3 = this.totalUpload;
        int i2 = (i + ((int) (j3 ^ (j3 >>> 32)))) * 31;
        long j4 = this.downloadSpeed;
        int i3 = (i2 + ((int) (j4 ^ (j4 >>> 32)))) * 31;
        long j5 = this.uploadSpeed;
        return ((i3 + ((int) (j5 ^ (j5 >>> 32)))) * 31) + this.listenPort;
    }

    @NonNull
    public String toString() {
        return "SessionStats{dhtNodes=" + this.dhtNodes + ", totalDownload=" + this.totalDownload + ", totalUpload=" + this.totalUpload + ", downloadSpeed=" + this.downloadSpeed + ", uploadSpeed=" + this.uploadSpeed + ", listenPort=" + this.listenPort + '}';
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeLong(this.dhtNodes);
        parcel.writeLong(this.totalDownload);
        parcel.writeLong(this.totalUpload);
        parcel.writeLong(this.downloadSpeed);
        parcel.writeLong(this.uploadSpeed);
        parcel.writeInt(this.listenPort);
    }

    public SessionStats(Parcel parcel) {
        super(parcel);
        this.dhtNodes = parcel.readLong();
        this.totalDownload = parcel.readLong();
        this.totalUpload = parcel.readLong();
        this.downloadSpeed = parcel.readLong();
        this.uploadSpeed = parcel.readLong();
        this.listenPort = parcel.readInt();
    }
}
