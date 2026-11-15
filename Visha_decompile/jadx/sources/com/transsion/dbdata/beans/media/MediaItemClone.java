package com.transsion.dbdata.beans.media;

import android.net.Uri;
import android.os.Parcel;
import java.io.Serializable;

public class MediaItemClone implements Serializable {
    private static final long serialVersionUID = 4147126527455461971L;
    public String albumName;
    public String artistName;
    public String bucketDisplayName;
    public long bucketId;
    public String data;
    public long dateAdd;
    public long dateModified;
    public long dateToken;
    public String displayName;
    public long duration;
    public boolean fromInternal;
    private int height;
    public int id;
    public boolean isPlayComplete;
    public boolean isSelected;
    public boolean isTimeItem;
    public boolean isVirtualFolder;
    public int listFlag;
    private boolean mIsParsed;
    public String mineType;
    public String parentPath;
    public int playPosition;
    public long playlistId;
    public String relativePath;
    public String resolution;
    public int selectedPos;
    public long size;
    public String title;
    public Uri uri;
    public String virtualFolderMatchName;
    public String virtualFolderMatchPath;
    private int width;

    public MediaItemClone() {
        this.virtualFolderMatchName = "";
        this.virtualFolderMatchPath = "";
        this.fromInternal = false;
        this.mIsParsed = false;
    }

    public String toString() {
        return "MediaItemClone{id=" + this.id + ", bucketId=" + this.bucketId + ", title='" + this.title + "', displayName='" + this.displayName + "', mineType='" + this.mineType + "', bucketDisplayName='" + this.bucketDisplayName + "', data='" + this.data + "', dateToken=" + this.dateToken + ", dateAdd=" + this.dateAdd + ", dateModified=" + this.dateModified + ", resolution='" + this.resolution + "', duration=" + this.duration + ", size=" + this.size + ", isSelected=" + this.isSelected + ", selectedPos=" + this.selectedPos + ", width=" + this.width + ", height=" + this.height + ", uri=" + this.uri + ", fromInternal=" + this.fromInternal + ", mIsParsed=" + this.mIsParsed + ", isVirtualFolder=" + this.isVirtualFolder + ", virtualFolderMatchName=" + this.virtualFolderMatchName + ", playPosition=" + this.playPosition + '}';
    }

    public MediaItemClone(String str) {
        this.virtualFolderMatchName = "";
        this.virtualFolderMatchPath = "";
        this.fromInternal = false;
        this.mIsParsed = false;
        this.data = str;
    }

    public MediaItemClone(int i, long j) {
        this.virtualFolderMatchName = "";
        this.virtualFolderMatchPath = "";
        this.fromInternal = false;
        this.mIsParsed = false;
        this.id = i;
        this.bucketId = j;
    }

    public MediaItemClone(int i, long j, String str, String str2, String str3, int i2, long j2) {
        this.virtualFolderMatchName = "";
        this.virtualFolderMatchPath = "";
        this.fromInternal = false;
        this.mIsParsed = false;
        this.id = i;
        this.bucketId = j;
        this.displayName = str;
        this.artistName = str2;
        this.albumName = str3;
        this.listFlag = i2;
        this.playlistId = j2;
    }

    public MediaItemClone(int i, long j, boolean z, String str) {
        this.virtualFolderMatchPath = "";
        this.fromInternal = false;
        this.mIsParsed = false;
        this.id = i;
        this.bucketId = j;
        this.isVirtualFolder = z;
        this.virtualFolderMatchName = str;
    }

    public MediaItemClone(int i, long j, String str, String str2, String str3, String str4, String str5, long j2, long j3, long j4, String str6, long j5, long j6, Uri uri) {
        this.virtualFolderMatchName = "";
        this.virtualFolderMatchPath = "";
        this.fromInternal = false;
        this.mIsParsed = false;
        this.id = i;
        this.bucketId = j;
        this.title = str;
        this.displayName = str2;
        this.mineType = str3;
        this.bucketDisplayName = str4;
        this.data = str5;
        this.dateToken = j2;
        this.dateAdd = j3;
        this.dateModified = j4;
        this.resolution = str6;
        this.duration = j5;
        this.size = j6;
        this.uri = uri;
    }

    public MediaItemClone(Parcel parcel) {
        this.virtualFolderMatchName = "";
        this.virtualFolderMatchPath = "";
        this.fromInternal = false;
        this.mIsParsed = false;
        this.id = parcel.readInt();
        this.bucketId = parcel.readLong();
        this.title = parcel.readString();
        this.displayName = parcel.readString();
        this.mineType = parcel.readString();
        this.bucketDisplayName = parcel.readString();
        this.data = parcel.readString();
        this.dateToken = parcel.readLong();
        this.dateAdd = parcel.readLong();
        this.dateModified = parcel.readLong();
        this.resolution = parcel.readString();
        this.duration = parcel.readLong();
        this.size = parcel.readLong();
        this.isSelected = parcel.readByte() != 0;
        this.uri = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.fromInternal = parcel.readByte() != 0;
        this.selectedPos = parcel.readInt();
    }
}
