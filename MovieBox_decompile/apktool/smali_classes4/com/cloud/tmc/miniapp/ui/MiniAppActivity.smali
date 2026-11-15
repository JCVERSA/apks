.class public Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;
.super Lcom/cloud/tmc/miniapp/base/MiniAppBaseActivity;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/action/StatusAction;
.implements Lcom/cloud/tmc/miniapp/action/VersionUpdateAction;
.implements Lcom/cloud/tmc/miniapp/prepare/steps/OooOo;
.implements Lcom/cloud/tmc/kernel/proxy/renderprocess/IOnRenderProcessGoneProxy$Listener;
.implements Lcom/cloud/tmc/integration/proxy/UpdateLoadingStepListener;
.implements Lcom/cloud/tmc/integration/callback/ICheckMiniAppLifecycleCallback;
.implements Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;
.implements Lcom/cloud/tmc/integration/callback/IAllowMFAHListener;
.implements Lcom/cloud/tmc/integration/proxy/OfflineAppProxy$CreateShortCutsListener;
.implements Lcom/cloud/tmc/integration/callback/IShowAddHomeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$Companion;

.field private static final TAG:Ljava/lang/String; = "MiniAppActivity"


# instance fields
.field private final addHomeDialogView$delegate:Lkotlin/Lazy;

.field private final appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

.field private appId:Ljava/lang/String;

.field private final capsule$delegate:Lkotlin/Lazy;

.field private controller:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

.field private currentDelayTime:J

.field private delayShowError:Z

.field private devToken:Ljava/lang/String;

.field private final dialog$delegate:Lkotlin/Lazy;

.field private enableQuickMode:Z

.field private errorException:Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

.field private eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

.field private isFirstLaunch:Z

.field private isResendH5PageStack:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isValidOnResume:Z

.field private final mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

.field private final mMFAHInterceptList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mShowCompleteTaskQueue$delegate:Lkotlin/Lazy;

.field private final mStatusLayout$delegate:Lkotlin/Lazy;

.field private final miniAppPopWindowToken$delegate:Lkotlin/Lazy;

.field private miniappForegroundTime:J

.field private miniappResumeTimestamp:J

.field private miniappStartTime:J

.field private mode:Ljava/lang/String;

.field private msgAppName:Ljava/lang/String;

.field private onPauseStopTimeStamp:J

.field private prepareContext:Lcom/cloud/tmc/integration/model/PrepareContext;

.field private final pvAddHomeBottomTip$delegate:Lkotlin/Lazy;

.field private final pvAddHomeCustom1$delegate:Lkotlin/Lazy;

.field private final pvAddHomeCustom2$delegate:Lkotlin/Lazy;

.field private final pvAddHomeTopTip$delegate:Lkotlin/Lazy;

.field private final pvMsgBubble$delegate:Lkotlin/Lazy;

.field private quickModeController:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

.field private quickModeStartStatus:Z

.field private rootTaskId:Ljava/lang/String;

.field private sceneId:Ljava/lang/String;

.field private final showMsgBubbleController:Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;

.field private showOpenAppDialog:Z

.field private showPopUpWindowRunnable:Ljava/lang/Runnable;

.field private tempAppLogo:Ljava/lang/String;

.field private tempAppName:Ljava/lang/String;

.field private uniqueChainId:Ljava/lang/Long;

.field private version:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->Companion:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$mStatusLayout$2;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$mStatusLayout$2;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mStatusLayout$delegate:Lkotlin/Lazy;

    .line 14
    .line 15
    new-instance v0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    .line 21
    .line 22
    new-instance v1, Lcom/cloud/tmc/integration/ActivityHelper;

    .line 23
    .line 24
    invoke-direct {v1, p0, v0}, Lcom/cloud/tmc/integration/ActivityHelper;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/cloud/tmc/integration/chain/app/AppChainContext;)V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 28
    .line 29
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$capsule$2;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$capsule$2;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->capsule$delegate:Lkotlin/Lazy;

    .line 39
    .line 40
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$pvAddHomeCustom1$2;

    .line 41
    .line 42
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$pvAddHomeCustom1$2;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->pvAddHomeCustom1$delegate:Lkotlin/Lazy;

    .line 50
    .line 51
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$pvAddHomeCustom2$2;

    .line 52
    .line 53
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$pvAddHomeCustom2$2;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->pvAddHomeCustom2$delegate:Lkotlin/Lazy;

    .line 61
    .line 62
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$pvAddHomeTopTip$2;

    .line 63
    .line 64
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$pvAddHomeTopTip$2;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 65
    .line 66
    .line 67
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->pvAddHomeTopTip$delegate:Lkotlin/Lazy;

    .line 72
    .line 73
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$pvAddHomeBottomTip$2;

    .line 74
    .line 75
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$pvAddHomeBottomTip$2;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 76
    .line 77
    .line 78
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->pvAddHomeBottomTip$delegate:Lkotlin/Lazy;

    .line 83
    .line 84
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$pvMsgBubble$2;

    .line 85
    .line 86
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$pvMsgBubble$2;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 87
    .line 88
    .line 89
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->pvMsgBubble$delegate:Lkotlin/Lazy;

    .line 94
    .line 95
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$addHomeDialogView$2;

    .line 96
    .line 97
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$addHomeDialogView$2;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 98
    .line 99
    .line 100
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->addHomeDialogView$delegate:Lkotlin/Lazy;

    .line 105
    .line 106
    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->isFirstLaunch:Z

    .line 108
    .line 109
    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->isValidOnResume:Z

    .line 110
    .line 111
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 112
    .line 113
    const/4 v1, 0x0

    .line 114
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 115
    .line 116
    .line 117
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->isResendH5PageStack:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 118
    .line 119
    const-string v0, ""

    .line 120
    .line 121
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->msgAppName:Ljava/lang/String;

    .line 122
    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 124
    .line 125
    .line 126
    move-result-wide v1

    .line 127
    iput-wide v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->miniappStartTime:J

    .line 128
    .line 129
    new-instance v1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$miniAppPopWindowToken$2;

    .line 130
    .line 131
    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$miniAppPopWindowToken$2;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 132
    .line 133
    .line 134
    invoke-static {v1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->miniAppPopWindowToken$delegate:Lkotlin/Lazy;

    .line 139
    .line 140
    sget-object v1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$mShowCompleteTaskQueue$2;->INSTANCE:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$mShowCompleteTaskQueue$2;

    .line 141
    .line 142
    invoke-static {v1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mShowCompleteTaskQueue$delegate:Lkotlin/Lazy;

    .line 147
    .line 148
    new-instance v1, Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .line 152
    .line 153
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mMFAHInterceptList:Ljava/util/ArrayList;

    .line 154
    .line 155
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->tempAppLogo:Ljava/lang/String;

    .line 156
    .line 157
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->tempAppName:Ljava/lang/String;

    .line 158
    .line 159
    new-instance v1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$dialog$2;

    .line 160
    .line 161
    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$dialog$2;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 162
    .line 163
    .line 164
    invoke-static {v1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->dialog$delegate:Lkotlin/Lazy;

    .line 169
    .line 170
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->rootTaskId:Ljava/lang/String;

    .line 171
    .line 172
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$showMsgBubbleController$1;

    .line 173
    .line 174
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$showMsgBubbleController$1;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 175
    .line 176
    .line 177
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showMsgBubbleController:Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;

    .line 178
    .line 179
    return-void
.end method

.method public static synthetic S(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->backgroundDownloadZipAsync$lambda$35(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic U(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Lcom/cloud/tmc/integration/activity/LoadStepAction;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->updateStepProgress$lambda$26(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Lcom/cloud/tmc/integration/activity/LoadStepAction;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic V(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Landroid/os/Bundle;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->reload$lambda$25(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Landroid/os/Bundle;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic W(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->refreshAppInfo$lambda$34(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic X(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Ljava/lang/String;Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showAddHomeTips$lambda$11(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Ljava/lang/String;Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Y()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->hideStatusLoading$lambda$10$lambda$9$lambda$8()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Z(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showPopUpWindowRunnable$lambda$72(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a0(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->initView$lambda$50(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$capsuleSetOnLeftClick(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->capsuleSetOnLeftClick()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getAppBrandBundle(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Lcom/cloud/tmc/integration/model/AppModel;)Landroid/os/Bundle;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getAppBrandBundle(Lcom/cloud/tmc/integration/model/AppModel;)Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getDialog(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)Lcom/cloud/tmc/miniapp/dialog/OooOOO0;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getDialog()Lcom/cloud/tmc/miniapp/dialog/OooOOO0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getEventCenter$p(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getPvAddHomeCustom1(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom1PopUpWindowView;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getPvAddHomeCustom1()Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom1PopUpWindowView;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getPvAddHomeCustom2(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom2PopUpWindowView;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getPvAddHomeCustom2()Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom2PopUpWindowView;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$setShowOpenAppDialog$p(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showOpenAppDialog:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$showLoadingPage(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showLoadingPage()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$showOpenAppDialog(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showOpenAppDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic addScreen$default(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Ljava/lang/String;ILjava/lang/Object;)V
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
    const-string p1, "0"

    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->addScreen(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    const-string p1, "Super calls with default arguments not supported in this target, function: addScreen"

    .line 16
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method

.method public static synthetic b0(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showStatusLoading$lambda$0(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final backgroundDownloadZipAsync$lambda$35(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Z)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->dispatchOnUpdateApp(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic c0(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showMsgBubbleToast$lambda$70(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final capsuleSetOnLeftClick()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->isLoadStatusLoadingOrError()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 17
    .line 18
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_MORE_ENTER:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 19
    .line 20
    const-string v3, ""

    .line 21
    .line 22
    invoke-interface {v0, v1, v2, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_8

    .line 32
    .line 33
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_8

    .line 38
    .line 39
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getDialog()Lcom/cloud/tmc/miniapp/dialog/OooOOO0;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->show()V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getDialog()Lcom/cloud/tmc/miniapp/dialog/OooOOO0;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    const-string v2, "appModel"

    .line 54
    .line 55
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getDeveloper()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_2

    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO0OO()Landroid/widget/TextView;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    if-nez v2, :cond_1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    const/16 v4, 0x8

    .line 76
    .line 77
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO0OO()Landroid/widget/TextView;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    if-nez v2, :cond_3

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    const/4 v4, 0x0

    .line 89
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 90
    .line 91
    .line 92
    :goto_0
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO0OO()Landroid/widget/TextView;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    if-nez v2, :cond_4

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_4
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getDeveloper()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    .line 105
    .line 106
    :goto_1
    iget-object v2, v1, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO0O0:Lkotlin/Lazy;

    .line 107
    .line 108
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    check-cast v2, Landroid/widget/TextView;

    .line 113
    .line 114
    if-nez v2, :cond_5

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_5
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getName()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    .line 123
    .line 124
    :goto_2
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    iput-object v2, v1, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO0oO:Ljava/lang/String;

    .line 129
    .line 130
    iget-object v2, v1, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO00o:Lkotlin/Lazy;

    .line 131
    .line 132
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    move-object v7, v2

    .line 137
    check-cast v7, Landroidx/appcompat/widget/AppCompatImageView;

    .line 138
    .line 139
    if-eqz v7, :cond_7

    .line 140
    .line 141
    const-class v2, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    .line 142
    .line 143
    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    move-object v4, v2

    .line 148
    check-cast v4, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    .line 149
    .line 150
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getContext()Landroid/content/Context;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getLogo()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    if-nez v0, :cond_6

    .line 159
    .line 160
    move-object v6, v3

    .line 161
    goto :goto_3

    .line 162
    :cond_6
    move-object v6, v0

    .line 163
    :goto_3
    const/4 v0, 0x6

    .line 164
    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/CommonExtKt;->getDp2px(I)I

    .line 165
    .line 166
    .line 167
    move-result v8

    .line 168
    sget v10, Lcom/cloud/tmc/miniapp/R$drawable;->drawable_app_icon_place_holder:I

    .line 169
    .line 170
    move v9, v10

    .line 171
    invoke-interface/range {v4 .. v10}, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;->loadImgRoundCorners(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;III)V

    .line 172
    .line 173
    .line 174
    :cond_7
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getDialog()Lcom/cloud/tmc/miniapp/dialog/OooOOO0;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    const-string v1, "activity"

    .line 182
    .line 183
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    const-class v1, Lcom/cloud/tmc/miniapp/point/CreateBottomMenuPoint;

    .line 187
    .line 188
    invoke-static {v1}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->create()Lcom/cloud/tmc/kernel/extension/Extension;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    check-cast v1, Lcom/cloud/tmc/miniapp/point/CreateBottomMenuPoint;

    .line 197
    .line 198
    invoke-interface {v1, p0, v0}, Lcom/cloud/tmc/miniapp/point/CreateBottomMenuPoint;->buildBottomDialog(Landroid/app/Activity;Lcom/cloud/tmc/miniapp/dialog/OooOOO0;)V

    .line 199
    .line 200
    .line 201
    :cond_8
    return-void
.end method

.method public static synthetic capsuleSetOnRightClick$default(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;ZILjava/lang/Object;)V
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
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->capsuleSetOnRightClick(Z)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string p1, "Super calls with default arguments not supported in this target, function: capsuleSetOnRightClick"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method private final checkAddHomeForbidShowPopWindow(Ljava/lang/String;)Z
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 2
    .line 3
    const-string v1, "miniAddHomeBubbleForbidId"

    .line 4
    .line 5
    const-string v2, "[\"1000886706715795456\",\"1000391591855976448\",\"1000497027976413184\"]"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-class v1, Ljava/util/List;

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    instance-of v1, v0, Ljava/util/List;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    check-cast v0, Ljava/util/List;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    :goto_0
    if-nez v0, :cond_1

    .line 28
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    goto :goto_2

    .line 39
    :goto_1
    const-string v0, "MiniAppActivity"

    .line 40
    .line 41
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    :goto_2
    return p1
.end method

.method private final checkAddHomeTipStatus()V
    .locals 6

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getPvAddHomeTopTip()Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;

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
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    iget-boolean v3, v0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;->OooO0oo:Z

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    iput-boolean v1, v0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;->OooO0oo:Z

    .line 17
    .line 18
    iget-object v3, v0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;->OooO0oO:Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    .line 19
    .line 20
    iget-wide v4, v0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;->OooO:J

    .line 21
    .line 22
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;J)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getPvAddHomeBottomTip()Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 35
    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    iget-object v3, v0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO0oO:Ljava/lang/String;

    .line 39
    .line 40
    const-string v4, "checkAddHomeBottomTipStatus"

    .line 41
    .line 42
    invoke-static {v3, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-boolean v3, v0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooOO0:Z

    .line 46
    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    iput-boolean v1, v0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooOO0:Z

    .line 50
    .line 51
    iget-object v3, v0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO:Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    .line 52
    .line 53
    iget-wide v4, v0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooOO0O:J

    .line 54
    .line 55
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;J)V

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getAddHomeDialogView()Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 65
    .line 66
    if-eqz v2, :cond_2

    .line 67
    .line 68
    iget-boolean v3, v0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooOO0O:Z

    .line 69
    .line 70
    if-eqz v3, :cond_2

    .line 71
    .line 72
    iput-boolean v1, v0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooOO0O:Z

    .line 73
    .line 74
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooOO0:Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    .line 75
    .line 76
    iget-wide v3, v0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooOO0o:J

    .line 77
    .line 78
    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :goto_1
    const-string v1, "MiniAppActivity"

    .line 83
    .line 84
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    .line 86
    .line 87
    :cond_2
    :goto_2
    return-void
.end method

.method private final checkAndExecuteAddHomeAutoTips(Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p2, :cond_2

    .line 2
    .line 3
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    if-nez p1, :cond_1

    .line 11
    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v0, "checkAndExecuteAddHomeAutoTips miniAppAutoExecuteConfig is null ->"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string p2, "MiniAppActivity"

    .line 30
    .line 31
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showAddHomeTips(Ljava/lang/String;Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic checkAndShowAddHomeCustomToast$default(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;IJJLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 10

    .line 1
    if-nez p9, :cond_2

    .line 2
    .line 3
    and-int/lit8 v0, p8, 0x8

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move-object v8, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object/from16 v8, p6

    .line 11
    .line 12
    :goto_0
    and-int/lit8 v0, p8, 0x10

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    move-object v9, v1

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move-object/from16 v9, p7

    .line 19
    .line 20
    :goto_1
    move-object v2, p0

    .line 21
    move v3, p1

    .line 22
    move-wide v4, p2

    .line 23
    move-wide v6, p4

    .line 24
    invoke-virtual/range {v2 .. v9}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->checkAndShowAddHomeCustomToast(IJJLjava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 29
    .line 30
    const-string v1, "Super calls with default arguments not supported in this target, function: checkAndShowAddHomeCustomToast"

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0
.end method

.method public static synthetic d0(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->loadError$lambda$16(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final dispatchOnCheckForUpdateListener()V
    .locals 4

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const-string v1, ""

    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0, p0, v1}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->isNeedUpdate(Landroid/content/Context;Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    const-class v2, Lcom/cloud/tmc/integration/model/MiniAppUpdateMessageStore;

    .line 22
    .line 23
    invoke-interface {v1, v2}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/cloud/tmc/integration/model/MiniAppUpdateMessageStore;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v1, 0x0

    .line 31
    :goto_0
    if-eqz v1, :cond_2

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/MiniAppUpdateMessageStore;->getOnCheckForUpdate()Ljava/util/WeakHashMap;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 46
    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    new-instance v2, Lcom/google/gson/JsonObject;

    .line 50
    .line 51
    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string v3, "hasUpdate"

    .line 59
    .line 60
    invoke-virtual {v2, v3, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 61
    .line 62
    .line 63
    invoke-interface {v1, v2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    return-void
.end method

.method private final dispatchOnUpdateApp(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-class v1, Lcom/cloud/tmc/integration/model/MiniAppUpdateMessageStore;

    .line 10
    .line 11
    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/cloud/tmc/integration/model/MiniAppUpdateMessageStore;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    if-eqz p1, :cond_1

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/MiniAppUpdateMessageStore;->getOnUpdateReady()Ljava/util/WeakHashMap;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 36
    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    if-eqz v0, :cond_2

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/MiniAppUpdateMessageStore;->getOnUpdateFailed()Ljava/util/WeakHashMap;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 58
    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    .line 62
    .line 63
    .line 64
    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic e0()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->onDestroy$lambda$78()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f0(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showLoadingPage$lambda$83(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic finishMiniActivity$default(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;ZILjava/lang/Object;)V
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
    const/4 p2, 0x1

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->finishMiniActivity(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;Z)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string p1, "Super calls with default arguments not supported in this target, function: finishMiniActivity"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public static synthetic g0(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->startApp$lambda$29(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final getAddHomeDialogView()Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->addHomeDialogView$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getAppBrandBundle(Lcom/cloud/tmc/integration/model/AppModel;)Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "miniAppName"

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    const-string v3, ""

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    move-object v2, v3

    .line 17
    :cond_0
    :try_start_1
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v1, "version"

    .line 21
    .line 22
    sget-object v2, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    .line 23
    .line 24
    invoke-virtual {v2, p1}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move-object v3, v2

    .line 32
    :goto_0
    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v1, "appinfoDesc"

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getDesc()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string v1, "appinfoLogo"

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getLogo()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string v1, "appinfoRegisterType"

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getRegisterType()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-string v1, "appinfoDeveloper"

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getDeveloper()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const-string v1, "appinfoReleaseTime"

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getReleaseTime()J

    .line 74
    .line 75
    .line 76
    move-result-wide v2

    .line 77
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    .line 79
    .line 80
    :catchall_0
    return-object v0
.end method

.method private final getDialog()Lcom/cloud/tmc/miniapp/dialog/OooOOO0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->dialog$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getMShowCompleteTaskQueue()Lcom/cloud/tmc/miniapp/task/OooO0O0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mShowCompleteTaskQueue$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/miniapp/task/OooO0O0;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getMStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mStatusLayout$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getPvAddHomeBottomTip()Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->pvAddHomeBottomTip$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getPvAddHomeCustom1()Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom1PopUpWindowView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->pvAddHomeCustom1$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom1PopUpWindowView;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getPvAddHomeCustom2()Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom2PopUpWindowView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->pvAddHomeCustom2$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom2PopUpWindowView;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getPvAddHomeTopTip()Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->pvAddHomeTopTip$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getPvMsgBubble()Lcom/cloud/tmc/miniapp/widget/popupview/MsgBubblePopUpWindowView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->pvMsgBubble$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/miniapp/widget/popupview/MsgBubblePopUpWindowView;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic h0(Lcom/cloud/tmc/integration/model/EntryInfo;Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showLoadingView$lambda$44(Lcom/cloud/tmc/integration/model/EntryInfo;Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final hideStatusLoading$lambda$10(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 6

    .line 1
    const-string v0, "MiniAppActivity"

    .line 2
    .line 3
    const-string v1, "MessageBubbleUtils"

    .line 4
    .line 5
    const-string v2, "this$0"

    .line 6
    .line 7
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showComplete()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_b

    .line 15
    .line 16
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 17
    .line 18
    if-eqz v2, :cond_9

    .line 19
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    iput-wide v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->miniappStartTime:J

    .line 25
    .line 26
    sget-object v3, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->INSTANCE:Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;

    .line 27
    .line 28
    const/4 v4, 0x2

    .line 29
    const/4 v5, 0x0

    .line 30
    invoke-static {v3, v2, v5, v4, v5}, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->notifyHideLoading$default(Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    iget-wide v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->miniappStartTime:J

    .line 42
    .line 43
    invoke-interface {v2, v3, v4}, Lcom/cloud/tmc/integration/structure/App;->setAppStartTime(J)V

    .line 44
    .line 45
    .line 46
    :cond_0
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    invoke-interface {v2, p0}, Lcom/cloud/tmc/integration/structure/App;->setAddhomeShowCallback(Lcom/cloud/tmc/integration/callback/IShowAddHomeCallback;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    if-eqz v2, :cond_3

    .line 64
    .line 65
    iget-boolean v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->enableQuickMode:Z

    .line 66
    .line 67
    if-nez v3, :cond_3

    .line 68
    .line 69
    instance-of v3, v2, Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 70
    .line 71
    if-eqz v3, :cond_2

    .line 72
    .line 73
    check-cast v2, Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    move-object v2, v5

    .line 77
    :goto_0
    if-eqz v2, :cond_3

    .line 78
    .line 79
    const/4 v3, 0x1

    .line 80
    invoke-virtual {v2, v3}, Lcom/cloud/tmc/integration/structure/node/AppNode;->setAsyncLaunchStatus(Z)V

    .line 81
    .line 82
    .line 83
    :cond_3
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMShowCompleteTaskQueue()Lcom/cloud/tmc/miniapp/task/OooO0O0;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/task/OooO0O0;->OooO00o()V

    .line 88
    .line 89
    .line 90
    sget-object v2, Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils;->OooO00o:Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils;

    .line 91
    .line 92
    const/4 v3, 0x0

    .line 93
    :try_start_0
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils;->OooO0O0()Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-nez v2, :cond_4

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_4
    sget-object v2, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 101
    .line 102
    const-string v4, "msgBubbleEnable"

    .line 103
    .line 104
    invoke-virtual {v2, v4, v3}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetBool(Ljava/lang/String;Z)Z

    .line 105
    .line 106
    .line 107
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    goto :goto_1

    .line 109
    :catchall_0
    move-exception v2

    .line 110
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    .line 112
    .line 113
    :goto_1
    if-eqz v3, :cond_9

    .line 114
    .line 115
    sget-object v2, Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils;->OooO00o:Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils;

    .line 116
    .line 117
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 118
    .line 119
    invoke-virtual {v3}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    new-instance v4, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$hideStatusLoading$2$1$2;

    .line 124
    .line 125
    invoke-direct {v4, p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$hideStatusLoading$2$1$2;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 126
    .line 127
    .line 128
    if-eqz v3, :cond_5

    .line 129
    .line 130
    :try_start_1
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    goto :goto_2

    .line 135
    :catchall_1
    move-exception v2

    .line 136
    goto :goto_3

    .line 137
    :cond_5
    :goto_2
    if-nez v5, :cond_6

    .line 138
    .line 139
    const-string v5, ""

    .line 140
    .line 141
    :cond_6
    invoke-virtual {v2, v5}, Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils;->OooO00o(Ljava/lang/String;)Z

    .line 142
    .line 143
    .line 144
    move-result v5

    .line 145
    if-eqz v5, :cond_7

    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_7
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->isConnected()Z

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    if-eqz v5, :cond_8

    .line 153
    .line 154
    const-string v5, "refreshMsgBubble -> requestMsgInfo"

    .line 155
    .line 156
    invoke-static {v1, v5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2, v3, v4}, Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils;->OooO0O0(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/miniapp/utils/OooO0O0;)V

    .line 160
    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_8
    invoke-virtual {v2, v3, v4}, Lcom/cloud/tmc/miniapp/utils/MessageBubbleUtils;->OooO00o(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/miniapp/utils/OooO0O0;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 164
    .line 165
    .line 166
    goto :goto_4

    .line 167
    :goto_3
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 168
    .line 169
    .line 170
    :cond_9
    :goto_4
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 171
    .line 172
    if-eqz v1, :cond_a

    .line 173
    .line 174
    sget-object v2, Lcom/cloud/tmc/miniapp/prestrategy/strategy/OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/strategy/OooO00o;

    .line 175
    .line 176
    const-string v2, "appId"

    .line 177
    .line 178
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    :try_start_2
    sget-object v2, Lcom/cloud/tmc/miniapp/prestrategy/strategy/OooO00o;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    .line 182
    .line 183
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 184
    .line 185
    .line 186
    goto :goto_5

    .line 187
    :catchall_2
    move-exception v1

    .line 188
    sget-object v2, Lcom/cloud/tmc/miniapp/prestrategy/strategy/OooO00o;->OooO0OO:Ljava/lang/String;

    .line 189
    .line 190
    const-string v3, "removePreAppinfo"

    .line 191
    .line 192
    invoke-static {v2, v3, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 193
    .line 194
    .line 195
    :cond_a
    :goto_5
    :try_start_3
    sget-object v1, Lcom/cloud/tmc/kernel/executor/ExecutorType;->IDLE:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    .line 196
    .line 197
    new-instance v2, Lcom/cloud/tmc/miniapp/ui/s;

    .line 198
    .line 199
    invoke-direct {v2, p0}, Lcom/cloud/tmc/miniapp/ui/s;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 200
    .line 201
    .line 202
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 203
    .line 204
    .line 205
    goto :goto_6

    .line 206
    :catchall_3
    move-exception v1

    .line 207
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 208
    .line 209
    .line 210
    :goto_6
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 211
    .line 212
    if-eqz p0, :cond_b

    .line 213
    .line 214
    :try_start_4
    sget-object p0, Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    .line 215
    .line 216
    new-instance v1, Lcom/cloud/tmc/miniapp/ui/t;

    .line 217
    .line 218
    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/ui/t;-><init>()V

    .line 219
    .line 220
    .line 221
    invoke-static {p0, v1}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 222
    .line 223
    .line 224
    goto :goto_7

    .line 225
    :catchall_4
    move-exception p0

    .line 226
    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 227
    .line 228
    .line 229
    :cond_b
    :goto_7
    return-void
.end method

.method private static final hideStatusLoading$lambda$10$lambda$7(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/miniapp/prestrategy/OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/OooO00o;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const-string v1, "this.application"

    .line 13
    .line 14
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lcom/cloud/tmc/miniapp/prestrategy/OooO00o;->OooO0OO(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    const-string v0, "MiniAppActivity"

    .line 23
    .line 24
    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method

.method private static final hideStatusLoading$lambda$10$lambda$9$lambda$8()V
    .locals 0

    .line 1
    return-void
.end method

.method private static final hideStatusLoadingDelay$lambda$1(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->hideStatusLoading()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic i0(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->initMiniActivityData$lambda$62(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final initMiniActivityData()V
    .locals 20

    .line 1
    move-object/from16 v12, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getSavedInstance()Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v13, 0x1

    .line 8
    const/4 v14, 0x0

    .line 9
    const-string v1, "MiniAppActivity"

    .line 10
    .line 11
    const/4 v15, 0x0

    .line 12
    if-eqz v0, :cond_5

    .line 13
    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getSavedInstance()Landroid/os/Bundle;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_4

    .line 19
    .line 20
    const-string v2, "miniAppId"

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    goto :goto_3

    .line 29
    :cond_0
    iput-object v0, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getSavedInstance()Landroid/os/Bundle;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    const-string v2, "mode"

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move-object v0, v15

    .line 45
    :goto_0
    iput-object v0, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mode:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getSavedInstance()Landroid/os/Bundle;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    const-string v2, "version"

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    move-object v0, v15

    .line 61
    :goto_1
    iput-object v0, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->version:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getSavedInstance()Landroid/os/Bundle;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    const-string v2, "sign"

    .line 70
    .line 71
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    goto :goto_2

    .line 76
    :cond_3
    move-object v0, v15

    .line 77
    :goto_2
    iput-object v0, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->devToken:Ljava/lang/String;

    .line 78
    .line 79
    goto :goto_6

    .line 80
    :cond_4
    :goto_3
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    .line 81
    .line 82
    iget-object v2, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 83
    .line 84
    const-string v3, "3"

    .line 85
    .line 86
    invoke-virtual {v0, v2, v3}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->reportMiniAppLauncherFailedTrack(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const-string v0, "savedInstance is not null,appId is null"

    .line 90
    .line 91
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    sget-object v0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;->CLOSE_APP:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

    .line 95
    .line 96
    const/4 v1, 0x2

    .line 97
    invoke-static {v12, v0, v14, v1, v15}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->finishMiniActivity$default(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;ZILjava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_5
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 102
    .line 103
    const-string v2, "miniEnableNewMiniappInit"

    .line 104
    .line 105
    invoke-virtual {v0, v2, v13}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetBool(Ljava/lang/String;Z)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_6

    .line 110
    .line 111
    invoke-direct/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->newDataInitialize()V

    .line 112
    .line 113
    .line 114
    goto :goto_5

    .line 115
    :catchall_0
    move-exception v0

    .line 116
    goto :goto_4

    .line 117
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->oldDataInitialize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    .line 119
    .line 120
    goto :goto_5

    .line 121
    :goto_4
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    .line 123
    .line 124
    invoke-direct/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->oldDataInitialize()V

    .line 125
    .line 126
    .line 127
    :goto_5
    const-string v0, "enableQuickMode"

    .line 128
    .line 129
    invoke-virtual {v12, v0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getBoolean(Ljava/lang/String;)Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    iput-boolean v0, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->enableQuickMode:Z

    .line 134
    .line 135
    :goto_6
    iget-object v0, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 136
    .line 137
    if-eqz v0, :cond_1d

    .line 138
    .line 139
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-nez v0, :cond_7

    .line 144
    .line 145
    goto/16 :goto_12

    .line 146
    .line 147
    :cond_7
    sget-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;

    .line 148
    .line 149
    iget-object v2, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 150
    .line 151
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getTaskId()I

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    invoke-virtual {v0, v2, v3}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->updateTaskIdByAppId(Ljava/lang/String;I)V

    .line 156
    .line 157
    .line 158
    sget-object v2, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->INSTANCE:Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;

    .line 159
    .line 160
    iget-object v3, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {v2, v3, v12}, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->addMFAHListener(Ljava/lang/String;Lcom/cloud/tmc/integration/callback/IAllowMFAHListener;)V

    .line 163
    .line 164
    .line 165
    iget-object v3, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 166
    .line 167
    iget-object v4, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 168
    .line 169
    invoke-virtual {v3, v4}, Lcom/cloud/tmc/integration/ActivityHelper;->setAppId(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    const-class v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/LogEProxy;

    .line 173
    .line 174
    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    check-cast v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/LogEProxy;

    .line 179
    .line 180
    iget-object v4, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 181
    .line 182
    invoke-interface {v3, v4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/LogEProxy;->init(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    const-class v3, Lcom/cloud/tmc/integration/proxy/IUpdateLoadingStepProxy;

    .line 186
    .line 187
    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    check-cast v3, Lcom/cloud/tmc/integration/proxy/IUpdateLoadingStepProxy;

    .line 192
    .line 193
    iget-object v4, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 194
    .line 195
    const-string v11, ""

    .line 196
    .line 197
    if-nez v4, :cond_8

    .line 198
    .line 199
    move-object v4, v11

    .line 200
    :cond_8
    invoke-interface {v3, v4, v12}, Lcom/cloud/tmc/integration/proxy/IUpdateLoadingStepProxy;->addUpdateLoadingListener(Ljava/lang/String;Lcom/cloud/tmc/integration/proxy/UpdateLoadingStepListener;)V

    .line 201
    .line 202
    .line 203
    iget-object v3, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 204
    .line 205
    invoke-virtual/range {p0 .. p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    invoke-static {v3, v4}, Lcom/cloud/tmc/offline/download/OfflineManager;->addOfflineLifecycleObserver(Ljava/lang/String;Landroidx/lifecycle/Lifecycle;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getInstance()Lcom/cloud/tmc/miniapp/NewTaskManager;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    iget-object v4, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 217
    .line 218
    invoke-virtual {v3, v4}, Lcom/cloud/tmc/miniapp/NewTaskManager;->checkUseSingleTaskMode(Ljava/lang/String;)Z

    .line 219
    .line 220
    .line 221
    move-result v3

    .line 222
    if-eqz v3, :cond_a

    .line 223
    .line 224
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getInstance()Lcom/cloud/tmc/miniapp/NewTaskManager;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getTaskRootAppId()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    if-nez v3, :cond_9

    .line 233
    .line 234
    move-object v3, v11

    .line 235
    :cond_9
    iput-object v3, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->rootTaskId:Ljava/lang/String;

    .line 236
    .line 237
    new-instance v4, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .line 241
    .line 242
    const-string v5, "tootTaskId:"

    .line 243
    .line 244
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    invoke-static {v1, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    :cond_a
    iget-object v3, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 258
    .line 259
    new-instance v4, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .line 263
    .line 264
    const-string v5, "initMiniActivityData:checkTaskId:"

    .line 265
    .line 266
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    invoke-static {v1, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getInstance()Lcom/cloud/tmc/miniapp/NewTaskManager;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    iget-object v3, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 284
    .line 285
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 286
    .line 287
    .line 288
    move-result-object v4

    .line 289
    invoke-virtual {v0, v3, v4}, Lcom/cloud/tmc/miniapp/NewTaskManager;->checkTaskId(Ljava/lang/String;Ljava/lang/Class;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getBundle()Landroid/os/Bundle;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    const-string v3, "startBundle"

    .line 297
    .line 298
    invoke-static {v0, v3}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    move-object v3, v0

    .line 303
    check-cast v3, Lcom/cloud/tmc/integration/activity/StartClientBundle;

    .line 304
    .line 305
    if-eqz v3, :cond_b

    .line 306
    .line 307
    :try_start_1
    iget-object v0, v3, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startParams:Landroid/os/Bundle;

    .line 308
    .line 309
    goto :goto_7

    .line 310
    :catchall_1
    move-exception v0

    .line 311
    goto :goto_8

    .line 312
    :cond_b
    move-object v0, v15

    .line 313
    :goto_7
    invoke-virtual {v2, v0}, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->checkForceAddHome(Landroid/os/Bundle;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 314
    .line 315
    .line 316
    goto :goto_9

    .line 317
    :goto_8
    invoke-static {v1, v11, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 318
    .line 319
    .line 320
    :goto_9
    const-class v0, Lcom/cloud/tmc/integration/structure/VirtualAppManager;

    .line 321
    .line 322
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    check-cast v0, Lcom/cloud/tmc/integration/structure/VirtualAppManager;

    .line 327
    .line 328
    iget-object v1, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 329
    .line 330
    if-eqz v3, :cond_c

    .line 331
    .line 332
    iget-object v2, v3, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startParams:Landroid/os/Bundle;

    .line 333
    .line 334
    if-nez v2, :cond_d

    .line 335
    .line 336
    :cond_c
    new-instance v2, Landroid/os/Bundle;

    .line 337
    .line 338
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 339
    .line 340
    .line 341
    :cond_d
    if-eqz v3, :cond_e

    .line 342
    .line 343
    iget-object v4, v3, Lcom/cloud/tmc/integration/activity/StartClientBundle;->sceneParams:Landroid/os/Bundle;

    .line 344
    .line 345
    if-nez v4, :cond_f

    .line 346
    .line 347
    :cond_e
    new-instance v4, Landroid/os/Bundle;

    .line 348
    .line 349
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 350
    .line 351
    .line 352
    :cond_f
    invoke-interface {v0, v1, v2, v4}, Lcom/cloud/tmc/integration/structure/AppManager;->startApp(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/cloud/tmc/integration/structure/App;

    .line 353
    .line 354
    .line 355
    sget-object v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0o0:Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O$OooO00o;

    .line 356
    .line 357
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 358
    .line 359
    .line 360
    move-result v0

    .line 361
    int-to-long v0, v0

    .line 362
    const-wide/32 v4, 0xf4240

    .line 363
    .line 364
    .line 365
    mul-long/2addr v0, v4

    .line 366
    sget-object v2, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0O;->OooO0o:Ljava/util/concurrent/atomic/AtomicLong;

    .line 367
    .line 368
    const-wide/16 v4, 0x1

    .line 369
    .line 370
    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 371
    .line 372
    .line 373
    move-result-wide v4

    .line 374
    add-long/2addr v4, v0

    .line 375
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    iput-object v0, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->uniqueChainId:Ljava/lang/Long;

    .line 380
    .line 381
    iget-boolean v0, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->quickModeStartStatus:Z

    .line 382
    .line 383
    if-eqz v0, :cond_10

    .line 384
    .line 385
    iput-boolean v14, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->enableQuickMode:Z

    .line 386
    .line 387
    :cond_10
    iget-object v0, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 388
    .line 389
    if-nez v0, :cond_11

    .line 390
    .line 391
    move-object v0, v11

    .line 392
    :cond_11
    new-instance v4, Landroid/os/Bundle;

    .line 393
    .line 394
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 395
    .line 396
    .line 397
    iget-object v1, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->uniqueChainId:Ljava/lang/Long;

    .line 398
    .line 399
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v1

    .line 403
    const-string v10, "uniqueChainID"

    .line 404
    .line 405
    invoke-virtual {v4, v10, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    if-eqz v3, :cond_12

    .line 409
    .line 410
    iget-object v1, v3, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startParams:Landroid/os/Bundle;

    .line 411
    .line 412
    if-eqz v1, :cond_12

    .line 413
    .line 414
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 415
    .line 416
    .line 417
    :cond_12
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 418
    .line 419
    new-instance v5, Landroid/os/Bundle;

    .line 420
    .line 421
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 422
    .line 423
    .line 424
    if-eqz v3, :cond_13

    .line 425
    .line 426
    iget-object v1, v3, Lcom/cloud/tmc/integration/activity/StartClientBundle;->sceneParams:Landroid/os/Bundle;

    .line 427
    .line 428
    if-eqz v1, :cond_13

    .line 429
    .line 430
    invoke-virtual {v5, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 431
    .line 432
    .line 433
    :cond_13
    iget-object v7, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    .line 434
    .line 435
    new-instance v9, Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 436
    .line 437
    const/16 v16, 0x90

    .line 438
    .line 439
    const/16 v17, 0x0

    .line 440
    .line 441
    const/4 v6, 0x0

    .line 442
    const/16 v18, 0x0

    .line 443
    .line 444
    move-object v1, v9

    .line 445
    move-object/from16 v2, p0

    .line 446
    .line 447
    move-object v3, v0

    .line 448
    move-object/from16 v8, p0

    .line 449
    .line 450
    move-object v0, v9

    .line 451
    move-object/from16 v9, v18

    .line 452
    .line 453
    move-object v15, v10

    .line 454
    move/from16 v10, v16

    .line 455
    .line 456
    move-object/from16 v19, v11

    .line 457
    .line 458
    move-object/from16 v11, v17

    .line 459
    .line 460
    invoke-direct/range {v1 .. v11}, Lcom/cloud/tmc/integration/model/PrepareContext;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/app/Activity;Ljava/util/concurrent/atomic/AtomicBoolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 461
    .line 462
    .line 463
    iput-object v0, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->prepareContext:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 464
    .line 465
    iget-object v1, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mode:Ljava/lang/String;

    .line 466
    .line 467
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/model/PrepareContext;->setAppType(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    iget-object v0, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->prepareContext:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 471
    .line 472
    if-nez v0, :cond_14

    .line 473
    .line 474
    goto :goto_a

    .line 475
    :cond_14
    iget-object v1, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->version:Ljava/lang/String;

    .line 476
    .line 477
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/model/PrepareContext;->setAppVersion(Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    :goto_a
    iget-object v0, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->prepareContext:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 481
    .line 482
    if-nez v0, :cond_15

    .line 483
    .line 484
    goto :goto_b

    .line 485
    :cond_15
    iget-object v1, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->devToken:Ljava/lang/String;

    .line 486
    .line 487
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/model/PrepareContext;->setAppToken(Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    :goto_b
    iget-object v0, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->prepareContext:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 491
    .line 492
    if-nez v0, :cond_16

    .line 493
    .line 494
    goto :goto_c

    .line 495
    :cond_16
    iget-boolean v1, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->enableQuickMode:Z

    .line 496
    .line 497
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/model/PrepareContext;->setQuickMode(Z)V

    .line 498
    .line 499
    .line 500
    :goto_c
    iget-boolean v0, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->enableQuickMode:Z

    .line 501
    .line 502
    if-eqz v0, :cond_17

    .line 503
    .line 504
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;

    .line 505
    .line 506
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    move-result-object v0

    .line 510
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;

    .line 511
    .line 512
    iget-object v1, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 513
    .line 514
    const-string v2, "quickStart"

    .line 515
    .line 516
    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;->addPeroformanceImprove(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    :cond_17
    const-class v0, Lcom/cloud/tmc/render/proxy/SessionUtilProxy;

    .line 520
    .line 521
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 522
    .line 523
    .line 524
    move-result-object v0

    .line 525
    check-cast v0, Lcom/cloud/tmc/render/proxy/SessionUtilProxy;

    .line 526
    .line 527
    iget-object v1, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 528
    .line 529
    invoke-interface {v0, v1, v14, v13}, Lcom/cloud/tmc/render/proxy/SessionUtilProxy;->updateSession(Ljava/lang/String;ZZ)V

    .line 530
    .line 531
    .line 532
    invoke-virtual/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getInitDataChannel()I

    .line 533
    .line 534
    .line 535
    move-result v0

    .line 536
    const-string v1, "miniapp_id"

    .line 537
    .line 538
    const-class v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 539
    .line 540
    if-nez v0, :cond_1b

    .line 541
    .line 542
    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 547
    .line 548
    iget-object v3, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 549
    .line 550
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_LAUNCH_MINIAPP_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 551
    .line 552
    new-instance v5, Landroid/os/Bundle;

    .line 553
    .line 554
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 555
    .line 556
    .line 557
    iget-object v6, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 558
    .line 559
    invoke-virtual {v5, v1, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    .line 561
    .line 562
    sget-object v6, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    .line 563
    .line 564
    iget-object v7, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 565
    .line 566
    invoke-virtual {v6, v12, v7}, Lcom/cloud/tmc/integration/utils/AppUtils;->queryShortcutExist(Landroid/content/Context;Ljava/lang/String;)Z

    .line 567
    .line 568
    .line 569
    move-result v6

    .line 570
    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v6

    .line 574
    const-string v7, "queryShortcutExist"

    .line 575
    .line 576
    invoke-virtual {v5, v7, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    .line 578
    .line 579
    iget-object v6, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->prepareContext:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 580
    .line 581
    const-string v7, "100000"

    .line 582
    .line 583
    const-string v8, "scene_id"

    .line 584
    .line 585
    if-eqz v6, :cond_18

    .line 586
    .line 587
    invoke-virtual {v6}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartParams()Landroid/os/Bundle;

    .line 588
    .line 589
    .line 590
    move-result-object v6

    .line 591
    if-eqz v6, :cond_18

    .line 592
    .line 593
    invoke-virtual {v6, v8, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object v6

    .line 597
    goto :goto_d

    .line 598
    :cond_18
    const/4 v6, 0x0

    .line 599
    :goto_d
    const-string v9, "scene"

    .line 600
    .line 601
    invoke-virtual {v5, v9, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    .line 603
    .line 604
    iget-object v6, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->prepareContext:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 605
    .line 606
    if-eqz v6, :cond_19

    .line 607
    .line 608
    invoke-virtual {v6}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartParams()Landroid/os/Bundle;

    .line 609
    .line 610
    .line 611
    move-result-object v6

    .line 612
    if-eqz v6, :cond_19

    .line 613
    .line 614
    invoke-virtual {v6, v8, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 615
    .line 616
    .line 617
    move-result-object v6

    .line 618
    goto :goto_e

    .line 619
    :cond_19
    const/4 v6, 0x0

    .line 620
    :goto_e
    iput-object v6, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->sceneId:Ljava/lang/String;

    .line 621
    .line 622
    iget-object v6, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->prepareContext:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 623
    .line 624
    const-string v7, "fis_type"

    .line 625
    .line 626
    if-eqz v6, :cond_1a

    .line 627
    .line 628
    invoke-virtual {v6}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartParams()Landroid/os/Bundle;

    .line 629
    .line 630
    .line 631
    move-result-object v6

    .line 632
    if-eqz v6, :cond_1a

    .line 633
    .line 634
    const-string v8, "0"

    .line 635
    .line 636
    invoke-virtual {v6, v7, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 637
    .line 638
    .line 639
    move-result-object v6

    .line 640
    goto :goto_f

    .line 641
    :cond_1a
    const/4 v6, 0x0

    .line 642
    :goto_f
    invoke-virtual {v5, v7, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    .line 644
    .line 645
    move-object/from16 v6, v19

    .line 646
    .line 647
    invoke-interface {v0, v3, v4, v6, v5}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 648
    .line 649
    .line 650
    goto :goto_10

    .line 651
    :cond_1b
    move-object/from16 v6, v19

    .line 652
    .line 653
    :goto_10
    new-instance v0, Landroid/os/Bundle;

    .line 654
    .line 655
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 656
    .line 657
    .line 658
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    .line 659
    .line 660
    const-string v4, "app"

    .line 661
    .line 662
    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    .line 664
    .line 665
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    .line 666
    .line 667
    iget-object v4, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->prepareContext:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 668
    .line 669
    if-eqz v4, :cond_1c

    .line 670
    .line 671
    invoke-virtual {v4}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartParams()Landroid/os/Bundle;

    .line 672
    .line 673
    .line 674
    move-result-object v4

    .line 675
    if-eqz v4, :cond_1c

    .line 676
    .line 677
    const-string v5, "-1"

    .line 678
    .line 679
    invoke-virtual {v4, v15, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 680
    .line 681
    .line 682
    move-result-object v15

    .line 683
    goto :goto_11

    .line 684
    :cond_1c
    const/4 v15, 0x0

    .line 685
    :goto_11
    invoke-virtual {v0, v3, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    .line 687
    .line 688
    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 689
    .line 690
    .line 691
    move-result-object v3

    .line 692
    check-cast v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 693
    .line 694
    iget-object v4, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 695
    .line 696
    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 697
    .line 698
    sget-object v7, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->app:Ljava/lang/String;

    .line 699
    .line 700
    invoke-interface {v3, v4, v5, v7, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 701
    .line 702
    .line 703
    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 704
    .line 705
    .line 706
    move-result-object v0

    .line 707
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 708
    .line 709
    iget-object v3, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 710
    .line 711
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 712
    .line 713
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 714
    .line 715
    .line 716
    move-result-object v5

    .line 717
    invoke-interface {v0, v3, v4, v5}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 718
    .line 719
    .line 720
    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 721
    .line 722
    .line 723
    move-result-object v0

    .line 724
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 725
    .line 726
    iget-object v2, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 727
    .line 728
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_PV:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 729
    .line 730
    new-instance v4, Landroid/os/Bundle;

    .line 731
    .line 732
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 733
    .line 734
    .line 735
    iget-object v5, v12, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 736
    .line 737
    invoke-virtual {v4, v1, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    .line 739
    .line 740
    invoke-interface {v0, v2, v3, v6, v4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 741
    .line 742
    .line 743
    sget-object v0, Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    .line 744
    .line 745
    new-instance v1, Lcom/cloud/tmc/miniapp/ui/k;

    .line 746
    .line 747
    invoke-direct {v1, v12}, Lcom/cloud/tmc/miniapp/ui/k;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 748
    .line 749
    .line 750
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V

    .line 751
    .line 752
    .line 753
    invoke-direct/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->recordStart1s()V

    .line 754
    .line 755
    .line 756
    const-class v0, Lcom/cloud/tmc/miniapp/point/CreateBottomMenuPoint;

    .line 757
    .line 758
    invoke-static {v0}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    .line 759
    .line 760
    .line 761
    move-result-object v0

    .line 762
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->create()Lcom/cloud/tmc/kernel/extension/Extension;

    .line 763
    .line 764
    .line 765
    move-result-object v0

    .line 766
    check-cast v0, Lcom/cloud/tmc/miniapp/point/CreateBottomMenuPoint;

    .line 767
    .line 768
    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/point/CreateBottomMenuPoint;->requestBottomAbilityConfig()V

    .line 769
    .line 770
    .line 771
    :cond_1d
    :goto_12
    return-void
.end method

.method private static final initMiniActivityData$lambda$62(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 4

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->enableQuickMode:Z

    .line 7
    .line 8
    const-class v1, Lcom/cloud/tmc/miniapp/proxy/IClientStarter;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/cloud/tmc/miniapp/proxy/IClientStarter;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->prepareContext:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 19
    .line 20
    new-instance v2, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0OO;

    .line 21
    .line 22
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->prepareContext:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 23
    .line 24
    invoke-direct {v2, v3, p0}, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0OO;-><init>(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/OooOo;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/miniapp/proxy/IClientStarter;->createQuickModePrepareController(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->quickModeController:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->start()V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->prepareContext:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 40
    .line 41
    if-nez v2, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {v2, v0}, Lcom/cloud/tmc/integration/model/PrepareContext;->setVirtualStart(Z)V

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lcom/cloud/tmc/miniapp/proxy/IClientStarter;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->prepareContext:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 54
    .line 55
    new-instance v2, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0OO;

    .line 56
    .line 57
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->prepareContext:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 58
    .line 59
    invoke-direct {v2, v3, p0}, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0OO;-><init>(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/OooOo;)V

    .line 60
    .line 61
    .line 62
    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/miniapp/proxy/IClientStarter;->createPrepareController(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->controller:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    .line 67
    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->start()V

    .line 71
    .line 72
    .line 73
    :cond_2
    :goto_1
    return-void
.end method

.method private static final initView$lambda$50(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;I)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const-string v0, "MiniAppActivity"

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 15
    .line 16
    .line 17
    const-string p0, "setHostActivityStatusBackground: \u8bbe\u7f6e activity \u7684\u72b6\u6001\u5e03\u5c40\u80cc\u666f\u8272\u6210\u529f"

    .line 18
    .line 19
    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    const-string p0, "setHostActivityStatusBackground: \u6267\u884c\u5b8c\u6bd5"

    .line 23
    .line 24
    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static synthetic j0(ILcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->notifyShowAddHome$lambda$96(ILcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic k0(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->onPinForLaterClick$lambda$94$lambda$93(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic l0(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->hideStatusLoading$lambda$10(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final loadError$lambda$16(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 10

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;->getCode()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object v3, v0

    .line 25
    :goto_0
    const-string v4, "3"

    .line 26
    .line 27
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    const-string v5, "appOpenFail"

    .line 32
    .line 33
    const-class v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 34
    .line 35
    const-string v7, "0"

    .line 36
    .line 37
    if-nez v3, :cond_1

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    if-ne v8, v4, :cond_4

    .line 45
    .line 46
    if-eqz p0, :cond_2

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;->getCode()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    :cond_2
    if-nez v0, :cond_3

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    move-object v7, v0

    .line 56
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    .line 57
    .line 58
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 59
    .line 60
    .line 61
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->OPEN_MINI_APP_FAILED_REASON:Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {v7}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;->codeToDes(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-static {v6}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    check-cast v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 75
    .line 76
    iget-object v4, p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 77
    .line 78
    sget-object v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_FAIL:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 79
    .line 80
    invoke-interface {v3, v4, v6, v5, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 81
    .line 82
    .line 83
    new-instance v3, Lcom/cloud/tmc/integration/chain/insert/AppInsertState;

    .line 84
    .line 85
    invoke-direct {v3, v0}, Lcom/cloud/tmc/integration/chain/insert/AppInsertState;-><init>(Landroid/os/Bundle;)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    .line 89
    .line 90
    invoke-virtual {v3, v0}, Lcom/cloud/tmc/integration/chain/insert/AppInsertState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    .line 91
    .line 92
    .line 93
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showNoNetwork(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    .line 94
    .line 95
    .line 96
    goto/16 :goto_d

    .line 97
    .line 98
    :cond_4
    :goto_2
    const-string v4, "4"

    .line 99
    .line 100
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    if-nez v3, :cond_5

    .line 105
    .line 106
    goto :goto_4

    .line 107
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 108
    .line 109
    .line 110
    move-result v8

    .line 111
    if-ne v8, v4, :cond_9

    .line 112
    .line 113
    if-eqz p0, :cond_6

    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;->getCode()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    :cond_6
    if-nez v0, :cond_7

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_7
    move-object v7, v0

    .line 123
    :goto_3
    new-instance v0, Landroid/os/Bundle;

    .line 124
    .line 125
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 126
    .line 127
    .line 128
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->OPEN_MINI_APP_FAILED_REASON:Ljava/lang/String;

    .line 129
    .line 130
    invoke-static {v7}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;->codeToDes(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-static {v6}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 142
    .line 143
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 144
    .line 145
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_FAIL:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 146
    .line 147
    invoke-interface {v1, v3, v4, v5, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 148
    .line 149
    .line 150
    new-instance v1, Lcom/cloud/tmc/integration/chain/insert/AppInsertState;

    .line 151
    .line 152
    invoke-direct {v1, v0}, Lcom/cloud/tmc/integration/chain/insert/AppInsertState;-><init>(Landroid/os/Bundle;)V

    .line 153
    .line 154
    .line 155
    iget-object v0, p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    .line 156
    .line 157
    invoke-virtual {v1, v0}, Lcom/cloud/tmc/integration/chain/insert/AppInsertState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    .line 158
    .line 159
    .line 160
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->isConnected()Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-nez v0, :cond_8

    .line 165
    .line 166
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$loadError$1$1;

    .line 167
    .line 168
    invoke-direct {v0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$loadError$1$1;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 169
    .line 170
    .line 171
    iget-object v5, p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 172
    .line 173
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/extension/PinForLaterExtensionKt;->getPinForLaterListener(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    const/4 v7, 0x6

    .line 178
    const/4 v8, 0x0

    .line 179
    const/4 v3, 0x0

    .line 180
    const/4 v4, 0x0

    .line 181
    move-object v1, p1

    .line 182
    move-object v2, v0

    .line 183
    invoke-static/range {v1 .. v8}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showNoNetwork$default(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;ILjava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    goto/16 :goto_d

    .line 187
    .line 188
    :cond_8
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$loadError$1$2;

    .line 189
    .line 190
    invoke-direct {v0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$loadError$1$2;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 191
    .line 192
    .line 193
    iget-object v5, p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 194
    .line 195
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/extension/PinForLaterExtensionKt;->getPinForLaterListener(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;

    .line 196
    .line 197
    .line 198
    move-result-object v6

    .line 199
    const/4 v7, 0x6

    .line 200
    const/4 v8, 0x0

    .line 201
    const/4 v3, 0x0

    .line 202
    const/4 v4, 0x0

    .line 203
    move-object v1, p1

    .line 204
    move-object v2, v0

    .line 205
    invoke-static/range {v1 .. v8}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showUnstableNetwork$default(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;ILjava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    goto/16 :goto_d

    .line 209
    .line 210
    :cond_9
    :goto_4
    const/4 v4, 0x2

    .line 211
    if-nez v3, :cond_a

    .line 212
    .line 213
    goto :goto_8

    .line 214
    :cond_a
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 215
    .line 216
    .line 217
    move-result v8

    .line 218
    const/16 v9, 0x9

    .line 219
    .line 220
    if-ne v8, v9, :cond_f

    .line 221
    .line 222
    if-eqz p0, :cond_b

    .line 223
    .line 224
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;->getCode()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    :cond_b
    if-nez v0, :cond_c

    .line 229
    .line 230
    goto :goto_5

    .line 231
    :cond_c
    move-object v7, v0

    .line 232
    :goto_5
    new-instance v0, Landroid/os/Bundle;

    .line 233
    .line 234
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 235
    .line 236
    .line 237
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->OPEN_MINI_APP_FAILED_REASON:Ljava/lang/String;

    .line 238
    .line 239
    invoke-static {v7}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;->codeToDes(Ljava/lang/String;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    invoke-static {v6}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 251
    .line 252
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 253
    .line 254
    sget-object v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_FAIL:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 255
    .line 256
    invoke-interface {v1, v3, v6, v5, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 257
    .line 258
    .line 259
    new-instance v1, Lcom/cloud/tmc/integration/chain/insert/AppInsertState;

    .line 260
    .line 261
    invoke-direct {v1, v0}, Lcom/cloud/tmc/integration/chain/insert/AppInsertState;-><init>(Landroid/os/Bundle;)V

    .line 262
    .line 263
    .line 264
    iget-object v0, p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    .line 265
    .line 266
    invoke-virtual {v1, v0}, Lcom/cloud/tmc/integration/chain/insert/AppInsertState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getViewThemeMode()Ljava/lang/Integer;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    if-nez v0, :cond_d

    .line 274
    .line 275
    goto :goto_6

    .line 276
    :cond_d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    if-ne v0, v4, :cond_e

    .line 281
    .line 282
    sget v0, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_closed_normal_mode:I

    .line 283
    .line 284
    goto :goto_7

    .line 285
    :cond_e
    :goto_6
    sget v0, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_closed:I

    .line 286
    .line 287
    :goto_7
    sget v3, Lcom/cloud/tmc/miniapp/R$string;->loading_error_miniapp_closed:I

    .line 288
    .line 289
    const/16 v7, 0x18

    .line 290
    .line 291
    const/4 v8, 0x0

    .line 292
    const/4 v4, 0x0

    .line 293
    const/4 v5, 0x0

    .line 294
    const/4 v6, 0x0

    .line 295
    move-object v1, p1

    .line 296
    move v2, v0

    .line 297
    invoke-static/range {v1 .. v8}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showErrorLayout$default(Lcom/cloud/tmc/miniapp/action/StatusAction;IILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;ILjava/lang/Object;)V

    .line 298
    .line 299
    .line 300
    goto/16 :goto_d

    .line 301
    .line 302
    :cond_f
    :goto_8
    if-nez v3, :cond_10

    .line 303
    .line 304
    goto :goto_c

    .line 305
    :cond_10
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 306
    .line 307
    .line 308
    move-result v3

    .line 309
    const/16 v8, 0x7534

    .line 310
    .line 311
    if-ne v3, v8, :cond_15

    .line 312
    .line 313
    if-eqz p0, :cond_11

    .line 314
    .line 315
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;->getCode()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    :cond_11
    if-nez v0, :cond_12

    .line 320
    .line 321
    goto :goto_9

    .line 322
    :cond_12
    move-object v7, v0

    .line 323
    :goto_9
    new-instance v0, Landroid/os/Bundle;

    .line 324
    .line 325
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 326
    .line 327
    .line 328
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->OPEN_MINI_APP_FAILED_REASON:Ljava/lang/String;

    .line 329
    .line 330
    invoke-static {v7}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;->codeToDes(Ljava/lang/String;)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v3

    .line 334
    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    invoke-static {v6}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 342
    .line 343
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 344
    .line 345
    sget-object v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_FAIL:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 346
    .line 347
    invoke-interface {v1, v3, v6, v5, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 348
    .line 349
    .line 350
    new-instance v1, Lcom/cloud/tmc/integration/chain/insert/AppInsertState;

    .line 351
    .line 352
    invoke-direct {v1, v0}, Lcom/cloud/tmc/integration/chain/insert/AppInsertState;-><init>(Landroid/os/Bundle;)V

    .line 353
    .line 354
    .line 355
    iget-object v0, p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    .line 356
    .line 357
    invoke-virtual {v1, v0}, Lcom/cloud/tmc/integration/chain/insert/AppInsertState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getViewThemeMode()Ljava/lang/Integer;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    if-nez v0, :cond_13

    .line 365
    .line 366
    goto :goto_a

    .line 367
    :cond_13
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 368
    .line 369
    .line 370
    move-result v0

    .line 371
    if-ne v0, v4, :cond_14

    .line 372
    .line 373
    sget v0, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_no_available_normal_mode:I

    .line 374
    .line 375
    goto :goto_b

    .line 376
    :cond_14
    :goto_a
    sget v0, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_no_available:I

    .line 377
    .line 378
    :goto_b
    sget v3, Lcom/cloud/tmc/miniapp/R$string;->loading_error_miniapp_no_longer_available:I

    .line 379
    .line 380
    const/16 v7, 0x18

    .line 381
    .line 382
    const/4 v8, 0x0

    .line 383
    const/4 v4, 0x0

    .line 384
    const/4 v5, 0x0

    .line 385
    const/4 v6, 0x0

    .line 386
    move-object v1, p1

    .line 387
    move v2, v0

    .line 388
    invoke-static/range {v1 .. v8}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showErrorLayout$default(Lcom/cloud/tmc/miniapp/action/StatusAction;IILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;ILjava/lang/Object;)V

    .line 389
    .line 390
    .line 391
    goto :goto_d

    .line 392
    :cond_15
    :goto_c
    :try_start_0
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/extension/PinForLaterExtensionKt;->getPinForLaterListener(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    invoke-direct {p1, p0, v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showErrorLayout(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    .line 398
    .line 399
    goto :goto_d

    .line 400
    :catchall_0
    move-exception v0

    .line 401
    const-string v3, "MiniAppActivity"

    .line 402
    .line 403
    invoke-static {v3, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 404
    .line 405
    .line 406
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/extension/PinForLaterExtensionKt;->getPinForLaterListener(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    invoke-direct {p1, p0, v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showErrorLayout(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    .line 411
    .line 412
    .line 413
    :goto_d
    return-void
.end method

.method public static synthetic m0(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->recordStart1s$lambda$64(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic n0(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->hideStatusLoadingDelay$lambda$1(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final nativeComponentIntercept()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 3
    .line 4
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v1}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderId()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    sget-object v2, Lcom/cloud/tmc/integration/minicover/NativeComponentManager;->INSTANCE:Lcom/cloud/tmc/integration/minicover/NativeComponentManager;

    .line 29
    .line 30
    invoke-virtual {v2, v1}, Lcom/cloud/tmc/integration/minicover/NativeComponentManager;->shouldInterceptBackPressed(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v1

    .line 36
    const-string v2, "MiniAppActivity"

    .line 37
    .line 38
    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    :goto_0
    return v0
.end method

.method private final newDataInitialize()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    :cond_0
    const-string v0, "miniAppId"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 22
    .line 23
    const-string v2, "5"

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->reportMiniAppLauncherFailedTrack(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v0, "MiniAppActivity"

    .line 29
    .line 30
    const-string v1, "newDataInitialize appId is null"

    .line 31
    .line 32
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sget-object v0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;->CLOSE_APP:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

    .line 36
    .line 37
    const/4 v1, 0x2

    .line 38
    const/4 v2, 0x0

    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-static {p0, v0, v3, v1, v2}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->finishMiniActivity$default(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;ZILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 45
    .line 46
    :cond_2
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mode:Ljava/lang/String;

    .line 47
    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_4

    .line 55
    .line 56
    :cond_3
    const-string v0, "mode"

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mode:Ljava/lang/String;

    .line 63
    .line 64
    :cond_4
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->version:Ljava/lang/String;

    .line 65
    .line 66
    if-eqz v0, :cond_5

    .line 67
    .line 68
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_6

    .line 73
    .line 74
    :cond_5
    const-string v0, "version"

    .line 75
    .line 76
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->version:Ljava/lang/String;

    .line 81
    .line 82
    :cond_6
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->devToken:Ljava/lang/String;

    .line 83
    .line 84
    if-eqz v0, :cond_7

    .line 85
    .line 86
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-nez v0, :cond_8

    .line 91
    .line 92
    :cond_7
    const-string v0, "sign"

    .line 93
    .line 94
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->devToken:Ljava/lang/String;

    .line 99
    .line 100
    :cond_8
    return-void
.end method

.method private static final notifyShowAddHome$lambda$96(ILcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x51

    .line 7
    .line 8
    if-le p0, v0, :cond_3

    .line 9
    .line 10
    :try_start_0
    invoke-direct {p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getPvMsgBubble()Lcom/cloud/tmc/miniapp/widget/popupview/MsgBubblePopUpWindowView;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-direct {p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getPvMsgBubble()Lcom/cloud/tmc/miniapp/widget/popupview/MsgBubblePopUpWindowView;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toGone(Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-direct {p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getPvAddHomeTopTip()Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toGone(Landroid/view/View;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-direct {p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getPvAddHomeCustom1()Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom1PopUpWindowView;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toGone(Landroid/view/View;)V

    .line 41
    .line 42
    .line 43
    :cond_2
    invoke-direct {p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getPvAddHomeCustom2()Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom2PopUpWindowView;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toGone(Landroid/view/View;)V

    .line 50
    .line 51
    .line 52
    :cond_3
    const/16 v0, 0x52

    .line 53
    .line 54
    if-le p0, v0, :cond_4

    .line 55
    .line 56
    invoke-direct {p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getPvAddHomeBottomTip()Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toGone(Landroid/view/View;)V

    .line 63
    .line 64
    .line 65
    :cond_4
    const/16 v0, 0x53

    .line 66
    .line 67
    if-le p0, v0, :cond_5

    .line 68
    .line 69
    invoke-direct {p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getAddHomeDialogView()Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    if-eqz p0, :cond_5

    .line 74
    .line 75
    const/4 p1, 0x0

    .line 76
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO00o(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .line 78
    .line 79
    :catchall_0
    :cond_5
    return-void
.end method

.method public static synthetic o0(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showMsgBubbleToast$lambda$70$lambda$69(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final oldDataInitialize()V
    .locals 4

    .line 1
    const-string v0, "miniAppId"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 12
    .line 13
    const-string v2, "2"

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->reportMiniAppLauncherFailedTrack(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v0, "MiniAppActivity"

    .line 19
    .line 20
    const-string v1, "oldDataInitialize appId is null"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget-object v0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;->CLOSE_APP:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-static {p0, v0, v3, v1, v2}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->finishMiniActivity$default(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;ZILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 35
    .line 36
    const-string v0, "mode"

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mode:Ljava/lang/String;

    .line 43
    .line 44
    const-string v0, "version"

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->version:Ljava/lang/String;

    .line 51
    .line 52
    const-string v0, "sign"

    .line 53
    .line 54
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->devToken:Ljava/lang/String;

    .line 59
    .line 60
    return-void
.end method

.method private static final onDestroy$lambda$78()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->getAddHomeAppIdList()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->getAddHomeAppIdList()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/lang/String;

    .line 32
    .line 33
    sget-object v2, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->getAppMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    sget-object v0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->getAddHomeAppIdList()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :goto_1
    const-string v1, "MiniAppActivity"

    .line 56
    .line 57
    const-string v2, "onDestroy"

    .line 58
    .line 59
    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    :goto_2
    return-void
.end method

.method private static final onPinForLaterClick$lambda$94$lambda$93(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$it"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/cloud/tmc/miniapp/prestrategy/PreStrategyManager;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PreStrategyManager;

    .line 12
    .line 13
    filled-new-array {p1}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v1, "100009"

    .line 22
    .line 23
    invoke-virtual {v0, p0, p1, v1}, Lcom/cloud/tmc/miniapp/prestrategy/PreStrategyManager;->OooO00o(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static synthetic p0(Lcom/cloud/tmc/integration/structure/node/AppNode;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->startAsyncApp$lambda$33$lambda$32$lambda$31(Lcom/cloud/tmc/integration/structure/node/AppNode;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic q0(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->startApp$lambda$29$lambda$28(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic r0(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->hideStatusLoading$lambda$10$lambda$7(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final recordStart1s()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/x;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/x;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x3e8

    .line 7
    .line 8
    invoke-static {v0, v1, v2}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    const-string v1, "MiniAppActivity"

    .line 14
    .line 15
    const-string v2, "report error"

    .line 16
    .line 17
    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method private static final recordStart1s$lambda$64(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 6

    .line 1
    const-string v0, "MiniAppActivity"

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
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-boolean v1, v1, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooOOOo:Z

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getResumed()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    const-class v1, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    .line 29
    .line 30
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 37
    .line 38
    const-string v3, "miniapp_start_suc"

    .line 39
    .line 40
    new-instance v4, Landroid/os/Bundle;

    .line 41
    .line 42
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v5, "miniappid"

    .line 46
    .line 47
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v4, v5, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 53
    .line 54
    invoke-interface {v1, v2, v3, v4}, Lcom/cloud/tmc/integration/proxy/ReportProxy;->report(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    const-string p0, "not report miniapp_start_suc ,resume is false"

    .line 59
    .line 60
    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :goto_0
    const-string v1, "report error"

    .line 65
    .line 66
    invoke-static {v0, v1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    :goto_1
    return-void
.end method

.method private static final refreshAppInfo$lambda$34(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->dispatchOnCheckForUpdateListener()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic reload$default(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;ZLandroid/os/Bundle;ILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p4, :cond_2

    .line 2
    .line 3
    and-int/lit8 p4, p3, 0x1

    .line 4
    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 9
    .line 10
    if-eqz p3, :cond_1

    .line 11
    .line 12
    const/4 p2, 0x0

    .line 13
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->reload(ZLandroid/os/Bundle;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 18
    .line 19
    const-string p1, "Super calls with default arguments not supported in this target, function: reload"

    .line 20
    .line 21
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p0
.end method

.method private static final reload$lambda$25(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Landroid/os/Bundle;Z)V
    .locals 3

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->isFirstLaunch:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    new-instance v1, Landroid/content/Intent;

    .line 12
    .line 13
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    const-string p1, "launchMode"

    .line 20
    .line 21
    const-string v2, "launchModeCold"

    .line 22
    .line 23
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    invoke-super {p0, v1}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    if-eqz p2, :cond_2

    .line 30
    .line 31
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    const-string p2, "miniAppReload"

    .line 40
    .line 41
    invoke-interface {p1, p2, v0}, Lcom/cloud/tmc/kernel/node/ValueStore;->putBooleanValue(Ljava/lang/String;Z)V

    .line 42
    .line 43
    .line 44
    :cond_1
    if-eqz p1, :cond_2

    .line 45
    .line 46
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->exit()V

    .line 47
    .line 48
    .line 49
    :cond_2
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showStatusLoading()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->setInitDataChannel(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->initData()V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method private final showAddHomeTips(Ljava/lang/String;Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->INSTANCE:Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->checkInterectMFAH(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v0, "showAddHomeTips checkInterectMFAH is true ->"

    .line 15
    .line 16
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string p2, "MiniAppActivity"

    .line 27
    .line 28
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    sget-object v0, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0, p0, v1}, Lcom/cloud/tmc/integration/utils/AppUtils;->queryShortcutExist(Landroid/content/Context;Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    sget-object v0, Lcom/cloud/tmc/kernel/executor/ExecutorType;->UI:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    .line 43
    .line 44
    new-instance v1, Lcom/cloud/tmc/miniapp/ui/v;

    .line 45
    .line 46
    invoke-direct {v1, p0, p1, p2}, Lcom/cloud/tmc/miniapp/ui/v;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Ljava/lang/String;Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;)V

    .line 47
    .line 48
    .line 49
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void
.end method

.method private static final showAddHomeTips$lambda$11(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Ljava/lang/String;Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;)V
    .locals 6

    .line 1
    const-string v0, "MiniAppActivity"

    .line 2
    .line 3
    const-string v1, "this$0"

    .line 4
    .line 5
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "$miniappId"

    .line 9
    .line 10
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "$miniAppAutoExecuteConfig"

    .line 14
    .line 15
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :try_start_0
    const-string v1, "addhomeStatus is false"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getPvAddHomeTopTip()Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-wide/16 v2, 0x0

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;->getTopPopover()Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    sget v5, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;->OooOO0o:I

    .line 36
    .line 37
    invoke-virtual {v1, p1, v4, v2, v3}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;J)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getPvAddHomeBottomTip()Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;->getBottomPopover()Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    sget v5, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooOOO0:I

    .line 54
    .line 55
    invoke-virtual {v1, p1, v4, v2, v3}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;J)V

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getAddHomeDialogView()Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    if-eqz p0, :cond_2

    .line 63
    .line 64
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;->getExitReminder()Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    sget v1, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooOOOo:I

    .line 69
    .line 70
    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :goto_1
    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    :cond_2
    :goto_2
    return-void
.end method

.method private final showErrorLayout(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;->getCode()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    const-string v1, "0"

    .line 6
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 7
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->OPEN_MINI_APP_FAILED_REASON:Ljava/lang/String;

    invoke-static {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;->codeToDes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 9
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_FAIL:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    const-string v6, "appOpenFail"

    invoke-interface {v3, v4, v5, v6, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 10
    new-instance v3, Lcom/cloud/tmc/integration/chain/insert/AppInsertState;

    invoke-direct {v3, v2}, Lcom/cloud/tmc/integration/chain/insert/AppInsertState;-><init>(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    invoke-virtual {v3, v2}, Lcom/cloud/tmc/integration/chain/insert/AppInsertState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    .line 11
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 12
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 13
    const-string v4, "type"

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 14
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    const-string v4, "uncon_page_ex"

    invoke-interface {v1, v2, v4, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->recordForCommon(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 16
    new-instance v6, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$showErrorLayout$2;

    invoke-direct {v6, p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$showErrorLayout$2;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 17
    sget v7, Lcom/cloud/tmc/miniapp/R$string;->loading_error_tv:I

    if-eqz p1, :cond_2

    .line 18
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v8, v0

    .line 19
    iget-object v9, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    move-object v5, p0

    move-object v10, p2

    .line 20
    invoke-virtual/range {v5 .. v10}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showError(Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    return-void
.end method

.method private final showLoadingPage()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getHandler()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/cloud/tmc/miniapp/ui/w;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/ui/w;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private static final showLoadingPage$lambda$83(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 3

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->errorException:Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    .line 7
    .line 8
    const-string v1, "MiniAppActivity"

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string v0, "showAsyncStatusLoading loadError"

    .line 13
    .line 14
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->errorException:Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p0, v1, v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->loadError(Lcom/cloud/tmc/integration/model/PrepareData;Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->errorException:Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    const-string v0, "showAsyncStatusLoading showLoading"

    .line 27
    .line 28
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showLoading()V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const-string v2, ""

    .line 53
    .line 54
    if-nez v1, :cond_1

    .line 55
    .line 56
    move-object v1, v2

    .line 57
    :cond_1
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getLogo()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-nez v0, :cond_2

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    move-object v2, v0

    .line 65
    :goto_0
    invoke-virtual {p0, v1, v2}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showLoadingLogo(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    sget-object v0, Lcom/cloud/tmc/integration/activity/LoadStepAction;->STEP_START_LOADING:Lcom/cloud/tmc/integration/activity/LoadStepAction;

    .line 69
    .line 70
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->updateStepProgress(Lcom/cloud/tmc/integration/activity/LoadStepAction;)V

    .line 71
    .line 72
    .line 73
    :cond_3
    :goto_1
    return-void
.end method

.method private static final showLoadingView$lambda$44(Lcom/cloud/tmc/integration/model/EntryInfo;Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 3

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, ""

    .line 7
    .line 8
    if-eqz p0, :cond_1

    .line 9
    .line 10
    :try_start_0
    sget v1, Lcom/cloud/tmc/miniapp/R$string;->dialog_loading_tv:I

    .line 11
    .line 12
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    const-string v1, "Loading..."

    .line 18
    .line 19
    :goto_0
    const-string v2, "try {\n                  \u2026ing...\"\n                }"

    .line 20
    .line 21
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lcom/cloud/tmc/integration/model/EntryInfo;->title:Ljava/lang/String;

    .line 25
    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    move-object v1, v2

    .line 30
    :goto_1
    iget-object v2, p0, Lcom/cloud/tmc/integration/model/EntryInfo;->iconUrl:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v2, v0}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->orDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {p1, v1, v2}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showLoadingLogo(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/cloud/tmc/integration/model/EntryInfo;->appId:Ljava/lang/String;

    .line 40
    .line 41
    new-instance v2, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$showLoadingView$1$1$2;

    .line 42
    .line 43
    invoke-direct {v2, p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$showLoadingView$1$1$2;-><init>(Lcom/cloud/tmc/integration/model/EntryInfo;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v1, v2}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->addMFAHInterceptAction(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 47
    .line 48
    .line 49
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_1
    const/4 p0, 0x0

    .line 53
    :goto_2
    if-nez p0, :cond_2

    .line 54
    .line 55
    :try_start_1
    sget p0, Lcom/cloud/tmc/miniapp/R$string;->dialog_loading_tv:I

    .line 56
    .line 57
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    const-string v1, "getString(R.string.dialog_loading_tv)"

    .line 62
    .line 63
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, p0, v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showLoadingLogo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 67
    .line 68
    .line 69
    goto :goto_3

    .line 70
    :catchall_1
    move-exception p0

    .line 71
    const-string p1, "MiniAppActivity"

    .line 72
    .line 73
    invoke-static {p1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    :cond_2
    :goto_3
    return-void
.end method

.method private static final showMsgBubbleToast$lambda$70(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 10

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const-string v1, "showMsgBubbleToast"

    .line 4
    .line 5
    const-string v2, "MiniAppActivity"

    .line 6
    .line 7
    const-string v3, "this$0"

    .line 8
    .line 9
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :try_start_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getPvMsgBubble()Lcom/cloud/tmc/miniapp/widget/popupview/MsgBubblePopUpWindowView;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    const-string p0, "pvMsgBubble is null"

    .line 19
    .line 20
    invoke-static {v2, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto/16 :goto_2

    .line 26
    .line 27
    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getPvMsgBubble()Lcom/cloud/tmc/miniapp/widget/popupview/MsgBubblePopUpWindowView;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    if-eqz v3, :cond_2

    .line 32
    .line 33
    invoke-static {v3}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisible(Landroid/view/View;)V

    .line 34
    .line 35
    .line 36
    const-class v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 37
    .line 38
    invoke-static {v4}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    check-cast v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 43
    .line 44
    const-string v5, "Bubble_ex"

    .line 45
    .line 46
    new-instance v6, Landroid/os/Bundle;

    .line 47
    .line 48
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v7, "jump_confi"

    .line 52
    .line 53
    iget-boolean v3, v3, Lcom/cloud/tmc/miniapp/widget/popupview/MsgBubblePopUpWindowView;->OooO0OO:Z

    .line 54
    .line 55
    if-eqz v3, :cond_1

    .line 56
    .line 57
    const-string v3, "0"

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const-string v3, "1"

    .line 61
    .line 62
    :goto_0
    invoke-virtual {v6, v7, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 66
    .line 67
    const/4 v3, 0x0

    .line 68
    invoke-interface {v4, v3, v5, v6}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->recordForCommon(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getPvMsgBubble()Lcom/cloud/tmc/miniapp/widget/popupview/MsgBubblePopUpWindowView;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    if-eqz v3, :cond_3

    .line 76
    .line 77
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->msgAppName:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v3, v4}, Lcom/cloud/tmc/miniapp/widget/popupview/MsgBubblePopUpWindowView;->OooO00o(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_3
    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .line 87
    const-class v9, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 88
    .line 89
    if-eqz v5, :cond_4

    .line 90
    .line 91
    :try_start_1
    invoke-static {v9}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    check-cast v3, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 96
    .line 97
    const-string v6, "showMsgBubbleTime"

    .line 98
    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 100
    .line 101
    .line 102
    move-result-wide v7

    .line 103
    move-object v4, p0

    .line 104
    invoke-interface/range {v3 .. v8}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    .line 106
    .line 107
    :cond_4
    :try_start_2
    sget-object v3, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 108
    .line 109
    const-string v4, "miniPopWindowTime"

    .line 110
    .line 111
    const/16 v5, 0x1388

    .line 112
    .line 113
    invoke-virtual {v3, v4, v5}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetInt(Ljava/lang/String;I)I

    .line 114
    .line 115
    .line 116
    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 117
    int-to-long v3, v3

    .line 118
    goto :goto_1

    .line 119
    :catchall_1
    move-exception v3

    .line 120
    :try_start_3
    invoke-static {v2, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    .line 122
    .line 123
    const-wide/16 v3, 0x1388

    .line 124
    .line 125
    :goto_1
    new-instance v5, Lcom/cloud/tmc/miniapp/ui/r;

    .line 126
    .line 127
    invoke-direct {v5, p0}, Lcom/cloud/tmc/miniapp/ui/r;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0, v5, v3, v4}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getContext()Landroid/content/Context;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    const-string v3, "context"

    .line 138
    .line 139
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    const-string v3, "msgStr"

    .line 143
    .line 144
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 145
    .line 146
    .line 147
    :try_start_4
    invoke-static {v9}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    check-cast v3, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 152
    .line 153
    const-string v4, "miniMsgProvider"

    .line 154
    .line 155
    const-string v5, "miniLatestUnreadMsg"

    .line 156
    .line 157
    invoke-interface {v3, p0, v4, v5, v0}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-static {v9}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    check-cast v3, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 165
    .line 166
    const-string v4, "miniMsgKvId"

    .line 167
    .line 168
    const-string v5, "miniNewMsgStatus"

    .line 169
    .line 170
    invoke-static {v0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    xor-int/lit8 v0, v0, 0x1

    .line 175
    .line 176
    invoke-interface {v3, p0, v4, v5, v0}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 177
    .line 178
    .line 179
    goto :goto_3

    .line 180
    :catchall_2
    move-exception p0

    .line 181
    :try_start_5
    const-string v0, "MiniappMsgDataProvider"

    .line 182
    .line 183
    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 184
    .line 185
    .line 186
    goto :goto_3

    .line 187
    :goto_2
    invoke-static {v2, v1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 188
    .line 189
    .line 190
    :goto_3
    return-void
.end method

.method private static final showMsgBubbleToast$lambda$70$lambda$69(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getPvMsgBubble()Lcom/cloud/tmc/miniapp/widget/popupview/MsgBubblePopUpWindowView;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toGone(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private final showNoNetwork(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V
    .locals 8

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "startBundle"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Lcom/cloud/tmc/integration/activity/StartClientBundle;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/cloud/tmc/integration/activity/StartClientBundle;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_a

    iget-object v0, v0, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startParams:Landroid/os/Bundle;

    if-eqz v0, :cond_a

    const-string v2, "extraData"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtils;->mapFromJson(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    const-string v2, "logo"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    if-eqz v0, :cond_3

    .line 5
    const-string v3, "name"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v3, v1

    :goto_3
    if-eqz v0, :cond_4

    .line 6
    const-string v4, "desc"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    goto :goto_4

    :cond_4
    move-object v4, v1

    :goto_4
    const-string v0, ""

    if-nez v2, :cond_5

    move-object v5, v0

    goto :goto_5

    :cond_5
    move-object v5, v2

    .line 7
    :goto_5
    iput-object v5, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->tempAppLogo:Ljava/lang/String;

    if-nez v3, :cond_6

    goto :goto_6

    :cond_6
    move-object v0, v3

    .line 8
    :goto_6
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->tempAppName:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 9
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_9

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->isConnected()Z

    move-result v0

    if-nez v0, :cond_9

    if-eqz p1, :cond_7

    .line 10
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;->getCode()Ljava/lang/String;

    move-result-object v1

    :cond_7
    if-nez v1, :cond_8

    const-string v1, "0"

    goto :goto_7

    :cond_8
    const-string v0, "exception?.code ?: \"0\""

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    :goto_7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 12
    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->OPEN_MINI_APP_FAILED_REASON:Ljava/lang/String;

    invoke-static {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;->codeToDes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 14
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    sget-object v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_FAIL:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    const-string v7, "appOpenFail"

    invoke-interface {v1, v5, v6, v7, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 15
    new-instance v1, Lcom/cloud/tmc/integration/chain/insert/AppInsertState;

    invoke-direct {v1, v0}, Lcom/cloud/tmc/integration/chain/insert/AppInsertState;-><init>(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    invoke-virtual {v1, v0}, Lcom/cloud/tmc/integration/chain/insert/AppInsertState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    .line 16
    new-instance v5, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$showNoNetwork$1$1;

    invoke-direct {v5, p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$showNoNetwork$1$1;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 17
    iget-object v6, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/extension/PinForLaterExtensionKt;->getPinForLaterListener(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;

    move-result-object v7

    move-object v0, p0

    move-object v1, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    .line 18
    invoke-virtual/range {v0 .. v6}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showCustomErrorLayout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    goto :goto_8

    .line 19
    :cond_9
    new-instance v1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$showNoNetwork$1$2;

    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$showNoNetwork$1$2;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 20
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/extension/PinForLaterExtensionKt;->getPinForLaterListener(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;

    move-result-object v5

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    .line 21
    invoke-static/range {v0 .. v7}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showNoNetwork$default(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;ILjava/lang/Object;)V

    .line 22
    :goto_8
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_a
    if-nez v1, :cond_b

    .line 23
    new-instance v1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$showNoNetwork$2$1;

    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$showNoNetwork$2$1;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 24
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/extension/PinForLaterExtensionKt;->getPinForLaterListener(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;

    move-result-object v5

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    .line 25
    invoke-static/range {v0 .. v7}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showNoNetwork$default(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;ILjava/lang/Object;)V

    :cond_b
    return-void
.end method

.method private final showOpenAppDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-boolean p2, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showOpenAppDialog:Z

    .line 2
    .line 3
    if-nez p2, :cond_2

    .line 4
    .line 5
    new-instance p2, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;

    .line 6
    .line 7
    invoke-direct {p2, p0, p3}, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object p3, p2, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;->OooO0OO:Lkotlin/Lazy;

    .line 11
    .line 12
    invoke-interface {p3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    move-object v3, p3

    .line 17
    check-cast v3, Landroid/widget/ImageView;

    .line 18
    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    const-class p3, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    .line 22
    .line 23
    invoke-static {p3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    move-object v0, p3

    .line 28
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    .line 29
    .line 30
    iget-object v1, p2, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;->OooO00o:Landroid/content/Context;

    .line 31
    .line 32
    new-instance v2, Ljava/io/File;

    .line 33
    .line 34
    if-nez p1, :cond_0

    .line 35
    .line 36
    const-string p1, ""

    .line 37
    .line 38
    :cond_0
    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/high16 p1, 0x41400000    # 12.0f

    .line 42
    .line 43
    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->dp2px(F)I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    sget v5, Lcom/cloud/tmc/miniapp/R$drawable;->mini_icon_placeholder:I

    .line 48
    .line 49
    invoke-interface/range {v0 .. v5}, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;->loadImgRoundCorners(Landroid/content/Context;Ljava/io/File;Landroid/widget/ImageView;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    :catchall_0
    :cond_1
    new-instance p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$showOpenAppDialog$1;

    .line 53
    .line 54
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$showOpenAppDialog$1;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->addOnShowListener(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$Oooo000;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;

    .line 62
    .line 63
    new-instance p2, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$showOpenAppDialog$2;

    .line 64
    .line 65
    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$showOpenAppDialog$2;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->addOnDismissListener(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo00;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Lcom/cloud/tmc/miniapp/dialog/o0Oo0oo;

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->show()V

    .line 75
    .line 76
    .line 77
    :cond_2
    return-void
.end method

.method private static final showPopUpWindowRunnable$lambda$72(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 6

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/cloud/tmc/integration/utils/PopWindowManager;->INSTANCE:Lcom/cloud/tmc/integration/utils/PopWindowManager;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMiniAppPopWindowToken()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    iget-wide v4, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->miniappStartTime:J

    .line 17
    .line 18
    sub-long/2addr v2, v4

    .line 19
    invoke-virtual {v0, v1, v2, v3}, Lcom/cloud/tmc/integration/utils/PopWindowManager;->showPopWindow(Ljava/lang/String;J)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private static final showStatusLoading$lambda$0(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showLoading()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final startApp$lambda$29(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Landroid/content/Intent;)V
    .locals 3

    .line 1
    const-string v0, "MiniAppActivity"

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
    const-string v1, "startApp success"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const-string v1, "launchMode"

    .line 16
    .line 17
    const-string v2, "launchModeReopen"

    .line 18
    .line 19
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_2

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    :goto_0
    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->startMiniApp(Landroid/content/Intent;)V

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->isValidOnResume:Z

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->onResume()V

    .line 33
    .line 34
    .line 35
    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->enableQuickMode:Z

    .line 36
    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->quickModeStartStatus:Z

    .line 41
    .line 42
    const-string p1, "quickModeStart complete"

    .line 43
    .line 44
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->prepareContext:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 48
    .line 49
    if-nez p1, :cond_1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->enableQuickMode:Z

    .line 53
    .line 54
    invoke-virtual {p1, v1}, Lcom/cloud/tmc/integration/model/PrepareContext;->setVirtualStart(Z)V

    .line 55
    .line 56
    .line 57
    :goto_1
    sget-object p1, Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    .line 58
    .line 59
    new-instance v1, Lcom/cloud/tmc/miniapp/ui/o;

    .line 60
    .line 61
    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/ui/o;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 62
    .line 63
    .line 64
    invoke-static {p1, v1}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .line 66
    .line 67
    goto :goto_3

    .line 68
    :goto_2
    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    :goto_3
    return-void
.end method

.method private static final startApp$lambda$29$lambda$28(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 4

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Lcom/cloud/tmc/miniapp/proxy/IClientStarter;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/cloud/tmc/miniapp/proxy/IClientStarter;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->prepareContext:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 15
    .line 16
    new-instance v2, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0OO;

    .line 17
    .line 18
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->prepareContext:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 19
    .line 20
    invoke-direct {v2, v3, p0}, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0OO;-><init>(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/OooOo;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/miniapp/proxy/IClientStarter;->createPrepareController(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->controller:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->start()V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method private static final startAsyncApp$lambda$33$lambda$32$lambda$31(Lcom/cloud/tmc/integration/structure/node/AppNode;)V
    .locals 5

    .line 1
    const-string v0, "$appNode"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getBackToPagePath()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v2, "startAsyncApp backToPagePath -> "

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "MiniAppActivity"

    .line 28
    .line 29
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getBackToPagePath()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getStartParams()Landroid/os/Bundle;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getSceneParams()Landroid/os/Bundle;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const-string v3, "navigationType"

    .line 45
    .line 46
    const-string v4, "startAsyncApp"

    .line 47
    .line 48
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 52
    .line 53
    invoke-virtual {p0, v0, v1, v2}, Lcom/cloud/tmc/integration/structure/node/AppNode;->relaunchToUrl(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 54
    .line 55
    .line 56
    const-string v0, ""

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->setBackToPagePath(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method private final startMiniApp(Landroid/content/Intent;)V
    .locals 4

    .line 1
    const-string v0, "launchMode"

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x1

    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    if-eqz p1, :cond_1

    .line 20
    .line 21
    const-string v1, "launchModeHot"

    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 27
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v2, "onNewIntent: "

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v1, "MiniAppActivity"

    .line 46
    .line 47
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 51
    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v3, "startMiniApp:checkTaskId:"

    .line 58
    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    sget-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getInstance()Lcom/cloud/tmc/miniapp/NewTaskManager;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/miniapp/NewTaskManager;->checkTaskId(Ljava/lang/String;Ljava/lang/Class;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 88
    .line 89
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/integration/ActivityHelper;->onNewIntent(Landroid/content/Intent;)V

    .line 90
    .line 91
    .line 92
    const-class p1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 93
    .line 94
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 99
    .line 100
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 111
    .line 112
    if-eqz p1, :cond_3

    .line 113
    .line 114
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    if-eqz v0, :cond_2

    .line 121
    .line 122
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    goto :goto_1

    .line 127
    :cond_2
    const/4 v0, 0x0

    .line 128
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    const-string v2, "resendH5PageStack_"

    .line 134
    .line 135
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    new-instance v1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$startMiniApp$1;

    .line 146
    .line 147
    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$startMiniApp$1;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 148
    .line 149
    .line 150
    invoke-interface {p1, v0, v1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->register(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    .line 151
    .line 152
    .line 153
    :cond_3
    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->enableQuickMode:Z

    .line 154
    .line 155
    if-eqz p1, :cond_5

    .line 156
    .line 157
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 158
    .line 159
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    if-nez p1, :cond_4

    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_4
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$startMiniApp$2;

    .line 167
    .line 168
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$startMiniApp$2;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 169
    .line 170
    .line 171
    invoke-interface {p1, v0}, Lcom/cloud/tmc/integration/structure/App;->setAsyncStartLoadingCallback(Lcom/cloud/tmc/integration/callback/IAsyncStartLoadingCallback;)V

    .line 172
    .line 173
    .line 174
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 175
    .line 176
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    if-eqz p1, :cond_6

    .line 181
    .line 182
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$startMiniApp$3;

    .line 183
    .line 184
    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$startMiniApp$3;-><init>()V

    .line 185
    .line 186
    .line 187
    invoke-interface {p1, v0}, Lcom/cloud/tmc/integration/structure/App;->setAppCallback(Lcom/cloud/tmc/integration/callback/IAppCallback;)V

    .line 188
    .line 189
    .line 190
    :cond_6
    return-void
.end method

.method private static final updateStepProgress$lambda$26(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Lcom/cloud/tmc/integration/activity/LoadStepAction;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$step"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->updateStepAnimation(Lcom/cloud/tmc/integration/activity/LoadStepAction;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public addMFAHInterceptAction(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/integration/callback/IAllowMFAHListener$DefaultImpls;->addMFAHInterceptAction(Lcom/cloud/tmc/integration/callback/IAllowMFAHListener;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final addScreen(Ljava/lang/String;)V
    .locals 10

    .line 1
    const-string v0, "MiniAppActivity"

    .line 2
    .line 3
    const-string v1, "location"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->isLoadStatusLoadingOrError()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const-string v1, "0"

    .line 16
    .line 17
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getPvAddHomeTopTip()Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-static {v1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->getVisible(Landroid/view/View;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/4 v2, 0x1

    .line 34
    if-ne v1, v2, :cond_1

    .line 35
    .line 36
    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 45
    .line 46
    const-string v2, "upper_pop_click"

    .line 47
    .line 48
    new-instance v3, Landroid/os/Bundle;

    .line 49
    .line 50
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-interface {p1, v1, v2, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->recordForCommon(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 54
    .line 55
    .line 56
    const-string p1, "10"

    .line 57
    .line 58
    :cond_1
    move-object v4, p1

    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p1

    .line 61
    goto/16 :goto_4

    .line 62
    .line 63
    :goto_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getPvAddHomeTopTip()Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-eqz p1, :cond_2

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;->OooO00o()V

    .line 70
    .line 71
    .line 72
    :cond_2
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getPvAddHomeBottomTip()Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;

    .line 73
    .line 74
    .line 75
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    if-eqz p1, :cond_3

    .line 77
    .line 78
    :try_start_1
    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->getVisible(Landroid/view/View;)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_3

    .line 83
    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    sget v2, Lcom/cloud/tmc/miniapp/R$anim;->mini_view_toast_exit:I

    .line 89
    .line 90
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 95
    .line 96
    .line 97
    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toInvisible(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :catchall_1
    move-exception v1

    .line 102
    :try_start_2
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomBottomTipView;->OooO0oO:Ljava/lang/String;

    .line 103
    .line 104
    const-string v2, "toAddCustomBottomVisible error"

    .line 105
    .line 106
    invoke-static {p1, v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    .line 108
    .line 109
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getAddHomeDialogView()Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    if-eqz p1, :cond_4

    .line 114
    .line 115
    const/4 v1, 0x0

    .line 116
    invoke-virtual {p1, v1}, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO00o(Z)V

    .line 117
    .line 118
    .line 119
    :cond_4
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    if-eqz v3, :cond_5

    .line 126
    .line 127
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    if-eqz p1, :cond_5

    .line 132
    .line 133
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    if-eqz v1, :cond_5

    .line 138
    .line 139
    const-string p1, "context"

    .line 140
    .line 141
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    const-class p1, Lcom/cloud/tmc/integration/proxy/StartActivityProxy;

    .line 145
    .line 146
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    check-cast p1, Lcom/cloud/tmc/integration/proxy/StartActivityProxy;

    .line 151
    .line 152
    invoke-interface {p1}, Lcom/cloud/tmc/integration/proxy/StartActivityProxy;->getLauncherShortCutActivity()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    const-string p1, "get(StartActivityProxy::\u2026.launcherShortCutActivity"

    .line 157
    .line 158
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    const/16 v8, 0x70

    .line 162
    .line 163
    const/4 v9, 0x0

    .line 164
    const/4 v5, 0x0

    .line 165
    const/4 v6, 0x0

    .line 166
    const/4 v7, 0x0

    .line 167
    invoke-static/range {v1 .. v9}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->createShortcut$default(Landroid/content/Context;Ljava/lang/Class;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;IZZILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 168
    .line 169
    .line 170
    :cond_5
    :try_start_3
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getPvAddHomeCustom1()Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom1PopUpWindowView;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getPvAddHomeCustom2()Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom2PopUpWindowView;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getPvAddHomeCustom1()Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom1PopUpWindowView;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    if-eqz p1, :cond_6

    .line 189
    .line 190
    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toGone(Landroid/view/View;)V

    .line 191
    .line 192
    .line 193
    goto :goto_2

    .line 194
    :catchall_2
    move-exception p1

    .line 195
    goto :goto_3

    .line 196
    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getPvAddHomeCustom2()Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustom2PopUpWindowView;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    if-eqz p1, :cond_7

    .line 201
    .line 202
    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toGone(Landroid/view/View;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 203
    .line 204
    .line 205
    goto :goto_5

    .line 206
    :goto_3
    :try_start_4
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 207
    .line 208
    .line 209
    goto :goto_5

    .line 210
    :goto_4
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 211
    .line 212
    .line 213
    :cond_7
    :goto_5
    return-void
.end method

.method public backgroundDownloadZipAsync(Lcom/cloud/tmc/integration/model/AppModel;Z)V
    .locals 4

    .line 1
    const-string v0, "appModelNew"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->miniappStartTime:J

    .line 7
    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v3, "backgroundDownloadZipAsync: miniappStartTime: "

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v0, " isSuccess: "

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v0, " appModelNew: "

    .line 30
    .line 31
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string v0, "MiniAppActivity"

    .line 42
    .line 43
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->miniappStartTime:J

    .line 47
    .line 48
    const-wide/16 v2, 0x0

    .line 49
    .line 50
    cmp-long p1, v0, v2

    .line 51
    .line 52
    if-eqz p1, :cond_0

    .line 53
    .line 54
    invoke-direct {p0, p2}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->dispatchOnUpdateApp(Z)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMShowCompleteTaskQueue()Lcom/cloud/tmc/miniapp/task/OooO0O0;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    new-instance v0, Lcom/cloud/tmc/miniapp/task/OooO00o;

    .line 63
    .line 64
    new-instance v1, Lcom/cloud/tmc/miniapp/ui/j;

    .line 65
    .line 66
    invoke-direct {v1, p0, p2}, Lcom/cloud/tmc/miniapp/ui/j;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Z)V

    .line 67
    .line 68
    .line 69
    const-string p2, "onUpdateApp"

    .line 70
    .line 71
    invoke-direct {v0, p2, v1}, Lcom/cloud/tmc/miniapp/task/OooO00o;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/task/OooO0O0;->OooO00o(Lcom/cloud/tmc/miniapp/task/OooO00o;)V

    .line 75
    .line 76
    .line 77
    :goto_0
    return-void
.end method

.method public final capsuleSetOnRightClick(Z)V
    .locals 11

    .line 1
    const-string v0, "MiniAppActivity"

    .line 2
    .line 3
    :try_start_0
    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_EXIT_CLICK:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 14
    .line 15
    const-string v4, ""

    .line 16
    .line 17
    invoke-interface {v1, v2, v3, v4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    :try_start_1
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    sget-object v1, Lcom/cloud/tmc/offline/download/OfflineManager;->INSTANCE:Lcom/cloud/tmc/offline/download/OfflineManager;

    .line 26
    .line 27
    invoke-virtual {v1, p0}, Lcom/cloud/tmc/offline/download/OfflineManager;->clearCache(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    sget-object p1, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;->CLOSE_APP:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-virtual {p0, p1, v1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->finishMiniActivity(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;Z)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :catchall_1
    move-exception p1

    .line 40
    goto :goto_3

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const/4 v1, 0x0

    .line 48
    const/4 v2, 0x0

    .line 49
    if-eqz p1, :cond_3

    .line 50
    .line 51
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getBackPressedProcessor()Lcom/cloud/tmc/integration/processor/IBackPressedProcessor;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    new-instance v10, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;

    .line 56
    .line 57
    iget-object v6, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 58
    .line 59
    instance-of v4, p1, Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 60
    .line 61
    if-eqz v4, :cond_1

    .line 62
    .line 63
    check-cast p1, Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 64
    .line 65
    move-object v7, p1

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    move-object v7, v2

    .line 68
    :goto_1
    const/4 v8, 0x1

    .line 69
    const/4 v9, 0x2

    .line 70
    move-object v4, v10

    .line 71
    move-object v5, p0

    .line 72
    invoke-direct/range {v4 .. v9}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/node/AppNode;ZI)V

    .line 73
    .line 74
    .line 75
    invoke-interface {v3, v10}, Lcom/cloud/tmc/integration/processor/IBackPressedProcessor;->startBackPressedInterceptorChain(Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;)Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;->isIntercept()Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-nez p1, :cond_2

    .line 84
    .line 85
    sget-object p1, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;->CLOSE_APP:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

    .line 86
    .line 87
    invoke-virtual {p0, p1, v1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->finishMiniActivity(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;Z)V

    .line 88
    .line 89
    .line 90
    :cond_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_3
    move-object p1, v2

    .line 94
    :goto_2
    if-nez p1, :cond_4

    .line 95
    .line 96
    sget-object p1, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;->CLOSE_APP:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

    .line 97
    .line 98
    const/4 v3, 0x2

    .line 99
    invoke-static {p0, p1, v1, v3, v2}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->finishMiniActivity$default(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;ZILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 100
    .line 101
    .line 102
    goto :goto_4

    .line 103
    :goto_3
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    :cond_4
    :goto_4
    return-void
.end method

.method public final checkAndShowAddHomeCustomToast(IJJLjava/lang/String;Ljava/lang/String;)V
    .locals 14

    .line 1
    move-object v9, p0

    .line 2
    sget-object v7, Lcom/cloud/tmc/miniapp/utils/AddHomeToastUtils;->OooO00o:Lcom/cloud/tmc/miniapp/utils/AddHomeToastUtils;

    .line 3
    .line 4
    iget-object v8, v9, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMiniAppPopWindowToken()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v10

    .line 10
    iget-wide v11, v9, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->miniappStartTime:J

    .line 11
    .line 12
    new-instance v13, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$checkAndShowAddHomeCustomToast$1;

    .line 13
    .line 14
    move-object v0, v13

    .line 15
    move v1, p1

    .line 16
    move-object v2, p0

    .line 17
    move-object/from16 v3, p6

    .line 18
    .line 19
    move-object/from16 v4, p7

    .line 20
    .line 21
    move-wide/from16 v5, p4

    .line 22
    .line 23
    invoke-direct/range {v0 .. v6}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$checkAndShowAddHomeCustomToast$1;-><init>(ILcom/cloud/tmc/miniapp/ui/MiniAppActivity;Ljava/lang/String;Ljava/lang/String;J)V

    .line 24
    .line 25
    .line 26
    move-object v0, v7

    .line 27
    move-object v1, p0

    .line 28
    move-object v2, v8

    .line 29
    move-object v3, v10

    .line 30
    move-wide v4, v11

    .line 31
    move-wide/from16 v6, p2

    .line 32
    .line 33
    move-object v8, v13

    .line 34
    invoke-virtual/range {v0 .. v8}, Lcom/cloud/tmc/miniapp/utils/AddHomeToastUtils;->OooO00o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLkotlin/jvm/functions/Function0;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public checkIsForeground()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getResumed()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public clearMFAHIntercept()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/integration/callback/IAllowMFAHListener$DefaultImpls;->clearMFAHIntercept(Lcom/cloud/tmc/integration/callback/IAllowMFAHListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public createSuccess(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "appId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-class v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 13
    .line 14
    const-string v1, "1000886706715795456_web"

    .line 15
    .line 16
    const-string v2, "csmk"

    .line 17
    .line 18
    invoke-interface {v0, p0, v1, v2}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    const-string v1, ""

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    move-object v0, v1

    .line 27
    :cond_0
    :try_start_1
    const-class v2, Lcom/cloud/tmc/integration/model/CSMKBean;

    .line 28
    .line 29
    invoke-static {v0, v2}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/cloud/tmc/integration/model/CSMKBean;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/CSMKBean;->getContinueShow()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 48
    .line 49
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_GET_TOAST_ADD_EX:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 50
    .line 51
    new-instance v3, Landroid/os/Bundle;

    .line 52
    .line 53
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v4, "miniappid"

    .line 57
    .line 58
    invoke-virtual {v3, v4, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 62
    .line 63
    invoke-interface {v0, v1, v2, v1, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 64
    .line 65
    .line 66
    const/4 v0, 0x0

    .line 67
    invoke-virtual {p0, p1, v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->statusLayoutCreateShortCutsSuccess(Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$createSuccess$2;

    .line 72
    .line 73
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$createSuccess$2;-><init>(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1, v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->statusLayoutCreateShortCutsSuccess(Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    .line 78
    .line 79
    :catchall_0
    :goto_0
    return-void
.end method

.method public finish()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final finishMiniActivity(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;Z)V
    .locals 5

    .line 1
    const-string v0, "exitType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto/16 :goto_b

    .line 22
    .line 23
    :cond_0
    move-object v0, v1

    .line 24
    :goto_0
    instance-of v2, v0, Lcom/cloud/tmc/integration/structure/app/TmcAppContext;

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    check-cast v0, Lcom/cloud/tmc/integration/structure/app/TmcAppContext;

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move-object v0, v1

    .line 32
    :goto_1
    if-eqz v0, :cond_2

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->getFragmentManager()Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    invoke-interface {v0}, Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;->getFragments()Ljava/util/Set;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    .line 61
    .line 62
    invoke-virtual {v2, p1}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->setExitType(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;)V

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_2
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    if-eqz p1, :cond_12

    .line 73
    .line 74
    if-eqz p2, :cond_3

    .line 75
    .line 76
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->exit()V

    .line 77
    .line 78
    .line 79
    goto/16 :goto_c

    .line 80
    .line 81
    :cond_3
    sget-object p2, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 82
    .line 83
    const-string v0, "enableMoveToBack"

    .line 84
    .line 85
    const/4 v2, 0x1

    .line 86
    invoke-virtual {p2, v0, v2}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetBool(Ljava/lang/String;Z)Z

    .line 87
    .line 88
    .line 89
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    const-string v2, "MiniAppActivity"

    .line 91
    .line 92
    if-nez v0, :cond_4

    .line 93
    .line 94
    :try_start_1
    const-string p2, "finishMiniActivity enableMoveToBack -> false"

    .line 95
    .line 96
    invoke-static {v2, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->exit()V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_4
    sget-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;

    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getInstance()Lcom/cloud/tmc/miniapp/NewTaskManager;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 110
    .line 111
    invoke-virtual {v4}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    if-eqz v4, :cond_5

    .line 116
    .line 117
    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    goto :goto_3

    .line 122
    :cond_5
    move-object v4, v1

    .line 123
    :goto_3
    invoke-virtual {v3, v4}, Lcom/cloud/tmc/miniapp/NewTaskManager;->checkOpenMutipleTask(Ljava/lang/String;)Z

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    if-nez v3, :cond_6

    .line 128
    .line 129
    const-string p2, "finishMiniActivity checkOpenMutipleTask -> false"

    .line 130
    .line 131
    invoke-static {v2, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->exit()V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :cond_6
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getInstance()Lcom/cloud/tmc/miniapp/NewTaskManager;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 143
    .line 144
    invoke-virtual {v4}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    if-eqz v4, :cond_7

    .line 149
    .line 150
    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    goto :goto_4

    .line 155
    :cond_7
    move-object v4, v1

    .line 156
    :goto_4
    invoke-virtual {v3, v4}, Lcom/cloud/tmc/miniapp/NewTaskManager;->checkUseSingleTaskMode(Ljava/lang/String;)Z

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    if-eqz v3, :cond_8

    .line 161
    .line 162
    const-string p2, "finishMiniActivity feedback -> finish"

    .line 163
    .line 164
    invoke-static {v2, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->exit()V

    .line 168
    .line 169
    .line 170
    return-void

    .line 171
    :cond_8
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getInstance()Lcom/cloud/tmc/miniapp/NewTaskManager;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 176
    .line 177
    invoke-virtual {v3}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    if-eqz v3, :cond_9

    .line 182
    .line 183
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    goto :goto_5

    .line 188
    :cond_9
    move-object v3, v1

    .line 189
    :goto_5
    invoke-virtual {v0, v3}, Lcom/cloud/tmc/miniapp/NewTaskManager;->checkMiniAppServerApp(Ljava/lang/String;)Z

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    if-eqz v0, :cond_a

    .line 194
    .line 195
    const-string p2, "finishMiniActivity setting -> finish"

    .line 196
    .line 197
    invoke-static {v2, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->exit()V

    .line 201
    .line 202
    .line 203
    return-void

    .line 204
    :cond_a
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 205
    .line 206
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    if-eqz v0, :cond_b

    .line 211
    .line 212
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getMiniAppLoadStatus()Z

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    if-nez v0, :cond_b

    .line 217
    .line 218
    const-string p2, "finishMiniActivity miniAppLoadStatus -> false"

    .line 219
    .line 220
    invoke-static {v2, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->exit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    .line 225
    .line 226
    return-void

    .line 227
    :cond_b
    :try_start_2
    const-string v0, "forceFinishMiniApp"

    .line 228
    .line 229
    const-string v3, "[]"

    .line 230
    .line 231
    invoke-virtual {p2, v0, v3}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p2

    .line 235
    const-class v0, Ljava/util/List;

    .line 236
    .line 237
    invoke-static {p2, v0}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object p2

    .line 241
    instance-of v0, p2, Ljava/util/List;

    .line 242
    .line 243
    if-eqz v0, :cond_c

    .line 244
    .line 245
    check-cast p2, Ljava/util/List;

    .line 246
    .line 247
    goto :goto_6

    .line 248
    :catchall_1
    move-exception p2

    .line 249
    goto :goto_7

    .line 250
    :cond_c
    move-object p2, v1

    .line 251
    :goto_6
    if-nez p2, :cond_d

    .line 252
    .line 253
    new-instance p2, Ljava/util/ArrayList;

    .line 254
    .line 255
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 256
    .line 257
    .line 258
    goto :goto_8

    .line 259
    :goto_7
    :try_start_3
    invoke-static {v2, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 260
    .line 261
    .line 262
    new-instance p2, Ljava/util/ArrayList;

    .line 263
    .line 264
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .line 266
    .line 267
    :cond_d
    :goto_8
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 268
    .line 269
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    if-eqz v0, :cond_e

    .line 274
    .line 275
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    goto :goto_9

    .line 280
    :cond_e
    move-object v0, v1

    .line 281
    :goto_9
    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt;->b0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result p2

    .line 285
    if-eqz p2, :cond_f

    .line 286
    .line 287
    const-string p2, "finishMiniActivity forceFinishList -> finish"

    .line 288
    .line 289
    invoke-static {v2, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->exit()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 293
    .line 294
    .line 295
    return-void

    .line 296
    :catchall_2
    :cond_f
    :try_start_4
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 297
    .line 298
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 299
    .line 300
    .line 301
    move-result-object p2

    .line 302
    if-eqz p2, :cond_11

    .line 303
    .line 304
    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 305
    .line 306
    .line 307
    move-result-object p2

    .line 308
    if-eqz p2, :cond_11

    .line 309
    .line 310
    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/AppContext;->moveToBackground()Z

    .line 311
    .line 312
    .line 313
    move-result p2

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    .line 315
    .line 316
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    .line 318
    .line 319
    const-string v1, "mActivityHelper not null, moveToBackground status ->"

    .line 320
    .line 321
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    if-nez p2, :cond_10

    .line 335
    .line 336
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->exit()V

    .line 337
    .line 338
    .line 339
    :cond_10
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 340
    .line 341
    :cond_11
    if-nez v1, :cond_16

    .line 342
    .line 343
    const-string p2, "app or appContext is null,exit app"

    .line 344
    .line 345
    invoke-static {v2, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->exit()V

    .line 349
    .line 350
    .line 351
    goto :goto_c

    .line 352
    :cond_12
    sget-object p1, Lcom/cloud/tmc/miniapp/NewTaskManager;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;

    .line 353
    .line 354
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getInstance()Lcom/cloud/tmc/miniapp/NewTaskManager;

    .line 355
    .line 356
    .line 357
    move-result-object p1

    .line 358
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 359
    .line 360
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/miniapp/NewTaskManager;->checkOpenMutipleTask(Ljava/lang/String;)Z

    .line 361
    .line 362
    .line 363
    move-result p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 364
    if-eqz p1, :cond_15

    .line 365
    .line 366
    :try_start_5
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 367
    .line 368
    if-eqz p1, :cond_14

    .line 369
    .line 370
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 371
    .line 372
    .line 373
    move-result p1

    .line 374
    if-nez p1, :cond_13

    .line 375
    .line 376
    goto :goto_a

    .line 377
    :cond_13
    const-class p1, Lcom/cloud/tmc/integration/proxy/StartActivityProxy;

    .line 378
    .line 379
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object p1

    .line 383
    check-cast p1, Lcom/cloud/tmc/integration/proxy/StartActivityProxy;

    .line 384
    .line 385
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 386
    .line 387
    invoke-interface {p1, p2, p0}, Lcom/cloud/tmc/integration/proxy/StartActivityProxy;->removeMiniAppTask(Ljava/lang/String;Landroid/app/Activity;)V

    .line 388
    .line 389
    .line 390
    goto :goto_c

    .line 391
    :cond_14
    :goto_a
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 392
    .line 393
    .line 394
    goto :goto_c

    .line 395
    :catchall_3
    :try_start_6
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    .line 396
    .line 397
    .line 398
    goto :goto_c

    .line 399
    :cond_15
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->finish()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 400
    .line 401
    .line 402
    goto :goto_c

    .line 403
    :goto_b
    const-string p2, "miniappactivity"

    .line 404
    .line 405
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 406
    .line 407
    .line 408
    :cond_16
    :goto_c
    return-void
.end method

.method public final getAppId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCapsule()Lcom/cloud/tmc/miniapp/widget/CapsuleView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->capsule$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/miniapp/widget/CapsuleView;

    .line 8
    .line 9
    return-object v0
.end method

.method public final getController()Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->controller:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCurrentApp()Lcom/cloud/tmc/integration/structure/App;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getCurrentDelayTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->currentDelayTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getDelayShowError()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->delayShowError:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getDevToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->devToken:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getEnableQuickMode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->enableQuickMode:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getErrorException()Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->errorException:Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lcom/cloud/tmc/miniapp/R$layout;->activity_mini_main:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMActivityHelper()Lcom/cloud/tmc/integration/ActivityHelper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMFAHIntercept()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/integration/callback/IAllowMFAHListener$DefaultImpls;->getMFAHIntercept(Lcom/cloud/tmc/integration/callback/IAllowMFAHListener;)Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getMFAHInterceptList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mMFAHInterceptList:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMiniAppPopWindowToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->miniAppPopWindowToken$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0
.end method

.method public final getMiniappForegroundTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->miniappForegroundTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getMiniappResumeTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->miniappResumeTimestamp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getMiniappStartTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->miniappStartTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getMode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMsgAppName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->msgAppName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOnPauseStopTimeStamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->onPauseStopTimeStamp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getPrepareContext()Lcom/cloud/tmc/integration/model/PrepareContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->prepareContext:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getQuickModeController()Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->quickModeController:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getQuickModeStartStatus()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->quickModeStartStatus:Z

    .line 2
    .line 3
    return v0
.end method

.method public getResumed()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getMResumed()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final getRootTaskId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->rootTaskId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSceneId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->sceneId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShowMsgBubbleController()Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showMsgBubbleController:Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getTempAppLogo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->tempAppLogo:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTempAppName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->tempAppName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->version:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getViewThemeMode()Ljava/lang/Integer;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-nez v0, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    sget-object v1, Lcom/cloud/tmc/kernel/constants/MiniAppType;->SHELL:Lcom/cloud/tmc/kernel/constants/MiniAppType;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/cloud/tmc/kernel/constants/MiniAppType;->getType()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getAppinfoCategoryType()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eq v1, v2, :cond_3

    .line 29
    .line 30
    sget-object v1, Lcom/cloud/tmc/kernel/constants/MiniAppType;->SHELL_GAME:Lcom/cloud/tmc/kernel/constants/MiniAppType;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/cloud/tmc/kernel/constants/MiniAppType;->getType()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getAppinfoCategoryType()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-ne v1, v0, :cond_2

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 44
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    goto :goto_3

    .line 49
    :cond_3
    :goto_2
    const/4 v0, 0x2

    .line 50
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    :goto_3
    return-object v0
.end method

.method public final goBack()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->isLoadStatusLoadingOrError()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Landroid/view/KeyEvent;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x4

    .line 12
    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v2, v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final goHome()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->enableQuickMode:Z

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v1, v0, Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    check-cast v0, Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v0, v2

    .line 20
    :goto_0
    if-eqz v0, :cond_4

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->isAsyncLaunchStatus()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_4

    .line 27
    .line 28
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    instance-of v1, v0, Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    check-cast v0, Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move-object v0, v2

    .line 42
    :goto_1
    if-eqz v0, :cond_3

    .line 43
    .line 44
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getHomePagePath()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    :cond_2
    invoke-virtual {v0, v2}, Lcom/cloud/tmc/integration/structure/node/AppNode;->setBackToPagePath(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_3
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showLoadingPage()V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_4
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->isLoadStatusLoadingOrError()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_5

    .line 68
    .line 69
    return-void

    .line 70
    :cond_5
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 71
    .line 72
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 77
    .line 78
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 79
    .line 80
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_NAV_HOME_PRESSED:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 81
    .line 82
    const-string v3, ""

    .line 83
    .line 84
    invoke-interface {v0, v1, v2, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    if-eqz v0, :cond_6

    .line 94
    .line 95
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->exitToHomePage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :catchall_0
    move-exception v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-static {v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :cond_6
    :goto_2
    return-void
.end method

.method public final hideAddHomeTips()V
    .locals 2

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getPvAddHomeTopTip()Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/widget/popupview/AddHomeCustomTopTipView;->OooO00o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    const-string v1, "MiniAppActivity"

    .line 13
    .line 14
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    :goto_0
    return-void
.end method

.method public hideStatusLoading()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-class v1, Lcom/cloud/tmc/ad/IAdManagerProxy;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/cloud/tmc/ad/IAdManagerProxy;

    .line 16
    .line 17
    invoke-interface {v1, v0}, Lcom/cloud/tmc/ad/IAdManagerProxy;->onCreate(Lcom/cloud/tmc/integration/structure/App;)V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/structure/App;->updateHideMiniappLoadingStatus(Z)V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getHandler()Landroid/os/Handler;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v1, Lcom/cloud/tmc/miniapp/ui/a0;

    .line 29
    .line 30
    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/ui/a0;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final hideStatusLoadingDelay(J)V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/m;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/m;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, p1, p2}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public initData()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/cloud/tmc/miniapp/ByteAppManager;->isInit()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "MiniAppActivity"

    .line 8
    .line 9
    const-string v1, "ByteAppManager is not init"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "this.application"

    .line 21
    .line 22
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->byteAppInit$com_cloud_tmc_miniapp_sdk(Landroid/app/Application;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->initMiniActivityData()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public initView()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getCapsule()Lcom/cloud/tmc/miniapp/widget/CapsuleView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static {}, Lcom/cloud/tmc/integration/utils/MiniBarUtils;->getStatusHeight()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    int-to-float v2, v2

    .line 16
    add-float/2addr v1, v2

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ViewUtils;->isLayoutRtl()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    sget v2, Lcom/cloud/tmc/miniapp/R$dimen;->mini_dp_8:I

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    sget v2, Lcom/cloud/tmc/miniapp/R$dimen;->mini_dp_m_8:I

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 48
    .line 49
    .line 50
    new-instance v1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$initView$1$1;

    .line 51
    .line 52
    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$initView$1$1;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->setOnLeftClickListener(Lkotlin/jvm/functions/Function0;)V

    .line 56
    .line 57
    .line 58
    new-instance v1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$initView$1$2;

    .line 59
    .line 60
    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$initView$1$2;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->setOnRightClickListener(Lkotlin/jvm/functions/Function0;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 67
    .line 68
    new-instance v1, Lcom/cloud/tmc/miniapp/ui/b0;

    .line 69
    .line 70
    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/ui/b0;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/ActivityHelper;->setOnSetHostActivityStatusBackgroundCallback(Lcom/cloud/tmc/integration/ActivityHelper$OnSetHostActivityStatusBackgroundCallback;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public final isAsyncLaunchStatus()Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    check-cast v0, Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->isAsyncLaunchStatus()Z

    .line 18
    .line 19
    .line 20
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    goto :goto_1

    .line 22
    :catchall_0
    :cond_1
    const/4 v0, 0x0

    .line 23
    :goto_1
    return v0
.end method

.method public final isFirstLaunch()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->isFirstLaunch:Z

    .line 2
    .line 3
    return v0
.end method

.method public isLoadStatusLoadingOrError()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->isLoadStatusLoadingOrError(Lcom/cloud/tmc/miniapp/action/StatusAction;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public killActivity()V
    .locals 4

    .line 1
    const-string v0, "NewTaskManager"

    .line 2
    .line 3
    const-string v1, "kill activity"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "launch step error,finish activity"

    .line 9
    .line 10
    invoke-static {v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget-object v0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;->CLOSE_APP:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-static {p0, v0, v3, v1, v2}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->finishMiniActivity$default(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;ZILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public loadError(Lcom/cloud/tmc/integration/model/PrepareData;Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V
    .locals 4

    .line 1
    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->enableQuickMode:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->quickModeStartStatus:Z

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->errorException:Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->errorException:Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    if-eqz p2, :cond_1

    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;->getCode()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move-object v0, p1

    .line 25
    :goto_0
    if-eqz p2, :cond_2

    .line 26
    .line 27
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    :cond_2
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v3, "loadError errorCode: "

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v0, " errorMessage: "

    .line 49
    .line 50
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string p1, ", Just print: "

    .line 57
    .line 58
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const-string v0, "MiniAppActivity"

    .line 69
    .line 70
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    if-nez p1, :cond_3

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    const/4 v0, 0x0

    .line 83
    invoke-interface {p1, v0}, Lcom/cloud/tmc/integration/structure/App;->setMiniAppLoadStatus(Z)V

    .line 84
    .line 85
    .line 86
    :goto_1
    new-instance p1, Lcom/cloud/tmc/integration/chain/errorState/AppErrorState;

    .line 87
    .line 88
    new-instance v0, Landroid/os/Bundle;

    .line 89
    .line 90
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-direct {p1, v0}, Lcom/cloud/tmc/integration/chain/errorState/AppErrorState;-><init>(Landroid/os/Bundle;)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/chain/errorState/AppErrorState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getHandler()Landroid/os/Handler;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/n;

    .line 106
    .line 107
    invoke-direct {v0, p2, p0}, Lcom/cloud/tmc/miniapp/ui/n;-><init>(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public mfahAllow(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/callback/IAllowMFAHListener$DefaultImpls;->mfahAllow(Lcom/cloud/tmc/integration/callback/IAllowMFAHListener;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public notifyShowAddHome(I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/h;

    .line 2
    .line 3
    invoke-direct {v0, p1, p0}, Lcom/cloud/tmc/miniapp/ui/h;-><init>(ILcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    instance-of v1, v0, Lcom/cloud/tmc/integration/structure/app/TmcAppContext;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    check-cast v0, Lcom/cloud/tmc/integration/structure/app/TmcAppContext;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->getFragmentManager()Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;->onBackPressed()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->finish()V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    const-string v0, "newConfig"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 7
    .line 8
    .line 9
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    const/16 v1, 0x400

    .line 13
    .line 14
    const/16 v2, 0x800

    .line 15
    .line 16
    if-eq p1, v0, :cond_2

    .line 17
    .line 18
    const/4 v0, 0x2

    .line 19
    if-eq p1, v0, :cond_0

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getCapsule()Lcom/cloud/tmc/miniapp/widget/CapsuleView;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/16 v0, 0x8

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getCapsule()Lcom/cloud/tmc/miniapp/widget/CapsuleView;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-nez p1, :cond_3

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    const/4 v0, 0x0

    .line 57
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 72
    .line 73
    .line 74
    :goto_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/cloud/tmc/integration/SoftHideKeyBoardUtil;->assistActivity(Landroid/app/Activity;)V

    .line 5
    .line 6
    .line 7
    const-class p1, Lcom/cloud/tmc/kernel/proxy/renderprocess/IOnRenderProcessGoneProxy;

    .line 8
    .line 9
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/renderprocess/IOnRenderProcessGoneProxy;

    .line 14
    .line 15
    invoke-interface {p1, p0}, Lcom/cloud/tmc/kernel/proxy/renderprocess/IOnRenderProcessGoneProxy;->register(Lcom/cloud/tmc/kernel/proxy/renderprocess/IOnRenderProcessGoneProxy$Listener;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onDestroy()V
    .locals 12

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-super {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->onDestroy()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/SystemUtils;->darkThemeIsEnabled(Landroid/content/Context;)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v4, "onDestroy invoke..appId:"

    .line 18
    .line 19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, ",isDarkMode:"

    .line 26
    .line 27
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v2, "MiniAppBasePage"

    .line 38
    .line 39
    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 43
    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v3, "ondestory:"

    .line 50
    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const-string v2, "MiniAppActivity"

    .line 62
    .line 63
    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    sget-object v1, Lcom/cloud/tmc/miniapp/utils/OooO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooO;

    .line 67
    .line 68
    :try_start_0
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/utils/OooO;->OooO00o()Lcom/cloud/tmc/miniapp/task/OooO0O0;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    iget-object v1, v1, Lcom/cloud/tmc/miniapp/task/OooO0O0;->OooO00o:Ljava/util/LinkedList;

    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catchall_0
    move-exception v1

    .line 79
    const-string v3, "NormalTaskQueueUtils"

    .line 80
    .line 81
    invoke-static {v3, v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    :goto_0
    sget-object v1, Lcom/cloud/tmc/miniapp/NewTaskManager;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;

    .line 85
    .line 86
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getInstance()Lcom/cloud/tmc/miniapp/NewTaskManager;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v1, v3}, Lcom/cloud/tmc/miniapp/NewTaskManager;->removeActivityStack(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/LogEProxy;

    .line 96
    .line 97
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/LogEProxy;

    .line 102
    .line 103
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 104
    .line 105
    invoke-interface {v1, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/LogEProxy;->destroy(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 109
    .line 110
    const/4 v3, 0x0

    .line 111
    if-eqz v1, :cond_1

    .line 112
    .line 113
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 114
    .line 115
    invoke-virtual {v4}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    if-eqz v4, :cond_0

    .line 120
    .line 121
    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    goto :goto_1

    .line 126
    :cond_0
    move-object v4, v3

    .line 127
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    const-string v6, "resendH5PageStack_"

    .line 133
    .line 134
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    invoke-interface {v1, v4}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->unregister(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    :cond_1
    const-class v1, Lcom/cloud/tmc/kernel/proxy/renderprocess/IOnRenderProcessGoneProxy;

    .line 148
    .line 149
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/renderprocess/IOnRenderProcessGoneProxy;

    .line 154
    .line 155
    invoke-interface {v1, p0}, Lcom/cloud/tmc/kernel/proxy/renderprocess/IOnRenderProcessGoneProxy;->unRegister(Lcom/cloud/tmc/kernel/proxy/renderprocess/IOnRenderProcessGoneProxy$Listener;)V

    .line 156
    .line 157
    .line 158
    const-class v1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 159
    .line 160
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 165
    .line 166
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 167
    .line 168
    invoke-virtual {v4}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    invoke-interface {v1, v4}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    if-eqz v1, :cond_2

    .line 177
    .line 178
    sget-object v4, Lcom/cloud/tmc/worker/WorkerManager;->Companion:Lcom/cloud/tmc/worker/WorkerManager$Companion;

    .line 179
    .line 180
    invoke-virtual {v4}, Lcom/cloud/tmc/worker/WorkerManager$Companion;->getEVENT_RESEND_PAGE_ENTER()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    invoke-interface {v1, v4}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->unregister(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    :cond_2
    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 188
    .line 189
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    check-cast v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 194
    .line 195
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 196
    .line 197
    sget-object v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_CLEAR:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 198
    .line 199
    new-instance v7, Landroid/os/Bundle;

    .line 200
    .line 201
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 202
    .line 203
    .line 204
    sget-object v8, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    .line 205
    .line 206
    const-string v9, "app"

    .line 207
    .line 208
    invoke-virtual {v7, v8, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    sget-object v8, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    .line 212
    .line 213
    iget-object v9, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->uniqueChainId:Ljava/lang/Long;

    .line 214
    .line 215
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v9

    .line 219
    invoke-virtual {v7, v8, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    iget-object v8, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 223
    .line 224
    const-string v9, "miniapp_id"

    .line 225
    .line 226
    invoke-virtual {v7, v9, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    sget-object v8, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    .line 230
    .line 231
    iget-object v10, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 232
    .line 233
    invoke-virtual {v8, p0, v10}, Lcom/cloud/tmc/integration/utils/AppUtils;->queryShortcutExist(Landroid/content/Context;Ljava/lang/String;)Z

    .line 234
    .line 235
    .line 236
    move-result v8

    .line 237
    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v8

    .line 241
    const-string v10, "queryShortcutExist"

    .line 242
    .line 243
    invoke-virtual {v7, v10, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    sget-object v8, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 247
    .line 248
    const-string v8, "clear"

    .line 249
    .line 250
    invoke-interface {v4, v5, v6, v8, v7}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 251
    .line 252
    .line 253
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v4

    .line 257
    check-cast v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 258
    .line 259
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 260
    .line 261
    sget-object v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_CLEAR:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 262
    .line 263
    new-instance v7, Landroid/os/Bundle;

    .line 264
    .line 265
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 266
    .line 267
    .line 268
    const-string v10, "openMiniAppFailedReason"

    .line 269
    .line 270
    const-string v11, "\u5173\u95ed"

    .line 271
    .line 272
    invoke-virtual {v7, v10, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    invoke-interface {v4, v5, v6, v8, v7}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 276
    .line 277
    .line 278
    const-class v4, Lcom/cloud/tmc/integration/performanceanalyse/screen/IScreenInspectProxy;

    .line 279
    .line 280
    invoke-static {v4}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v4

    .line 284
    check-cast v4, Lcom/cloud/tmc/integration/performanceanalyse/screen/IScreenInspectProxy;

    .line 285
    .line 286
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 287
    .line 288
    invoke-virtual {v5}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 289
    .line 290
    .line 291
    move-result-object v5

    .line 292
    invoke-interface {v4, v5}, Lcom/cloud/tmc/integration/performanceanalyse/screen/IScreenInspectProxy;->appDestroy(Lcom/cloud/tmc/integration/structure/App;)V

    .line 293
    .line 294
    .line 295
    const-class v4, Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;

    .line 296
    .line 297
    invoke-static {v4}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v4

    .line 301
    check-cast v4, Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;

    .line 302
    .line 303
    invoke-interface {v4}, Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;->clearDownloadCall()V

    .line 304
    .line 305
    .line 306
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->controller:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    .line 307
    .line 308
    if-eqz v4, :cond_3

    .line 309
    .line 310
    invoke-interface {v4}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->finish()V

    .line 311
    .line 312
    .line 313
    :cond_3
    iput-object v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->controller:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    .line 314
    .line 315
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->quickModeController:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    .line 316
    .line 317
    if-eqz v4, :cond_4

    .line 318
    .line 319
    invoke-interface {v4}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->finish()V

    .line 320
    .line 321
    .line 322
    :cond_4
    iput-object v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->quickModeController:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    .line 323
    .line 324
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 325
    .line 326
    invoke-virtual {v4}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 327
    .line 328
    .line 329
    move-result-object v4

    .line 330
    const-wide/16 v5, 0x0

    .line 331
    .line 332
    if-eqz v4, :cond_5

    .line 333
    .line 334
    const-class v7, Lcom/cloud/tmc/integration/model/StartTime;

    .line 335
    .line 336
    invoke-interface {v4, v7}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v4

    .line 340
    check-cast v4, Lcom/cloud/tmc/integration/model/StartTime;

    .line 341
    .line 342
    if-eqz v4, :cond_5

    .line 343
    .line 344
    invoke-virtual {v4}, Lcom/cloud/tmc/integration/model/StartTime;->getStartTime()J

    .line 345
    .line 346
    .line 347
    move-result-wide v7

    .line 348
    goto :goto_2

    .line 349
    :cond_5
    move-wide v7, v5

    .line 350
    :goto_2
    cmp-long v4, v7, v5

    .line 351
    .line 352
    if-lez v4, :cond_a

    .line 353
    .line 354
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 355
    .line 356
    .line 357
    move-result-wide v4

    .line 358
    sub-long/2addr v4, v7

    .line 359
    iget-object v6, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 360
    .line 361
    invoke-virtual {v6}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 362
    .line 363
    .line 364
    move-result-object v6

    .line 365
    if-eqz v6, :cond_6

    .line 366
    .line 367
    invoke-interface {v6}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v6

    .line 371
    goto :goto_3

    .line 372
    :cond_6
    move-object v6, v3

    .line 373
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    .line 374
    .line 375
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 376
    .line 377
    .line 378
    const-string v8, "[MiniAppActivity]: app usageTime:"

    .line 379
    .line 380
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    const-string v8, " ms, appId:"

    .line 387
    .line 388
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v6

    .line 398
    invoke-static {v6}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 406
    .line 407
    iget-object v6, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 408
    .line 409
    sget-object v7, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_EXIT_MINIAPP:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 410
    .line 411
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 412
    .line 413
    .line 414
    move-result-object v4

    .line 415
    const-string v5, "usageTime"

    .line 416
    .line 417
    invoke-virtual {v7, v5, v4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 418
    .line 419
    .line 420
    move-result-object v4

    .line 421
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 422
    .line 423
    invoke-virtual {v5}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 424
    .line 425
    .line 426
    move-result-object v5

    .line 427
    if-eqz v5, :cond_7

    .line 428
    .line 429
    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v5

    .line 433
    goto :goto_4

    .line 434
    :cond_7
    move-object v5, v3

    .line 435
    :goto_4
    const-string v7, "miniappId"

    .line 436
    .line 437
    invoke-virtual {v4, v7, v5}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 438
    .line 439
    .line 440
    move-result-object v4

    .line 441
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 442
    .line 443
    invoke-virtual {v4, v9, v5}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 444
    .line 445
    .line 446
    move-result-object v4

    .line 447
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 448
    .line 449
    invoke-virtual {v5}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 450
    .line 451
    .line 452
    move-result-object v5

    .line 453
    if-eqz v5, :cond_8

    .line 454
    .line 455
    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    .line 456
    .line 457
    .line 458
    move-result-object v5

    .line 459
    if-eqz v5, :cond_8

    .line 460
    .line 461
    const-string v7, "scene_id"

    .line 462
    .line 463
    const-string v8, "100000"

    .line 464
    .line 465
    invoke-virtual {v5, v7, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v5

    .line 469
    goto :goto_5

    .line 470
    :cond_8
    move-object v5, v3

    .line 471
    :goto_5
    const-string v7, "scene"

    .line 472
    .line 473
    invoke-virtual {v4, v7, v5}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 474
    .line 475
    .line 476
    move-result-object v4

    .line 477
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 478
    .line 479
    invoke-virtual {v5}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 480
    .line 481
    .line 482
    move-result-object v5

    .line 483
    const-string v7, "fis_type"

    .line 484
    .line 485
    if-eqz v5, :cond_9

    .line 486
    .line 487
    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    .line 488
    .line 489
    .line 490
    move-result-object v5

    .line 491
    if-eqz v5, :cond_9

    .line 492
    .line 493
    const-string v8, "0"

    .line 494
    .line 495
    invoke-virtual {v5, v7, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v5

    .line 499
    goto :goto_6

    .line 500
    :cond_9
    move-object v5, v3

    .line 501
    :goto_6
    invoke-virtual {v4, v7, v5}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 502
    .line 503
    .line 504
    move-result-object v4

    .line 505
    invoke-interface {v1, v6, v4, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    :cond_a
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 509
    .line 510
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 511
    .line 512
    .line 513
    move-result-object v1

    .line 514
    if-eqz v1, :cond_b

    .line 515
    .line 516
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object v1

    .line 520
    if-eqz v1, :cond_b

    .line 521
    .line 522
    const-class v4, Lcom/cloud/tmc/ad/IAdManagerProxy;

    .line 523
    .line 524
    invoke-static {v4}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 525
    .line 526
    .line 527
    move-result-object v4

    .line 528
    check-cast v4, Lcom/cloud/tmc/ad/IAdManagerProxy;

    .line 529
    .line 530
    invoke-interface {v4, v1}, Lcom/cloud/tmc/ad/IAdManagerProxy;->onDestroy(Ljava/lang/String;)V

    .line 531
    .line 532
    .line 533
    :cond_b
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 534
    .line 535
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/ActivityHelper;->onDestroy()V

    .line 536
    .line 537
    .line 538
    sget-object v1, Lcom/cloud/tmc/integration/utils/PopWindowManager;->INSTANCE:Lcom/cloud/tmc/integration/utils/PopWindowManager;

    .line 539
    .line 540
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMiniAppPopWindowToken()Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v4

    .line 544
    invoke-virtual {v1, v4}, Lcom/cloud/tmc/integration/utils/PopWindowManager;->clearPopWindow(Ljava/lang/String;)V

    .line 545
    .line 546
    .line 547
    :try_start_1
    sget-object v1, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;

    .line 548
    .line 549
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->getAppMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 550
    .line 551
    .line 552
    move-result-object v1

    .line 553
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 554
    .line 555
    invoke-static {v1}, Lkotlin/jvm/internal/TypeIntrinsics;->d(Ljava/lang/Object;)Ljava/util/Map;

    .line 556
    .line 557
    .line 558
    move-result-object v1

    .line 559
    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    .line 561
    .line 562
    const-class v1, Lcom/cloud/tmc/integration/proxy/IUpdateLoadingStepProxy;

    .line 563
    .line 564
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 565
    .line 566
    .line 567
    move-result-object v1

    .line 568
    check-cast v1, Lcom/cloud/tmc/integration/proxy/IUpdateLoadingStepProxy;

    .line 569
    .line 570
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 571
    .line 572
    if-nez v4, :cond_c

    .line 573
    .line 574
    goto :goto_7

    .line 575
    :cond_c
    move-object v0, v4

    .line 576
    :goto_7
    invoke-interface {v1, v0}, Lcom/cloud/tmc/integration/proxy/IUpdateLoadingStepProxy;->removeUpdateLoadingListener(Ljava/lang/String;)V

    .line 577
    .line 578
    .line 579
    const-class v0, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    .line 580
    .line 581
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 582
    .line 583
    .line 584
    move-result-object v0

    .line 585
    check-cast v0, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    .line 586
    .line 587
    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->clearDownloadAppMap()V

    .line 588
    .line 589
    .line 590
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 591
    .line 592
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 593
    .line 594
    .line 595
    move-result-object v0

    .line 596
    if-eqz v0, :cond_d

    .line 597
    .line 598
    invoke-interface {v0, v3}, Lcom/cloud/tmc/integration/structure/App;->setMiniappLifecycleCallback(Lcom/cloud/tmc/integration/callback/ICheckMiniAppLifecycleCallback;)V

    .line 599
    .line 600
    .line 601
    goto :goto_8

    .line 602
    :catchall_1
    move-exception v0

    .line 603
    goto :goto_9

    .line 604
    :cond_d
    :goto_8
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 605
    .line 606
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 607
    .line 608
    .line 609
    move-result-object v0

    .line 610
    if-eqz v0, :cond_e

    .line 611
    .line 612
    invoke-interface {v0, v3}, Lcom/cloud/tmc/integration/structure/App;->setAddhomeShowCallback(Lcom/cloud/tmc/integration/callback/IShowAddHomeCallback;)V

    .line 613
    .line 614
    .line 615
    :cond_e
    sget-object v0, Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    .line 616
    .line 617
    new-instance v1, Lcom/cloud/tmc/miniapp/ui/p;

    .line 618
    .line 619
    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/ui/p;-><init>()V

    .line 620
    .line 621
    .line 622
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 623
    .line 624
    .line 625
    goto :goto_a

    .line 626
    :goto_9
    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 627
    .line 628
    .line 629
    :goto_a
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;

    .line 630
    .line 631
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 632
    .line 633
    .line 634
    move-result-object v0

    .line 635
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;

    .line 636
    .line 637
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 638
    .line 639
    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;->clearPerformanceImproves(Ljava/lang/String;)V

    .line 640
    .line 641
    .line 642
    new-instance v0, Landroid/os/Bundle;

    .line 643
    .line 644
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 645
    .line 646
    .line 647
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->OPEN_MINI_APP_FAILED_REASON:Ljava/lang/String;

    .line 648
    .line 649
    invoke-virtual {v0, v1, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    .line 651
    .line 652
    new-instance v1, Lcom/cloud/tmc/integration/chain/insert/AppInsertState;

    .line 653
    .line 654
    invoke-direct {v1, v0}, Lcom/cloud/tmc/integration/chain/insert/AppInsertState;-><init>(Landroid/os/Bundle;)V

    .line 655
    .line 656
    .line 657
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    .line 658
    .line 659
    invoke-virtual {v1, v0}, Lcom/cloud/tmc/integration/chain/insert/AppInsertState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    .line 660
    .line 661
    .line 662
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    .line 663
    .line 664
    new-instance v1, Landroid/os/Bundle;

    .line 665
    .line 666
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 667
    .line 668
    .line 669
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->destroy(Landroid/os/Bundle;)V

    .line 670
    .line 671
    .line 672
    const-class v0, Lcom/cloud/tmc/render/proxy/SessionUtilProxy;

    .line 673
    .line 674
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 675
    .line 676
    .line 677
    move-result-object v0

    .line 678
    check-cast v0, Lcom/cloud/tmc/render/proxy/SessionUtilProxy;

    .line 679
    .line 680
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 681
    .line 682
    invoke-interface {v0, v1}, Lcom/cloud/tmc/render/proxy/SessionUtilProxy;->removeSession(Ljava/lang/String;)V

    .line 683
    .line 684
    .line 685
    const-class v0, Lcom/cloud/tmc/integration/structure/VirtualAppManager;

    .line 686
    .line 687
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 688
    .line 689
    .line 690
    move-result-object v1

    .line 691
    check-cast v1, Lcom/cloud/tmc/integration/structure/VirtualAppManager;

    .line 692
    .line 693
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 694
    .line 695
    .line 696
    move-result-object v0

    .line 697
    check-cast v0, Lcom/cloud/tmc/integration/structure/VirtualAppManager;

    .line 698
    .line 699
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 700
    .line 701
    invoke-interface {v0, v4}, Lcom/cloud/tmc/integration/structure/AppManager;->findApp(Ljava/lang/String;)Lcom/cloud/tmc/integration/structure/App;

    .line 702
    .line 703
    .line 704
    move-result-object v0

    .line 705
    invoke-interface {v1, v0}, Lcom/cloud/tmc/integration/structure/AppManager;->exitApp(Lcom/cloud/tmc/integration/structure/App;)V

    .line 706
    .line 707
    .line 708
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 709
    .line 710
    if-eqz v0, :cond_f

    .line 711
    .line 712
    sget-object v1, Lcom/cloud/tmc/integration/minicover/NativeComponentManager;->INSTANCE:Lcom/cloud/tmc/integration/minicover/NativeComponentManager;

    .line 713
    .line 714
    invoke-virtual {v1, v0}, Lcom/cloud/tmc/integration/minicover/NativeComponentManager;->removeForAppId(Ljava/lang/String;)V

    .line 715
    .line 716
    .line 717
    :cond_f
    sget-object v0, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->INSTANCE:Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;

    .line 718
    .line 719
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 720
    .line 721
    const/4 v4, 0x0

    .line 722
    invoke-virtual {v0, v1, v4}, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->removeInterectMFAH(Ljava/lang/String;Z)V

    .line 723
    .line 724
    .line 725
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 726
    .line 727
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->removeAllMfahListener(Ljava/lang/String;)V

    .line 728
    .line 729
    .line 730
    :try_start_2
    sget-object v0, Lcom/cloud/tmc/miniapp/bridge/PrivacyBridge;->Companion:Lcom/cloud/tmc/miniapp/bridge/PrivacyBridge$OooO00o;

    .line 731
    .line 732
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 733
    .line 734
    .line 735
    invoke-static {}, Lcom/cloud/tmc/miniapp/bridge/PrivacyBridge;->access$getPrivacyDialogMap$cp()Ljava/util/concurrent/ConcurrentHashMap;

    .line 736
    .line 737
    .line 738
    move-result-object v0

    .line 739
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 740
    .line 741
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 742
    .line 743
    .line 744
    move-result v0

    .line 745
    if-eqz v0, :cond_10

    .line 746
    .line 747
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 748
    .line 749
    new-instance v1, Ljava/lang/StringBuilder;

    .line 750
    .line 751
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 752
    .line 753
    .line 754
    const-string v4, "removePrivacyDialog appId = "

    .line 755
    .line 756
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    .line 758
    .line 759
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    .line 761
    .line 762
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 763
    .line 764
    .line 765
    move-result-object v0

    .line 766
    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    .line 768
    .line 769
    invoke-static {}, Lcom/cloud/tmc/miniapp/bridge/PrivacyBridge;->access$getPrivacyDialogMap$cp()Ljava/util/concurrent/ConcurrentHashMap;

    .line 770
    .line 771
    .line 772
    move-result-object v0

    .line 773
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 774
    .line 775
    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->d(Ljava/lang/Object;)Ljava/util/Map;

    .line 776
    .line 777
    .line 778
    move-result-object v0

    .line 779
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    .line 781
    .line 782
    goto :goto_b

    .line 783
    :catchall_2
    move-exception v0

    .line 784
    goto/16 :goto_11

    .line 785
    .line 786
    :cond_10
    :goto_b
    invoke-static {}, Lcom/cloud/tmc/miniapp/bridge/PrivacyBridge;->access$getPrivacySimpleDialogMap$cp()Ljava/util/concurrent/ConcurrentHashMap;

    .line 787
    .line 788
    .line 789
    move-result-object v0

    .line 790
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 791
    .line 792
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 793
    .line 794
    .line 795
    move-result v0

    .line 796
    if-eqz v0, :cond_11

    .line 797
    .line 798
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 799
    .line 800
    new-instance v1, Ljava/lang/StringBuilder;

    .line 801
    .line 802
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 803
    .line 804
    .line 805
    const-string v4, "removePrivacySimpleDialog appId = "

    .line 806
    .line 807
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    .line 809
    .line 810
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    .line 812
    .line 813
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 814
    .line 815
    .line 816
    move-result-object v0

    .line 817
    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    .line 819
    .line 820
    invoke-static {}, Lcom/cloud/tmc/miniapp/bridge/PrivacyBridge;->access$getPrivacySimpleDialogMap$cp()Ljava/util/concurrent/ConcurrentHashMap;

    .line 821
    .line 822
    .line 823
    move-result-object v0

    .line 824
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 825
    .line 826
    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->d(Ljava/lang/Object;)Ljava/util/Map;

    .line 827
    .line 828
    .line 829
    move-result-object v0

    .line 830
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    .line 832
    .line 833
    :cond_11
    invoke-static {}, Lcom/cloud/tmc/miniapp/TmcInitializer;->getExtensionManager()Lcom/cloud/tmc/kernel/extension/ExtensionManager;

    .line 834
    .line 835
    .line 836
    move-result-object v0

    .line 837
    instance-of v1, v0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;

    .line 838
    .line 839
    if-eqz v1, :cond_12

    .line 840
    .line 841
    check-cast v0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;

    .line 842
    .line 843
    goto :goto_c

    .line 844
    :cond_12
    move-object v0, v3

    .line 845
    :goto_c
    if-eqz v0, :cond_13

    .line 846
    .line 847
    invoke-virtual {v0}, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->getNodeExtensionMap()Ljava/util/Map;

    .line 848
    .line 849
    .line 850
    move-result-object v0

    .line 851
    goto :goto_d

    .line 852
    :cond_13
    move-object v0, v3

    .line 853
    :goto_d
    if-eqz v0, :cond_18

    .line 854
    .line 855
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 856
    .line 857
    .line 858
    move-result-object v1

    .line 859
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 860
    .line 861
    .line 862
    move-result-object v1

    .line 863
    :cond_14
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 864
    .line 865
    .line 866
    move-result v4

    .line 867
    if-eqz v4, :cond_17

    .line 868
    .line 869
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 870
    .line 871
    .line 872
    move-result-object v4

    .line 873
    check-cast v4, Lcom/cloud/tmc/kernel/node/Node;

    .line 874
    .line 875
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 876
    .line 877
    if-eqz v5, :cond_14

    .line 878
    .line 879
    instance-of v6, v4, Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 880
    .line 881
    if-eqz v6, :cond_15

    .line 882
    .line 883
    move-object v6, v4

    .line 884
    check-cast v6, Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 885
    .line 886
    goto :goto_f

    .line 887
    :cond_15
    move-object v6, v3

    .line 888
    :goto_f
    if-eqz v6, :cond_16

    .line 889
    .line 890
    invoke-virtual {v6}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getAppId()Ljava/lang/String;

    .line 891
    .line 892
    .line 893
    move-result-object v6

    .line 894
    goto :goto_10

    .line 895
    :cond_16
    move-object v6, v3

    .line 896
    :goto_10
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 897
    .line 898
    .line 899
    move-result v5

    .line 900
    if-eqz v5, :cond_14

    .line 901
    .line 902
    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    .line 904
    .line 905
    new-instance v5, Ljava/lang/StringBuilder;

    .line 906
    .line 907
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 908
    .line 909
    .line 910
    const-string v6, "nodeExtensionMap remove "

    .line 911
    .line 912
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    .line 914
    .line 915
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 916
    .line 917
    .line 918
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 919
    .line 920
    .line 921
    move-result-object v4

    .line 922
    invoke-static {v2, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    .line 924
    .line 925
    goto :goto_e

    .line 926
    :cond_17
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 927
    .line 928
    .line 929
    move-result v0

    .line 930
    new-instance v1, Ljava/lang/StringBuilder;

    .line 931
    .line 932
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 933
    .line 934
    .line 935
    const-string v3, "nodeExtensionMap size ->"

    .line 936
    .line 937
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 938
    .line 939
    .line 940
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 941
    .line 942
    .line 943
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 944
    .line 945
    .line 946
    move-result-object v0

    .line 947
    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 948
    .line 949
    .line 950
    goto :goto_12

    .line 951
    :goto_11
    const-string v1, "privacyDialogMap"

    .line 952
    .line 953
    invoke-static {v2, v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 954
    .line 955
    .line 956
    :cond_18
    :goto_12
    return-void
.end method

.method public onGetCurrentAppId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    :cond_0
    return-object v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    const-string v0, "[MiniActivity]\uff1aonKeyUp()"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-eqz p2, :cond_9

    .line 8
    .line 9
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x4

    .line 14
    if-ne v1, v2, :cond_9

    .line 15
    .line 16
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_9

    .line 21
    .line 22
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-ne v1, v2, :cond_0

    .line 27
    .line 28
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_0

    .line 33
    .line 34
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->nativeComponentIntercept()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move v1, v0

    .line 40
    :goto_0
    const/4 v2, 0x1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    return v2

    .line 44
    :cond_1
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const/4 v3, 0x0

    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    move-object v1, v3

    .line 59
    :goto_1
    instance-of v4, v1, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;

    .line 60
    .line 61
    if-eqz v4, :cond_3

    .line 62
    .line 63
    check-cast v1, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_3
    move-object v1, v3

    .line 67
    :goto_2
    if-eqz v1, :cond_5

    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->getFragmentManager()Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    if-eqz v1, :cond_5

    .line 74
    .line 75
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 76
    .line 77
    invoke-virtual {v4}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    if-eqz v4, :cond_4

    .line 82
    .line 83
    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/App;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    goto :goto_3

    .line 88
    :cond_4
    move-object v4, v3

    .line 89
    :goto_3
    invoke-interface {v1, v4}, Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;->findFragmentForPage(Lcom/cloud/tmc/integration/structure/Page;)Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    goto :goto_4

    .line 94
    :cond_5
    move-object v1, v3

    .line 95
    :goto_4
    instance-of v4, v1, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;

    .line 96
    .line 97
    if-eqz v4, :cond_6

    .line 98
    .line 99
    move-object v3, v1

    .line 100
    check-cast v3, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;

    .line 101
    .line 102
    :cond_6
    if-eqz v3, :cond_7

    .line 103
    .line 104
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->shouldInterceptOnKeyDown()Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-ne v1, v2, :cond_7

    .line 109
    .line 110
    move v1, v2

    .line 111
    goto :goto_5

    .line 112
    :cond_7
    move v1, v0

    .line 113
    :goto_5
    if-eqz v1, :cond_8

    .line 114
    .line 115
    move v0, v2

    .line 116
    goto :goto_6

    .line 117
    :cond_8
    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 118
    .line 119
    invoke-virtual {v1, p1, p2}, Lcom/cloud/tmc/integration/ActivityHelper;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 120
    .line 121
    .line 122
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    goto :goto_6

    .line 124
    :catchall_0
    move-exception p1

    .line 125
    const-string p2, "MiniAppActivity"

    .line 126
    .line 127
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    .line 129
    .line 130
    :cond_9
    :goto_6
    return v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->startMiniApp(Landroid/content/Intent;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onPackageLoadFailed(Lcom/cloud/tmc/integration/model/PrepareData;Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onPackageLoadSuccess()V
    .locals 0

    .line 1
    return-void
.end method

.method public onPause()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "onPause: "

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "MiniAppActivity"

    .line 24
    .line 25
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->onPause()V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    iput-wide v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->onPauseStopTimeStamp:J

    .line 38
    .line 39
    iget-wide v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->miniappResumeTimestamp:J

    .line 40
    .line 41
    const-wide/16 v4, 0x0

    .line 42
    .line 43
    cmp-long v4, v2, v4

    .line 44
    .line 45
    if-nez v4, :cond_0

    .line 46
    .line 47
    iget-wide v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->miniappForegroundTime:J

    .line 48
    .line 49
    iget-wide v4, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->miniappStartTime:J

    .line 50
    .line 51
    sub-long/2addr v0, v4

    .line 52
    add-long/2addr v0, v2

    .line 53
    iput-wide v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->miniappForegroundTime:J

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    iget-wide v4, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->miniappForegroundTime:J

    .line 57
    .line 58
    sub-long/2addr v0, v2

    .line 59
    add-long/2addr v0, v4

    .line 60
    iput-wide v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->miniappForegroundTime:J

    .line 61
    .line 62
    :goto_0
    return-void
.end method

.method public onPinForLaterClick(Lcom/cloud/tmc/miniapp/widget/StatusLayout;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/extension/PinForLaterExtensionKt;->pinForLater(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    sget-object v0, Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    .line 9
    .line 10
    new-instance v1, Lcom/cloud/tmc/miniapp/ui/c0;

    .line 11
    .line 12
    invoke-direct {v1, p0, p1}, Lcom/cloud/tmc/miniapp/ui/c0;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object p1, p2

    .line 18
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v1, "miniappId="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p1, " is Destroy by onRenderProcessGone"

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string v0, "onRenderProcessGone"

    .line 41
    .line 42
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sget-object p1, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    .line 46
    .line 47
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 48
    .line 49
    const-string v1, "4"

    .line 50
    .line 51
    invoke-virtual {p1, v0, v1}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->reportMiniAppLauncherFailedTrack(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    sget-object p1, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;->CLOSE_APP:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    const/4 v1, 0x2

    .line 58
    invoke-static {p0, p1, v0, v1, p2}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->finishMiniActivity$default(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;ZILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public onResume()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "onResume: "

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "MiniAppActivity"

    .line 24
    .line 25
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 29
    .line 30
    const-string v2, ""

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    const-class v3, Lcom/cloud/tmc/render/proxy/SessionUtilProxy;

    .line 35
    .line 36
    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Lcom/cloud/tmc/render/proxy/SessionUtilProxy;

    .line 41
    .line 42
    iget-boolean v4, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->isValidOnResume:Z

    .line 43
    .line 44
    const/4 v5, 0x0

    .line 45
    invoke-interface {v3, v0, v4, v5}, Lcom/cloud/tmc/render/proxy/SessionUtilProxy;->updateSession(Ljava/lang/String;ZZ)V

    .line 46
    .line 47
    .line 48
    const/4 v3, 0x1

    .line 49
    iput-boolean v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->isValidOnResume:Z

    .line 50
    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v4, "onResume:checkTaskId:"

    .line 57
    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-static {v1, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sget-object v1, Lcom/cloud/tmc/miniapp/NewTaskManager;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;

    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getInstance()Lcom/cloud/tmc/miniapp/NewTaskManager;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {v3, v0, v4}, Lcom/cloud/tmc/miniapp/NewTaskManager;->checkTaskId(Ljava/lang/String;Ljava/lang/Class;)V

    .line 82
    .line 83
    .line 84
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 85
    .line 86
    if-nez v3, :cond_0

    .line 87
    .line 88
    move-object v3, v2

    .line 89
    :cond_0
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getInstance()Lcom/cloud/tmc/miniapp/NewTaskManager;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v4, v5}, Lcom/cloud/tmc/miniapp/NewTaskManager;->checkUseSingleTaskMode(Ljava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    if-eqz v4, :cond_1

    .line 100
    .line 101
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->rootTaskId:Ljava/lang/String;

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_1
    move-object v0, v2

    .line 105
    :goto_0
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getInstance()Lcom/cloud/tmc/miniapp/NewTaskManager;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-virtual {v4, v3, v0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->moveToForeground(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getInstance()Lcom/cloud/tmc/miniapp/NewTaskManager;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/NewTaskManager;->addActivityStack(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    :cond_2
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->onResume()V

    .line 124
    .line 125
    .line 126
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/OooO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooO;

    .line 127
    .line 128
    :try_start_0
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/utils/OooO;->OooO00o()Lcom/cloud/tmc/miniapp/task/OooO0O0;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/task/OooO0O0;->OooO00o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :catchall_0
    move-exception v0

    .line 137
    const-string v1, "NormalTaskQueueUtils"

    .line 138
    .line 139
    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    .line 141
    .line 142
    :goto_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 143
    .line 144
    invoke-static {p0, v0}, Lcom/cloud/tmc/miniapp/ui/extension/PinForLaterExtensionKt;->checkPinForLaterStatus(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 148
    .line 149
    .line 150
    move-result-wide v0

    .line 151
    iput-wide v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->miniappResumeTimestamp:J

    .line 152
    .line 153
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->checkAddHomeTipStatus()V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->statusLayoutOnResume()V

    .line 157
    .line 158
    .line 159
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    const-string v0, "outState"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "onSaveInstanceState"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "MiniAppActivity"

    .line 26
    .line 27
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 31
    .line 32
    const-string v1, "miniAppId"

    .line 33
    .line 34
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mode:Ljava/lang/String;

    .line 38
    .line 39
    const-string v1, "mode"

    .line 40
    .line 41
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->version:Ljava/lang/String;

    .line 45
    .line 46
    const-string v1, "version"

    .line 47
    .line 48
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->devToken:Ljava/lang/String;

    .line 52
    .line 53
    const-string v1, "sign"

    .line 54
    .line 55
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->onStart()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "onStart: "

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "MiniAppActivity"

    .line 24
    .line 25
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-class v0, Lcom/cloud/tmc/integration/proxy/OfflineAppProxy;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/cloud/tmc/integration/proxy/OfflineAppProxy;

    .line 35
    .line 36
    invoke-interface {v0, p0}, Lcom/cloud/tmc/integration/proxy/OfflineAppProxy;->addShortCutListener(Lcom/cloud/tmc/integration/proxy/OfflineAppProxy$CreateShortCutsListener;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    const-class v1, Lcom/cloud/tmc/integration/model/ForegroundTime;

    .line 48
    .line 49
    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Lcom/cloud/tmc/integration/model/ForegroundTime;

    .line 54
    .line 55
    if-eqz v0, :cond_0

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/ForegroundTime;->setStartTime()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/ForegroundTime;->addStartCount()V

    .line 61
    .line 62
    .line 63
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 8

    .line 1
    invoke-super {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->onStop()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->onStop()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    const-class v1, Lcom/cloud/tmc/integration/model/ForegroundTime;

    .line 18
    .line 19
    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/cloud/tmc/integration/model/ForegroundTime;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    :try_start_0
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/ForegroundTime;->setEndTime()Lcom/cloud/tmc/integration/model/ForegroundRangTime;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 32
    .line 33
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 38
    .line 39
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 40
    .line 41
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_MINIAPP_FOREGROUND_TIME:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 42
    .line 43
    new-instance v4, Landroid/os/Bundle;

    .line 44
    .line 45
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v5, "foregroundRandomId"

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->getForegroundRandomId()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-virtual {v4, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string v5, "foregroundStartTime"

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->getStartTime()J

    .line 60
    .line 61
    .line 62
    move-result-wide v6

    .line 63
    invoke-virtual {v4, v5, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 64
    .line 65
    .line 66
    const-string v5, "foregroundEndTime"

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->getEndTime()J

    .line 69
    .line 70
    .line 71
    move-result-wide v6

    .line 72
    invoke-virtual {v4, v5, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 73
    .line 74
    .line 75
    const-string v5, "foregroundTime"

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->getCostTime()J

    .line 78
    .line 79
    .line 80
    move-result-wide v6

    .line 81
    invoke-virtual {v4, v5, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 82
    .line 83
    .line 84
    const-string v5, "foregroundStartCount"

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->getForegroundStartCount()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    invoke-virtual {v4, v5, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 91
    .line 92
    .line 93
    const-string v0, "page_path"

    .line 94
    .line 95
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 96
    .line 97
    invoke-virtual {v5}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    if-eqz v5, :cond_0

    .line 102
    .line 103
    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/App;->getHomePagePath()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    goto :goto_0

    .line 108
    :catchall_0
    move-exception v0

    .line 109
    goto :goto_1

    .line 110
    :cond_0
    const/4 v5, 0x0

    .line 111
    :goto_0
    const-string v6, ""

    .line 112
    .line 113
    if-nez v5, :cond_1

    .line 114
    .line 115
    move-object v5, v6

    .line 116
    :cond_1
    :try_start_1
    invoke-virtual {v4, v0, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 120
    .line 121
    invoke-interface {v1, v2, v3, v6, v4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :goto_1
    const-string v1, "MiniAppActivity"

    .line 126
    .line 127
    const-string v2, "Failed to report foreground time"

    .line 128
    .line 129
    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    .line 131
    .line 132
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 133
    .line 134
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    const-string v1, "openMCScene"

    .line 139
    .line 140
    if-eqz v0, :cond_3

    .line 141
    .line 142
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    if-eqz v0, :cond_3

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    :cond_3
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 152
    .line 153
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    if-eqz v0, :cond_4

    .line 158
    .line 159
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getSceneParams()Landroid/os/Bundle;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    if-eqz v0, :cond_4

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    :cond_4
    const-class v0, Lcom/cloud/tmc/integration/proxy/OfflineAppProxy;

    .line 169
    .line 170
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    check-cast v0, Lcom/cloud/tmc/integration/proxy/OfflineAppProxy;

    .line 175
    .line 176
    invoke-interface {v0, p0}, Lcom/cloud/tmc/integration/proxy/OfflineAppProxy;->removeShortCutListener(Lcom/cloud/tmc/integration/proxy/OfflineAppProxy$CreateShortCutsListener;)V

    .line 177
    .line 178
    .line 179
    return-void
.end method

.method public onUpdateStep(Lcom/cloud/tmc/integration/activity/LoadStepAction;)V
    .locals 1

    .line 1
    const-string v0, "step"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->updateStepProgress(Lcom/cloud/tmc/integration/activity/LoadStepAction;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final reSendDelayPageEnterToWorker()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->isResendH5PageStack:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move-object v0, v2

    .line 26
    :goto_0
    instance-of v3, v0, Lcom/cloud/tmc/integration/structure/app/TmcAppContext;

    .line 27
    .line 28
    if-eqz v3, :cond_2

    .line 29
    .line 30
    check-cast v0, Lcom/cloud/tmc/integration/structure/app/TmcAppContext;

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    move-object v0, v2

    .line 34
    :goto_1
    if-eqz v0, :cond_7

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->getFragmentManager()Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_7

    .line 41
    .line 42
    invoke-interface {v0}, Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;->getFragments()Ljava/util/Set;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_7

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    const/4 v4, 0x0

    .line 53
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-eqz v5, :cond_7

    .line 58
    .line 59
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    add-int/lit8 v6, v4, 0x1

    .line 64
    .line 65
    if-gez v4, :cond_3

    .line 66
    .line 67
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 68
    .line 69
    .line 70
    :cond_3
    check-cast v5, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    .line 71
    .line 72
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    sub-int/2addr v7, v1

    .line 77
    if-ne v4, v7, :cond_4

    .line 78
    .line 79
    return-void

    .line 80
    :cond_4
    if-eqz v5, :cond_6

    .line 81
    .line 82
    const-string v4, "tmcFragment"

    .line 83
    .line 84
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    instance-of v4, v5, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;

    .line 88
    .line 89
    if-eqz v4, :cond_6

    .line 90
    .line 91
    move-object v4, v5

    .line 92
    check-cast v4, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;

    .line 93
    .line 94
    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;->isSendPageEnter()Z

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    if-nez v7, :cond_6

    .line 99
    .line 100
    invoke-virtual {v4, v1}, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;->setSendPageEnter(Z)V

    .line 101
    .line 102
    .line 103
    instance-of v4, v5, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;

    .line 104
    .line 105
    if-eqz v4, :cond_5

    .line 106
    .line 107
    check-cast v5, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_5
    move-object v5, v2

    .line 111
    :goto_3
    if-eqz v5, :cond_6

    .line 112
    .line 113
    invoke-static {v5, v2, v1, v2}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->sendPageEnterToWorker$default(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Ljava/util/Map;ILjava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    :cond_6
    move v4, v6

    .line 117
    goto :goto_2

    .line 118
    :cond_7
    return-void
.end method

.method public final refresh()V
    .locals 4

    .line 1
    :try_start_0
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_REFRESH:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 12
    .line 13
    const-string v3, ""

    .line 14
    .line 15
    invoke-interface {v0, v1, v2, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getDialog()Lcom/cloud/tmc/miniapp/dialog/OooOOO0;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismiss()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->refreshApp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v2, "refresh fail!!,msg:"

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void
.end method

.method public final refreshApp()V
    .locals 7

    .line 1
    const-string v0, "Refresh app..."

    .line 2
    .line 3
    const-string v1, "MiniAppActivity"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getSceneParams()Landroid/os/Bundle;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    goto :goto_4

    .line 24
    :cond_0
    move-object v3, v2

    .line 25
    :goto_0
    const-string v4, "appLoadResult"

    .line 26
    .line 27
    invoke-static {v3, v4}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lcom/cloud/tmc/integration/structure/AppLoadResult;

    .line 32
    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    iget-object v3, v3, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    .line 36
    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    iget-object v3, v3, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->pages:Ljava/util/List;

    .line 40
    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Ljava/lang/String;

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    move-object v3, v2

    .line 51
    :goto_1
    if-eqz v0, :cond_2

    .line 52
    .line 53
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    goto :goto_2

    .line 58
    :cond_2
    move-object v4, v2

    .line 59
    :goto_2
    if-eqz v0, :cond_3

    .line 60
    .line 61
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getSceneParams()Landroid/os/Bundle;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    :cond_3
    if-eqz v3, :cond_6

    .line 66
    .line 67
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-nez v5, :cond_4

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_4
    if-eqz v4, :cond_6

    .line 75
    .line 76
    if-nez v2, :cond_5

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_5
    const-string v5, "reLaunch"

    .line 80
    .line 81
    invoke-interface {v0, v3, v5}, Lcom/cloud/tmc/integration/structure/App;->putRouteType(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const-string v5, "navigationType"

    .line 85
    .line 86
    const-string v6, "refreshApp"

    .line 87
    .line 88
    invoke-virtual {v2, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-interface {v0, v3, v4, v2}, Lcom/cloud/tmc/integration/structure/App;->relaunchToUrl(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 92
    .line 93
    .line 94
    goto :goto_5

    .line 95
    :cond_6
    :goto_3
    const-string v0, "refreshApp null"

    .line 96
    .line 97
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :goto_4
    const-string v2, "Refresh fail!"

    .line 102
    .line 103
    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    :goto_5
    return-void
.end method

.method public refreshAppInfo(Lcom/cloud/tmc/integration/model/AppModel;)V
    .locals 4

    .line 1
    const-string v0, "appModelNew"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->miniappStartTime:J

    .line 7
    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v3, "refreshAppInfo: miniappStartTime: "

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v0, " appModelNew: "

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string v0, "MiniAppActivity"

    .line 34
    .line 35
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->miniappStartTime:J

    .line 39
    .line 40
    const-wide/16 v2, 0x0

    .line 41
    .line 42
    cmp-long p1, v0, v2

    .line 43
    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->dispatchOnCheckForUpdateListener()V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getMShowCompleteTaskQueue()Lcom/cloud/tmc/miniapp/task/OooO0O0;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    new-instance v0, Lcom/cloud/tmc/miniapp/task/OooO00o;

    .line 55
    .line 56
    new-instance v1, Lcom/cloud/tmc/miniapp/ui/q;

    .line 57
    .line 58
    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/ui/q;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 59
    .line 60
    .line 61
    const-string v2, "onCheckForUpdate"

    .line 62
    .line 63
    invoke-direct {v0, v2, v1}, Lcom/cloud/tmc/miniapp/task/OooO00o;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/task/OooO0O0;->OooO00o(Lcom/cloud/tmc/miniapp/task/OooO00o;)V

    .line 67
    .line 68
    .line 69
    :goto_0
    return-void
.end method

.method public final reload(ZLandroid/os/Bundle;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->reportFailureClickReloadButton()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/structure/App;->updateHideMiniappLoadingStatus(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    const-string v1, "MiniAppActivity"

    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v1, 0x0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move-object v0, v1

    .line 40
    :goto_1
    instance-of v2, v0, Lcom/cloud/tmc/integration/structure/app/TmcAppContext;

    .line 41
    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    move-object v1, v0

    .line 45
    check-cast v1, Lcom/cloud/tmc/integration/structure/app/TmcAppContext;

    .line 46
    .line 47
    :cond_2
    if-eqz v1, :cond_3

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->getFragmentManager()Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    invoke-interface {v0}, Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;->getFragments()Ljava/util/Set;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_3

    .line 70
    .line 71
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    .line 76
    .line 77
    sget-object v2, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;->REFRESH:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->setExitType(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;)V

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_3
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/u;

    .line 84
    .line 85
    invoke-direct {v0, p0, p2, p1}, Lcom/cloud/tmc/miniapp/ui/u;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Landroid/os/Bundle;Z)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public final removeBottomDialogMenu(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "id"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getDialog()Lcom/cloud/tmc/miniapp/dialog/OooOOO0;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO00o(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final restoreBottomDialogMenu(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "id"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getDialog()Lcom/cloud/tmc/miniapp/dialog/OooOOO0;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, v1, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO:Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Ljava/util/Map$Entry;

    .line 37
    .line 38
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;

    .line 43
    .line 44
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->getId()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_0

    .line 53
    .line 54
    iget-object p1, v1, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO0o:Lcom/cloud/tmc/miniapp/dialog/OooOOO;

    .line 55
    .line 56
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const-string v3, "it.key"

    .line 61
    .line 62
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    check-cast v0, Ljava/lang/Number;

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    const-string v4, "it.value"

    .line 76
    .line 77
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v0, v3}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->addItem(ILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    iget-object p1, v1, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO:Landroid/util/ArrayMap;

    .line 84
    .line 85
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    :cond_1
    return-void
.end method

.method public final setAppId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setController(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->controller:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    .line 2
    .line 3
    return-void
.end method

.method public final setCurrentDelayTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->currentDelayTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final setDelayShowError(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->delayShowError:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setDevToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->devToken:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setEnableQuickMode(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->enableQuickMode:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setErrorException(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->errorException:Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    .line 2
    .line 3
    return-void
.end method

.method public final setFirstLaunch(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->isFirstLaunch:Z

    .line 2
    .line 3
    return-void
.end method

.method public setLoadingProgressConfig(Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->setLoadingProgressConfig(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final setMiniappForegroundTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->miniappForegroundTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final setMiniappResumeTimestamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->miniappResumeTimestamp:J

    .line 2
    .line 3
    return-void
.end method

.method public final setMiniappStartTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->miniappStartTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final setMode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mode:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setMsgAppName(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->msgAppName:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setOnPauseStopTimeStamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->onPauseStopTimeStamp:J

    .line 2
    .line 3
    return-void
.end method

.method public final setPrepareContext(Lcom/cloud/tmc/integration/model/PrepareContext;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->prepareContext:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 2
    .line 3
    return-void
.end method

.method public final setQuickModeController(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->quickModeController:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    .line 2
    .line 3
    return-void
.end method

.method public final setQuickModeStartStatus(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->quickModeStartStatus:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setRootTaskId(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->rootTaskId:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setSceneId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->sceneId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setTempAppLogo(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->tempAppLogo:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setTempAppName(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->tempAppName:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->version:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final showAddHomeTipsDialog(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->appId:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getAddHomeDialogView()Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const-string v2, "appId"

    .line 12
    .line 13
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput p1, v1, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooOOO0:I

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v2, "context"

    .line 23
    .line 24
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-virtual {v1, p1, v0, v3}, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO00o(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p1, v0}, Lcom/cloud/tmc/miniapp/widget/popupview/MiniAddHomeTipDialogView;->OooO0O0(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    sget v2, Lcom/cloud/tmc/miniapp/R$anim;->mini_view_toast_enter:I

    .line 46
    .line 47
    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {v1, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 52
    .line 53
    .line 54
    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 55
    .line 56
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 61
    .line 62
    new-instance v2, Landroid/os/Bundle;

    .line 63
    .line 64
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v3, "quit_pop_ex"

    .line 68
    .line 69
    invoke-interface {p1, v0, v3, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->recordForCommon(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 70
    .line 71
    .line 72
    invoke-static {v1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisible(Landroid/view/View;)V

    .line 73
    .line 74
    .line 75
    :cond_0
    return-void
.end method

.method public showComplete()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showComplete(Lcom/cloud/tmc/miniapp/action/StatusAction;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public showCustomErrorLayout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showCustomErrorLayout(Lcom/cloud/tmc/miniapp/action/StatusAction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public showError(Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showError(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public showErrorLayout(IIILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ZZLcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p7}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showErrorLayout(Lcom/cloud/tmc/miniapp/action/StatusAction;IIILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ZZLcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    return-void
.end method

.method public showErrorLayout(IILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    .line 2
    invoke-static/range {p0 .. p5}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showErrorLayout(Lcom/cloud/tmc/miniapp/action/StatusAction;IILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    return-void
.end method

.method public showErrorLayout(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    .line 3
    invoke-static/range {p0 .. p5}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showErrorLayout(Lcom/cloud/tmc/miniapp/action/StatusAction;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    return-void
.end method

.method public showErrorLayout(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;ZZLcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    .line 4
    invoke-static/range {p0 .. p8}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showErrorLayout(Lcom/cloud/tmc/miniapp/action/StatusAction;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;ZZLcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    return-void
.end method

.method public showLoading()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showLoading(Lcom/cloud/tmc/miniapp/action/StatusAction;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public showLoadingLogo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showLoadingLogo(Lcom/cloud/tmc/miniapp/action/StatusAction;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public showLoadingView(Lcom/cloud/tmc/integration/model/EntryInfo;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getHandler()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/cloud/tmc/miniapp/ui/y;

    .line 6
    .line 7
    invoke-direct {v1, p1, p0}, Lcom/cloud/tmc/miniapp/ui/y;-><init>(Lcom/cloud/tmc/integration/model/EntryInfo;Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public showMainLayoutAlpha(F)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showMainLayoutAlpha(Lcom/cloud/tmc/miniapp/action/StatusAction;F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final showMsgBubbleToast()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/d0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/d0;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->post(Ljava/lang/Runnable;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public showNoNetwork(Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showNoNetwork(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    return-void
.end method

.method public showPhotoEmpty(IILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showPhotoEmpty(Lcom/cloud/tmc/miniapp/action/StatusAction;IILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final showPopUpWindowRunnable(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showPopUpWindowRunnable:Ljava/lang/Runnable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/g;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/g;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showPopUpWindowRunnable:Ljava/lang/Runnable;

    .line 14
    .line 15
    invoke-virtual {p0, v0, p1, p2}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public showStatusLoading()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getHandler()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/cloud/tmc/miniapp/ui/z;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/ui/z;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public showTaskDescription(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public showUnstableNetwork(Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showUnstableNetwork(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public showUpgradeHintPrompt(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getViewThemeMode()Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showUpgradeHintView(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public showUpgradeHintView(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/action/VersionUpdateAction$DefaultImpls;->showUpgradeHintView(Lcom/cloud/tmc/miniapp/action/VersionUpdateAction;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public startApp(Landroid/content/Intent;)V
    .locals 2

    .line 1
    const-string v0, "MiniAppActivity"

    .line 2
    .line 3
    const-string v1, "startApp"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/l;

    .line 9
    .line 10
    invoke-direct {v0, p0, p1}, Lcom/cloud/tmc/miniapp/ui/l;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Landroid/content/Intent;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public startAsyncApp(Landroid/content/Intent;)V
    .locals 6

    .line 1
    const-string v0, "MiniAppActivity"

    .line 2
    .line 3
    const-string v1, "startAsyncApp"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->mActivityHelper:Lcom/cloud/tmc/integration/ActivityHelper;

    .line 9
    .line 10
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-eqz v2, :cond_4

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_2

    .line 26
    :cond_0
    move-object v4, v3

    .line 27
    :goto_0
    const-string v5, "startBundle"

    .line 28
    .line 29
    invoke-static {v4, v5}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Lcom/cloud/tmc/integration/activity/StartClientBundle;

    .line 34
    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    move-object p1, v3

    .line 43
    :goto_1
    const-string v5, "startAppModel"

    .line 44
    .line 45
    invoke-static {p1, v5}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Lcom/cloud/tmc/integration/model/AppModel;

    .line 50
    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    invoke-interface {v2, p1}, Lcom/cloud/tmc/integration/structure/App;->updateAppModel(Lcom/cloud/tmc/integration/model/AppModel;)V

    .line 54
    .line 55
    .line 56
    :cond_2
    instance-of p1, v2, Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 57
    .line 58
    if-eqz p1, :cond_3

    .line 59
    .line 60
    move-object v3, v2

    .line 61
    check-cast v3, Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 62
    .line 63
    :cond_3
    if-eqz v3, :cond_4

    .line 64
    .line 65
    const-string p1, "startAsyncApp success"

    .line 66
    .line 67
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const/4 p1, 0x1

    .line 71
    invoke-virtual {v3, p1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->setAsyncLaunchStatus(Z)V

    .line 72
    .line 73
    .line 74
    iget-object p1, v4, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startParams:Landroid/os/Bundle;

    .line 75
    .line 76
    invoke-virtual {v3, p1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->setmStartParams(Landroid/os/Bundle;)V

    .line 77
    .line 78
    .line 79
    iget-object p1, v4, Lcom/cloud/tmc/integration/activity/StartClientBundle;->sceneParams:Landroid/os/Bundle;

    .line 80
    .line 81
    invoke-virtual {v3, p1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->setmSceneParams(Landroid/os/Bundle;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, v4, Lcom/cloud/tmc/integration/activity/StartClientBundle;->sceneParams:Landroid/os/Bundle;

    .line 85
    .line 86
    const-string v4, "appLoadResult"

    .line 87
    .line 88
    invoke-static {p1, v4}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Lcom/cloud/tmc/integration/structure/AppLoadResult;

    .line 93
    .line 94
    invoke-virtual {v3, p1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->setmAppLoadResult(Lcom/cloud/tmc/integration/structure/AppLoadResult;)V

    .line 95
    .line 96
    .line 97
    const-class v4, Lcom/cloud/tmc/integration/structure/AppLoadResult;

    .line 98
    .line 99
    invoke-interface {v2, v4, p1}, Lcom/cloud/tmc/kernel/node/DataNode;->setData(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getBackToPagePath()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    const-string v2, "appNode.backToPagePath"

    .line 107
    .line 108
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-lez p1, :cond_4

    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getHandler()Landroid/os/Handler;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    new-instance v2, Lcom/cloud/tmc/miniapp/ui/i;

    .line 122
    .line 123
    invoke-direct {v2, v3}, Lcom/cloud/tmc/miniapp/ui/i;-><init>(Lcom/cloud/tmc/integration/structure/node/AppNode;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    .line 128
    .line 129
    goto :goto_3

    .line 130
    :goto_2
    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    .line 132
    .line 133
    :cond_4
    :goto_3
    return-void
.end method

.method public statusLayoutCreateShortCutsSuccess(Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->statusLayoutCreateShortCutsSuccess(Lcom/cloud/tmc/miniapp/action/StatusAction;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public statusLayoutOnResume()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->statusLayoutOnResume(Lcom/cloud/tmc/miniapp/action/StatusAction;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final swipeBack(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;)V
    .locals 1

    .line 1
    const-string v0, "mFragment"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->getPage()Lcom/cloud/tmc/integration/structure/Page;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    const-class v0, Lcom/cloud/tmc/integration/model/AlertBeforeUnloadCache;

    .line 13
    .line 14
    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/cloud/tmc/integration/model/AlertBeforeUnloadCache;

    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/model/AlertBeforeUnloadCache;->setEnabled(Z)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->goBack()V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method public final updateBottomDialogMenu(Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;)V
    .locals 7

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getDialog()Lcom/cloud/tmc/miniapp/dialog/OooOOO0;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, v1, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO0o:Lcom/cloud/tmc/miniapp/dialog/OooOOO;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->getData()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v2, 0x0

    .line 27
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const/4 v4, -0x1

    .line 32
    if-eqz v3, :cond_2

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    add-int/lit8 v5, v2, 0x1

    .line 39
    .line 40
    if-gez v2, :cond_0

    .line 41
    .line 42
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 43
    .line 44
    .line 45
    :cond_0
    check-cast v3, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;

    .line 46
    .line 47
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->getId()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->getId()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    move v2, v5

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    move v2, v4

    .line 65
    :goto_1
    if-eq v2, v4, :cond_3

    .line 66
    .line 67
    iget-object v0, v1, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO0o:Lcom/cloud/tmc/miniapp/dialog/OooOOO;

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->getIcon()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    invoke-virtual {v0, v3}, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->setIcon(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->getName()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->setName(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-object p1, v1, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO0o:Lcom/cloud/tmc/miniapp/dialog/OooOOO;

    .line 90
    .line 91
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 92
    .line 93
    .line 94
    :cond_3
    return-void
.end method

.method public updateStepAnimation(Lcom/cloud/tmc/integration/activity/LoadStepAction;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->updateStepAnimation(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/integration/activity/LoadStepAction;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public updateStepProgress(Lcom/cloud/tmc/integration/activity/LoadStepAction;)V
    .locals 2

    .line 1
    const-string v0, "step"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getHandler()Landroid/os/Handler;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcom/cloud/tmc/miniapp/ui/e0;

    .line 11
    .line 12
    invoke-direct {v1, p0, p1}, Lcom/cloud/tmc/miniapp/ui/e0;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Lcom/cloud/tmc/integration/activity/LoadStepAction;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method
