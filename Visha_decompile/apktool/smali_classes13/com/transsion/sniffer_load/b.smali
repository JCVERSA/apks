.class public abstract Lcom/transsion/sniffer_load/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/sniffer_load/b$a;
    }
.end annotation


# direct methods
.method public static synthetic a(Lcom/transsion/sniffer_load/b$a;Lcom/transsion/dbdata/database/VideoPlayList;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/sniffer_load/b;->g(Lcom/transsion/sniffer_load/b$a;Lcom/transsion/dbdata/database/VideoPlayList;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/sniffer_load/b;->h(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic c(Ljava/util/List;Lcom/transsion/dbdata/database/VideoPlayList;Ljava/util/List;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/sniffer_load/b;->f(Ljava/util/List;Lcom/transsion/dbdata/database/VideoPlayList;Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/util/List;Lcom/transsion/dbdata/database/VideoPlayList;Lcom/transsion/sniffer_load/b$a;)V
    .locals 2

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    new-instance v1, Lnqb;

    invoke-direct {v1, p0, p1}, Lnqb;-><init>(Ljava/util/List;Lcom/transsion/dbdata/database/VideoPlayList;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    new-instance v0, Loqb;

    invoke-direct {v0, p2, p1}, Loqb;-><init>(Lcom/transsion/sniffer_load/b$a;Lcom/transsion/dbdata/database/VideoPlayList;)V

    new-instance p1, Lpqb;

    invoke-direct {p1}, Lpqb;-><init>()V

    invoke-virtual {p0, v0, p1}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    return-void
.end method

.method public static e(ILjava/lang/String;Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 6

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v0

    int-to-long v2, p0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Ltpb;->Q(Ljava/lang/String;JLcom/transsion/dbdata/beans/media/MediaItem;Z)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic f(Ljava/util/List;Lcom/transsion/dbdata/database/VideoPlayList;Ljava/util/List;)Ljava/lang/Boolean;
    .locals 3

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget v1, p1, Lcom/transsion/dbdata/database/VideoPlayList;->id:I

    iget-object v2, p1, Lcom/transsion/dbdata/database/VideoPlayList;->name:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/transsion/sniffer_load/b;->e(ILjava/lang/String;Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result v0

    or-int/2addr p2, v0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/transsion/sniffer_load/b$a;Lcom/transsion/dbdata/database/VideoPlayList;Ljava/lang/Boolean;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/sniffer_load/b$a;->onFinish()V

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    sget p0, Lcom/transsion/playercommon/R$string;->add_to_playlist_toast:I

    iget-object p1, p1, Lcom/transsion/dbdata/database/VideoPlayList;->name:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/utils/ToastUtils;->t(I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget p0, Lcom/transsion/magicvideo/R$string;->video_existed:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :goto_0
    return-void
.end method

.method public static synthetic h(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadPlayListList "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VideoDialogUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static i(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/transsion/sniffer_load/dialog/SnifferForbidSheetDialog;->N:Lcom/transsion/sniffer_load/dialog/SnifferForbidSheetDialog$a;

    invoke-virtual {v0, p0}, Lcom/transsion/sniffer_load/dialog/SnifferForbidSheetDialog$a;->a(Landroid/content/Context;)V

    return-void
.end method
