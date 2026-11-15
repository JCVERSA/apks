.class public Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/utils/storage/FileOperateUtils$m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$r0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "video_play_list"

    invoke-static {v0, v1}, Lp06;->g0(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$r0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->C1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->T()Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$r0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->C1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->T()Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isKt()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljz5;->b(Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lp06;->k0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$r0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->o3(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V

    return-void
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$r0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->T2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;I)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$r0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->P1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$r0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->P1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$r0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->B1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->setPlayList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$r0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->r1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$r0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v2, v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->c3(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Z)V

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$r0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->k1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$r0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->K2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$r0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->p3(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->A0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$r0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->Z1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;J)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$r0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->r1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->l2()V

    sget-object v0, Ln16;->a:Ln16$a;

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$r0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->C1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->T()Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object p0

    const-string v1, "video_play_background"

    invoke-virtual {v0, v1, p0}, Ln16$a;->b(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    :cond_2
    return-void
.end method

.method public e(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$r0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iget-object v1, v0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->timerHandler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->mTimerUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget v0, Lcom/transsion/magicvideo/R$string;->play_timer_close:I

    invoke-static {v0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$r0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->e1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lw6c;->F(Landroid/content/Context;J)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$r0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->P1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$r0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->P1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->hideTimer()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$r0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->e1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr p1, v1

    invoke-static {v0, p1, p2}, Lw6c;->F(Landroid/content/Context;J)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$r0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iget-object p2, p1, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->timerHandler:Landroid/os/Handler;

    iget-object p1, p1, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->mTimerUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$r0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->p3(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const/16 p2, 0x47b

    invoke-virtual {p0, p2, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void
.end method

.method public f()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$r0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->u2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V

    return-void
.end method

.method public g()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$r0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->S3(Z)V

    return-void
.end method
