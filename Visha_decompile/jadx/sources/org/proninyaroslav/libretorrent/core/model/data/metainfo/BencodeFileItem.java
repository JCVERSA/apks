package org.proninyaroslav.libretorrent.core.model.data.metainfo;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;

public class BencodeFileItem implements Parcelable, Comparable<BencodeFileItem> {
    public static final Parcelable.Creator<BencodeFileItem> CREATOR = new Parcelable.Creator<BencodeFileItem>() {
        @Override
        public BencodeFileItem createFromParcel(Parcel parcel) {
            return new BencodeFileItem(parcel);
        }

        @Override
        public BencodeFileItem[] newArray(int i) {
            return new BencodeFileItem[i];
        }
    };
    private int index;
    private String path;
    private long size;

    public BencodeFileItem(String str, int i, long j) {
        this.path = str;
        this.index = i;
        this.size = j;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public int getIndex() {
        return this.index;
    }

    public String getPath() {
        return this.path;
    }

    public long getSize() {
        return this.size;
    }

    public void setIndex(int i) {
        this.index = i;
    }

    public void setPath(String str) {
        this.path = str;
    }

    public void setSize(long j) {
        this.size = j;
    }

    @NonNull
    public String toString() {
        return "BencodeFileItem{path='" + this.path + "', index=" + this.index + ", size=" + this.size + '}';
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.path);
        parcel.writeInt(this.index);
        parcel.writeLong(this.size);
    }

    @Override
    public int compareTo(@NonNull BencodeFileItem bencodeFileItem) {
        return this.path.compareTo(bencodeFileItem.path);
    }

    public BencodeFileItem(Parcel parcel) {
        this.path = parcel.readString();
        this.index = parcel.readInt();
        this.size = parcel.readLong();
    }
}
