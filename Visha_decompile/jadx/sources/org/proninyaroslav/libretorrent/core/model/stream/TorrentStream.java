package org.proninyaroslav.libretorrent.core.model.stream;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import org.proninyaroslav.libretorrent.core.utils.Utils;

public class TorrentStream implements Parcelable {
    public static final Parcelable.Creator<TorrentStream> CREATOR = new Parcelable.Creator<TorrentStream>() {
        @Override
        public TorrentStream createFromParcel(Parcel parcel) {
            return new TorrentStream(parcel);
        }

        @Override
        public TorrentStream[] newArray(int i) {
            return new TorrentStream[i];
        }
    };
    public long fileOffset;
    public long fileSize;
    public int firstFilePiece;
    public String id;
    public int lastFilePiece;
    public int lastFilePieceSize;
    public int pieceLength;
    public int selectedFileIndex;
    public String torrentId;

    public TorrentStream(String str, int i, int i2, int i3, int i4, long j, long j2, int i5) {
        this.id = Utils.h(str + i);
        this.torrentId = str;
        this.lastFilePiece = i3;
        this.firstFilePiece = i2;
        this.pieceLength = i4;
        this.selectedFileIndex = i;
        this.fileOffset = j;
        this.fileSize = j2;
        this.lastFilePieceSize = i5;
    }

    public int bytesToPieceIndex(long j) {
        return this.firstFilePiece + ((int) (j / ((long) this.pieceLength)));
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        return (obj instanceof TorrentStream) && (obj == this || this.id.equals(((TorrentStream) obj).id));
    }

    public int hashCode() {
        return this.id.hashCode();
    }

    @NonNull
    public String toString() {
        return "TorrentStream{id='" + this.id + "', torrentId='" + this.torrentId + "', selectedFileIndex=" + this.selectedFileIndex + ", firstFilePiece=" + this.firstFilePiece + ", lastFilePiece=" + this.lastFilePiece + ", lastFilePieceSize=" + this.lastFilePieceSize + ", fileOffset=" + this.fileOffset + ", fileSize=" + this.fileSize + ", pieceLength=" + this.pieceLength + '}';
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.id);
        parcel.writeString(this.torrentId);
        parcel.writeInt(this.selectedFileIndex);
        parcel.writeInt(this.firstFilePiece);
        parcel.writeInt(this.lastFilePiece);
        parcel.writeInt(this.lastFilePieceSize);
        parcel.writeLong(this.fileOffset);
        parcel.writeLong(this.fileSize);
        parcel.writeInt(this.pieceLength);
    }

    public TorrentStream(Parcel parcel) {
        this.id = parcel.readString();
        this.torrentId = parcel.readString();
        this.selectedFileIndex = parcel.readInt();
        this.firstFilePiece = parcel.readInt();
        this.lastFilePiece = parcel.readInt();
        this.lastFilePieceSize = parcel.readInt();
        this.fileOffset = parcel.readLong();
        this.fileSize = parcel.readLong();
        this.pieceLength = parcel.readInt();
    }
}
