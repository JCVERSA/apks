.class public Lcom/transsion/dbdata/beans/media/PlayVideoData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;,
        Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/dbdata/beans/media/PlayVideoData;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_IS_SECURECAMERA:Ljava/lang/String; = "isSecureCamera"

.field public static final EXTRA_SECURE_ALBUM:Ljava/lang/String; = "secureAlbum"

.field public static final INVALIDATE:I = -0x1

.field public static final PLAY_POSITION_DEF:I = 0x0

.field public static final PLAY_SPEED_DEF:F = 1.0f

.field public static final TAG_BACK_PLAY:Ljava/lang/String; = "backPlay"

.field public static final TAG_BUCKET_ID:Ljava/lang/String; = "play_bucket_id"

.field public static final TAG_DISPLAY_NAME:Ljava/lang/String; = "tag_display_name"

.field public static final TAG_DURATION:Ljava/lang/String; = "duration"

.field public static final TAG_FAVORITE:Ljava/lang/String; = "favorite"

.field public static final TAG_FOLDER_NAME:Ljava/lang/String; = "folder_name"

.field public static final TAG_FORCE_RESET_PLAY:Ljava/lang/String; = "forceResetPlay"

.field public static final TAG_FROM_BACKGROUND_PLAY:Ljava/lang/String; = "fromBackgroundPlay"

.field public static final TAG_FROM_INTERNAL:Ljava/lang/String; = "media_from_internal"

.field public static final TAG_FROM_MINIBAR:Ljava/lang/String; = "isFromMiniBar"

.field public static final TAG_FROM_NET:Ljava/lang/String; = "tag_from_net"

.field public static final TAG_FROM_PIP_MUTE:Ljava/lang/String; = "isPipMute"

.field public static final TAG_FROM_PLAY_ALL:Ljava/lang/String; = "fromPlayAll"

.field public static final TAG_IS_PRIVATE:Ljava/lang/String; = "is_private"

.field public static final TAG_IS_SHUFFLE:Ljava/lang/String; = "isShuffle"

.field public static final TAG_KT_CLOUD_FILE_ID:Ljava/lang/String; = "kt_cloud_file_id"

.field public static final TAG_LISTEN_VIDEO_MODE:Ljava/lang/String; = "listen_video_mode"

.field public static final TAG_LIST_FLAG:Ljava/lang/String; = "listFlag"

.field public static final TAG_MEDIA_ID:Ljava/lang/String; = "play_media_id"

.field public static final TAG_MEDIA_PATH:Ljava/lang/String; = "media_path"

.field public static final TAG_NEED_RECORD_VIDEOSTATES:Ljava/lang/String; = "needRecordVideoStates"

.field public static final TAG_ORIENTATION:Ljava/lang/String; = "tag_orientation"

.field public static final TAG_PLAY_COMPLETE:Ljava/lang/String; = "isPlayComplete"

.field public static final TAG_PLAY_FROM:Ljava/lang/String; = "TAG_PLAY_FROM"

.field public static final TAG_PLAY_POSITION:Ljava/lang/String; = "play_position"

.field public static final TAG_PLAY_SPEED:Ljava/lang/String; = "tag_play_speed"

.field public static final TAG_PLAY_TITLE:Ljava/lang/String; = "playTitle"

.field public static final TAG_SELECT_POSITION:Ljava/lang/String; = "tag_select_position"

.field public static final TAG_SHARE_SOURCE:Ljava/lang/String; = "share_source"

.field public static final TAG_SHOW_BACKGROUND_PLAY:Ljava/lang/String; = "showBackgroundPlay"

.field public static final TAG_SHOW_PICINPIC:Ljava/lang/String; = "showPicInPic"

.field public static final TAG_SUBTITLE_INDEX:Ljava/lang/String; = "subtitle_index"

.field public static final TAG_VIDEO_FROM:Ljava/lang/String; = "video_from"

.field public static final TAG_VIDEO_HEIGHT:Ljava/lang/String; = "video_height"

.field public static final TAG_VIDEO_WIDTH:Ljava/lang/String; = "video_width"

.field public static final TAG_VIRTUAL_FOLDER:Ljava/lang/String; = "isVirtualFolder"

.field public static final TAG_VIRTUAL_FOLDER_MATCH_NAME:Ljava/lang/String; = "virtualFolder_matchName"

.field public static final TAG_VIRTUAL_FOLDER_MATCH_PATH:Ljava/lang/String; = "virtualFolder_matchPath"

.field public static final TAG_YOUTUBE_ID:Ljava/lang/String; = "youtube_id"


# instance fields
.field public bucketId:J

.field public duration:J

.field public folderName:Ljava/lang/String;

.field public forceResetPlay:Z

.field public fromBackgroundPlay:Z

.field public fromInternal:Z

.field public fromPlayAll:Z

.field public isFavorite:I

.field public isFromMiniBar:Z

.field public isFromNet:Z

.field public isMusicMode:Z

.field public isPipMute:Z

.field public isPlayComplete:Z

.field public isPrivate:Z

.field public isSecureCamera:Z

.field public isShuffle:Z

.field public isUserDeleted:Z

.field public isVirtualFolder:Z

.field public listFlag:I

.field private final mCheckThePlayUriIsFromNetLock:Ljava/lang/Object;

.field public mDisplayName:Ljava/lang/String;

.field public mKtFileId:Ljava/lang/String;

.field private mMiMediaInfo:Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

.field public mPlayFrom:I

.field public mShareDownloadUrl:Ljava/lang/String;

.field public mShareSource:I

.field public mYoutubeId:Ljava/lang/String;

.field public mediaId:I

.field public needRecordVideoStates:Z

.field public path:Ljava/lang/String;

.field public playPosition:J

.field public playTitle:Ljava/lang/String;

.field public playUri:Landroid/net/Uri;

.field public secureAlbum:Ljava/util/ArrayList;

.field public selectedPosition:I

.field public showBackgroundPlay:Z

.field public showPicInPic:Z

.field public speed:F

.field public subtitleIndex:I

.field public videoFrom:Ljava/lang/String;

.field public videoHeight:I

.field public videoWidth:I

.field public virtualFolderMatchName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/dbdata/beans/media/PlayVideoData$1;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/media/PlayVideoData$1;-><init>()V

    sput-object v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mediaId:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->fromInternal:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    iput v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->speed:F

    .line 5
    const-string v1, ""

    iput-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->virtualFolderMatchName:Ljava/lang/String;

    .line 6
    sget-object v1, Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;->INTERNAL:Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;

    iget v1, v1, Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;->from:I

    iput v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mPlayFrom:I

    .line 7
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isShuffle:Z

    .line 8
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isFromMiniBar:Z

    .line 9
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mCheckThePlayUriIsFromNetLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Z)V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mediaId:I

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->fromInternal:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 13
    iput v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->speed:F

    .line 14
    const-string v1, ""

    iput-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->virtualFolderMatchName:Ljava/lang/String;

    .line 15
    sget-object v1, Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;->INTERNAL:Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;

    iget v1, v1, Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;->from:I

    iput v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mPlayFrom:I

    .line 16
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isShuffle:Z

    .line 17
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isFromMiniBar:Z

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mCheckThePlayUriIsFromNetLock:Ljava/lang/Object;

    .line 19
    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playUri:Landroid/net/Uri;

    .line 20
    iput-boolean p2, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isFromNet:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mediaId:I

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->fromInternal:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 24
    iput v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->speed:F

    .line 25
    const-string v1, ""

    iput-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->virtualFolderMatchName:Ljava/lang/String;

    .line 26
    sget-object v1, Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;->INTERNAL:Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;

    iget v1, v1, Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;->from:I

    iput v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mPlayFrom:I

    .line 27
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isShuffle:Z

    .line 28
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isFromMiniBar:Z

    .line 29
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mCheckThePlayUriIsFromNetLock:Ljava/lang/Object;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mediaId:I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->bucketId:J

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->fromInternal:Z

    .line 33
    const-class v1, Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playUri:Landroid/net/Uri;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->videoWidth:I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->videoHeight:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playPosition:J

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->selectedPosition:I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->speed:F

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    iput-boolean v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isVirtualFolder:Z

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->virtualFolderMatchName:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    iput-boolean v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->needRecordVideoStates:Z

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    move v1, v0

    :goto_3
    iput-boolean v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->showPicInPic:Z

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    move v1, v0

    :goto_4
    iput-boolean v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->showBackgroundPlay:Z

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    goto :goto_5

    :cond_5
    move v1, v0

    :goto_5
    iput-boolean v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->forceResetPlay:Z

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    goto :goto_6

    :cond_6
    move v1, v0

    :goto_6
    iput-boolean v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->fromBackgroundPlay:Z

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_7

    move v1, v2

    goto :goto_7

    :cond_7
    move v1, v0

    :goto_7
    iput-boolean v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->fromPlayAll:Z

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->listFlag:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_8

    move v1, v2

    goto :goto_8

    :cond_8
    move v1, v0

    :goto_8
    iput-boolean v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isPlayComplete:Z

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->subtitleIndex:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->duration:J

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->folderName:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playTitle:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mPlayFrom:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mShareSource:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isFavorite:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mYoutubeId:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->videoFrom:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_9

    move v1, v2

    goto :goto_9

    :cond_9
    move v1, v0

    :goto_9
    iput-boolean v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isPrivate:Z

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->path:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mShareDownloadUrl:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_a

    move v1, v2

    goto :goto_a

    :cond_a
    move v1, v0

    :goto_a
    iput-boolean v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isMusicMode:Z

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mDisplayName:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_b

    move v1, v2

    goto :goto_b

    :cond_b
    move v1, v0

    :goto_b
    iput-boolean v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isShuffle:Z

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c

    move v0, v2

    :cond_c
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isFromMiniBar:Z

    .line 65
    const-class v0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mMiMediaInfo:Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/dbdata/beans/media/PlayVideoData;Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mMiMediaInfo:Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    return-void
.end method

.method public static builder()Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;
    .locals 1

    new-instance v0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;-><init>()V

    return-object v0
.end method

.method public static convertToPlayVideoData(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/dbdata/beans/media/PlayVideoData;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/media/PlayVideoData;-><init>()V

    iget v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iput v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mediaId:I

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->bucketId:J

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->path:Ljava/lang/String;

    iget v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->selectedPos:I

    iput v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->selectedPosition:I

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/MediaItem;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->videoWidth:I

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/MediaItem;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->videoHeight:I

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/MediaItem;->isVirtualFolder()Z

    move-result v1

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isVirtualFolder:Z

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/MediaItem;->getVirtualFolderMatchName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->virtualFolderMatchName:Ljava/lang/String;

    iget v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->playPosition:I

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playPosition:J

    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isPlayComplete:Z

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isPlayComplete:Z

    iget v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->subtitleIndex:I

    iput v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->subtitleIndex:I

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->duration:J

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/MediaItem;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mDisplayName:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isYoutubeUrl:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mYoutubeId:Ljava/lang/String;

    :cond_1
    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isKtFile:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v1, ""

    :goto_0
    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mKtFileId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/MediaItem;->getMiMediaInfo()Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mMiMediaInfo:Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isKt()Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isYoutubeUrl:Z

    if-nez p0, :cond_4

    sget-object p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils;->Companion:Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils$Companion;

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils$Companion;->isMiMediaVideo(Lcom/transsion/dbdata/beans/media/PlayVideoData;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p0, 0x1

    :goto_2
    iput-boolean p0, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isFromNet:Z

    return-object v0
.end method

.method public static createKtPlayData(JLjava/lang/String;IIILjava/lang/String;I)Lcom/transsion/dbdata/beans/media/PlayVideoData;
    .locals 1

    new-instance v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/media/PlayVideoData;-><init>()V

    iput-wide p0, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->bucketId:J

    iput-object p2, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playTitle:Ljava/lang/String;

    iput p3, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->videoWidth:I

    iput p4, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->videoHeight:I

    int-to-long p0, p5

    iput-wide p0, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->duration:J

    iput-object p6, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mKtFileId:Ljava/lang/String;

    iput p7, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->listFlag:I

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isFromNet:Z

    return-object v0
.end method

.method public static createNetPlayData(Ljava/lang/String;Ljava/lang/String;II)Lcom/transsion/dbdata/beans/media/PlayVideoData;
    .locals 1

    new-instance v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/media/PlayVideoData;-><init>()V

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playUri:Landroid/net/Uri;

    iput-object p1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playTitle:Ljava/lang/String;

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isFromNet:Z

    iput p2, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->videoWidth:I

    iput p3, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->videoHeight:I

    return-object v0
.end method

.method public static createYoutubePlayData(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ZJZ)Lcom/transsion/dbdata/beans/media/PlayVideoData;
    .locals 1

    new-instance v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/media/PlayVideoData;-><init>()V

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playUri:Landroid/net/Uri;

    iput-object p1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playTitle:Ljava/lang/String;

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isFromNet:Z

    iput p2, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->videoWidth:I

    iput p3, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->videoHeight:I

    iput-object p4, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mYoutubeId:Ljava/lang/String;

    iput-boolean p5, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->needRecordVideoStates:Z

    iput-wide p6, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->duration:J

    iput p8, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mShareSource:I

    return-object v0
.end method

.method public static restore(Landroid/content/Intent;)Lcom/transsion/dbdata/beans/media/PlayVideoData;
    .locals 8

    new-instance v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/media/PlayVideoData;-><init>()V

    const-string v1, "play_media_id"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mediaId:I

    const-string v1, "play_bucket_id"

    const-wide/16 v3, -0x1

    invoke-virtual {p0, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->bucketId:J

    const-string v1, "media_from_internal"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->fromInternal:Z

    const-string v1, "video_width"

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->videoWidth:I

    const-string v1, "video_height"

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->videoHeight:I

    const-string v1, "play_position"

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playPosition:J

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playUri:Landroid/net/Uri;

    const-string v1, "tag_from_net"

    invoke-virtual {p0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isFromNet:Z

    const-string v1, "tag_select_position"

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->selectedPosition:I

    const-string v1, "tag_play_speed"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->speed:F

    const-string v1, "secureAlbum"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->secureAlbum:Ljava/util/ArrayList;

    const-string v1, "isSecureCamera"

    invoke-virtual {p0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isSecureCamera:Z

    const-string v1, "isVirtualFolder"

    invoke-virtual {p0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isVirtualFolder:Z

    const-string v1, "virtualFolder_matchName"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->virtualFolderMatchName:Ljava/lang/String;

    const-string v1, "needRecordVideoStates"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->needRecordVideoStates:Z

    const-string v1, "showPicInPic"

    invoke-virtual {p0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->showPicInPic:Z

    const-string v1, "showBackgroundPlay"

    invoke-virtual {p0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->showBackgroundPlay:Z

    const-string v1, "forceResetPlay"

    invoke-virtual {p0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->forceResetPlay:Z

    const-string v1, "fromBackgroundPlay"

    invoke-virtual {p0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->fromBackgroundPlay:Z

    const-string v1, "fromPlayAll"

    invoke-virtual {p0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->fromPlayAll:Z

    const-string v1, "listFlag"

    invoke-virtual {p0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->listFlag:I

    const-string v1, "isPlayComplete"

    invoke-virtual {p0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isPlayComplete:Z

    const-string v1, "subtitle_index"

    invoke-virtual {p0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->subtitleIndex:I

    const-string v1, "duration"

    invoke-virtual {p0, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->duration:J

    const-string v1, "folder_name"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->folderName:Ljava/lang/String;

    const-string v1, "playTitle"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playTitle:Ljava/lang/String;

    const-string v1, "TAG_PLAY_FROM"

    invoke-virtual {p0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mPlayFrom:I

    const-string v1, "youtube_id"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mYoutubeId:Ljava/lang/String;

    const-string v1, "kt_cloud_file_id"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mKtFileId:Ljava/lang/String;

    const-string v1, "video_from"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->videoFrom:Ljava/lang/String;

    const-string v1, "is_private"

    invoke-virtual {p0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isPrivate:Z

    const-string v1, "media_path"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->path:Ljava/lang/String;

    const-string v1, "share_source"

    invoke-virtual {p0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mShareSource:I

    const-string v1, "tag_share_download_url"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mShareDownloadUrl:Ljava/lang/String;

    const-string v1, "listen_video_mode"

    invoke-virtual {p0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isMusicMode:Z

    const-string v1, "tag_display_name"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mDisplayName:Ljava/lang/String;

    const-string v1, "isShuffle"

    invoke-virtual {p0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isShuffle:Z

    const-string v1, "isFromMiniBar"

    invoke-virtual {p0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isFromMiniBar:Z

    const-string v1, "mi_media_info"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    iput-object p0, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mMiMediaInfo:Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    return-object v0
.end method


# virtual methods
.method public checkThePlayUriIsFromNet()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mCheckThePlayUriIsFromNetLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mediaId:I

    invoke-static {v1}, Lcom/transsion/dbdata/utils/LoadDataUtils;->m(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    const-string v2, "http"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "https"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "rtsp"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const-string v1, "PlayVideoData"

    const-string v2, "checkThePlayUriIsFromNet isFromNet"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isFromNet:Z

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mDisplayName:Ljava/lang/String;

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mDisplayName:Ljava/lang/String;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playTitle:Ljava/lang/String;

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playTitle:Ljava/lang/String;

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->path:Ljava/lang/String;

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->path:Ljava/lang/String;

    invoke-static {v0}, Lzu3;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mDisplayName:Ljava/lang/String;

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playUri:Landroid/net/Uri;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzu3;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mDisplayName:Ljava/lang/String;

    return-object v0

    :cond_3
    const-string p0, ""

    return-object p0
.end method

.method public getFromSource()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->listFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->listFlag:I

    const/4 v2, 0x3

    const-string v3, "_"

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->folderName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 v2, 0x1e

    if-ne v1, v2, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->bucketId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMediaIdUri()Landroid/net/Uri;
    .locals 2

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mediaId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-boolean p0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->fromInternal:Z

    invoke-static {v0, p0}, Lcom/transsion/dbdata/beans/media/MediaItem;->getUri(IZ)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public getMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 3

    new-instance v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/media/MediaItem;-><init>()V

    iget v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mediaId:I

    iput v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->bucketId:J

    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playUri:Landroid/net/Uri;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->path:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->selectedPosition:I

    iput v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->selectedPos:I

    iget v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->videoWidth:I

    iput v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->width:I

    iget v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->videoHeight:I

    iput v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->height:I

    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isVirtualFolder:Z

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->isVirtualFolder:Z

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->virtualFolderMatchName:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->virtualFolderMatchName:Ljava/lang/String;

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playPosition:J

    long-to-int v1, v1

    iput v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->playPosition:I

    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isPlayComplete:Z

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->isPlayComplete:Z

    iget v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->subtitleIndex:I

    iput v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->subtitleIndex:I

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->duration:J

    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mDisplayName:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isFromNet:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->isYoutubeUrl:Z

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mYoutubeId:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mMiMediaInfo:Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/beans/media/MediaItem;->setMiMediaInfo(Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;)V

    return-object v0
.end method

.method public getMiMediaInfo()Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mMiMediaInfo:Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    return-object p0
.end method

.method public isBucketValidate()Z
    .locals 4

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->bucketId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isKt()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isFromSystemMediaNotice()Z
    .locals 1

    iget p0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mPlayFrom:I

    sget-object v0, Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;->SYSTEM_MEDIA_NOTICE:Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;

    iget v0, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;->from:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isKt()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mKtFileId:Ljava/lang/String;

    invoke-static {p0}, Lr0a;->i(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isKtShare()Z
    .locals 1

    iget p0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mShareSource:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSamePlayVideoData(Lcom/transsion/dbdata/beans/media/PlayVideoData;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->listFlag:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    iget p0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mediaId:I

    iget p1, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mediaId:I

    if-ne p0, p1, :cond_1

    move v0, v3

    :cond_1
    return v0

    :cond_2
    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->virtualFolderMatchName:Ljava/lang/String;

    if-nez v1, :cond_3

    return v0

    :cond_3
    iget v2, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mediaId:I

    iget v4, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mediaId:I

    if-ne v2, v4, :cond_4

    iget-boolean p0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isVirtualFolder:Z

    iget-boolean v2, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isVirtualFolder:Z

    if-ne p0, v2, :cond_4

    iget-object p0, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->virtualFolderMatchName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    move v0, v3

    :cond_4
    return v0
.end method

.method public isSameUri(Landroid/net/Uri;)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playUri:Landroid/net/Uri;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isValidResolution()Z
    .locals 1

    iget v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->videoWidth:I

    if-lez v0, :cond_0

    iget p0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->videoHeight:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setData(Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/PlayVideoData;
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setForceResetPlay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->forceResetPlay:Z

    return-void
.end method

.method public setFromBackgroundPlay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->fromBackgroundPlay:Z

    return-void
.end method

.method public setFromPlayAll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->fromPlayAll:Z

    return-void
.end method

.method public setMiMediaInfo(Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mMiMediaInfo:Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    return-void
.end method

.method public setNeedRecordVideoStates(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->needRecordVideoStates:Z

    return-void
.end method

.method public setPlayPosition(J)V
    .locals 4

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->duration:J

    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playPosition:J

    goto :goto_0

    :cond_0
    iput-wide p1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playPosition:J

    :goto_0
    return-void
.end method

.method public setShowBackgroundPlay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->showBackgroundPlay:Z

    return-void
.end method

.method public setShowPicInPic(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->showPicInPic:Z

    return-void
.end method

.method public toIntent(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "play_media_id"

    iget v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mediaId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "play_bucket_id"

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->bucketId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "media_from_internal"

    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->fromInternal:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "video_width"

    iget v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->videoWidth:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "video_height"

    iget v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->videoHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "tag_from_net"

    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isFromNet:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "play_position"

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playPosition:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v0, "tag_select_position"

    iget v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->selectedPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "tag_play_speed"

    iget v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->speed:F

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    const-string v0, "isVirtualFolder"

    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isVirtualFolder:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "virtualFolder_matchName"

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->virtualFolderMatchName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "needRecordVideoStates"

    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->needRecordVideoStates:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "showPicInPic"

    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->showPicInPic:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "showBackgroundPlay"

    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->showBackgroundPlay:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "forceResetPlay"

    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->forceResetPlay:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "fromBackgroundPlay"

    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->fromBackgroundPlay:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "fromPlayAll"

    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->fromPlayAll:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "isPlayComplete"

    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isPlayComplete:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "listFlag"

    iget v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->listFlag:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "subtitle_index"

    iget v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->subtitleIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "duration"

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->duration:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "folder_name"

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->folderName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "playTitle"

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playTitle:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "TAG_PLAY_FROM"

    iget v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mPlayFrom:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "share_source"

    iget v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mShareSource:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "favorite"

    iget v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isFavorite:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "youtube_id"

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mYoutubeId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "kt_cloud_file_id"

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mKtFileId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "video_from"

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->videoFrom:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "media_path"

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->path:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "tag_share_download_url"

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mShareDownloadUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "isPipMute"

    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isPipMute:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "is_private"

    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isPrivate:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "tag_display_name"

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "isShuffle"

    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isShuffle:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "isFromMiniBar"

    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isFromMiniBar:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mMiMediaInfo:Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    if-eqz p0, :cond_0

    const-string v0, "mi_media_info"

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public toMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 3

    new-instance v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/media/MediaItem;-><init>()V

    iget v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mediaId:I

    iput v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->bucketId:J

    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->mineType:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketDisplayName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isKt()Z

    move-result v1

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->isKtFile:Z

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isKt()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mKtFileId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mYoutubeId:Ljava/lang/String;

    invoke-static {v1}, Lr0a;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->path:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mYoutubeId:Ljava/lang/String;

    :goto_0
    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->duration:J

    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->fromInternal:Z

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->fromInternal:Z

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mYoutubeId:Ljava/lang/String;

    invoke-static {v1}, Lr0a;->i(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->isYoutubeUrl:Z

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playUri:Landroid/net/Uri;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playPosition:J

    long-to-int v1, v1

    iput v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->playPosition:I

    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isVirtualFolder:Z

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->isVirtualFolder:Z

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->virtualFolderMatchName:Ljava/lang/String;

    iput-object p0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->virtualFolderMatchName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlayVideoData{mediaId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mediaId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bucketId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->bucketId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", fromInternal=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->fromInternal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", playUri=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", path=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", videoWidth=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->videoWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", videoHeight=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->videoHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", playPosition=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playPosition:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", duration=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->duration:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", isFromNet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isFromNet:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isVirtualFolder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isVirtualFolder:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", virtualFolderMatchName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->virtualFolderMatchName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", needRecordVideoStates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->needRecordVideoStates:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", showPicInPic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->showPicInPic:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", fromBackgroundPlay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->fromBackgroundPlay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", forceResetPlay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->forceResetPlay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", listFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->listFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", folderName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->folderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", playTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", playFrom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mPlayFrom:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->fromPlayAll:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", shareResource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mShareSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isFavorite ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isFavorite:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fromPlayAll ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->fromPlayAll:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isMusicMode ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isMusicMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", displayName ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",isPlayComplete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isPlayComplete:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", miMediaInfo ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mMiMediaInfo:Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mediaId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->bucketId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->fromInternal:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->videoWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->videoHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playPosition:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->selectedPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->speed:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-boolean v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isVirtualFolder:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->virtualFolderMatchName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->needRecordVideoStates:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->showPicInPic:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->showBackgroundPlay:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->forceResetPlay:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->fromBackgroundPlay:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->fromPlayAll:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->listFlag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isPlayComplete:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->subtitleIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->folderName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mPlayFrom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mShareSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isFavorite:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mYoutubeId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->videoFrom:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isPrivate:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mShareDownloadUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isMusicMode:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isShuffle:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isFromMiniBar:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mMiMediaInfo:Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
