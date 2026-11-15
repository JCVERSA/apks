package com.transsion.dbdata.beans.media;

import android.content.ContentUris;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.MediaStore;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.transsion.dbdata.beans.musicvideo.MusicVideoDataBean;
import defpackage.av3;
import defpackage.ge6;
import defpackage.pp3;
import defpackage.r0a;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

public class AudioItem extends MediaItem implements Parcelable {
    public static final Parcelable.Creator<AudioItem> CREATOR = new Parcelable.Creator<AudioItem>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public AudioItem createFromParcel(Parcel parcel) {
            return new AudioItem(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public AudioItem[] newArray(int i) {
            return new AudioItem[i];
        }
    };
    public int albumId;
    public String albumName;
    public String albumPath;
    public int artistId;
    public String artistName;
    public boolean exitInPlayList;
    public List<String> filteredTypes;
    public String mAlbumYear;
    public String mCustomCoverPath;
    public int year;

    public AudioItem() {
    }

    public static void copy(AudioItem audioItem, AudioItem audioItem2) {
        audioItem2.id = audioItem.id;
        audioItem2.parentPath = audioItem.parentPath;
        audioItem2.bucketId = audioItem.bucketId;
        audioItem2.displayName = audioItem.displayName;
        audioItem2.mAlbumYear = audioItem.mAlbumYear;
        audioItem2.mineType = audioItem.mineType;
        audioItem2.title = audioItem.title;
        audioItem2.duration = audioItem.duration;
        audioItem2.data = audioItem.data;
        audioItem2.dateAdd = audioItem.dateAdd;
        audioItem2.dateModified = audioItem.dateModified;
        audioItem2.albumId = audioItem.albumId;
        audioItem2.albumName = audioItem.albumName;
        audioItem2.artistId = audioItem.artistId;
        audioItem2.artistName = audioItem.artistName;
        audioItem2.size = audioItem.size;
        audioItem2.uri = audioItem.uri;
        audioItem2.bucketDisplayName = audioItem.bucketDisplayName;
        audioItem2.num = audioItem.num;
        audioItem2.albumPath = audioItem.albumPath;
        audioItem2.dateToken = audioItem.dateToken;
        audioItem2.resolution = audioItem.resolution;
        audioItem2.isSelected = audioItem.isSelected;
        audioItem2.fromInternal = audioItem.fromInternal;
        audioItem2.selectedPos = audioItem.selectedPos;
        audioItem2.thumbnailUrl = audioItem.thumbnailUrl;
        audioItem2.isYoutubeUrl = audioItem.isYoutubeUrl;
        audioItem2.originUrl = audioItem.originUrl;
        audioItem2.uploaderName = audioItem.uploaderName;
        audioItem2.isFavorite = audioItem.isFavorite;
        audioItem2.isConvertedFailed = audioItem.isConvertedFailed;
        audioItem2.md5Str = audioItem.md5Str;
        audioItem2.isMusicVideo = audioItem.isMusicVideo;
    }

    public static Uri getAlbumArtUri(long j) {
        return ContentUris.withAppendedId(Uri.parse("content://media/external/audio/albumart"), j);
    }

    public AudioItem addFilteredType(String str) {
        if (this.filteredTypes == null) {
            this.filteredTypes = new ArrayList();
        }
        this.filteredTypes.add(str);
        return this;
    }

    public MusicVideoDataBean convertToMusicVideoDataBean() {
        int i = 0;
        if (!TextUtils.isEmpty(this.mAlbumYear)) {
            try {
                i = Integer.parseInt(this.mAlbumYear);
            } catch (NumberFormatException unused) {
            }
        }
        return new MusicVideoDataBean(this.id, this.parentPath, this.bucketId, this.title, this.displayName, i, this.mineType, this.duration, this.data, this.dateAdd, this.dateModified, this.albumId, this.albumName, this.artistId, this.artistName, this.size, this.uri.toString(), this.bucketDisplayName);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj instanceof AudioItem) {
            return obj == this || ((AudioItem) obj).id == this.id;
        }
        return false;
    }

    public String getAlbumYear() {
        return this.mAlbumYear;
    }

    public String getCustomCoverPath() {
        return this.mCustomCoverPath;
    }

    public long getFileCreateTime() {
        return this.dateAdd;
    }

    public long getModifiedTime() {
        return this.dateModified;
    }

    @Override
    public Uri getTransUri() {
        try {
            Uri uri = this.uri;
            if (uri == null) {
                return null;
            }
            return Uri.withAppendedPath(uri.toString().contains("external") ? MediaStore.Audio.Media.EXTERNAL_CONTENT_URI : MediaStore.Audio.Media.INTERNAL_CONTENT_URI, Integer.toString(this.id));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public Uri getUri() {
        Uri uri = this.uri;
        if (uri != null) {
            return uri;
        }
        return this.isMusicVideo ? super.getUri() : getUri(this.id, this.fromInternal);
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.id));
    }

    public boolean isAudioItemChanged(Object obj) {
        if (!(obj instanceof AudioItem)) {
            return true;
        }
        AudioItem audioItem = (AudioItem) obj;
        return (audioItem.id == this.id && TextUtils.equals(audioItem.displayName, this.displayName) && TextUtils.equals(audioItem.artistName, this.artistName) && TextUtils.equals(audioItem.albumName, this.albumName)) ? false : true;
    }

    public void readFromParcel(Parcel parcel) {
        this.albumId = parcel.readInt();
        this.albumName = parcel.readString();
        this.mAlbumYear = parcel.readString();
        this.mCustomCoverPath = parcel.readString();
        this.artistId = parcel.readInt();
        this.artistName = parcel.readString();
        this.exitInPlayList = parcel.readByte() != 0;
        this.isFavorite = parcel.readByte() != 0;
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
        this.selectedPos = parcel.readInt();
        this.width = parcel.readInt();
        this.height = parcel.readInt();
        this.isVirtualFolder = parcel.readByte() != 0;
        this.virtualFolderMatchName = parcel.readString();
        this.virtualFolderMatchPath = parcel.readString();
        this.playPosition = parcel.readInt();
        this.relativePath = parcel.readString();
        this.isTimeItem = parcel.readByte() != 0;
        this.isPlayComplete = parcel.readByte() != 0;
        this.parentPath = parcel.readString();
        this.mIsMediaTionAd = parcel.readByte() != 0;
        this.defaultCover = (Bitmap) parcel.readParcelable(Bitmap.class.getClassLoader());
        this.subtitleIndex = parcel.readInt();
        this.thumbnailUrl = parcel.readString();
        this.isYoutubeUrl = parcel.readByte() != 0;
        this.originUrl = parcel.readString();
        this.uploaderName = parcel.readString();
        this.isFavorite = parcel.readByte() != 0;
        this.playCount = parcel.readInt();
        int i = parcel.readInt();
        if (i < 0 || i >= MediaItem.MediaType.values().length) {
            i = 0;
        }
        this.type = MediaItem.MediaType.values()[i];
        this.fromInternal = parcel.readByte() != 0;
        this.mIsParsed = parcel.readByte() != 0;
        String string = parcel.readString();
        if (string == null) {
            string = "";
        }
        this.md5Str = string;
    }

    public void setAlbumYear(String str) {
        this.mAlbumYear = str;
    }

    public void setCustomCoverPath(String str) {
        this.mCustomCoverPath = str;
    }

    @Override
    public void setSelectedPos(int i) {
        this.selectedPos = i;
    }

    @Override
    @NonNull
    public String toString() {
        return "Song{id=" + this.id + ", title='" + this.title + "', bucketId=" + this.bucketId + ", bucketDisplayName=" + this.bucketDisplayName + ", mineType='" + this.mineType + "', duration=" + this.duration + ", data='" + this.data + "', dateModified=" + this.dateModified + ", albumId=" + this.albumId + ", albumName='" + this.albumName + "', year=" + this.year + ", artistId=" + this.artistId + ", artistName='" + this.artistName + "', size='" + this.size + "', uri='" + this.uri + "', parentPath=" + this.parentPath + ", albumPath=" + this.albumPath + ", displayName='" + this.displayName + "', isMusicVideo='" + this.isMusicVideo + "', albumYear='" + this.mAlbumYear + "', mCustomCoverPath='" + this.mCustomCoverPath + "'}\n" + super.toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.albumId);
        parcel.writeString(this.albumName);
        parcel.writeString(this.mAlbumYear);
        parcel.writeString(this.mCustomCoverPath);
        parcel.writeInt(this.year);
        parcel.writeInt(this.artistId);
        parcel.writeString(this.artistName);
        parcel.writeByte(this.exitInPlayList ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.isFavorite ? (byte) 1 : (byte) 0);
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
        parcel.writeString(this.resolution);
        parcel.writeLong(this.duration);
        parcel.writeLong(this.size);
        parcel.writeByte(this.isSelected ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.selectedPos);
        parcel.writeInt(this.width);
        parcel.writeInt(this.height);
        parcel.writeByte(this.isVirtualFolder ? (byte) 1 : (byte) 0);
        parcel.writeString(this.virtualFolderMatchName);
        parcel.writeString(this.virtualFolderMatchPath);
        parcel.writeInt(this.playPosition);
        parcel.writeString(this.relativePath);
        parcel.writeByte(this.isTimeItem ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.isPlayComplete ? (byte) 1 : (byte) 0);
        parcel.writeString(this.parentPath);
        parcel.writeByte(this.mIsMediaTionAd ? (byte) 1 : (byte) 0);
        parcel.writeParcelable(this.defaultCover, i);
        parcel.writeInt(this.subtitleIndex);
        parcel.writeString(this.thumbnailUrl);
        parcel.writeByte(this.isYoutubeUrl ? (byte) 1 : (byte) 0);
        parcel.writeString(this.originUrl);
        parcel.writeString(this.uploaderName);
        parcel.writeByte(this.isFavorite ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.playCount);
        MediaItem.MediaType mediaType = this.type;
        parcel.writeInt(mediaType == null ? -1 : mediaType.ordinal());
        parcel.writeParcelable(this.uri, i);
        parcel.writeByte(this.fromInternal ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.mIsParsed ? (byte) 1 : (byte) 0);
        parcel.writeString(this.md5Str);
        parcel.writeStringList(this.filteredTypes);
        parcel.writeInt(this.num);
    }

    public AudioItem(int i, long j) {
        this.id = i;
        this.bucketId = j;
    }

    @Override
    public AudioItem setFromInternal(boolean z) {
        this.fromInternal = z;
        return this;
    }

    public AudioItem(int i, long j, String str) {
        this.id = i;
        this.bucketId = j;
        this.data = str;
    }

    public static Uri getUri(int i, boolean z) {
        try {
            return Uri.withAppendedPath(z ? MediaStore.Audio.Media.INTERNAL_CONTENT_URI : MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, Integer.toString(i));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public AudioItem(int i, String str, long j) {
        this.id = i;
        this.dateModified = j;
        this.data = str;
    }

    public AudioItem(int i, long j, String str, String str2, String str3) {
        this.id = i;
        this.bucketId = j;
        this.title = str;
        this.artistName = str2;
        this.albumName = str3;
    }

    public AudioItem(int i, String str, long j, String str2, String str3, String str4, long j2, String str5, long j3, long j4, int i2, String str6, int i3, String str7, long j5, Uri uri, String str8, int i4) {
        this.id = i;
        this.parentPath = str;
        this.bucketId = j;
        if (!r0a.g(str4)) {
            this.displayName = av3.k(str4);
        } else {
            this.displayName = av3.k(str2);
        }
        this.year = i4;
        this.mAlbumYear = String.valueOf(i4);
        this.mineType = str3;
        this.title = str4;
        this.duration = j2;
        this.data = str5;
        this.dateAdd = j3;
        this.dateModified = j4;
        this.albumId = i2;
        this.albumName = str6;
        this.artistId = i3;
        this.artistName = str7;
        this.size = j5;
        this.uri = uri;
        this.bucketDisplayName = str8;
    }

    public AudioItem(int i, String str, long j, String str2, String str3, String str4, long j2, String str5, long j3, long j4, int i2, String str6, int i3, String str7, long j5, Uri uri, String str8, int i4, int i5) {
        this.id = i;
        this.parentPath = str;
        this.bucketId = j;
        if (!r0a.g(str4)) {
            this.displayName = av3.k(str4);
        } else {
            this.displayName = av3.k(str2);
        }
        this.year = i4;
        this.mAlbumYear = String.valueOf(i4);
        this.mineType = str3;
        this.title = str4;
        this.duration = j2;
        this.data = str5;
        this.dateAdd = j3;
        this.dateModified = j4;
        this.albumId = i2;
        this.albumName = str6;
        this.artistId = i3;
        this.artistName = str7;
        this.size = j5;
        this.uri = uri;
        this.bucketDisplayName = str8;
        this.num = i5;
    }

    public AudioItem(MediaItem mediaItem) {
        this.id = mediaItem.id;
        this.parentPath = mediaItem.parentPath;
        this.bucketId = mediaItem.bucketId;
        this.displayName = av3.t(mediaItem.displayName);
        this.mineType = mediaItem.mineType;
        this.title = mediaItem.title;
        this.duration = mediaItem.duration;
        this.data = mediaItem.data;
        this.dateAdd = mediaItem.dateAdd;
        this.dateModified = mediaItem.dateModified;
        this.size = mediaItem.size;
        this.uri = mediaItem.uri;
        this.bucketDisplayName = mediaItem.bucketDisplayName;
        this.num = mediaItem.num;
        this.isMusicVideo = pp3.y;
        this.relativePath = mediaItem.relativePath;
    }

    public AudioItem(MusicVideoDataBean musicVideoDataBean) {
        this.id = musicVideoDataBean.id;
        this.parentPath = musicVideoDataBean.parentPath;
        this.bucketId = musicVideoDataBean.bucketId;
        this.displayName = av3.t(musicVideoDataBean.displayName);
        this.mineType = musicVideoDataBean.mineType;
        this.title = musicVideoDataBean.title;
        this.duration = musicVideoDataBean.duration;
        this.data = musicVideoDataBean.data;
        this.dateAdd = musicVideoDataBean.dateAdd;
        this.dateModified = musicVideoDataBean.dateModified;
        this.size = musicVideoDataBean.size;
        this.uri = Uri.parse(musicVideoDataBean.uri);
        this.bucketDisplayName = musicVideoDataBean.bucketDisplayName;
        this.isMusicVideo = pp3.y;
        this.parentPath = av3.u(musicVideoDataBean.data);
        ge6 ge6Var = ge6.a;
        this.relativePath = ge6.l(this.data, this.displayName);
    }

    public AudioItem(Parcel parcel) {
        super(parcel);
        this.albumId = parcel.readInt();
        this.albumName = parcel.readString();
        this.mAlbumYear = parcel.readString();
        this.mCustomCoverPath = parcel.readString();
        this.year = parcel.readInt();
        this.artistId = parcel.readInt();
        this.artistName = parcel.readString();
        this.exitInPlayList = parcel.readByte() != 0;
        this.isFavorite = parcel.readByte() != 0;
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
        this.selectedPos = parcel.readInt();
        this.width = parcel.readInt();
        this.height = parcel.readInt();
        this.isVirtualFolder = parcel.readByte() != 0;
        this.virtualFolderMatchName = parcel.readString();
        this.virtualFolderMatchPath = parcel.readString();
        this.playPosition = parcel.readInt();
        this.relativePath = parcel.readString();
        this.isTimeItem = parcel.readByte() != 0;
        this.isPlayComplete = parcel.readByte() != 0;
        this.parentPath = parcel.readString();
        this.mIsMediaTionAd = parcel.readByte() != 0;
        this.defaultCover = (Bitmap) parcel.readParcelable(Bitmap.class.getClassLoader());
        this.subtitleIndex = parcel.readInt();
        this.thumbnailUrl = parcel.readString();
        this.isYoutubeUrl = parcel.readByte() != 0;
        this.originUrl = parcel.readString();
        this.uploaderName = parcel.readString();
        this.isFavorite = parcel.readByte() != 0;
        this.playCount = parcel.readInt();
        int i = parcel.readInt();
        this.type = MediaItem.MediaType.values()[(i < 0 || i >= MediaItem.MediaType.values().length) ? 0 : i];
        this.uri = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.fromInternal = parcel.readByte() != 0;
        this.mIsParsed = parcel.readByte() != 0;
        String string = parcel.readString();
        this.md5Str = string == null ? "" : string;
        this.filteredTypes = parcel.createStringArrayList();
        this.num = parcel.readInt();
    }
}
