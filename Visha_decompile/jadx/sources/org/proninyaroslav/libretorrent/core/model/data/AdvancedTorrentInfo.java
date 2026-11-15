package org.proninyaroslav.libretorrent.core.model.data;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import java.util.Arrays;

public class AdvancedTorrentInfo extends AbstractInfoParcel {
    public static final Parcelable.Creator<AdvancedTorrentInfo> CREATOR = new Parcelable.Creator<AdvancedTorrentInfo>() {
        @Override
        public AdvancedTorrentInfo createFromParcel(Parcel parcel) {
            return new AdvancedTorrentInfo(parcel);
        }

        @Override
        public AdvancedTorrentInfo[] newArray(int i) {
            return new AdvancedTorrentInfo[i];
        }
    };
    public long activeTime;
    public double availability;
    public int downloadedPieces;
    public double[] filesAvailability;
    public long[] filesReceivedBytes;
    public int leechers;
    public long seedingTime;
    public int seeds;
    public double shareRatio;
    public String torrentId;
    public int totalLeechers;
    public int totalSeeds;

    public AdvancedTorrentInfo() {
        this.torrentId = "";
        this.totalSeeds = 0;
        this.seeds = 0;
        this.downloadedPieces = 0;
        this.filesReceivedBytes = new long[0];
        this.shareRatio = 0.0d;
        this.activeTime = 0L;
        this.seedingTime = 0L;
        this.availability = 0.0d;
        this.filesAvailability = new double[0];
    }

    @Override
    public int compareTo(@NonNull Object obj) {
        return this.torrentId.compareTo(((AdvancedTorrentInfo) obj).torrentId);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof AdvancedTorrentInfo)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        AdvancedTorrentInfo advancedTorrentInfo = (AdvancedTorrentInfo) obj;
        String str = this.torrentId;
        return (str == null || str.equals(advancedTorrentInfo.torrentId)) && this.totalSeeds == advancedTorrentInfo.totalSeeds && this.seeds == advancedTorrentInfo.seeds && this.downloadedPieces == advancedTorrentInfo.downloadedPieces && Arrays.equals(this.filesReceivedBytes, advancedTorrentInfo.filesReceivedBytes) && this.shareRatio == advancedTorrentInfo.shareRatio && this.activeTime == advancedTorrentInfo.activeTime && this.seedingTime == advancedTorrentInfo.seedingTime && this.availability == advancedTorrentInfo.availability && Arrays.equals(this.filesAvailability, advancedTorrentInfo.filesAvailability) && this.leechers == advancedTorrentInfo.leechers && this.totalLeechers == advancedTorrentInfo.totalLeechers;
    }

    @Override
    public int hashCode() {
        String str = this.torrentId;
        int iHashCode = (((((((str == null ? 0 : str.hashCode()) + 31 + Arrays.hashCode(this.filesReceivedBytes)) * 31) + this.totalSeeds) * 31) + this.seeds) * 31) + this.downloadedPieces;
        long jDoubleToLongBits = Double.doubleToLongBits(this.shareRatio);
        int i = ((iHashCode * 31) + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)))) * 31;
        long j = this.activeTime;
        int i2 = (i + ((int) (j ^ (j >>> 32)))) * 31;
        long j2 = this.seedingTime;
        int i3 = i2 + ((int) (j2 ^ (j2 >>> 32)));
        long jDoubleToLongBits2 = Double.doubleToLongBits(this.availability);
        return (((((i3 * 31) + ((int) (jDoubleToLongBits2 ^ (jDoubleToLongBits2 >>> 32))) + Arrays.hashCode(this.filesAvailability)) * 31) + this.leechers) * 31) + this.totalLeechers;
    }

    @NonNull
    public String toString() {
        return "AdvancedTorrentInfo{torrentId='" + this.torrentId + "', totalSeeds=" + this.totalSeeds + ", seeds=" + this.seeds + ", downloadedPieces=" + this.downloadedPieces + ", filesReceivedBytes=" + Arrays.toString(this.filesReceivedBytes) + ", shareRatio=" + this.shareRatio + ", activeTime=" + this.activeTime + ", seedingTime=" + this.seedingTime + ", availability=" + this.availability + ", filesAvailability=" + Arrays.toString(this.filesAvailability) + ", leechers=" + this.leechers + ", totalLeechers=" + this.totalLeechers + '}';
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.torrentId);
        parcel.writeLongArray(this.filesReceivedBytes);
        parcel.writeInt(this.totalSeeds);
        parcel.writeInt(this.seeds);
        parcel.writeInt(this.downloadedPieces);
        parcel.writeDouble(this.shareRatio);
        parcel.writeLong(this.activeTime);
        parcel.writeLong(this.seedingTime);
        parcel.writeDouble(this.availability);
        parcel.writeDoubleArray(this.filesAvailability);
        parcel.writeInt(this.leechers);
        parcel.writeInt(this.totalLeechers);
    }

    public AdvancedTorrentInfo(String str, long[] jArr, int i, int i2, int i3, double d, long j, long j2, double d2, double[] dArr, int i4, int i5) {
        super(str);
        this.torrentId = str;
        this.filesReceivedBytes = jArr;
        this.totalSeeds = i;
        this.seeds = i2;
        this.downloadedPieces = i3;
        this.shareRatio = d;
        this.activeTime = j;
        this.seedingTime = j2;
        this.availability = d2;
        this.filesAvailability = dArr;
        this.leechers = i4;
        this.totalLeechers = i5;
    }

    public AdvancedTorrentInfo(Parcel parcel) {
        super(parcel);
        this.torrentId = "";
        this.totalSeeds = 0;
        this.seeds = 0;
        this.downloadedPieces = 0;
        this.filesReceivedBytes = new long[0];
        this.shareRatio = 0.0d;
        this.activeTime = 0L;
        this.seedingTime = 0L;
        this.availability = 0.0d;
        this.filesAvailability = new double[0];
        this.torrentId = parcel.readString();
        this.filesReceivedBytes = parcel.createLongArray();
        this.totalSeeds = parcel.readInt();
        this.seeds = parcel.readInt();
        this.downloadedPieces = parcel.readInt();
        this.shareRatio = parcel.readDouble();
        this.activeTime = parcel.readLong();
        this.seedingTime = parcel.readLong();
        this.availability = parcel.readDouble();
        this.filesAvailability = parcel.createDoubleArray();
        this.leechers = parcel.readInt();
        this.totalLeechers = parcel.readInt();
    }
}
