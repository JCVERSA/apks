.class public Lcom/cloud/tmc/integration/structure/node/AppNode;
.super Lcom/cloud/tmc/kernel/node/NodeInstance;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/structure/App;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cloud/tmc/integration/structure/node/AppNode;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "TmcApp:App"


# instance fields
.field private APIAddhomeShowStatus:Z

.field private MFAHShowStatus:Z

.field private appCallback:Lcom/cloud/tmc/integration/callback/IAppCallback;

.field private appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

.field protected appId:Ljava/lang/String;

.field private asyncLaunchStatus:Z

.field private backPressedProcessor:Lcom/cloud/tmc/integration/processor/IBackPressedProcessor;

.field private backToPagePath:Ljava/lang/String;

.field private checkMiniAppLifecycleCallback:Lcom/cloud/tmc/integration/callback/ICheckMiniAppLifecycleCallback;

.field private currentInterectCallbackId:Ljava/lang/String;

.field private currentMFAHStatus:Ljava/lang/Boolean;

.field private guideBackAddhomeShowStatus:Z

.field private guideBottomAddhomeShowStatus:Z

.field private guideTopAddhomeShowStatus:Z

.field private iAsyncStartLoadingCallback:Lcom/cloud/tmc/integration/callback/IAsyncStartLoadingCallback;

.field private isHideMiniAppLoaingStatus:Z

.field private loadHtmlDataCallback:Lcom/cloud/tmc/integration/callback/ILoadHtmlDataCallback;

.field private mAlreadyStarted:Z

.field protected mAppContext:Lcom/cloud/tmc/integration/structure/AppContext;

.field private mAppLoadResult:Lcom/cloud/tmc/integration/structure/AppLoadResult;

.field protected mAppManager:Lcom/cloud/tmc/integration/structure/AppManager;

.field private mAppModel:Lcom/cloud/tmc/integration/model/AppModel;

.field protected mAppType:Ljava/lang/String;

.field protected mAppVersion:Ljava/lang/String;

.field private mEngineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

.field private mHasPaused:Z

.field protected mImmutableStartParams:Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableBundle;

.field private final mIsDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsExited:Z

.field private mMainJSUrl:Ljava/lang/String;

.field private mNetworkListener:Lcom/cloud/tmc/kernel/utils/NetworkUtil$NetworkListener;

.field private final mPageReadyListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/tmc/integration/structure/App$PageReadyListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPagesType:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingOnStart:Z

.field private mPermissionDialogMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mRouteType:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mSceneParams:Landroid/os/Bundle;

.field private mSendResumeInRestart:Z

.field protected mStartParams:Landroid/os/Bundle;

.field protected mStartToken:J

.field private mStartUrl:Ljava/lang/String;

.field private mWaitLoadFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private miniAppAutoPopover:Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

.field private miniappLoadSuccess:Z

.field private restarting:Z

.field private showAddhomeCallback:Lcom/cloud/tmc/integration/callback/IShowAddHomeCallback;

.field private startTime:J

.field private targetPageOnProcess:Lcom/cloud/tmc/integration/structure/Page;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/integration/structure/node/AppNode$7;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/integration/structure/node/AppNode$7;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/integration/structure/node/AppNode;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 31
    invoke-direct {p0, p1}, Lcom/cloud/tmc/kernel/node/NodeInstance;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mWaitLoadFuture:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    .line 33
    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mHasPaused:Z

    .line 34
    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mSendResumeInRestart:Z

    .line 35
    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAlreadyStarted:Z

    .line 36
    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mIsExited:Z

    .line 37
    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mPendingOnStart:Z

    .line 38
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mIsDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->miniappLoadSuccess:Z

    .line 40
    iput-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->targetPageOnProcess:Lcom/cloud/tmc/integration/structure/Page;

    .line 41
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mPagesType:Ljava/util/HashMap;

    .line 42
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mRouteType:Ljava/util/HashMap;

    .line 43
    new-instance v2, Lcom/cloud/tmc/integration/processor/BackPressedProcessor;

    invoke-direct {v2}, Lcom/cloud/tmc/integration/processor/BackPressedProcessor;-><init>()V

    iput-object v2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->backPressedProcessor:Lcom/cloud/tmc/integration/processor/IBackPressedProcessor;

    .line 44
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mPermissionDialogMap:Ljava/util/LinkedHashMap;

    .line 45
    iput-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->currentInterectCallbackId:Ljava/lang/String;

    .line 46
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->currentMFAHStatus:Ljava/lang/Boolean;

    const-wide/16 v2, 0x0

    .line 47
    iput-wide v2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->startTime:J

    .line 48
    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->asyncLaunchStatus:Z

    .line 49
    const-string v2, ""

    iput-object v2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->backToPagePath:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->iAsyncStartLoadingCallback:Lcom/cloud/tmc/integration/callback/IAsyncStartLoadingCallback;

    .line 51
    iput-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->miniAppAutoPopover:Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    .line 52
    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->isHideMiniAppLoaingStatus:Z

    .line 53
    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->restarting:Z

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mPageReadyListeners:Ljava/util/List;

    .line 55
    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->MFAHShowStatus:Z

    .line 56
    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->APIAddhomeShowStatus:Z

    .line 57
    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->guideBottomAddhomeShowStatus:Z

    .line 58
    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->guideTopAddhomeShowStatus:Z

    .line 59
    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->guideBackAddhomeShowStatus:Z

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->appId:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mStartToken:J

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppType:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppVersion:Ljava/lang/String;

    .line 64
    const-class v0, Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mStartParams:Landroid/os/Bundle;

    .line 65
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mSceneParams:Landroid/os/Bundle;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mStartUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/cloud/tmc/integration/structure/AppManager;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/tmc/kernel/node/NodeInstance;-><init>(Lcom/cloud/tmc/kernel/node/Node;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mWaitLoadFuture:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mHasPaused:Z

    .line 4
    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mSendResumeInRestart:Z

    .line 5
    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAlreadyStarted:Z

    .line 6
    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mIsExited:Z

    .line 7
    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mPendingOnStart:Z

    .line 8
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mIsDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->miniappLoadSuccess:Z

    .line 10
    iput-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->targetPageOnProcess:Lcom/cloud/tmc/integration/structure/Page;

    .line 11
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mPagesType:Ljava/util/HashMap;

    .line 12
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mRouteType:Ljava/util/HashMap;

    .line 13
    new-instance v2, Lcom/cloud/tmc/integration/processor/BackPressedProcessor;

    invoke-direct {v2}, Lcom/cloud/tmc/integration/processor/BackPressedProcessor;-><init>()V

    iput-object v2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->backPressedProcessor:Lcom/cloud/tmc/integration/processor/IBackPressedProcessor;

    .line 14
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mPermissionDialogMap:Ljava/util/LinkedHashMap;

    .line 15
    iput-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->currentInterectCallbackId:Ljava/lang/String;

    .line 16
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->currentMFAHStatus:Ljava/lang/Boolean;

    const-wide/16 v2, 0x0

    .line 17
    iput-wide v2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->startTime:J

    .line 18
    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->asyncLaunchStatus:Z

    .line 19
    const-string v2, ""

    iput-object v2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->backToPagePath:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->iAsyncStartLoadingCallback:Lcom/cloud/tmc/integration/callback/IAsyncStartLoadingCallback;

    .line 21
    iput-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->miniAppAutoPopover:Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    .line 22
    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->isHideMiniAppLoaingStatus:Z

    .line 23
    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->restarting:Z

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mPageReadyListeners:Ljava/util/List;

    .line 25
    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->MFAHShowStatus:Z

    .line 26
    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->APIAddhomeShowStatus:Z

    .line 27
    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->guideBottomAddhomeShowStatus:Z

    .line 28
    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->guideTopAddhomeShowStatus:Z

    .line 29
    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->guideBackAddhomeShowStatus:Z

    .line 30
    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppManager:Lcom/cloud/tmc/integration/structure/AppManager;

    return-void
.end method

.method public static synthetic a(Lcom/cloud/tmc/integration/structure/node/AppNode;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/structure/node/AppNode;->lambda$pushPage$1(Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/cloud/tmc/integration/structure/node/AppNode;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/node/PageNode;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/structure/node/AppNode;->lambda$redirectTo$0(Ljava/lang/String;Lcom/cloud/tmc/integration/structure/node/PageNode;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic c(Lcom/cloud/tmc/integration/structure/node/AppNode;)Lcom/cloud/tmc/integration/structure/AppLoadResult;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppLoadResult:Lcom/cloud/tmc/integration/structure/AppLoadResult;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic d(Lcom/cloud/tmc/integration/structure/node/AppNode;)Lcom/cloud/tmc/kernel/engine/IEngine;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mEngineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

    .line 2
    .line 3
    return-object p0
.end method

.method private doPushPage(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->hide()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-static {p2}, Lcom/cloud/tmc/integration/utils/AppUtils;->isExitPage(Landroid/os/Bundle;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x1

    .line 16
    if-nez v1, :cond_2

    .line 17
    .line 18
    invoke-static {p3}, Lcom/cloud/tmc/integration/utils/AppUtils;->isExitPage(Landroid/os/Bundle;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move v1, v2

    .line 26
    goto :goto_1

    .line 27
    :cond_2
    :goto_0
    move v1, v3

    .line 28
    :goto_1
    const-class v4, Lcom/cloud/tmc/integration/proxy/PageFactory;

    .line 29
    .line 30
    invoke-static {v4}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    move-object v5, v4

    .line 35
    check-cast v5, Lcom/cloud/tmc/integration/proxy/PageFactory;

    .line 36
    .line 37
    const-string v7, "https://100000.miniapp.transsion.com/index.html"

    .line 38
    .line 39
    move-object v6, p0

    .line 40
    move-object v8, p1

    .line 41
    move-object v9, p2

    .line 42
    move-object v10, p3

    .line 43
    invoke-interface/range {v5 .. v10}, Lcom/cloud/tmc/integration/proxy/PageFactory;->createPage(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/cloud/tmc/integration/structure/node/PageNode;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string p2, "navigationType"

    .line 48
    .line 49
    invoke-virtual {p3, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result p3

    .line 57
    if-nez p3, :cond_3

    .line 58
    .line 59
    invoke-static {p1, p2}, Lcom/cloud/tmc/integration/utils/TrackPointUtils;->pageRouteTrackStart(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_3
    iget-object p2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mEngineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

    .line 63
    .line 64
    const-class p3, Lcom/cloud/tmc/integration/model/WorkerStore;

    .line 65
    .line 66
    if-nez p2, :cond_4

    .line 67
    .line 68
    new-instance p2, Lcom/cloud/tmc/integration/model/WorkerStore;

    .line 69
    .line 70
    const-string v4, ""

    .line 71
    .line 72
    invoke-direct {p2, v4}, Lcom/cloud/tmc/integration/model/WorkerStore;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, p3, p2}, Lcom/cloud/tmc/kernel/node/NodeInstance;->setData(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_4
    new-instance v4, Lcom/cloud/tmc/integration/model/WorkerStore;

    .line 80
    .line 81
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/engine/IEngine;->getWorkerId()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    invoke-direct {v4, p2}, Lcom/cloud/tmc/integration/model/WorkerStore;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, p3, v4}, Lcom/cloud/tmc/kernel/node/NodeInstance;->setData(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :goto_2
    if-eqz v1, :cond_5

    .line 92
    .line 93
    new-instance p2, Lcom/cloud/tmc/integration/structure/Page$AnimStore;

    .line 94
    .line 95
    invoke-direct {p2, v3, v2}, Lcom/cloud/tmc/integration/structure/Page$AnimStore;-><init>(ZZ)V

    .line 96
    .line 97
    .line 98
    const-class p3, Lcom/cloud/tmc/integration/structure/Page$AnimStore;

    .line 99
    .line 100
    invoke-virtual {p1, p3, p2}, Lcom/cloud/tmc/kernel/node/NodeInstance;->setData(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    new-instance p2, Lcom/cloud/tmc/integration/model/StatusStore;

    .line 104
    .line 105
    invoke-direct {p2, v3}, Lcom/cloud/tmc/integration/model/StatusStore;-><init>(Z)V

    .line 106
    .line 107
    .line 108
    const-class p3, Lcom/cloud/tmc/integration/model/StatusStore;

    .line 109
    .line 110
    invoke-virtual {p1, p3, p2}, Lcom/cloud/tmc/kernel/node/NodeInstance;->setData(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    :cond_5
    if-eqz v0, :cond_6

    .line 114
    .line 115
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    goto :goto_3

    .line 120
    :cond_6
    const/4 p2, 0x0

    .line 121
    :goto_3
    const-string p3, "prePageId"

    .line 122
    .line 123
    invoke-virtual {p1, p3, p2}, Lcom/cloud/tmc/kernel/node/NodeInstance;->putStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/kernel/node/NodeInstance;->pushChild(Lcom/cloud/tmc/kernel/node/Node;)V

    .line 127
    .line 128
    .line 129
    iget-object p2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppContext:Lcom/cloud/tmc/integration/structure/AppContext;

    .line 130
    .line 131
    if-eqz p2, :cond_7

    .line 132
    .line 133
    invoke-interface {p2, p1}, Lcom/cloud/tmc/integration/structure/AppContext;->pushPage(Lcom/cloud/tmc/integration/structure/Page;)Z

    .line 134
    .line 135
    .line 136
    :cond_7
    return-void
.end method

.method private doRedirectTo(Ljava/lang/String;Lcom/cloud/tmc/integration/structure/node/PageNode;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getRouteType(Ljava/lang/String;Z)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->hide()V

    .line 13
    .line 14
    .line 15
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    const-class v2, Lcom/cloud/tmc/integration/structure/Page$AnimStore;

    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    invoke-interface {v1, v2, v3}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Lcom/cloud/tmc/integration/structure/Page$AnimStore;

    .line 29
    .line 30
    iput-boolean v0, v4, Lcom/cloud/tmc/integration/structure/Page$AnimStore;->disableExit:Z

    .line 31
    .line 32
    const-string v4, "exitPage"

    .line 33
    .line 34
    invoke-interface {v1, v4, v3}, Lcom/cloud/tmc/kernel/node/ValueStore;->putBooleanValue(Ljava/lang/String;Z)V

    .line 35
    .line 36
    .line 37
    new-instance v4, Lcom/cloud/tmc/integration/structure/Page$TaskContext;

    .line 38
    .line 39
    const-string v5, "navigateBack"

    .line 40
    .line 41
    invoke-direct {v4, v0, p2, v5, p1}, Lcom/cloud/tmc/integration/structure/Page$TaskContext;-><init>(ILcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {v1, v0, v4}, Lcom/cloud/tmc/integration/structure/Page;->exit(ZLcom/cloud/tmc/integration/structure/Page$TaskContext;)V

    .line 45
    .line 46
    .line 47
    new-instance p1, Lcom/cloud/tmc/integration/structure/Page$AnimStore;

    .line 48
    .line 49
    invoke-direct {p1, v3, v0}, Lcom/cloud/tmc/integration/structure/Page$AnimStore;-><init>(ZZ)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, v2, p1}, Lcom/cloud/tmc/kernel/node/NodeInstance;->setData(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    new-instance p1, Lcom/cloud/tmc/integration/model/StatusStore;

    .line 56
    .line 57
    invoke-direct {p1, v3}, Lcom/cloud/tmc/integration/model/StatusStore;-><init>(Z)V

    .line 58
    .line 59
    .line 60
    const-class v0, Lcom/cloud/tmc/integration/model/StatusStore;

    .line 61
    .line 62
    invoke-virtual {p2, v0, p1}, Lcom/cloud/tmc/kernel/node/NodeInstance;->setData(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v0, "active page is tab page, path: "

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    const-string v0, "TmcApp:App"

    .line 88
    .line 89
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 93
    .line 94
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    goto :goto_1

    .line 99
    :cond_2
    const/4 p1, 0x0

    .line 100
    :goto_1
    const-string v0, "prePageId"

    .line 101
    .line 102
    invoke-virtual {p2, v0, p1}, Lcom/cloud/tmc/kernel/node/NodeInstance;->putStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, p2}, Lcom/cloud/tmc/kernel/node/NodeInstance;->pushChild(Lcom/cloud/tmc/kernel/node/Node;)V

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppContext:Lcom/cloud/tmc/integration/structure/AppContext;

    .line 109
    .line 110
    if-eqz p1, :cond_3

    .line 111
    .line 112
    invoke-interface {p1, p2}, Lcom/cloud/tmc/integration/structure/AppContext;->pushPage(Lcom/cloud/tmc/integration/structure/Page;)Z

    .line 113
    .line 114
    .line 115
    :cond_3
    return-void
.end method

.method static bridge synthetic e(Lcom/cloud/tmc/integration/structure/node/AppNode;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mStartUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic f(Lcom/cloud/tmc/integration/structure/node/AppNode;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->onEngineInitFailed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic g(Lcom/cloud/tmc/integration/structure/node/AppNode;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->onEngineInitSuccess()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic h(Lcom/cloud/tmc/integration/structure/node/AppNode;Lcom/cloud/tmc/integration/structure/AppLoadResult;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/structure/node/AppNode;->onLoadResult(Lcom/cloud/tmc/integration/structure/AppLoadResult;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic i(Lcom/cloud/tmc/integration/structure/node/AppNode;Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->sendNetworkChangeEvent(Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$pushPage$1(Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1, p2}, Lcom/cloud/tmc/integration/structure/node/AppNode;->doPushPage(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$redirectTo$0(Ljava/lang/String;Lcom/cloud/tmc/integration/structure/node/PageNode;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/integration/structure/node/AppNode;->doRedirectTo(Ljava/lang/String;Lcom/cloud/tmc/integration/structure/node/PageNode;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private onEngineInitFailed()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onEngineInitFailed! type: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getAppType()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "TmcApp:App"

    .line 23
    .line 24
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAlreadyStarted:Z

    .line 29
    .line 30
    const-class v0, Lcom/cloud/tmc/integration/proxy/ToastProxy;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/cloud/tmc/integration/proxy/ToastProxy;

    .line 37
    .line 38
    const-string v1, "Engine init failed!"

    .line 39
    .line 40
    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/proxy/ToastProxy;->toast(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method private onEngineInitSuccess()V
    .locals 4

    .line 1
    new-instance v0, Lcom/cloud/tmc/integration/structure/node/AppNode$5;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/cloud/tmc/integration/structure/node/AppNode$5;-><init>(Lcom/cloud/tmc/integration/structure/node/AppNode;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mWaitLoadFuture:Ljava/util/concurrent/Future;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    xor-int/lit8 v1, v1, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v3, "onEngineInitSuccess startPageAsync: "

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const-string v3, "TmcApp:App"

    .line 36
    .line 37
    invoke-static {v3, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    sget-object v1, Lcom/cloud/tmc/kernel/executor/ExecutorType;->URGENT_DISPLAY:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    .line 43
    .line 44
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 49
    .line 50
    .line 51
    :goto_1
    return-void
.end method

.method private onLoadResult(Lcom/cloud/tmc/integration/structure/AppLoadResult;J)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appType:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppType:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mEngineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

    .line 13
    .line 14
    iget-object v0, p1, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appType:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppType:Ljava/lang/String;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p1, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appType:Ljava/lang/String;

    .line 19
    .line 20
    invoke-direct {p0, v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->trySetupEngineProxy(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p1, Lcom/cloud/tmc/integration/structure/AppLoadResult;->mainJsUrl:Ljava/lang/String;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mMainJSUrl:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v0, p1, Lcom/cloud/tmc/integration/structure/AppLoadResult;->mainHtmlUrl:Ljava/lang/String;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mStartUrl:Ljava/lang/String;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appVersion:Ljava/lang/String;

    .line 32
    .line 33
    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppVersion:Ljava/lang/String;

    .line 34
    .line 35
    iget-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppContext:Lcom/cloud/tmc/integration/structure/AppContext;

    .line 36
    .line 37
    if-nez p1, :cond_1

    .line 38
    .line 39
    const-string p1, "TmcApp:App"

    .line 40
    .line 41
    const-string p2, "onStart but appContext == null! move to pending!"

    .line 42
    .line 43
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/4 p1, 0x1

    .line 47
    iput-boolean p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mPendingOnStart:Z

    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    new-instance p1, Lcom/cloud/tmc/integration/model/StartTime;

    .line 51
    .line 52
    invoke-direct {p1, p2, p3}, Lcom/cloud/tmc/integration/model/StartTime;-><init>(J)V

    .line 53
    .line 54
    .line 55
    const-class p2, Lcom/cloud/tmc/integration/model/StartTime;

    .line 56
    .line 57
    invoke-virtual {p0, p2, p1}, Lcom/cloud/tmc/kernel/node/NodeInstance;->setData(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->onStart()V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method private sendNetworkChangeEvent(Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->transferNetworkType(Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance v0, Lcom/google/gson/JsonObject;

    .line 18
    .line 19
    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v1, Lcom/google/gson/JsonObject;

    .line 23
    .line 24
    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v2, "none"

    .line 28
    .line 29
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    xor-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const-string v3, "isConnected"

    .line 40
    .line 41
    invoke-virtual {v0, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 42
    .line 43
    .line 44
    const-string v2, "networkType"

    .line 45
    .line 46
    invoke-virtual {v0, v2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string p1, "data"

    .line 50
    .line 51
    invoke-virtual {v1, p1, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void
.end method

.method private sendPageBackToWorker(Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/integration/structure/Page$TaskContext;)V
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string v0, ""

    .line 5
    .line 6
    if-eqz p2, :cond_1

    .line 7
    .line 8
    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    move-object v1, v0

    .line 14
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x1

    .line 19
    if-nez v2, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0, v1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getPageType(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    goto :goto_1

    .line 26
    :cond_2
    move v1, v3

    .line 27
    :goto_1
    new-instance v2, Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v4, "url"

    .line 33
    .line 34
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    const-string v4, "renderId"

    .line 42
    .line 43
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    if-eqz p2, :cond_3

    .line 51
    .line 52
    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    :cond_3
    const-string p2, "exitedRenderId"

    .line 57
    .line 58
    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    const/4 p2, 0x0

    .line 62
    if-nez p3, :cond_4

    .line 63
    .line 64
    move v0, p2

    .line 65
    goto :goto_2

    .line 66
    :cond_4
    iget v0, p3, Lcom/cloud/tmc/integration/structure/Page$TaskContext;->needToExitNum:I

    .line 67
    .line 68
    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const-string v4, "needToExitNum"

    .line 73
    .line 74
    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    const-string v0, "navigateBack"

    .line 78
    .line 79
    if-nez p3, :cond_5

    .line 80
    .line 81
    move-object v4, v0

    .line 82
    goto :goto_3

    .line 83
    :cond_5
    iget-object v4, p3, Lcom/cloud/tmc/integration/structure/Page$TaskContext;->source:Ljava/lang/String;

    .line 84
    .line 85
    :goto_3
    const-string v5, "scene"

    .line 86
    .line 87
    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    if-nez p3, :cond_6

    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_6
    iget-object v0, p3, Lcom/cloud/tmc/integration/structure/Page$TaskContext;->routeType:Ljava/lang/String;

    .line 94
    .line 95
    :goto_4
    const-string p3, "routeType"

    .line 96
    .line 97
    invoke-virtual {v2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object p3

    .line 104
    const-string v0, "delta"

    .line 105
    .line 106
    invoke-virtual {v2, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    if-eq v1, v3, :cond_7

    .line 110
    .line 111
    goto :goto_5

    .line 112
    :cond_7
    move v3, p2

    .line 113
    :goto_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 114
    .line 115
    .line 116
    move-result-object p3

    .line 117
    const-string v0, "isMixedPage"

    .line 118
    .line 119
    invoke-virtual {v2, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    const-string p3, "pageBack"

    .line 123
    .line 124
    invoke-static {p1, p3, p2, v2}, Lcom/cloud/tmc/integration/utils/AppUtils;->sendEventOrLifecycleToWorker(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;ZLjava/util/Map;)V

    .line 125
    .line 126
    .line 127
    return-void
.end method

.method private declared-synchronized trySetupEngineProxy(Ljava/lang/String;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mEngineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppType:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string v0, "TmcApp:App"

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v2, "trySetupEngineProxy already setup with "

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    monitor-exit p0

    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    goto/16 :goto_0

    .line 40
    .line 41
    :cond_0
    :try_start_1
    const-string v0, "TmcApp:App"

    .line 42
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v2, "trySetupEngineProxy with appType: "

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-class v0, Lcom/cloud/tmc/kernel/proxy/core/IEngineFactory;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/core/IEngineFactory;

    .line 70
    .line 71
    invoke-interface {v0, p1}, Lcom/cloud/tmc/kernel/proxy/core/IEngineFactory;->getEngineType(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    const-string v0, "appEngineType"

    .line 76
    .line 77
    invoke-virtual {p0, v0, p1}, Lcom/cloud/tmc/kernel/node/NodeInstance;->putStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppContext:Lcom/cloud/tmc/integration/structure/AppContext;

    .line 81
    .line 82
    if-nez v0, :cond_1

    .line 83
    .line 84
    const-string p1, "TmcApp:App"

    .line 85
    .line 86
    const-string v0, "trySetupEngineProxy cannot init without appContext!"

    .line 87
    .line 88
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    .line 90
    .line 91
    monitor-exit p0

    .line 92
    return-void

    .line 93
    :cond_1
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 94
    .line 95
    .line 96
    move-result-wide v0

    .line 97
    const-class v2, Lcom/cloud/tmc/kernel/proxy/core/IEngineFactory;

    .line 98
    .line 99
    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    check-cast v2, Lcom/cloud/tmc/kernel/proxy/core/IEngineFactory;

    .line 104
    .line 105
    iget-object v3, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->appId:Ljava/lang/String;

    .line 106
    .line 107
    invoke-interface {v2, p1, p0, v3}, Lcom/cloud/tmc/kernel/proxy/core/IEngineFactory;->createEngine(Ljava/lang/String;Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;)Lcom/cloud/tmc/kernel/engine/IEngine;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mEngineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

    .line 112
    .line 113
    new-instance p1, Lcom/cloud/tmc/kernel/model/InitParams;

    .line 114
    .line 115
    invoke-direct {p1}, Lcom/cloud/tmc/kernel/model/InitParams;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getStartToken()J

    .line 119
    .line 120
    .line 121
    move-result-wide v2

    .line 122
    iput-wide v2, p1, Lcom/cloud/tmc/kernel/model/InitParams;->startToken:J

    .line 123
    .line 124
    iget-object v2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mEngineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

    .line 125
    .line 126
    new-instance v3, Lcom/cloud/tmc/integration/structure/node/AppNode$1;

    .line 127
    .line 128
    invoke-direct {v3, p0}, Lcom/cloud/tmc/integration/structure/node/AppNode$1;-><init>(Lcom/cloud/tmc/integration/structure/node/AppNode;)V

    .line 129
    .line 130
    .line 131
    invoke-interface {v2, p1, v3}, Lcom/cloud/tmc/kernel/engine/IEngine;->init(Lcom/cloud/tmc/kernel/model/InitParams;Lcom/cloud/tmc/kernel/engine/EngineInitCallback;)V

    .line 132
    .line 133
    .line 134
    iget-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mEngineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

    .line 135
    .line 136
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/engine/IEngine;->isReady()Z

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    if-nez p1, :cond_2

    .line 141
    .line 142
    const-string p1, "TmcApp:App"

    .line 143
    .line 144
    const-string v2, "showLoading because engine not ready"

    .line 145
    .line 146
    invoke-static {p1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    :cond_2
    iget-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mEngineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

    .line 150
    .line 151
    iget-object v2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mStartParams:Landroid/os/Bundle;

    .line 152
    .line 153
    iget-object v3, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mSceneParams:Landroid/os/Bundle;

    .line 154
    .line 155
    new-instance v4, Lcom/cloud/tmc/integration/structure/node/AppNode$2;

    .line 156
    .line 157
    invoke-direct {v4, p0, v0, v1}, Lcom/cloud/tmc/integration/structure/node/AppNode$2;-><init>(Lcom/cloud/tmc/integration/structure/node/AppNode;J)V

    .line 158
    .line 159
    .line 160
    invoke-interface {p1, v2, v3, v4}, Lcom/cloud/tmc/kernel/engine/IEngine;->setup(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/cloud/tmc/kernel/engine/EngineSetupCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    .line 162
    .line 163
    monitor-exit p0

    .line 164
    return-void

    .line 165
    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 166
    throw p1
.end method


# virtual methods
.method public addPageReadyListener(Lcom/cloud/tmc/integration/structure/App$PageReadyListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mPageReadyListeners:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "TmcApp:App"

    .line 5
    .line 6
    const-string v2, "addPageReadyListener"

    .line 7
    .line 8
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {p1, v1}, Lcom/cloud/tmc/integration/structure/App$PageReadyListener;->onPageReady(Lcom/cloud/tmc/integration/structure/Page;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mPageReadyListeners:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    :goto_0
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p1
.end method

.method public final backPressed()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->backPressed()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->destroy()V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    return v0
.end method

.method public backToHeaderPage()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppContext:Lcom/cloud/tmc/integration/structure/AppContext;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/cloud/tmc/integration/structure/app/TmcAppContext;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/cloud/tmc/integration/structure/app/TmcAppContext;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->getFragmentManager()Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;->findHeaderFragment()Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    if-nez v0, :cond_1

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->getPage()Lcom/cloud/tmc/integration/structure/Page;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    return-void

    .line 29
    :cond_2
    invoke-virtual {p0}, Lcom/cloud/tmc/kernel/node/NodeInstance;->getChildCount()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    new-instance v2, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    const/4 v3, 0x1

    .line 39
    sub-int/2addr v1, v3

    .line 40
    :goto_1
    if-ltz v1, :cond_4

    .line 41
    .line 42
    invoke-virtual {p0, v1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getPageByIndex(I)Lcom/cloud/tmc/integration/structure/Page;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-nez v5, :cond_4

    .line 59
    .line 60
    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-eqz v5, :cond_3

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_3
    const-class v5, Lcom/cloud/tmc/integration/structure/Page$AnimStore;

    .line 68
    .line 69
    invoke-interface {v4, v5, v3}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    check-cast v5, Lcom/cloud/tmc/integration/structure/Page$AnimStore;

    .line 74
    .line 75
    iput-boolean v3, v5, Lcom/cloud/tmc/integration/structure/Page$AnimStore;->disableExit:Z

    .line 76
    .line 77
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    add-int/lit8 v1, v1, -0x1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_5

    .line 92
    .line 93
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    check-cast v1, Lcom/cloud/tmc/integration/structure/Page;

    .line 98
    .line 99
    const/4 v2, 0x0

    .line 100
    invoke-interface {v1, v2}, Lcom/cloud/tmc/integration/structure/Page;->exit(Z)V

    .line 101
    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_5
    return-void
.end method

.method public bindContext(Lcom/cloud/tmc/integration/structure/AppContext;)V
    .locals 2
    .param p1    # Lcom/cloud/tmc/integration/structure/AppContext;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "bindContext....."

    .line 2
    .line 3
    const-string v1, "TmcApp:App"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppContext:Lcom/cloud/tmc/integration/structure/AppContext;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->isExited()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const-string p1, "bindContext but already exit in AppMsgReceiver!"

    .line 17
    .line 18
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppType:Ljava/lang/String;

    .line 23
    .line 24
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->trySetupEngineProxy(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-boolean p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mPendingOnStart:Z

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    const-string p1, "bindContext with pendingOnStart, now trigger onStart!"

    .line 32
    .line 33
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->onStart()V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public final declared-synchronized destroy()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "TmcApp:App"

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v2, "destroy "

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, " with stack "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    new-instance v2, Ljava/lang/Throwable;

    .line 23
    .line 24
    const-string v3, "Just Print"

    .line 25
    .line 26
    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->onDestroy()V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mIsDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    monitor-exit p0

    .line 53
    return-void

    .line 54
    :catchall_0
    move-exception v0

    .line 55
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    throw v0
.end method

.method public final declared-synchronized exit()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mIsExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    const-string v0, "TmcApp:App"

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v2, "exitApp with stack "

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    new-instance v2, Ljava/lang/Throwable;

    .line 21
    .line 22
    const-string v3, "Just Print"

    .line 23
    .line 24
    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mIsExited:Z

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->onExit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    .line 46
    .line 47
    monitor-exit p0

    .line 48
    return-void

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    throw v0
.end method

.method public exitAllPages(Z)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "exitAllPages: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "TmcApp:App"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/cloud/tmc/kernel/node/NodeInstance;->getChildCount()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x1

    .line 28
    sub-int/2addr v0, v1

    .line 29
    :goto_0
    if-ltz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getPageByIndex(I)Lcom/cloud/tmc/integration/structure/Page;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    const-class v3, Lcom/cloud/tmc/integration/structure/Page$AnimStore;

    .line 39
    .line 40
    invoke-interface {v2, v3, v1}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Lcom/cloud/tmc/integration/structure/Page$AnimStore;

    .line 45
    .line 46
    iput-boolean v1, v3, Lcom/cloud/tmc/integration/structure/Page$AnimStore;->disableExit:Z

    .line 47
    .line 48
    invoke-interface {v2, p1}, Lcom/cloud/tmc/integration/structure/Page;->exit(Z)V

    .line 49
    .line 50
    .line 51
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    return-void
.end method

.method public exitAllThenPushPage(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "exitAllThenPushPage "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, " with stack: "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    new-instance v1, Ljava/lang/Throwable;

    .line 20
    .line 21
    const-string v2, "Just Print"

    .line 22
    .line 23
    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "TmcApp:App"

    .line 38
    .line 39
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-class v0, Lcom/cloud/tmc/integration/proxy/PageFactory;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    move-object v1, v0

    .line 49
    check-cast v1, Lcom/cloud/tmc/integration/proxy/PageFactory;

    .line 50
    .line 51
    const-string v3, "https://100000.miniapp.transsion.com/index.html"

    .line 52
    .line 53
    move-object v2, p0

    .line 54
    move-object v4, p1

    .line 55
    move-object v5, p2

    .line 56
    move-object v6, p3

    .line 57
    invoke-interface/range {v1 .. v6}, Lcom/cloud/tmc/integration/proxy/PageFactory;->createPage(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/cloud/tmc/integration/structure/node/PageNode;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    const-string v0, "navigationType"

    .line 62
    .line 63
    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_0

    .line 72
    .line 73
    invoke-static {p2, p3}, Lcom/cloud/tmc/integration/utils/TrackPointUtils;->pageRouteTrackStart(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :cond_0
    iget-object p3, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mEngineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

    .line 77
    .line 78
    const-class v0, Lcom/cloud/tmc/integration/model/WorkerStore;

    .line 79
    .line 80
    if-nez p3, :cond_1

    .line 81
    .line 82
    new-instance p3, Lcom/cloud/tmc/integration/model/WorkerStore;

    .line 83
    .line 84
    const-string v1, ""

    .line 85
    .line 86
    invoke-direct {p3, v1}, Lcom/cloud/tmc/integration/model/WorkerStore;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-interface {p2, v0, p3}, Lcom/cloud/tmc/kernel/node/DataNode;->setData(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_1
    new-instance v1, Lcom/cloud/tmc/integration/model/WorkerStore;

    .line 94
    .line 95
    invoke-interface {p3}, Lcom/cloud/tmc/kernel/engine/IEngine;->getWorkerId()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p3

    .line 99
    invoke-direct {v1, p3}, Lcom/cloud/tmc/integration/model/WorkerStore;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-interface {p2, v0, v1}, Lcom/cloud/tmc/kernel/node/DataNode;->setData(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    :goto_0
    const/4 p3, 0x0

    .line 106
    invoke-virtual {p0, p1, p3}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getRouteType(Ljava/lang/String;Z)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p0}, Lcom/cloud/tmc/kernel/node/NodeInstance;->getChildCount()I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    const/4 v1, 0x1

    .line 115
    sub-int/2addr v0, v1

    .line 116
    :goto_1
    if-ltz v0, :cond_3

    .line 117
    .line 118
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getPageByIndex(I)Lcom/cloud/tmc/integration/structure/Page;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    if-nez v2, :cond_2

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_2
    const-class v3, Lcom/cloud/tmc/integration/structure/Page$AnimStore;

    .line 126
    .line 127
    invoke-interface {v2, v3, v1}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    check-cast v3, Lcom/cloud/tmc/integration/structure/Page$AnimStore;

    .line 132
    .line 133
    iput-boolean v1, v3, Lcom/cloud/tmc/integration/structure/Page$AnimStore;->disableExit:Z

    .line 134
    .line 135
    new-instance v3, Lcom/cloud/tmc/integration/structure/Page$TaskContext;

    .line 136
    .line 137
    const-string v4, "reLaunch"

    .line 138
    .line 139
    invoke-direct {v3, v0, p2, v4, p1}, Lcom/cloud/tmc/integration/structure/Page$TaskContext;-><init>(ILcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-interface {v2, p3, v3}, Lcom/cloud/tmc/integration/structure/Page;->exit(ZLcom/cloud/tmc/integration/structure/Page$TaskContext;)V

    .line 143
    .line 144
    .line 145
    :goto_2
    add-int/lit8 v0, v0, -0x1

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_3
    invoke-virtual {p0, p2}, Lcom/cloud/tmc/kernel/node/NodeInstance;->pushChild(Lcom/cloud/tmc/kernel/node/Node;)V

    .line 149
    .line 150
    .line 151
    iget-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppContext:Lcom/cloud/tmc/integration/structure/AppContext;

    .line 152
    .line 153
    if-eqz p1, :cond_4

    .line 154
    .line 155
    invoke-interface {p1, p2}, Lcom/cloud/tmc/integration/structure/AppContext;->pushPage(Lcom/cloud/tmc/integration/structure/Page;)Z

    .line 156
    .line 157
    .line 158
    :cond_4
    return-void
.end method

.method public exitToHomePage()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "exitToHomePage: with stack: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    new-instance v1, Ljava/lang/Throwable;

    .line 12
    .line 13
    const-string v2, "Just Print"

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "TmcApp:App"

    .line 30
    .line 31
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->hasHomePage()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v3, "exitToHomePage: \u68c0\u67e5\u662f\u5426\u6709\u9996\u9875(true \u6709\uff0cfalse\uff0c\u6ca1\u6709): "

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    if-eqz v0, :cond_5

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/cloud/tmc/kernel/node/NodeInstance;->getChildCount()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    const/4 v2, 0x1

    .line 65
    sub-int/2addr v0, v2

    .line 66
    :goto_0
    if-ltz v0, :cond_6

    .line 67
    .line 68
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getPageByIndex(I)Lcom/cloud/tmc/integration/structure/Page;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    if-nez v3, :cond_0

    .line 73
    .line 74
    goto/16 :goto_2

    .line 75
    .line 76
    :cond_0
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->isExited()Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-nez v4, :cond_4

    .line 81
    .line 82
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->isHomePage()Z

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    if-nez v4, :cond_1

    .line 87
    .line 88
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-eqz v4, :cond_4

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :catch_0
    move-exception v0

    .line 96
    goto/16 :goto_3

    .line 97
    .line 98
    :cond_1
    :goto_1
    sget-object v0, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    .line 99
    .line 100
    iget-object v2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->appId:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {v0, v2}, Lcom/cloud/tmc/integration/utils/AppUtils;->checkGoHomeToHomePage(Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    const-string v2, "exitToHomePage: \u5f53\u524d\u9875\u9762\u4e3a\u9996\u9875\uff0c\u505c\u6b62\u5f39\u51fa\u3002"

    .line 107
    .line 108
    if-eqz v0, :cond_3

    .line 109
    .line 110
    :try_start_1
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->isHomePage()Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_2

    .line 115
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :cond_2
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-eqz v0, :cond_3

    .line 140
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    const-string v2, "exitToHomePage: \u5f53\u524d\u662f tab \u9875\uff0c\u5207\u6362\u5230\u9996\u9875\uff0c\u3002"

    .line 147
    .line 148
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getHomePagePath()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getStartParams()Landroid/os/Bundle;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getmSceneParams()Landroid/os/Bundle;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    invoke-virtual {p0, v0, v2, v3}, Lcom/cloud/tmc/integration/structure/node/AppNode;->switchTab(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    return-void

    .line 196
    :cond_4
    const-class v4, Lcom/cloud/tmc/integration/structure/Page$AnimStore;

    .line 197
    .line 198
    invoke-interface {v3, v4, v2}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    check-cast v4, Lcom/cloud/tmc/integration/structure/Page$AnimStore;

    .line 203
    .line 204
    iput-boolean v2, v4, Lcom/cloud/tmc/integration/structure/Page$AnimStore;->disableExit:Z

    .line 205
    .line 206
    const/4 v4, 0x0

    .line 207
    invoke-interface {v3, v4}, Lcom/cloud/tmc/integration/structure/Page;->exit(Z)V

    .line 208
    .line 209
    .line 210
    :goto_2
    add-int/lit8 v0, v0, -0x1

    .line 211
    .line 212
    goto/16 :goto_0

    .line 213
    .line 214
    :cond_5
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getHomePagePath()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    if-nez v2, :cond_6

    .line 223
    .line 224
    const-string v2, "reLaunch"

    .line 225
    .line 226
    invoke-virtual {p0, v0, v2}, Lcom/cloud/tmc/integration/structure/node/AppNode;->putRouteType(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getSceneParams()Landroid/os/Bundle;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    const-string v3, "navigationType"

    .line 234
    .line 235
    const-string v4, "exitToHomePage"

    .line 236
    .line 237
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getStartParams()Landroid/os/Bundle;

    .line 241
    .line 242
    .line 243
    move-result-object v3

    .line 244
    invoke-virtual {p0, v0, v3, v2}, Lcom/cloud/tmc/integration/structure/node/AppNode;->relaunchToUrl(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 245
    .line 246
    .line 247
    goto :goto_4

    .line 248
    :goto_3
    const-string v2, ""

    .line 249
    .line 250
    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 251
    .line 252
    .line 253
    :cond_6
    :goto_4
    return-void
.end method

.method public getActivePage()Lcom/cloud/tmc/integration/structure/Page;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/kernel/node/NodeInstance;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    :goto_0
    if-ltz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getPageByIndex(I)Lcom/cloud/tmc/integration/structure/Page;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->isUseForEmbed()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->isExited()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->isHide()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    return-object v1

    .line 41
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const/4 v0, 0x0

    .line 45
    return-object v0
.end method

.method public getActivePageIndex()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/kernel/node/NodeInstance;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    :goto_0
    if-ltz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getPageByIndex(I)Lcom/cloud/tmc/integration/structure/Page;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->isUseForEmbed()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->isExited()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->isHide()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    return v0

    .line 41
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const/4 v0, -0x1

    .line 45
    return v0
.end method

.method public getAddHomeShowStatus(I)Z
    .locals 1

    .line 1
    const/16 v0, 0x64

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-boolean p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->MFAHShowStatus:Z

    .line 6
    .line 7
    return p1

    .line 8
    :cond_0
    const/16 v0, 0x5a

    .line 9
    .line 10
    if-ne p1, v0, :cond_1

    .line 11
    .line 12
    iget-boolean p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->APIAddhomeShowStatus:Z

    .line 13
    .line 14
    return p1

    .line 15
    :cond_1
    const/16 v0, 0x51

    .line 16
    .line 17
    if-ne p1, v0, :cond_2

    .line 18
    .line 19
    iget-boolean p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->guideTopAddhomeShowStatus:Z

    .line 20
    .line 21
    return p1

    .line 22
    :cond_2
    const/16 v0, 0x52

    .line 23
    .line 24
    if-ne p1, v0, :cond_3

    .line 25
    .line 26
    iget-boolean p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->guideBottomAddhomeShowStatus:Z

    .line 27
    .line 28
    return p1

    .line 29
    :cond_3
    const/16 v0, 0x53

    .line 30
    .line 31
    if-ne p1, v0, :cond_4

    .line 32
    .line 33
    iget-boolean p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->guideBackAddhomeShowStatus:Z

    .line 34
    .line 35
    return p1

    .line 36
    :cond_4
    const/4 p1, 0x0

    .line 37
    return p1
.end method

.method public getAlivePageCount()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/kernel/node/NodeInstance;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/cloud/tmc/kernel/node/NodeInstance;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0, v2}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getPageByIndex(I)Lcom/cloud/tmc/integration/structure/Page;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->isExited()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    add-int/lit8 v0, v0, -0x1

    .line 25
    .line 26
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return v0
.end method

.method public getAppChainContext()Lcom/cloud/tmc/integration/chain/app/AppChainContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppContext:Lcom/cloud/tmc/integration/structure/AppContext;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->appId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAppLifecycleCallback()Lcom/cloud/tmc/integration/callback/ICheckMiniAppLifecycleCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->checkMiniAppLifecycleCallback:Lcom/cloud/tmc/integration/callback/ICheckMiniAppLifecycleCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAppManager()Lcom/cloud/tmc/integration/structure/AppManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppManager:Lcom/cloud/tmc/integration/structure/AppManager;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAppModel()Lcom/cloud/tmc/integration/model/AppModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppModel:Lcom/cloud/tmc/integration/model/AppModel;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAppType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAsyncStartLoadingCallback()Lcom/cloud/tmc/integration/callback/IAsyncStartLoadingCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->iAsyncStartLoadingCallback:Lcom/cloud/tmc/integration/callback/IAsyncStartLoadingCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBackPressedProcessor()Lcom/cloud/tmc/integration/processor/IBackPressedProcessor;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->backPressedProcessor:Lcom/cloud/tmc/integration/processor/IBackPressedProcessor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBackToPagePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->backToPagePath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEngineProxy()Lcom/cloud/tmc/kernel/engine/IEngine;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mEngineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExtensionManager()Lcom/cloud/tmc/kernel/extension/ExtensionManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/kernel/node/NodeInstance;->sExtensionManager:Lcom/cloud/tmc/kernel/extension/ExtensionManager;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFirstPage()Lcom/cloud/tmc/integration/structure/Page;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/kernel/node/NodeInstance;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getPageByIndex(I)Lcom/cloud/tmc/integration/structure/Page;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->isUseForEmbed()Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->isExited()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_0

    .line 25
    .line 26
    return-object v2

    .line 27
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v0, 0x0

    .line 31
    return-object v0
.end method

.method public getGroup()Lcom/cloud/tmc/kernel/security/Group;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppModel:Lcom/cloud/tmc/integration/model/AppModel;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/cloud/tmc/kernel/security/DefaultGroup;->EXTERNAL:Lcom/cloud/tmc/kernel/security/DefaultGroup;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getPermissions()Lcom/cloud/tmc/kernel/model/permission/PermissionModel;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;->getGroup()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/cloud/tmc/kernel/security/DefaultGroup;->valueOf(Ljava/lang/String;)Lcom/cloud/tmc/kernel/security/DefaultGroup;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public getHideMiniAppLoadingStatus()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->isHideMiniAppLoaingStatus:Z

    .line 2
    .line 3
    return v0
.end method

.method public getHomePagePath()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppLoadResult:Lcom/cloud/tmc/integration/structure/AppLoadResult;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->pages:Ljava/util/List;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-lez v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppLoadResult:Lcom/cloud/tmc/integration/structure/AppLoadResult;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->pages:Ljava/util/List;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljava/lang/String;

    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_0
    const-string v0, ""

    .line 34
    .line 35
    return-object v0
.end method

.method public getIFileResourceManager()Lcom/cloud/tmc/kernel/resource/IFileResourceManager;
    .locals 1

    .line 1
    const-class v0, Lcom/cloud/tmc/kernel/resource/IFileResourceManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/kernel/resource/IFileResourceManager;

    .line 8
    .line 9
    return-object v0
.end method

.method public getImageResourceManagerProxy()Lcom/cloud/tmc/kernel/resource/IImageResourceManager;
    .locals 1

    .line 1
    const-class v0, Lcom/cloud/tmc/kernel/resource/IImageResourceManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/kernel/resource/IImageResourceManager;

    .line 8
    .line 9
    return-object v0
.end method

.method public getInterectCallbackId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->currentInterectCallbackId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLoadHtmlDataCallback()Lcom/cloud/tmc/integration/callback/ILoadHtmlDataCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->loadHtmlDataCallback:Lcom/cloud/tmc/integration/callback/ILoadHtmlDataCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMFAHStatus()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->currentMFAHStatus:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getMiniAppAutoPopover()Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->miniAppAutoPopover:Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMiniAppLoadStatus()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->miniappLoadSuccess:Z

    .line 2
    .line 3
    return v0
.end method

.method public getOriginalStartParams()Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableBundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mImmutableStartParams:Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableBundle;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPageByIndex(I)Lcom/cloud/tmc/integration/structure/Page;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/kernel/node/NodeInstance;->getChildAt(I)Lcom/cloud/tmc/kernel/node/Node;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/cloud/tmc/integration/structure/Page;

    .line 6
    .line 7
    return-object p1
.end method

.method public getPageByNodeId(J)Lcom/cloud/tmc/integration/structure/Page;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/kernel/node/NodeInstance;->getChild(J)Lcom/cloud/tmc/kernel/node/Node;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/cloud/tmc/integration/structure/Page;

    .line 6
    .line 7
    return-object p1
.end method

.method public getPageType(Ljava/lang/String;)I
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mPagesType:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Integer;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public getPermissionInterectMap()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mPermissionDialogMap:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPrePage()Lcom/cloud/tmc/integration/structure/Page;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    const-string v2, "prePageId"

    .line 10
    .line 11
    invoke-interface {v0, v2}, Lcom/cloud/tmc/kernel/node/ValueStore;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    return-object v1

    .line 22
    :cond_1
    invoke-virtual {p0}, Lcom/cloud/tmc/kernel/node/NodeInstance;->getChildCount()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    add-int/lit8 v2, v2, -0x1

    .line 27
    .line 28
    :goto_0
    if-ltz v2, :cond_3

    .line 29
    .line 30
    invoke-virtual {p0, v2}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getPageByIndex(I)Lcom/cloud/tmc/integration/structure/Page;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->isUseForEmbed()Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-nez v4, :cond_2

    .line 41
    .line 42
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->isExited()Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-nez v4, :cond_2

    .line 47
    .line 48
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_2

    .line 57
    .line 58
    return-object v3

    .line 59
    :cond_2
    add-int/lit8 v2, v2, -0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    return-object v1
.end method

.method public getRouteType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getRouteType(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRouteType(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mRouteType:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Ljava/lang/String;

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mRouteType:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :goto_1
    if-eqz p1, :cond_1

    return-object p1

    .line 3
    :cond_1
    const-string p1, "unknown"

    return-object p1
.end method

.method public getSceneParams()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mSceneParams:Landroid/os/Bundle;

    .line 2
    .line 3
    return-object v0
.end method

.method public getScopeType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/node/Scope;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/cloud/tmc/integration/structure/App;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStartParams()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mStartParams:Landroid/os/Bundle;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->startTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getStartToken()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mStartToken:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getStartUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mStartUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getmAppLoadResult()Lcom/cloud/tmc/integration/structure/AppLoadResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppLoadResult:Lcom/cloud/tmc/integration/structure/AppLoadResult;

    .line 2
    .line 3
    return-object v0
.end method

.method public getmSceneParams()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mSceneParams:Landroid/os/Bundle;

    .line 2
    .line 3
    return-object v0
.end method

.method public getmStartParams()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mStartParams:Landroid/os/Bundle;

    .line 2
    .line 3
    return-object v0
.end method

.method public hasHomePage()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/kernel/node/NodeInstance;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    :goto_0
    if-ltz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getPageByIndex(I)Lcom/cloud/tmc/integration/structure/Page;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->isExited()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->isHomePage()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-nez v3, :cond_2

    .line 26
    .line 27
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v1, 0x0

    .line 38
    :cond_2
    :goto_1
    return v1
.end method

.method public hideMiniAppAddHomeBar()V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/node/TitleBarNode;->hideAddScreenButton()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    :catchall_0
    :cond_0
    return-void
.end method

.method public init(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->appId:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getImageResourceManagerProxy()Lcom/cloud/tmc/kernel/resource/IImageResourceManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lcom/cloud/tmc/kernel/resource/IImageResourceManager;->init(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getIFileResourceManager()Lcom/cloud/tmc/kernel/resource/IFileResourceManager;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/cloud/tmc/kernel/resource/IFileResourceManager;->init(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iput-object p2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mStartParams:Landroid/os/Bundle;

    .line 18
    .line 19
    iput-object p3, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mSceneParams:Landroid/os/Bundle;

    .line 20
    .line 21
    const-string p1, "startToken"

    .line 22
    .line 23
    const-wide/16 v0, 0x0

    .line 24
    .line 25
    invoke-static {p3, p1, v0, v1}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->getLong(Landroid/os/Bundle;Ljava/lang/String;J)J

    .line 26
    .line 27
    .line 28
    move-result-wide p1

    .line 29
    iput-wide p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mStartToken:J

    .line 30
    .line 31
    new-instance p1, Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableBundle;

    .line 32
    .line 33
    iget-object p2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mStartParams:Landroid/os/Bundle;

    .line 34
    .line 35
    invoke-direct {p1, p2}, Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableBundle;-><init>(Landroid/os/Bundle;)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mImmutableStartParams:Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableBundle;

    .line 39
    .line 40
    const-string p1, "appType"

    .line 41
    .line 42
    const-string p2, "WEB_TINY"

    .line 43
    .line 44
    invoke-virtual {p3, p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppType:Ljava/lang/String;

    .line 49
    .line 50
    iget-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mSceneParams:Landroid/os/Bundle;

    .line 51
    .line 52
    const-string p2, "entryInfo"

    .line 53
    .line 54
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Lcom/cloud/tmc/integration/model/EntryInfo;

    .line 59
    .line 60
    iget-object p2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mSceneParams:Landroid/os/Bundle;

    .line 61
    .line 62
    const-string p3, "appInfo"

    .line 63
    .line 64
    invoke-static {p2, p3}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    check-cast p2, Lcom/cloud/tmc/integration/model/AppModel;

    .line 69
    .line 70
    iput-object p2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppModel:Lcom/cloud/tmc/integration/model/AppModel;

    .line 71
    .line 72
    iget-object p2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mSceneParams:Landroid/os/Bundle;

    .line 73
    .line 74
    const-string p3, "appLoadResult"

    .line 75
    .line 76
    invoke-static {p2, p3}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    check-cast p2, Lcom/cloud/tmc/integration/structure/AppLoadResult;

    .line 81
    .line 82
    iput-object p2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppLoadResult:Lcom/cloud/tmc/integration/structure/AppLoadResult;

    .line 83
    .line 84
    if-eqz p1, :cond_0

    .line 85
    .line 86
    const-class p2, Lcom/cloud/tmc/integration/model/EntryInfo;

    .line 87
    .line 88
    invoke-virtual {p0, p2, p1}, Lcom/cloud/tmc/kernel/node/NodeInstance;->setData(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string p2, "init with appType: "

    .line 97
    .line 98
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-object p2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppType:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    const-string p2, "TmcApp:App"

    .line 111
    .line 112
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    return-void
.end method

.method public isAsyncLaunchStatus()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->asyncLaunchStatus:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isDestroyed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mIsDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isExited()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mIsExited:Z

    .line 2
    .line 3
    return v0
.end method

.method public isFirstPage()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getAlivePageCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public isTinyApp()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public notifyAddHomeShow(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->showAddhomeCallback:Lcom/cloud/tmc/integration/callback/IShowAddHomeCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/cloud/tmc/integration/callback/IShowAddHomeCallback;->notifyShowAddHome(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onDestroy "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "TmcApp:App"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-class v0, Lcom/cloud/tmc/integration/point/OnDestroyAppPoint;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0, p0}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->node(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getExtensionManager()Lcom/cloud/tmc/kernel/extension/ExtensionManager;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->extensionManager(Lcom/cloud/tmc/kernel/extension/ExtensionManager;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->create()Lcom/cloud/tmc/kernel/extension/Extension;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lcom/cloud/tmc/integration/point/OnDestroyAppPoint;

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getExtensionManager()Lcom/cloud/tmc/kernel/extension/ExtensionManager;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-interface {v0, p0, v1}, Lcom/cloud/tmc/integration/point/OnDestroyAppPoint;->onDestroy(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/extension/ExtensionManager;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mNetworkListener:Lcom/cloud/tmc/kernel/utils/NetworkUtil$NetworkListener;

    .line 55
    .line 56
    if-eqz v0, :cond_0

    .line 57
    .line 58
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppContext:Lcom/cloud/tmc/integration/structure/AppContext;

    .line 59
    .line 60
    if-eqz v0, :cond_0

    .line 61
    .line 62
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mNetworkListener:Lcom/cloud/tmc/kernel/utils/NetworkUtil$NetworkListener;

    .line 67
    .line 68
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->removeListener(Landroid/content/Context;Lcom/cloud/tmc/kernel/utils/NetworkUtil$NetworkListener;)V

    .line 69
    .line 70
    .line 71
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mEngineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

    .line 72
    .line 73
    const/4 v1, 0x0

    .line 74
    if-eqz v0, :cond_1

    .line 75
    .line 76
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/engine/IEngine;->destroy()V

    .line 77
    .line 78
    .line 79
    iput-object v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mEngineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

    .line 80
    .line 81
    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppContext:Lcom/cloud/tmc/integration/structure/AppContext;

    .line 82
    .line 83
    if-eqz v0, :cond_2

    .line 84
    .line 85
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/AppContext;->destroy()V

    .line 86
    .line 87
    .line 88
    iput-object v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppContext:Lcom/cloud/tmc/integration/structure/AppContext;

    .line 89
    .line 90
    :cond_2
    invoke-virtual {p0}, Lcom/cloud/tmc/kernel/node/NodeInstance;->onFinalized()V

    .line 91
    .line 92
    .line 93
    :try_start_0
    const-class v0, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 94
    .line 95
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 100
    .line 101
    invoke-interface {v0, p0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->clearEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :catchall_0
    move-exception v0

    .line 106
    const-string v1, "AppNode"

    .line 107
    .line 108
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    .line 110
    .line 111
    :goto_0
    return-void
.end method

.method protected declared-synchronized onExit()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "miniAppReload"

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/kernel/node/NodeInstance;->getBooleanValue(Ljava/lang/String;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    xor-int/lit8 v0, v0, 0x1

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->exitAllPages(Z)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw v0
.end method

.method protected onPageStarted(Lcom/cloud/tmc/integration/structure/Page;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppContext:Lcom/cloud/tmc/integration/structure/AppContext;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "TmcApp:App"

    .line 7
    .line 8
    const-string v1, "onPageStarted"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iget-object v2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mPageReadyListeners:Ljava/util/List;

    .line 18
    .line 19
    monitor-enter v2

    .line 20
    :try_start_0
    iget-object v3, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mPageReadyListeners:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-eqz v4, :cond_1

    .line 31
    .line 32
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    check-cast v4, Lcom/cloud/tmc/integration/structure/App$PageReadyListener;

    .line 37
    .line 38
    invoke-interface {v4, p1}, Lcom/cloud/tmc/integration/structure/App$PageReadyListener;->onPageReady(Lcom/cloud/tmc/integration/structure/Page;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const-string p1, "TmcApp:App"

    .line 45
    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v4, "onPageStarted flush pageReadyListener size: "

    .line 52
    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-object v4, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mPageReadyListeners:Ljava/util/List;

    .line 57
    .line 58
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v4, " cost: "

    .line 66
    .line 67
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 71
    .line 72
    .line 73
    move-result-wide v4

    .line 74
    sub-long/2addr v4, v0

    .line 75
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mPageReadyListeners:Ljava/util/List;

    .line 86
    .line 87
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 88
    .line 89
    .line 90
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    new-instance p1, Lcom/cloud/tmc/integration/structure/node/AppNode$6;

    .line 92
    .line 93
    invoke-direct {p1, p0}, Lcom/cloud/tmc/integration/structure/node/AppNode$6;-><init>(Lcom/cloud/tmc/integration/structure/node/AppNode;)V

    .line 94
    .line 95
    .line 96
    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mNetworkListener:Lcom/cloud/tmc/kernel/utils/NetworkUtil$NetworkListener;

    .line 97
    .line 98
    iget-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppContext:Lcom/cloud/tmc/integration/structure/AppContext;

    .line 99
    .line 100
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mNetworkListener:Lcom/cloud/tmc/kernel/utils/NetworkUtil$NetworkListener;

    .line 105
    .line 106
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->addListener(Landroid/content/Context;Lcom/cloud/tmc/kernel/utils/NetworkUtil$NetworkListener;)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    throw p1
.end method

.method protected onPause()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onPause "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "TmcApp:App"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-class v0, Lcom/cloud/tmc/integration/point/OnPauseAppPoint;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0, p0}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->node(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getExtensionManager()Lcom/cloud/tmc/kernel/extension/ExtensionManager;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->extensionManager(Lcom/cloud/tmc/kernel/extension/ExtensionManager;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->create()Lcom/cloud/tmc/kernel/extension/Extension;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lcom/cloud/tmc/integration/point/OnPauseAppPoint;

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getExtensionManager()Lcom/cloud/tmc/kernel/extension/ExtensionManager;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-interface {v0, p0, v1}, Lcom/cloud/tmc/integration/point/OnPauseAppPoint;->onPause(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/extension/ExtensionManager;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method protected onResume()V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onResume "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "TmcApp:App"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-class v0, Lcom/cloud/tmc/integration/point/OnResumeAppPoint;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0, p0}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->node(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getExtensionManager()Lcom/cloud/tmc/kernel/extension/ExtensionManager;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->extensionManager(Lcom/cloud/tmc/kernel/extension/ExtensionManager;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->create()Lcom/cloud/tmc/kernel/extension/Extension;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lcom/cloud/tmc/integration/point/OnResumeAppPoint;

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getExtensionManager()Lcom/cloud/tmc/kernel/extension/ExtensionManager;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-interface {v0, p0, v1}, Lcom/cloud/tmc/integration/point/OnResumeAppPoint;->onResume(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/extension/ExtensionManager;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppModel:Lcom/cloud/tmc/integration/model/AppModel;

    .line 55
    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getExtend()Lcom/cloud/tmc/integration/model/ExtendModel;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-eqz v0, :cond_0

    .line 63
    .line 64
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppModel:Lcom/cloud/tmc/integration/model/AppModel;

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getExtend()Lcom/cloud/tmc/integration/model/ExtendModel;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/ExtendModel;->getExclusiveLogoUrl()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    :goto_0
    move-object v6, v0

    .line 75
    goto :goto_1

    .line 76
    :cond_0
    const/4 v0, 0x0

    .line 77
    goto :goto_0

    .line 78
    :goto_1
    sget-object v0, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->INSTANCE:Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;

    .line 79
    .line 80
    iget-object v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->appId:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->checkInterect(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_1

    .line 87
    .line 88
    iget-object v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->appId:Ljava/lang/String;

    .line 89
    .line 90
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppModel:Lcom/cloud/tmc/integration/model/AppModel;

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getName()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppModel:Lcom/cloud/tmc/integration/model/AppModel;

    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getLogo()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppModel:Lcom/cloud/tmc/integration/model/AppModel;

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getDesc()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppModel:Lcom/cloud/tmc/integration/model/AppModel;

    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getClassificationNames()Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    const/4 v7, 0x0

    .line 115
    invoke-static/range {v1 .. v7}, Lcom/cloud/tmc/integration/utils/LatestUseUtils;->addAppUse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;I)Z

    .line 116
    .line 117
    .line 118
    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mEngineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "onStart:"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mStartUrl:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "TmcApp:App"

    .line 23
    .line 24
    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->preProcessStartParams()V

    .line 28
    .line 29
    .line 30
    new-instance v1, Lcom/cloud/tmc/kernel/model/InitParams;

    .line 31
    .line 32
    invoke-direct {v1}, Lcom/cloud/tmc/kernel/model/InitParams;-><init>()V

    .line 33
    .line 34
    .line 35
    iget-wide v3, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mStartToken:J

    .line 36
    .line 37
    iput-wide v3, v1, Lcom/cloud/tmc/kernel/model/InitParams;->startToken:J

    .line 38
    .line 39
    iget-object v3, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mMainJSUrl:Ljava/lang/String;

    .line 40
    .line 41
    iput-object v3, v1, Lcom/cloud/tmc/kernel/model/InitParams;->mainResourceUrl:Ljava/lang/String;

    .line 42
    .line 43
    iget-object v3, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mStartParams:Landroid/os/Bundle;

    .line 44
    .line 45
    iput-object v3, v1, Lcom/cloud/tmc/kernel/model/InitParams;->startParams:Landroid/os/Bundle;

    .line 46
    .line 47
    const-string v4, "enablePolyfillWorker"

    .line 48
    .line 49
    const-string v5, "true"

    .line 50
    .line 51
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string v3, "App"

    .line 55
    .line 56
    const-string v4, "End create app"

    .line 57
    .line 58
    invoke-static {v3, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->printPerformanceLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/engine/IEngine;->isDestroyed()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_0

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mEngineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

    .line 71
    .line 72
    new-instance v2, Lcom/cloud/tmc/integration/structure/node/AppNode$4;

    .line 73
    .line 74
    invoke-direct {v2, p0}, Lcom/cloud/tmc/integration/structure/node/AppNode$4;-><init>(Lcom/cloud/tmc/integration/structure/node/AppNode;)V

    .line 75
    .line 76
    .line 77
    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/kernel/engine/IEngine;->init(Lcom/cloud/tmc/kernel/model/InitParams;Lcom/cloud/tmc/kernel/engine/EngineInitCallback;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_1
    :goto_0
    const-string v0, "engine is null or isDestroyed!"

    .line 82
    .line 83
    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onStop "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "TmcApp:App"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-class v0, Lcom/cloud/tmc/integration/point/OnStopAppPoint;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0, p0}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->node(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getExtensionManager()Lcom/cloud/tmc/kernel/extension/ExtensionManager;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->extensionManager(Lcom/cloud/tmc/kernel/extension/ExtensionManager;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->create()Lcom/cloud/tmc/kernel/extension/Extension;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lcom/cloud/tmc/integration/point/OnStopAppPoint;

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getExtensionManager()Lcom/cloud/tmc/kernel/extension/ExtensionManager;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-interface {v0, p0, v1}, Lcom/cloud/tmc/integration/point/OnStopAppPoint;->onStop(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/extension/ExtensionManager;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public pause()V
    .locals 2

    .line 1
    const-string v0, "onAppHide"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/cloud/tmc/integration/utils/AppUtils;->sendToApp(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mHasPaused:Z

    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppModel:Lcom/cloud/tmc/integration/model/AppModel;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getDevMode()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x2

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/BuildConfigProxy;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/BuildConfigProxy;

    .line 25
    .line 26
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/BuildConfigProxy;->isDebug()Ljava/lang/Boolean;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    invoke-static {}, Lcom/cloud/tmc/integration/utils/AppUtils;->enableWebViewDebugger()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_0

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    invoke-static {v0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    :catchall_0
    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->onPause()V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public performBack()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->isFirstPage()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "TmcApp:App"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "performBack with firstPage, direct exit!"

    .line 10
    .line 11
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->exit()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string v0, "performBack just exit active page"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/structure/Page;->exit(Z)V

    .line 31
    .line 32
    .line 33
    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized popPage(Lcom/google/gson/JsonObject;)V
    .locals 3
    .param p1    # Lcom/google/gson/JsonObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    :try_start_0
    const-string v0, "TmcApp:App"

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "popPage with param "

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-class v0, Lcom/cloud/tmc/integration/structure/App$PopParams;

    .line 27
    .line 28
    new-instance v1, Lcom/cloud/tmc/integration/structure/App$PopParams;

    .line 29
    .line 30
    invoke-direct {v1, p1}, Lcom/cloud/tmc/integration/structure/App$PopParams;-><init>(Lcom/google/gson/JsonObject;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0, v1}, Lcom/cloud/tmc/kernel/node/NodeInstance;->setData(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    invoke-interface {p1, v0}, Lcom/cloud/tmc/integration/structure/Page;->exit(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    :cond_1
    monitor-exit p0

    .line 50
    return-void

    .line 51
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    throw p1
.end method

.method public popTo(IZLcom/google/gson/JsonObject;)V
    .locals 3

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    new-instance v0, Lcom/cloud/tmc/integration/structure/App$PopParams;

    .line 4
    .line 5
    invoke-direct {v0, p3}, Lcom/cloud/tmc/integration/structure/App$PopParams;-><init>(Lcom/google/gson/JsonObject;)V

    .line 6
    .line 7
    .line 8
    const-class p3, Lcom/cloud/tmc/integration/structure/App$PopParams;

    .line 9
    .line 10
    invoke-virtual {p0, p3, v0}, Lcom/cloud/tmc/kernel/node/NodeInstance;->setData(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/kernel/node/NodeInstance;->getChildCount()I

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    add-int v0, p3, p1

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v2, "popTo "

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p1, " to minIndex "

    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const-string v1, "TmcApp:App"

    .line 45
    .line 46
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    new-instance p1, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    add-int/lit8 p3, p3, -0x1

    .line 55
    .line 56
    :goto_0
    if-lt p3, v0, :cond_4

    .line 57
    .line 58
    invoke-virtual {p0, p3}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getPageByIndex(I)Lcom/cloud/tmc/integration/structure/Page;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    if-nez v1, :cond_1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->isUseForEmbed()Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_2

    .line 70
    .line 71
    if-lez v0, :cond_2

    .line 72
    .line 73
    add-int/lit8 v0, v0, -0x1

    .line 74
    .line 75
    :cond_2
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-nez v2, :cond_3

    .line 80
    .line 81
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    :cond_3
    :goto_1
    add-int/lit8 p3, p3, -0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result p3

    .line 95
    if-eqz p3, :cond_5

    .line 96
    .line 97
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p3

    .line 101
    check-cast p3, Lcom/cloud/tmc/integration/structure/Page;

    .line 102
    .line 103
    invoke-interface {p3, p2}, Lcom/cloud/tmc/integration/structure/Page;->exit(Z)V

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_5
    return-void
.end method

.method protected preProcessStartParams()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getStartParams()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "backBehavior"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getStartParams()Landroid/os/Bundle;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v2, "pop"

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public declared-synchronized pushPage(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "TmcApp:App"

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v2, "pushPage "

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, " with stack: "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    new-instance v2, Ljava/lang/Throwable;

    .line 23
    .line 24
    const-string v3, "Just Print"

    .line 25
    .line 26
    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->appCallback:Lcom/cloud/tmc/integration/callback/IAppCallback;

    .line 44
    .line 45
    if-eqz v2, :cond_0

    .line 46
    .line 47
    iget-object v4, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppModel:Lcom/cloud/tmc/integration/model/AppModel;

    .line 48
    .line 49
    if-eqz v4, :cond_0

    .line 50
    .line 51
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppContext:Lcom/cloud/tmc/integration/structure/AppContext;

    .line 52
    .line 53
    if-eqz v0, :cond_0

    .line 54
    .line 55
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    new-instance v8, Lcom/cloud/tmc/integration/structure/node/b;

    .line 60
    .line 61
    invoke-direct {v8, p0, p2, p3}, Lcom/cloud/tmc/integration/structure/node/b;-><init>(Lcom/cloud/tmc/integration/structure/node/AppNode;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 62
    .line 63
    .line 64
    move-object v3, p1

    .line 65
    move-object v6, p2

    .line 66
    move-object v7, p3

    .line 67
    invoke-interface/range {v2 .. v8}, Lcom/cloud/tmc/integration/callback/IAppCallback;->validPushPage(Ljava/lang/String;Lcom/cloud/tmc/integration/model/AppModel;Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/cloud/tmc/integration/callback/ISubpackageLoadCheckCallback;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_1

    .line 72
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/structure/node/AppNode;->doPushPage(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catchall_0
    move-exception p1

    .line 78
    goto :goto_1

    .line 79
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/structure/node/AppNode;->doPushPage(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .line 81
    .line 82
    :cond_1
    :goto_0
    monitor-exit p0

    .line 83
    return-void

    .line 84
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    throw p1
.end method

.method public pushWebViewPage(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "pushWebViewPage "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, " with stack: "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    new-instance v1, Ljava/lang/Throwable;

    .line 20
    .line 21
    const-string v2, "Just Print"

    .line 22
    .line 23
    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "TmcApp:App"

    .line 38
    .line 39
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-class v0, Lcom/cloud/tmc/integration/proxy/PageFactory;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    move-object v1, v0

    .line 49
    check-cast v1, Lcom/cloud/tmc/integration/proxy/PageFactory;

    .line 50
    .line 51
    const-string v4, "todo"

    .line 52
    .line 53
    move-object v2, p0

    .line 54
    move-object v3, p1

    .line 55
    move-object v5, p2

    .line 56
    move-object v6, p3

    .line 57
    invoke-interface/range {v1 .. v6}, Lcom/cloud/tmc/integration/proxy/PageFactory;->createPage(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/cloud/tmc/integration/structure/node/PageNode;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iget-object p2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mEngineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

    .line 62
    .line 63
    const-class p3, Lcom/cloud/tmc/integration/model/WorkerStore;

    .line 64
    .line 65
    if-nez p2, :cond_0

    .line 66
    .line 67
    new-instance p2, Lcom/cloud/tmc/integration/model/WorkerStore;

    .line 68
    .line 69
    const-string v0, ""

    .line 70
    .line 71
    invoke-direct {p2, v0}, Lcom/cloud/tmc/integration/model/WorkerStore;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, p3, p2}, Lcom/cloud/tmc/kernel/node/NodeInstance;->setData(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_0
    new-instance v0, Lcom/cloud/tmc/integration/model/WorkerStore;

    .line 79
    .line 80
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/engine/IEngine;->getWorkerId()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-direct {v0, p2}, Lcom/cloud/tmc/integration/model/WorkerStore;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, p3, v0}, Lcom/cloud/tmc/kernel/node/NodeInstance;->setData(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    :goto_0
    iget-object p2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppContext:Lcom/cloud/tmc/integration/structure/AppContext;

    .line 91
    .line 92
    if-eqz p2, :cond_1

    .line 93
    .line 94
    invoke-interface {p2, p1}, Lcom/cloud/tmc/integration/structure/AppContext;->pushWebViewPage(Lcom/cloud/tmc/integration/structure/Page;)V

    .line 95
    .line 96
    .line 97
    :cond_1
    return-void
.end method

.method public putPageType(Ljava/lang/String;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mPagesType:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public putRouteType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mRouteType:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public redirectTo(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "redirectTo "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, " with stack: "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    new-instance v1, Ljava/lang/Throwable;

    .line 20
    .line 21
    const-string v2, "Just Print"

    .line 22
    .line 23
    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "TmcApp:App"

    .line 38
    .line 39
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v0, "navigationType"

    .line 43
    .line 44
    const-string v2, "redirectTo"

    .line 45
    .line 46
    invoke-virtual {p3, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-class v0, Lcom/cloud/tmc/integration/proxy/PageFactory;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    move-object v2, v0

    .line 56
    check-cast v2, Lcom/cloud/tmc/integration/proxy/PageFactory;

    .line 57
    .line 58
    const-string v4, "https://100000.miniapp.transsion.com/index.html"

    .line 59
    .line 60
    move-object v3, p0

    .line 61
    move-object v5, p1

    .line 62
    move-object v6, p2

    .line 63
    move-object v7, p3

    .line 64
    invoke-interface/range {v2 .. v7}, Lcom/cloud/tmc/integration/proxy/PageFactory;->createPage(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/cloud/tmc/integration/structure/node/PageNode;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    new-instance v2, Lcom/cloud/tmc/integration/model/WorkerStore;

    .line 69
    .line 70
    iget-object v3, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mEngineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

    .line 71
    .line 72
    if-nez v3, :cond_0

    .line 73
    .line 74
    const-string v3, ""

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    invoke-interface {v3}, Lcom/cloud/tmc/kernel/engine/IEngine;->getWorkerId()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    :goto_0
    invoke-direct {v2, v3}, Lcom/cloud/tmc/integration/model/WorkerStore;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const-class v3, Lcom/cloud/tmc/integration/model/WorkerStore;

    .line 85
    .line 86
    invoke-virtual {v0, v3, v2}, Lcom/cloud/tmc/kernel/node/NodeInstance;->setData(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->isTabPage()Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_1

    .line 94
    .line 95
    new-instance p2, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    const-string p3, "\u4e0d\u652f\u6301 redirectTo "

    .line 101
    .line 102
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string p1, " is tab page"

    .line 109
    .line 110
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :cond_1
    iget-object v4, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppModel:Lcom/cloud/tmc/integration/model/AppModel;

    .line 122
    .line 123
    if-eqz v4, :cond_2

    .line 124
    .line 125
    iget-object v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppContext:Lcom/cloud/tmc/integration/structure/AppContext;

    .line 126
    .line 127
    if-eqz v1, :cond_2

    .line 128
    .line 129
    iget-object v2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->appCallback:Lcom/cloud/tmc/integration/callback/IAppCallback;

    .line 130
    .line 131
    if-eqz v2, :cond_2

    .line 132
    .line 133
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    new-instance v8, Lcom/cloud/tmc/integration/structure/node/a;

    .line 138
    .line 139
    invoke-direct {v8, p0, p1, v0}, Lcom/cloud/tmc/integration/structure/node/a;-><init>(Lcom/cloud/tmc/integration/structure/node/AppNode;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/node/PageNode;)V

    .line 140
    .line 141
    .line 142
    move-object v3, p1

    .line 143
    move-object v6, p2

    .line 144
    move-object v7, p3

    .line 145
    invoke-interface/range {v2 .. v8}, Lcom/cloud/tmc/integration/callback/IAppCallback;->validPushPage(Ljava/lang/String;Lcom/cloud/tmc/integration/model/AppModel;Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/cloud/tmc/integration/callback/ISubpackageLoadCheckCallback;)Z

    .line 146
    .line 147
    .line 148
    move-result p2

    .line 149
    if-nez p2, :cond_3

    .line 150
    .line 151
    invoke-direct {p0, p1, v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->doRedirectTo(Ljava/lang/String;Lcom/cloud/tmc/integration/structure/node/PageNode;)V

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->doRedirectTo(Ljava/lang/String;Lcom/cloud/tmc/integration/structure/node/PageNode;)V

    .line 156
    .line 157
    .line 158
    :cond_3
    :goto_1
    return-void
.end method

.method public relaunchToUrl(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "relaunchToUrl "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, " with stack: "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    new-instance v1, Ljava/lang/Throwable;

    .line 20
    .line 21
    const-string v2, "Just Print"

    .line 22
    .line 23
    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "TmcApp:App"

    .line 38
    .line 39
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/structure/node/AppNode;->exitAllThenPushPage(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public removePage(Lcom/cloud/tmc/integration/structure/Page;ZLcom/cloud/tmc/integration/structure/Page$TaskContext;)V
    .locals 4
    .param p1    # Lcom/cloud/tmc/integration/structure/Page;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "exitPage: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "TmcApp:App"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->isDestroyed()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    new-instance p2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string p3, "exitPage but already destroyed! "

    .line 35
    .line 36
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/node/Node;->getNodeId()J

    .line 51
    .line 52
    .line 53
    move-result-wide v2

    .line 54
    invoke-virtual {p0, v2, v3}, Lcom/cloud/tmc/kernel/node/NodeInstance;->getChild(J)Lcom/cloud/tmc/kernel/node/Node;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v2, "exitPage but not a child! "

    .line 66
    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/kernel/node/NodeInstance;->removeChild(Lcom/cloud/tmc/kernel/node/Node;)Z

    .line 81
    .line 82
    .line 83
    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppContext:Lcom/cloud/tmc/integration/structure/AppContext;

    .line 84
    .line 85
    if-eqz v0, :cond_2

    .line 86
    .line 87
    invoke-interface {v0, p1, p2}, Lcom/cloud/tmc/integration/structure/AppContext;->exitPage(Lcom/cloud/tmc/integration/structure/Page;Z)V

    .line 88
    .line 89
    .line 90
    :cond_2
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->destroy()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    :try_start_0
    iget-object v2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppContext:Lcom/cloud/tmc/integration/structure/AppContext;

    .line 98
    .line 99
    instance-of v3, v2, Lcom/cloud/tmc/integration/structure/app/TmcAppContext;

    .line 100
    .line 101
    if-eqz v3, :cond_3

    .line 102
    .line 103
    if-eqz v0, :cond_3

    .line 104
    .line 105
    check-cast v2, Lcom/cloud/tmc/integration/structure/app/TmcAppContext;

    .line 106
    .line 107
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->getFragmentManager()Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-interface {v2, v0}, Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;->findFragmentForPage(Lcom/cloud/tmc/integration/structure/Page;)Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    .line 112
    .line 113
    .line 114
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    if-nez v1, :cond_3

    .line 116
    .line 117
    const/4 v0, 0x0

    .line 118
    goto :goto_0

    .line 119
    :catch_0
    move-exception v2

    .line 120
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-static {v1, v3, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 125
    .line 126
    .line 127
    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    .line 128
    .line 129
    invoke-direct {p0, v0, p1, p3}, Lcom/cloud/tmc/integration/structure/node/AppNode;->sendPageBackToWorker(Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/integration/structure/Page$TaskContext;)V

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_4
    if-eqz p3, :cond_5

    .line 134
    .line 135
    iget-object v1, p3, Lcom/cloud/tmc/integration/structure/Page$TaskContext;->targetPageOnProcess:Lcom/cloud/tmc/integration/structure/Page;

    .line 136
    .line 137
    invoke-direct {p0, v1, p1, p3}, Lcom/cloud/tmc/integration/structure/node/AppNode;->sendPageBackToWorker(Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/integration/structure/Page$TaskContext;)V

    .line 138
    .line 139
    .line 140
    :cond_5
    :goto_1
    if-nez v0, :cond_6

    .line 141
    .line 142
    if-eqz p2, :cond_6

    .line 143
    .line 144
    iget-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppManager:Lcom/cloud/tmc/integration/structure/AppManager;

    .line 145
    .line 146
    invoke-interface {p1, p0}, Lcom/cloud/tmc/integration/structure/AppManager;->exitApp(Lcom/cloud/tmc/integration/structure/App;)V

    .line 147
    .line 148
    .line 149
    :cond_6
    return-void
.end method

.method public final restart(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-boolean p2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->restarting:Z

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const-string p1, "TmcApp:App"

    .line 6
    .line 7
    const-string p2, "cannot restart during restarting"

    .line 8
    .line 9
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 p2, 0x1

    .line 14
    iput-boolean p2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->restarting:Z

    .line 15
    .line 16
    new-instance v0, Lcom/cloud/tmc/integration/structure/AppRestartResult;

    .line 17
    .line 18
    invoke-direct {v0}, Lcom/cloud/tmc/integration/structure/AppRestartResult;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v1, "url"

    .line 22
    .line 23
    invoke-static {p1, v1}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iput-object v1, v0, Lcom/cloud/tmc/integration/structure/AppRestartResult;->startUrl:Ljava/lang/String;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    iput-boolean v1, v0, Lcom/cloud/tmc/integration/structure/AppRestartResult;->closeAllWindow:Z

    .line 31
    .line 32
    iput-boolean p2, v0, Lcom/cloud/tmc/integration/structure/AppRestartResult;->canRestart:Z

    .line 33
    .line 34
    iput-object p1, v0, Lcom/cloud/tmc/integration/structure/AppRestartResult;->startParam:Landroid/os/Bundle;

    .line 35
    .line 36
    return-void
.end method

.method public resume()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "resume with mSendResumeInRestart: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mSendResumeInRestart:Z

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "TmcApp:App"

    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppModel:Lcom/cloud/tmc/integration/model/AppModel;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getDevMode()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v1, 0x2

    .line 34
    if-ne v0, v1, :cond_0

    .line 35
    .line 36
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/BuildConfigProxy;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/BuildConfigProxy;

    .line 43
    .line 44
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/BuildConfigProxy;->isDebug()Ljava/lang/Boolean;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    :cond_0
    invoke-static {}, Lcom/cloud/tmc/integration/utils/AppUtils;->enableWebViewDebugger()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    :cond_1
    const/4 v0, 0x1

    .line 61
    invoke-static {v0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    .line 64
    :catchall_0
    :cond_2
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mHasPaused:Z

    .line 65
    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mSendResumeInRestart:Z

    .line 69
    .line 70
    if-nez v0, :cond_3

    .line 71
    .line 72
    const-string v0, "onAppShow"

    .line 73
    .line 74
    invoke-static {p0, v0}, Lcom/cloud/tmc/integration/utils/AppUtils;->sendToApp(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_3
    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mSendResumeInRestart:Z

    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->onResume()V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public setAddhomeShowCallback(Lcom/cloud/tmc/integration/callback/IShowAddHomeCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->showAddhomeCallback:Lcom/cloud/tmc/integration/callback/IShowAddHomeCallback;

    .line 2
    .line 3
    return-void
.end method

.method public setAppCallback(Lcom/cloud/tmc/integration/callback/IAppCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->appCallback:Lcom/cloud/tmc/integration/callback/IAppCallback;

    .line 2
    .line 3
    return-void
.end method

.method public setAppChainContext(Lcom/cloud/tmc/integration/chain/app/AppChainContext;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    .line 2
    .line 3
    return-void
.end method

.method public setAppStartTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->startTime:J

    .line 2
    .line 3
    return-void
.end method

.method public setAppType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAsyncLaunchStatus(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->asyncLaunchStatus:Z

    .line 2
    .line 3
    return-void
.end method

.method public setAsyncStartLoadingCallback(Lcom/cloud/tmc/integration/callback/IAsyncStartLoadingCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->iAsyncStartLoadingCallback:Lcom/cloud/tmc/integration/callback/IAsyncStartLoadingCallback;

    .line 2
    .line 3
    return-void
.end method

.method public setBackToPagePath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->backToPagePath:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setEngineProxy(Lcom/cloud/tmc/kernel/engine/IEngine;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mEngineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

    .line 2
    .line 3
    return-void
.end method

.method public setLoadHtmlDataCallback(Lcom/cloud/tmc/integration/callback/ILoadHtmlDataCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->loadHtmlDataCallback:Lcom/cloud/tmc/integration/callback/ILoadHtmlDataCallback;

    .line 2
    .line 3
    return-void
.end method

.method public setMiniAppAutoPopover(Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->miniAppAutoPopover:Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    .line 2
    .line 3
    return-void
.end method

.method public setMiniAppLoadStatus(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->miniappLoadSuccess:Z

    .line 2
    .line 3
    return-void
.end method

.method public setMiniappLifecycleCallback(Lcom/cloud/tmc/integration/callback/ICheckMiniAppLifecycleCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->checkMiniAppLifecycleCallback:Lcom/cloud/tmc/integration/callback/ICheckMiniAppLifecycleCallback;

    .line 2
    .line 3
    return-void
.end method

.method public setmAppLoadResult(Lcom/cloud/tmc/integration/structure/AppLoadResult;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppLoadResult:Lcom/cloud/tmc/integration/structure/AppLoadResult;

    .line 2
    .line 3
    return-void
.end method

.method public setmSceneParams(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mSceneParams:Landroid/os/Bundle;

    .line 2
    .line 3
    return-void
.end method

.method public setmStartParams(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mStartParams:Landroid/os/Bundle;

    .line 2
    .line 3
    return-void
.end method

.method public final declared-synchronized start()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAlreadyStarted:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v0, "TmcApp:App"

    .line 7
    .line 8
    const-string v1, "try start but mAlreadyStarted true!"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x1

    .line 18
    :try_start_1
    iput-boolean v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAlreadyStarted:Z

    .line 19
    .line 20
    const-string v0, "TmcApp:App"

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v2, "start "

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->appId:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 45
    .line 46
    .line 47
    move-result-wide v0

    .line 48
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getStartParams()Landroid/os/Bundle;

    .line 49
    .line 50
    .line 51
    new-instance v2, Lcom/cloud/tmc/integration/structure/node/AppNode$3;

    .line 52
    .line 53
    invoke-direct {v2, p0, v0, v1}, Lcom/cloud/tmc/integration/structure/node/AppNode$3;-><init>(Lcom/cloud/tmc/integration/structure/node/AppNode;J)V

    .line 54
    .line 55
    .line 56
    invoke-static {v2}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    .line 58
    .line 59
    monitor-exit p0

    .line 60
    return-void

    .line 61
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    throw v0
.end method

.method public stop()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->onStop()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public switchTab(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "switchTab "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, " with stack: "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    new-instance v1, Ljava/lang/Throwable;

    .line 20
    .line 21
    const-string v2, "Just Print"

    .line 22
    .line 23
    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "TmcApp:App"

    .line 38
    .line 39
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    if-eqz v6, :cond_1

    .line 47
    .line 48
    invoke-interface {v6}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    invoke-interface {v6}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    const-string v0, "switcherTabFromScene"

    .line 65
    .line 66
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/kernel/node/NodeInstance;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const-string v2, "fromTabReselected"

    .line 71
    .line 72
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_0

    .line 77
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v2, "\u91cd\u590d switchTab path: "

    .line 84
    .line 85
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const-class v0, Lcom/cloud/tmc/integration/model/TabReSelectedStore;

    .line 99
    .line 100
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/kernel/node/NodeInstance;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Lcom/cloud/tmc/integration/model/TabReSelectedStore;

    .line 105
    .line 106
    if-eqz v0, :cond_0

    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/TabReSelectedStore;->getPageCache()Ljava/util/WeakHashMap;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-interface {v6}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    check-cast v0, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 121
    .line 122
    if-eqz v0, :cond_0

    .line 123
    .line 124
    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    const-string v2, "url"

    .line 129
    .line 130
    invoke-interface {v6}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-virtual {v1, v2, v3}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 143
    .line 144
    .line 145
    :cond_0
    return-void

    .line 146
    :cond_1
    invoke-virtual {p0}, Lcom/cloud/tmc/kernel/node/NodeInstance;->getChildCount()I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    new-instance v2, Ljava/util/ArrayList;

    .line 151
    .line 152
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .line 154
    .line 155
    new-instance v4, Ljava/util/ArrayList;

    .line 156
    .line 157
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .line 159
    .line 160
    const/4 v7, 0x1

    .line 161
    sub-int/2addr v0, v7

    .line 162
    :goto_0
    const-class v8, Lcom/cloud/tmc/integration/structure/Page$AnimStore;

    .line 163
    .line 164
    if-ltz v0, :cond_6

    .line 165
    .line 166
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getPageByIndex(I)Lcom/cloud/tmc/integration/structure/Page;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    if-nez v5, :cond_2

    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_2
    if-eqz v6, :cond_3

    .line 174
    .line 175
    invoke-interface {v6}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    .line 176
    .line 177
    .line 178
    move-result v9

    .line 179
    if-eqz v9, :cond_3

    .line 180
    .line 181
    invoke-interface {v6}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v9

    .line 185
    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v10

    .line 189
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v9

    .line 193
    if-nez v9, :cond_4

    .line 194
    .line 195
    :cond_3
    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    .line 196
    .line 197
    .line 198
    move-result v9

    .line 199
    if-eqz v9, :cond_5

    .line 200
    .line 201
    :cond_4
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_5
    invoke-interface {v5, v8, v7}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v8

    .line 209
    check-cast v8, Lcom/cloud/tmc/integration/structure/Page$AnimStore;

    .line 210
    .line 211
    iput-boolean v7, v8, Lcom/cloud/tmc/integration/structure/Page$AnimStore;->disableExit:Z

    .line 212
    .line 213
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 217
    .line 218
    goto :goto_0

    .line 219
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    if-eqz v2, :cond_7

    .line 228
    .line 229
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    check-cast v2, Lcom/cloud/tmc/integration/structure/Page;

    .line 234
    .line 235
    const/4 v5, 0x0

    .line 236
    invoke-interface {v2, v5}, Lcom/cloud/tmc/integration/structure/Page;->exit(Z)V

    .line 237
    .line 238
    .line 239
    goto :goto_2

    .line 240
    :cond_7
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    :cond_8
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    if-eqz v2, :cond_a

    .line 249
    .line 250
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    check-cast v2, Lcom/cloud/tmc/integration/structure/Page;

    .line 255
    .line 256
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v5

    .line 260
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result v5

    .line 264
    if-eqz v5, :cond_9

    .line 265
    .line 266
    goto :goto_3

    .line 267
    :cond_9
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->isHide()Z

    .line 268
    .line 269
    .line 270
    move-result v5

    .line 271
    if-nez v5, :cond_8

    .line 272
    .line 273
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->hide()V

    .line 274
    .line 275
    .line 276
    goto :goto_3

    .line 277
    :cond_a
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppContext:Lcom/cloud/tmc/integration/structure/AppContext;

    .line 278
    .line 279
    instance-of v2, v0, Lcom/cloud/tmc/integration/structure/app/TmcAppContext;

    .line 280
    .line 281
    const/4 v9, 0x0

    .line 282
    if-eqz v2, :cond_b

    .line 283
    .line 284
    check-cast v0, Lcom/cloud/tmc/integration/structure/app/TmcAppContext;

    .line 285
    .line 286
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->getFragmentManager()Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    invoke-interface {v0, v4}, Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;->moveTabPageToCache(Ljava/util/List;)V

    .line 291
    .line 292
    .line 293
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppContext:Lcom/cloud/tmc/integration/structure/AppContext;

    .line 294
    .line 295
    check-cast v0, Lcom/cloud/tmc/integration/structure/app/TmcAppContext;

    .line 296
    .line 297
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->getFragmentManager()Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    invoke-interface {v0, p1}, Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;->findTabFragmentByPath(Ljava/lang/String;)Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    goto :goto_4

    .line 306
    :cond_b
    move-object v0, v9

    .line 307
    :goto_4
    const-string v10, ""

    .line 308
    .line 309
    if-eqz v0, :cond_10

    .line 310
    .line 311
    new-instance v2, Ljava/lang/StringBuilder;

    .line 312
    .line 313
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    .line 315
    .line 316
    const-string v4, "switchTab: "

    .line 317
    .line 318
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    const-string v3, " found in fragment manager"

    .line 325
    .line 326
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v2

    .line 333
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->getPage()Lcom/cloud/tmc/integration/structure/Page;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    if-nez v0, :cond_c

    .line 341
    .line 342
    return-void

    .line 343
    :cond_c
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->show()V

    .line 344
    .line 345
    .line 346
    iget-object v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppContext:Lcom/cloud/tmc/integration/structure/AppContext;

    .line 347
    .line 348
    if-eqz v1, :cond_d

    .line 349
    .line 350
    invoke-interface {v1, v0}, Lcom/cloud/tmc/integration/structure/AppContext;->switchTab(Lcom/cloud/tmc/integration/structure/Page;)V

    .line 351
    .line 352
    .line 353
    :cond_d
    const-class v1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 354
    .line 355
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 360
    .line 361
    invoke-interface {v1, v0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    if-eqz v0, :cond_f

    .line 366
    .line 367
    new-instance v1, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEvent;

    .line 368
    .line 369
    const-string v2, "SwitchTab"

    .line 370
    .line 371
    invoke-direct {v1, v2}, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEvent;-><init>(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    new-instance v2, Ljava/util/HashMap;

    .line 375
    .line 376
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 377
    .line 378
    .line 379
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 380
    .line 381
    const-string v4, "tabCreated"

    .line 382
    .line 383
    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    if-eqz v6, :cond_e

    .line 387
    .line 388
    invoke-interface {v6}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v10

    .line 392
    :cond_e
    const-string v3, "preRenderId"

    .line 393
    .line 394
    invoke-virtual {v2, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v1, v2}, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEvent;->setData(Ljava/util/Map;)V

    .line 398
    .line 399
    .line 400
    const-string v2, "onSwitchTab"

    .line 401
    .line 402
    invoke-interface {v0, v2, v1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->postEvent(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)V

    .line 403
    .line 404
    .line 405
    :cond_f
    return-void

    .line 406
    :cond_10
    const-class v0, Lcom/cloud/tmc/integration/proxy/PageFactory;

    .line 407
    .line 408
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    check-cast v0, Lcom/cloud/tmc/integration/proxy/PageFactory;

    .line 413
    .line 414
    const-string v2, "https://100000.miniapp.transsion.com/index.html"

    .line 415
    .line 416
    move-object v1, p0

    .line 417
    move-object v3, p1

    .line 418
    move-object v4, p2

    .line 419
    move-object v5, p3

    .line 420
    invoke-interface/range {v0 .. v5}, Lcom/cloud/tmc/integration/proxy/PageFactory;->createPage(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/cloud/tmc/integration/structure/node/PageNode;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    const-string v1, "switchTab"

    .line 425
    .line 426
    invoke-static {v0, v1}, Lcom/cloud/tmc/integration/utils/TrackPointUtils;->pageRouteTrackStart(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    new-instance v1, Lcom/cloud/tmc/integration/structure/Page$AnimStore;

    .line 430
    .line 431
    invoke-direct {v1}, Lcom/cloud/tmc/integration/structure/Page$AnimStore;-><init>()V

    .line 432
    .line 433
    .line 434
    iput-boolean v7, v1, Lcom/cloud/tmc/integration/structure/Page$AnimStore;->disableEnter:Z

    .line 435
    .line 436
    invoke-virtual {v0, v8, v1}, Lcom/cloud/tmc/kernel/node/NodeInstance;->setData(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 437
    .line 438
    .line 439
    iget-object v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mEngineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

    .line 440
    .line 441
    const-class v2, Lcom/cloud/tmc/integration/model/WorkerStore;

    .line 442
    .line 443
    if-nez v1, :cond_11

    .line 444
    .line 445
    new-instance v1, Lcom/cloud/tmc/integration/model/WorkerStore;

    .line 446
    .line 447
    invoke-direct {v1, v10}, Lcom/cloud/tmc/integration/model/WorkerStore;-><init>(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v0, v2, v1}, Lcom/cloud/tmc/kernel/node/NodeInstance;->setData(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 451
    .line 452
    .line 453
    goto :goto_5

    .line 454
    :cond_11
    new-instance v3, Lcom/cloud/tmc/integration/model/WorkerStore;

    .line 455
    .line 456
    invoke-interface {v1}, Lcom/cloud/tmc/kernel/engine/IEngine;->getWorkerId()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v1

    .line 460
    invoke-direct {v3, v1}, Lcom/cloud/tmc/integration/model/WorkerStore;-><init>(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v0, v2, v3}, Lcom/cloud/tmc/kernel/node/NodeInstance;->setData(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 464
    .line 465
    .line 466
    :goto_5
    if-eqz v6, :cond_12

    .line 467
    .line 468
    invoke-interface {v6}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v9

    .line 472
    :cond_12
    const-string v1, "prePageId"

    .line 473
    .line 474
    invoke-virtual {v0, v1, v9}, Lcom/cloud/tmc/kernel/node/NodeInstance;->putStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/kernel/node/NodeInstance;->pushChild(Lcom/cloud/tmc/kernel/node/Node;)V

    .line 478
    .line 479
    .line 480
    iget-object v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppContext:Lcom/cloud/tmc/integration/structure/AppContext;

    .line 481
    .line 482
    if-eqz v1, :cond_13

    .line 483
    .line 484
    invoke-interface {v1, v0}, Lcom/cloud/tmc/integration/structure/AppContext;->pushPage(Lcom/cloud/tmc/integration/structure/Page;)Z

    .line 485
    .line 486
    .line 487
    :cond_13
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getAppId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, "@"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-wide v2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mStartToken:J

    .line 27
    .line 28
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v2, "@appid="

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    return-object v0
.end method

.method public updateAddHomeShowStatus(I)V
    .locals 2

    .line 1
    const/16 v0, 0x64

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->MFAHShowStatus:Z

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/16 v0, 0x5a

    .line 10
    .line 11
    if-ne p1, v0, :cond_1

    .line 12
    .line 13
    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->APIAddhomeShowStatus:Z

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/16 v0, 0x51

    .line 17
    .line 18
    if-ne p1, v0, :cond_2

    .line 19
    .line 20
    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->guideTopAddhomeShowStatus:Z

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    const/16 v0, 0x52

    .line 24
    .line 25
    if-ne p1, v0, :cond_3

    .line 26
    .line 27
    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->guideBottomAddhomeShowStatus:Z

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_3
    const/16 v0, 0x53

    .line 31
    .line 32
    if-ne p1, v0, :cond_4

    .line 33
    .line 34
    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->guideBackAddhomeShowStatus:Z

    .line 35
    .line 36
    :cond_4
    :goto_0
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->notifyAddHomeShow(I)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public updateAppModel(Lcom/cloud/tmc/integration/model/AppModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppModel:Lcom/cloud/tmc/integration/model/AppModel;

    .line 2
    .line 3
    return-void
.end method

.method public updateHideMiniappLoadingStatus(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->isHideMiniAppLoaingStatus:Z

    .line 2
    .line 3
    return-void
.end method

.method public updateInterectCallbackId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->currentInterectCallbackId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public updateMFAHStatus(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->currentMFAHStatus:Ljava/lang/Boolean;

    .line 6
    .line 7
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/cloud/tmc/kernel/node/NodeInstance;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->appId:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-wide v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mStartToken:J

    .line 10
    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppType:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object p2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppVersion:Ljava/lang/String;

    .line 20
    .line 21
    const-string v0, ""

    .line 22
    .line 23
    if-nez p2, :cond_0

    .line 24
    .line 25
    move-object p2, v0

    .line 26
    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object p2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mStartParams:Landroid/os/Bundle;

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 32
    .line 33
    .line 34
    iget-object p2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mSceneParams:Landroid/os/Bundle;

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 37
    .line 38
    .line 39
    iget-object p2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mStartUrl:Ljava/lang/String;

    .line 40
    .line 41
    if-nez p2, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move-object v0, p2

    .line 45
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method
