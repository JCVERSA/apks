package com.transsion.dbdata.beans.media;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import java.util.ArrayList;

public class MediaBucket implements Parcelable, Cloneable {
    public static final Parcelable.Creator<MediaBucket> CREATOR = new Parcelable.Creator<MediaBucket>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public MediaBucket createFromParcel(Parcel parcel) {
            return new MediaBucket(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public MediaBucket[] newArray(int i) {
            return new MediaBucket[i];
        }
    };
    public static final int URI_TYPE_IMG = 1;
    public static final int URI_TYPE_MUSIC = 0;
    public String artist;
    public long bucketId;
    public int count;
    public long dateModified;
    public boolean fromInternal;
    public boolean generateForVskitAd;
    public int index;
    public boolean isCustomCover;
    public boolean isLabelFolder;
    public boolean isVirtualFolder;
    public String labelSrcId;
    public ArrayList<String> mediaItemDataList;
    public String parentName;
    public String parentPath;
    public String relativePath;
    public Uri uri;
    public int uriType;
    public String virtualFolderMatchName;

    public MediaBucket() {
        this.isVirtualFolder = false;
        this.virtualFolderMatchName = "";
        this.mediaItemDataList = new ArrayList<>();
        this.fromInternal = false;
        this.count = 1;
    }

    @NonNull
    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof MediaBucket)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        MediaBucket mediaBucket = (MediaBucket) obj;
        return mediaBucket.bucketId == this.bucketId && mediaBucket.isVirtualFolder == this.isVirtualFolder && mediaBucket.virtualFolderMatchName == this.virtualFolderMatchName;
    }

    public long getBucketId() {
        return this.bucketId;
    }

    public int getCount() {
        return this.count;
    }

    public long getDateModified() {
        return this.dateModified;
    }

    public int getIndex() {
        return this.index;
    }

    public String getLabelSrcId() {
        return this.labelSrcId;
    }

    public String getParentName() {
        return this.parentName;
    }

    public String getParentPath() {
        return this.parentPath;
    }

    public String getRelativePath() {
        return this.relativePath;
    }

    public Uri getUri() {
        return this.uri;
    }

    public int getUriType() {
        return this.uriType;
    }

    public String getVirtualFolderMatchName() {
        return this.virtualFolderMatchName;
    }

    public boolean isContainPlayAudioItem(MediaItem mediaItem) {
        String str;
        return (mediaItem == null || (str = this.parentPath) == null || !str.equals(mediaItem.parentPath)) ? false : true;
    }

    public boolean isContainPlayItem(MediaItem mediaItem, int i) {
        if (i == 25) {
            return mediaItem != null && this.parentName.equals(((AudioItem) mediaItem).albumName);
        }
        if (i == 26) {
            return mediaItem != null && this.parentName.equals(((AudioItem) mediaItem).artistName);
        }
        return mediaItem != null && this.bucketId == mediaItem.bucketId && this.isVirtualFolder == mediaItem.isVirtualFolder && this.virtualFolderMatchName.equals(mediaItem.virtualFolderMatchName);
    }

    public boolean isGenerateForVskitAd() {
        return this.generateForVskitAd;
    }

    public boolean isLabelFolder() {
        return this.isLabelFolder;
    }

    public boolean isVirtualFolder() {
        return this.isVirtualFolder;
    }

    public MediaBucket setBucketId(long j) {
        this.bucketId = j;
        return this;
    }

    public void setCount(int i) {
        this.count = i;
    }

    public void setDateModified(long j) {
        this.dateModified = j;
    }

    public MediaBucket setFromInternal(boolean z) {
        this.fromInternal = z;
        return this;
    }

    public void setGenerateForVskitAd(boolean z) {
        this.generateForVskitAd = z;
    }

    public void setIndex(int i) {
        this.index = i;
    }

    public void setLabelFolder(boolean z) {
        this.isLabelFolder = z;
    }

    public void setLabelSrcId(String str) {
        this.labelSrcId = str;
    }

    public void setParentName(String str) {
        this.parentName = str;
    }

    public void setParentPath(String str) {
        this.parentPath = str;
    }

    public void setRelativePath(String str) {
        this.relativePath = str;
    }

    public void setUri(Uri uri) {
        this.uri = uri;
    }

    public void setUriType(int i) {
        this.uriType = i;
    }

    public void setVirtualFolder(boolean z) {
        this.isVirtualFolder = z;
    }

    public void setVirtualFolderMatchName(String str) {
        this.virtualFolderMatchName = str;
    }

    public String toString() {
        return "MediaBucket{bucketId=" + this.bucketId + ", count=" + this.count + ", dateModified=" + this.dateModified + ", parentName='" + this.parentName + "', uri=" + this.uri + ", parentPath='" + this.parentPath + "', relativePath='" + this.relativePath + ", fromInternal=" + this.fromInternal + ", isLabelFolder=" + this.isLabelFolder + ", mediaItemDataList=" + this.mediaItemDataList.size() + ", isVirtualFolder=" + this.isVirtualFolder + '}';
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.bucketId);
        parcel.writeInt(this.count);
        parcel.writeString(this.parentName);
        parcel.writeParcelable(this.uri, i);
        parcel.writeString(this.parentPath);
        parcel.writeByte(this.isLabelFolder ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.isVirtualFolder ? (byte) 1 : (byte) 0);
        parcel.writeString(this.virtualFolderMatchName);
        parcel.writeInt(this.index);
        parcel.writeString(this.labelSrcId);
        parcel.writeLong(this.dateModified);
        parcel.writeString(this.relativePath);
        parcel.writeInt(this.isCustomCover ? 1 : 0);
    }

    public MediaBucket(Parcel parcel) {
        this.isVirtualFolder = false;
        this.virtualFolderMatchName = "";
        this.mediaItemDataList = new ArrayList<>();
        this.fromInternal = false;
        this.bucketId = parcel.readLong();
        this.count = parcel.readInt();
        this.parentName = parcel.readString();
        this.uri = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.parentPath = parcel.readString();
        this.isLabelFolder = parcel.readByte() != 0;
        this.isVirtualFolder = parcel.readByte() != 0;
        this.virtualFolderMatchName = parcel.readString();
        this.index = parcel.readInt();
        this.labelSrcId = parcel.readString();
        this.dateModified = parcel.readLong();
        this.relativePath = parcel.readString();
        this.fromInternal = parcel.readByte() != 0;
        this.isCustomCover = parcel.readInt() == 1;
        this.artist = parcel.readString();
    }
}
