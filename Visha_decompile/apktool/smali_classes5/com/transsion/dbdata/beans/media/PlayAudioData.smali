.class public Lcom/transsion/dbdata/beans/media/PlayAudioData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/dbdata/beans/media/PlayAudioData;",
            ">;"
        }
    .end annotation
.end field

.field public static final INVALIDATE:I = -0x1

.field public static final PLAY_POSITION_DEF:I = 0x0

.field public static final PLAY_SPEED_DEF:F = 1.0f

.field public static final TAG_ADD_DATE:Ljava/lang/String; = "add_date"

.field public static final TAG_ALBUM_NAME:Ljava/lang/String; = "tag_album_name"

.field public static final TAG_ARTIST_NAME:Ljava/lang/String; = "tag_artist_name"

.field public static final TAG_BUCKET_ID:Ljava/lang/String; = "play_bucket_id"

.field public static final TAG_DISPLAY_NAME:Ljava/lang/String; = "tag_display_name"

.field public static final TAG_DURATION:Ljava/lang/String; = "duration"

.field public static final TAG_FOLDER_NAME:Ljava/lang/String; = "folder_name"

.field public static final TAG_FROM:Ljava/lang/String; = "from"

.field public static final TAG_FROM_INTERNAL:Ljava/lang/String; = "media_from_internal"

.field public static final TAG_FROM_NET:Ljava/lang/String; = "tag_from_net"

.field public static final TAG_LIST_FLAG:Ljava/lang/String; = "listFlag"

.field public static final TAG_MD5:Ljava/lang/String; = "TAG_MD5"

.field public static final TAG_MEDIA_ID:Ljava/lang/String; = "play_media_id"

.field public static final TAG_MINE_TYPE:Ljava/lang/String; = "mine_type"

.field public static final TAG_MODIFY_DATE:Ljava/lang/String; = "modify_date"

.field public static final TAG_MUSIC_VIDEO:Ljava/lang/String; = "TAG_MUSIC_VIDEO"

.field public static final TAG_NEED_PLAY:Ljava/lang/String; = "play"

.field public static final TAG_NEW_AUDIO:Ljava/lang/String; = "TAG_NEW_AUDIO"

.field public static final TAG_ORIENTATION:Ljava/lang/String; = "tag_orientation"

.field public static final TAG_PARENT_PATH:Ljava/lang/String; = "parentPath"

.field public static final TAG_PLAYLIST_ID:Ljava/lang/String; = "tag_playlist_id"

.field public static final TAG_PLAY_FROM:Ljava/lang/String; = "TAG_PLAY_FROM"

.field public static final TAG_PLAY_POSITION:Ljava/lang/String; = "play_position"

.field public static final TAG_PLAY_SPEED:Ljava/lang/String; = "tag_play_speed"

.field public static final TAG_SELECT_POSITION:Ljava/lang/String; = "tag_select_position"

.field public static final TAG_SHUFFLE:Ljava/lang/String; = "TAG_SHUFFLE"

.field public static final TAG_SIZE:Ljava/lang/String; = "size"

.field public static final TAG_SOURCE_ACTION:Ljava/lang/String; = "source_action"


# instance fields
.field public albumName:Ljava/lang/String;

.field public artistName:Ljava/lang/String;

.field public autoPlay:Z

.field public bucketId:J

.field public dateAdd:J

.field public dateModified:J

.field public displayName:Ljava/lang/String;

.field public duration:J

.field public folderName:Ljava/lang/String;

.field public from:I

.field public fromInternal:Z

.field public isFromNet:Z

.field public isMusicVideo:Z

.field public isShuffle:Z

.field public listFlag:I

.field public md5Str:Ljava/lang/String;

.field public mediaId:I

.field public mineType:Ljava/lang/String;

.field public parentPath:Ljava/lang/String;

.field public playListId:J

.field public playPosition:J

.field public playUri:Landroid/net/Uri;

.field public selectedPosition:I

.field public size:J

.field public sourceAction:Ljava/lang/String;

.field public speed:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/dbdata/beans/media/PlayAudioData$1;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioData$1;-><init>()V

    sput-object v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->mediaId:I

    .line 3
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->parentPath:Ljava/lang/String;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->fromInternal:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    iput v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->speed:F

    const-wide/16 v0, -0x1

    .line 6
    iput-wide v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playListId:J

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Z)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->mediaId:I

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->parentPath:Ljava/lang/String;

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->fromInternal:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 11
    iput v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->speed:F

    const-wide/16 v0, -0x1

    .line 12
    iput-wide v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playListId:J

    .line 13
    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playUri:Landroid/net/Uri;

    .line 14
    iput-boolean p2, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->isFromNet:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->mediaId:I

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->parentPath:Ljava/lang/String;

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->fromInternal:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 19
    iput v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->speed:F

    const-wide/16 v1, -0x1

    .line 20
    iput-wide v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playListId:J

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->mediaId:I

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->bucketId:J

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->parentPath:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->fromInternal:Z

    .line 25
    const-class v1, Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playUri:Landroid/net/Uri;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playPosition:J

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->selectedPosition:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->isFromNet:Z

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->speed:F

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->listFlag:I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->autoPlay:Z

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->albumName:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->artistName:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playListId:J

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->displayName:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->folderName:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->sourceAction:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->mineType:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->from:I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->duration:J

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->size:J

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->dateAdd:J

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->dateModified:J

    return-void
.end method

.method public static convertToPlayAudioData(Lcom/transsion/dbdata/beans/media/AudioItem;)Lcom/transsion/dbdata/beans/media/PlayAudioData;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioData;-><init>()V

    .line 2
    iget v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iput v1, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->mediaId:I

    .line 3
    iget-wide v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->bucketId:J

    .line 4
    iget v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->selectedPos:I

    iput v1, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->selectedPosition:I

    .line 5
    iget v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->playPosition:I

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playPosition:J

    .line 6
    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->parentPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->parentPath:Ljava/lang/String;

    .line 7
    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->albumName:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->albumName:Ljava/lang/String;

    .line 8
    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->artistName:Ljava/lang/String;

    .line 9
    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    :goto_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playUri:Landroid/net/Uri;

    .line 10
    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->displayName:Ljava/lang/String;

    .line 11
    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->mineType:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->mineType:Ljava/lang/String;

    .line 12
    iget-wide v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateAdd:J

    iput-wide v3, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->dateAdd:J

    .line 13
    iget-wide v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    iput-wide v3, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->dateModified:J

    .line 14
    iget-wide v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    iput-wide v3, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->duration:J

    .line 15
    iget-wide v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    iput-wide v3, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->size:J

    .line 16
    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->md5Str:Ljava/lang/String;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    iput-object v2, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->md5Str:Ljava/lang/String;

    .line 17
    iget-boolean p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isMusicVideo:Z

    iput-boolean p0, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->isMusicVideo:Z

    return-object v0
.end method

.method public static convertToPlayAudioData(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/dbdata/beans/media/PlayAudioData;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 18
    :cond_0
    new-instance v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioData;-><init>()V

    .line 19
    iget v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iput v1, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->mediaId:I

    .line 20
    iget-wide v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->bucketId:J

    .line 21
    iget v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->selectedPos:I

    iput v1, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->selectedPosition:I

    .line 22
    iget v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->playPosition:I

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playPosition:J

    .line 23
    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->parentPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->parentPath:Ljava/lang/String;

    .line 24
    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    :goto_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playUri:Landroid/net/Uri;

    .line 25
    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->displayName:Ljava/lang/String;

    .line 26
    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->mineType:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->mineType:Ljava/lang/String;

    .line 27
    iget-wide v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateAdd:J

    iput-wide v3, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->dateAdd:J

    .line 28
    iget-wide v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    iput-wide v3, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->dateModified:J

    .line 29
    iget-wide v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    iput-wide v3, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->duration:J

    .line 30
    iget-wide v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    iput-wide v3, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->size:J

    .line 31
    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->md5Str:Ljava/lang/String;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    iput-object v2, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->md5Str:Ljava/lang/String;

    iput-object v2, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->md5Str:Ljava/lang/String;

    .line 32
    iget-boolean p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isMusicVideo:Z

    iput-boolean p0, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->isMusicVideo:Z

    return-object v0
.end method

.method public static convertToPlayAudioItem(Lcom/transsion/dbdata/beans/media/PlayAudioData;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>()V

    iget v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->mediaId:I

    iput v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->bucketId:J

    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playPosition:J

    long-to-int v1, v1

    iput v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->playPosition:I

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->parentPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->parentPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->albumName:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/AudioItem;->albumName:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->artistName:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playUri:Landroid/net/Uri;

    const-string v2, ""

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->displayName:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->mineType:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->mineType:Ljava/lang/String;

    iget-wide v3, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->dateAdd:J

    iput-wide v3, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateAdd:J

    iget-wide v3, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->dateModified:J

    iput-wide v3, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    iget-wide v3, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->duration:J

    iput-wide v3, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    iget-wide v3, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->size:J

    iput-wide v3, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->md5Str:Ljava/lang/String;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    iput-object v2, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->md5Str:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->isMusicVideo:Z

    iput-boolean p0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->isMusicVideo:Z

    return-object v0
.end method

.method public static restore(Landroid/content/Intent;)Lcom/transsion/dbdata/beans/media/PlayAudioData;
    .locals 10

    new-instance v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioData;-><init>()V

    const-string v1, "play_media_id"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->mediaId:I

    const-string v1, "play_bucket_id"

    const-wide/16 v3, -0x1

    invoke-virtual {p0, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->bucketId:J

    const-string v1, "media_from_internal"

    const/4 v5, 0x0

    invoke-virtual {p0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->fromInternal:Z

    const-string v1, "play_position"

    const-wide/16 v6, 0x0

    invoke-virtual {p0, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playPosition:J

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playUri:Landroid/net/Uri;

    const-string v1, "tag_from_net"

    invoke-virtual {p0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->isFromNet:Z

    const-string v1, "tag_select_position"

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->selectedPosition:I

    const-string v1, "tag_play_speed"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->speed:F

    const-string v1, "listFlag"

    invoke-virtual {p0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->listFlag:I

    const-string v1, "parentPath"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->parentPath:Ljava/lang/String;

    const-string v1, "play"

    invoke-virtual {p0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->autoPlay:Z

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->autoPlay:Z

    :cond_0
    const-string v1, "tag_album_name"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->albumName:Ljava/lang/String;

    const-string v1, "tag_artist_name"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->artistName:Ljava/lang/String;

    const-string v1, "tag_playlist_id"

    invoke-virtual {p0, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playListId:J

    const-string v1, "tag_display_name"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->displayName:Ljava/lang/String;

    const-string v1, "folder_name"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->folderName:Ljava/lang/String;

    const-string v1, "source_action"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->sourceAction:Ljava/lang/String;

    const-string v1, "mine_type"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->mineType:Ljava/lang/String;

    const-string v1, "from"

    invoke-virtual {p0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->from:I

    const-string v1, "add_date"

    invoke-virtual {p0, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->dateAdd:J

    const-string v1, "modify_date"

    invoke-virtual {p0, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->dateModified:J

    const-string v1, "duration"

    invoke-virtual {p0, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->duration:J

    const-string v1, "size"

    invoke-virtual {p0, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->size:J

    const-string v1, "TAG_MD5"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->md5Str:Ljava/lang/String;

    const-string v1, "TAG_MUSIC_VIDEO"

    invoke-virtual {p0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->isMusicVideo:Z

    const-string v1, "TAG_SHUFFLE"

    invoke-virtual {p0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    iput-boolean p0, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->isShuffle:Z

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getMediaIdUri()Landroid/net/Uri;
    .locals 2

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->mediaId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-boolean p0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->fromInternal:Z

    invoke-static {v0, p0}, Lcom/transsion/dbdata/beans/media/MediaItem;->getUri(IZ)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public isBucketValidate()Z
    .locals 4

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->bucketId:J

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSamePlayAudioData(Lcom/transsion/dbdata/beans/media/PlayAudioData;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget p0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->mediaId:I

    iget p1, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->mediaId:I

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->mediaId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->bucketId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->parentPath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->fromInternal:Z

    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playPosition:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->selectedPosition:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->isFromNet:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->speed:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->listFlag:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    iput-boolean v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->autoPlay:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->albumName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->artistName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playListId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->displayName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->folderName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->sourceAction:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->mineType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->from:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->duration:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->size:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->dateAdd:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->dateModified:J

    return-void
.end method

.method public setData(Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/PlayAudioData;
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playUri:Landroid/net/Uri;

    return-object p0
.end method

.method public toIntent(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "play_media_id"

    iget v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->mediaId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "play_bucket_id"

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->bucketId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "media_from_internal"

    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->fromInternal:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "tag_from_net"

    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->isFromNet:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "play_position"

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playPosition:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v0, "tag_album_name"

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->albumName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "tag_artist_name"

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->artistName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "tag_select_position"

    iget v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->selectedPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "tag_play_speed"

    iget v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->speed:F

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    const-string v0, "listFlag"

    iget v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->listFlag:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "parentPath"

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->parentPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "play"

    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->autoPlay:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "tag_playlist_id"

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playListId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "tag_display_name"

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->displayName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "folder_name"

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->folderName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "source_action"

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->sourceAction:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "mine_type"

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->mineType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "from"

    iget v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->from:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "duration"

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->duration:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "add_date"

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->dateAdd:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "modify_date"

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->dateModified:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "size"

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->size:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "TAG_MD5"

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->md5Str:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "TAG_MUSIC_VIDEO"

    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->isMusicVideo:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "TAG_SHUFFLE"

    iget-boolean p0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->isShuffle:Z

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlayAudioData{mediaId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->mediaId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bucketId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->bucketId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", parentPath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->parentPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", fromInternal="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->fromInternal:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", playUri="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", playPosition="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playPosition:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", selectedPosition="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->selectedPosition:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isFromNet="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->isFromNet:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", speed="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->speed:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", listFlag="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->listFlag:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", autoPlay="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->autoPlay:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", albumName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->albumName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", artistName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->artistName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", playListId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playListId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", displayName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", folderName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->folderName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sourceAction=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->sourceAction:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mineType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->mineType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", from=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->from:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", size=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->size:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", adddate=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->dateAdd:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", modifyDate=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->dateModified:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", duration=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->duration:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isMusicVideo=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->isMusicVideo:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->mediaId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->bucketId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->parentPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->fromInternal:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playPosition:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->selectedPosition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->isFromNet:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget p2, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->speed:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->listFlag:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->autoPlay:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->albumName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->artistName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playListId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->displayName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->folderName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->sourceAction:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->mineType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->from:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->size:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->dateAdd:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->dateModified:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
