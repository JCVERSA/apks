.class public Lcom/transsion/audio/activities/AudioPlayListSheetDialogActivity;
.super Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;-><init>()V

    return-void
.end method

.method public static synthetic f0(Lcom/transsion/audio/activities/AudioPlayListSheetDialogActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/activities/AudioPlayListSheetDialogActivity;->g0(Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public final synthetic g0(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->dismissWithoutAnim()V

    return-void
.end method

.method public getDragHandlerVisibility()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getSupportGesture()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public initView()V
    .locals 4

    invoke-super {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->initView()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "theme"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v1, Lcom/transsion/audio/widgets/MusicPlayListView;

    invoke-direct {v1, p0}, Lcom/transsion/audio/widgets/MusicPlayListView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/transsion/audio/widgets/MusicPlayListView;->setNightType(Z)Lcom/transsion/audio/widgets/MusicPlayListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/audio/widgets/MusicPlayListView;->adaptFoldState(Z)Lcom/transsion/audio/widgets/MusicPlayListView;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x43ec8000    # 473.0f

    invoke-static {v1, v3}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/audio/widgets/MusicPlayListView;->fixedPagerHeight(I)Lcom/transsion/audio/widgets/MusicPlayListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseCloseBottomSheetDialog;->addPage(Landroid/view/View;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setTitleLayoutVisible(Z)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object v0

    const-string v1, "is_hide_audio_play_list"

    invoke-virtual {v0, v1}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object v0

    new-instance v1, Lwt;

    invoke-direct {v1, p0}, Lwt;-><init>(Lcom/transsion/audio/activities/AudioPlayListSheetDialogActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method
