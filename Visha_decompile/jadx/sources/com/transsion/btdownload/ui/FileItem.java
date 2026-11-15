package com.transsion.btdownload.ui;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public class FileItem implements Parcelable, Comparable<FileItem> {
    public static final Parcelable.Creator<FileItem> CREATOR = new a();
    public int index;
    public boolean isFile;
    public String name;
    public long size;

    public class a implements Parcelable.Creator {
        @Override
        public FileItem createFromParcel(Parcel parcel) {
            return new FileItem(parcel);
        }

        @Override
        public FileItem[] newArray(int i) {
            return new FileItem[i];
        }
    }

    public FileItem(int i, String str, boolean z, long j) {
        this.index = i;
        this.name = str;
        this.isFile = z;
        this.size = j;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof FileItem)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        FileItem fileItem = (FileItem) obj;
        if (this.index != fileItem.index) {
            return false;
        }
        String str = this.name;
        return (str == null || str.equals(fileItem.name)) && this.isFile == fileItem.isFile;
    }

    public int hashCode() {
        String str = this.name;
        int iHashCode = 31 + (str == null ? 0 : str.hashCode());
        return this.isFile ? (iHashCode * 31) + this.index : iHashCode;
    }

    @NonNull
    public String toString() {
        return "FileItem{index=" + this.index + ", name='" + this.name + "', isFile=" + this.isFile + ", size=" + this.size + '}';
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.index);
        parcel.writeString(this.name);
        parcel.writeByte(this.isFile ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.size);
    }

    @Override
    public int compareTo(@NonNull FileItem fileItem) {
        return this.name.compareTo(fileItem.name);
    }

    public FileItem(Parcel parcel) {
        this.index = parcel.readInt();
        this.name = parcel.readString();
        this.isFile = parcel.readByte() != 0;
        this.size = parcel.readLong();
    }
}
