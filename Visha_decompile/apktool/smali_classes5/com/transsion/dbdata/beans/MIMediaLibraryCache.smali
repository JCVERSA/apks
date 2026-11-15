.class public Lcom/transsion/dbdata/beans/MIMediaLibraryCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Entity;
    tableName = "mi_media_library_cache"
.end annotation


# instance fields
.field private mCacheTime:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "cache_time"
    .end annotation
.end field

.field private mMediaLibraryCollectFlag:Ljava/lang/Boolean;
    .annotation build Landroidx/room/ColumnInfo;
        name = "media_library_collect_flag"
    .end annotation
.end field

.field private mMediaLibraryId:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        name = "media_library_id"
    .end annotation

    .annotation build Landroidx/room/PrimaryKey;
    .end annotation
.end field

.field private mMediaLibraryName:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "media_library_name"
    .end annotation
.end field

.field private mMediaLibraryStatus:Ljava/lang/Integer;
    .annotation build Landroidx/room/ColumnInfo;
        name = "media_library_status"
    .end annotation
.end field

.field private mVideoListJson:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "video_list_json"
    .end annotation
.end field

.field private mVirtualPersonName:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "virtual_person_name"
    .end annotation
.end field

.field private mVirtualPersonPhoto:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "virtual_person_photo"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;->mMediaLibraryId:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;->mMediaLibraryName:Ljava/lang/String;

    .line 4
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;->mMediaLibraryCollectFlag:Ljava/lang/Boolean;

    .line 5
    iput-object v0, p0, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;->mVirtualPersonName:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;->mVirtualPersonPhoto:Ljava/lang/String;

    const/4 v1, 0x0

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;->mMediaLibraryStatus:Ljava/lang/Integer;

    .line 8
    iput-object v0, p0, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;->mVideoListJson:Ljava/lang/String;

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;->mCacheTime:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, ""

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;->mMediaLibraryId:Ljava/lang/String;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move-object p2, v0

    .line 12
    :goto_1
    iput-object p2, p0, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;->mMediaLibraryName:Ljava/lang/String;

    const/4 p1, 0x0

    if-eqz p3, :cond_2

    .line 13
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_2

    :cond_2
    move p2, p1

    :goto_2
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;->mMediaLibraryCollectFlag:Ljava/lang/Boolean;

    if-eqz p4, :cond_3

    goto :goto_3

    :cond_3
    move-object p4, v0

    .line 14
    :goto_3
    iput-object p4, p0, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;->mVirtualPersonName:Ljava/lang/String;

    if-eqz p5, :cond_4

    goto :goto_4

    :cond_4
    move-object p5, v0

    .line 15
    :goto_4
    iput-object p5, p0, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;->mVirtualPersonPhoto:Ljava/lang/String;

    if-eqz p6, :cond_5

    .line 16
    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;->mMediaLibraryStatus:Ljava/lang/Integer;

    if-eqz p7, :cond_6

    goto :goto_5

    :cond_6
    move-object p7, v0

    .line 17
    :goto_5
    iput-object p7, p0, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;->mVideoListJson:Ljava/lang/String;

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;->mCacheTime:J

    return-void
.end method

.method private static convertVideoListToJson(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ""

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static fromMIMediaLibraryData(Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;)Lcom/transsion/dbdata/beans/MIMediaLibraryCache;
    .locals 2

    if-nez p0, :cond_0

    new-instance p0, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getMediaLibraryId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;->setMediaLibraryId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getMediaLibraryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;->setMediaLibraryName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getMediaLibraryCollectFlag()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;->setMediaLibraryCollectFlag(Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getVirtualPersonName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;->setVirtualPersonName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getVirtualPersonPhoto()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;->setVirtualPersonPhoto(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getMediaLibraryStatus()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;->setMediaLibraryStatus(Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getVideoList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;->convertVideoListToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;->setVideoListJson(Ljava/lang/String;)V

    return-object v0
.end method

.method private parseVideoListFromJson(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Lcom/transsion/dbdata/beans/MIMediaLibraryCache$1;

    invoke-direct {v1, p0}, Lcom/transsion/dbdata/beans/MIMediaLibraryCache$1;-><init>(Lcom/transsion/dbdata/beans/MIMediaLibraryCache;)V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_2
    :goto_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method


# virtual methods
.method public getCacheTime()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;->mCacheTime:J

    return-wide v0
.end method

.method public getMediaLibraryCollectFlag()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;->mMediaLibraryCollectFlag:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getMediaLibraryId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;->mMediaLibraryId:Ljava/lang/String;

    return-object p0
.end method

.method public getMediaLibraryName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;->mMediaLibraryName:Ljava/lang/String;

    return-object p0
.end method

.method public getMediaLibraryStatus()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;->mMediaLibraryStatus:Ljava/lang/Integer;

    return-object p0
.end method

.method public getVideoListJson()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;->mVideoListJson:Ljava/lang/String;

    return-object p0
.end method

.method public getVirtualPersonName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;->mVirtualPersonName:Ljava/lang/String;

    return-object p0
.end method

.method public getVirtualPersonPhoto()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;->mVirtualPersonPhoto:Ljava/lang/String;

    return-object p0
.end method

.method public setCacheTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;->mCacheTime:J

    return-void
.end method

.method public setMediaLibraryCollectFlag(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;->mMediaLibraryCollectFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public setMediaLibraryId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;->mMediaLibraryId:Ljava/lang/String;

    return-void
.end method

.method public setMediaLibraryName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;->mMediaLibraryName:Ljava/lang/String;

    return-void
.end method

.method public setMediaLibraryStatus(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;->mMediaLibraryStatus:Ljava/lang/Integer;

    return-void
.end method

.method public setVideoListJson(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;->mVideoListJson:Ljava/lang/String;

    return-void
.end method

.method public setVirtualPersonName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;->mVirtualPersonName:Ljava/lang/String;

    return-void
.end method

.method public setVirtualPersonPhoto(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;->mVirtualPersonPhoto:Ljava/lang/String;

    return-void
.end method

.method public toMIMediaLibraryData()Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;
    .locals 2

    new-instance v0, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;-><init>()V

    iget-object v1, p0, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;->mMediaLibraryId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->setMediaLibraryId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;->mMediaLibraryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->setMediaLibraryName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;->mMediaLibraryCollectFlag:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->setMediaLibraryCollectFlag(Z)V

    iget-object v1, p0, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;->mVirtualPersonName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->setVirtualPersonName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;->mVirtualPersonPhoto:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->setVirtualPersonPhoto(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;->mMediaLibraryStatus:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->setMediaLibraryStatus(I)V

    iget-object v1, p0, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;->mVideoListJson:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;->parseVideoListFromJson(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->setVideoList(Ljava/util/List;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MIMediaLibraryCache{mMediaLibraryId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;->mMediaLibraryId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mMediaLibraryName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;->mMediaLibraryName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mMediaLibraryCollectFlag="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;->mMediaLibraryCollectFlag:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mVirtualPersonName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;->mVirtualPersonName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mVirtualPersonPhoto=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;->mVirtualPersonPhoto:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mMediaLibraryStatus="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;->mMediaLibraryStatus:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mVideoListJson=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;->mVideoListJson:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mCacheTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/MIMediaLibraryCache;->mCacheTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
