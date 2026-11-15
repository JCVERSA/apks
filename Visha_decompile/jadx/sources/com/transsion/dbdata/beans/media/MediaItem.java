package com.transsion.dbdata.beans.media;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.MediaStore;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.transsion.dbdata.beans.mimedia.MIMediaDataUtils;
import com.transsion.dbdata.beans.mimedia.MIMediaInfo;
import defpackage.ge6;
import defpackage.r0a;
import defpackage.zu3;

public class MediaItem implements Parcelable {
    public static final Parcelable.Creator<MediaItem> CREATOR = new Parcelable.Creator<MediaItem>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public MediaItem createFromParcel(Parcel parcel) {
            return new MediaItem(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public MediaItem[] newArray(int i) {
            return new MediaItem[i];
        }
    };
    public static final int ORIENTATION_LANDSCAPE = 1;
    public static final int ORIENTATION_PORTRAIT = 0;
    public static final int ORIENTATION_UNDEFINED = -1;
    public String bucketDisplayName;
    public long bucketId;
    public String data;
    public long dateAdd;
    public long dateModified;
    public long dateToken;
    public Bitmap defaultCover;
    private int degree;
    public String displayName;
    public long duration;
    public boolean fromInternal;
    public int height;
    public int id;
    public int isConvertedFailed;
    public boolean isDamaged;
    public boolean isExist;
    public boolean isFavorite;
    public boolean isKtFile;
    public boolean isMusicVideo;
    public boolean isPlayComplete;
    public boolean isSelected;
    public boolean isTimeItem;
    public boolean isVirtualFolder;
    public boolean isYoutubeUrl;
    public long lastModified;
    public boolean mIsMediaTionAd;
    boolean mIsParsed;
    private MIMediaInfo mMiMediaInfo;
    public String md5Str;
    public int mediaType;
    public String mineType;
    public int num;
    private int orientation;
    public String originUrl;
    public String parentPath;
    public int playCount;
    public int playPosition;
    public long recordDateModified;
    public String relativePath;
    public String resolution;
    public int selectedPos;
    public long size;
    public int subtitleIndex;
    public String thumbnailUrl;
    public String title;
    public MediaType type;
    public String uploaderName;
    public transient Uri uri;
    public String virtualFolderMatchName;
    public String virtualFolderMatchPath;
    public int width;

    public enum MediaType {
        VIDEO(0),
        IMAGE(1),
        AUDIO(2),
        SUBTITLE(3),
        OTHERS(4);

        public final int mValue;

        MediaType(int i) {
            this.mValue = i;
        }
    }

    public MediaItem() {
        this.id = 0;
        this.virtualFolderMatchName = "";
        this.virtualFolderMatchPath = "";
        this.isExist = true;
        this.type = MediaType.VIDEO;
        this.md5Str = "";
        this.isMusicVideo = false;
        this.orientation = -1;
        this.fromInternal = false;
        this.mIsParsed = false;
    }

    public static void copy(MediaItem mediaItem, MediaItem mediaItem2) {
        if (mediaItem == null || mediaItem2 == null) {
            return;
        }
        mediaItem2.id = mediaItem.id;
        mediaItem2.bucketId = mediaItem.bucketId;
        mediaItem2.title = mediaItem.title;
        mediaItem2.displayName = mediaItem.displayName;
        mediaItem2.mineType = mediaItem.mineType;
        mediaItem2.bucketDisplayName = mediaItem.bucketDisplayName;
        mediaItem2.data = mediaItem.data;
        mediaItem2.dateToken = mediaItem.dateToken;
        mediaItem2.dateAdd = mediaItem.dateAdd;
        mediaItem2.dateModified = mediaItem.dateModified;
        mediaItem2.resolution = mediaItem.resolution;
        mediaItem2.duration = mediaItem.duration;
        mediaItem2.size = mediaItem.size;
        mediaItem2.isSelected = mediaItem.isSelected;
        mediaItem2.fromInternal = mediaItem.fromInternal;
        mediaItem2.selectedPos = mediaItem.selectedPos;
        mediaItem2.thumbnailUrl = mediaItem.thumbnailUrl;
        mediaItem2.isYoutubeUrl = mediaItem.isYoutubeUrl;
        mediaItem2.isKtFile = mediaItem.isKtFile;
        mediaItem2.originUrl = mediaItem.originUrl;
        mediaItem2.uploaderName = mediaItem.uploaderName;
        mediaItem2.isFavorite = mediaItem.isFavorite;
        mediaItem2.isConvertedFailed = mediaItem.isConvertedFailed;
        mediaItem2.md5Str = mediaItem.md5Str;
        mediaItem2.degree = mediaItem.degree;
        mediaItem2.orientation = mediaItem.orientation;
        mediaItem2.isMusicVideo = mediaItem.isMusicVideo;
        mediaItem2.mMiMediaInfo = mediaItem.getMiMediaInfo();
        mediaItem2.uri = mediaItem.uri;
        mediaItem2.recordDateModified = mediaItem.recordDateModified;
        mediaItem2.lastModified = mediaItem.lastModified;
        mediaItem2.isDamaged = mediaItem.isDamaged;
        mediaItem2.type = mediaItem.type;
        mediaItem2.width = mediaItem.width;
        mediaItem2.height = mediaItem.height;
        mediaItem2.isVirtualFolder = mediaItem.isVirtualFolder;
        mediaItem2.virtualFolderMatchName = mediaItem.virtualFolderMatchName;
        mediaItem2.virtualFolderMatchPath = mediaItem.virtualFolderMatchPath;
        mediaItem2.playPosition = mediaItem.playPosition;
        mediaItem2.relativePath = mediaItem.relativePath;
        mediaItem2.isTimeItem = mediaItem.isTimeItem;
        mediaItem2.isPlayComplete = mediaItem.isPlayComplete;
        mediaItem2.parentPath = mediaItem.parentPath;
        mediaItem2.mIsMediaTionAd = mediaItem.mIsMediaTionAd;
        mediaItem2.defaultCover = mediaItem.defaultCover;
        mediaItem2.subtitleIndex = mediaItem.subtitleIndex;
        mediaItem2.playCount = mediaItem.playCount;
    }

    public static String getUriStringSafely(int i, boolean z) {
        Uri uri = getUri(i, z);
        return uri == null ? "" : uri.toString();
    }

    private void loadResolution() {
        if (this.mIsParsed) {
            return;
        }
        this.mIsParsed = true;
        int[] iArrW = ge6.w(this.resolution);
        if (iArrW == null || iArrW.length < 2) {
            return;
        }
        this.width = iArrW[0];
        this.height = iArrW[1];
    }

    public void clearDefaultCover() {
        this.defaultCover = null;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof MediaItem)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        MediaItem mediaItem = (MediaItem) obj;
        if (this.isYoutubeUrl || this.isKtFile || MIMediaDataUtils.INSTANCE.isMiMediaVideo(mediaItem)) {
            if (!TextUtils.equals(mediaItem.data, this.data)) {
                return false;
            }
        } else if (mediaItem.id != this.id) {
            return false;
        }
        return mediaItem.bucketId == this.bucketId && mediaItem.isTimeItem == this.isTimeItem;
    }

    public Bitmap getDefaultCover() {
        return this.defaultCover;
    }

    public int getDegree() {
        return this.degree;
    }

    public String getDisplayName() {
        if (!r0a.g(this.displayName)) {
            return this.displayName;
        }
        if (!r0a.g(this.title)) {
            return this.title;
        }
        if (!r0a.g(this.data)) {
            String strU = zu3.u(this.data);
            this.title = strU;
            this.displayName = strU;
            return strU;
        }
        Uri uri = this.uri;
        if (uri == null || r0a.g(uri.toString())) {
            return "";
        }
        String strU2 = zu3.u(this.uri.toString());
        this.title = strU2;
        this.displayName = strU2;
        return strU2;
    }

    public int getHeight() {
        loadResolution();
        return this.height;
    }

    public boolean getIsMediaTionAd() {
        return this.mIsMediaTionAd;
    }

    public MIMediaInfo getMiMediaInfo() {
        return this.mMiMediaInfo;
    }

    public int getOrientation() {
        return this.orientation;
    }

    public int getPlayPosition() {
        return this.playPosition;
    }

    public String getRelativePath() {
        return this.relativePath;
    }

    public int getSelectedPos() {
        return this.selectedPos;
    }

    public String getThumbnailUrl() {
        return this.thumbnailUrl;
    }

    public Uri getTransUri() {
        try {
            Uri uri = this.uri;
            if (uri == null) {
                return null;
            }
            return Uri.withAppendedPath(uri.toString().contains("external") ? MediaStore.Video.Media.EXTERNAL_CONTENT_URI : MediaStore.Video.Media.INTERNAL_CONTENT_URI, Integer.toString(this.id));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public Uri getUri() {
        Uri uri = this.uri;
        return uri != null ? uri : getUri(this.id, this.fromInternal);
    }

    public String getVideoRatio() {
        if (getWidth() == 0 || getHeight() == 0) {
            return "unknown";
        }
        double d = this.width / this.height;
        if (d >= 1.7d) {
            return "16:9";
        }
        if (d >= 1.3d) {
            return "4:3";
        }
        if (d >= 0.7d) {
            return "3:4";
        }
        return d >= 0.5d ? "9:16" : this.resolution;
    }

    public String getVirtualFolderMatchName() {
        return this.virtualFolderMatchName;
    }

    public String getVirtualFolderMatchPath() {
        return this.virtualFolderMatchPath;
    }

    public int getWidth() {
        loadResolution();
        return this.width;
    }

    public boolean isDamaged() {
        return this.isDamaged;
    }

    public boolean isSelected() {
        return this.isSelected;
    }

    public boolean isVirtualFolder() {
        return this.isVirtualFolder;
    }

    public void setConvertedFailed(int i) {
        this.isConvertedFailed = i;
    }

    public void setDamaged(boolean z) {
        this.isDamaged = z;
    }

    public void setDefaultCover(Bitmap bitmap) {
        this.defaultCover = bitmap;
    }

    public void setDegree(int i) {
        this.degree = i;
    }

    public void setDisplayName(String str) {
        this.displayName = str;
    }

    public MediaItem setFromInternal(boolean z) {
        this.fromInternal = z;
        return this;
    }

    public void setIsMediaTionAd(boolean z) {
        this.mIsMediaTionAd = z;
    }

    public void setMiMediaInfo(MIMediaInfo mIMediaInfo) {
        this.mMiMediaInfo = mIMediaInfo;
    }

    public void setOrientation(int i) {
        this.orientation = i;
    }

    public void setPlayPosition(int i) {
        this.playPosition = i;
    }

    public void setRelativePath(String str) {
        this.relativePath = str;
    }

    public void setSelected(boolean z) {
        this.isSelected = z;
    }

    public void setSelectedPos(int i) {
        this.selectedPos = i;
    }

    public void setSubtitleIndex(int i) {
        this.subtitleIndex = i;
    }

    public void setThumbnailUrl(String str) {
        this.thumbnailUrl = str;
    }

    public void setUri(Uri uri) {
        this.uri = uri;
    }

    public void setVirtualFolder(boolean z) {
        this.isVirtualFolder = z;
    }

    public void setVirtualFolderMatchName(String str) {
        this.virtualFolderMatchName = str;
    }

    public void setVirtualFolderMatchPath(String str) {
        this.virtualFolderMatchPath = str;
    }

    @NonNull
    public String toString() {
        return "MediaItem{id=" + this.id + ", bucketId=" + this.bucketId + ", title='" + this.title + "', displayName='" + this.displayName + "', mineType='" + this.mineType + "', bucketDisplayName='" + this.bucketDisplayName + "', data='" + this.data + "', dateToken=" + this.dateToken + ", dateAdd=" + this.dateAdd + ", dateModified=" + this.dateModified + ", resolution='" + this.resolution + "', duration=" + this.duration + ", size=" + this.size + ", isSelected=" + this.isSelected + ", selectedPos=" + this.selectedPos + ", width=" + this.width + ", height=" + this.height + ", uri=" + this.uri + ", fromInternal=" + this.fromInternal + ", mIsParsed=" + this.mIsParsed + ", isVirtualFolder=" + this.isVirtualFolder + ", virtualFolderMatchName=" + this.virtualFolderMatchName + ", playPosition=" + this.playPosition + ", isPlayComplete=" + this.isPlayComplete + ", isTimeItem=" + this.isTimeItem + ", orientation=" + this.orientation + ", degree=" + this.degree + ", isKtFile=" + this.isKtFile + ", mMiMediaInfo=" + this.mMiMediaInfo + '}';
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.id);
        parcel.writeLong(this.bucketId);
        parcel.writeString(this.title);
        parcel.writeString(this.displayName);
        parcel.writeString(this.mineType);
        parcel.writeString(this.bucketDisplayName);
        parcel.writeString(this.data);
        parcel.writeLong(this.dateToken);
        parcel.writeLong(this.dateAdd);
        parcel.writeLong(this.dateModified);
        parcel.writeLong(this.recordDateModified);
        parcel.writeString(this.resolution);
        parcel.writeLong(this.duration);
        parcel.writeLong(this.size);
        parcel.writeByte(this.isSelected ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.fromInternal ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.selectedPos);
        parcel.writeString(this.thumbnailUrl);
        parcel.writeByte(this.isYoutubeUrl ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.isKtFile ? (byte) 1 : (byte) 0);
        parcel.writeString(this.originUrl);
        parcel.writeString(this.uploaderName);
        parcel.writeInt(this.isFavorite ? (byte) 1 : (byte) 0);
        parcel.writeInt((byte) this.isConvertedFailed);
        parcel.writeString(this.md5Str);
        parcel.writeInt(this.degree);
        parcel.writeInt(this.orientation);
        parcel.writeByte(this.isMusicVideo ? (byte) 1 : (byte) 0);
        parcel.writeParcelable(this.mMiMediaInfo, i);
    }

    public static Uri getUri(int i, boolean z) {
        if (i == 0) {
            return null;
        }
        try {
            return Uri.withAppendedPath(z ? MediaStore.Video.Media.INTERNAL_CONTENT_URI : MediaStore.Video.Media.EXTERNAL_CONTENT_URI, Integer.toString(i));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public MediaItem(int i, long j) {
        this.id = 0;
        this.virtualFolderMatchName = "";
        this.virtualFolderMatchPath = "";
        this.isExist = true;
        this.type = MediaType.VIDEO;
        this.md5Str = "";
        this.isMusicVideo = false;
        this.orientation = -1;
        this.fromInternal = false;
        this.mIsParsed = false;
        this.id = i;
        this.bucketId = j;
    }

    public MediaItem(int i, long j, boolean z, String str) {
        this.id = 0;
        this.virtualFolderMatchName = "";
        this.virtualFolderMatchPath = "";
        this.isExist = true;
        this.type = MediaType.VIDEO;
        this.md5Str = "";
        this.isMusicVideo = false;
        this.orientation = -1;
        this.fromInternal = false;
        this.mIsParsed = false;
        this.id = i;
        this.bucketId = j;
        this.isVirtualFolder = z;
        this.virtualFolderMatchName = str;
    }

    public MediaItem(String str) {
        this.id = 0;
        this.virtualFolderMatchName = "";
        this.virtualFolderMatchPath = "";
        this.isExist = true;
        this.type = MediaType.VIDEO;
        this.md5Str = "";
        this.isMusicVideo = false;
        this.orientation = -1;
        this.fromInternal = false;
        this.mIsParsed = false;
        this.data = str;
    }

    public MediaItem(int i, long j, String str, String str2, String str3, String str4, String str5, long j2, long j3, long j4, String str6, long j5, long j6, Uri uri) {
        this.id = 0;
        this.virtualFolderMatchName = "";
        this.virtualFolderMatchPath = "";
        this.isExist = true;
        this.type = MediaType.VIDEO;
        this.md5Str = "";
        this.isMusicVideo = false;
        this.orientation = -1;
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

    public MediaItem(Parcel parcel) {
        this.id = 0;
        this.virtualFolderMatchName = "";
        this.virtualFolderMatchPath = "";
        this.isExist = true;
        this.type = MediaType.VIDEO;
        this.md5Str = "";
        this.isMusicVideo = false;
        this.orientation = -1;
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
        this.recordDateModified = parcel.readLong();
        this.resolution = parcel.readString();
        this.duration = parcel.readLong();
        this.size = parcel.readLong();
        this.isSelected = parcel.readByte() != 0;
        this.fromInternal = parcel.readByte() != 0;
        this.selectedPos = parcel.readInt();
        this.thumbnailUrl = parcel.readString();
        this.isYoutubeUrl = parcel.readInt() != 0;
        this.isKtFile = parcel.readInt() != 0;
        this.originUrl = parcel.readString();
        this.uploaderName = parcel.readString();
        this.isFavorite = parcel.readInt() != 0;
        this.isConvertedFailed = parcel.readInt();
        String string = parcel.readString();
        this.md5Str = string != null ? string : "";
        this.degree = parcel.readInt();
        this.orientation = parcel.readInt();
        this.isMusicVideo = parcel.readByte() != 0;
        this.mMiMediaInfo = (MIMediaInfo) parcel.readParcelable(MIMediaInfo.class.getClassLoader());
    }
}
