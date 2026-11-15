.class public Lcom/transsion/dbdata/beans/VideoCloudCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Entity;
    tableName = "video_cloud_cache"
.end annotation


# instance fields
.field private mCacheTime:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "cache_time"
    .end annotation
.end field

.field private mCover:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "cover"
    .end annotation
.end field

.field private mCreateAt:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "create_at"
    .end annotation
.end field

.field private mDataType:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "data_type"
    .end annotation
.end field

.field private mDuration:Ljava/lang/Long;
    .annotation build Landroidx/room/ColumnInfo;
        name = "duration"
    .end annotation
.end field

.field private mFileCoverPath:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "file_cover_path"
    .end annotation
.end field

.field private mFileId:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        name = "file_id"
    .end annotation

    .annotation build Landroidx/room/PrimaryKey;
    .end annotation
.end field

.field private mFileName:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "file_name"
    .end annotation
.end field

.field private mHeight:Ljava/lang/Long;
    .annotation build Landroidx/room/ColumnInfo;
        name = "height"
    .end annotation
.end field

.field private mId:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "mId"
    .end annotation
.end field

.field private mIsExitLocal:Ljava/lang/Boolean;
    .annotation build Landroidx/room/ColumnInfo;
        name = "is_exit_local"
    .end annotation
.end field

.field private mIsRecentData:Ljava/lang/Boolean;
    .annotation build Landroidx/room/ColumnInfo;
        name = "is_recent_data"
    .end annotation
.end field

.field private mMediaLibraryId:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "mediaLibrary_id"
    .end annotation
.end field

.field private mParentFileId:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "parent_file_id"
    .end annotation
.end field

.field private mPlayDuration:Ljava/lang/Long;
    .annotation build Landroidx/room/ColumnInfo;
        name = "play_duration"
    .end annotation
.end field

.field private mPreviewUrl:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "preview_url"
    .end annotation
.end field

.field private mSharerNickname:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "sharer_nickname"
    .end annotation
.end field

.field private mSize:Ljava/lang/Long;
    .annotation build Landroidx/room/ColumnInfo;
        name = "size"
    .end annotation
.end field

.field private mWatchStatus:Ljava/lang/Integer;
    .annotation build Landroidx/room/ColumnInfo;
        name = "watch_status"
    .end annotation
.end field

.field private mWidth:Ljava/lang/Long;
    .annotation build Landroidx/room/ColumnInfo;
        name = "width"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-wide v0, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mId:J

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mFileId:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mFileName:Ljava/lang/String;

    iput-object v2, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mSize:Ljava/lang/Long;

    iput-object v2, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mDuration:Ljava/lang/Long;

    iput-object v2, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mHeight:Ljava/lang/Long;

    iput-object v2, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mWidth:Ljava/lang/Long;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mWatchStatus:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mCreateAt:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mSharerNickname:Ljava/lang/String;

    iput-object v2, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mPlayDuration:Ljava/lang/Long;

    iput-object v0, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mFileCoverPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mPreviewUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mParentFileId:Ljava/lang/String;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mIsExitLocal:Ljava/lang/Boolean;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mCacheTime:J

    iput-object v1, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mIsRecentData:Ljava/lang/Boolean;

    const/4 v1, 0x1

    iput v1, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mDataType:I

    iput-object v0, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mMediaLibraryId:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mCover:Ljava/lang/String;

    return-void
.end method

.method public static fromVideoCloudData(Lcom/transsion/dbdata/beans/VideoCloudData;)Lcom/transsion/dbdata/beans/VideoCloudCache;
    .locals 3

    new-instance v0, Lcom/transsion/dbdata/beans/VideoCloudCache;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/VideoCloudCache;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/VideoCloudData;->getId()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/VideoCloudData;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/transsion/dbdata/beans/VideoCloudCache;->setId(J)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/VideoCloudData;->getFileId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/VideoCloudData;->getFileId()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/VideoCloudCache;->setFileId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/VideoCloudData;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/VideoCloudCache;->setFileName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/VideoCloudData;->getSize()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/VideoCloudCache;->setSize(Ljava/lang/Long;)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/VideoCloudData;->getDuration()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/VideoCloudCache;->setDuration(Ljava/lang/Long;)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/VideoCloudData;->getHeight()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/VideoCloudCache;->setHeight(Ljava/lang/Long;)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/VideoCloudData;->getWidth()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/VideoCloudCache;->setWidth(Ljava/lang/Long;)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/VideoCloudData;->getWatchStatus()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/VideoCloudCache;->setWatchStatus(Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/VideoCloudData;->getCreateAt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/VideoCloudCache;->setCreateAt(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/VideoCloudData;->getSharerNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/VideoCloudCache;->setSharerNickname(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/VideoCloudData;->getPlayDuration()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/VideoCloudCache;->setPlayDuration(Ljava/lang/Long;)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/VideoCloudData;->getFileCoverPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/VideoCloudCache;->setFileCoverPath(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/VideoCloudData;->getPreviewUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/VideoCloudCache;->setPreviewUrl(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/VideoCloudData;->getParentFileId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/VideoCloudCache;->setParentFileId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/VideoCloudData;->isExitLocal()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/VideoCloudCache;->setIsExitLocal(Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/VideoCloudData;->isRecentData()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/VideoCloudCache;->setIsRecentData(Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/VideoCloudData;->getDataType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/VideoCloudCache;->setDataType(I)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/VideoCloudData;->getMediaLibraryId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/VideoCloudCache;->setMediaLibraryId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/VideoCloudData;->getCover()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/beans/VideoCloudCache;->setCover(Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromVideoCloudDataList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/VideoCloudData;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/VideoCloudCache;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/VideoCloudData;

    invoke-static {v1}, Lcom/transsion/dbdata/beans/VideoCloudCache;->fromVideoCloudData(Lcom/transsion/dbdata/beans/VideoCloudData;)Lcom/transsion/dbdata/beans/VideoCloudCache;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getCacheTime()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mCacheTime:J

    return-wide v0
.end method

.method public getCover()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mCover:Ljava/lang/String;

    return-object p0
.end method

.method public getCreateAt()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mCreateAt:Ljava/lang/String;

    return-object p0
.end method

.method public getDataType()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mDataType:I

    return p0
.end method

.method public getDuration()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mDuration:Ljava/lang/Long;

    return-object p0
.end method

.method public getFileCoverPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mFileCoverPath:Ljava/lang/String;

    return-object p0
.end method

.method public getFileId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mFileId:Ljava/lang/String;

    return-object p0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mFileName:Ljava/lang/String;

    return-object p0
.end method

.method public getHeight()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mHeight:Ljava/lang/Long;

    return-object p0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mId:J

    return-wide v0
.end method

.method public getIsExitLocal()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mIsExitLocal:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getIsRecentData()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mIsRecentData:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getMediaLibraryId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mMediaLibraryId:Ljava/lang/String;

    return-object p0
.end method

.method public getParentFileId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mParentFileId:Ljava/lang/String;

    return-object p0
.end method

.method public getPlayDuration()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mPlayDuration:Ljava/lang/Long;

    return-object p0
.end method

.method public getPreviewUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mPreviewUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getSharerNickname()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mSharerNickname:Ljava/lang/String;

    return-object p0
.end method

.method public getSize()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mSize:Ljava/lang/Long;

    return-object p0
.end method

.method public getWatchStatus()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mWatchStatus:Ljava/lang/Integer;

    return-object p0
.end method

.method public getWidth()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mWidth:Ljava/lang/Long;

    return-object p0
.end method

.method public setCacheTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mCacheTime:J

    return-void
.end method

.method public setCover(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mCover:Ljava/lang/String;

    return-void
.end method

.method public setCreateAt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mCreateAt:Ljava/lang/String;

    return-void
.end method

.method public setDataType(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mDataType:I

    return-void
.end method

.method public setDuration(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mDuration:Ljava/lang/Long;

    return-void
.end method

.method public setFileCoverPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mFileCoverPath:Ljava/lang/String;

    return-void
.end method

.method public setFileId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mFileId:Ljava/lang/String;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mFileName:Ljava/lang/String;

    return-void
.end method

.method public setHeight(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mHeight:Ljava/lang/Long;

    return-void
.end method

.method public setId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mId:J

    return-void
.end method

.method public setIsExitLocal(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mIsExitLocal:Ljava/lang/Boolean;

    return-void
.end method

.method public setIsRecentData(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mIsRecentData:Ljava/lang/Boolean;

    return-void
.end method

.method public setMediaLibraryId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mMediaLibraryId:Ljava/lang/String;

    return-void
.end method

.method public setParentFileId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mParentFileId:Ljava/lang/String;

    return-void
.end method

.method public setPlayDuration(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mPlayDuration:Ljava/lang/Long;

    return-void
.end method

.method public setPreviewUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mPreviewUrl:Ljava/lang/String;

    return-void
.end method

.method public setSharerNickname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mSharerNickname:Ljava/lang/String;

    return-void
.end method

.method public setSize(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mSize:Ljava/lang/Long;

    return-void
.end method

.method public setWatchStatus(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mWatchStatus:Ljava/lang/Integer;

    return-void
.end method

.method public setWidth(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mWidth:Ljava/lang/Long;

    return-void
.end method

.method public toMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 5

    new-instance v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/media/MediaItem;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget-object v1, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mFileId:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mFileName:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mSize:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    iget-object v1, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mDuration:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    iget-object v1, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mHeight:Ljava/lang/Long;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toIntExact(J)I

    move-result v1

    :goto_0
    iput v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->height:I

    iget-object v1, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mWidth:Ljava/lang/Long;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toIntExact(J)I

    move-result v1

    :goto_1
    iput v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->width:I

    iget-object v1, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mPlayDuration:Ljava/lang/Long;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toIntExact(J)I

    move-result v2

    :goto_2
    iput v2, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->playPosition:I

    iget-object v1, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mFileCoverPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->thumbnailUrl:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->isKtFile:Z

    :try_start_0
    iget-object p0, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mCreateAt:Ljava/lang/String;

    invoke-static {p0}, Ljava/time/Instant;->parse(Ljava/lang/CharSequence;)Ljava/time/Instant;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toMediaItem Instant.parse(mCreateAt).toEpochMilli() error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->O([Ljava/lang/Object;)V

    :goto_3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoCloudCache{mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mDataType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mDataType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mFileId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mFileId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mFileName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mSize:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mDuration="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mDuration:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mHeight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mHeight:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mWidth="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mWidth:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mWatchStatus="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mWatchStatus:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mCreateAt=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mCreateAt:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mIsRecentData="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mIsRecentData:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mSharerNickname=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mSharerNickname:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mPlayDuration="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mPlayDuration:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mFileCoverPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mFileCoverPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mPreviewUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mPreviewUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mParentFileId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mParentFileId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mIsExitLocal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mIsExitLocal:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCacheTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mCacheTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toVideoCloudData()Lcom/transsion/dbdata/beans/VideoCloudData;
    .locals 25

    move-object/from16 v0, p0

    new-instance v23, Lcom/transsion/dbdata/beans/VideoCloudData;

    move-object/from16 v1, v23

    iget-wide v2, v0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, v0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mFileId:Ljava/lang/String;

    iget-object v4, v0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mFileName:Ljava/lang/String;

    iget-object v5, v0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mSize:Ljava/lang/Long;

    iget-object v6, v0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mDuration:Ljava/lang/Long;

    iget-object v7, v0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mHeight:Ljava/lang/Long;

    iget-object v8, v0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mWidth:Ljava/lang/Long;

    iget-object v9, v0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mWatchStatus:Ljava/lang/Integer;

    iget-object v10, v0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mCreateAt:Ljava/lang/String;

    iget-object v11, v0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mSharerNickname:Ljava/lang/String;

    iget-object v12, v0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mPlayDuration:Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iget-object v14, v0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mFileCoverPath:Ljava/lang/String;

    iget-object v15, v0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mPreviewUrl:Ljava/lang/String;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mParentFileId:Ljava/lang/String;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mIsExitLocal:Ljava/lang/Boolean;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mIsRecentData:Ljava/lang/Boolean;

    move-object/from16 v18, v1

    iget v1, v0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mDataType:I

    move/from16 v19, v1

    iget-object v1, v0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mMediaLibraryId:Ljava/lang/String;

    move-object/from16 v20, v1

    iget-object v0, v0, Lcom/transsion/dbdata/beans/VideoCloudCache;->mCover:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v1, v24

    invoke-direct/range {v1 .. v22}, Lcom/transsion/dbdata/beans/VideoCloudData;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v23
.end method
