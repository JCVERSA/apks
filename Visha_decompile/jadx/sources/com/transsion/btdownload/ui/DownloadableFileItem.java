package com.transsion.btdownload.ui;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import org.proninyaroslav.libretorrent.core.model.filetree.BencodeFileTree;

public class DownloadableFileItem extends FileItem {
    public static final Parcelable.Creator<DownloadableFileItem> CREATOR = new a();
    public boolean selected;

    public class a implements Parcelable.Creator {
        @Override
        public DownloadableFileItem createFromParcel(Parcel parcel) {
            return new DownloadableFileItem(parcel);
        }

        @Override
        public DownloadableFileItem[] newArray(int i) {
            return new DownloadableFileItem[i];
        }
    }

    public DownloadableFileItem(@NonNull BencodeFileTree bencodeFileTree) {
        super(bencodeFileTree.getIndex(), bencodeFileTree.getName(), bencodeFileTree.isFile(), bencodeFileTree.size());
        this.selected = bencodeFileTree.isSelected();
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    @NonNull
    public String toString() {
        return "DownloadableFileItem{" + super.toString() + "selected=" + this.selected + '}';
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeByte(this.selected ? (byte) 1 : (byte) 0);
    }

    public DownloadableFileItem(Parcel parcel) {
        super(parcel);
        this.selected = parcel.readByte() != 0;
    }
}
