package org.proninyaroslav.libretorrent.core.model.data.entity;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.room.Entity;
import androidx.room.Ignore;
import androidx.room.PrimaryKey;
import java.text.DateFormat;
import java.util.Date;

@Entity
public class Torrent implements Parcelable {
    public static final Parcelable.Creator<Torrent> CREATOR = new Parcelable.Creator<Torrent>() {
        @Override
        public Torrent createFromParcel(Parcel parcel) {
            return new Torrent(parcel);
        }

        @Override
        public Torrent[] newArray(int i) {
            return new Torrent[i];
        }
    };
    public static final int VISIBILITY_HIDDEN = 1;
    public static final int VISIBILITY_VISIBLE_NOTIFY_FINISHED = 0;
    public long dateAdded;

    @NonNull
    public Uri downloadPath;
    public boolean downloadingMetadata;
    public String error;
    public boolean firstLastPiecePriority;

    @NonNull
    @PrimaryKey
    public String id;
    private String magnet;
    public boolean manuallyPaused;

    @NonNull
    public String name;
    public boolean sequentialDownload;
    public int visibility;

    @Ignore
    public Torrent(@NonNull String str, @NonNull Uri uri, @NonNull String str2, boolean z, long j, boolean z2, boolean z3) {
        this.downloadingMetadata = false;
        this.visibility = 0;
        this.id = str;
        this.name = str2;
        this.downloadPath = uri;
        this.manuallyPaused = z;
        this.dateAdded = j;
        this.sequentialDownload = z2;
        this.firstLastPiecePriority = z3;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        return (obj instanceof Torrent) && (obj == this || this.id.equals(((Torrent) obj).id));
    }

    public String getMagnet() {
        return this.magnet;
    }

    public int hashCode() {
        return this.id.hashCode();
    }

    public boolean isDownloadingMetadata() {
        return this.downloadingMetadata;
    }

    public void setMagnetUri(String str) {
        this.magnet = str;
        this.downloadingMetadata = str != null;
    }

    @NonNull
    public String toString() {
        return "Torrent{id='" + this.id + "', name='" + this.name + "', downloadPath=" + this.downloadPath + ", dateAdded=" + DateFormat.getDateTimeInstance().format(new Date(this.dateAdded)) + ", error='" + this.error + "', manuallyPaused=" + this.manuallyPaused + ", sequentialDownload=" + this.sequentialDownload + ", magnet='" + this.magnet + "', downloadingMetadata=" + this.downloadingMetadata + ", visibility=" + this.visibility + ", firstLastPiecePriority=" + this.firstLastPiecePriority + '}';
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.id);
        parcel.writeString(this.magnet);
        parcel.writeParcelable(this.downloadPath, i);
        parcel.writeString(this.name);
        parcel.writeByte(this.downloadingMetadata ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.dateAdded);
        parcel.writeString(this.error);
        parcel.writeByte(this.manuallyPaused ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.visibility);
        parcel.writeByte(this.sequentialDownload ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.firstLastPiecePriority ? (byte) 1 : (byte) 0);
    }

    public Torrent(@NonNull String str, String str2, @NonNull Uri uri, @NonNull String str3, boolean z, long j, boolean z2, boolean z3) {
        this(str, uri, str3, z, j, z2, z3);
        this.magnet = str2;
    }

    @Ignore
    public Torrent(Parcel parcel) {
        this.downloadingMetadata = false;
        this.visibility = 0;
        this.id = parcel.readString();
        this.magnet = parcel.readString();
        this.downloadPath = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.name = parcel.readString();
        this.downloadingMetadata = parcel.readByte() != 0;
        this.dateAdded = parcel.readLong();
        this.error = parcel.readString();
        this.manuallyPaused = parcel.readByte() != 0;
        this.visibility = parcel.readInt();
        this.sequentialDownload = parcel.readByte() != 0;
        this.firstLastPiecePriority = parcel.readByte() != 0;
    }
}
