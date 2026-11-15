.class public abstract Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;
.super Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/action/RefreshAction;
.implements Lcom/cloud/tmc/miniapp/action/HandlerAction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$Companion;

.field private static final TAG:Ljava/lang/String; = "MiniAppBaseFragment"


# instance fields
.field private hasVirtualNavBar:Z

.field private isFullScreen:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile loadingAnimatorPlaying:Z

.field private final loadingAnimatorSet:Landroid/animation/AnimatorSet;

.field private navigationBarProgressUpdating:Z

.field private final onKeyboardListener:Lcom/cloud/tmc/kernel/listener/OnKeyboardListener;

.field private pullDownRefresh:Z

.field private pullUpRefresh:Z

.field private refreshFooterDelayed:Ljava/lang/Integer;

.field private refreshHeaderDelayed:Ljava/lang/Integer;

.field private final refreshManager$delegate:Lkotlin/Lazy;

.field private rootViewGlobalLayoutListener:Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener;

.field private final swipeBackManager$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->Companion:Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$swipeBackManager$2;->INSTANCE:Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$swipeBackManager$2;

    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->swipeBackManager$delegate:Lkotlin/Lazy;

    .line 11
    .line 12
    sget-object v0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$refreshManager$2;->INSTANCE:Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$refreshManager$2;

    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->refreshManager$delegate:Lkotlin/Lazy;

    .line 19
    .line 20
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 21
    .line 22
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->loadingAnimatorSet:Landroid/animation/AnimatorSet;

    .line 26
    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->isFullScreen:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    .line 35
    new-instance v0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$onKeyboardListener$1;

    .line 36
    .line 37
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$onKeyboardListener$1;-><init>(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->onKeyboardListener:Lcom/cloud/tmc/kernel/listener/OnKeyboardListener;

    .line 41
    .line 42
    return-void
.end method

.method public static synthetic V(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->showLoadingDialog$lambda$37$lambda$36(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic W(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Lcom/cloud/tmc/miniapp/widget/CapsuleView;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->setCapsuleParams$lambda$31$lambda$30(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Lcom/cloud/tmc/miniapp/widget/CapsuleView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic X(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->showLoadingDialog$lambda$37(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Y(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->hideLoadingDialog$lambda$39(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Z(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->enableHeaderTranslationContent$lambda$11(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a0(Ljava/lang/String;Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Lcom/cloud/tmc/integration/structure/Page;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->setHostActivityStatusBackground$lambda$35$lambda$34(Ljava/lang/String;Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Lcom/cloud/tmc/integration/structure/Page;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getApp$p$s-387525749(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)Lcom/cloud/tmc/integration/structure/App;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getPage$p$s-387525749(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)Lcom/cloud/tmc/integration/structure/Page;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$tabBarAdjustPan(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->tabBarAdjustPan(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b0(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->refreshApp$lambda$32(Landroidx/fragment/app/FragmentActivity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final declared-synchronized cancelAnimator()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "MiniAppBaseFragment"

    .line 3
    .line 4
    const-string v1, "cancelAnimator"

    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->loadingAnimatorPlaying:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->loadingAnimatorSet:Landroid/animation/AnimatorSet;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->loadingAnimatorPlaying:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    :try_start_2
    const-string v1, "MiniAppBaseFragment"

    .line 26
    .line 27
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 28
    .line 29
    .line 30
    :goto_0
    monitor-exit p0

    .line 31
    return-void

    .line 32
    :catchall_1
    move-exception v0

    .line 33
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 34
    throw v0
.end method

.method private final checkAlertBeforeUnload()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$checkAlertBeforeUnload$1;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$checkAlertBeforeUnload$1;-><init>(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/cloud/tmc/integration/utils/ext/PageExtKt;->checkAlertBeforeUnload(Lcom/cloud/tmc/integration/structure/Page;Lkotlin/jvm/functions/Function0;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method private static final enableHeaderTranslationContent$lambda$11(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V
    .locals 9

    .line 1
    const-string v0, "custom"

    .line 2
    .line 3
    const-string v1, "this$0"

    .line 4
    .line 5
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getWindow()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getRefreshHeaderStyle()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto/16 :goto_5

    .line 21
    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    :goto_0
    const-string v2, "default"

    .line 24
    .line 25
    invoke-static {v1, v2}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->orDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {}, Lcom/cloud/tmc/integration/utils/MiniBarUtils;->getStatusHeight()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-static {v2}, Lcom/cloud/tmc/integration/utils/ext/CommonExtKt;->getPx2dp(I)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    int-to-float v2, v2

    .line 38
    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/PageContext;->getTitleBar()Lcom/cloud/tmc/integration/structure/ui/TitleBar;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const/high16 v4, -0x40800000    # -1.0f

    .line 43
    .line 44
    if-eqz v3, :cond_1

    .line 45
    .line 46
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/ui/TitleBar;->getContent()Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    if-eqz v3, :cond_1

    .line 51
    .line 52
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    invoke-static {v3}, Lcom/cloud/tmc/integration/utils/ext/CommonExtKt;->getPx2dp(I)I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    int-to-float v3, v3

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    move v3, v4

    .line 63
    :goto_1
    iget-object v5, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 64
    .line 65
    const/4 v6, 0x0

    .line 66
    if-eqz v5, :cond_2

    .line 67
    .line 68
    const-string v7, "capsuleTranslationY"

    .line 69
    .line 70
    invoke-interface {v5, v7}, Lcom/cloud/tmc/kernel/node/ValueStore;->getIntValue(Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    int-to-float v5, v5

    .line 75
    goto :goto_2

    .line 76
    :cond_2
    move v5, v6

    .line 77
    :goto_2
    iget-object v7, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 78
    .line 79
    if-eqz v7, :cond_3

    .line 80
    .line 81
    const-string v8, "capsuleHeight"

    .line 82
    .line 83
    invoke-interface {v7, v8}, Lcom/cloud/tmc/kernel/node/ValueStore;->getIntValue(Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    int-to-float v7, v7

    .line 88
    goto :goto_3

    .line 89
    :cond_3
    move v7, v6

    .line 90
    :goto_3
    add-float/2addr v5, v7

    .line 91
    invoke-static {v5}, Lcom/cloud/tmc/integration/utils/ext/CommonExtKt;->getPx2dp(F)I

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    int-to-float v5, v5

    .line 96
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    if-eqz v7, :cond_4

    .line 101
    .line 102
    goto :goto_4

    .line 103
    :cond_4
    cmpg-float v4, v3, v4

    .line 104
    .line 105
    if-nez v4, :cond_5

    .line 106
    .line 107
    const v3, 0x4199999a    # 19.2f

    .line 108
    .line 109
    .line 110
    invoke-static {v3}, Lcom/cloud/tmc/integration/utils/ext/CommonExtKt;->getPx2dp(F)I

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    int-to-float v3, v3

    .line 115
    add-float v5, v2, v3

    .line 116
    .line 117
    goto :goto_4

    .line 118
    :cond_5
    const/4 v4, 0x5

    .line 119
    int-to-float v4, v4

    .line 120
    div-float/2addr v3, v4

    .line 121
    const/4 v4, 0x3

    .line 122
    int-to-float v4, v4

    .line 123
    mul-float v5, v3, v4

    .line 124
    .line 125
    :goto_4
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_6

    .line 130
    .line 131
    move v2, v6

    .line 132
    :cond_6
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getRefreshManager()Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-interface {v0, v5}, Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;->OooO0O0(F)V

    .line 137
    .line 138
    .line 139
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getRefreshManager()Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    invoke-interface {p0, v2}, Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;->OooO00o(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    .line 145
    .line 146
    goto :goto_6

    .line 147
    :goto_5
    const-string v0, "MiniAppBaseFragment"

    .line 148
    .line 149
    const-string v1, "Error refreshing"

    .line 150
    .line 151
    invoke-static {v0, v1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    .line 153
    .line 154
    :goto_6
    return-void
.end method

.method private final getRefreshManager()Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->refreshManager$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getSwipeBackManager()Lcom/cloud/tmc/miniapp/utils/manager/OooO0O0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->swipeBackManager$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/miniapp/utils/manager/OooO0O0;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final hideLoadingDialog$lambda$39(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V
    .locals 4

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/PageContext;->getContentView()Landroid/view/ViewGroup;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget v2, Lcom/cloud/tmc/miniapp/R$id;->fl_loading_mask:I

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/FrameLayout;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_2

    .line 24
    :cond_0
    move-object v0, v1

    .line 25
    :goto_0
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const/16 v3, 0x8

    .line 32
    .line 33
    if-ne v2, v3, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toGone(Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->cancelAnimator()V

    .line 42
    .line 43
    .line 44
    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/PageContext;->getContentView()Landroid/view/ViewGroup;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    sget v1, Lcom/cloud/tmc/miniapp/R$id;->iv_loading:I

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    move-object v1, v0

    .line 57
    check-cast v1, Landroid/widget/ImageView;

    .line 58
    .line 59
    :cond_3
    if-eqz v1, :cond_4

    .line 60
    .line 61
    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    .line 64
    goto :goto_3

    .line 65
    :goto_2
    const-string v0, "MiniAppBaseFragment"

    .line 66
    .line 67
    const-string v1, ""

    .line 68
    .line 69
    invoke-static {v0, v1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    :cond_4
    :goto_3
    return-void
.end method

.method private static final refreshApp$lambda$32(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 1
    check-cast p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->refreshApp()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic sendAppOrPageReadyToRender$default(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p4, :cond_1

    .line 2
    .line 3
    and-int/lit8 p3, p3, 0x2

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->sendAppOrPageReadyToRender(Ljava/lang/String;Ljava/util/Map;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string p1, "Super calls with default arguments not supported in this target, function: sendAppOrPageReadyToRender"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public static synthetic sendEventOrLifecycleToWorker$default(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Ljava/lang/String;ZLjava/util/Map;ILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p5, :cond_2

    .line 2
    .line 3
    and-int/lit8 p5, p4, 0x2

    .line 4
    .line 5
    if-eqz p5, :cond_0

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 9
    .line 10
    if-eqz p4, :cond_1

    .line 11
    .line 12
    const/4 p3, 0x0

    .line 13
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->sendEventOrLifecycleToWorker(Ljava/lang/String;ZLjava/util/Map;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 18
    .line 19
    const-string p1, "Super calls with default arguments not supported in this target, function: sendEventOrLifecycleToWorker"

    .line 20
    .line 21
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p0
.end method

.method public static synthetic sendPageEnterToWorker$default(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Ljava/util/Map;ILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p3, :cond_1

    .line 2
    .line 3
    and-int/lit8 p2, p2, 0x1

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->sendPageEnterToWorker(Ljava/util/Map;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string p1, "Super calls with default arguments not supported in this target, function: sendPageEnterToWorker"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method private final setCapsuleParams()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, v2

    .line 14
    :goto_0
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getCapsule()Lcom/cloud/tmc/miniapp/widget/CapsuleView;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    :cond_1
    if-eqz v2, :cond_2

    .line 21
    .line 22
    new-instance v0, Lcom/cloud/tmc/miniapp/base/e;

    .line 23
    .line 24
    invoke-direct {v0, p0, v2}, Lcom/cloud/tmc/miniapp/base/e;-><init>(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Lcom/cloud/tmc/miniapp/widget/CapsuleView;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 28
    .line 29
    .line 30
    :cond_2
    return-void
.end method

.method private static final setCapsuleParams$lambda$31$lambda$30(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Lcom/cloud/tmc/miniapp/widget/CapsuleView;)V
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$v"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const-string v1, "capsuleHeight"

    .line 20
    .line 21
    invoke-interface {p0, v1, v0}, Lcom/cloud/tmc/kernel/node/ValueStore;->putIntValue(Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const-string v1, "capsuleWidth"

    .line 29
    .line 30
    invoke-interface {p0, v1, v0}, Lcom/cloud/tmc/kernel/node/ValueStore;->putIntValue(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    float-to-int v0, v0

    .line 38
    const-string v1, "capsuleTop"

    .line 39
    .line 40
    invoke-interface {p0, v1, v0}, Lcom/cloud/tmc/kernel/node/ValueStore;->putIntValue(Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    float-to-int v0, v0

    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    add-int/2addr v1, v0

    .line 53
    const-string v0, "capsuleRight"

    .line 54
    .line 55
    invoke-interface {p0, v0, v1}, Lcom/cloud/tmc/kernel/node/ValueStore;->putIntValue(Ljava/lang/String;I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    float-to-int v0, v0

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    add-int/2addr v1, v0

    .line 68
    const-string v0, "capsuleBottom"

    .line 69
    .line 70
    invoke-interface {p0, v0, v1}, Lcom/cloud/tmc/kernel/node/ValueStore;->putIntValue(Ljava/lang/String;I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    float-to-int v0, v0

    .line 78
    const-string v1, "capsuleLeft"

    .line 79
    .line 80
    invoke-interface {p0, v1, v0}, Lcom/cloud/tmc/kernel/node/ValueStore;->putIntValue(Ljava/lang/String;I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    float-to-int v0, v0

    .line 88
    const-string v1, "capsuleTranslationX"

    .line 89
    .line 90
    invoke-interface {p0, v1, v0}, Lcom/cloud/tmc/kernel/node/ValueStore;->putIntValue(Ljava/lang/String;I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    float-to-int p1, p1

    .line 98
    const-string v0, "capsuleTranslationY"

    .line 99
    .line 100
    invoke-interface {p0, v0, p1}, Lcom/cloud/tmc/kernel/node/ValueStore;->putIntValue(Ljava/lang/String;I)V

    .line 101
    .line 102
    .line 103
    :cond_0
    return-void
.end method

.method private final setHostActivityStatusBackground(Lcom/cloud/tmc/integration/structure/Page;)V
    .locals 4

    .line 1
    const-string v0, "MiniAppBaseFragment"

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v3, "setHostActivityStatusBackground page: "

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    instance-of v2, v1, Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    check-cast v1, Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    goto :goto_2

    .line 41
    :cond_0
    move-object v1, v3

    .line 42
    :goto_0
    if-eqz v1, :cond_1

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getmAppLoadResult()Lcom/cloud/tmc/integration/structure/AppLoadResult;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    move-object v1, v3

    .line 50
    :goto_1
    if-nez v1, :cond_2

    .line 51
    .line 52
    const-string p1, "setHostActivityStatusBackground: appLoadResult is null"

    .line 53
    .line 54
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_2
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-static {v1, v2}, Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;->getWindowOptimalConfiguration(Lcom/cloud/tmc/integration/structure/AppLoadResult;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    if-eqz v1, :cond_3

    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getContentBgColor()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    :cond_3
    if-eqz v3, :cond_4

    .line 73
    .line 74
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-lez v1, :cond_4

    .line 79
    .line 80
    new-instance v1, Lcom/cloud/tmc/miniapp/base/j;

    .line 81
    .line 82
    invoke-direct {v1, v3, p0, p1}, Lcom/cloud/tmc/miniapp/base/j;-><init>(Ljava/lang/String;Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Lcom/cloud/tmc/integration/structure/Page;)V

    .line 83
    .line 84
    .line 85
    invoke-static {v1}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .line 87
    .line 88
    goto :goto_3

    .line 89
    :goto_2
    const-string v1, "setHostActivityStatusBackground parse color failed!"

    .line 90
    .line 91
    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    .line 93
    .line 94
    :cond_4
    :goto_3
    return-void
.end method

.method private static final setHostActivityStatusBackground$lambda$35$lambda$34(Ljava/lang/String;Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Lcom/cloud/tmc/integration/structure/Page;)V
    .locals 3

    .line 1
    const-string v0, "MiniAppBaseFragment"

    .line 2
    .line 3
    const-string v1, "$color"

    .line 4
    .line 5
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "this$0"

    .line 9
    .line 10
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "$page"

    .line 14
    .line 15
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v2, "setHostActivityStatusBackground: contentBackground: : "

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    instance-of v1, p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    check-cast p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto :goto_3

    .line 56
    :cond_0
    move-object p1, v2

    .line 57
    :goto_0
    if-nez p1, :cond_2

    .line 58
    .line 59
    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-eqz p1, :cond_1

    .line 64
    .line 65
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-eqz p1, :cond_1

    .line 70
    .line 71
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    move-object p1, v2

    .line 77
    :goto_1
    instance-of p2, p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 78
    .line 79
    if-eqz p2, :cond_3

    .line 80
    .line 81
    move-object v2, p1

    .line 82
    check-cast v2, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_2
    move-object v2, p1

    .line 86
    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    .line 87
    .line 88
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    if-eqz p1, :cond_4

    .line 93
    .line 94
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 95
    .line 96
    .line 97
    const-string p0, "setHostActivityStatusBackground: \u8bbe\u7f6e activity \u7684\u72b6\u6001\u5e03\u5c40\u80cc\u666f\u8272\u6210\u529f"

    .line 98
    .line 99
    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :cond_4
    const-string p0, "setHostActivityStatusBackground: \u6267\u884c\u5b8c\u6bd5"

    .line 103
    .line 104
    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    .line 106
    .line 107
    goto :goto_4

    .line 108
    :goto_3
    const-string p1, "setHostActivityStatusBackground parse color failed!!!"

    .line 109
    .line 110
    invoke-static {v0, p1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    .line 112
    .line 113
    :goto_4
    return-void
.end method

.method private final setParallaxOffset(F)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getSwipeBackManager()Lcom/cloud/tmc/miniapp/utils/manager/OooO0O0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lcom/cloud/tmc/miniapp/utils/manager/OooO0O0;->OooO00o(F)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic setParallaxOffset$default(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;FILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p3, :cond_1

    .line 2
    .line 3
    and-int/lit8 p2, p2, 0x1

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/high16 p1, 0x3f000000    # 0.5f

    .line 8
    .line 9
    :cond_0
    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->setParallaxOffset(F)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    const-string p1, "Super calls with default arguments not supported in this target, function: setParallaxOffset"

    .line 16
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method

.method private final setShowLoading(Lcom/cloud/tmc/integration/structure/Page;)V
    .locals 5

    .line 1
    const-string v0, "MiniAppBaseFragment"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "setShowLoading"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/PageContext;->getContentView()Landroid/view/ViewGroup;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    const-string p1, "setShowLoading \u5f53\u9762\u9875\u9762\u672a\u6e32\u67d3\uff0c\u4e0d\u518d\u6267\u884c"

    .line 15
    .line 16
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto/16 :goto_2

    .line 22
    .line 23
    :cond_0
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    const-string v2, "firstStartedPagePath"

    .line 30
    .line 31
    invoke-interface {v1, v2}, Lcom/cloud/tmc/kernel/node/ValueStore;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v1, 0x0

    .line 37
    :goto_0
    if-nez v1, :cond_2

    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v3, "setShowLoading firstStartedPagePath: "

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    if-nez v2, :cond_3

    .line 65
    .line 66
    return-void

    .line 67
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v4, "setShowLoading current pagePath: "

    .line 73
    .line 74
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-static {v0, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-eqz v3, :cond_4

    .line 92
    .line 93
    const-string p1, "setShowLoading \u9996\u4e2a\u542f\u52a8\u9875\u9762\u4e0d\u5c55\u793a\u9875\u9762Loading"

    .line 94
    .line 95
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_4
    invoke-static {v2}, Lcom/cloud/tmc/integration/utils/UrlUtil;->isHttpOrHttpsUrl(Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-eqz v2, :cond_5

    .line 104
    .line 105
    const-string p1, "setShowLoading \u6df7\u5408\u9875\u9762\u4e0d\u652f\u6301\u663e\u793a\u9875\u9762Loading"

    .line 106
    .line 107
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :cond_5
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    const/4 v2, 0x0

    .line 116
    if-eqz p1, :cond_6

    .line 117
    .line 118
    const-string v3, "firstNormalPageOpened"

    .line 119
    .line 120
    invoke-interface {p1, v3}, Lcom/cloud/tmc/kernel/node/ValueStore;->getBooleanValue(Ljava/lang/String;)Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    goto :goto_1

    .line 125
    :cond_6
    move p1, v2

    .line 126
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    const-string v4, "setShowLoading \u9996\u4e2a\u6b63\u5e38\u5c0f\u7a0b\u5e8f\u9875\u9762\u662f\u5426\u6253\u5f00\u8fc7\uff1a"

    .line 132
    .line 133
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    invoke-static {v0, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getWindow()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    if-eqz v3, :cond_7

    .line 151
    .line 152
    invoke-virtual {v3}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getEnablePageLoading()Ljava/lang/Boolean;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 157
    .line 158
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    const-string v4, "setShowLoading \u4e1a\u52a1\u5c0f\u7a0b\u5e8f\u914d\u7f6eLoading\u7684\u5f00\u5173\uff1a"

    .line 168
    .line 169
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    invoke-static {v0, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-static {v1}, Lcom/cloud/tmc/integration/utils/UrlUtil;->isHttpOrHttpsUrl(Ljava/lang/String;)Z

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    if-eqz v1, :cond_8

    .line 187
    .line 188
    if-nez p1, :cond_8

    .line 189
    .line 190
    const-string p1, "setShowLoading \u9996\u4e2a\u9875\u9762\u4e3aH5\u6df7\u5408\u9875\uff0c\u9996\u4e2a\u6b63\u5e38\u5c0f\u7a0b\u5e8f\u9875\u9762\u5c1a\u672a\u6253\u5f00\u8fc7"

    .line 191
    .line 192
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    const/4 v2, 0x1

    .line 196
    :cond_8
    if-nez v2, :cond_9

    .line 197
    .line 198
    const-string p1, "setShowLoading \u5173\u95ed\u9875\u9762\u8c03\u6574Loading"

    .line 199
    .line 200
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    return-void

    .line 204
    :cond_9
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->showLoadingDialog()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    .line 206
    .line 207
    goto :goto_3

    .line 208
    :goto_2
    const-string v1, "setShowLoading fail!!!"

    .line 209
    .line 210
    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 211
    .line 212
    .line 213
    :goto_3
    return-void
.end method

.method private static final showLoadingDialog$lambda$37(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V
    .locals 4

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/PageContext;->getContentView()Landroid/view/ViewGroup;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget v2, Lcom/cloud/tmc/miniapp/R$id;->fl_loading_mask:I

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/FrameLayout;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_2

    .line 24
    :cond_0
    move-object v0, v1

    .line 25
    :goto_0
    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/PageContext;->getContentView()Landroid/view/ViewGroup;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    sget v1, Lcom/cloud/tmc/miniapp/R$id;->iv_loading:I

    .line 32
    .line 33
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Landroid/widget/ImageView;

    .line 38
    .line 39
    :cond_1
    if-nez v1, :cond_2

    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    if-eqz v0, :cond_3

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_3

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    if-eqz v0, :cond_4

    .line 52
    .line 53
    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisible(Landroid/view/View;)V

    .line 54
    .line 55
    .line 56
    :cond_4
    :goto_1
    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->startAnimator(Landroid/widget/ImageView;)V

    .line 60
    .line 61
    .line 62
    new-instance v0, Lcom/cloud/tmc/miniapp/base/g;

    .line 63
    .line 64
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/base/g;-><init>(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V

    .line 65
    .line 66
    .line 67
    const-wide/16 v2, 0x7d0

    .line 68
    .line 69
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->postDelayed(Ljava/lang/Object;JLjava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    .line 72
    goto :goto_3

    .line 73
    :goto_2
    const-string v0, "MiniAppBaseFragment"

    .line 74
    .line 75
    const-string v1, ""

    .line 76
    .line 77
    invoke-static {v0, v1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    :goto_3
    return-void
.end method

.method private static final showLoadingDialog$lambda$37$lambda$36(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->hideLoadingDialog()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final declared-synchronized startAnimator(Landroid/widget/ImageView;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "MiniAppBaseFragment"

    .line 3
    .line 4
    const-string v1, "startAnimator"

    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->loadingAnimatorPlaying:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :cond_0
    if-eqz p1, :cond_1

    .line 16
    .line 17
    :try_start_1
    const-string v0, "rotation"

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    new-array v1, v1, [F

    .line 21
    .line 22
    fill-array-data v1, :array_0

    .line 23
    .line 24
    .line 25
    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string v0, "ofFloat(it, \"rotation\", 0F, 360F)"

    .line 30
    .line 31
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-wide/16 v0, 0x258

    .line 35
    .line 36
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 37
    .line 38
    .line 39
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    .line 40
    .line 41
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 45
    .line 46
    .line 47
    const/4 v0, -0x1

    .line 48
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->loadingAnimatorSet:Landroid/animation/AnimatorSet;

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->loadingAnimatorSet:Landroid/animation/AnimatorSet;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 59
    .line 60
    .line 61
    const/4 p1, 0x1

    .line 62
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->loadingAnimatorPlaying:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception p1

    .line 66
    :try_start_2
    const-string v0, "MiniAppBaseFragment"

    .line 67
    .line 68
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 69
    .line 70
    .line 71
    :cond_1
    :goto_0
    monitor-exit p0

    .line 72
    return-void

    .line 73
    :catchall_1
    move-exception p1

    .line 74
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 75
    throw p1

    .line 76
    nop

    .line 77
    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method private final tabBarAdjustPan(II)V
    .locals 7

    .line 1
    const-string v0, "MiniAppBaseFragment"

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getWindow()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getEnableTabBarAdjustPan()Ljava/lang/Boolean;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_3

    .line 23
    :cond_0
    move v1, v2

    .line 24
    :goto_0
    if-nez v1, :cond_1

    .line 25
    .line 26
    const-string p1, "onTabBarAdjustPan enableTabBarAdjustPan is not enabled"

    .line 27
    .line 28
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    move v1, v2

    .line 42
    :goto_1
    if-nez v1, :cond_3

    .line 43
    .line 44
    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 45
    .line 46
    new-instance p2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v1, "onTabBarAdjustPan: page is not tabPage "

    .line 52
    .line 53
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_3
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 68
    .line 69
    if-eqz v1, :cond_4

    .line 70
    .line 71
    const-string v3, "isApiShowTabBarEnabled"

    .line 72
    .line 73
    invoke-interface {v1, v3}, Lcom/cloud/tmc/kernel/node/ValueStore;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    goto :goto_2

    .line 78
    :cond_4
    const/4 v1, 0x0

    .line 79
    :goto_2
    const-string v3, "hideTabBar"

    .line 80
    .line 81
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_5

    .line 86
    .line 87
    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 88
    .line 89
    if-eqz p1, :cond_7

    .line 90
    .line 91
    invoke-interface {p1, v2}, Lcom/cloud/tmc/kernel/node/TabBarNode;->hideTabBar(Z)Z

    .line 92
    .line 93
    .line 94
    goto :goto_4

    .line 95
    :cond_5
    int-to-double v3, p1

    .line 96
    int-to-double p1, p2

    .line 97
    const-wide v5, 0x3fc3333333333333L    # 0.15

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    mul-double/2addr p1, v5

    .line 103
    cmpl-double p1, v3, p1

    .line 104
    .line 105
    if-lez p1, :cond_6

    .line 106
    .line 107
    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 108
    .line 109
    if-eqz p1, :cond_7

    .line 110
    .line 111
    invoke-interface {p1, v2}, Lcom/cloud/tmc/kernel/node/TabBarNode;->hideTabBar(Z)Z

    .line 112
    .line 113
    .line 114
    goto :goto_4

    .line 115
    :cond_6
    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 116
    .line 117
    if-eqz p1, :cond_7

    .line 118
    .line 119
    invoke-interface {p1, v2}, Lcom/cloud/tmc/kernel/node/TabBarNode;->showTabBar(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    .line 121
    .line 122
    goto :goto_4

    .line 123
    :goto_3
    const-string p2, "tabBarAdjustPan failed"

    .line 124
    .line 125
    invoke-static {v0, p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    .line 127
    .line 128
    :cond_7
    :goto_4
    return-void
.end method


# virtual methods
.method public addOnKeyboardListener(Lcom/cloud/tmc/kernel/listener/OnKeyboardListener;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->rootViewGlobalLayoutListener:Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener;->addOnKeyboardListener(Lcom/cloud/tmc/kernel/listener/OnKeyboardListener;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final attachToRefresh(Landroid/view/View;Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;)Landroid/view/View;
    .locals 10

    .line 1
    const-string v0, "MiniAppBaseFragment"

    .line 2
    .line 3
    const-string v1, "view"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "window"

    .line 9
    .line 10
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getRefreshHeaderDelayed()Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->refreshHeaderDelayed:Ljava/lang/Integer;

    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getRefreshFooterDelayed()Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->refreshFooterDelayed:Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getRefreshManager()Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->removeSelf(Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 33
    .line 34
    invoke-interface {v1, p0, p1}, Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;->OooO00o(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;Landroid/view/View;)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getEnablePullDownRefresh()Ljava/lang/Boolean;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 43
    .line 44
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->enableRefresh(Z)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getEnablePullUpRefresh()Ljava/lang/Boolean;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->enableLoadMore(Z)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getRefreshHeaderStyle()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    if-eqz v1, :cond_0

    .line 67
    .line 68
    const-string v3, "custom"

    .line 69
    .line 70
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_0

    .line 75
    .line 76
    sget-object v1, Lcom/cloud/tmc/miniapp/utils/OooOO0O;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooOO0O;

    .line 77
    .line 78
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getRefreshHeaderCustomLoadingGif()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    iget-object v5, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 83
    .line 84
    const/4 v6, 0x1

    .line 85
    invoke-virtual {v1, v4, v5, v6}, Lcom/cloud/tmc/miniapp/utils/OooOO0O;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;Z)Ljava/io/File;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getRefreshHeaderCustomSuccessGif()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    iget-object v7, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 94
    .line 95
    invoke-virtual {v1, v5, v7, v6}, Lcom/cloud/tmc/miniapp/utils/OooOO0O;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;Z)Ljava/io/File;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getRefreshHeaderCustomLoading()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    iget-object v7, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 104
    .line 105
    const/4 v8, 0x0

    .line 106
    invoke-virtual {v1, v6, v7, v8}, Lcom/cloud/tmc/miniapp/utils/OooOO0O;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;Z)Ljava/io/File;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getRefreshHeaderCustomSuccess()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    iget-object v9, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 115
    .line 116
    invoke-virtual {v1, v7, v9, v8}, Lcom/cloud/tmc/miniapp/utils/OooOO0O;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;Z)Ljava/io/File;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    if-eqz v4, :cond_0

    .line 121
    .line 122
    if-eqz v5, :cond_0

    .line 123
    .line 124
    if-eqz v6, :cond_0

    .line 125
    .line 126
    if-eqz v1, :cond_0

    .line 127
    .line 128
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getRefreshManager()Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    invoke-interface {v7, v3}, Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;->OooO00o(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getRefreshManager()Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getRefreshHeaderCustomTextEnable()Ljava/lang/Boolean;

    .line 140
    .line 141
    .line 142
    move-result-object v7

    .line 143
    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v7

    .line 147
    invoke-interface {v3, v7}, Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;->OooO0O0(Z)V

    .line 148
    .line 149
    .line 150
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getRefreshManager()Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-interface {v3, v4, v5, v6, v1}, Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;->OooO00o(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    .line 155
    .line 156
    .line 157
    :cond_0
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getRefreshHeaderTranslationContent()Ljava/lang/Boolean;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->enableHeaderTranslationContent(Z)V

    .line 166
    .line 167
    .line 168
    :try_start_0
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getRefreshHeaderAccentColor()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    if-eqz v1, :cond_1

    .line 173
    .line 174
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    if-lez v2, :cond_1

    .line 179
    .line 180
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getRefreshManager()Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    invoke-interface {v2, v1}, Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;->OooO0Oo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .line 190
    .line 191
    goto :goto_0

    .line 192
    :catch_0
    move-exception v1

    .line 193
    const-string v2, "set header accent color error"

    .line 194
    .line 195
    invoke-static {v0, v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 196
    .line 197
    .line 198
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getRefreshHeaderBackgroundColor()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    if-eqz v1, :cond_2

    .line 203
    .line 204
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    if-lez v2, :cond_2

    .line 209
    .line 210
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getRefreshManager()Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    invoke-interface {v2, v1}, Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;->OooO0O0(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 219
    .line 220
    .line 221
    goto :goto_1

    .line 222
    :catch_1
    move-exception v1

    .line 223
    const-string v2, "set header background color error"

    .line 224
    .line 225
    invoke-static {v0, v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 226
    .line 227
    .line 228
    :cond_2
    :goto_1
    :try_start_2
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getRefreshFooterAccentColor()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    if-eqz v1, :cond_3

    .line 233
    .line 234
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    if-lez v2, :cond_3

    .line 239
    .line 240
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getRefreshManager()Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 245
    .line 246
    .line 247
    move-result v1

    .line 248
    invoke-interface {v2, v1}, Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;->OooO00o(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 249
    .line 250
    .line 251
    goto :goto_2

    .line 252
    :catch_2
    move-exception v1

    .line 253
    const-string v2, "set footer accent color error"

    .line 254
    .line 255
    invoke-static {v0, v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 256
    .line 257
    .line 258
    :cond_3
    :goto_2
    :try_start_3
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getRefreshFooterBackgroundColor()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object p2

    .line 262
    if-eqz p2, :cond_4

    .line 263
    .line 264
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 265
    .line 266
    .line 267
    move-result v1

    .line 268
    if-lez v1, :cond_4

    .line 269
    .line 270
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getRefreshManager()Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 275
    .line 276
    .line 277
    move-result p2

    .line 278
    invoke-interface {v1, p2}, Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;->OooO0OO(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 279
    .line 280
    .line 281
    goto :goto_3

    .line 282
    :catch_3
    move-exception p2

    .line 283
    const-string v1, "set footer background color error"

    .line 284
    .line 285
    invoke-static {v0, v1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 286
    .line 287
    .line 288
    :cond_4
    :goto_3
    return-object p1
.end method

.method public final attachToSwipeBack(Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getSwipeBackManager()Lcom/cloud/tmc/miniapp/utils/manager/OooO0O0;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->removeSelf(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x19

    .line 14
    .line 15
    invoke-static {v1}, Lcom/cloud/tmc/integration/utils/ext/CommonExtKt;->getDp2px(I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->setEdgeLevel(I)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, p1}, Lcom/cloud/tmc/miniapp/utils/manager/OooO0O0;->OooO00o(Landroid/view/View;)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method public final checkBackToPageInterceptAndRemoveIt()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getBackPressedProcessor()Lcom/cloud/tmc/integration/processor/IBackPressedProcessor;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/cloud/tmc/integration/processor/IBackPressedProcessor;->getInterceptors()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    move-object v2, v1

    .line 32
    check-cast v2, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;

    .line 33
    .line 34
    invoke-interface {v2}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;->getInterceptName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const-string v3, "BackToPageIntercept"

    .line 39
    .line 40
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    const/4 v1, 0x0

    .line 50
    :goto_0
    check-cast v1, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;

    .line 51
    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getBackPressedProcessor()Lcom/cloud/tmc/integration/processor/IBackPressedProcessor;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/processor/IBackPressedProcessor;->removeInterceptors(Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const-string v2, "MiniAppBaseFragment"

    .line 73
    .line 74
    invoke-static {v2, v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    :cond_2
    :goto_2
    return-void
.end method

.method public destroy()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->hideLoadingDialog()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catchall_0
    move-exception v0

    .line 6
    const-string v1, "MiniAppBaseFragment"

    .line 7
    .line 8
    const-string v2, "remove callbacks and messages"

    .line 9
    .line 10
    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    :goto_0
    return-void
.end method

.method public enableHeaderTranslationContent(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->pullDownRefresh:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getRefreshManager()Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0, p1}, Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;->OooO00o(Z)V

    .line 10
    .line 11
    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getWindow()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getEnableTransparentStatusBar()Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 25
    .line 26
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p1, 0x0

    .line 32
    :goto_0
    if-eqz p1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    new-instance v0, Lcom/cloud/tmc/miniapp/base/h;

    .line 41
    .line 42
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/base/h;-><init>(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 46
    .line 47
    .line 48
    :cond_1
    return-void
.end method

.method public enableLoadMore(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->pullUpRefresh:Z

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getRefreshManager()Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;->OooO0Oo(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public enableRefresh(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->pullDownRefresh:Z

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getRefreshManager()Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;->OooO0OO(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final getAppLoadResult()Lcom/cloud/tmc/integration/structure/AppLoadResult;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getSceneParams()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "appLoadResult"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/cloud/tmc/integration/structure/AppLoadResult;

    .line 12
    .line 13
    return-object v0
.end method

.method public final getEntryInfo()Lcom/cloud/tmc/integration/model/EntryInfo;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getSceneParams()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "entryInfo"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/cloud/tmc/integration/model/EntryInfo;

    .line 12
    .line 13
    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->getHandler(Lcom/cloud/tmc/miniapp/action/HandlerAction;)Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getHasVirtualNavBar()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->hasVirtualNavBar:Z

    .line 2
    .line 3
    return v0
.end method

.method public getNavigationBarProgressUpdateStatus()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->navigationBarProgressUpdating:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getNavigationBarProgressUpdating()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->navigationBarProgressUpdating:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getSceneParams()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getSceneParams()Landroid/os/Bundle;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return-object v0
.end method

.method public final getWindow()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getAppLoadResult()Lcom/cloud/tmc/integration/structure/AppLoadResult;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    invoke-static {v0, v1}, Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;->getWindowOptimalConfiguration(Lcom/cloud/tmc/integration/structure/AppLoadResult;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public final hasVirtualNavBar(Landroid/content/Context;)Z
    .locals 3

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "window"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v0, "null cannot be cast to non-null type android.view.WindowManager"

    .line 13
    .line 14
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    check-cast p1, Landroid/view/WindowManager;

    .line 18
    .line 19
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-instance v0, Landroid/util/DisplayMetrics;

    .line 24
    .line 25
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 29
    .line 30
    .line 31
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 32
    .line 33
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 34
    .line 35
    new-instance v2, Landroid/util/DisplayMetrics;

    .line 36
    .line 37
    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 41
    .line 42
    .line 43
    iget p1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 44
    .line 45
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 46
    .line 47
    sub-int/2addr v0, v2

    .line 48
    if-gtz v0, :cond_1

    .line 49
    .line 50
    sub-int/2addr v1, p1

    .line 51
    if-lez v1, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const/4 p1, 0x0

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 57
    :goto_1
    return p1
.end method

.method public final hideLoadingDialog()V
    .locals 3

    .line 1
    const-string v0, "MiniAppBaseFragment"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "hideLoadingDialog"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/cloud/tmc/miniapp/base/k;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/base/k;-><init>(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    const-string v2, ""

    .line 19
    .line 20
    invoke-static {v0, v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method public hideTabBar(Z)Z
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/PageContext;->getTabBar()Lcom/cloud/tmc/integration/structure/ui/TabBar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/cloud/tmc/integration/structure/ui/TabBar;->hideTabBar(Z)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    return p1
.end method

.method public hideTabBarRedDot(I)Z
    .locals 6

    .line 1
    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/PageContext;->getTabBar()Lcom/cloud/tmc/integration/structure/ui/TabBar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0, p1, v1}, Lcom/cloud/tmc/integration/structure/ui/TabBar;->setUnreadVisible(IZ)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v1

    .line 14
    :goto_0
    if-eqz v0, :cond_4

    .line 15
    .line 16
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    const-class v4, Lcom/cloud/tmc/integration/model/TabBarMessageStore;

    .line 28
    .line 29
    const/4 v5, 0x1

    .line 30
    invoke-interface {v2, v4, v5}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lcom/cloud/tmc/integration/model/TabBarMessageStore;

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move-object v2, v3

    .line 38
    :goto_1
    if-eqz v2, :cond_2

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/TabBarMessageStore;->getRedDotMessageHashMap()Ljava/util/HashMap;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    move-object v3, p1

    .line 55
    check-cast v3, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;

    .line 56
    .line 57
    :cond_2
    if-nez v3, :cond_3

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_3
    invoke-virtual {v3, v1}, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->setShowRedDot(Z)V

    .line 61
    .line 62
    .line 63
    :cond_4
    :goto_2
    return v0
.end method

.method public hideTabBarUnreadIcon(I)Z
    .locals 6

    .line 1
    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/PageContext;->getTabBar()Lcom/cloud/tmc/integration/structure/ui/TabBar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0, p1, v1}, Lcom/cloud/tmc/integration/structure/ui/TabBar;->setUnreadIconVisible(IZ)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v1

    .line 14
    :goto_0
    if-eqz v0, :cond_4

    .line 15
    .line 16
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    const-class v4, Lcom/cloud/tmc/integration/model/TabBarMessageStore;

    .line 28
    .line 29
    const/4 v5, 0x1

    .line 30
    invoke-interface {v2, v4, v5}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lcom/cloud/tmc/integration/model/TabBarMessageStore;

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move-object v2, v3

    .line 38
    :goto_1
    if-eqz v2, :cond_2

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/TabBarMessageStore;->getRedDotMessageHashMap()Ljava/util/HashMap;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    move-object v3, p1

    .line 55
    check-cast v3, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;

    .line 56
    .line 57
    :cond_2
    if-nez v3, :cond_3

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_3
    invoke-virtual {v3, v1}, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->setShowUnreadIcon(Z)V

    .line 61
    .line 62
    .line 63
    :cond_4
    :goto_2
    return v0
.end method

.method public final hideVirtualNavBar()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "requireActivity().window.decorView"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/16 v1, 0x802

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public initView()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->setCapsuleParams()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final isFullScreen()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->isFullScreen:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isHomepage(Lcom/cloud/tmc/integration/structure/AppLoadResult;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/cloud/tmc/integration/utils/AppUtils;->isHomepage(Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/integration/structure/AppLoadResult;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public loadTabBar(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;Ljava/lang/String;)Z
    .locals 4

    .line 1
    const-string v0, "tabBar"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/PageContext;->getTabBar()Lcom/cloud/tmc/integration/structure/ui/TabBar;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    instance-of v2, v0, Lcom/cloud/tmc/miniapp/widget/TabBarView;

    .line 15
    .line 16
    if-eqz v2, :cond_4

    .line 17
    .line 18
    check-cast v0, Lcom/cloud/tmc/miniapp/widget/TabBarView;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-ne v2, v3, :cond_1

    .line 30
    .line 31
    move v1, v3

    .line 32
    :cond_1
    invoke-static {v0, v1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisibleOrGone(Landroid/view/View;Z)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 36
    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-ne v1, v3, :cond_3

    .line 44
    .line 45
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 46
    .line 47
    if-nez p2, :cond_2

    .line 48
    .line 49
    const-string p2, ""

    .line 50
    .line 51
    :cond_2
    invoke-virtual {v0, p1, v1, p2}, Lcom/cloud/tmc/miniapp/widget/TabBarView;->setTabs(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :cond_3
    return v3

    .line 55
    :cond_4
    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "requireContext()"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->hasVirtualNavBar(Landroid/content/Context;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->hasVirtualNavBar:Z

    .line 18
    .line 19
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x1

    .line 28
    if-ne v0, v1, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getSwipeBackManager()Lcom/cloud/tmc/miniapp/utils/manager/OooO0O0;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-interface {v0, p0, p1}, Lcom/cloud/tmc/miniapp/utils/manager/OooO0O0;->OooO00o(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;Landroid/os/Bundle;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getSwipeBackManager()Lcom/cloud/tmc/miniapp/utils/manager/OooO0O0;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/utils/manager/OooO0O0;->onDestroy()V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->pullDownRefresh:Z

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->pullUpRefresh:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getRefreshManager()Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;->onDestroy()V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getSwipeBackManager()Lcom/cloud/tmc/miniapp/utils/manager/OooO0O0;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/utils/manager/OooO0O0;->OooO00o()V

    .line 9
    .line 10
    .line 11
    const-class v0, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;->releaseKeyBoardChange(Landroid/view/View;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->rootViewGlobalLayoutListener:Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    const-string v1, "MiniAppBaseFragment"

    .line 36
    .line 37
    const-string v2, "onDestroyView failed"

    .line 38
    .line 39
    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    :goto_0
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getSwipeBackManager()Lcom/cloud/tmc/miniapp/utils/manager/OooO0O0;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0, p1}, Lcom/cloud/tmc/miniapp/utils/manager/OooO0O0;->OooO00o(Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onLoadMoreEvent()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->pullUpRefresh:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->refreshFooterDelayed:Ljava/lang/Integer;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getRefreshManager()Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-interface {v1, v0, v2}, Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;->OooO00o(IZ)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->rootViewGlobalLayoutListener:Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    const-class v0, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;->setKeyBoardListener(Lcom/cloud/tmc/integration/proxy/OnKeyboardListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_2

    .line 37
    :goto_1
    const-string v1, "MiniAppBaseFragment"

    .line 38
    .line 39
    const-string v2, "onPause failed"

    .line 40
    .line 41
    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    :goto_2
    return-void
.end method

.method public onRefreshEvent()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->pullDownRefresh:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->refreshHeaderDelayed:Ljava/lang/Integer;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getRefreshManager()Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-interface {v1, v0, v2}, Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;->OooO0O0(IZ)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->rootViewGlobalLayoutListener:Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    const-class v0, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;

    .line 33
    .line 34
    new-instance v1, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$onResume$2;

    .line 35
    .line 36
    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$onResume$2;-><init>(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;->setKeyBoardListener(Lcom/cloud/tmc/integration/proxy/OnKeyboardListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :goto_1
    const-string v1, "MiniAppBaseFragment"

    .line 44
    .line 45
    const-string v2, "onResume failed"

    .line 46
    .line 47
    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    :goto_2
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    const-class p1, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-interface {p1, p2}, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;->initKeyBoardChange(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    new-instance p1, Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener;

    .line 25
    .line 26
    invoke-direct {p1, p0}, Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener;-><init>(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;)V

    .line 27
    .line 28
    .line 29
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->onKeyboardListener:Lcom/cloud/tmc/kernel/listener/OnKeyboardListener;

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener;->addOnKeyboardListener(Lcom/cloud/tmc/kernel/listener/OnKeyboardListener;)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->rootViewGlobalLayoutListener:Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener;

    .line 35
    .line 36
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {p0, v1, p1, v0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->setParallaxOffset$default(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;FILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public post(Ljava/lang/Runnable;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->post(Lcom/cloud/tmc/miniapp/action/HandlerAction;Ljava/lang/Runnable;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public postAtTime(Ljava/lang/Runnable;J)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->postAtTime(Lcom/cloud/tmc/miniapp/action/HandlerAction;Ljava/lang/Runnable;J)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public postDelayed(Ljava/lang/Object;JLjava/lang/Runnable;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->postDelayed(Lcom/cloud/tmc/miniapp/action/HandlerAction;Ljava/lang/Object;JLjava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 0

    .line 2
    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->postDelayed(Lcom/cloud/tmc/miniapp/action/HandlerAction;Ljava/lang/Runnable;J)Z

    move-result p1

    return p1
.end method

.method public refreshApp()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    check-cast v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->refreshApp()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    sget-object v1, Lcom/cloud/tmc/kernel/executor/ExecutorType;->UI:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    .line 30
    .line 31
    new-instance v2, Lcom/cloud/tmc/miniapp/base/i;

    .line 32
    .line 33
    invoke-direct {v2, v0}, Lcom/cloud/tmc/miniapp/base/i;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    return-void
.end method

.method public removeCallbacks()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->removeCallbacks(Lcom/cloud/tmc/miniapp/action/HandlerAction;)V

    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)V
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->removeCallbacks(Lcom/cloud/tmc/miniapp/action/HandlerAction;Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeCallbacksAndMessages(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->removeCallbacksAndMessages(Lcom/cloud/tmc/miniapp/action/HandlerAction;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public removeOnKeyboardListener(Lcom/cloud/tmc/kernel/listener/OnKeyboardListener;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->rootViewGlobalLayoutListener:Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/integration/listener/RootViewGlobalLayoutListener;->removeOnKeyboardListener(Lcom/cloud/tmc/kernel/listener/OnKeyboardListener;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public removeTabBarBadge(I)Z
    .locals 6

    .line 1
    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/PageContext;->getTabBar()Lcom/cloud/tmc/integration/structure/ui/TabBar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/cloud/tmc/integration/structure/ui/TabBar;->removeTabBarBadge(I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v1

    .line 14
    :goto_0
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    const-class v4, Lcom/cloud/tmc/integration/model/TabBarMessageStore;

    .line 28
    .line 29
    const/4 v5, 0x1

    .line 30
    invoke-interface {v2, v4, v5}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lcom/cloud/tmc/integration/model/TabBarMessageStore;

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move-object v2, v3

    .line 38
    :goto_1
    if-eqz v2, :cond_2

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/TabBarMessageStore;->getBadgeMessageHashMap()Ljava/util/HashMap;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Lcom/cloud/tmc/integration/model/TabBarBadgeMessage;

    .line 55
    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    invoke-virtual {p1, v1}, Lcom/cloud/tmc/integration/model/TabBarBadgeMessage;->setShowBadge(Z)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v3}, Lcom/cloud/tmc/integration/model/TabBarBadgeMessage;->setText(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    return v0
.end method

.method public final sendAppOrPageReadyToRender(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "eventName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 7
    .line 8
    invoke-static {v0, p1, p2}, Lcom/cloud/tmc/integration/utils/AppUtils;->sendAppOrPageReadyToRender(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;Ljava/util/Map;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final sendEventOrLifecycleToWorker(Ljava/lang/String;ZLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "eventName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 7
    .line 8
    invoke-static {v0, p1, p2, p3}, Lcom/cloud/tmc/integration/utils/AppUtils;->sendEventOrLifecycleToWorker(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;ZLjava/util/Map;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final sendPageEnterToWorker(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 15
    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v3, v2

    .line 24
    :goto_0
    if-nez v3, :cond_1

    .line 25
    .line 26
    move-object v3, v1

    .line 27
    :cond_1
    invoke-interface {v0, v3}, Lcom/cloud/tmc/integration/structure/App;->getRouteType(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    move-object v0, v2

    .line 33
    :goto_1
    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->takeIfNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v3, "navigateTo"

    .line 38
    .line 39
    invoke-static {v0, v3}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->orDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v4, "unknown"

    .line 44
    .line 45
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_3

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_3
    move-object v3, v0

    .line 53
    :goto_2
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 54
    .line 55
    if-eqz v0, :cond_6

    .line 56
    .line 57
    iget-object v4, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 58
    .line 59
    if-eqz v4, :cond_4

    .line 60
    .line 61
    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    goto :goto_3

    .line 66
    :cond_4
    move-object v4, v2

    .line 67
    :goto_3
    if-nez v4, :cond_5

    .line 68
    .line 69
    move-object v4, v1

    .line 70
    :cond_5
    invoke-interface {v0, v4}, Lcom/cloud/tmc/integration/structure/App;->getPageType(Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    goto :goto_4

    .line 79
    :cond_6
    move-object v0, v2

    .line 80
    :goto_4
    new-instance v4, Ljava/util/HashMap;

    .line 81
    .line 82
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 83
    .line 84
    .line 85
    const/4 v5, 0x0

    .line 86
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    const-string v7, "delta"

    .line 91
    .line 92
    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    const-string v6, "routeType"

    .line 96
    .line 97
    invoke-interface {v4, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    const/4 v3, 0x1

    .line 101
    if-nez v0, :cond_7

    .line 102
    .line 103
    goto :goto_5

    .line 104
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eq v0, v3, :cond_8

    .line 109
    .line 110
    goto :goto_5

    .line 111
    :cond_8
    move v3, v5

    .line 112
    :goto_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    const-string v3, "isMixedPage"

    .line 117
    .line 118
    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 122
    .line 123
    if-eqz v0, :cond_9

    .line 124
    .line 125
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    if-eqz v0, :cond_9

    .line 130
    .line 131
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getPrePage()Lcom/cloud/tmc/integration/structure/Page;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    if-eqz v0, :cond_9

    .line 136
    .line 137
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    :cond_9
    if-nez v2, :cond_a

    .line 142
    .line 143
    goto :goto_6

    .line 144
    :cond_a
    move-object v1, v2

    .line 145
    :goto_6
    const-string v0, "preRenderId"

    .line 146
    .line 147
    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    if-eqz p1, :cond_b

    .line 151
    .line 152
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 153
    .line 154
    .line 155
    :cond_b
    const-string p1, "pageEnter"

    .line 156
    .line 157
    invoke-virtual {p0, p1, v5, v4}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->sendEventOrLifecycleToWorker(Ljava/lang/String;ZLjava/util/Map;)V

    .line 158
    .line 159
    .line 160
    return-void
.end method

.method public final setEdgeLevel(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getSwipeBackManager()Lcom/cloud/tmc/miniapp/utils/manager/OooO0O0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/cloud/tmc/miniapp/utils/manager/OooO0O0;->OooO00o(I)V

    return-void
.end method

.method public final setEdgeLevel(Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$EdgeLevel;)V
    .locals 1

    const-string v0, "edgeLevel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getSwipeBackManager()Lcom/cloud/tmc/miniapp/utils/manager/OooO0O0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/cloud/tmc/miniapp/utils/manager/OooO0O0;->OooO00o(Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$EdgeLevel;)V

    return-void
.end method

.method public final setFullScreen(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->isFullScreen:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    return-void
.end method

.method public final setHasVirtualNavBar(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->hasVirtualNavBar:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setNavigationBarProgressUpdating(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->navigationBarProgressUpdating:Z

    .line 2
    .line 3
    return-void
.end method

.method public setPage(Lcom/cloud/tmc/integration/structure/Page;)V
    .locals 5

    .line 1
    const-string v0, "MiniAppBaseFragment"

    .line 2
    .line 3
    const-string v1, "page"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppLifecycleCallback()Lcom/cloud/tmc/integration/callback/ICheckMiniAppLifecycleCallback;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    move-object v1, v2

    .line 21
    :goto_0
    if-nez v1, :cond_2

    .line 22
    .line 23
    const-string v1, "setMiniappLifecycleCallback"

    .line 24
    .line 25
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    instance-of v4, v3, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 37
    .line 38
    if-eqz v4, :cond_1

    .line 39
    .line 40
    move-object v2, v3

    .line 41
    check-cast v2, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 42
    .line 43
    :cond_1
    invoke-interface {v1, v2}, Lcom/cloud/tmc/integration/structure/App;->setMiniappLifecycleCallback(Lcom/cloud/tmc/integration/callback/ICheckMiniAppLifecycleCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    goto :goto_2

    .line 47
    :goto_1
    :try_start_1
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    :goto_2
    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->setHostActivityStatusBackground(Lcom/cloud/tmc/integration/structure/Page;)V

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->setShowLoading(Lcom/cloud/tmc/integration/structure/Page;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 54
    .line 55
    .line 56
    goto :goto_3

    .line 57
    :catchall_1
    move-exception p1

    .line 58
    const-string v1, "setPage fail!"

    .line 59
    .line 60
    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    :goto_3
    return-void
.end method

.method public final setSwipeBackEnable(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getSwipeBackManager()Lcom/cloud/tmc/miniapp/utils/manager/OooO0O0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lcom/cloud/tmc/miniapp/utils/manager/OooO0O0;->OooO0O0(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setTabBarBadge(ILjava/lang/String;)Z
    .locals 7

    .line 1
    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/PageContext;->getTabBar()Lcom/cloud/tmc/integration/structure/ui/TabBar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0, p1, p2}, Lcom/cloud/tmc/integration/structure/ui/TabBar;->setTabBarBadge(ILjava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v1

    .line 14
    :goto_0
    if-eqz v0, :cond_5

    .line 15
    .line 16
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    const/4 v4, 0x0

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    const-class v5, Lcom/cloud/tmc/integration/model/TabBarMessageStore;

    .line 29
    .line 30
    invoke-interface {v2, v5, v3}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lcom/cloud/tmc/integration/model/TabBarMessageStore;

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move-object v2, v4

    .line 38
    :goto_1
    if-eqz v2, :cond_2

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/TabBarMessageStore;->getRedDotMessageHashMap()Ljava/util/HashMap;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    if-eqz v5, :cond_2

    .line 45
    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    check-cast v5, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    move-object v5, v4

    .line 58
    :goto_2
    if-nez v5, :cond_3

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_3
    invoke-virtual {v5, v1}, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->setShowRedDot(Z)V

    .line 62
    .line 63
    .line 64
    :goto_3
    if-eqz v2, :cond_4

    .line 65
    .line 66
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/TabBarMessageStore;->getBadgeMessageHashMap()Ljava/util/HashMap;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    :cond_4
    if-eqz v4, :cond_5

    .line 71
    .line 72
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    new-instance v2, Lcom/cloud/tmc/integration/model/TabBarBadgeMessage;

    .line 77
    .line 78
    invoke-direct {v2, p1, v3, p2}, Lcom/cloud/tmc/integration/model/TabBarBadgeMessage;-><init>(IZLjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Lcom/cloud/tmc/integration/model/TabBarBadgeMessage;

    .line 86
    .line 87
    :cond_5
    return v0
.end method

.method public setTabBarItem(ILcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;)Z
    .locals 2

    .line 1
    const-string v0, "tab"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/PageContext;->getTabBar()Lcom/cloud/tmc/integration/structure/ui/TabBar;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {v1, p1, p2, v0}, Lcom/cloud/tmc/integration/structure/ui/TabBar;->updateTabItem(ILcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;Lcom/cloud/tmc/integration/structure/Page;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v1, "set tab item for index "

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p1, " with tab "

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string p1, " is failed"

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const-string p2, "MiniAppBaseFragment"

    .line 64
    .line 65
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const/4 p1, 0x0

    .line 69
    :goto_1
    return p1
.end method

.method public setTabBarItems(Ljava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const-string v0, "tabs"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/PageContext;->getTabBar()Lcom/cloud/tmc/integration/structure/ui/TabBar;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {v1, p1, v0}, Lcom/cloud/tmc/integration/structure/ui/TabBar;->updateAllTabs(Ljava/util/List;Lcom/cloud/tmc/integration/structure/Page;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    :goto_0
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const-string p1, "MiniAppBaseFragment"

    .line 34
    .line 35
    const-string v0, "set tab items is failed"

    .line 36
    .line 37
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    :goto_1
    return p1
.end method

.method public setTabBarStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/PageContext;->getTabBar()Lcom/cloud/tmc/integration/structure/ui/TabBar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/cloud/tmc/integration/structure/ui/TabBar;->setTabBarStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-eqz v0, :cond_3

    .line 14
    .line 15
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    const-class v2, Lcom/cloud/tmc/integration/model/TabBarMessageStore;

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    invoke-interface {v1, v2, v3}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/cloud/tmc/integration/model/TabBarMessageStore;

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/4 v1, 0x0

    .line 36
    :goto_1
    if-nez v1, :cond_2

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_2
    new-instance v2, Lcom/cloud/tmc/integration/model/TabBarStyle;

    .line 40
    .line 41
    invoke-direct {v2, p1, p2, p3, p4}, Lcom/cloud/tmc/integration/model/TabBarStyle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Lcom/cloud/tmc/integration/model/TabBarMessageStore;->setTabBarStyle(Lcom/cloud/tmc/integration/model/TabBarStyle;)V

    .line 45
    .line 46
    .line 47
    :cond_3
    :goto_2
    return v0
.end method

.method public shouldInterceptOnKeyDown()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->checkAlertBeforeUnload()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public final showLoadingDialog()V
    .locals 3

    .line 1
    const-string v0, "MiniAppBaseFragment"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "showLoadingDialog"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/cloud/tmc/miniapp/base/f;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/base/f;-><init>(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    const-string v2, ""

    .line 19
    .line 20
    invoke-static {v0, v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method public showTabBar(Z)Z
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/PageContext;->getTabBar()Lcom/cloud/tmc/integration/structure/ui/TabBar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/cloud/tmc/integration/structure/ui/TabBar;->showTabBar(Z)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    return p1
.end method

.method public showTabBarRedDot(I)Z
    .locals 14

    .line 1
    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/PageContext;->getTabBar()Lcom/cloud/tmc/integration/structure/ui/TabBar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0, p1, v2}, Lcom/cloud/tmc/integration/structure/ui/TabBar;->setUnreadVisible(IZ)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v0, v1

    .line 15
    :goto_0
    if-eqz v0, :cond_4

    .line 16
    .line 17
    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    const-class v5, Lcom/cloud/tmc/integration/model/TabBarMessageStore;

    .line 29
    .line 30
    invoke-interface {v3, v5, v2}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lcom/cloud/tmc/integration/model/TabBarMessageStore;

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move-object v2, v4

    .line 38
    :goto_1
    if-eqz v2, :cond_2

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/TabBarMessageStore;->getRedDotMessageHashMap()Ljava/util/HashMap;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    goto :goto_2

    .line 45
    :cond_2
    move-object v3, v4

    .line 46
    :goto_2
    if-eqz v3, :cond_3

    .line 47
    .line 48
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    new-instance v13, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;

    .line 53
    .line 54
    const/16 v11, 0xc

    .line 55
    .line 56
    const/4 v12, 0x0

    .line 57
    const/4 v8, 0x1

    .line 58
    const/4 v9, 0x0

    .line 59
    const/4 v10, 0x0

    .line 60
    move-object v6, v13

    .line 61
    move v7, p1

    .line 62
    invoke-direct/range {v6 .. v12}, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;-><init>(IZLjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v5, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    check-cast v3, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;

    .line 70
    .line 71
    :cond_3
    if-eqz v2, :cond_4

    .line 72
    .line 73
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/TabBarMessageStore;->getBadgeMessageHashMap()Ljava/util/HashMap;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    if-eqz v2, :cond_4

    .line 78
    .line 79
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    check-cast p1, Lcom/cloud/tmc/integration/model/TabBarBadgeMessage;

    .line 88
    .line 89
    if-eqz p1, :cond_4

    .line 90
    .line 91
    invoke-virtual {p1, v1}, Lcom/cloud/tmc/integration/model/TabBarBadgeMessage;->setShowBadge(Z)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v4}, Lcom/cloud/tmc/integration/model/TabBarBadgeMessage;->setText(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :cond_4
    return v0
.end method

.method public showTabBarUnreadIcon(ILjava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "iconPath"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/PageContext;->getTabBar()Lcom/cloud/tmc/integration/structure/ui/TabBar;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    new-instance v2, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$showTabBarUnreadIcon$1$1;

    .line 17
    .line 18
    invoke-direct {v2, p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$showTabBarUnreadIcon$1$1;-><init>(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;ILjava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v1, p1, p2, v0, v2}, Lcom/cloud/tmc/integration/structure/ui/TabBar;->showTabBarUnreadIcon(ILjava/lang/String;Lcom/cloud/tmc/integration/structure/Page;Lkotlin/jvm/functions/Function1;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final showVirtualNavBar()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "requireActivity().window.decorView"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/16 v1, 0x400

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public startRefresh()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->pullDownRefresh:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getRefreshManager()Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;->startRefresh()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public stopLoadMore()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->pullUpRefresh:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getRefreshManager()Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;->stopLoadMore()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->pullUpRefresh:Z

    .line 13
    .line 14
    return v0
.end method

.method public stopRefresh()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->pullDownRefresh:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getRefreshManager()Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;->stopRefresh()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->pullDownRefresh:Z

    .line 13
    .line 14
    return v0
.end method
