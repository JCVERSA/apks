.class public Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;
.super Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;->h()V

    return-void
.end method

.method public static synthetic b()V
    .locals 0

    invoke-static {}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;->f()V

    return-void
.end method

.method public static synthetic c()V
    .locals 0

    invoke-static {}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;->e()V

    return-void
.end method

.method public static synthetic d(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;->g()V

    return-void
.end method

.method public static synthetic e()V
    .locals 3

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsLast:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x3ed

    invoke-virtual {v0, v2, v1}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic f()V
    .locals 2

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsGravityLand:Z

    return-void
.end method


# virtual methods
.method public final synthetic g()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsNeedFit:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->z1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V

    return-void
.end method

.method public final synthetic h()V
    .locals 1

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsLoading:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mTearing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    invoke-static {v0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->A1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->hideLoadingView()V

    :cond_0
    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    invoke-static {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->A1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setFullScreenVisible(Z)V

    return-void
.end method

.method public varargs onAutoComplete(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;->onAutoComplete(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    iget-boolean p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsYoutube:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsVk:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->G1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public varargs onEnterFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 15

    move-object v0, p0

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "ott_play_fullscreen_guide"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v4, 0x1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    invoke-virtual {v1, v2, v4}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    iget-object v2, v2, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v1

    iput-boolean v4, v1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsGravityLand:Z

    iget-object v1, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    iput-boolean v4, v1, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsFullScreen:Z

    invoke-super/range {p0 .. p2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;->onEnterFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsGravity:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lwz5;->q()V

    :cond_1
    sget-wide v5, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->sCurrentSerialId:J

    iget-object v1, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    invoke-static {v1}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->q1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)J

    move-result-wide v7

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->getDuration()J

    move-result-wide v9

    iget-object v1, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    iget-wide v11, v1, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTopicId:J

    iget v13, v1, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mTopicSort:I

    iget-object v14, v1, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mSourceType:Ljava/lang/String;

    invoke-static/range {v5 .. v14}, Lwz5;->Z(JJJJILjava/lang/String;)V

    iget-object v1, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    invoke-virtual {v1, v3}, Lcom/transsion/playercommon/activities/BaseActivity;->setNavVisibility(Z)V

    iget-object v1, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x200

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    iget-object v1, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    iget-object v1, v1, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIntroDialog:Lcom/transsion/onlinevideo/mangotv/IntroDialog;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    iget-object v1, v1, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIntroDialog:Lcom/transsion/onlinevideo/mangotv/IntroDialog;

    invoke-virtual {v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    :cond_2
    iget-object v1, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    iget-object v1, v1, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mBackIv:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    iget-object v1, v1, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->handler:Landroid/os/Handler;

    new-instance v5, Lra8;

    invoke-direct {v5}, Lra8;-><init>()V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    iget-object v1, v1, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->handler:Landroid/os/Handler;

    new-instance v5, Lsa8;

    invoke-direct {v5}, Lsa8;-><init>()V

    const-wide/16 v6, 0x7d0

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v1

    iput-boolean v4, v1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsGravity:Z

    iget-object v1, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetworkUtils;->isAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetworkUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mShowMobileData:Z

    if-eqz v1, :cond_3

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v1

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const/16 v5, 0x3e9

    invoke-virtual {v1, v5, v4}, Lh27;->e(I[Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    iget-object v1, v1, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->onVideoPause()V

    :cond_3
    const-string v1, "full_play"

    invoke-static {v1}, Lwz5;->N(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    iget-object v1, v1, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getCurrentPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    iget-object v1, v1, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getCurrentPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getPlayListBtn()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    iget-object v1, v1, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->detailPlayer:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getCurrentPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getPlayListBtn()Landroid/widget/ImageView;

    move-result-object v1

    iget-object v4, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    invoke-static {v4}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->I1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v0, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    iget-boolean v4, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsYoutube:Z

    if-nez v4, :cond_4

    iget-boolean v0, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsVk:Z

    if-nez v0, :cond_4

    move v2, v3

    :cond_4
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x462

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void
.end method

.method public onEnterImmerse()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsFullScreen:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/activities/BaseActivity;->setNavVisibility(Z)V

    :cond_0
    return-void
.end method

.method public onOutImmerse()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsFullScreen:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/activities/BaseActivity;->setNavVisibility(Z)V

    :cond_0
    return-void
.end method

.method public varargs onPrepared(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;->onPrepared(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    iget p2, p1, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mHaveAD:I

    const-string v0, "vd_sdk_videoprepare"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, p2}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->C1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;Ljava/lang/String;II)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    invoke-static {p1}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->m1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    invoke-static {p2}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->o1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    iget-object v0, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mCurrentSerial:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getIsIntact()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    invoke-static {v0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->p1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    invoke-static {v0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->m1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsLast:Z

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsLast:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const/16 v0, 0x3ed

    invoke-virtual {p1, v0, p2}, Lh27;->e(I[Ljava/lang/Object;)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    invoke-static {p1}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->x1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    invoke-static {p1}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->x1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->isEnable()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    invoke-static {p1}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->x1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->setEnable(Z)V

    :cond_2
    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    invoke-static {p0, v1}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->y1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;Z)V

    return-void
.end method

.method public varargs onQuitFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;->onQuitFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsGravity:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lwz5;->d()V

    :cond_0
    invoke-static {}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->K1()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onQuitFullscreen"

    filled-new-array {v0, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mIsFullScreen:Z

    iget-object p1, p1, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mBackIv:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/activities/BaseActivity;->setNavVisibility(Z)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x200

    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    const/16 v1, 0x3ec

    new-array v2, p2, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Lh27;->e(I[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    iget-object p1, p1, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mDetailRoot:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1, p2, p2}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    iget-object p1, p1, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    invoke-static {p1}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->x1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    invoke-static {p1}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->x1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->backToProtVideo()I

    :cond_1
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lpa8;

    invoke-direct {p2, p0}, Lpa8;-><init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lqa8;

    invoke-direct {p2, p0}, Lqa8;-><init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p0

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsGravity:Z

    const-string p0, "vert_play"

    invoke-static {p0}, Lwz5;->N(Ljava/lang/String;)V

    invoke-static {}, Lxz5;->b()V

    return-void
.end method

.method public varargs onRequestVip(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;->onRequestVip(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->K1()Ljava/lang/String;

    move-result-object p1

    const-string p2, "request vip"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    invoke-static {p1}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->F1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    invoke-static {p1}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->q1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)J

    move-result-wide p1

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    invoke-static {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->n1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)J

    move-result-wide v0

    const/4 p0, 0x1

    invoke-static {p1, p2, v0, v1, p0}, Lwz5;->B(JJZ)V

    return-void
.end method

.method public onRetryPlay()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    invoke-static {p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->D1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V

    return-void
.end method

.method public varargs onStartPrepared(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;->onStartPrepared(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVideoLoadingTime:J

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsLoading:Z

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    invoke-static {p1}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->A1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->showLoadingView(Z)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$b;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    const-string p1, "vd_sdk_playercoreprepare"

    iget v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mHaveAD:I

    invoke-static {p0, p1, p2, v0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->C1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;Ljava/lang/String;II)V

    return-void
.end method

.method public varargs onVideoStartShow(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;->onVideoStartShow(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, Lyz5;->a:Ljava/lang/String;

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    return-void
.end method
