.class public Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;
.super Lcom/transsion/playercommon/fragments/BaseFragment;
.source "SourceFile"


# instance fields
.field public l:Lcom/transsion/dbdata/beans/media/PlayVideoData;

.field public m:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

.field public n:Landroidx/activity/result/ActivityResultLauncher;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;-><init>()V

    new-instance v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/media/PlayVideoData;-><init>()V

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->l:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lp2c;

    invoke-direct {v1, p0}, Lp2c;-><init>(Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->n:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public static synthetic P(Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->a0(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static synthetic Q(Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->b0(J)V

    return-void
.end method

.method public static synthetic R(Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->U()V

    return-void
.end method

.method public static synthetic S(Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->c0()V

    return-void
.end method


# virtual methods
.method public T()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->m:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->resumeCheckData()V

    :cond_0
    return-void
.end method

.method public final U()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkMultiWindowMode multiWindow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", pip="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VideoPlayerFragment"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/transsion/playercommon/activities/BaseActivity;->requestedChangeOrientation(I)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->m:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->multiWindowModeChanged(Z)V

    :cond_1
    return-void
.end method

.method public V()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->m:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->doAudioBecomingNoisy()V

    :cond_0
    return-void
.end method

.method public W(ILandroid/view/KeyEvent;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->m:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->doHeadsetsKeyUp(ILandroid/view/KeyEvent;)V

    return-void
.end method

.method public X()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->m:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->exitVideoPlayView()V

    :cond_0
    return-void
.end method

.method public Y()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->m:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->hasClickRotate()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public Z()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->m:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->isVideoOrientationLocked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final synthetic a0(Landroidx/activity/result/ActivityResult;)V
    .locals 6

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "click_flag"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v3, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->m:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->showInfo()V

    goto/16 :goto_0

    :cond_2
    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string v0, "action_flag"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "out_data"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eq v0, v3, :cond_a

    const/4 v5, 0x3

    if-eq v0, v5, :cond_9

    const/4 p1, 0x5

    if-eq v0, p1, :cond_8

    const/4 p1, 0x7

    if-eq v0, p1, :cond_7

    const/16 p1, 0x8

    if-eq v0, p1, :cond_6

    const/16 p1, 0xb

    if-eq v0, p1, :cond_5

    const/16 p1, 0xc

    if-eq v0, p1, :cond_4

    goto :goto_0

    :cond_4
    new-instance p1, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, v4}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;-><init>(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/MediaItem;)V

    invoke-virtual {p1, v2}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->e0(Z)V

    new-instance v0, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment$a;

    invoke-direct {v0, p0}, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment$a;-><init>(Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;)V

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->f0(Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;)V

    invoke-virtual {p1, v3, v3}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->Y(ZZ)V

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->J0(Landroid/content/Context;)V

    goto :goto_0

    :cond_6
    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->m:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->onSpeedClicked()V

    goto :goto_0

    :cond_7
    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->m:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->showEq()V

    goto :goto_0

    :cond_8
    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->m:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->showInfo()V

    goto :goto_0

    :cond_9
    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->m:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->deleteVideo(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    goto :goto_0

    :cond_a
    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/transsion/magicvideo/activities/MediaTimerDialogSheetActivity;->A0(Landroid/content/Context;)V

    :cond_b
    :goto_0
    return-void
.end method

.method public final synthetic b0(J)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->m:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->l:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iput-wide p1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playPosition:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onViewCreated restored playPosition from DB: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VideoPlayerFragment"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->m:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->l:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->setDataDelay(Lcom/transsion/dbdata/beans/media/PlayVideoData;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final synthetic c0()V
    .locals 3

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->l:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ltpb;->l0(Lcom/transsion/dbdata/beans/media/PlayVideoData;Lcom/transsion/dbdata/beans/media/MediaItem;)J

    move-result-wide v0

    new-instance v2, Lq2c;

    invoke-direct {v2, p0, v0, v1}, Lq2c;-><init>(Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;J)V

    invoke-static {v2}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d0(IILandroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->m:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->onCallActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->didReceivedNotification(I[Ljava/lang/Object;)V

    const/16 p2, 0x41d

    if-eq p1, p2, :cond_2

    const/16 p2, 0x420

    if-eq p1, p2, :cond_1

    const/16 p2, 0x47d

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->g0()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->m:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->hideLoadingView()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->m:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->refrashFar()V

    :cond_3
    :goto_0
    return-void
.end method

.method public e0()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->m:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->onClosePictureInPictureMode()V

    :cond_0
    return-void
.end method

.method public f0(ZLandroid/content/res/Configuration;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->m:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public final g0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->m:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    if-eqz v0, :cond_0

    const-string v0, "onPlayListEmpty"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "VideoPlayerFragment"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->m:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->exitVideo()V

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->L1()V

    :cond_0
    return-void
.end method

.method public h0()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->m:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->m:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->onSystemUiVisibilityChange()V

    :cond_0
    return-void
.end method

.method public i0()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->m:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->onUserLeaveHint()V

    :cond_0
    return-void
.end method

.method public j0()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->m:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->onVolumeChange()V

    :cond_0
    return-void
.end method

.method public k0()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->m:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->onWindowAnimationReady()V

    :cond_0
    return-void
.end method

.method public l0(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    return-object p0
.end method

.method public m0()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->m:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->setStatusPlayUiShow()V

    :cond_0
    return-void
.end method

.method public n0()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->m:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->updateSubtitleVisibility()V

    :cond_0
    return-void
.end method

.method public o0(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->m:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->updateKeyguardState(Z)V

    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->m:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->onBackPressed()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string v0, "video_play_fragment_bean"

    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iput-object p3, p0, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->l:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iput-object p3, p0, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->l:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    :cond_1
    sget p0, Lcom/transsion/magicvideo/R$layout;->fragment_video:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onDestroy()V

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->m:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onFinishRequestPermission(IZ)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->onFinishRequestPermission(IZ)V

    const/4 p0, 0x1

    const-string v0, "videoplay"

    const/16 v1, 0x4d7

    if-eqz p2, :cond_0

    if-ne p1, v1, :cond_3

    const-string p1, "allow"

    invoke-static {p1, v0, p0}, Lqz5;->c(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    const-string p2, "deny"

    invoke-static {p2, v0, p0}, Lqz5;->c(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    const/16 p0, 0x4d6

    if-eq p1, p0, :cond_2

    if-ne p1, v1, :cond_3

    :cond_2
    sget p0, Lcom/transsion/playercommon/R$string;->operation_fail:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onMultiWindowModeChanged(Z)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->U()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onPause()V

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->m:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onResume()V

    sget-boolean v0, Laf9;->b:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->T()V

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Laf9;->b:Z

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->m:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->onResume()V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->m:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->l:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    invoke-virtual {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->getPlayPosition()I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, v1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playPosition:J

    :cond_0
    const-string v0, "video_play_fragment_bean"

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->l:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onStart()V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->m:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->onStart()V

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsAutoRecover:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->c0()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    if-nez v1, :cond_2

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "VideoPlayerFragment"

    const-string v1, "finish myself"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onStop()V

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->m:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->onStop()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-static {}, Lo06;->f()V

    sget p2, Lcom/transsion/magicvideo/R$id;->video_content_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iput-object p2, p0, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->m:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p2, v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)V

    iget-object p2, p0, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->m:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->n:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p2, v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->setActivityResultLauncher(Landroidx/activity/result/ActivityResultLauncher;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onViewCreated "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->l:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "VideoPlayerFragment"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsAutoRecover:Z

    if-eqz p2, :cond_0

    const-string p2, "isAutoRecover,not need reset data"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->m:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->l:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->setDataDelay(Lcom/transsion/dbdata/beans/media/PlayVideoData;Z)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->l:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iget-wide v0, p2, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playPosition:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-boolean v0, p2, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isPlayComplete:Z

    if-nez v0, :cond_2

    iget v0, p2, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mediaId:I

    if-gtz v0, :cond_1

    iget-object p2, p2, Lcom/transsion/dbdata/beans/media/PlayVideoData;->path:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->l:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iget-object p2, p2, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mYoutubeId:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    :cond_1
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->l()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    new-instance v0, Ln2c;

    invoke-direct {v0, p0}, Ln2c;-><init>(Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->m:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->l:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->setDataDelay(Lcom/transsion/dbdata/beans/media/PlayVideoData;Z)V

    :goto_0
    new-instance p2, Lo2c;

    invoke-direct {p2, p0}, Lo2c;-><init>(Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerPalmIdListeners()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->registerPalmIdListeners()V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x420

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x41d

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x47d

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    return-void
.end method

.method public bridge synthetic setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->l0(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;

    move-result-object p0

    return-object p0
.end method

.method public unRegisterPalmIdListeners()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->unRegisterPalmIdListeners()V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x420

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x41d

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x47d

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    return-void
.end method
