.class public abstract Lruc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "ruc"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 5

    invoke-static {}, Loa1;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/transsion/dbdata/database/YoutubeRoomDatabase;->a()Lcom/transsion/dbdata/database/YoutubeRoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/YoutubeRoomDatabase;->b()Ltuc;

    move-result-object v0

    invoke-interface {v0, p0}, Ltuc;->getYoutubeData(Ljava/lang/String;)Lcom/transsion/dbdata/beans/YoutubeData;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/media/MediaItem;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/YoutubeData;->getVideoStream()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/YoutubeData;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/YoutubeData;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/YoutubeData;->getDuration()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/YoutubeData;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->thumbnailUrl:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->isYoutubeUrl:Z

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/YoutubeData;->getDateModified()J

    move-result-wide v1

    div-long/2addr v1, v3

    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/YoutubeData;->getOriginUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->originUrl:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/YoutubeData;->getUploaderName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->uploaderName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v0

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v1, v0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    sget-object v0, Lruc;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryYoutubeData failed, error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-object v1
.end method

.method public static b(Ljava/util/List;)Ljava/util/List;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/database/VideoPlayListMedia;

    iget-object v1, v1, Lcom/transsion/dbdata/database/VideoPlayListMedia;->_data:Ljava/lang/String;

    invoke-static {v1}, Lruc;->a(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->isFavorite:Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
