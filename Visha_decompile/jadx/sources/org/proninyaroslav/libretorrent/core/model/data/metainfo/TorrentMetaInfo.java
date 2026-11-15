package org.proninyaroslav.libretorrent.core.model.data.metainfo;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import java.io.FileInputStream;
import java.util.ArrayList;
import org.apache.commons.io.IOUtils;
import org.libtorrent4j.AddTorrentParams;
import org.libtorrent4j.TorrentInfo;
import org.libtorrent4j.Vectors;
import org.libtorrent4j.swig.bdecode_node;
import org.libtorrent4j.swig.byte_vector;
import org.libtorrent4j.swig.error_code;
import org.libtorrent4j.swig.libtorrent;
import org.proninyaroslav.libretorrent.core.exception.DecodeException;
import org.proninyaroslav.libretorrent.core.utils.Utils;

public class TorrentMetaInfo implements Parcelable {
    public static final Parcelable.Creator<TorrentMetaInfo> CREATOR = new Parcelable.Creator<TorrentMetaInfo>() {
        @Override
        public TorrentMetaInfo createFromParcel(Parcel parcel) {
            return new TorrentMetaInfo(parcel);
        }

        @Override
        public TorrentMetaInfo[] newArray(int i) {
            return new TorrentMetaInfo[i];
        }
    };

    @NonNull
    public String comment;

    @NonNull
    public String createdBy;
    public long creationDate;
    public int fileCount;
    public ArrayList<BencodeFileItem> fileList;
    public int numPieces;
    public int pieceLength;

    @NonNull
    public String sha1Hash;

    @NonNull
    public String torrentName;
    public long torrentSize;

    public TorrentMetaInfo(@NonNull String str, @NonNull String str2) {
        this.torrentName = "";
        this.sha1Hash = "";
        this.comment = "";
        this.createdBy = "";
        this.torrentSize = 0L;
        this.creationDate = 0L;
        this.fileCount = 0;
        this.pieceLength = 0;
        this.numPieces = 0;
        this.fileList = new ArrayList<>();
        this.torrentName = str;
        this.sha1Hash = str2;
    }

    private void getMetaInfo(AddTorrentParams addTorrentParams, TorrentInfo torrentInfo) {
        this.torrentName = torrentInfo.name();
        this.sha1Hash = torrentInfo.infoHash().toHex();
        if (addTorrentParams != null) {
            String comment = addTorrentParams.getComment();
            if (comment == null) {
                comment = "";
            }
            this.comment = comment;
            String createdBy = addTorrentParams.getCreatedBy();
            this.createdBy = createdBy != null ? createdBy : "";
            this.creationDate = addTorrentParams.getCreationDate() * 1000;
        } else {
            this.comment = "";
            this.createdBy = "";
            this.creationDate = 0L;
        }
        this.torrentSize = torrentInfo.totalSize();
        this.fileCount = torrentInfo.numFiles();
        this.fileList = Utils.c(torrentInfo.files());
        this.pieceLength = torrentInfo.pieceLength();
        this.numPieces = torrentInfo.numPieces();
    }

    private void getMetaInfoFromBencode(@NonNull byte[] bArr) {
        byte_vector byte_vectorVarBytes2byte_vector = Vectors.bytes2byte_vector(bArr);
        bdecode_node bdecode_nodeVar = new bdecode_node();
        error_code error_codeVar = new error_code();
        if (bdecode_node.bdecode(byte_vectorVarBytes2byte_vector, bdecode_nodeVar, error_codeVar) != 0) {
            throw new IllegalArgumentException(error_codeVar.message());
        }
        AddTorrentParams addTorrentParams = new AddTorrentParams(libtorrent.load_torrent_parsed(bdecode_nodeVar));
        TorrentInfo torrentInfo = addTorrentParams.getTorrentInfo();
        if (torrentInfo == null || !torrentInfo.isValid()) {
            throw new IllegalArgumentException("Invalid torrent");
        }
        getMetaInfo(addTorrentParams, torrentInfo);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof TorrentMetaInfo)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        TorrentMetaInfo torrentMetaInfo = (TorrentMetaInfo) obj;
        return this.torrentName.equals(torrentMetaInfo.torrentName) && this.sha1Hash.equals(torrentMetaInfo.sha1Hash) && this.comment.equals(torrentMetaInfo.comment) && this.createdBy.equals(torrentMetaInfo.createdBy) && this.torrentSize == torrentMetaInfo.torrentSize && this.creationDate == torrentMetaInfo.creationDate && this.fileCount == torrentMetaInfo.fileCount && this.pieceLength == torrentMetaInfo.pieceLength && this.numPieces == torrentMetaInfo.numPieces;
    }

    public int hashCode() {
        return this.sha1Hash.hashCode();
    }

    @NonNull
    public String toString() {
        return "TorrentMetaInfo{torrentName='" + this.torrentName + "', sha1Hash='" + this.sha1Hash + "', comment='" + this.comment + "', createdBy='" + this.createdBy + "', torrentSize=" + this.torrentSize + ", creationDate=" + this.creationDate + ", fileCount=" + this.fileCount + ", pieceLength=" + this.pieceLength + ", numPieces=" + this.numPieces + ", fileList=" + this.fileList + '}';
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.torrentName);
        parcel.writeString(this.sha1Hash);
        parcel.writeString(this.comment);
        parcel.writeString(this.createdBy);
        parcel.writeLong(this.torrentSize);
        parcel.writeLong(this.creationDate);
        parcel.writeInt(this.fileCount);
        parcel.writeTypedList(this.fileList);
        parcel.writeInt(this.pieceLength);
        parcel.writeInt(this.numPieces);
    }

    public TorrentMetaInfo(@NonNull byte[] bArr) throws DecodeException {
        this.torrentName = "";
        this.sha1Hash = "";
        this.comment = "";
        this.createdBy = "";
        this.torrentSize = 0L;
        this.creationDate = 0L;
        this.fileCount = 0;
        this.pieceLength = 0;
        this.numPieces = 0;
        this.fileList = new ArrayList<>();
        try {
            getMetaInfoFromBencode(bArr);
        } catch (Exception e) {
            throw new DecodeException(e);
        }
    }

    public TorrentMetaInfo(TorrentInfo torrentInfo) throws DecodeException {
        this.torrentName = "";
        this.sha1Hash = "";
        this.comment = "";
        this.createdBy = "";
        this.torrentSize = 0L;
        this.creationDate = 0L;
        this.fileCount = 0;
        this.pieceLength = 0;
        this.numPieces = 0;
        this.fileList = new ArrayList<>();
        try {
            getMetaInfo(null, torrentInfo);
        } catch (Exception e) {
            throw new DecodeException(e);
        }
    }

    public TorrentMetaInfo(FileInputStream fileInputStream) throws DecodeException {
        this.torrentName = "";
        this.sha1Hash = "";
        this.comment = "";
        this.createdBy = "";
        this.torrentSize = 0L;
        this.creationDate = 0L;
        this.fileCount = 0;
        this.pieceLength = 0;
        this.numPieces = 0;
        this.fileList = new ArrayList<>();
        try {
            getMetaInfoFromBencode(IOUtils.toByteArray(fileInputStream));
        } catch (Exception e) {
            throw new DecodeException(e);
        }
    }

    public TorrentMetaInfo(Parcel parcel) {
        this.torrentName = "";
        this.sha1Hash = "";
        this.comment = "";
        this.createdBy = "";
        this.torrentSize = 0L;
        this.creationDate = 0L;
        this.fileCount = 0;
        this.pieceLength = 0;
        this.numPieces = 0;
        this.fileList = new ArrayList<>();
        this.torrentName = parcel.readString();
        this.sha1Hash = parcel.readString();
        this.comment = parcel.readString();
        this.createdBy = parcel.readString();
        this.torrentSize = parcel.readLong();
        this.creationDate = parcel.readLong();
        this.fileCount = parcel.readInt();
        ArrayList<BencodeFileItem> arrayList = new ArrayList<>();
        this.fileList = arrayList;
        parcel.readTypedList(arrayList, BencodeFileItem.CREATOR);
        this.pieceLength = parcel.readInt();
        this.numPieces = parcel.readInt();
    }
}
