package org.proninyaroslav.libretorrent.core.model.data;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import java.util.List;

public class MagnetInfo implements Parcelable {
    public static final Parcelable.Creator<MagnetInfo> CREATOR = new Parcelable.Creator<MagnetInfo>() {
        @Override
        public MagnetInfo createFromParcel(Parcel parcel) {
            return new MagnetInfo(parcel);
        }

        @Override
        public MagnetInfo[] newArray(int i) {
            return new MagnetInfo[i];
        }
    };
    private List<Priority> filePriorities;
    private String name;
    private String sha1hash;
    private String uri;

    public MagnetInfo(String str, String str2, String str3, List<Priority> list) {
        this.uri = str;
        this.sha1hash = str2;
        this.name = str3;
        this.filePriorities = list;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public List<Priority> getFilePriorities() {
        return this.filePriorities;
    }

    public String getName() {
        return this.name;
    }

    public String getSha1hash() {
        return this.sha1hash;
    }

    public String getUri() {
        return this.uri;
    }

    public int hashCode() {
        return this.sha1hash.hashCode();
    }

    @NonNull
    public String toString() {
        return "MagnetInfo{uri='" + this.uri + "', sha1hash='" + this.sha1hash + "', name='" + this.name + "', filePriorities=" + this.filePriorities + '}';
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.uri);
        parcel.writeString(this.sha1hash);
        parcel.writeString(this.name);
        parcel.writeList(this.filePriorities);
    }

    public MagnetInfo(Parcel parcel) {
        this.uri = parcel.readString();
        this.sha1hash = parcel.readString();
        this.name = parcel.readString();
        this.filePriorities = parcel.readArrayList(Priority.class.getClassLoader());
    }
}
