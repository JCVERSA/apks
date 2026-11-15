package com.transsion.dbdata.beans.media;

import android.content.Intent;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import androidx.webkit.ProxyConfig;
import com.transsion.dbdata.beans.mimedia.MIMediaDataUtils;
import com.transsion.dbdata.beans.mimedia.MIMediaInfo;
import com.transsion.dbdata.utils.LoadDataUtils;
import defpackage.r0a;
import defpackage.zu3;
import java.util.ArrayList;

public class PlayVideoData implements Parcelable {
    public static final Parcelable.Creator<PlayVideoData> CREATOR = new Parcelable.Creator<PlayVideoData>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public PlayVideoData createFromParcel(Parcel parcel) {
            return new PlayVideoData(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public PlayVideoData[] newArray(int i) {
            return new PlayVideoData[i];
        }
    };
    public static final String EXTRA_IS_SECURECAMERA = "isSecureCamera";
    public static final String EXTRA_SECURE_ALBUM = "secureAlbum";
    public static final int INVALIDATE = -1;
    public static final int PLAY_POSITION_DEF = 0;
    public static final float PLAY_SPEED_DEF = 1.0f;
    public static final String TAG_BACK_PLAY = "backPlay";
    public static final String TAG_BUCKET_ID = "play_bucket_id";
    public static final String TAG_DISPLAY_NAME = "tag_display_name";
    public static final String TAG_DURATION = "duration";
    public static final String TAG_FAVORITE = "favorite";
    public static final String TAG_FOLDER_NAME = "folder_name";
    public static final String TAG_FORCE_RESET_PLAY = "forceResetPlay";
    public static final String TAG_FROM_BACKGROUND_PLAY = "fromBackgroundPlay";
    public static final String TAG_FROM_INTERNAL = "media_from_internal";
    public static final String TAG_FROM_MINIBAR = "isFromMiniBar";
    public static final String TAG_FROM_NET = "tag_from_net";
    public static final String TAG_FROM_PIP_MUTE = "isPipMute";
    public static final String TAG_FROM_PLAY_ALL = "fromPlayAll";
    public static final String TAG_IS_PRIVATE = "is_private";
    public static final String TAG_IS_SHUFFLE = "isShuffle";
    public static final String TAG_KT_CLOUD_FILE_ID = "kt_cloud_file_id";
    public static final String TAG_LISTEN_VIDEO_MODE = "listen_video_mode";
    public static final String TAG_LIST_FLAG = "listFlag";
    public static final String TAG_MEDIA_ID = "play_media_id";
    public static final String TAG_MEDIA_PATH = "media_path";
    public static final String TAG_NEED_RECORD_VIDEOSTATES = "needRecordVideoStates";
    public static final String TAG_ORIENTATION = "tag_orientation";
    public static final String TAG_PLAY_COMPLETE = "isPlayComplete";
    public static final String TAG_PLAY_FROM = "TAG_PLAY_FROM";
    public static final String TAG_PLAY_POSITION = "play_position";
    public static final String TAG_PLAY_SPEED = "tag_play_speed";
    public static final String TAG_PLAY_TITLE = "playTitle";
    public static final String TAG_SELECT_POSITION = "tag_select_position";
    public static final String TAG_SHARE_SOURCE = "share_source";
    public static final String TAG_SHOW_BACKGROUND_PLAY = "showBackgroundPlay";
    public static final String TAG_SHOW_PICINPIC = "showPicInPic";
    public static final String TAG_SUBTITLE_INDEX = "subtitle_index";
    public static final String TAG_VIDEO_FROM = "video_from";
    public static final String TAG_VIDEO_HEIGHT = "video_height";
    public static final String TAG_VIDEO_WIDTH = "video_width";
    public static final String TAG_VIRTUAL_FOLDER = "isVirtualFolder";
    public static final String TAG_VIRTUAL_FOLDER_MATCH_NAME = "virtualFolder_matchName";
    public static final String TAG_VIRTUAL_FOLDER_MATCH_PATH = "virtualFolder_matchPath";
    public static final String TAG_YOUTUBE_ID = "youtube_id";
    public long bucketId;
    public long duration;
    public String folderName;
    public boolean forceResetPlay;
    public boolean fromBackgroundPlay;
    public boolean fromInternal;
    public boolean fromPlayAll;
    public int isFavorite;
    public boolean isFromMiniBar;
    public boolean isFromNet;
    public boolean isMusicMode;
    public boolean isPipMute;
    public boolean isPlayComplete;
    public boolean isPrivate;
    public boolean isSecureCamera;
    public boolean isShuffle;
    public boolean isUserDeleted;
    public boolean isVirtualFolder;
    public int listFlag;
    private final Object mCheckThePlayUriIsFromNetLock;
    public String mDisplayName;
    public String mKtFileId;
    private MIMediaInfo mMiMediaInfo;
    public int mPlayFrom;
    public String mShareDownloadUrl;
    public int mShareSource;
    public String mYoutubeId;
    public int mediaId;
    public boolean needRecordVideoStates;
    public String path;
    public long playPosition;
    public String playTitle;
    public Uri playUri;
    public ArrayList secureAlbum;
    public int selectedPosition;
    public boolean showBackgroundPlay;
    public boolean showPicInPic;
    public float speed;
    public int subtitleIndex;
    public String videoFrom;
    public int videoHeight;
    public int videoWidth;
    public String virtualFolderMatchName;

    public static class Builder {
        private final PlayVideoData mPlayVideoData = new PlayVideoData();

        public PlayVideoData build() {
            return this.mPlayVideoData;
        }

        public Builder fromIntent(Intent intent) {
            if (intent != null) {
                this.mPlayVideoData.mediaId = intent.getIntExtra("play_media_id", -1);
                this.mPlayVideoData.bucketId = intent.getLongExtra("play_bucket_id", -1L);
                this.mPlayVideoData.fromInternal = intent.getBooleanExtra("media_from_internal", false);
                this.mPlayVideoData.videoWidth = intent.getIntExtra(PlayVideoData.TAG_VIDEO_WIDTH, -1);
                this.mPlayVideoData.videoHeight = intent.getIntExtra(PlayVideoData.TAG_VIDEO_HEIGHT, -1);
                this.mPlayVideoData.playPosition = intent.getLongExtra("play_position", 0L);
                this.mPlayVideoData.playUri = intent.getData();
                this.mPlayVideoData.isFromNet = intent.getBooleanExtra("tag_from_net", false);
                this.mPlayVideoData.selectedPosition = intent.getIntExtra("tag_select_position", -1);
                this.mPlayVideoData.speed = intent.getFloatExtra("tag_play_speed", 1.0f);
                this.mPlayVideoData.secureAlbum = intent.getStringArrayListExtra(PlayVideoData.EXTRA_SECURE_ALBUM);
                this.mPlayVideoData.isSecureCamera = intent.getBooleanExtra(PlayVideoData.EXTRA_IS_SECURECAMERA, false);
                this.mPlayVideoData.isVirtualFolder = intent.getBooleanExtra(PlayVideoData.TAG_VIRTUAL_FOLDER, false);
                this.mPlayVideoData.virtualFolderMatchName = intent.getStringExtra(PlayVideoData.TAG_VIRTUAL_FOLDER_MATCH_NAME);
                this.mPlayVideoData.needRecordVideoStates = intent.getBooleanExtra(PlayVideoData.TAG_NEED_RECORD_VIDEOSTATES, true);
                this.mPlayVideoData.showPicInPic = intent.getBooleanExtra(PlayVideoData.TAG_SHOW_PICINPIC, false);
                this.mPlayVideoData.showBackgroundPlay = intent.getBooleanExtra(PlayVideoData.TAG_SHOW_BACKGROUND_PLAY, false);
                this.mPlayVideoData.forceResetPlay = intent.getBooleanExtra(PlayVideoData.TAG_FORCE_RESET_PLAY, false);
                this.mPlayVideoData.fromBackgroundPlay = intent.getBooleanExtra(PlayVideoData.TAG_FROM_BACKGROUND_PLAY, false);
                this.mPlayVideoData.fromPlayAll = intent.getBooleanExtra(PlayVideoData.TAG_FROM_PLAY_ALL, false);
                this.mPlayVideoData.listFlag = intent.getIntExtra("listFlag", 0);
                this.mPlayVideoData.isPlayComplete = intent.getBooleanExtra(PlayVideoData.TAG_PLAY_COMPLETE, false);
                this.mPlayVideoData.subtitleIndex = intent.getIntExtra(PlayVideoData.TAG_SUBTITLE_INDEX, 0);
                this.mPlayVideoData.duration = intent.getLongExtra("duration", 0L);
                this.mPlayVideoData.folderName = intent.getStringExtra("folder_name");
                this.mPlayVideoData.playTitle = intent.getStringExtra(PlayVideoData.TAG_PLAY_TITLE);
                this.mPlayVideoData.mPlayFrom = intent.getIntExtra("TAG_PLAY_FROM", 0);
                this.mPlayVideoData.mYoutubeId = intent.getStringExtra(PlayVideoData.TAG_YOUTUBE_ID);
                this.mPlayVideoData.mKtFileId = intent.getStringExtra(PlayVideoData.TAG_KT_CLOUD_FILE_ID);
                this.mPlayVideoData.videoFrom = intent.getStringExtra(PlayVideoData.TAG_VIDEO_FROM);
                this.mPlayVideoData.isPrivate = intent.getBooleanExtra(PlayVideoData.TAG_IS_PRIVATE, false);
                this.mPlayVideoData.path = intent.getStringExtra(PlayVideoData.TAG_MEDIA_PATH);
                this.mPlayVideoData.mShareSource = intent.getIntExtra(PlayVideoData.TAG_SHARE_SOURCE, 0);
                this.mPlayVideoData.mShareDownloadUrl = intent.getStringExtra("tag_share_download_url");
                this.mPlayVideoData.isMusicMode = intent.getBooleanExtra(PlayVideoData.TAG_LISTEN_VIDEO_MODE, false);
                this.mPlayVideoData.mDisplayName = intent.getStringExtra("tag_display_name");
                this.mPlayVideoData.isShuffle = intent.getBooleanExtra(PlayVideoData.TAG_IS_SHUFFLE, false);
                this.mPlayVideoData.isFromMiniBar = intent.getBooleanExtra(PlayVideoData.TAG_FROM_MINIBAR, false);
                this.mPlayVideoData.mMiMediaInfo = (MIMediaInfo) intent.getParcelableExtra("mi_media_info");
            }
            return this;
        }

        public Builder fromMediaItem(MediaItem mediaItem) {
            if (mediaItem != null) {
                PlayVideoData playVideoData = this.mPlayVideoData;
                playVideoData.mediaId = mediaItem.id;
                playVideoData.bucketId = mediaItem.bucketId;
                playVideoData.playTitle = mediaItem.title;
                playVideoData.playUri = mediaItem.uri;
                playVideoData.path = mediaItem.data;
                playVideoData.selectedPosition = mediaItem.selectedPos;
                playVideoData.videoWidth = mediaItem.getWidth();
                this.mPlayVideoData.videoHeight = mediaItem.getHeight();
                this.mPlayVideoData.isVirtualFolder = mediaItem.isVirtualFolder();
                this.mPlayVideoData.virtualFolderMatchName = mediaItem.getVirtualFolderMatchName();
                PlayVideoData playVideoData2 = this.mPlayVideoData;
                playVideoData2.playPosition = mediaItem.playPosition;
                playVideoData2.isPlayComplete = mediaItem.isPlayComplete;
                playVideoData2.subtitleIndex = mediaItem.subtitleIndex;
                playVideoData2.duration = mediaItem.duration;
                playVideoData2.mDisplayName = mediaItem.getDisplayName();
                if (mediaItem.isYoutubeUrl) {
                    this.mPlayVideoData.mYoutubeId = mediaItem.data;
                }
                PlayVideoData playVideoData3 = this.mPlayVideoData;
                playVideoData3.mKtFileId = mediaItem.isKtFile ? mediaItem.data : "";
                playVideoData3.isFromNet = playVideoData3.isKt() || mediaItem.isYoutubeUrl;
            }
            return this;
        }

        public Builder setBucketId(long j) {
            this.mPlayVideoData.bucketId = j;
            return this;
        }

        public Builder setDisplayName(String str) {
            this.mPlayVideoData.mDisplayName = str;
            return this;
        }

        public Builder setDuration(long j) {
            this.mPlayVideoData.duration = j;
            return this;
        }

        public Builder setFolderName(String str) {
            this.mPlayVideoData.folderName = str;
            return this;
        }

        public Builder setForceResetPlay(boolean z) {
            this.mPlayVideoData.forceResetPlay = z;
            return this;
        }

        public Builder setFromBackgroundPlay(boolean z) {
            this.mPlayVideoData.fromBackgroundPlay = z;
            return this;
        }

        public Builder setFromInternal(boolean z) {
            this.mPlayVideoData.fromInternal = z;
            return this;
        }

        public Builder setFromPlayAll(boolean z) {
            this.mPlayVideoData.fromPlayAll = z;
            return this;
        }

        public Builder setIsFavorite(int i) {
            this.mPlayVideoData.isFavorite = i;
            return this;
        }

        public Builder setIsFromMiniBar(boolean z) {
            this.mPlayVideoData.isFromMiniBar = z;
            return this;
        }

        public Builder setIsFromNet(boolean z) {
            this.mPlayVideoData.isFromNet = z;
            return this;
        }

        public Builder setIsMusicMode(boolean z) {
            this.mPlayVideoData.isMusicMode = z;
            return this;
        }

        public Builder setIsPlayComplete(boolean z) {
            this.mPlayVideoData.isPlayComplete = z;
            return this;
        }

        public Builder setIsPrivate(boolean z) {
            this.mPlayVideoData.isPrivate = z;
            return this;
        }

        public Builder setIsShuffle(boolean z) {
            this.mPlayVideoData.isShuffle = z;
            return this;
        }

        public Builder setIsVirtualFolder(boolean z) {
            this.mPlayVideoData.isVirtualFolder = z;
            return this;
        }

        public Builder setKtFileId(String str) {
            this.mPlayVideoData.mKtFileId = str;
            return this;
        }

        public Builder setListFlag(int i) {
            this.mPlayVideoData.listFlag = i;
            return this;
        }

        public Builder setMediaId(int i) {
            this.mPlayVideoData.mediaId = i;
            return this;
        }

        public Builder setMiMediaInfo(MIMediaInfo mIMediaInfo) {
            this.mPlayVideoData.mMiMediaInfo = mIMediaInfo;
            return this;
        }

        public Builder setNeedRecordVideoStates(boolean z) {
            this.mPlayVideoData.needRecordVideoStates = z;
            return this;
        }

        public Builder setPath(String str) {
            this.mPlayVideoData.path = str;
            return this;
        }

        public Builder setPlayFrom(int i) {
            this.mPlayVideoData.mPlayFrom = i;
            return this;
        }

        public Builder setPlayPosition(long j) {
            this.mPlayVideoData.setPlayPosition(j);
            return this;
        }

        public Builder setPlayTitle(String str) {
            this.mPlayVideoData.playTitle = str;
            return this;
        }

        public Builder setPlayUri(Uri uri) {
            this.mPlayVideoData.playUri = uri;
            return this;
        }

        public Builder setSelectedPosition(int i) {
            this.mPlayVideoData.selectedPosition = i;
            return this;
        }

        public Builder setShareDownloadUrl(String str) {
            this.mPlayVideoData.mShareDownloadUrl = str;
            return this;
        }

        public Builder setShareSource(int i) {
            this.mPlayVideoData.mShareSource = i;
            return this;
        }

        public Builder setShowBackgroundPlay(boolean z) {
            this.mPlayVideoData.showBackgroundPlay = z;
            return this;
        }

        public Builder setShowPicInPic(boolean z) {
            this.mPlayVideoData.showPicInPic = z;
            return this;
        }

        public Builder setSpeed(float f) {
            this.mPlayVideoData.speed = f;
            return this;
        }

        public Builder setSubtitleIndex(int i) {
            this.mPlayVideoData.subtitleIndex = i;
            return this;
        }

        public Builder setVideoFrom(String str) {
            this.mPlayVideoData.videoFrom = str;
            return this;
        }

        public Builder setVideoHeight(int i) {
            this.mPlayVideoData.videoHeight = i;
            return this;
        }

        public Builder setVideoWidth(int i) {
            this.mPlayVideoData.videoWidth = i;
            return this;
        }

        public Builder setVirtualFolderMatchName(String str) {
            this.mPlayVideoData.virtualFolderMatchName = str;
            return this;
        }

        public Builder setYoutubeId(String str) {
            this.mPlayVideoData.mYoutubeId = str;
            return this;
        }

        public Builder setPlayFrom(ePlayFrom eplayfrom) {
            this.mPlayVideoData.mPlayFrom = eplayfrom.from;
            return this;
        }
    }

    public enum ePlayFrom {
        INTERNAL(100),
        EXTERNAL(101),
        FILE_MANAGE_APP(103),
        PHOTO_ALBUM_APP(102),
        SYSTEM_MEDIA_NOTICE(104),
        PLAY_FROM_PIP(105);

        public final int from;

        ePlayFrom(int i) {
            this.from = i;
        }
    }

    public PlayVideoData() {
        this.mediaId = -1;
        this.fromInternal = false;
        this.speed = 1.0f;
        this.virtualFolderMatchName = "";
        this.mPlayFrom = ePlayFrom.INTERNAL.from;
        this.isShuffle = false;
        this.isFromMiniBar = false;
        this.mCheckThePlayUriIsFromNetLock = new Object();
    }

    public static Builder builder() {
        return new Builder();
    }

    public static PlayVideoData convertToPlayVideoData(MediaItem mediaItem) {
        if (mediaItem == null) {
            return null;
        }
        PlayVideoData playVideoData = new PlayVideoData();
        playVideoData.mediaId = mediaItem.id;
        playVideoData.bucketId = mediaItem.bucketId;
        playVideoData.playTitle = mediaItem.title;
        playVideoData.playUri = mediaItem.uri;
        playVideoData.path = mediaItem.data;
        playVideoData.selectedPosition = mediaItem.selectedPos;
        playVideoData.videoWidth = mediaItem.getWidth();
        playVideoData.videoHeight = mediaItem.getHeight();
        playVideoData.isVirtualFolder = mediaItem.isVirtualFolder();
        playVideoData.virtualFolderMatchName = mediaItem.getVirtualFolderMatchName();
        playVideoData.playPosition = mediaItem.playPosition;
        playVideoData.isPlayComplete = mediaItem.isPlayComplete;
        playVideoData.subtitleIndex = mediaItem.subtitleIndex;
        playVideoData.duration = mediaItem.duration;
        playVideoData.mDisplayName = mediaItem.getDisplayName();
        if (mediaItem.isYoutubeUrl) {
            playVideoData.mYoutubeId = mediaItem.data;
        }
        playVideoData.mKtFileId = mediaItem.isKtFile ? mediaItem.data : "";
        playVideoData.mMiMediaInfo = mediaItem.getMiMediaInfo();
        playVideoData.isFromNet = playVideoData.isKt() || mediaItem.isYoutubeUrl || MIMediaDataUtils.INSTANCE.isMiMediaVideo(playVideoData);
        return playVideoData;
    }

    public static PlayVideoData createKtPlayData(long j, String str, int i, int i2, int i3, String str2, int i4) {
        PlayVideoData playVideoData = new PlayVideoData();
        playVideoData.bucketId = j;
        playVideoData.playTitle = str;
        playVideoData.videoWidth = i;
        playVideoData.videoHeight = i2;
        playVideoData.duration = i3;
        playVideoData.mKtFileId = str2;
        playVideoData.listFlag = i4;
        playVideoData.isFromNet = true;
        return playVideoData;
    }

    public static PlayVideoData createNetPlayData(String str, String str2, int i, int i2) {
        PlayVideoData playVideoData = new PlayVideoData();
        playVideoData.playUri = Uri.parse(str);
        playVideoData.playTitle = str2;
        playVideoData.isFromNet = true;
        playVideoData.videoWidth = i;
        playVideoData.videoHeight = i2;
        return playVideoData;
    }

    public static PlayVideoData createYoutubePlayData(String str, String str2, int i, int i2, String str3, boolean z, long j, boolean z2) {
        PlayVideoData playVideoData = new PlayVideoData();
        playVideoData.playUri = Uri.parse(str);
        playVideoData.playTitle = str2;
        playVideoData.isFromNet = true;
        playVideoData.videoWidth = i;
        playVideoData.videoHeight = i2;
        playVideoData.mYoutubeId = str3;
        playVideoData.needRecordVideoStates = z;
        playVideoData.duration = j;
        playVideoData.mShareSource = z2 ? 1 : 0;
        return playVideoData;
    }

    public static PlayVideoData restore(Intent intent) {
        PlayVideoData playVideoData = new PlayVideoData();
        playVideoData.mediaId = intent.getIntExtra("play_media_id", -1);
        playVideoData.bucketId = intent.getLongExtra("play_bucket_id", -1L);
        playVideoData.fromInternal = intent.getBooleanExtra("media_from_internal", false);
        playVideoData.videoWidth = intent.getIntExtra(TAG_VIDEO_WIDTH, -1);
        playVideoData.videoHeight = intent.getIntExtra(TAG_VIDEO_HEIGHT, -1);
        playVideoData.playPosition = intent.getLongExtra("play_position", 0L);
        playVideoData.playUri = intent.getData();
        playVideoData.isFromNet = intent.getBooleanExtra("tag_from_net", false);
        playVideoData.selectedPosition = intent.getIntExtra("tag_select_position", -1);
        playVideoData.speed = intent.getFloatExtra("tag_play_speed", 1.0f);
        playVideoData.secureAlbum = intent.getStringArrayListExtra(EXTRA_SECURE_ALBUM);
        playVideoData.isSecureCamera = intent.getBooleanExtra(EXTRA_IS_SECURECAMERA, false);
        playVideoData.isVirtualFolder = intent.getBooleanExtra(TAG_VIRTUAL_FOLDER, false);
        playVideoData.virtualFolderMatchName = intent.getStringExtra(TAG_VIRTUAL_FOLDER_MATCH_NAME);
        playVideoData.needRecordVideoStates = intent.getBooleanExtra(TAG_NEED_RECORD_VIDEOSTATES, true);
        playVideoData.showPicInPic = intent.getBooleanExtra(TAG_SHOW_PICINPIC, false);
        playVideoData.showBackgroundPlay = intent.getBooleanExtra(TAG_SHOW_BACKGROUND_PLAY, false);
        playVideoData.forceResetPlay = intent.getBooleanExtra(TAG_FORCE_RESET_PLAY, false);
        playVideoData.fromBackgroundPlay = intent.getBooleanExtra(TAG_FROM_BACKGROUND_PLAY, false);
        playVideoData.fromPlayAll = intent.getBooleanExtra(TAG_FROM_PLAY_ALL, false);
        playVideoData.listFlag = intent.getIntExtra("listFlag", 0);
        playVideoData.isPlayComplete = intent.getBooleanExtra(TAG_PLAY_COMPLETE, false);
        playVideoData.subtitleIndex = intent.getIntExtra(TAG_SUBTITLE_INDEX, 0);
        playVideoData.duration = intent.getLongExtra("duration", 0L);
        playVideoData.folderName = intent.getStringExtra("folder_name");
        playVideoData.playTitle = intent.getStringExtra(TAG_PLAY_TITLE);
        playVideoData.mPlayFrom = intent.getIntExtra("TAG_PLAY_FROM", 0);
        playVideoData.mYoutubeId = intent.getStringExtra(TAG_YOUTUBE_ID);
        playVideoData.mKtFileId = intent.getStringExtra(TAG_KT_CLOUD_FILE_ID);
        playVideoData.videoFrom = intent.getStringExtra(TAG_VIDEO_FROM);
        playVideoData.isPrivate = intent.getBooleanExtra(TAG_IS_PRIVATE, false);
        playVideoData.path = intent.getStringExtra(TAG_MEDIA_PATH);
        playVideoData.mShareSource = intent.getIntExtra(TAG_SHARE_SOURCE, 0);
        playVideoData.mShareDownloadUrl = intent.getStringExtra("tag_share_download_url");
        playVideoData.isMusicMode = intent.getBooleanExtra(TAG_LISTEN_VIDEO_MODE, false);
        playVideoData.mDisplayName = intent.getStringExtra("tag_display_name");
        playVideoData.isShuffle = intent.getBooleanExtra(TAG_IS_SHUFFLE, false);
        playVideoData.isFromMiniBar = intent.getBooleanExtra(TAG_FROM_MINIBAR, false);
        playVideoData.mMiMediaInfo = (MIMediaInfo) intent.getParcelableExtra("mi_media_info");
        return playVideoData;
    }

    public void checkThePlayUriIsFromNet() {
        Uri uri;
        synchronized (this.mCheckThePlayUriIsFromNetLock) {
            try {
                if (!LoadDataUtils.m(this.mediaId) && (uri = this.playUri) != null && (ProxyConfig.MATCH_HTTP.equalsIgnoreCase(uri.getScheme()) || ProxyConfig.MATCH_HTTPS.equalsIgnoreCase(uri.getScheme()) || "rtsp".equalsIgnoreCase(uri.getScheme()))) {
                    Log.i("PlayVideoData", "checkThePlayUriIsFromNet isFromNet");
                    this.isFromNet = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public String getDisplayName() {
        if (!r0a.g(this.mDisplayName)) {
            return this.mDisplayName;
        }
        if (!r0a.g(this.playTitle)) {
            return this.playTitle;
        }
        if (!r0a.g(this.path)) {
            String strU = zu3.u(this.path);
            this.playTitle = strU;
            this.mDisplayName = strU;
            return strU;
        }
        Uri uri = this.playUri;
        if (uri == null || r0a.g(uri.toString())) {
            return "";
        }
        String strU2 = zu3.u(this.playUri.toString());
        this.playTitle = strU2;
        this.mDisplayName = strU2;
        return strU2;
    }

    public String getFromSource() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.listFlag);
        int i = this.listFlag;
        if (i == 3) {
            sb.append("_");
            sb.append(this.folderName);
        } else if (i == 30) {
            sb.append("_");
            sb.append(this.bucketId);
        }
        return sb.toString();
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

    public MediaItem getMediaItem() {
        MediaItem mediaItem = new MediaItem();
        mediaItem.id = this.mediaId;
        mediaItem.bucketId = this.bucketId;
        mediaItem.uri = this.playUri;
        mediaItem.data = this.path;
        mediaItem.selectedPos = this.selectedPosition;
        mediaItem.width = this.videoWidth;
        mediaItem.height = this.videoHeight;
        mediaItem.isVirtualFolder = this.isVirtualFolder;
        mediaItem.virtualFolderMatchName = this.virtualFolderMatchName;
        mediaItem.playPosition = (int) this.playPosition;
        mediaItem.isPlayComplete = this.isPlayComplete;
        mediaItem.subtitleIndex = this.subtitleIndex;
        mediaItem.duration = this.duration;
        mediaItem.displayName = this.mDisplayName;
        if (this.isFromNet) {
            mediaItem.isYoutubeUrl = true;
            mediaItem.data = this.mYoutubeId;
        }
        mediaItem.setMiMediaInfo(this.mMiMediaInfo);
        return mediaItem;
    }

    public MIMediaInfo getMiMediaInfo() {
        return this.mMiMediaInfo;
    }

    public boolean isBucketValidate() {
        return this.bucketId != -1 || isKt();
    }

    public boolean isFromSystemMediaNotice() {
        return this.mPlayFrom == ePlayFrom.SYSTEM_MEDIA_NOTICE.from;
    }

    public boolean isKt() {
        return !r0a.i(this.mKtFileId);
    }

    public boolean isKtShare() {
        return this.mShareSource == 2;
    }

    public boolean isSamePlayVideoData(PlayVideoData playVideoData) {
        if (playVideoData == null) {
            return false;
        }
        if (this.listFlag == 2) {
            return this.mediaId == playVideoData.mediaId;
        }
        String str = this.virtualFolderMatchName;
        return str != null && this.mediaId == playVideoData.mediaId && this.isVirtualFolder == playVideoData.isVirtualFolder && str.equals(playVideoData.virtualFolderMatchName);
    }

    public boolean isSameUri(Uri uri) {
        Uri uri2 = this.playUri;
        return uri2 != null && uri2.equals(uri);
    }

    public boolean isValidResolution() {
        return this.videoWidth > 0 && this.videoHeight > 0;
    }

    public PlayVideoData setData(Uri uri) {
        this.playUri = uri;
        return this;
    }

    public void setForceResetPlay(boolean z) {
        this.forceResetPlay = z;
    }

    public void setFromBackgroundPlay(boolean z) {
        this.fromBackgroundPlay = z;
    }

    public void setFromPlayAll(boolean z) {
        this.fromPlayAll = z;
    }

    public void setMiMediaInfo(MIMediaInfo mIMediaInfo) {
        this.mMiMediaInfo = mIMediaInfo;
    }

    public void setNeedRecordVideoStates(boolean z) {
        this.needRecordVideoStates = z;
    }

    public void setPlayPosition(long j) {
        if (Math.abs(this.duration - j) < 1000) {
            this.playPosition = 0L;
        } else {
            this.playPosition = j;
        }
    }

    public void setShowBackgroundPlay(boolean z) {
        this.showBackgroundPlay = z;
    }

    public void setShowPicInPic(boolean z) {
        this.showPicInPic = z;
    }

    public void toIntent(Intent intent) {
        intent.putExtra("play_media_id", this.mediaId);
        intent.putExtra("play_bucket_id", this.bucketId);
        intent.putExtra("media_from_internal", this.fromInternal);
        intent.putExtra(TAG_VIDEO_WIDTH, this.videoWidth);
        intent.putExtra(TAG_VIDEO_HEIGHT, this.videoHeight);
        intent.putExtra("tag_from_net", this.isFromNet);
        intent.putExtra("play_position", this.playPosition);
        intent.setData(this.playUri);
        intent.putExtra("tag_select_position", this.selectedPosition);
        intent.putExtra("tag_play_speed", this.speed);
        intent.putExtra(TAG_VIRTUAL_FOLDER, this.isVirtualFolder);
        intent.putExtra(TAG_VIRTUAL_FOLDER_MATCH_NAME, this.virtualFolderMatchName);
        intent.putExtra(TAG_NEED_RECORD_VIDEOSTATES, this.needRecordVideoStates);
        intent.putExtra(TAG_SHOW_PICINPIC, this.showPicInPic);
        intent.putExtra(TAG_SHOW_BACKGROUND_PLAY, this.showBackgroundPlay);
        intent.putExtra(TAG_FORCE_RESET_PLAY, this.forceResetPlay);
        intent.putExtra(TAG_FROM_BACKGROUND_PLAY, this.fromBackgroundPlay);
        intent.putExtra(TAG_FROM_PLAY_ALL, this.fromPlayAll);
        intent.putExtra(TAG_PLAY_COMPLETE, this.isPlayComplete);
        intent.putExtra("listFlag", this.listFlag);
        intent.putExtra(TAG_SUBTITLE_INDEX, this.subtitleIndex);
        intent.putExtra("duration", this.duration);
        intent.putExtra("folder_name", this.folderName);
        intent.putExtra(TAG_PLAY_TITLE, this.playTitle);
        intent.putExtra("TAG_PLAY_FROM", this.mPlayFrom);
        intent.putExtra(TAG_SHARE_SOURCE, this.mShareSource);
        intent.putExtra(TAG_FAVORITE, this.isFavorite);
        intent.putExtra(TAG_YOUTUBE_ID, this.mYoutubeId);
        intent.putExtra(TAG_KT_CLOUD_FILE_ID, this.mKtFileId);
        intent.putExtra(TAG_VIDEO_FROM, this.videoFrom);
        intent.putExtra(TAG_MEDIA_PATH, this.path);
        intent.putExtra("tag_share_download_url", this.mShareDownloadUrl);
        intent.putExtra(TAG_FROM_PIP_MUTE, this.isPipMute);
        intent.putExtra(TAG_IS_PRIVATE, this.isPrivate);
        intent.putExtra("tag_display_name", this.mDisplayName);
        intent.putExtra(TAG_IS_SHUFFLE, this.isShuffle);
        intent.putExtra(TAG_FROM_MINIBAR, this.isFromMiniBar);
        MIMediaInfo mIMediaInfo = this.mMiMediaInfo;
        if (mIMediaInfo != null) {
            intent.putExtra("mi_media_info", mIMediaInfo);
        }
    }

    public MediaItem toMediaItem() {
        String str;
        MediaItem mediaItem = new MediaItem();
        mediaItem.id = this.mediaId;
        mediaItem.bucketId = this.bucketId;
        String str2 = this.playTitle;
        mediaItem.title = str2;
        mediaItem.displayName = str2;
        mediaItem.mineType = "";
        mediaItem.bucketDisplayName = "";
        mediaItem.isKtFile = isKt();
        if (isKt()) {
            str = this.mKtFileId;
        } else {
            str = r0a.i(this.mYoutubeId) ? this.path : this.mYoutubeId;
        }
        mediaItem.data = str;
        mediaItem.duration = this.duration;
        mediaItem.fromInternal = this.fromInternal;
        mediaItem.isYoutubeUrl = !r0a.i(this.mYoutubeId);
        mediaItem.uri = this.playUri;
        mediaItem.playPosition = (int) this.playPosition;
        mediaItem.isVirtualFolder = this.isVirtualFolder;
        mediaItem.virtualFolderMatchName = this.virtualFolderMatchName;
        return mediaItem;
    }

    public String toString() {
        return "PlayVideoData{mediaId=" + this.mediaId + ", bucketId=" + this.bucketId + ", fromInternal='" + this.fromInternal + "', playUri='" + this.playUri + "', path='" + this.path + "', videoWidth='" + this.videoWidth + "', videoHeight='" + this.videoHeight + "', playPosition='" + this.playPosition + "', duration='" + this.duration + "', isFromNet=" + this.isFromNet + ", isVirtualFolder=" + this.isVirtualFolder + ", virtualFolderMatchName=" + this.virtualFolderMatchName + ", needRecordVideoStates=" + this.needRecordVideoStates + ", showPicInPic=" + this.showPicInPic + ", fromBackgroundPlay=" + this.fromBackgroundPlay + ", forceResetPlay=" + this.forceResetPlay + ", listFlag=" + this.listFlag + ", folderName=" + this.folderName + ", playTitle=" + this.playTitle + ", playFrom=" + this.mPlayFrom + ", playFrom=" + this.fromPlayAll + ", shareResource=" + this.mShareSource + ", isFavorite =" + this.isFavorite + ", fromPlayAll =" + this.fromPlayAll + ", isMusicMode =" + this.isMusicMode + ", displayName =" + this.mDisplayName + ",isPlayComplete=" + this.isPlayComplete + ", miMediaInfo =" + this.mMiMediaInfo + '}';
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.mediaId);
        parcel.writeLong(this.bucketId);
        parcel.writeByte(this.fromInternal ? (byte) 1 : (byte) 0);
        parcel.writeParcelable(this.playUri, i);
        parcel.writeInt(this.videoWidth);
        parcel.writeInt(this.videoHeight);
        parcel.writeLong(this.playPosition);
        parcel.writeInt(this.selectedPosition);
        parcel.writeFloat(this.speed);
        parcel.writeByte(this.isVirtualFolder ? (byte) 1 : (byte) 0);
        parcel.writeString(this.virtualFolderMatchName);
        parcel.writeByte(this.needRecordVideoStates ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.showPicInPic ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.showBackgroundPlay ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.forceResetPlay ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.fromBackgroundPlay ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.fromPlayAll ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.listFlag);
        parcel.writeByte(this.isPlayComplete ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.subtitleIndex);
        parcel.writeLong(this.duration);
        parcel.writeString(this.folderName);
        parcel.writeString(this.playTitle);
        parcel.writeInt(this.mPlayFrom);
        parcel.writeInt(this.mShareSource);
        parcel.writeInt(this.isFavorite);
        parcel.writeString(this.mYoutubeId);
        parcel.writeString(this.videoFrom);
        parcel.writeInt(this.isPrivate ? 1 : 0);
        parcel.writeString(this.path);
        parcel.writeString(this.mShareDownloadUrl);
        parcel.writeInt(this.isMusicMode ? 1 : 0);
        parcel.writeString(this.mDisplayName);
        parcel.writeByte(this.isShuffle ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.isFromMiniBar ? 1 : 0);
        parcel.writeParcelable(this.mMiMediaInfo, i);
    }

    public PlayVideoData(Uri uri, boolean z) {
        this.mediaId = -1;
        this.fromInternal = false;
        this.speed = 1.0f;
        this.virtualFolderMatchName = "";
        this.mPlayFrom = ePlayFrom.INTERNAL.from;
        this.isShuffle = false;
        this.isFromMiniBar = false;
        this.mCheckThePlayUriIsFromNetLock = new Object();
        this.playUri = uri;
        this.isFromNet = z;
    }

    public PlayVideoData(Parcel parcel) {
        this.mediaId = -1;
        this.fromInternal = false;
        this.speed = 1.0f;
        this.virtualFolderMatchName = "";
        this.mPlayFrom = ePlayFrom.INTERNAL.from;
        this.isShuffle = false;
        this.isFromMiniBar = false;
        this.mCheckThePlayUriIsFromNetLock = new Object();
        this.mediaId = parcel.readInt();
        this.bucketId = parcel.readLong();
        this.fromInternal = parcel.readByte() != 0;
        this.playUri = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.videoWidth = parcel.readInt();
        this.videoHeight = parcel.readInt();
        this.playPosition = parcel.readLong();
        this.selectedPosition = parcel.readInt();
        this.speed = parcel.readFloat();
        this.isVirtualFolder = parcel.readByte() != 0;
        this.virtualFolderMatchName = parcel.readString();
        this.needRecordVideoStates = parcel.readByte() != 0;
        this.showPicInPic = parcel.readByte() != 0;
        this.showBackgroundPlay = parcel.readByte() != 0;
        this.forceResetPlay = parcel.readByte() != 0;
        this.fromBackgroundPlay = parcel.readByte() != 0;
        this.fromPlayAll = parcel.readByte() != 0;
        this.listFlag = parcel.readInt();
        this.isPlayComplete = parcel.readByte() != 0;
        this.subtitleIndex = parcel.readInt();
        this.duration = parcel.readLong();
        this.folderName = parcel.readString();
        this.playTitle = parcel.readString();
        this.mPlayFrom = parcel.readInt();
        this.mShareSource = parcel.readInt();
        this.isFavorite = parcel.readInt();
        this.mYoutubeId = parcel.readString();
        this.videoFrom = parcel.readString();
        this.isPrivate = parcel.readInt() == 1;
        this.path = parcel.readString();
        this.mShareDownloadUrl = parcel.readString();
        this.isMusicMode = parcel.readInt() == 1;
        this.mDisplayName = parcel.readString();
        this.isShuffle = parcel.readByte() != 0;
        this.isFromMiniBar = parcel.readInt() != 0;
        this.mMiMediaInfo = (MIMediaInfo) parcel.readParcelable(MIMediaInfo.class.getClassLoader());
    }
}
