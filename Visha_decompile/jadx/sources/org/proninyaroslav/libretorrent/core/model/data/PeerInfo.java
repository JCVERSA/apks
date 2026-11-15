package org.proninyaroslav.libretorrent.core.model.data;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import org.libtorrent4j.PieceIndexBitfield;
import org.libtorrent4j.TorrentStatus;
import org.proninyaroslav.libretorrent.core.model.session.AdvancedPeerInfo;

public class PeerInfo extends AbstractInfoParcel {
    public static final Parcelable.Creator<PeerInfo> CREATOR = new Parcelable.Creator<PeerInfo>() {
        @Override
        public PeerInfo createFromParcel(Parcel parcel) {
            return new PeerInfo(parcel);
        }

        @Override
        public PeerInfo[] newArray(int i) {
            return new PeerInfo[i];
        }
    };
    public String client;
    public int connectionType;
    public int downSpeed;
    public String ip;
    public int port;
    public int progress;
    public double relevance;
    public long totalDownload;
    public long totalUpload;
    public int upSpeed;

    public static class AnonymousClass2 {
        public static final int[] a;

        static {
            int[] iArr = new int[org.libtorrent4j.PeerInfo.ConnectionType.values().length];
            a = iArr;
            try {
                iArr[org.libtorrent4j.PeerInfo.ConnectionType.WEB_SEED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[org.libtorrent4j.PeerInfo.ConnectionType.HTTP_SEED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static class ConnectionType {
    }

    public PeerInfo(AdvancedPeerInfo advancedPeerInfo, TorrentStatus torrentStatus) {
        super(advancedPeerInfo.ip());
        this.ip = advancedPeerInfo.ip();
        this.client = advancedPeerInfo.client();
        this.totalDownload = advancedPeerInfo.totalDownload();
        this.totalUpload = advancedPeerInfo.totalUpload();
        this.relevance = calcRelevance(advancedPeerInfo, torrentStatus);
        this.connectionType = getConnectionType(advancedPeerInfo);
        this.port = advancedPeerInfo.port();
        this.progress = (int) (advancedPeerInfo.progress() * 100.0f);
        this.downSpeed = advancedPeerInfo.downSpeed();
        this.upSpeed = advancedPeerInfo.upSpeed();
    }

    private double calcRelevance(AdvancedPeerInfo advancedPeerInfo, TorrentStatus torrentStatus) {
        PieceIndexBitfield pieceIndexBitfieldPieces = torrentStatus.pieces();
        PieceIndexBitfield pieceIndexBitfieldPieces2 = advancedPeerInfo.pieces();
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < pieceIndexBitfieldPieces.size(); i3++) {
            if (!pieceIndexBitfieldPieces.getBit(i3)) {
                i++;
                if (pieceIndexBitfieldPieces2.getBit(i3)) {
                    i2++;
                }
            }
        }
        if (i != 0) {
            return ((double) i2) / ((double) i);
        }
        return 0.0d;
    }

    private int getConnectionType(AdvancedPeerInfo advancedPeerInfo) {
        if (advancedPeerInfo.isUtp()) {
            return 2;
        }
        int i = AnonymousClass2.a[advancedPeerInfo.connectionType().ordinal()];
        return (i == 1 || i == 2) ? 1 : 0;
    }

    @Override
    public int compareTo(@NonNull Object obj) {
        return this.ip.compareTo(((PeerInfo) obj).ip);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof PeerInfo)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        PeerInfo peerInfo = (PeerInfo) obj;
        String str = this.ip;
        if (str != null && !str.equals(peerInfo.ip)) {
            return false;
        }
        String str2 = this.client;
        return (str2 == null || str2.equals(peerInfo.client)) && this.totalDownload == peerInfo.totalDownload && this.totalUpload == peerInfo.totalUpload && this.relevance == peerInfo.relevance && this.connectionType == peerInfo.connectionType && this.port == peerInfo.port && this.progress == peerInfo.progress && this.downSpeed == peerInfo.downSpeed && this.upSpeed == peerInfo.upSpeed;
    }

    @Override
    public int hashCode() {
        String str = this.ip;
        int iHashCode = ((str == null ? 0 : str.hashCode()) + 31) * 31;
        String str2 = this.client;
        int iHashCode2 = str2 != null ? str2.hashCode() : 0;
        long j = this.totalDownload;
        int i = (((iHashCode + iHashCode2) * 31) + ((int) (j ^ (j >>> 32)))) * 31;
        long j2 = this.totalUpload;
        int i2 = i + ((int) (j2 ^ (j2 >>> 32)));
        long jDoubleToLongBits = Double.doubleToLongBits(this.relevance);
        return (((((((((((i2 * 31) + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)))) * 31) + this.connectionType) * 31) + this.port) * 31) + this.progress) * 31) + this.downSpeed) * 31) + this.upSpeed;
    }

    @NonNull
    public String toString() {
        return "PeerInfo{ip='" + this.ip + "', client='" + this.client + "', totalDownload=" + this.totalDownload + ", totalUpload=" + this.totalUpload + ", relevance=" + this.relevance + ", connectionType='" + this.connectionType + "', port=" + this.port + ", progress=" + this.progress + ", downSpeed=" + this.downSpeed + ", upSpeed=" + this.upSpeed + '}';
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.ip);
        parcel.writeString(this.client);
        parcel.writeLong(this.totalDownload);
        parcel.writeLong(this.totalUpload);
        parcel.writeDouble(this.relevance);
        parcel.writeInt(this.connectionType);
        parcel.writeInt(this.port);
        parcel.writeInt(this.progress);
        parcel.writeInt(this.downSpeed);
        parcel.writeInt(this.upSpeed);
    }

    public PeerInfo(String str, String str2, long j, long j2, double d, int i, int i2, int i3, int i4, int i5) {
        super(str);
        this.ip = str;
        this.client = str2;
        this.totalDownload = j;
        this.totalUpload = j2;
        this.relevance = d;
        this.connectionType = i;
        this.port = i2;
        this.progress = i3;
        this.downSpeed = i4;
        this.upSpeed = i5;
    }

    public PeerInfo(Parcel parcel) {
        super(parcel);
        this.ip = parcel.readString();
        this.client = parcel.readString();
        this.totalDownload = parcel.readLong();
        this.totalUpload = parcel.readLong();
        this.relevance = parcel.readDouble();
        this.connectionType = parcel.readInt();
        this.port = parcel.readInt();
        this.progress = parcel.readInt();
        this.downSpeed = parcel.readInt();
        this.upSpeed = parcel.readInt();
    }
}
