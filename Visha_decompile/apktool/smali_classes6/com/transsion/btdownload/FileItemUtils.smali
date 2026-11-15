.class public abstract Lcom/transsion/btdownload/FileItemUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/transsion/playercommon/activities/BaseActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "unknow"

    :goto_0
    sget-object v1, Lhk3;->a:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0, p2}, Lcom/transsion/btdownload/FileItemUtils;->d(Lcom/transsion/playercommon/activities/BaseActivity;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-object v1, Lhk3;->d:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2}, Lcom/transsion/btdownload/FileItemUtils;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    sget-object p2, Lhk3;->e:Ljava/util/HashSet;

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2}, Lraa;->j(Landroid/content/Context;Ljava/io/File;)V

    goto :goto_1

    :cond_4
    sget-object p2, Lhk3;->g:Ljava/util/HashSet;

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {p0, p1}, Lcom/transsion/btdownload/FileItemUtils;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2}, Lraa;->j(Landroid/content/Context;Ljava/io/File;)V

    :goto_1
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/transsion/btdownload/FileItemUtils$1;

    invoke-direct {v0, p0}, Lcom/transsion/btdownload/FileItemUtils$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->i(Lcom/blankj/utilcode/util/ThreadUtils$Task;)V

    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lpz2;->b(Landroid/content/Context;Ljava/lang/String;Z)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    invoke-static {p0, p1}, Lraa;->k(Landroid/content/Context;Landroid/net/Uri;)Z

    :cond_0
    return-void
.end method

.method public static d(Lcom/transsion/playercommon/activities/BaseActivity;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltpb;->I(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->convertToPlayVideoData(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->setShowPicInPic(Z)V

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->setNeedRecordVideoStates(Z)V

    const-string v1, ""

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->folderName:Ljava/lang/String;

    const/4 v1, 0x2

    iput v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->listFlag:I

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->c0()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/transsion/dbdata/beans/media/MediaItem;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->d0()I

    move-result p1

    if-eqz p1, :cond_1

    int-to-long v1, p1

    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playPosition:J

    :cond_1
    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->x0()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->isAlertWindowPermissionGranted()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->o2(Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivityInner;->G2(Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    :goto_0
    return-void
.end method
