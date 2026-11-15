package com.transsion.dbdata.beans.media;

import android.content.Intent;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;

public class PlayAudioData implements Parcelable {
    public static final Parcelable.Creator<PlayAudioData> CREATOR = new Parcelable.Creator<PlayAudioData>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public PlayAudioData createFromParcel(Parcel parcel) {
            return new PlayAudioData(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public PlayAudioData[] newArray(int i) {
            return new PlayAudioData[i];
        }
    };
    public static final int INVALIDATE = -1;
    public static final int PLAY_POSITION_DEF = 0;
    public static final float PLAY_SPEED_DEF = 1.0f;
    public static final String TAG_ADD_DATE = "add_date";
    public static final String TAG_ALBUM_NAME = "tag_album_name";
    public static final String TAG_ARTIST_NAME = "tag_artist_name";
    public static final String TAG_BUCKET_ID = "play_bucket_id";
    public static final String TAG_DISPLAY_NAME = "tag_display_name";
    public static final String TAG_DURATION = "duration";
    public static final String TAG_FOLDER_NAME = "folder_name";
    public static final String TAG_FROM = "from";
    public static final String TAG_FROM_INTERNAL = "media_from_internal";
    public static final String TAG_FROM_NET = "tag_from_net";
    public static final String TAG_LIST_FLAG = "listFlag";
    public static final String TAG_MD5 = "TAG_MD5";
    public static final String TAG_MEDIA_ID = "play_media_id";
    public static final String TAG_MINE_TYPE = "mine_type";
    public static final String TAG_MODIFY_DATE = "modify_date";
    public static final String TAG_MUSIC_VIDEO = "TAG_MUSIC_VIDEO";
    public static final String TAG_NEED_PLAY = "play";
    public static final String TAG_NEW_AUDIO = "TAG_NEW_AUDIO";
    public static final String TAG_ORIENTATION = "tag_orientation";
    public static final String TAG_PARENT_PATH = "parentPath";
    public static final String TAG_PLAYLIST_ID = "tag_playlist_id";
    public static final String TAG_PLAY_FROM = "TAG_PLAY_FROM";
    public static final String TAG_PLAY_POSITION = "play_position";
    public static final String TAG_PLAY_SPEED = "tag_play_speed";
    public static final String TAG_SELECT_POSITION = "tag_select_position";
    public static final String TAG_SHUFFLE = "TAG_SHUFFLE";
    public static final String TAG_SIZE = "size";
    public static final String TAG_SOURCE_ACTION = "source_action";
    public String albumName;
    public String artistName;
    public boolean autoPlay;
    public long bucketId;
    public long dateAdd;
    public long dateModified;
    public String displayName;
    public long duration;
    public String folderName;
    public int from;
    public boolean fromInternal;
    public boolean isFromNet;
    public boolean isMusicVideo;
    public boolean isShuffle;
    public int listFlag;
    public String md5Str;
    public int mediaId;
    public String mineType;
    public String parentPath;
    public long playListId;
    public long playPosition;
    public Uri playUri;
    public int selectedPosition;
    public long size;
    public String sourceAction;
    public float speed;

    public PlayAudioData() {
        this.mediaId = -1;
        this.parentPath = "";
        this.fromInternal = true;
        this.speed = 1.0f;
        this.playListId = -1L;
    }

    public static PlayAudioData convertToPlayAudioData(AudioItem audioItem) {
        if (audioItem == null) {
            return null;
        }
        PlayAudioData playAudioData = new PlayAudioData();
        playAudioData.mediaId = audioItem.id;
        playAudioData.bucketId = audioItem.bucketId;
        playAudioData.selectedPosition = audioItem.selectedPos;
        playAudioData.playPosition = audioItem.playPosition;
        playAudioData.parentPath = audioItem.parentPath;
        playAudioData.albumName = audioItem.albumName;
        playAudioData.artistName = audioItem.artistName;
        playAudioData.playUri = Uri.parse(TextUtils.isEmpty(audioItem.data) ? "" : audioItem.data);
        playAudioData.displayName = audioItem.displayName;
        playAudioData.mineType = audioItem.mineType;
        playAudioData.dateAdd = audioItem.dateAdd;
        playAudioData.dateModified = audioItem.dateModified;
        playAudioData.duration = audioItem.duration;
        playAudioData.size = audioItem.size;
        String str = audioItem.md5Str;
        playAudioData.md5Str = str != null ? str : "";
        playAudioData.isMusicVideo = audioItem.isMusicVideo;
        return playAudioData;
    }

    public static AudioItem convertToPlayAudioItem(PlayAudioData playAudioData) {
        if (playAudioData == null) {
            return null;
        }
        AudioItem audioItem = new AudioItem();
        audioItem.id = playAudioData.mediaId;
        audioItem.bucketId = playAudioData.bucketId;
        audioItem.playPosition = (int) playAudioData.playPosition;
        audioItem.parentPath = playAudioData.parentPath;
        audioItem.albumName = playAudioData.albumName;
        audioItem.artistName = playAudioData.artistName;
        Uri uri = playAudioData.playUri;
        audioItem.data = uri == null ? "" : uri.toString();
        audioItem.displayName = playAudioData.displayName;
        audioItem.mineType = playAudioData.mineType;
        audioItem.dateAdd = playAudioData.dateAdd;
        audioItem.dateModified = playAudioData.dateModified;
        audioItem.duration = playAudioData.duration;
        audioItem.size = playAudioData.size;
        String str = playAudioData.md5Str;
        audioItem.md5Str = str != null ? str : "";
        audioItem.isMusicVideo = playAudioData.isMusicVideo;
        return audioItem;
    }

    public static PlayAudioData restore(Intent intent) {
        PlayAudioData playAudioData = new PlayAudioData();
        playAudioData.mediaId = intent.getIntExtra("play_media_id", -1);
        playAudioData.bucketId = intent.getLongExtra("play_bucket_id", -1L);
        playAudioData.fromInternal = intent.getBooleanExtra("media_from_internal", false);
        playAudioData.playPosition = intent.getLongExtra("play_position", 0L);
        playAudioData.playUri = intent.getData();
        playAudioData.isFromNet = intent.getBooleanExtra("tag_from_net", false);
        playAudioData.selectedPosition = intent.getIntExtra("tag_select_position", -1);
        playAudioData.speed = intent.getFloatExtra("tag_play_speed", 1.0f);
        playAudioData.listFlag = intent.getIntExtra("listFlag", 0);
        playAudioData.parentPath = intent.getStringExtra(TAG_PARENT_PATH);
        boolean booleanExtra = intent.getBooleanExtra(TAG_NEED_PLAY, false);
        playAudioData.autoPlay = booleanExtra;
        if (!booleanExtra && "android.intent.action.VIEW".equals(intent.getAction())) {
            playAudioData.autoPlay = true;
        }
        playAudioData.albumName = intent.getStringExtra(TAG_ALBUM_NAME);
        playAudioData.artistName = intent.getStringExtra(TAG_ARTIST_NAME);
        playAudioData.playListId = intent.getLongExtra(TAG_PLAYLIST_ID, -1L);
        playAudioData.displayName = intent.getStringExtra("tag_display_name");
        playAudioData.folderName = intent.getStringExtra("folder_name");
        playAudioData.sourceAction = intent.getStringExtra(TAG_SOURCE_ACTION);
        playAudioData.mineType = intent.getStringExtra(TAG_MINE_TYPE);
        playAudioData.from = intent.getIntExtra("from", 0);
        playAudioData.dateAdd = intent.getLongExtra(TAG_ADD_DATE, 0L);
        playAudioData.dateModified = intent.getLongExtra(TAG_MODIFY_DATE, 0L);
        playAudioData.duration = intent.getLongExtra("duration", 0L);
        playAudioData.size = intent.getLongExtra(TAG_SIZE, 0L);
        playAudioData.md5Str = intent.getStringExtra(TAG_MD5);
        playAudioData.isMusicVideo = intent.getBooleanExtra(TAG_MUSIC_VIDEO, false);
        playAudioData.isShuffle = intent.getBooleanExtra(TAG_SHUFFLE, false);
        return playAudioData;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public Uri getMediaIdUri() {
        Uri uri = this.playUri;
        if (uri != null) {
            return uri;
        }
        int i = this.mediaId;
        if (i == -1) {
            return null;
        }
        return MediaItem.getUri(i, this.fromInternal);
    }

    public boolean isBucketValidate() {
        return this.bucketId != -1;
    }

    public boolean isSamePlayAudioData(PlayAudioData playAudioData) {
        return playAudioData != null && this.mediaId == playAudioData.mediaId;
    }

    public void readFromParcel(Parcel parcel) {
        this.mediaId = parcel.readInt();
        this.bucketId = parcel.readLong();
        this.parentPath = parcel.readString();
        this.fromInternal = parcel.readByte() != 0;
        this.playUri = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.playPosition = parcel.readLong();
        this.selectedPosition = parcel.readInt();
        this.isFromNet = parcel.readByte() != 0;
        this.speed = parcel.readFloat();
        this.listFlag = parcel.readInt();
        this.autoPlay = parcel.readByte() != 0;
        this.albumName = parcel.readString();
        this.artistName = parcel.readString();
        this.playListId = parcel.readLong();
        this.displayName = parcel.readString();
        this.folderName = parcel.readString();
        this.sourceAction = parcel.readString();
        this.mineType = parcel.readString();
        this.from = parcel.readInt();
        this.duration = parcel.readLong();
        this.size = parcel.readLong();
        this.dateAdd = parcel.readLong();
        this.dateModified = parcel.readLong();
    }

    public PlayAudioData setData(Uri uri) {
        this.playUri = uri;
        return this;
    }

    public void toIntent(Intent intent) {
        intent.putExtra("play_media_id", this.mediaId);
        intent.putExtra("play_bucket_id", this.bucketId);
        intent.putExtra("media_from_internal", this.fromInternal);
        intent.putExtra("tag_from_net", this.isFromNet);
        intent.putExtra("play_position", this.playPosition);
        intent.setData(this.playUri);
        intent.putExtra(TAG_ALBUM_NAME, this.albumName);
        intent.putExtra(TAG_ARTIST_NAME, this.artistName);
        intent.putExtra("tag_select_position", this.selectedPosition);
        intent.putExtra("tag_play_speed", this.speed);
        intent.putExtra("listFlag", this.listFlag);
        intent.putExtra(TAG_PARENT_PATH, this.parentPath);
        intent.putExtra(TAG_NEED_PLAY, this.autoPlay);
        intent.putExtra(TAG_PLAYLIST_ID, this.playListId);
        intent.putExtra("tag_display_name", this.displayName);
        intent.putExtra("folder_name", this.folderName);
        intent.putExtra(TAG_SOURCE_ACTION, this.sourceAction);
        intent.putExtra(TAG_MINE_TYPE, this.mineType);
        intent.putExtra("from", this.from);
        intent.putExtra("duration", this.duration);
        intent.putExtra(TAG_ADD_DATE, this.dateAdd);
        intent.putExtra(TAG_MODIFY_DATE, this.dateModified);
        intent.putExtra(TAG_SIZE, this.size);
        intent.putExtra(TAG_MD5, this.md5Str);
        intent.putExtra(TAG_MUSIC_VIDEO, this.isMusicVideo);
        intent.putExtra(TAG_SHUFFLE, this.isShuffle);
    }

    public String toString() {
        return "PlayAudioData{mediaId=" + this.mediaId + ", bucketId=" + this.bucketId + ", parentPath='" + this.parentPath + "', fromInternal=" + this.fromInternal + ", playUri=" + this.playUri + ", playPosition=" + this.playPosition + ", selectedPosition=" + this.selectedPosition + ", isFromNet=" + this.isFromNet + ", speed=" + this.speed + ", listFlag=" + this.listFlag + ", autoPlay=" + this.autoPlay + ", albumName='" + this.albumName + "', artistName='" + this.artistName + "', playListId=" + this.playListId + ", displayName='" + this.displayName + "', folderName='" + this.folderName + "', sourceAction='" + this.sourceAction + "', mineType='" + this.mineType + "', from='" + this.from + "', size='" + this.size + "', adddate='" + this.dateAdd + "', modifyDate='" + this.dateModified + "', duration='" + this.duration + "', isMusicVideo='" + this.isMusicVideo + "'}";
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.mediaId);
        parcel.writeLong(this.bucketId);
        parcel.writeString(this.parentPath);
        parcel.writeByte(this.fromInternal ? (byte) 1 : (byte) 0);
        parcel.writeParcelable(this.playUri, i);
        parcel.writeLong(this.playPosition);
        parcel.writeInt(this.selectedPosition);
        parcel.writeByte(this.isFromNet ? (byte) 1 : (byte) 0);
        parcel.writeFloat(this.speed);
        parcel.writeInt(this.listFlag);
        parcel.writeByte(this.autoPlay ? (byte) 1 : (byte) 0);
        parcel.writeString(this.albumName);
        parcel.writeString(this.artistName);
        parcel.writeLong(this.playListId);
        parcel.writeString(this.displayName);
        parcel.writeString(this.folderName);
        parcel.writeString(this.sourceAction);
        parcel.writeString(this.mineType);
        parcel.writeInt(this.from);
        parcel.writeLong(this.duration);
        parcel.writeLong(this.size);
        parcel.writeLong(this.dateAdd);
        parcel.writeLong(this.dateModified);
    }

    public PlayAudioData(Uri uri, boolean z) {
        this.mediaId = -1;
        this.parentPath = "";
        this.fromInternal = true;
        this.speed = 1.0f;
        this.playListId = -1L;
        this.playUri = uri;
        this.isFromNet = z;
    }

    public PlayAudioData(Parcel parcel) {
        this.mediaId = -1;
        this.parentPath = "";
        this.fromInternal = true;
        this.speed = 1.0f;
        this.playListId = -1L;
        this.mediaId = parcel.readInt();
        this.bucketId = parcel.readLong();
        this.parentPath = parcel.readString();
        this.fromInternal = parcel.readByte() != 0;
        this.playUri = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.playPosition = parcel.readLong();
        this.selectedPosition = parcel.readInt();
        this.isFromNet = parcel.readByte() != 0;
        this.speed = parcel.readFloat();
        this.listFlag = parcel.readInt();
        this.autoPlay = parcel.readByte() != 0;
        this.albumName = parcel.readString();
        this.artistName = parcel.readString();
        this.playListId = parcel.readLong();
        this.displayName = parcel.readString();
        this.folderName = parcel.readString();
        this.sourceAction = parcel.readString();
        this.mineType = parcel.readString();
        this.from = parcel.readInt();
        this.duration = parcel.readLong();
        this.size = parcel.readLong();
        this.dateAdd = parcel.readLong();
        this.dateModified = parcel.readLong();
    }

    public static PlayAudioData convertToPlayAudioData(MediaItem mediaItem) {
        if (mediaItem == null) {
            return null;
        }
        PlayAudioData playAudioData = new PlayAudioData();
        playAudioData.mediaId = mediaItem.id;
        playAudioData.bucketId = mediaItem.bucketId;
        playAudioData.selectedPosition = mediaItem.selectedPos;
        playAudioData.playPosition = mediaItem.playPosition;
        playAudioData.parentPath = mediaItem.parentPath;
        playAudioData.playUri = Uri.parse(TextUtils.isEmpty(mediaItem.data) ? "" : mediaItem.data);
        playAudioData.displayName = mediaItem.displayName;
        playAudioData.mineType = mediaItem.mineType;
        playAudioData.dateAdd = mediaItem.dateAdd;
        playAudioData.dateModified = mediaItem.dateModified;
        playAudioData.duration = mediaItem.duration;
        playAudioData.size = mediaItem.size;
        String str = mediaItem.md5Str;
        String str2 = str != null ? str : "";
        mediaItem.md5Str = str2;
        playAudioData.md5Str = str2;
        playAudioData.isMusicVideo = mediaItem.isMusicVideo;
        return playAudioData;
    }
}
