.class public Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/dbdata/beans/media/PlayVideoData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/media/PlayVideoData;-><init>()V

    iput-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    return-void
.end method


# virtual methods
.method public build()Lcom/transsion/dbdata/beans/media/PlayVideoData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    return-object p0
.end method

.method public fromIntent(Landroid/content/Intent;)Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;
    .locals 8

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    const-string v1, "play_media_id"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mediaId:I

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    const-string v1, "play_bucket_id"

    const-wide/16 v3, -0x1

    invoke-virtual {p1, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->bucketId:J

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    const-string v1, "media_from_internal"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->fromInternal:Z

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    const-string v1, "video_width"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->videoWidth:I

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    const-string v1, "video_height"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->videoHeight:I

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    const-string v1, "play_position"

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playPosition:J

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    const-string v1, "tag_from_net"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isFromNet:Z

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    const-string v1, "tag_select_position"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->selectedPosition:I

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    const-string v1, "tag_play_speed"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->speed:F

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    const-string v1, "secureAlbum"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->secureAlbum:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    const-string v1, "isSecureCamera"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isSecureCamera:Z

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    const-string v1, "isVirtualFolder"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isVirtualFolder:Z

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    const-string v1, "virtualFolder_matchName"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->virtualFolderMatchName:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    const-string v1, "needRecordVideoStates"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->needRecordVideoStates:Z

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    const-string v1, "showPicInPic"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->showPicInPic:Z

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    const-string v1, "showBackgroundPlay"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->showBackgroundPlay:Z

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    const-string v1, "forceResetPlay"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->forceResetPlay:Z

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    const-string v1, "fromBackgroundPlay"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->fromBackgroundPlay:Z

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    const-string v1, "fromPlayAll"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->fromPlayAll:Z

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    const-string v1, "listFlag"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->listFlag:I

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    const-string v1, "isPlayComplete"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isPlayComplete:Z

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    const-string v1, "subtitle_index"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->subtitleIndex:I

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    const-string v1, "duration"

    invoke-virtual {p1, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->duration:J

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    const-string v1, "folder_name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->folderName:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    const-string v1, "playTitle"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    const-string v1, "TAG_PLAY_FROM"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mPlayFrom:I

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    const-string v1, "youtube_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mYoutubeId:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    const-string v1, "kt_cloud_file_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mKtFileId:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    const-string v1, "video_from"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->videoFrom:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    const-string v1, "is_private"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isPrivate:Z

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    const-string v1, "media_path"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->path:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    const-string v1, "share_source"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mShareSource:I

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    const-string v1, "tag_share_download_url"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mShareDownloadUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    const-string v1, "listen_video_mode"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isMusicMode:Z

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    const-string v1, "tag_display_name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mDisplayName:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    const-string v1, "isShuffle"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isShuffle:Z

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    const-string v1, "isFromMiniBar"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isFromMiniBar:Z

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    const-string v1, "mi_media_info"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    invoke-static {v0, p1}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->a(Lcom/transsion/dbdata/beans/media/PlayVideoData;Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;)V

    :cond_0
    return-object p0
.end method

.method public fromMediaItem(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;
    .locals 3

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iget v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iput v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mediaId:I

    iget-wide v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->bucketId:J

    iget-object v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playTitle:Ljava/lang/String;

    iget-object v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playUri:Landroid/net/Uri;

    iget-object v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->path:Ljava/lang/String;

    iget v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->selectedPos:I

    iput v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->selectedPosition:I

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/MediaItem;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->videoWidth:I

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/MediaItem;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->videoHeight:I

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/MediaItem;->isVirtualFolder()Z

    move-result v1

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isVirtualFolder:Z

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/MediaItem;->getVirtualFolderMatchName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->virtualFolderMatchName:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iget v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->playPosition:I

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playPosition:J

    iget-boolean v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->isPlayComplete:Z

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isPlayComplete:Z

    iget v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->subtitleIndex:I

    iput v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->subtitleIndex:I

    iget-wide v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->duration:J

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/MediaItem;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mDisplayName:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->isYoutubeUrl:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iget-object v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mYoutubeId:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iget-boolean v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->isKtFile:Z

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mKtFileId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isKt()Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->isYoutubeUrl:Z

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x1

    :goto_2
    iput-boolean p1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isFromNet:Z

    :cond_4
    return-object p0
.end method

.method public setBucketId(J)Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iput-wide p1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->bucketId:J

    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iput-object p1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method public setDuration(J)Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iput-wide p1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->duration:J

    return-object p0
.end method

.method public setFolderName(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iput-object p1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->folderName:Ljava/lang/String;

    return-object p0
.end method

.method public setForceResetPlay(Z)Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iput-boolean p1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->forceResetPlay:Z

    return-object p0
.end method

.method public setFromBackgroundPlay(Z)Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iput-boolean p1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->fromBackgroundPlay:Z

    return-object p0
.end method

.method public setFromInternal(Z)Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iput-boolean p1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->fromInternal:Z

    return-object p0
.end method

.method public setFromPlayAll(Z)Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iput-boolean p1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->fromPlayAll:Z

    return-object p0
.end method

.method public setIsFavorite(I)Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iput p1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isFavorite:I

    return-object p0
.end method

.method public setIsFromMiniBar(Z)Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iput-boolean p1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isFromMiniBar:Z

    return-object p0
.end method

.method public setIsFromNet(Z)Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iput-boolean p1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isFromNet:Z

    return-object p0
.end method

.method public setIsMusicMode(Z)Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iput-boolean p1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isMusicMode:Z

    return-object p0
.end method

.method public setIsPlayComplete(Z)Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iput-boolean p1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isPlayComplete:Z

    return-object p0
.end method

.method public setIsPrivate(Z)Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iput-boolean p1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isPrivate:Z

    return-object p0
.end method

.method public setIsShuffle(Z)Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iput-boolean p1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isShuffle:Z

    return-object p0
.end method

.method public setIsVirtualFolder(Z)Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iput-boolean p1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isVirtualFolder:Z

    return-object p0
.end method

.method public setKtFileId(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iput-object p1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mKtFileId:Ljava/lang/String;

    return-object p0
.end method

.method public setListFlag(I)Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iput p1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->listFlag:I

    return-object p0
.end method

.method public setMediaId(I)Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iput p1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mediaId:I

    return-object p0
.end method

.method public setMiMediaInfo(Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;)Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    invoke-static {v0, p1}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->a(Lcom/transsion/dbdata/beans/media/PlayVideoData;Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;)V

    return-object p0
.end method

.method public setNeedRecordVideoStates(Z)Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iput-boolean p1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->needRecordVideoStates:Z

    return-object p0
.end method

.method public setPath(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iput-object p1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->path:Ljava/lang/String;

    return-object p0
.end method

.method public setPlayFrom(I)Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iput p1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mPlayFrom:I

    return-object p0
.end method

.method public setPlayFrom(Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;)Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iget p1, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;->from:I

    iput p1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mPlayFrom:I

    return-object p0
.end method

.method public setPlayPosition(J)Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->setPlayPosition(J)V

    return-object p0
.end method

.method public setPlayTitle(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iput-object p1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setPlayUri(Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iput-object p1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setSelectedPosition(I)Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iput p1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->selectedPosition:I

    return-object p0
.end method

.method public setShareDownloadUrl(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iput-object p1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mShareDownloadUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setShareSource(I)Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iput p1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mShareSource:I

    return-object p0
.end method

.method public setShowBackgroundPlay(Z)Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iput-boolean p1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->showBackgroundPlay:Z

    return-object p0
.end method

.method public setShowPicInPic(Z)Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iput-boolean p1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->showPicInPic:Z

    return-object p0
.end method

.method public setSpeed(F)Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iput p1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->speed:F

    return-object p0
.end method

.method public setSubtitleIndex(I)Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iput p1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->subtitleIndex:I

    return-object p0
.end method

.method public setVideoFrom(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iput-object p1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->videoFrom:Ljava/lang/String;

    return-object p0
.end method

.method public setVideoHeight(I)Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iput p1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->videoHeight:I

    return-object p0
.end method

.method public setVideoWidth(I)Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iput p1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->videoWidth:I

    return-object p0
.end method

.method public setVirtualFolderMatchName(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iput-object p1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->virtualFolderMatchName:Ljava/lang/String;

    return-object p0
.end method

.method public setYoutubeId(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->mPlayVideoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iput-object p1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mYoutubeId:Ljava/lang/String;

    return-object p0
.end method
