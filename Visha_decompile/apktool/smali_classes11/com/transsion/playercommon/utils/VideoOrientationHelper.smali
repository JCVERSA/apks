.class public abstract Lcom/transsion/playercommon/utils/VideoOrientationHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/utils/VideoOrientationHelper$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lqqb;->d(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static b(III)Z
    .locals 2

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    rem-int/lit16 p0, p0, 0xb4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    if-lt p2, p1, :cond_0

    move v0, v1

    :cond_0
    return v0

    :cond_1
    if-lt p1, p2, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public static c(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 6

    const-string v0, "isVideoLandscape close "

    const-string v1, "VideoOrientationHelper"

    const/4 v2, 0x1

    if-nez p1, :cond_0

    return v2

    :cond_0
    new-instance v3, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "http"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    :try_start_1
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_1
    :try_start_2
    invoke-virtual {v3, p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/16 p0, 0x18

    invoke-virtual {v3, p0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/playercommon/utils/VideoOrientationHelper;->e(Ljava/lang/String;)I

    move-result p0

    const/16 p1, 0x12

    invoke-virtual {v3, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/playercommon/utils/VideoOrientationHelper;->e(Ljava/lang/String;)I

    move-result p1

    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/transsion/playercommon/utils/VideoOrientationHelper;->e(Ljava/lang/String;)I

    move-result v4

    invoke-static {p0, p1, v4}, Lcom/transsion/playercommon/utils/VideoOrientationHelper;->b(III)Z

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return p0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    :try_start_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVideoLandscape "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return v2

    :goto_3
    :try_start_6
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    throw p0
.end method

.method public static d(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/playercommon/utils/VideoOrientationHelper$a;)V
    .locals 2

    if-eqz p1, :cond_4

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/MediaItem;->getOrientation()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-eqz p2, :cond_3

    invoke-interface {p2}, Lcom/transsion/playercommon/utils/VideoOrientationHelper$a;->a()V

    goto :goto_0

    :cond_1
    iget v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->width:I

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->height:I

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/MediaItem;->getDegree()I

    move-result p0

    iget v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->width:I

    iget v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->height:I

    invoke-static {p0, v0, v1}, Lcom/transsion/playercommon/utils/VideoOrientationHelper;->b(III)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/dbdata/beans/media/MediaItem;->setOrientation(I)V

    if-eqz p2, :cond_3

    invoke-interface {p2}, Lcom/transsion/playercommon/utils/VideoOrientationHelper$a;->a()V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/transsion/playercommon/utils/VideoOrientationHelper$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/playercommon/utils/VideoOrientationHelper$1;-><init>(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/playercommon/utils/VideoOrientationHelper$a;)V

    invoke-static {v0}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    const-string p0, "mediaItem is null"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "VideoOrientationHelper"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_5

    invoke-interface {p2}, Lcom/transsion/playercommon/utils/VideoOrientationHelper$a;->a()V

    :cond_5
    return-void
.end method

.method public static e(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method
