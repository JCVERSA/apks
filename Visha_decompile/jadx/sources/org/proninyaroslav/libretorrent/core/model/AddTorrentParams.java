package org.proninyaroslav.libretorrent.core.model;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import java.util.Arrays;
import java.util.List;
import org.proninyaroslav.libretorrent.core.model.data.Priority;
import org.proninyaroslav.libretorrent.core.model.data.entity.TagInfo;

public class AddTorrentParams implements Parcelable {
    public static final Parcelable.Creator<AddTorrentParams> CREATOR = new Parcelable.Creator<AddTorrentParams>() {
        @Override
        public AddTorrentParams createFromParcel(Parcel parcel) {
            return new AddTorrentParams(parcel);
        }

        @Override
        public AddTorrentParams[] newArray(int i) {
            return new AddTorrentParams[i];
        }
    };
    public boolean addPaused;

    @NonNull
    public Uri downloadPath;
    public Priority[] filePriorities;
    public boolean firstLastPiecePriority;
    public boolean fromMagnet;

    @NonNull
    public String name;
    public boolean sequentialDownload;

    @NonNull
    public String sha1hash;

    @NonNull
    public String source;

    @NonNull
    public List<TagInfo> tags;

    public AddTorrentParams(@NonNull String str, boolean z, @NonNull String str2, @NonNull String str3, Priority[] priorityArr, @NonNull Uri uri, boolean z2, boolean z3, @NonNull List<TagInfo> list, boolean z4) {
        this.source = str;
        this.fromMagnet = z;
        this.sha1hash = str2;
        this.name = str3;
        this.filePriorities = priorityArr;
        this.downloadPath = uri;
        this.sequentialDownload = z2;
        this.addPaused = z3;
        this.tags = list;
        this.firstLastPiecePriority = z4;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public int hashCode() {
        return this.sha1hash.hashCode();
    }

    @NonNull
    public String toString() {
        return "AddTorrentParams{source='" + this.source + "', fromMagnet=" + this.fromMagnet + ", sha1hash='" + this.sha1hash + "', name='" + this.name + "', filePriorities=" + Arrays.toString(this.filePriorities) + ", downloadPath=" + this.downloadPath + ", sequentialDownload=" + this.sequentialDownload + ", addPaused=" + this.addPaused + ", tags=" + this.tags + ", firstLastPiecePriority=" + this.firstLastPiecePriority + '}';
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.source);
        parcel.writeByte(this.fromMagnet ? (byte) 1 : (byte) 0);
        parcel.writeString(this.sha1hash);
        parcel.writeString(this.name);
        parcel.writeArray(this.filePriorities);
        parcel.writeParcelable(this.downloadPath, i);
        parcel.writeByte(this.sequentialDownload ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.addPaused ? (byte) 1 : (byte) 0);
        parcel.writeTypedList(this.tags);
        parcel.writeByte(this.firstLastPiecePriority ? (byte) 1 : (byte) 0);
    }

    public AddTorrentParams(Parcel parcel) {
        this.source = parcel.readString();
        this.fromMagnet = parcel.readByte() != 0;
        this.sha1hash = parcel.readString();
        this.name = parcel.readString();
        this.filePriorities = (Priority[]) parcel.readArray(Priority.class.getClassLoader());
        this.downloadPath = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.sequentialDownload = parcel.readByte() != 0;
        this.addPaused = parcel.readByte() != 0;
        this.tags = parcel.readArrayList(TagInfo.class.getClassLoader());
        this.firstLastPiecePriority = parcel.readByte() != 0;
    }
}
