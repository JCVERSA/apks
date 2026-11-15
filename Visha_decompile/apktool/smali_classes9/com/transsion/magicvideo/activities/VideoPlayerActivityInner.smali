.class public Lcom/transsion/magicvideo/activities/VideoPlayerActivityInner;
.super Lcom/transsion/magicvideo/activities/VideoPlayerActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;-><init>()V

    return-void
.end method

.method public static F2(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/PlayVideoData;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->getMiMediaInfo()Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->isMediaNeedRecordPlayInfo()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->setNeedRecordVideoStates(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->setNeedRecordVideoStates(Z)V

    :goto_0
    iget-boolean v1, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isFromNet:Z

    xor-int/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->setShowPicInPic(Z)V

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->toIntent(Landroid/content/Intent;)V

    instance-of p1, p0, Landroid/app/Activity;

    if-nez p1, :cond_1

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_1
    invoke-static {p0, v0}, Lcom/transsion/playercommon/activities/BaseActivity;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    if-eqz p1, :cond_2

    check-cast p0, Landroid/app/Activity;

    sget p1, Lcom/transsion/magicvideo/R$anim;->activity_audio_slide_in_up:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_2
    return-void
.end method

.method public static G2(Lcom/transsion/dbdata/beans/media/PlayVideoData;)V
    .locals 2

    invoke-static {}, Lcom/blankj/utilcode/util/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object v0

    const-string v1, "launch_video_player_activity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/eventbus/LiveEventBus;->c(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x49d

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lh27;->e(I[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->E(Landroid/content/Context;)V

    invoke-super {p0, p1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->onDestroy()V

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->t2(Landroid/content/Context;)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewIntent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayer_Activity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->onPause()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->onResume()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->onStart()V

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->G1()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->onStop()V

    return-void
.end method
