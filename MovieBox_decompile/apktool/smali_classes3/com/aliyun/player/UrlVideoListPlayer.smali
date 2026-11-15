.class public Lcom/aliyun/player/UrlVideoListPlayer;
.super Lcom/aliyun/player/AVPLBase;
.source "source.java"

# interfaces
.implements Lcom/aliyun/player/UrlListPlayer;
.implements Lcom/aliyun/player/UrlPlayer;


# static fields
.field private static final TAG:Ljava/lang/String; = "NativePlayerBase_UrlVideoListPlayer"


# instance fields
.field private mUrlVideoPlayer:Lcom/aliyun/player/UrlVideoPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/aliyun/player/AVPLBase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/aliyun/player/UrlVideoListPlayer;->mUrlVideoPlayer:Lcom/aliyun/player/UrlVideoPlayer;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public addUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/aliyun/player/AVPLBase;->getCorePlayer()Lcom/aliyun/player/nativeclass/JniListPlayerBase;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/aliyun/player/nativeclass/JniUrlListPlayer;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "addUrl = "

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v2, " , uid = "

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v2, "NativePlayerBase_UrlVideoListPlayer"

    .line 35
    .line 36
    invoke-static {v2, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    check-cast v0, Lcom/aliyun/player/nativeclass/JniUrlListPlayer;

    .line 40
    .line 41
    invoke-virtual {v0, p1, p2}, Lcom/aliyun/player/nativeclass/JniUrlListPlayer;->addUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method protected createListPlayer(Landroid/content/Context;Ljava/lang/String;J)Lcom/aliyun/player/nativeclass/JniListPlayerBase;
    .locals 0

    .line 1
    new-instance p2, Lcom/aliyun/player/nativeclass/JniUrlListPlayer;

    .line 2
    .line 3
    invoke-direct {p2, p1, p3, p4}, Lcom/aliyun/player/nativeclass/JniUrlListPlayer;-><init>(Landroid/content/Context;J)V

    .line 4
    .line 5
    .line 6
    return-object p2
.end method

.method protected getNativePlayer(Landroid/content/Context;Ljava/lang/String;)Lcom/aliyun/player/IPlayer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/player/UrlVideoListPlayer;->mUrlVideoPlayer:Lcom/aliyun/player/UrlVideoPlayer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/aliyun/player/UrlVideoPlayer;

    .line 6
    .line 7
    invoke-direct {v0, p1, p2}, Lcom/aliyun/player/UrlVideoPlayer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/aliyun/player/UrlVideoListPlayer;->mUrlVideoPlayer:Lcom/aliyun/player/UrlVideoPlayer;

    .line 11
    .line 12
    :cond_0
    iget-object p1, p0, Lcom/aliyun/player/UrlVideoListPlayer;->mUrlVideoPlayer:Lcom/aliyun/player/UrlVideoPlayer;

    .line 13
    .line 14
    return-object p1
.end method

.method public moveTo(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/aliyun/player/AVPLBase;->getCorePlayer()Lcom/aliyun/player/nativeclass/JniListPlayerBase;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/aliyun/player/nativeclass/JniUrlListPlayer;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "moveTo uid = "

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "NativePlayerBase_UrlVideoListPlayer"

    .line 27
    .line 28
    invoke-static {v2, v1}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    check-cast v0, Lcom/aliyun/player/nativeclass/JniUrlListPlayer;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/JniUrlListPlayer;->moveTo(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    return p1

    .line 38
    :cond_0
    const/4 p1, 0x0

    .line 39
    return p1
.end method

.method public moveToNext()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/aliyun/player/AVPLBase;->getCorePlayer()Lcom/aliyun/player/nativeclass/JniListPlayerBase;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/aliyun/player/nativeclass/JniUrlListPlayer;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string v1, "NativePlayerBase_UrlVideoListPlayer"

    .line 10
    .line 11
    const-string v2, "moveToNext  "

    .line 12
    .line 13
    invoke-static {v1, v2}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    check-cast v0, Lcom/aliyun/player/nativeclass/JniUrlListPlayer;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/JniUrlListPlayer;->moveToNext()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    return v0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    return v0
.end method

.method public moveToPrev()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/aliyun/player/AVPLBase;->getCorePlayer()Lcom/aliyun/player/nativeclass/JniListPlayerBase;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/aliyun/player/nativeclass/JniUrlListPlayer;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string v1, "NativePlayerBase_UrlVideoListPlayer"

    .line 10
    .line 11
    const-string v2, "moveToPrev  "

    .line 12
    .line 13
    invoke-static {v1, v2}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    check-cast v0, Lcom/aliyun/player/nativeclass/JniUrlListPlayer;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/aliyun/player/nativeclass/JniUrlListPlayer;->moveToPrev()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    return v0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    return v0
.end method

.method public setDataSource(Lcom/aliyun/player/source/BitStreamSource;)V
    .locals 2

    .line 4
    invoke-virtual {p0}, Lcom/aliyun/player/AVPLBase;->getNativePlayer()Lcom/aliyun/player/IPlayer;

    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/aliyun/player/UrlPlayer;

    if-eqz v1, :cond_0

    .line 6
    check-cast v0, Lcom/aliyun/player/UrlPlayer;

    invoke-interface {v0, p1}, Lcom/aliyun/player/UrlPlayer;->setDataSource(Lcom/aliyun/player/source/BitStreamSource;)V

    :cond_0
    return-void
.end method

.method public setDataSource(Lcom/aliyun/player/source/UrlSource;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/aliyun/player/AVPLBase;->getNativePlayer()Lcom/aliyun/player/IPlayer;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/aliyun/player/UrlPlayer;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/aliyun/player/UrlPlayer;

    invoke-interface {v0, p1}, Lcom/aliyun/player/UrlPlayer;->setDataSource(Lcom/aliyun/player/source/UrlSource;)V

    :cond_0
    return-void
.end method
