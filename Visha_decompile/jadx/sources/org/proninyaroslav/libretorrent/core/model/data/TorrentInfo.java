package org.proninyaroslav.libretorrent.core.model.data;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.proninyaroslav.libretorrent.core.model.data.entity.TagInfo;

public class TorrentInfo extends AbstractInfoParcel {
    public static final Parcelable.Creator<TorrentInfo> CREATOR = new Parcelable.Creator<TorrentInfo>() {
        @Override
        public TorrentInfo createFromParcel(Parcel parcel) {
            return new TorrentInfo(parcel);
        }

        @Override
        public TorrentInfo[] newArray(int i) {
            return new TorrentInfo[i];
        }
    };
    public static final long MAX_ETA = 8640000;
    public long ETA;
    public long dateAdded;
    public long downloadSpeed;
    public String error;
    public Priority[] filePriorities;
    public long[] fileSizesBytes;
    public long[] filesReceivedBytes;
    public int finishFileCount;
    public boolean firstLastPiecePriority;
    public String name;
    public int peers;
    public int progress;
    public long receivedBytes;
    public boolean sequentialDownload;
    public TorrentStateCode stateCode;
    public List<TagInfo> tags;

    @NonNull
    public String torrentId;
    public long totalBytes;
    public int totalPeers;
    public long uploadSpeed;
    public long uploadedBytes;
    public int wantFileCount;

    public TorrentInfo(@NonNull String str, String str2, long j, String str3, @NonNull List<TagInfo> list) {
        super(str);
        this.progress = 0;
        this.receivedBytes = 0L;
        this.uploadedBytes = 0L;
        this.totalBytes = 0L;
        this.downloadSpeed = 0L;
        this.uploadSpeed = 0L;
        this.ETA = MAX_ETA;
        this.totalPeers = 0;
        this.peers = 0;
        this.sequentialDownload = false;
        this.filePriorities = new Priority[0];
        this.firstLastPiecePriority = false;
        this.torrentId = str;
        this.name = str2;
        this.stateCode = TorrentStateCode.STOPPED;
        this.dateAdded = j;
        this.error = str3;
        this.tags = list;
    }

    public void calculateFileCount() {
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            Priority[] priorityArr = this.filePriorities;
            if (i >= priorityArr.length) {
                this.wantFileCount = i2;
                this.finishFileCount = i3;
                return;
            } else {
                if (!Priority.IGNORE.equals(priorityArr[i])) {
                    i2++;
                    if (this.fileSizesBytes[i] <= this.filesReceivedBytes[i]) {
                        i3++;
                    }
                }
                i++;
            }
        }
    }

    @Override
    public int compareTo(@NonNull Object obj) {
        return this.name.compareTo(((TorrentInfo) obj).name);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.torrentId.equals(((TorrentInfo) obj).torrentId);
    }

    public int getFinishFileCount() {
        return this.finishFileCount;
    }

    public int getWantFileCount() {
        return this.wantFileCount;
    }

    @Override
    public int hashCode() {
        return this.torrentId.hashCode();
    }

    public void setFinishFileCount(int i) {
        this.finishFileCount = i;
    }

    public void setWantFileCount(int i) {
        this.wantFileCount = i;
    }

    @NonNull
    public String toString() {
        return "TorrentInfo{torrentId='" + this.torrentId + "', name='" + this.name + "', stateCode=" + this.stateCode + ", progress=" + this.progress + ", receivedBytes=" + this.receivedBytes + ", uploadedBytes=" + this.uploadedBytes + ", totalBytes=" + this.totalBytes + ", downloadSpeed=" + this.downloadSpeed + ", uploadSpeed=" + this.uploadSpeed + ", ETA=" + this.ETA + ", dateAdded=" + this.dateAdded + ", totalPeers=" + this.totalPeers + ", peers=" + this.peers + ", error='" + this.error + "', sequentialDownload=" + this.sequentialDownload + ", filePriorities=" + Arrays.toString(this.filePriorities) + ", tags=" + this.tags + ", firstLastPiecePriority=" + this.firstLastPiecePriority + '}';
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.torrentId);
        parcel.writeString(this.name);
        parcel.writeInt(this.stateCode.value());
        parcel.writeInt(this.progress);
        parcel.writeLong(this.receivedBytes);
        parcel.writeLong(this.uploadedBytes);
        parcel.writeLong(this.totalBytes);
        parcel.writeLong(this.downloadSpeed);
        parcel.writeLong(this.uploadSpeed);
        parcel.writeLong(this.ETA);
        parcel.writeLong(this.dateAdded);
        parcel.writeInt(this.totalPeers);
        parcel.writeInt(this.peers);
        parcel.writeString(this.error);
        parcel.writeByte(this.sequentialDownload ? (byte) 1 : (byte) 0);
        parcel.writeArray(this.filePriorities);
        parcel.writeTypedList(this.tags);
        parcel.writeByte(this.firstLastPiecePriority ? (byte) 1 : (byte) 0);
    }

    public TorrentInfo(@NonNull String str, String str2, TorrentStateCode torrentStateCode, int i, long j, long j2, long j3, long j4, long j5, long j6, long j7, int i2, int i3, String str3, boolean z, Priority[] priorityArr, @NonNull List<TagInfo> list, boolean z2) {
        super(str);
        this.torrentId = str;
        this.name = str2;
        this.stateCode = torrentStateCode;
        this.progress = i;
        this.receivedBytes = j;
        this.uploadedBytes = j2;
        this.totalBytes = j3;
        this.downloadSpeed = j4;
        this.uploadSpeed = j5;
        this.ETA = j6;
        this.dateAdded = j7;
        this.totalPeers = i2;
        this.peers = i3;
        this.error = str3;
        this.sequentialDownload = z;
        this.filePriorities = priorityArr;
        this.tags = list;
        this.firstLastPiecePriority = z2;
    }

    public TorrentInfo(@NonNull String str, String str2, TorrentStateCode torrentStateCode, int i, long j, long j2, long j3, long j4, String str3, Priority[] priorityArr, long[] jArr, long[] jArr2) {
        super(str);
        this.uploadedBytes = 0L;
        this.uploadSpeed = 0L;
        this.ETA = MAX_ETA;
        this.totalPeers = 0;
        this.peers = 0;
        this.sequentialDownload = false;
        this.firstLastPiecePriority = false;
        this.torrentId = str;
        this.name = str2;
        this.stateCode = torrentStateCode;
        this.progress = i;
        this.receivedBytes = j;
        this.totalBytes = j2;
        this.downloadSpeed = j3;
        this.dateAdded = j4;
        this.error = str3;
        this.filePriorities = priorityArr;
        this.filesReceivedBytes = jArr;
        this.fileSizesBytes = jArr2;
    }

    public TorrentInfo(Parcel parcel) {
        super(parcel);
        this.progress = 0;
        this.receivedBytes = 0L;
        this.uploadedBytes = 0L;
        this.totalBytes = 0L;
        this.downloadSpeed = 0L;
        this.uploadSpeed = 0L;
        this.ETA = MAX_ETA;
        this.totalPeers = 0;
        this.peers = 0;
        this.sequentialDownload = false;
        this.filePriorities = new Priority[0];
        this.firstLastPiecePriority = false;
        this.torrentId = parcel.readString();
        this.name = parcel.readString();
        this.stateCode = TorrentStateCode.fromValue(parcel.readInt());
        this.progress = parcel.readInt();
        this.receivedBytes = parcel.readLong();
        this.uploadedBytes = parcel.readLong();
        this.totalBytes = parcel.readLong();
        this.downloadSpeed = parcel.readLong();
        this.uploadSpeed = parcel.readLong();
        this.ETA = parcel.readLong();
        this.dateAdded = parcel.readLong();
        this.totalPeers = parcel.readInt();
        this.peers = parcel.readInt();
        this.error = parcel.readString();
        this.sequentialDownload = parcel.readByte() != 0;
        this.filePriorities = (Priority[]) parcel.readArray(Priority.class.getClassLoader());
        ArrayList arrayList = new ArrayList();
        this.tags = arrayList;
        parcel.readTypedList(arrayList, TagInfo.CREATOR);
        this.firstLastPiecePriority = parcel.readByte() != 0;
    }
}
