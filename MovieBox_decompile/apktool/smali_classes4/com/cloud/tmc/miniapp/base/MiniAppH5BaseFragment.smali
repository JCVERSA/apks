.class public abstract Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;
.super Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/render/MonitorWebviewListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$H5OnPageFinishedEventCenter;,
        Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;,
        Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;,
        Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$WhenMappings;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final TAG_NEW:Ljava/lang/String;

.field private final TAG_REDIRECT:Ljava/lang/String;

.field private final backForwardStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;",
            ">;"
        }
    .end annotation
.end field

.field private h5EventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

.field private h5OnPageFinishedEventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

.field private final h5PageId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private isFirstLoadHomePage:Z

.field private loadingUrl:Ljava/lang/String;

.field private final pageStartStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final redirectUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private trackPointLoadData:Z

.field private final urlMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private virtual_h5PageId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "h5PointTrack"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "h5PointTrackNew"

    .line 9
    .line 10
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, ""

    .line 13
    .line 14
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v0, Ljava/util/Stack;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->backForwardStack:Ljava/util/Stack;

    .line 22
    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->h5PageId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 30
    .line 31
    const-string v0, "0"

    .line 32
    .line 33
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->virtual_h5PageId:Ljava/lang/String;

    .line 34
    .line 35
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->urlMap:Ljava/util/Map;

    .line 41
    .line 42
    const-string v0, "h5Redirect"

    .line 43
    .line 44
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_REDIRECT:Ljava/lang/String;

    .line 45
    .line 46
    new-instance v0, Ljava/util/Stack;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pageStartStack:Ljava/util/Stack;

    .line 52
    .line 53
    new-instance v0, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->redirectUrls:Ljava/util/List;

    .line 59
    .line 60
    return-void
.end method

.method public static final synthetic access$getPageChainContext(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;Ljava/lang/String;)Lcom/cloud/tmc/integration/chain/page/PageChainContext;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getPageChainContext(Ljava/lang/String;)Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getTAG_NEW$p(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method private final addNewPageTrack(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "addNewPageTrack"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-nez p3, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackCreateContainerStartNew(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackCreateContainerEndNew(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackCreateRenderStartNew(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackCreateRenderEndNew(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackLoadRenderFrameworkStartNew(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackLoadRenderFrameworkEndNew(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackCreateWorkerStartNew(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackCreateWorkerEndNew(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackLoadWorkerFrameworkStartNew(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackLoadWorkerFrameworkEndNew(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackMidStartNew(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackMidEndNew(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackDrawViewStartNew(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public static synthetic c0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->injectJSFromConfig$lambda$35$lambda$34(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final checkDomLoadMonitorSwitch(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    if-eq p1, v1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 10
    .line 11
    const-string v1, "enableShellDomMonitor"

    .line 12
    .line 13
    invoke-virtual {p1, v1, v0}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetBool(Ljava/lang/String;Z)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    sget-object p1, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 19
    .line 20
    const-string v1, "enableH5DomMonitor"

    .line 21
    .line 22
    invoke-virtual {p1, v1, v0}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetBool(Ljava/lang/String;Z)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    :goto_0
    return p1
.end method

.method private final findPrePage()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pageStartStack:Ljava/util/Stack;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Ljava/lang/String;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->redirectUrls:Ljava/util/List;

    .line 14
    .line 15
    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->b0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pageStartStack:Ljava/util/Stack;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->findPrePage()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_1
    return-object v1

    .line 31
    :catchall_0
    return-object v0
.end method

.method private final getPageChainContext(Ljava/lang/String;)Lcom/cloud/tmc/integration/chain/page/PageChainContext;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const-class v1, Lcom/cloud/tmc/miniapp/base/ShowPageStore;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/cloud/tmc/miniapp/base/ShowPageStore;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageStore;->findShowPages()Ljava/util/Stack;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lcom/cloud/tmc/miniapp/base/ShowPageData;

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getVirtual_h5PageId()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_0

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getPageChainContext()Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    return-object p1

    .line 52
    :cond_1
    const/4 p1, 0x0

    .line 53
    return-object p1
.end method

.method public static synthetic goBackNew$default(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;ILjava/lang/Object;)V
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
    sget-object p1, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;->BACK:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->goBackNew(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    const-string p1, "Super calls with default arguments not supported in this target, function: goBackNew"

    .line 16
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method

.method private static final injectJSFromConfig$lambda$35$lambda$34(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p2, "$injectJSStrategy"

    .line 2
    .line 3
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "$scriptWrapper"

    .line 7
    .line 8
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p0, " inject success script:\n"

    .line 20
    .line 21
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p0, "\n"

    .line 28
    .line 29
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const-string p1, "InjectJS"

    .line 37
    .line 38
    invoke-static {p1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public static synthetic pointTrackDrawViewEndForApp$default(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p5, :cond_1

    .line 2
    .line 3
    and-int/lit8 p4, p4, 0x4

    .line 4
    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    const/4 p3, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackDrawViewEndForApp(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string p1, "Super calls with default arguments not supported in this target, function: pointTrackDrawViewEndForApp"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public static synthetic pointTrackDrawViewEndNew$default(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p5, :cond_1

    .line 2
    .line 3
    and-int/lit8 p4, p4, 0x4

    .line 4
    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    const/4 p3, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackDrawViewEndNew(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string p1, "Super calls with default arguments not supported in this target, function: pointTrackDrawViewEndNew"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public static synthetic pointTrackDrawViewFailNew$default(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p5, :cond_1

    .line 2
    .line 3
    and-int/lit8 p4, p4, 0x4

    .line 4
    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    const/4 p3, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackDrawViewFailNew(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string p1, "Super calls with default arguments not supported in this target, function: pointTrackDrawViewFailNew"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method


# virtual methods
.method public final addPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/chain/page/PageChainContext;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v4, p3

    .line 4
    .line 5
    const-class v1, Lcom/cloud/tmc/miniapp/base/ShowPageStore;

    .line 6
    .line 7
    const-string v2, "originalUrl"

    .line 8
    .line 9
    move-object/from16 v3, p1

    .line 10
    .line 11
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v2, "url"

    .line 15
    .line 16
    move-object/from16 v5, p2

    .line 17
    .line 18
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v2, "requestUrl"

    .line 22
    .line 23
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v2, "virtual_h5PageId"

    .line 27
    .line 28
    move-object/from16 v6, p4

    .line 29
    .line 30
    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v2, "pageChainContext"

    .line 34
    .line 35
    move-object/from16 v9, p5

    .line 36
    .line 37
    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :try_start_0
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    .line 41
    .line 42
    new-instance v7, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v8, "Add New Home Page -> requestUrl:"

    .line 48
    .line 49
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    invoke-static {v2, v7}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v2, v0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 63
    .line 64
    if-eqz v2, :cond_3

    .line 65
    .line 66
    invoke-interface {v2, v1}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    if-nez v7, :cond_0

    .line 71
    .line 72
    new-instance v7, Lcom/cloud/tmc/miniapp/base/ShowPageStore;

    .line 73
    .line 74
    invoke-direct {v7}, Lcom/cloud/tmc/miniapp/base/ShowPageStore;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-interface {v2, v1, v7}, Lcom/cloud/tmc/kernel/node/DataNode;->setData(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    :cond_0
    invoke-interface {v2, v1}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    check-cast v1, Lcom/cloud/tmc/miniapp/base/ShowPageStore;

    .line 85
    .line 86
    if-eqz v1, :cond_3

    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/base/ShowPageStore;->findShowPages()Ljava/util/Stack;

    .line 89
    .line 90
    .line 91
    move-result-object v15

    .line 92
    new-instance v13, Lcom/cloud/tmc/miniapp/base/ShowPageData;

    .line 93
    .line 94
    sget-object v7, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->SHOULDOVERRIDEURKLOADING:Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    .line 95
    .line 96
    iget-object v1, v0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 97
    .line 98
    if-eqz v1, :cond_2

    .line 99
    .line 100
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getPageRandomIdByGAId()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    if-nez v1, :cond_1

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_1
    :goto_0
    move-object v8, v1

    .line 108
    goto :goto_2

    .line 109
    :cond_2
    :goto_1
    const-string v1, "null"

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :goto_2
    const-string v1, "page?.pageRandomIdByGAId ?: \"null\""

    .line 113
    .line 114
    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    const/16 v16, 0xf00

    .line 118
    .line 119
    const/16 v17, 0x0

    .line 120
    .line 121
    const/4 v10, 0x0

    .line 122
    const/4 v11, 0x0

    .line 123
    const/4 v12, 0x0

    .line 124
    const/4 v14, 0x0

    .line 125
    const-wide/16 v18, 0x0

    .line 126
    .line 127
    move-object v1, v13

    .line 128
    move-object/from16 v2, p1

    .line 129
    .line 130
    move-object/from16 v3, p2

    .line 131
    .line 132
    move-object/from16 v4, p3

    .line 133
    .line 134
    move-object/from16 v5, p4

    .line 135
    .line 136
    move-object v6, v7

    .line 137
    move v7, v10

    .line 138
    move-object/from16 v9, p5

    .line 139
    .line 140
    move v10, v11

    .line 141
    move-object v11, v12

    .line 142
    move-object v12, v14

    .line 143
    move-object/from16 v20, v13

    .line 144
    .line 145
    move-wide/from16 v13, v18

    .line 146
    .line 147
    move-object/from16 v21, v15

    .line 148
    .line 149
    move/from16 v15, v16

    .line 150
    .line 151
    move-object/from16 v16, v17

    .line 152
    .line 153
    invoke-direct/range {v1 .. v16}, Lcom/cloud/tmc/miniapp/base/ShowPageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/base/ShowPageStatus;ZLjava/lang/String;Lcom/cloud/tmc/integration/chain/page/PageChainContext;ZLjava/util/concurrent/ConcurrentHashMap;Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 154
    .line 155
    .line 156
    move-object/from16 v2, v20

    .line 157
    .line 158
    move-object/from16 v1, v21

    .line 159
    .line 160
    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    .line 162
    .line 163
    :catchall_0
    :cond_3
    return-void
.end method

.method public final canGoBack(Landroid/webkit/WebView;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_REDIRECT:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getCurrentOriginalUrl(Landroid/webkit/WebView;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getCurrentUrl(Landroid/webkit/WebView;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v4, "canGoBack => originalUrl:"

    .line 17
    .line 18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, " , url:"

    .line 25
    .line 26
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    :try_start_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/4 v1, 0x1

    .line 46
    if-ne v0, v1, :cond_1

    .line 47
    .line 48
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->redirectUrls:Ljava/util/List;

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_0

    .line 55
    .line 56
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_REDIRECT:Ljava/lang/String;

    .line 57
    .line 58
    const-string v1, "canGoBack => \u91cd\u5b9a\u5411\u56de\u9000"

    .line 59
    .line 60
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->redirectCanGoBack(Landroid/webkit/WebView;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_REDIRECT:Ljava/lang/String;

    .line 69
    .line 70
    const-string v2, "canGoBack => \u6b63\u5e38\u56de\u9000"

    .line 71
    .line 72
    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    .line 76
    .line 77
    .line 78
    const/4 p1, 0x0

    .line 79
    invoke-static {p0, p1, v1, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->goBackNew$default(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;ILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->goBack()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .line 84
    .line 85
    :goto_0
    return v1

    .line 86
    :catchall_0
    :cond_1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_REDIRECT:Ljava/lang/String;

    .line 87
    .line 88
    const-string v0, "canGoBack => \u76f4\u63a5\u9000\u51fa"

    .line 89
    .line 90
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const/4 p1, 0x0

    .line 94
    return p1
.end method

.method public final createSubscriber()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-class v2, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 10
    .line 11
    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 16
    .line 17
    invoke-interface {v2, v1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iput-object v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->h5EventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 22
    .line 23
    new-instance v2, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$H5OnPageFinishedEventCenter;

    .line 24
    .line 25
    invoke-direct {v2, p0, v0, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$H5OnPageFinishedEventCenter;-><init>(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/integration/structure/Page;)V

    .line 26
    .line 27
    .line 28
    iput-object v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->h5OnPageFinishedEventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->h5EventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    const-string v1, "h5OnPageFinished"

    .line 35
    .line 36
    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->register(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    :catchall_0
    :cond_0
    return-void
.end method

.method public final destroySubscriber()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->h5OnPageFinishedEventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->h5EventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string v2, "h5OnPageFinished"

    .line 10
    .line 11
    invoke-interface {v1, v2, v0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->unregister(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    :catchall_0
    :cond_0
    return-void
.end method

.method public final getCurrentOriginalUrl(Landroid/webkit/WebView;)Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x2

    .line 12
    const-string v4, "about:blank"

    .line 13
    .line 14
    invoke-static {v1, v4, v2, v3, v0}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x1

    .line 19
    if-ne v1, v2, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :cond_1
    :goto_0
    return-object v0
.end method

.method public final getCurrentUrl(Landroid/webkit/WebView;)Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x2

    .line 12
    const-string v4, "about:blank"

    .line 13
    .line 14
    invoke-static {v1, v4, v2, v3, v0}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x1

    .line 19
    if-ne v1, v2, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :cond_1
    :goto_0
    return-object v0
.end method

.method public final getH5EventCenter()Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->h5EventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getH5OnPageFinishedEventCenter()Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->h5OnPageFinishedEventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getH5PageId()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->h5PageId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, ""

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->urlMap:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/util/Map$Entry;

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Ljava/lang/String;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    move-object v0, p1

    .line 46
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v2, "getReportOriginalUrl -> realUrl:"

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string p1, ", originalUrl:"

    .line 60
    .line 61
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    const-string v1, "oldChain"

    .line 72
    .line 73
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-object v0
.end method

.method public final getTrackPointLoadData()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->trackPointLoadData:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getUrlMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->urlMap:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public final goBack()V
    .locals 6

    .line 1
    const-string v0, ", showPage: "

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->backForwardStack:Ljava/util/Stack;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-le v1, v2, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->backForwardStack:Ljava/util/Stack;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getUrl()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getPageRandomIdByGAID()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {p0, v2, v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackClear(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->backForwardStack:Ljava/util/Stack;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;

    .line 38
    .line 39
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    .line 40
    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v5, "goBack => exitPage: "

    .line 47
    .line 48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-static {v3, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getUrl()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getVirtual_h5PageId()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    const/4 v5, 0x0

    .line 76
    invoke-virtual {p0, v3, v5, v4}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->setLoadingUrl(Ljava/lang/String;ZLjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getCanGoBack()Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-nez v3, :cond_1

    .line 84
    .line 85
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    .line 86
    .line 87
    new-instance v4, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string v5, "goBack \u9875\u9762\u672a\u5165\u6808\uff0c\u7ee7\u7eed\u9000\u51fa => exitPage: "

    .line 93
    .line 94
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-static {v3, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->goBack()V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :catchall_0
    move-exception v0

    .line 118
    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    .line 120
    .line 121
    const-string v1, "goBack fail: backForwardStack.size <= 1"

    .line 122
    .line 123
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    const-string v2, "goback fail: "

    .line 133
    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-static {v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    :cond_1
    :goto_1
    return-void
.end method

.method public final goBackNew(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;)V
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
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 7
    .line 8
    if-eqz v0, :cond_6

    .line 9
    .line 10
    const-class v1, Lcom/cloud/tmc/miniapp/base/ShowPageStore;

    .line 11
    .line 12
    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/cloud/tmc/miniapp/base/ShowPageStore;

    .line 17
    .line 18
    if-eqz v0, :cond_6

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageStore;->findShowPages()Ljava/util/Stack;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    goto/16 :goto_0

    .line 27
    .line 28
    :cond_0
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    .line 35
    .line 36
    const-string v0, "goBackNew currentPage -> showPages.size == 0 return"

    .line 37
    .line 38
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto/16 :goto_1

    .line 44
    .line 45
    :cond_1
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Lcom/cloud/tmc/miniapp/base/ShowPageData;

    .line 50
    .line 51
    if-nez v1, :cond_2

    .line 52
    .line 53
    return-void

    .line 54
    :cond_2
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    .line 55
    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v4, "goBackNew currentPage -> "

    .line 62
    .line 63
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-static {v2, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->setExitType(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getRequestUrl()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getVirtual_h5PageId()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {p0, p1, v2, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackClearNew(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/base/ShowPageData;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-nez p1, :cond_3

    .line 95
    .line 96
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    .line 97
    .line 98
    const-string v0, "goBackNew prePage= -> showPages.size == 0 return"

    .line 99
    .line 100
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_3
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    check-cast p1, Lcom/cloud/tmc/miniapp/base/ShowPageData;

    .line 109
    .line 110
    if-nez p1, :cond_4

    .line 111
    .line 112
    return-void

    .line 113
    :cond_4
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    .line 114
    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    const-string v2, "goBackNew prePage -> "

    .line 121
    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getStatus()Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->getType()I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    sget-object v1, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->SHOULDOVERRIDEURKLOADING:Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    .line 144
    .line 145
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->getType()I

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-eq v0, v1, :cond_5

    .line 150
    .line 151
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getStatus()Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->getType()I

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    sget-object v0, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->PAGE_START:Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    .line 160
    .line 161
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->getType()I

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-ne p1, v0, :cond_7

    .line 166
    .line 167
    :cond_5
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    .line 168
    .line 169
    const-string v0, "goBackNew -> prePage.status == ShowPageStatus.SHOULDOVERRIDEURKLOADING || prePage.status == ShowPageStatus.PAGE_START \u4e3b\u52a8\u6e05\u9664\u9875\u9762\u6808\u5185\u7684\u9875\u9762"

    .line 170
    .line 171
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    sget-object p1, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;->BACK_CLEAR_PRE_PAGE:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

    .line 175
    .line 176
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->goBackNew(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_6
    :goto_0
    return-void

    .line 181
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .line 185
    .line 186
    const-string v1, "goback fail: "

    .line 187
    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-static {p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    :cond_7
    :goto_2
    return-void
.end method

.method public final initDomLoadMonitor(I)V
    .locals 4

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->checkDomLoadMonitorSwitch(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    move-object v0, v1

    .line 26
    :goto_0
    instance-of v2, v0, Landroid/webkit/WebView;

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    move-object v1, v0

    .line 31
    check-cast v1, Landroid/webkit/WebView;

    .line 32
    .line 33
    :cond_1
    if-eqz v1, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->hashCode()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v3, "javascript:document.addEventListener(\'DOMContentLoaded\', function() {window.dltMonitor.reportDomLoadTime("

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string p1, ","

    .line 53
    .line 54
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string p1, ");});"

    .line 61
    .line 62
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :goto_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    .line 74
    .line 75
    const-string v1, "domLoadMonitorInit error"

    .line 76
    .line 77
    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    :cond_2
    :goto_2
    return-void
.end method

.method public final injectJSFromConfig(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "injectJSStrategy"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Lcom/cloud/tmc/render/proxy/InjectJSProxy;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/cloud/tmc/render/proxy/InjectJSProxy;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    :goto_0
    if-nez v1, :cond_1

    .line 25
    .line 26
    const-string v1, ""

    .line 27
    .line 28
    :cond_1
    invoke-interface {v0, v1}, Lcom/cloud/tmc/render/proxy/InjectJSProxy;->getInjectStrategy(Ljava/lang/String;)Ljava/util/Map;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/cloud/tmc/render/bean/InjectStrategy;

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/cloud/tmc/render/bean/InjectStrategy;->getScript()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    const-string v1, "\n"

    .line 47
    .line 48
    invoke-static {v1}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v3, ";(function (window, document) {\n    function inject() {\n        "

    .line 62
    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v0, "    }\n    if (document && document.head) {\n        console.log(\'\u7acb\u5373Inject\');\n        inject();\n    }\n    else{\n        const observerOptions = {\n            childList: true,\n            subtree: true,\n        };\n        const observer = new MutationObserver(observerFunc);\n        observer.observe(document.getRootNode(), observerOptions);\n        let isInjected = false;\n        function observerFunc() {\n            if ((!isInjected) && document && document.head) {\n                console.log(\'\u76d1\u542ccallback\u540eInject\');\n                inject();\n                isInjected = true;\n                observer.disconnect();\n            }\n        }\n    }\n\n})(window, document);\n"

    .line 70
    .line 71
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    if-eqz p1, :cond_2

    .line 82
    .line 83
    new-instance v1, Lcom/cloud/tmc/miniapp/base/m;

    .line 84
    .line 85
    invoke-direct {v1, p2, v0}, Lcom/cloud/tmc/miniapp/base/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 89
    .line 90
    .line 91
    :cond_2
    return-void
.end method

.method public final loadingUrlError()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v3, "loadingUrlError => loadingUrl: "

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->backForwardStack:Ljava/util/Stack;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->setLoadError(Z)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 38
    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    const-class v2, Lcom/cloud/tmc/miniapp/base/ShowPageStore;

    .line 42
    .line 43
    invoke-interface {v0, v2}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lcom/cloud/tmc/miniapp/base/ShowPageStore;

    .line 48
    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageStore;->findShowPages()Ljava/util/Stack;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-eqz v0, :cond_0

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Lcom/cloud/tmc/miniapp/base/ShowPageData;

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    const/4 v0, 0x0

    .line 65
    :goto_0
    if-nez v0, :cond_1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->setLoadFail(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .line 70
    .line 71
    :catchall_0
    :goto_1
    return-void
.end method

.method public final loadingUrlFinish()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->backForwardStack:Ljava/util/Stack;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->backForwardStack:Ljava/util/Stack;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isProgressChangedTo100()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isPageFinished()Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    new-instance v5, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v6, "loadingUrlFinish => loadingUrl: "

    .line 35
    .line 36
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v2, ", isProgressChangedTo100:"

    .line 43
    .line 44
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v2, ", isPageFinished: "

    .line 51
    .line 52
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getUrl()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-nez v1, :cond_0

    .line 76
    .line 77
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    .line 78
    .line 79
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getUrl()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v4, "loadingUrlFinish fail: url\u4e0d\u5339\u914d, loadingUrl:"

    .line 91
    .line 92
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v2, " , pageStatus.url:"

    .line 99
    .line 100
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    goto :goto_1

    .line 116
    :cond_0
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isLoadError()Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-eqz v1, :cond_1

    .line 121
    .line 122
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    .line 123
    .line 124
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    .line 125
    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    const-string v3, "loadingUrlFinish fail: \u52a0\u8f7d\u9875\u9762\u5931\u8d25, loadingUrl: "

    .line 132
    .line 133
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :cond_1
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isProgressChangedTo100()Z

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    if-nez v1, :cond_4

    .line 152
    .line 153
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    .line 154
    .line 155
    const-string v2, "loadingUrlFinish => reportDate"

    .line 156
    .line 157
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    const/4 v1, 0x1

    .line 161
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->setProgressChangedTo100(Z)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackDrawViewEnd()V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getPageRandomIdByGAID()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackPageEnd(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getPageRandomIdByGAID()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackAppEnd(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    if-eqz v0, :cond_4

    .line 186
    .line 187
    sget-object v1, Lcom/cloud/tmc/integration/utils/PrivacyUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/PrivacyUtils;

    .line 188
    .line 189
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 190
    .line 191
    if-eqz v2, :cond_2

    .line 192
    .line 193
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    goto :goto_0

    .line 198
    :cond_2
    const/4 v2, 0x0

    .line 199
    :goto_0
    invoke-virtual {v1, v0, v2}, Lcom/cloud/tmc/integration/utils/PrivacyUtils;->updateNewUserStatus(Landroid/content/Context;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    goto :goto_2

    .line 203
    :cond_3
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    .line 204
    .line 205
    const-string v1, "loadingUrlFinish fail: backForwardStack.size = 0"

    .line 206
    .line 207
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .line 209
    .line 210
    goto :goto_2

    .line 211
    :goto_1
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    .line 212
    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .line 217
    .line 218
    const-string v3, "loadingUrlFinish fail: "

    .line 219
    .line 220
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    :cond_4
    :goto_2
    return-void
.end method

.method public final loadingUrlStart(Ljava/lang/String;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "pageRandomIdByGAID"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v3, v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v4, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v5, "loadingUrlStart => loadingUrl: "

    .line 20
    .line 21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-static {v2, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->backForwardStack:Ljava/util/Stack;

    .line 35
    .line 36
    new-instance v15, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;

    .line 37
    .line 38
    iget-object v4, v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    .line 39
    .line 40
    iget-boolean v7, v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->isFirstLoadHomePage:Z

    .line 41
    .line 42
    iget-object v10, v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->virtual_h5PageId:Ljava/lang/String;

    .line 43
    .line 44
    const/16 v16, 0x780

    .line 45
    .line 46
    const/16 v17, 0x0

    .line 47
    .line 48
    const/4 v5, 0x0

    .line 49
    const/4 v6, 0x0

    .line 50
    const/4 v8, 0x0

    .line 51
    const/4 v9, 0x0

    .line 52
    const/4 v11, 0x0

    .line 53
    const/4 v12, 0x0

    .line 54
    const-wide/16 v13, 0x0

    .line 55
    .line 56
    const/16 v18, 0x0

    .line 57
    .line 58
    move-object v3, v15

    .line 59
    move-object/from16 v19, v15

    .line 60
    .line 61
    move/from16 v15, v18

    .line 62
    .line 63
    invoke-direct/range {v3 .. v17}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;-><init>(Ljava/lang/String;ZZZZZLjava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;JZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 64
    .line 65
    .line 66
    move-object/from16 v3, v19

    .line 67
    .line 68
    invoke-virtual {v3, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->setPageRandomIdByGAID(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public final pointTrackAppEnd(Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string v0, "pageRandomIdByGAID"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    .line 12
    .line 13
    const-string v2, "app"

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    const-string v4, "uniqueChainID"

    .line 38
    .line 39
    const-string v5, "-1"

    .line 40
    .line 41
    invoke-virtual {v2, v4, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move-object v2, v3

    .line 47
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 51
    .line 52
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->REPORT_PAGE_PATH:Ljava/lang/String;

    .line 62
    .line 63
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string v1, "pageRandomId"

    .line 69
    .line 70
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 74
    .line 75
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 80
    .line 81
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 82
    .line 83
    if-eqz v1, :cond_1

    .line 84
    .line 85
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    :cond_1
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 90
    .line 91
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->app:Ljava/lang/String;

    .line 92
    .line 93
    invoke-interface {p1, v3, v1, v2, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .line 95
    .line 96
    :catchall_0
    return-void
.end method

.method public final pointTrackAppStart()V
    .locals 0

    .line 1
    return-void
.end method

.method public final pointTrackClear()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->backForwardStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->backForwardStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;

    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getPageRandomIdByGAID()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    const-string v1, "pointTrackClear fail: backForwardStack.size <= 1"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 5
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pointTrackClear fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    .line 6
    :goto_1
    const-string v0, ""

    :goto_2
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackClear(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final pointTrackClear(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string v0, "pagePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageRandomIdByGAID"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    :try_start_0
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 8
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 9
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_CLEAR:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    const-string v4, "clear"

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 10
    sget-object v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    const-string v7, "page"

    invoke-virtual {v5, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    sget-object v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    .line 12
    iget-object v7, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v7, :cond_1

    invoke-interface {v7}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 13
    const-string v2, "uniqueChainID"

    .line 14
    const-string v8, "-1"

    .line 15
    invoke-virtual {v7, v2, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 16
    :cond_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 17
    invoke-virtual {v5, v6, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->REPORT_PAGE_PATH:Ljava/lang/String;

    invoke-virtual {v5, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    const-string p1, "pageRandomId"

    invoke-virtual {v5, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    invoke-interface {v0, v1, v3, v4, v5}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final pointTrackClearNew()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v0, :cond_0

    const-class v1, Lcom/cloud/tmc/miniapp/base/ShowPageStore;

    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/base/ShowPageStore;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageStore;->findShowPages()Ljava/util/Stack;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/base/ShowPageData;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getRequestUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getVirtual_h5PageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackClearNew(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/base/ShowPageData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public final pointTrackClearNew(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/base/ShowPageData;)V
    .locals 3

    const-string v0, "pagePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtual_h5PageId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "showPageData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "juggist[pointTrackClearNew] -> requestUrl :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "juggist[pointTrackClearNew] -> virtual_h5PageId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->OPEN_PAGE_FAILED_REASON:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->exitType:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;->getDes()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_CATEGOR_TYPE:Ljava/lang/String;

    const-string p2, "2"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    const-string p1, "pageRandomId"

    iget-object p2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/Page;->getPageRandomIdByGAId()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 12
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 13
    iget-object p2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    :cond_1
    sget-object p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_CLEAR:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    const-string v2, "clear"

    invoke-interface {p1, v1, p2, v2, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 14
    new-instance p1, Lcom/cloud/tmc/integration/chain/insert/PageInsertState;

    invoke-direct {p1, v0}, Lcom/cloud/tmc/integration/chain/insert/PageInsertState;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p3}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getPageChainContext()Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/chain/insert/PageInsertState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    .line 15
    invoke-virtual {p3}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getPageChainContext()Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->destroy(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method

.method public final pointTrackCreateContainerEndNew(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 2
    .line 3
    const-string v1, "url"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "virtual_h5PageId"

    .line 9
    .line 10
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 16
    .line 17
    .line 18
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_CATEGOR_TYPE:Ljava/lang/String;

    .line 33
    .line 34
    const-string v2, "2"

    .line 35
    .line 36
    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    if-eqz v2, :cond_0

    .line 49
    .line 50
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    move-object v2, v3

    .line 56
    :goto_0
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 57
    .line 58
    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageCreateContainer:Ljava/lang/String;

    .line 59
    .line 60
    invoke-interface {p1, v2, v4, v5, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 68
    .line 69
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 70
    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    :cond_1
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 78
    .line 79
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageCreateContainer:Ljava/lang/String;

    .line 80
    .line 81
    invoke-interface {p1, v3, v0, v2, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 82
    .line 83
    .line 84
    new-instance p1, Lcom/cloud/tmc/integration/chain/endState/CreateContainerEndState;

    .line 85
    .line 86
    invoke-direct {p1, v1}, Lcom/cloud/tmc/integration/chain/endState/CreateContainerEndState;-><init>(Landroid/os/Bundle;)V

    .line 87
    .line 88
    .line 89
    invoke-direct {p0, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getPageChainContext(Ljava/lang/String;)Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/chain/endState/CreateContainerEndState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .line 95
    .line 96
    :catchall_0
    return-void
.end method

.method public final pointTrackCreateContainerStartNew(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 2
    .line 3
    const-string v1, "url"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "virtual_h5PageId"

    .line 9
    .line 10
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 16
    .line 17
    .line 18
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_CATEGOR_TYPE:Ljava/lang/String;

    .line 33
    .line 34
    const-string v2, "2"

    .line 35
    .line 36
    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    if-eqz v2, :cond_0

    .line 49
    .line 50
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    move-object v2, v3

    .line 56
    :goto_0
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 57
    .line 58
    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageCreateContainer:Ljava/lang/String;

    .line 59
    .line 60
    invoke-interface {p1, v2, v4, v5, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 68
    .line 69
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 70
    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    :cond_1
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 78
    .line 79
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageCreateContainer:Ljava/lang/String;

    .line 80
    .line 81
    invoke-interface {p1, v3, v0, v2, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 82
    .line 83
    .line 84
    new-instance p1, Lcom/cloud/tmc/integration/chain/startState/CreateContainerStartState;

    .line 85
    .line 86
    invoke-direct {p1, v1}, Lcom/cloud/tmc/integration/chain/startState/CreateContainerStartState;-><init>(Landroid/os/Bundle;)V

    .line 87
    .line 88
    .line 89
    invoke-direct {p0, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getPageChainContext(Ljava/lang/String;)Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/chain/startState/CreateContainerStartState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .line 95
    .line 96
    :catchall_0
    return-void
.end method

.method public final pointTrackCreateRenderEnd()V
    .locals 6

    .line 1
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, "page"

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    const-string v4, "uniqueChainID"

    .line 27
    .line 28
    const-string v5, "-1"

    .line 29
    .line 30
    invoke-virtual {v2, v4, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move-object v2, v3

    .line 36
    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->RENDER_ID:Ljava/lang/String;

    .line 55
    .line 56
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 57
    .line 58
    if-eqz v2, :cond_1

    .line 59
    .line 60
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    move-object v2, v3

    .line 66
    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 70
    .line 71
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 76
    .line 77
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 78
    .line 79
    if-eqz v2, :cond_2

    .line 80
    .line 81
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    :cond_2
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 86
    .line 87
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CreateRender:Ljava/lang/String;

    .line 88
    .line 89
    invoke-interface {v1, v3, v2, v4, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .line 91
    .line 92
    :catchall_0
    return-void
.end method

.method public final pointTrackCreateRenderEndNew(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 2
    .line 3
    const-string v1, "url"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "virtual_h5PageId"

    .line 9
    .line 10
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 16
    .line 17
    .line 18
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_CATEGOR_TYPE:Ljava/lang/String;

    .line 33
    .line 34
    const-string v2, "2"

    .line 35
    .line 36
    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    if-eqz v2, :cond_0

    .line 49
    .line 50
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    move-object v2, v3

    .line 56
    :goto_0
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 57
    .line 58
    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageCreateRender:Ljava/lang/String;

    .line 59
    .line 60
    invoke-interface {p1, v2, v4, v5, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 68
    .line 69
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 70
    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    :cond_1
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 78
    .line 79
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageCreateRender:Ljava/lang/String;

    .line 80
    .line 81
    invoke-interface {p1, v3, v0, v2, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 82
    .line 83
    .line 84
    new-instance p1, Lcom/cloud/tmc/integration/chain/endState/CreateRenderEndState;

    .line 85
    .line 86
    invoke-direct {p1, v1}, Lcom/cloud/tmc/integration/chain/endState/CreateRenderEndState;-><init>(Landroid/os/Bundle;)V

    .line 87
    .line 88
    .line 89
    invoke-direct {p0, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getPageChainContext(Ljava/lang/String;)Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/chain/endState/CreateRenderEndState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .line 95
    .line 96
    :catchall_0
    return-void
.end method

.method public final pointTrackCreateRenderStart()V
    .locals 6

    .line 1
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, "page"

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    const-string v4, "uniqueChainID"

    .line 27
    .line 28
    const-string v5, "-1"

    .line 29
    .line 30
    invoke-virtual {v2, v4, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move-object v2, v3

    .line 36
    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->RENDER_ID:Ljava/lang/String;

    .line 55
    .line 56
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 57
    .line 58
    if-eqz v2, :cond_1

    .line 59
    .line 60
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    move-object v2, v3

    .line 66
    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 70
    .line 71
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 76
    .line 77
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 78
    .line 79
    if-eqz v2, :cond_2

    .line 80
    .line 81
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    :cond_2
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 86
    .line 87
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CreateRender:Ljava/lang/String;

    .line 88
    .line 89
    invoke-interface {v1, v3, v2, v4, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .line 91
    .line 92
    :catchall_0
    return-void
.end method

.method public final pointTrackCreateRenderStartNew(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 2
    .line 3
    const-string v1, "url"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "virtual_h5PageId"

    .line 9
    .line 10
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 16
    .line 17
    .line 18
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_CATEGOR_TYPE:Ljava/lang/String;

    .line 33
    .line 34
    const-string v2, "2"

    .line 35
    .line 36
    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    if-eqz v2, :cond_0

    .line 49
    .line 50
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    move-object v2, v3

    .line 56
    :goto_0
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 57
    .line 58
    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageCreateRender:Ljava/lang/String;

    .line 59
    .line 60
    invoke-interface {p1, v2, v4, v5, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 68
    .line 69
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 70
    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    :cond_1
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 78
    .line 79
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageCreateRender:Ljava/lang/String;

    .line 80
    .line 81
    invoke-interface {p1, v3, v0, v2, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 82
    .line 83
    .line 84
    new-instance p1, Lcom/cloud/tmc/integration/chain/startState/CreateRenderStartState;

    .line 85
    .line 86
    invoke-direct {p1, v1}, Lcom/cloud/tmc/integration/chain/startState/CreateRenderStartState;-><init>(Landroid/os/Bundle;)V

    .line 87
    .line 88
    .line 89
    invoke-direct {p0, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getPageChainContext(Ljava/lang/String;)Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/chain/startState/CreateRenderStartState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .line 95
    .line 96
    :catchall_0
    return-void
.end method

.method public final pointTrackCreateWorkerEnd()V
    .locals 6

    .line 1
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, "page"

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    const-string v4, "uniqueChainID"

    .line 27
    .line 28
    const-string v5, "-1"

    .line 29
    .line 30
    invoke-virtual {v2, v4, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move-object v2, v3

    .line 36
    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 55
    .line 56
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 61
    .line 62
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 63
    .line 64
    if-eqz v2, :cond_1

    .line 65
    .line 66
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    :cond_1
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 71
    .line 72
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CreateWorker:Ljava/lang/String;

    .line 73
    .line 74
    invoke-interface {v1, v3, v2, v4, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    .line 77
    :catchall_0
    return-void
.end method

.method public final pointTrackCreateWorkerEndNew(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 2
    .line 3
    const-string v1, "url"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "virtual_h5PageId"

    .line 9
    .line 10
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 16
    .line 17
    .line 18
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_CATEGOR_TYPE:Ljava/lang/String;

    .line 33
    .line 34
    const-string v2, "2"

    .line 35
    .line 36
    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    if-eqz v2, :cond_0

    .line 49
    .line 50
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    move-object v2, v3

    .line 56
    :goto_0
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 57
    .line 58
    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageCreateWorker:Ljava/lang/String;

    .line 59
    .line 60
    invoke-interface {p1, v2, v4, v5, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 68
    .line 69
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 70
    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    :cond_1
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 78
    .line 79
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageCreateWorker:Ljava/lang/String;

    .line 80
    .line 81
    invoke-interface {p1, v3, v0, v2, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 82
    .line 83
    .line 84
    new-instance p1, Lcom/cloud/tmc/integration/chain/endState/CreateWorkerEndState;

    .line 85
    .line 86
    invoke-direct {p1, v1}, Lcom/cloud/tmc/integration/chain/endState/CreateWorkerEndState;-><init>(Landroid/os/Bundle;)V

    .line 87
    .line 88
    .line 89
    invoke-direct {p0, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getPageChainContext(Ljava/lang/String;)Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/chain/endState/CreateWorkerEndState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .line 95
    .line 96
    :catchall_0
    return-void
.end method

.method public final pointTrackCreateWorkerStart()V
    .locals 6

    .line 1
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, "page"

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    const-string v4, "uniqueChainID"

    .line 27
    .line 28
    const-string v5, "-1"

    .line 29
    .line 30
    invoke-virtual {v2, v4, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move-object v2, v3

    .line 36
    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 55
    .line 56
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 61
    .line 62
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 63
    .line 64
    if-eqz v2, :cond_1

    .line 65
    .line 66
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    :cond_1
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 71
    .line 72
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CreateWorker:Ljava/lang/String;

    .line 73
    .line 74
    invoke-interface {v1, v3, v2, v4, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    .line 77
    :catchall_0
    return-void
.end method

.method public final pointTrackCreateWorkerStartNew(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 2
    .line 3
    const-string v1, "url"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "virtual_h5PageId"

    .line 9
    .line 10
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 16
    .line 17
    .line 18
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_CATEGOR_TYPE:Ljava/lang/String;

    .line 33
    .line 34
    const-string v2, "2"

    .line 35
    .line 36
    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    if-eqz v2, :cond_0

    .line 49
    .line 50
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    move-object v2, v3

    .line 56
    :goto_0
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 57
    .line 58
    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageCreateWorker:Ljava/lang/String;

    .line 59
    .line 60
    invoke-interface {p1, v2, v4, v5, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 68
    .line 69
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 70
    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    :cond_1
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 78
    .line 79
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageCreateWorker:Ljava/lang/String;

    .line 80
    .line 81
    invoke-interface {p1, v3, v0, v2, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 82
    .line 83
    .line 84
    new-instance p1, Lcom/cloud/tmc/integration/chain/startState/CreateWorkerStartState;

    .line 85
    .line 86
    invoke-direct {p1, v1}, Lcom/cloud/tmc/integration/chain/startState/CreateWorkerStartState;-><init>(Landroid/os/Bundle;)V

    .line 87
    .line 88
    .line 89
    invoke-direct {p0, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getPageChainContext(Ljava/lang/String;)Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/chain/startState/CreateWorkerStartState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .line 95
    .line 96
    :catchall_0
    return-void
.end method

.method public final pointTrackDrawViewEnd()V
    .locals 6

    .line 1
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, "page"

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    const-string v4, "uniqueChainID"

    .line 33
    .line 34
    const-string v5, "-1"

    .line 35
    .line 36
    invoke-virtual {v2, v4, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move-object v2, v3

    .line 42
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 57
    .line 58
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 63
    .line 64
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 65
    .line 66
    if-eqz v2, :cond_1

    .line 67
    .line 68
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    :cond_1
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 73
    .line 74
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->DrawView:Ljava/lang/String;

    .line 75
    .line 76
    invoke-interface {v1, v3, v2, v4, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .line 78
    .line 79
    :catchall_0
    return-void
.end method

.method public final pointTrackDrawViewEndForApp(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "virtual_h5PageId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 14
    .line 15
    .line 16
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_CATEGOR_TYPE:Ljava/lang/String;

    .line 31
    .line 32
    const-string p2, "2"

    .line 33
    .line 34
    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_TYPE_LOAD_DATA:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v0, p1, p3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 40
    .line 41
    .line 42
    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 43
    .line 44
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 49
    .line 50
    iget-object p2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 51
    .line 52
    if-eqz p2, :cond_0

    .line 53
    .line 54
    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const/4 p2, 0x0

    .line 60
    :goto_0
    sget-object p3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 61
    .line 62
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageDrawView:Ljava/lang/String;

    .line 63
    .line 64
    invoke-interface {p1, p2, p3, v1, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .line 66
    .line 67
    :catchall_0
    return-void
.end method

.method public final pointTrackDrawViewEndNew(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "virtual_h5PageId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 14
    .line 15
    .line 16
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_CATEGOR_TYPE:Ljava/lang/String;

    .line 31
    .line 32
    const-string v1, "2"

    .line 33
    .line 34
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_DRAW_END_TYPE:Ljava/lang/String;

    .line 38
    .line 39
    const-string v1, "1"

    .line 40
    .line 41
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_TYPE_LOAD_DATA:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v0, p1, p3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    const-string p1, "pageRandomId"

    .line 50
    .line 51
    iget-object p3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    if-eqz p3, :cond_0

    .line 55
    .line 56
    invoke-interface {p3}, Lcom/cloud/tmc/integration/structure/Page;->getPageRandomIdByGAId()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    move-object p3, v1

    .line 62
    :goto_0
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    invoke-virtual {v0, p1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string p1, "pageUniqueId"

    .line 70
    .line 71
    invoke-static {}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getGAId()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p3

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string p3, "_"

    .line 84
    .line 85
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p3

    .line 95
    invoke-virtual {v0, p1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 99
    .line 100
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 105
    .line 106
    iget-object p3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 107
    .line 108
    if-eqz p3, :cond_1

    .line 109
    .line 110
    invoke-interface {p3}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    :cond_1
    sget-object p3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 115
    .line 116
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageDrawView:Ljava/lang/String;

    .line 117
    .line 118
    invoke-interface {p1, v1, p3, v2, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 122
    .line 123
    if-nez p1, :cond_2

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_2
    const/4 p3, 0x1

    .line 127
    invoke-interface {p1, p3}, Lcom/cloud/tmc/integration/structure/App;->setMiniAppLoadStatus(Z)V

    .line 128
    .line 129
    .line 130
    :goto_1
    new-instance p1, Lcom/cloud/tmc/integration/chain/endState/DrawViewEndState;

    .line 131
    .line 132
    invoke-direct {p1, v0}, Lcom/cloud/tmc/integration/chain/endState/DrawViewEndState;-><init>(Landroid/os/Bundle;)V

    .line 133
    .line 134
    .line 135
    invoke-direct {p0, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getPageChainContext(Ljava/lang/String;)Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/chain/endState/DrawViewEndState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    .line 141
    .line 142
    :catchall_0
    return-void
.end method

.method public final pointTrackDrawViewFailNew(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "virtual_h5PageId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 14
    .line 15
    .line 16
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_CATEGOR_TYPE:Ljava/lang/String;

    .line 31
    .line 32
    const-string v1, "2"

    .line 33
    .line 34
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->OPEN_PAGE_FAILED_REASON:Ljava/lang/String;

    .line 38
    .line 39
    const-string v1, "\u7f51\u7edc\u5f02\u5e38"

    .line 40
    .line 41
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_TYPE_LOAD_DATA:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v0, p1, p3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    new-instance p1, Lcom/cloud/tmc/integration/chain/insert/PageInsertState;

    .line 50
    .line 51
    invoke-direct {p1, v0}, Lcom/cloud/tmc/integration/chain/insert/PageInsertState;-><init>(Landroid/os/Bundle;)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getPageChainContext(Ljava/lang/String;)Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 55
    .line 56
    .line 57
    move-result-object p3

    .line 58
    invoke-virtual {p1, p3}, Lcom/cloud/tmc/integration/chain/insert/PageInsertState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    .line 59
    .line 60
    .line 61
    new-instance p1, Lcom/cloud/tmc/integration/chain/errorState/PageErrorState;

    .line 62
    .line 63
    invoke-direct {p1, v0}, Lcom/cloud/tmc/integration/chain/errorState/PageErrorState;-><init>(Landroid/os/Bundle;)V

    .line 64
    .line 65
    .line 66
    invoke-direct {p0, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getPageChainContext(Ljava/lang/String;)Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/chain/errorState/PageErrorState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    .line 71
    .line 72
    .line 73
    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 74
    .line 75
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 80
    .line 81
    iget-object p2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 82
    .line 83
    if-eqz p2, :cond_0

    .line 84
    .line 85
    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    goto :goto_0

    .line 90
    :cond_0
    const/4 p2, 0x0

    .line 91
    :goto_0
    sget-object p3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_FAIL:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 92
    .line 93
    const-string v1, "pageOpenFail"

    .line 94
    .line 95
    invoke-interface {p1, p2, p3, v1, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .line 97
    .line 98
    :catchall_0
    return-void
.end method

.method public final pointTrackDrawViewStart()V
    .locals 6

    .line 1
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, "page"

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    const-string v4, "uniqueChainID"

    .line 33
    .line 34
    const-string v5, "-1"

    .line 35
    .line 36
    invoke-virtual {v2, v4, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move-object v2, v3

    .line 42
    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 61
    .line 62
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 67
    .line 68
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 69
    .line 70
    if-eqz v2, :cond_1

    .line 71
    .line 72
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    :cond_1
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 77
    .line 78
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->DrawView:Ljava/lang/String;

    .line 79
    .line 80
    invoke-interface {v1, v3, v2, v4, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .line 82
    .line 83
    :catchall_0
    return-void
.end method

.method public final pointTrackDrawViewStartNew(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 2
    .line 3
    const-string v1, "url"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "virtual_h5PageId"

    .line 9
    .line 10
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 16
    .line 17
    .line 18
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_CATEGOR_TYPE:Ljava/lang/String;

    .line 33
    .line 34
    const-string v2, "2"

    .line 35
    .line 36
    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    if-eqz v2, :cond_0

    .line 49
    .line 50
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    move-object v2, v3

    .line 56
    :goto_0
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 57
    .line 58
    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageDrawView:Ljava/lang/String;

    .line 59
    .line 60
    invoke-interface {p1, v2, v4, v5, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 68
    .line 69
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 70
    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    :cond_1
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 78
    .line 79
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageDrawView:Ljava/lang/String;

    .line 80
    .line 81
    invoke-interface {p1, v3, v0, v2, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 82
    .line 83
    .line 84
    new-instance p1, Lcom/cloud/tmc/integration/chain/startState/DrawViewStartState;

    .line 85
    .line 86
    invoke-direct {p1, v1}, Lcom/cloud/tmc/integration/chain/startState/DrawViewStartState;-><init>(Landroid/os/Bundle;)V

    .line 87
    .line 88
    .line 89
    invoke-direct {p0, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getPageChainContext(Ljava/lang/String;)Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/chain/startState/DrawViewStartState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .line 95
    .line 96
    :catchall_0
    return-void
.end method

.method public final pointTrackLoadRenderFrameworkEnd()V
    .locals 6

    .line 1
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, "page"

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    const-string v4, "uniqueChainID"

    .line 27
    .line 28
    const-string v5, "-1"

    .line 29
    .line 30
    invoke-virtual {v2, v4, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move-object v2, v3

    .line 36
    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 55
    .line 56
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 61
    .line 62
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 63
    .line 64
    if-eqz v2, :cond_1

    .line 65
    .line 66
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    :cond_1
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 71
    .line 72
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->LoadRenderFramework:Ljava/lang/String;

    .line 73
    .line 74
    invoke-interface {v1, v3, v2, v4, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    .line 77
    :catchall_0
    return-void
.end method

.method public final pointTrackLoadRenderFrameworkEndNew(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 2
    .line 3
    const-string v1, "url"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "virtual_h5PageId"

    .line 9
    .line 10
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 16
    .line 17
    .line 18
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_CATEGOR_TYPE:Ljava/lang/String;

    .line 33
    .line 34
    const-string v2, "2"

    .line 35
    .line 36
    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    if-eqz v2, :cond_0

    .line 49
    .line 50
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    move-object v2, v3

    .line 56
    :goto_0
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 57
    .line 58
    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageLoadRenderFramework:Ljava/lang/String;

    .line 59
    .line 60
    invoke-interface {p1, v2, v4, v5, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 68
    .line 69
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 70
    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    :cond_1
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 78
    .line 79
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageLoadRenderFramework:Ljava/lang/String;

    .line 80
    .line 81
    invoke-interface {p1, v3, v0, v2, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 82
    .line 83
    .line 84
    new-instance p1, Lcom/cloud/tmc/integration/chain/endState/LoadRenderFrameworkEndState;

    .line 85
    .line 86
    invoke-direct {p1, v1}, Lcom/cloud/tmc/integration/chain/endState/LoadRenderFrameworkEndState;-><init>(Landroid/os/Bundle;)V

    .line 87
    .line 88
    .line 89
    invoke-direct {p0, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getPageChainContext(Ljava/lang/String;)Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/chain/endState/LoadRenderFrameworkEndState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .line 95
    .line 96
    :catchall_0
    return-void
.end method

.method public final pointTrackLoadRenderFrameworkStart()V
    .locals 6

    .line 1
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, "page"

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    const-string v4, "uniqueChainID"

    .line 27
    .line 28
    const-string v5, "-1"

    .line 29
    .line 30
    invoke-virtual {v2, v4, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move-object v2, v3

    .line 36
    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 55
    .line 56
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 61
    .line 62
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 63
    .line 64
    if-eqz v2, :cond_1

    .line 65
    .line 66
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    :cond_1
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 71
    .line 72
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->LoadRenderFramework:Ljava/lang/String;

    .line 73
    .line 74
    invoke-interface {v1, v3, v2, v4, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    .line 77
    :catchall_0
    return-void
.end method

.method public final pointTrackLoadRenderFrameworkStartNew(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 2
    .line 3
    const-string v1, "url"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "virtual_h5PageId"

    .line 9
    .line 10
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 16
    .line 17
    .line 18
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_CATEGOR_TYPE:Ljava/lang/String;

    .line 33
    .line 34
    const-string v2, "2"

    .line 35
    .line 36
    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    if-eqz v2, :cond_0

    .line 49
    .line 50
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    move-object v2, v3

    .line 56
    :goto_0
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 57
    .line 58
    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageLoadRenderFramework:Ljava/lang/String;

    .line 59
    .line 60
    invoke-interface {p1, v2, v4, v5, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 68
    .line 69
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 70
    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    :cond_1
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 78
    .line 79
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageLoadRenderFramework:Ljava/lang/String;

    .line 80
    .line 81
    invoke-interface {p1, v3, v0, v2, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 82
    .line 83
    .line 84
    new-instance p1, Lcom/cloud/tmc/integration/chain/startState/LoadRenderFrameworkStartState;

    .line 85
    .line 86
    invoke-direct {p1, v1}, Lcom/cloud/tmc/integration/chain/startState/LoadRenderFrameworkStartState;-><init>(Landroid/os/Bundle;)V

    .line 87
    .line 88
    .line 89
    invoke-direct {p0, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getPageChainContext(Ljava/lang/String;)Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/chain/startState/LoadRenderFrameworkStartState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .line 95
    .line 96
    :catchall_0
    return-void
.end method

.method public final pointTrackLoadWorkerFrameworkEnd()V
    .locals 6

    .line 1
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, "page"

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    const-string v4, "uniqueChainID"

    .line 27
    .line 28
    const-string v5, "-1"

    .line 29
    .line 30
    invoke-virtual {v2, v4, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move-object v2, v3

    .line 36
    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 55
    .line 56
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 61
    .line 62
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 63
    .line 64
    if-eqz v2, :cond_1

    .line 65
    .line 66
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    :cond_1
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 71
    .line 72
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->LoadWorkerFramework:Ljava/lang/String;

    .line 73
    .line 74
    invoke-interface {v1, v3, v2, v4, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    .line 77
    :catchall_0
    return-void
.end method

.method public final pointTrackLoadWorkerFrameworkEndNew(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 2
    .line 3
    const-string v1, "url"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "virtual_h5PageId"

    .line 9
    .line 10
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 16
    .line 17
    .line 18
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_CATEGOR_TYPE:Ljava/lang/String;

    .line 33
    .line 34
    const-string v2, "2"

    .line 35
    .line 36
    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    if-eqz v2, :cond_0

    .line 49
    .line 50
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    move-object v2, v3

    .line 56
    :goto_0
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 57
    .line 58
    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageLoadWorkerFramework:Ljava/lang/String;

    .line 59
    .line 60
    invoke-interface {p1, v2, v4, v5, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 68
    .line 69
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 70
    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    :cond_1
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 78
    .line 79
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageLoadWorkerFramework:Ljava/lang/String;

    .line 80
    .line 81
    invoke-interface {p1, v3, v0, v2, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 82
    .line 83
    .line 84
    new-instance p1, Lcom/cloud/tmc/integration/chain/endState/LoadWorkerFrameworkEndState;

    .line 85
    .line 86
    invoke-direct {p1, v1}, Lcom/cloud/tmc/integration/chain/endState/LoadWorkerFrameworkEndState;-><init>(Landroid/os/Bundle;)V

    .line 87
    .line 88
    .line 89
    invoke-direct {p0, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getPageChainContext(Ljava/lang/String;)Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/chain/endState/LoadWorkerFrameworkEndState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .line 95
    .line 96
    :catchall_0
    return-void
.end method

.method public final pointTrackLoadWorkerFrameworkStart()V
    .locals 6

    .line 1
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, "page"

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    const-string v4, "uniqueChainID"

    .line 27
    .line 28
    const-string v5, "-1"

    .line 29
    .line 30
    invoke-virtual {v2, v4, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move-object v2, v3

    .line 36
    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 55
    .line 56
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 61
    .line 62
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 63
    .line 64
    if-eqz v2, :cond_1

    .line 65
    .line 66
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    :cond_1
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 71
    .line 72
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->LoadWorkerFramework:Ljava/lang/String;

    .line 73
    .line 74
    invoke-interface {v1, v3, v2, v4, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    .line 77
    :catchall_0
    return-void
.end method

.method public final pointTrackLoadWorkerFrameworkStartNew(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 2
    .line 3
    const-string v1, "url"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "virtual_h5PageId"

    .line 9
    .line 10
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 16
    .line 17
    .line 18
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_CATEGOR_TYPE:Ljava/lang/String;

    .line 33
    .line 34
    const-string v2, "2"

    .line 35
    .line 36
    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    if-eqz v2, :cond_0

    .line 49
    .line 50
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    move-object v2, v3

    .line 56
    :goto_0
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 57
    .line 58
    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageLoadWorkerFramework:Ljava/lang/String;

    .line 59
    .line 60
    invoke-interface {p1, v2, v4, v5, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 68
    .line 69
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 70
    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    :cond_1
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 78
    .line 79
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageLoadWorkerFramework:Ljava/lang/String;

    .line 80
    .line 81
    invoke-interface {p1, v3, v0, v2, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 82
    .line 83
    .line 84
    new-instance p1, Lcom/cloud/tmc/integration/chain/startState/LoadWorkerFrameworkStartState;

    .line 85
    .line 86
    invoke-direct {p1, v1}, Lcom/cloud/tmc/integration/chain/startState/LoadWorkerFrameworkStartState;-><init>(Landroid/os/Bundle;)V

    .line 87
    .line 88
    .line 89
    invoke-direct {p0, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getPageChainContext(Ljava/lang/String;)Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/chain/startState/LoadWorkerFrameworkStartState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .line 95
    .line 96
    :catchall_0
    return-void
.end method

.method public final pointTrackMidEndNew(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "virtual_h5PageId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 14
    .line 15
    .line 16
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_CATEGOR_TYPE:Ljava/lang/String;

    .line 27
    .line 28
    const-string v1, "2"

    .line 29
    .line 30
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string p1, "pageRandomId"

    .line 34
    .line 35
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 36
    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getPageRandomIdByGAId()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 v1, 0x0

    .line 45
    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-string p1, "pageUniqueId"

    .line 53
    .line 54
    invoke-static {}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getGAId()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, "_"

    .line 67
    .line 68
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    new-instance p1, Lcom/cloud/tmc/integration/chain/endState/ChainMidEndState;

    .line 82
    .line 83
    invoke-direct {p1, v0}, Lcom/cloud/tmc/integration/chain/endState/ChainMidEndState;-><init>(Landroid/os/Bundle;)V

    .line 84
    .line 85
    .line 86
    invoke-direct {p0, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getPageChainContext(Ljava/lang/String;)Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/chain/endState/ChainMidEndState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .line 92
    .line 93
    :catchall_0
    return-void
.end method

.method public final pointTrackMidStartNew(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "virtual_h5PageId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 14
    .line 15
    .line 16
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_CATEGOR_TYPE:Ljava/lang/String;

    .line 27
    .line 28
    const-string v1, "2"

    .line 29
    .line 30
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance p1, Lcom/cloud/tmc/integration/chain/startState/ChainMidStartState;

    .line 34
    .line 35
    invoke-direct {p1, v0}, Lcom/cloud/tmc/integration/chain/startState/ChainMidStartState;-><init>(Landroid/os/Bundle;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getPageChainContext(Ljava/lang/String;)Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/chain/startState/ChainMidStartState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    :catchall_0
    return-void
.end method

.method public final pointTrackOnPageFinished(Ljava/lang/String;)V
    .locals 9

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object v1, v2

    .line 25
    :goto_0
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_H5_PAGE_ONFINISHED:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 26
    .line 27
    const-string v4, ""

    .line 28
    .line 29
    new-instance v5, Landroid/os/Bundle;

    .line 30
    .line 31
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 32
    .line 33
    .line 34
    sget-object v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v7, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 37
    .line 38
    if-eqz v7, :cond_1

    .line 39
    .line 40
    invoke-interface {v7}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    if-eqz v7, :cond_1

    .line 45
    .line 46
    const-string v2, "uniqueChainID"

    .line 47
    .line 48
    const-string v8, "-1"

    .line 49
    .line 50
    invoke-virtual {v7, v2, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    :cond_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v5, v6, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {v5, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 71
    .line 72
    invoke-interface {v0, v1, v3, v4, v5}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .line 74
    .line 75
    :catchall_0
    return-void
.end method

.method public final pointTrackPageEnd(Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string v0, "pageRandomIdByGAID"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    .line 12
    .line 13
    const-string v2, "page"

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    const-string v3, "uniqueChainID"

    .line 36
    .line 37
    const-string v4, "-1"

    .line 38
    .line 39
    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move-object v1, v2

    .line 45
    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 55
    .line 56
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p0, v4}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->REPORT_PAGE_PATH:Ljava/lang/String;

    .line 66
    .line 67
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const-string v3, "pageRandomId"

    .line 73
    .line 74
    invoke-virtual {v0, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 78
    .line 79
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    .line 80
    .line 81
    invoke-static {p1, v3}, Lcom/cloud/tmc/integration/utils/TrackPointUtils;->pageRouteTrackEnd(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 85
    .line 86
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 91
    .line 92
    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 93
    .line 94
    if-eqz v3, :cond_1

    .line 95
    .line 96
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    goto :goto_1

    .line 101
    :cond_1
    move-object v3, v2

    .line 102
    :goto_1
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 103
    .line 104
    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->page:Ljava/lang/String;

    .line 105
    .line 106
    invoke-interface {p1, v3, v4, v5, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 110
    .line 111
    if-eqz p1, :cond_2

    .line 112
    .line 113
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    :cond_2
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    .line 118
    .line 119
    invoke-static {v2, v1, p1}, Lcom/cloud/tmc/integration/utils/TrackPointUtils;->pageRouteTrackEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    .line 121
    .line 122
    :catchall_0
    return-void
.end method

.method public final pointTrackPageFinishedNew(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v2, v1

    .line 12
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v4, "juggist[pointTrackPageFinishedNew] -> originalUrl:"

    .line 18
    .line 19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v2, "juggist[pointTrackPageFinishedNew] -> url        :"

    .line 46
    .line 47
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    .line 61
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v1, "juggist[pointTrackPageFinishedNew] -> requestUrl :"

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 83
    .line 84
    if-eqz p1, :cond_7

    .line 85
    .line 86
    const-class v0, Lcom/cloud/tmc/miniapp/base/ShowPageStore;

    .line 87
    .line 88
    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Lcom/cloud/tmc/miniapp/base/ShowPageStore;

    .line 93
    .line 94
    if-nez p1, :cond_2

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_2
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/base/ShowPageStore;->findShowPages()Ljava/util/Stack;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-nez v0, :cond_3

    .line 106
    .line 107
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    .line 108
    .line 109
    const-string p2, "juggist[pointTrackPageFinishedNew] -> showPages.size == 0 return"

    .line 110
    .line 111
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_3
    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    check-cast p1, Lcom/cloud/tmc/miniapp/base/ShowPageData;

    .line 120
    .line 121
    if-nez p1, :cond_4

    .line 122
    .line 123
    return-void

    .line 124
    :cond_4
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    .line 125
    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    const-string v2, "juggist[pointTrackPageFinishedNew] -> showPages:"

    .line 132
    .line 133
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getRequestUrl()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-nez v0, :cond_5

    .line 155
    .line 156
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    .line 157
    .line 158
    const-string p2, "juggist[pointTrackPageFinishedNew] -> showPage.requestUrl != url return"

    .line 159
    .line 160
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    :cond_5
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getStatus()Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->getType()I

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    sget-object v1, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->PAGE_PROGRESS100:Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    .line 173
    .line 174
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->getType()I

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-eq v0, v1, :cond_6

    .line 179
    .line 180
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    .line 181
    .line 182
    const-string p2, "juggist[pointTrackPageFinishedNew] -> showPage.status != ShowPageStatus.PAGE_PROGRESS100 return"

    .line 183
    .line 184
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    return-void

    .line 188
    :cond_6
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    .line 189
    .line 190
    const-string v1, "\u6240\u6709\u8d44\u6e90\u6e32\u67d3\u7ed3\u675f"

    .line 191
    .line 192
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    sget-object v0, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->PAGE_FINISHED:Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    .line 196
    .line 197
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->setStatus(Lcom/cloud/tmc/miniapp/base/ShowPageStatus;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackOnPageFinished(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    .line 202
    .line 203
    nop

    .line 204
    :catchall_0
    :cond_7
    :goto_1
    return-void
.end method

.method public final pointTrackPageStart()V
    .locals 7

    .line 1
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, "page"

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    const-string v3, "uniqueChainID"

    .line 31
    .line 32
    const-string v4, "-1"

    .line 33
    .line 34
    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move-object v1, v2

    .line 40
    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p0, v4}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-class v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 61
    .line 62
    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    check-cast v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 67
    .line 68
    iget-object v4, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 69
    .line 70
    if-eqz v4, :cond_1

    .line 71
    .line 72
    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    goto :goto_1

    .line 77
    :cond_1
    move-object v4, v2

    .line 78
    :goto_1
    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 79
    .line 80
    sget-object v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->page:Ljava/lang/String;

    .line 81
    .line 82
    invoke-interface {v3, v4, v5, v6, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 86
    .line 87
    if-eqz v0, :cond_2

    .line 88
    .line 89
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    goto :goto_2

    .line 94
    :cond_2
    move-object v0, v2

    .line 95
    :goto_2
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    .line 96
    .line 97
    const-string v4, "shouldOverrideUrl"

    .line 98
    .line 99
    iget-object v5, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 100
    .line 101
    if-eqz v5, :cond_3

    .line 102
    .line 103
    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/Page;->getPageRandomIdByGAId()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    :cond_3
    invoke-static {v0, v1, v3, v4, v2}, Lcom/cloud/tmc/integration/utils/TrackPointUtils;->pageRouteTrackStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    .line 109
    .line 110
    :catchall_0
    return-void
.end method

.method public final pointTrackProgressChanged100New(Landroid/webkit/WebView;)V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v2, v1

    .line 12
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v4, "juggist[pointTrackProgressChanged100New] -> webView.originalUrl:"

    .line 18
    .line 19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move-object p1, v1

    .line 42
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v3, "juggist[pointTrackProgressChanged100New] -> webView.url:"

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 63
    .line 64
    if-eqz p1, :cond_a

    .line 65
    .line 66
    const-class v0, Lcom/cloud/tmc/miniapp/base/ShowPageStore;

    .line 67
    .line 68
    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Lcom/cloud/tmc/miniapp/base/ShowPageStore;

    .line 73
    .line 74
    if-nez p1, :cond_2

    .line 75
    .line 76
    goto/16 :goto_3

    .line 77
    .line 78
    :cond_2
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/base/ShowPageStore;->findShowPages()Ljava/util/Stack;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_3

    .line 87
    .line 88
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    .line 89
    .line 90
    const-string v0, "juggist[pointTrackProgressChanged100New] -> showPages.size == 0 return"

    .line 91
    .line 92
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_3
    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    check-cast p1, Lcom/cloud/tmc/miniapp/base/ShowPageData;

    .line 101
    .line 102
    if-nez p1, :cond_4

    .line 103
    .line 104
    return-void

    .line 105
    :cond_4
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getOriginalUrl()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    const-string v4, "juggist[pointTrackProgressChanged100New] -> originalUrl:"

    .line 117
    .line 118
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getUrl()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    const-string v4, "juggist[pointTrackProgressChanged100New] -> url        :"

    .line 143
    .line 144
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    .line 158
    .line 159
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getRequestUrl()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    new-instance v3, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .line 167
    .line 168
    const-string v4, "juggist[pointTrackProgressChanged100New] -> requestUrl :"

    .line 169
    .line 170
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    .line 184
    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .line 189
    .line 190
    const-string v3, "juggist[pointTrackProgressChanged100New] -> showPages:"

    .line 191
    .line 192
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getStatus()Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->getType()I

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    sget-object v2, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->PAGE_START:Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    .line 214
    .line 215
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->getType()I

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    if-eq v0, v2, :cond_5

    .line 220
    .line 221
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    .line 222
    .line 223
    const-string v0, "juggist[pointTrackProgressChanged100New] -> showPage.status != ShowPageStatus.PAGE_START return"

    .line 224
    .line 225
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    return-void

    .line 229
    :cond_5
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    .line 230
    .line 231
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getLoadFail()Z

    .line 232
    .line 233
    .line 234
    move-result v2

    .line 235
    const/4 v3, 0x1

    .line 236
    xor-int/2addr v2, v3

    .line 237
    new-instance v4, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .line 241
    .line 242
    const-string v5, "\u9759\u6001\u8d44\u6e90\u6e32\u67d3\u7ed3\u675f,\u6e32\u67d3\u6210\u529f\u7ed3\u679c:"

    .line 243
    .line 244
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    sget-object v0, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->PAGE_PROGRESS100:Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    .line 258
    .line 259
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->setStatus(Lcom/cloud/tmc/miniapp/base/ShowPageStatus;)V

    .line 260
    .line 261
    .line 262
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->trackPointLoadData:Z

    .line 263
    .line 264
    const/4 v2, 0x0

    .line 265
    if-eqz v0, :cond_6

    .line 266
    .line 267
    iput-boolean v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->trackPointLoadData:Z

    .line 268
    .line 269
    goto :goto_2

    .line 270
    :cond_6
    move v3, v2

    .line 271
    :goto_2
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getLoadFail()Z

    .line 272
    .line 273
    .line 274
    move-result v0

    .line 275
    if-eqz v0, :cond_7

    .line 276
    .line 277
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getRequestUrl()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getVirtual_h5PageId()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    invoke-virtual {p0, v0, p1, v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackDrawViewFailNew(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 286
    .line 287
    .line 288
    goto :goto_3

    .line 289
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    if-eqz v0, :cond_9

    .line 294
    .line 295
    sget-object v2, Lcom/cloud/tmc/integration/utils/PrivacyUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/PrivacyUtils;

    .line 296
    .line 297
    iget-object v4, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 298
    .line 299
    if-eqz v4, :cond_8

    .line 300
    .line 301
    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    :cond_8
    invoke-virtual {v2, v0, v1}, Lcom/cloud/tmc/integration/utils/PrivacyUtils;->updateNewUserStatus(Landroid/content/Context;Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    :cond_9
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getRequestUrl()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getVirtual_h5PageId()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    invoke-virtual {p0, v0, p1, v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackDrawViewEndNew(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    .line 318
    .line 319
    nop

    .line 320
    :catchall_0
    :cond_a
    :goto_3
    return-void
.end method

.method public final pointTrackProgressChangedNew(Landroid/webkit/WebView;I)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v3, "juggist[pointTrackProgressChangedNew] -> webView.originalUrl:"

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v3, "juggist[pointTrackProgressChangedNew] -> webView.url:"

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    .line 57
    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v2, "juggist[pointTrackProgressChangedNew] -> webView.progress:"

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-static {v0, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object p2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 79
    .line 80
    if-eqz p2, :cond_4

    .line 81
    .line 82
    const-class v0, Lcom/cloud/tmc/miniapp/base/ShowPageStore;

    .line 83
    .line 84
    invoke-interface {p2, v0}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    check-cast p2, Lcom/cloud/tmc/miniapp/base/ShowPageStore;

    .line 89
    .line 90
    if-nez p2, :cond_1

    .line 91
    .line 92
    goto/16 :goto_0

    .line 93
    .line 94
    :cond_1
    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/base/ShowPageStore;->findShowPages()Ljava/util/Stack;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-nez v0, :cond_2

    .line 103
    .line 104
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    .line 105
    .line 106
    const-string p2, "juggist[pointTrackProgressChangedNew] -> showPages.size == 0 return"

    .line 107
    .line 108
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :cond_2
    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    check-cast p2, Lcom/cloud/tmc/miniapp/base/ShowPageData;

    .line 117
    .line 118
    if-nez p2, :cond_3

    .line 119
    .line 120
    return-void

    .line 121
    :cond_3
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getOriginalUrl()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    const-string v3, "juggist[pointTrackProgressChangedNew] -> originalUrl:"

    .line 133
    .line 134
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getUrl()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    const-string v3, "juggist[pointTrackProgressChangedNew] -> url        :"

    .line 159
    .line 160
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    .line 174
    .line 175
    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getRequestUrl()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .line 183
    .line 184
    const-string v3, "juggist[pointTrackProgressChangedNew] -> requestUrl :"

    .line 185
    .line 186
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    .line 200
    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .line 205
    .line 206
    const-string v2, "juggist[pointTrackProgressChangedNew] -> showPage:"

    .line 207
    .line 208
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getStatus()Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    sget-object v1, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->PAGE_START:Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    .line 226
    .line 227
    if-ne v0, v1, :cond_4

    .line 228
    .line 229
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    .line 230
    .line 231
    const-string v1, "juggist[pointTrackProgressChangedNew] -> \u4fee\u6539showPage\u7684originalUrl\u548curl"

    .line 232
    .line 233
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-virtual {p2, v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->setOriginalUrl(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    invoke-virtual {p2, p1}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->setUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    .line 257
    .line 258
    nop

    .line 259
    :catchall_0
    :cond_4
    :goto_0
    return-void
.end method

.method public final pointTrackShouldOverrideUrlLoadingNew(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)V
    .locals 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    if-eqz p2, :cond_0

    .line 2
    invoke-static {p2}, Lcom/cloud/tmc/miniapp/base/l;->a(Landroid/webkit/WebResourceRequest;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "juggist[pointTrackShouldOverrideUrlLoadingNew] -> originalUrl:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v2

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "juggist[pointTrackShouldOverrideUrlLoadingNew] -> url        :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    if-eqz p2, :cond_3

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v3

    goto :goto_3

    :cond_3
    move-object v3, v2

    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "juggist[pointTrackShouldOverrideUrlLoadingNew] -> requestUrl :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", isRedirect:"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getCurrentOriginalUrl(Landroid/webkit/WebView;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    if-nez v1, :cond_4

    move-object v1, v3

    :cond_4
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getCurrentUrl(Landroid/webkit/WebView;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    move-object v3, p1

    :goto_4
    if-eqz p2, :cond_6

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v2

    :cond_6
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, v3, p1, v0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackShouldOverrideUrlLoadingNew(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final pointTrackShouldOverrideUrlLoadingNew(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v15, p3

    const-string v1, "originalUrl"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "url"

    move-object/from16 v3, p2

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "requestUrl"

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    :try_start_0
    iget-object v1, v0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class v4, Lcom/cloud/tmc/miniapp/base/ShowPageStore;

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1, v4}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/base/ShowPageStore;

    goto :goto_0

    :cond_0
    move-object v1, v5

    :goto_0
    if-nez v1, :cond_3

    .line 8
    iget-object v1, v0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v1, :cond_1

    new-instance v6, Lcom/cloud/tmc/miniapp/base/ShowPageStore;

    invoke-direct {v6}, Lcom/cloud/tmc/miniapp/base/ShowPageStore;-><init>()V

    invoke-interface {v1, v4, v6}, Lcom/cloud/tmc/kernel/node/DataNode;->setData(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 9
    :cond_1
    iget-object v1, v0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v1, :cond_2

    invoke-interface {v1, v4}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/base/ShowPageStore;

    goto :goto_1

    :cond_2
    move-object v1, v5

    :cond_3
    :goto_1
    if-eqz v1, :cond_a

    .line 10
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/base/ShowPageStore;->findShowPages()Ljava/util/Stack;

    move-result-object v13

    if-nez v13, :cond_4

    goto/16 :goto_3

    .line 11
    :cond_4
    invoke-virtual {v13}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-nez v1, :cond_5

    .line 12
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    const-string v2, "juggist[pointTrackShouldOverrideUrlLoadingNew] -> showPages.size == 0 return"

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 13
    :cond_5
    invoke-virtual {v13}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    const-string v4, "showPages.peek()"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/cloud/tmc/miniapp/base/ShowPageData;

    .line 14
    iget-object v4, v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "juggist[pointTrackShouldOverrideUrlLoadingNew] -> showPages:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getRequestUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v15}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 16
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    const-string v2, "juggist[pointTrackShouldOverrideUrlLoadingNew] -> currentPage.requestUrl == requestUrl return"

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 17
    :cond_6
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getStatus()Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->getType()I

    move-result v1

    sget-object v6, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->SHOULDOVERRIDEURKLOADING:Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    invoke-virtual {v6}, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->getType()I

    move-result v4

    if-ne v1, v4, :cond_7

    .line 18
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    const-string v4, "juggist[pointTrackShouldOverrideUrlLoadingNew] -> currentPage.status == ShowPageStatus.SHOULDOVERRIDEURKLOADING pointTrackClearNew"

    invoke-static {v1, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v13}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/base/ShowPageData;

    if-eqz v1, :cond_7

    .line 20
    sget-object v4, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;->NEW_PAGE_ENTER:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

    invoke-virtual {v0, v4}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->setExitType(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;)V

    .line 21
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getRequestUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getVirtual_h5PageId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v4, v7, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackClearNew(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/base/ShowPageData;)V

    .line 22
    :cond_7
    iget-object v1, v0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v1, :cond_8

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_8
    move-object v1, v5

    :goto_2
    iget-object v4, v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->h5PageId:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 23
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Add New Page -> requestUrl:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-string v8, ""

    .line 25
    new-instance v9, Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    invoke-direct {v9}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;-><init>()V

    .line 26
    iget-object v1, v0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v1, :cond_9

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppChainContext()Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    move-result-object v5

    :cond_9
    invoke-virtual {v9, v5}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->setAppChainContext(Lcom/cloud/tmc/integration/chain/app/AppChainContext;)V

    .line 27
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 28
    new-instance v12, Lcom/cloud/tmc/miniapp/base/ShowPageData;

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0xf00

    const/16 v20, 0x0

    move-object v1, v12

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v14

    move-object/from16 v21, v12

    move-object/from16 v12, v16

    move-object/from16 v22, v13

    move-object/from16 v23, v14

    move-wide/from16 v13, v17

    move/from16 v15, v19

    move-object/from16 v16, v20

    invoke-direct/range {v1 .. v16}, Lcom/cloud/tmc/miniapp/base/ShowPageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/base/ShowPageStatus;ZLjava/lang/String;Lcom/cloud/tmc/integration/chain/page/PageChainContext;ZLjava/util/concurrent/ConcurrentHashMap;Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, v21

    move-object/from16 v1, v22

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    move-object/from16 v2, p3

    move-object/from16 v3, v23

    .line 29
    invoke-direct {v0, v2, v3, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->addNewPageTrack(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :catchall_0
    :cond_a
    :goto_3
    return-void
.end method

.method public final pointTrackStartNew(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v2, v1

    .line 12
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v4, "juggist[pointTrackPageStepStart] -> originalUrl:"

    .line 18
    .line 19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v3, "juggist[pointTrackPageStepStart] -> url        :"

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
    move-result-object v1

    .line 57
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    .line 61
    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v2, "juggist[pointTrackPageStepStart] -> requestUrl :"

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 83
    .line 84
    if-eqz v0, :cond_9

    .line 85
    .line 86
    const-class v1, Lcom/cloud/tmc/miniapp/base/ShowPageStore;

    .line 87
    .line 88
    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Lcom/cloud/tmc/miniapp/base/ShowPageStore;

    .line 93
    .line 94
    if-nez v0, :cond_2

    .line 95
    .line 96
    goto/16 :goto_2

    .line 97
    .line 98
    :cond_2
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageStore;->findShowPages()Ljava/util/Stack;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-nez v1, :cond_3

    .line 107
    .line 108
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    .line 109
    .line 110
    const-string p2, "juggist[pointTrackPageStepStart] -> showPages.size == 0 return"

    .line 111
    .line 112
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :cond_3
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    check-cast v0, Lcom/cloud/tmc/miniapp/base/ShowPageData;

    .line 121
    .line 122
    if-nez v0, :cond_4

    .line 123
    .line 124
    return-void

    .line 125
    :cond_4
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    .line 126
    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    const-string v3, "juggist[pointTrackPageStepStart] -> showPages:"

    .line 133
    .line 134
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getRequestUrl()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    if-nez v1, :cond_5

    .line 156
    .line 157
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    .line 158
    .line 159
    const-string p2, "juggist[pointTrackPageStepStart] -> showPage.requestUrl != url return"

    .line 160
    .line 161
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :cond_5
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getStatus()Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->getType()I

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    sget-object v2, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->SHOULDOVERRIDEURKLOADING:Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    .line 174
    .line 175
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->getType()I

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    if-eq v1, v2, :cond_6

    .line 180
    .line 181
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getStatus()Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->getType()I

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    sget-object v2, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->PAGE_START:Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    .line 190
    .line 191
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->getType()I

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    if-ne v1, v2, :cond_9

    .line 196
    .line 197
    :cond_6
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    .line 198
    .line 199
    const-string v2, "juggist[pointTrackPageStepStart] -> change showPage.status = ShowPageStatus.PAGE_START"

    .line 200
    .line 201
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    sget-object v1, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->PAGE_START:Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    .line 205
    .line 206
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->setStatus(Lcom/cloud/tmc/miniapp/base/ShowPageStatus;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getCurrentOriginalUrl(Landroid/webkit/WebView;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    const-string v2, ""

    .line 214
    .line 215
    if-nez v1, :cond_7

    .line 216
    .line 217
    move-object v1, v2

    .line 218
    :cond_7
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->setOriginalUrl(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getCurrentUrl(Landroid/webkit/WebView;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    if-nez p1, :cond_8

    .line 226
    .line 227
    goto :goto_1

    .line 228
    :cond_8
    move-object v2, p1

    .line 229
    :goto_1
    invoke-virtual {v0, v2}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->setUrl(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0, p2}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->setRequestUrl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    .line 234
    .line 235
    nop

    .line 236
    :catchall_0
    :cond_9
    :goto_2
    return-void
.end method

.method public final redirect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string v0, ", webResourceRequestUrl: "

    .line 2
    .line 3
    const-string v1, "webviewUrl"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "webResourceRequestUrl"

    .line 9
    .line 10
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v3, "redirect => webviewUrl: "

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance v1, Ljava/net/URL;

    .line 42
    .line 43
    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    new-instance v2, Ljava/net/URL;

    .line 47
    .line 48
    invoke-direct {v2, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    .line 98
    .line 99
    new-instance v4, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string v5, "webviewURLCombine:"

    .line 105
    .line 106
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-static {v3, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    .line 120
    .line 121
    new-instance v4, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    const-string v5, "webResourceRequestURLCombine:"

    .line 127
    .line 128
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    invoke-static {v3, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    if-nez v3, :cond_5

    .line 146
    .line 147
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    if-eqz v3, :cond_0

    .line 152
    .line 153
    goto/16 :goto_1

    .line 154
    .line 155
    :cond_0
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    const/4 v2, 0x1

    .line 160
    if-nez v1, :cond_4

    .line 161
    .line 162
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    .line 163
    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .line 168
    .line 169
    const-string v4, "redirect  \u5f00\u59cb\u52a0\u8f7d => webviewUrl: "

    .line 170
    .line 171
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 191
    .line 192
    const/4 v0, 0x0

    .line 193
    if-eqz p1, :cond_1

    .line 194
    .line 195
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    goto :goto_0

    .line 200
    :cond_1
    move-object p1, v0

    .line 201
    :goto_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->h5PageId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 202
    .line 203
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    const-string p1, "_"

    .line 216
    .line 217
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    const/4 v1, 0x0

    .line 228
    invoke-virtual {p0, p2, v1, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->setLoadingUrl(Ljava/lang/String;ZLjava/lang/String;)V

    .line 229
    .line 230
    .line 231
    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 232
    .line 233
    if-eqz p1, :cond_2

    .line 234
    .line 235
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->createPageRandomIdByGAID()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    :cond_2
    if-nez v0, :cond_3

    .line 240
    .line 241
    const-string v0, "null"

    .line 242
    .line 243
    :cond_3
    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 244
    .line 245
    const-string p2, "shouldOverrideUrl"

    .line 246
    .line 247
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    .line 248
    .line 249
    invoke-static {p1, p2, v1, v0}, Lcom/cloud/tmc/integration/utils/TrackPointUtils;->openPageActionTrack(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrlStart(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackPageStart()V

    .line 256
    .line 257
    .line 258
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackCreateRenderStart()V

    .line 259
    .line 260
    .line 261
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackCreateRenderEnd()V

    .line 262
    .line 263
    .line 264
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackLoadRenderFrameworkStart()V

    .line 265
    .line 266
    .line 267
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackLoadRenderFrameworkEnd()V

    .line 268
    .line 269
    .line 270
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackCreateWorkerStart()V

    .line 271
    .line 272
    .line 273
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackCreateWorkerEnd()V

    .line 274
    .line 275
    .line 276
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackLoadWorkerFrameworkStart()V

    .line 277
    .line 278
    .line 279
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackLoadWorkerFrameworkEnd()V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackDrawViewStart()V

    .line 283
    .line 284
    .line 285
    goto :goto_1

    .line 286
    :cond_4
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    .line 287
    .line 288
    new-instance v3, Ljava/lang/StringBuilder;

    .line 289
    .line 290
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 291
    .line 292
    .line 293
    const-string v4, "redirect  \u8fdb\u5165backForward\u6808 => webviewUrl: "

    .line 294
    .line 295
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object p1

    .line 311
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->backForwardStack:Ljava/util/Stack;

    .line 315
    .line 316
    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    check-cast p1, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;

    .line 321
    .line 322
    invoke-virtual {p1, v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->setCanGoBack(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    .line 324
    .line 325
    nop

    .line 326
    :catchall_0
    :cond_5
    :goto_1
    return-void
.end method

.method public final redirectCanGoBack(Landroid/webkit/WebView;)Z
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_REDIRECT:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getCurrentOriginalUrl(Landroid/webkit/WebView;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getCurrentUrl(Landroid/webkit/WebView;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v4, "redirectCanGoBack => originalUrl:"

    .line 17
    .line 18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, " , url:"

    .line 25
    .line 26
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    if-eqz p1, :cond_7

    .line 41
    .line 42
    :try_start_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    const/4 v3, 0x1

    .line 47
    if-ne v2, v3, :cond_7

    .line 48
    .line 49
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pageStartStack:Ljava/util/Stack;

    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Ljava/lang/String;

    .line 56
    .line 57
    if-nez v2, :cond_0

    .line 58
    .line 59
    return v0

    .line 60
    :cond_0
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_REDIRECT:Ljava/lang/String;

    .line 61
    .line 62
    new-instance v5, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v6, "exitPage:"

    .line 68
    .line 69
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-static {v4, v5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    const-string v5, "webView.copyBackForwardList()"

    .line 87
    .line 88
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_REDIRECT:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v4}, Landroid/webkit/WebBackForwardList;->getSize()I

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    new-instance v7, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    const-string v8, "WebBackForwardList.size:"

    .line 103
    .line 104
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    invoke-static {v5, v6}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4}, Landroid/webkit/WebBackForwardList;->getSize()I

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    sub-int/2addr v5, v3

    .line 122
    const/4 v6, -0x1

    .line 123
    move v7, v6

    .line 124
    move v8, v7

    .line 125
    :goto_0
    if-ge v6, v5, :cond_3

    .line 126
    .line 127
    iget-object v9, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_REDIRECT:Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {v4, v5}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    .line 130
    .line 131
    .line 132
    move-result-object v10

    .line 133
    invoke-virtual {v10}, Landroid/webkit/WebHistoryItem;->getOriginalUrl()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v10

    .line 137
    invoke-virtual {v4, v5}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    .line 138
    .line 139
    .line 140
    move-result-object v11

    .line 141
    invoke-virtual {v11}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v11

    .line 145
    new-instance v12, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    const-string v13, "WebBackForwardList("

    .line 151
    .line 152
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string v13, ") => originalUrl:"

    .line 159
    .line 160
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v10

    .line 176
    invoke-static {v9, v10}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v4, v5}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    .line 180
    .line 181
    .line 182
    move-result-object v9

    .line 183
    invoke-virtual {v9}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v9

    .line 187
    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v9

    .line 191
    if-eqz v9, :cond_2

    .line 192
    .line 193
    if-ne v8, v6, :cond_1

    .line 194
    .line 195
    move v8, v5

    .line 196
    :cond_1
    move v7, v5

    .line 197
    :cond_2
    add-int/lit8 v5, v5, -0x1

    .line 198
    .line 199
    goto :goto_0

    .line 200
    :catchall_0
    move-exception p1

    .line 201
    goto :goto_2

    .line 202
    :cond_3
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->findPrePage()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    if-nez v1, :cond_4

    .line 207
    .line 208
    return v0

    .line 209
    :cond_4
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_REDIRECT:Ljava/lang/String;

    .line 210
    .line 211
    new-instance v5, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .line 215
    .line 216
    const-string v8, "prePage:"

    .line 217
    .line 218
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    invoke-static {v2, v5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    add-int/lit8 v2, v7, -0x1

    .line 232
    .line 233
    const/4 v5, 0x0

    .line 234
    move v9, v3

    .line 235
    move-object v8, v5

    .line 236
    :goto_1
    if-ge v6, v2, :cond_6

    .line 237
    .line 238
    invoke-virtual {v4, v2}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    .line 239
    .line 240
    .line 241
    move-result-object v10

    .line 242
    invoke-virtual {v10}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v11

    .line 246
    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    move-result v11

    .line 250
    if-eqz v11, :cond_5

    .line 251
    .line 252
    move v9, v2

    .line 253
    move-object v8, v10

    .line 254
    :cond_5
    add-int/lit8 v2, v2, -0x1

    .line 255
    .line 256
    goto :goto_1

    .line 257
    :cond_6
    if-eqz v8, :cond_7

    .line 258
    .line 259
    sub-int/2addr v9, v7

    .line 260
    invoke-virtual {p1, v9}, Landroid/webkit/WebView;->goBackOrForward(I)V

    .line 261
    .line 262
    .line 263
    invoke-static {p0, v5, v3, v5}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->goBackNew$default(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;ILjava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->goBack()V

    .line 267
    .line 268
    .line 269
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_REDIRECT:Ljava/lang/String;

    .line 270
    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    .line 275
    .line 276
    const-string v2, "goBackOrForward("

    .line 277
    .line 278
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    const-string v2, ")"

    .line 285
    .line 286
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    invoke-static {p1, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    .line 295
    .line 296
    return v3

    .line 297
    :goto_2
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_REDIRECT:Ljava/lang/String;

    .line 298
    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    .line 300
    .line 301
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    .line 303
    .line 304
    const-string v3, "redirectCanGoBack fail:"

    .line 305
    .line 306
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    :cond_7
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_REDIRECT:Ljava/lang/String;

    .line 320
    .line 321
    const-string v1, "redirectCanGoBack -> \u76f4\u63a5\u9000\u51fa"

    .line 322
    .line 323
    invoke-static {p1, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    return v0
.end method

.method public final redirectPageStarted(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_REDIRECT:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "redirectPageStarted ==================>"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_REDIRECT:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getCurrentOriginalUrl(Landroid/webkit/WebView;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v3, "webView.original:"

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_REDIRECT:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getCurrentUrl(Landroid/webkit/WebView;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v3, "webView.url:"

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
    move-result-object v1

    .line 57
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_REDIRECT:Ljava/lang/String;

    .line 61
    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v2, "url:"

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-static {v0, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getCurrentUrl(Landroid/webkit/WebView;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    if-eqz p1, :cond_0

    .line 87
    .line 88
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pageStartStack:Ljava/util/Stack;

    .line 89
    .line 90
    invoke-virtual {p2, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .line 92
    .line 93
    :catchall_0
    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_REDIRECT:Ljava/lang/String;

    .line 94
    .line 95
    const-string p2, "redirectPageStarted <=================="

    .line 96
    .line 97
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method public final redirectShouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_REDIRECT:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "redirectShouldOverrideUrlLoading ==================>"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    const/16 v1, 0x18

    .line 11
    .line 12
    if-lt v0, v1, :cond_1

    .line 13
    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    invoke-static {p2}, Lcom/cloud/tmc/miniapp/base/l;->a(Landroid/webkit/WebResourceRequest;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getCurrentUrl(Landroid/webkit/WebView;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->redirectUrls:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_REDIRECT:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getCurrentOriginalUrl(Landroid/webkit/WebView;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v3, "webview.original:"

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_REDIRECT:Ljava/lang/String;

    .line 61
    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v2, "webview.url:"

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_REDIRECT:Ljava/lang/String;

    .line 83
    .line 84
    if-eqz p2, :cond_0

    .line 85
    .line 86
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    goto :goto_0

    .line 91
    :cond_0
    const/4 p2, 0x0

    .line 92
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v1, "request.url:"

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    .line 111
    .line 112
    :catchall_0
    :cond_1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_REDIRECT:Ljava/lang/String;

    .line 113
    .line 114
    const-string p2, "redirectShouldOverrideUrlLoading <=================="

    .line 115
    .line 116
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method public final setH5EventCenter(Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->h5EventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 2
    .line 3
    return-void
.end method

.method public final setH5OnPageFinishedEventCenter(Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->h5OnPageFinishedEventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    .line 2
    .line 3
    return-void
.end method

.method public final setLoadingUrl(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "loadingUrl"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "virtualH5PageId"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->virtual_h5PageId:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v3, "setLoadingUrl => loadingUrl: "

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v3, " , isFirstLoadHomePage: "

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v3, ", virtual_h5PageId:"

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    .line 52
    .line 53
    iput-boolean p2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->isFirstLoadHomePage:Z

    .line 54
    .line 55
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->virtual_h5PageId:Ljava/lang/String;

    .line 56
    .line 57
    return-void
.end method

.method public final setTrackPointLoadData(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->trackPointLoadData:Z

    .line 2
    .line 3
    return-void
.end method

.method public final updateDomContentLoaded()V
    .locals 10

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 4
    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v3, "updateDomContentLoaded"

    .line 8
    .line 9
    invoke-static {v2, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->backForwardStack:Ljava/util/Stack;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-lez v2, :cond_6

    .line 19
    .line 20
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->backForwardStack:Ljava/util/Stack;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;

    .line 27
    .line 28
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isProgressChangedTo100()Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isPageFinished()Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    new-instance v7, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v8, "updateDomContentLoaded => loadingUrl: "

    .line 46
    .line 47
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v4, ", isProgressChangedTo100:"

    .line 54
    .line 55
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v4, ", isPageFinished: "

    .line 62
    .line 63
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-static {v3, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getUrl()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-nez v3, :cond_0

    .line 87
    .line 88
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    .line 89
    .line 90
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getUrl()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    const-string v4, "updateDomContentLoaded fail: url\u4e0d\u5339\u914d, loadingUrl:"

    .line 102
    .line 103
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v1, " , pageStatus.url:"

    .line 110
    .line 111
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    goto/16 :goto_3

    .line 127
    .line 128
    :cond_0
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isLoadError()Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-eqz v3, :cond_1

    .line 133
    .line 134
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    .line 135
    .line 136
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    .line 137
    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    const-string v3, "updateDomContentLoaded fail: \u52a0\u8f7d\u9875\u9762\u5931\u8d25, loadingUrl: "

    .line 144
    .line 145
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :cond_1
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isDomContentLoaded()Z

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    if-nez v3, :cond_7

    .line 164
    .line 165
    const/4 v3, 0x1

    .line 166
    invoke-virtual {v2, v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->setDomContentLoaded(Z)V

    .line 167
    .line 168
    .line 169
    new-instance v3, Landroid/os/Bundle;

    .line 170
    .line 171
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 172
    .line 173
    .line 174
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    .line 175
    .line 176
    const-string v5, "app"

    .line 177
    .line 178
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    .line 182
    .line 183
    iget-object v5, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .line 185
    const-string v6, "-1"

    .line 186
    .line 187
    const-string v7, "uniqueChainID"

    .line 188
    .line 189
    const/4 v8, 0x0

    .line 190
    if-eqz v5, :cond_2

    .line 191
    .line 192
    :try_start_1
    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 193
    .line 194
    .line 195
    move-result-object v5

    .line 196
    if-eqz v5, :cond_2

    .line 197
    .line 198
    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    if-eqz v5, :cond_2

    .line 203
    .line 204
    invoke-virtual {v5, v7, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    goto :goto_0

    .line 209
    :cond_2
    move-object v5, v8

    .line 210
    :goto_0
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->APP_DOMCONTENTLOADED_STATUS:Ljava/lang/String;

    .line 214
    .line 215
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isDomContentLoaded()Z

    .line 216
    .line 217
    .line 218
    move-result v5

    .line 219
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v4

    .line 230
    check-cast v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 231
    .line 232
    iget-object v5, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 233
    .line 234
    if-eqz v5, :cond_3

    .line 235
    .line 236
    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 237
    .line 238
    .line 239
    move-result-object v5

    .line 240
    if-eqz v5, :cond_3

    .line 241
    .line 242
    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v5

    .line 246
    goto :goto_1

    .line 247
    :cond_3
    move-object v5, v8

    .line 248
    :goto_1
    sget-object v9, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_INSERT:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 249
    .line 250
    invoke-interface {v4, v5, v9, v0, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 251
    .line 252
    .line 253
    new-instance v3, Landroid/os/Bundle;

    .line 254
    .line 255
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 256
    .line 257
    .line 258
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    .line 259
    .line 260
    const-string v5, "page"

    .line 261
    .line 262
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    .line 266
    .line 267
    iget-object v5, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 268
    .line 269
    if-eqz v5, :cond_4

    .line 270
    .line 271
    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 272
    .line 273
    .line 274
    move-result-object v5

    .line 275
    if-eqz v5, :cond_4

    .line 276
    .line 277
    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    .line 278
    .line 279
    .line 280
    move-result-object v5

    .line 281
    if-eqz v5, :cond_4

    .line 282
    .line 283
    invoke-virtual {v5, v7, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v5

    .line 287
    goto :goto_2

    .line 288
    :cond_4
    move-object v5, v8

    .line 289
    :goto_2
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_DOMCONTENTLOADED_STATUS:Ljava/lang/String;

    .line 293
    .line 294
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isDomContentLoaded()Z

    .line 295
    .line 296
    .line 297
    move-result v5

    .line 298
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v5

    .line 302
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 306
    .line 307
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getUrl()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v2

    .line 315
    invoke-virtual {v3, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 323
    .line 324
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 325
    .line 326
    if-eqz v2, :cond_5

    .line 327
    .line 328
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 329
    .line 330
    .line 331
    move-result-object v2

    .line 332
    if-eqz v2, :cond_5

    .line 333
    .line 334
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v8

    .line 338
    :cond_5
    invoke-interface {v1, v8, v9, v0, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 339
    .line 340
    .line 341
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    .line 342
    .line 343
    const-string v1, "updateDomContentLoaded report"

    .line 344
    .line 345
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    goto :goto_4

    .line 349
    :cond_6
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    .line 350
    .line 351
    const-string v1, "updateDomContentLoaded fail: backForwardStack.size = 0"

    .line 352
    .line 353
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/util/EmptyStackException; {:try_start_1 .. :try_end_1} :catch_0

    .line 354
    .line 355
    .line 356
    goto :goto_4

    .line 357
    :goto_3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    .line 358
    .line 359
    new-instance v2, Ljava/lang/StringBuilder;

    .line 360
    .line 361
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 362
    .line 363
    .line 364
    const-string v3, "updateDomContentLoaded fail: "

    .line 365
    .line 366
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    :cond_7
    :goto_4
    return-void
.end method

.method public final updateProgressStep(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;)V
    .locals 9

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 4
    .line 5
    const-string v2, "step"

    .line 6
    .line 7
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->backForwardStack:Ljava/util/Stack;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-lez v2, :cond_12

    .line 17
    .line 18
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->backForwardStack:Ljava/util/Stack;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;

    .line 25
    .line 26
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isProgressChangedTo100()Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isPageFinished()Z

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    new-instance v7, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v8, "updateProgressStep => loadingUrl: "

    .line 44
    .line 45
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v4, ", isProgressChangedTo100:"

    .line 52
    .line 53
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v4, ", isPageFinished: "

    .line 60
    .line 61
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-static {v3, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getUrl()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-nez v3, :cond_0

    .line 85
    .line 86
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    .line 87
    .line 88
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getUrl()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string v3, "updateProgressStep fail: url\u4e0d\u5339\u914d, loadingUrl:"

    .line 100
    .line 101
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v0, " , pageStatus.url:"

    .line 108
    .line 109
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :catch_0
    move-exception p1

    .line 124
    goto/16 :goto_4

    .line 125
    .line 126
    :cond_0
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isLoadError()Z

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    if-eqz v3, :cond_1

    .line 131
    .line 132
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    .line 133
    .line 134
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    .line 135
    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    const-string v2, "updateProgressStep fail: \u52a0\u8f7d\u9875\u9762\u5931\u8d25, loadingUrl: "

    .line 142
    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :cond_1
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressCurrentStep()Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    if-nez v3, :cond_2

    .line 162
    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 164
    .line 165
    .line 166
    move-result-wide v3

    .line 167
    invoke-virtual {v2, v3, v4}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->setProgressStartTime(J)V

    .line 168
    .line 169
    .line 170
    :cond_2
    invoke-virtual {v2, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->setProgressCurrentStep(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;)V

    .line 171
    .line 172
    .line 173
    sget-object v3, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 174
    .line 175
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    aget p1, v3, p1

    .line 180
    .line 181
    const/4 v3, 0x2

    .line 182
    if-eq p1, v3, :cond_c

    .line 183
    .line 184
    const/4 v3, 0x3

    .line 185
    if-eq p1, v3, :cond_a

    .line 186
    .line 187
    const/4 v3, 0x4

    .line 188
    if-eq p1, v3, :cond_7

    .line 189
    .line 190
    const/4 v3, 0x5

    .line 191
    if-eq p1, v3, :cond_3

    .line 192
    .line 193
    goto/16 :goto_0

    .line 194
    .line 195
    :cond_3
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    sget-object v3, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_30:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 200
    .line 201
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    .line 202
    .line 203
    .line 204
    move-result v4

    .line 205
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    invoke-virtual {p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result p1

    .line 213
    if-nez p1, :cond_4

    .line 214
    .line 215
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    .line 220
    .line 221
    .line 222
    move-result v3

    .line 223
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 228
    .line 229
    .line 230
    move-result-wide v4

    .line 231
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressStartTime()J

    .line 232
    .line 233
    .line 234
    move-result-wide v6

    .line 235
    sub-long/2addr v4, v6

    .line 236
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    :cond_4
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    sget-object v3, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_50:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 248
    .line 249
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    .line 250
    .line 251
    .line 252
    move-result v4

    .line 253
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 254
    .line 255
    .line 256
    move-result-object v4

    .line 257
    invoke-virtual {p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result p1

    .line 261
    if-nez p1, :cond_5

    .line 262
    .line 263
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    .line 268
    .line 269
    .line 270
    move-result v3

    .line 271
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 276
    .line 277
    .line 278
    move-result-wide v4

    .line 279
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressStartTime()J

    .line 280
    .line 281
    .line 282
    move-result-wide v6

    .line 283
    sub-long/2addr v4, v6

    .line 284
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 285
    .line 286
    .line 287
    move-result-object v4

    .line 288
    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    :cond_5
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    sget-object v3, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_70:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 296
    .line 297
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    .line 298
    .line 299
    .line 300
    move-result v4

    .line 301
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    invoke-virtual {p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result p1

    .line 309
    if-nez p1, :cond_6

    .line 310
    .line 311
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    .line 316
    .line 317
    .line 318
    move-result v3

    .line 319
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 320
    .line 321
    .line 322
    move-result-object v3

    .line 323
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 324
    .line 325
    .line 326
    move-result-wide v4

    .line 327
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressStartTime()J

    .line 328
    .line 329
    .line 330
    move-result-wide v6

    .line 331
    sub-long/2addr v4, v6

    .line 332
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 333
    .line 334
    .line 335
    move-result-object v4

    .line 336
    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    :cond_6
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    sget-object v3, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_100:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 344
    .line 345
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    .line 346
    .line 347
    .line 348
    move-result v4

    .line 349
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 350
    .line 351
    .line 352
    move-result-object v4

    .line 353
    invoke-virtual {p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    move-result p1

    .line 357
    if-nez p1, :cond_d

    .line 358
    .line 359
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    .line 360
    .line 361
    .line 362
    move-result-object p1

    .line 363
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    .line 364
    .line 365
    .line 366
    move-result v3

    .line 367
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 368
    .line 369
    .line 370
    move-result-object v3

    .line 371
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 372
    .line 373
    .line 374
    move-result-wide v4

    .line 375
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressStartTime()J

    .line 376
    .line 377
    .line 378
    move-result-wide v6

    .line 379
    sub-long/2addr v4, v6

    .line 380
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 381
    .line 382
    .line 383
    move-result-object v4

    .line 384
    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    goto/16 :goto_0

    .line 388
    .line 389
    :cond_7
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    .line 390
    .line 391
    .line 392
    move-result-object p1

    .line 393
    sget-object v3, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_30:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 394
    .line 395
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    .line 396
    .line 397
    .line 398
    move-result v4

    .line 399
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 400
    .line 401
    .line 402
    move-result-object v4

    .line 403
    invoke-virtual {p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    move-result p1

    .line 407
    if-nez p1, :cond_8

    .line 408
    .line 409
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    .line 410
    .line 411
    .line 412
    move-result-object p1

    .line 413
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    .line 414
    .line 415
    .line 416
    move-result v3

    .line 417
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 418
    .line 419
    .line 420
    move-result-object v3

    .line 421
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 422
    .line 423
    .line 424
    move-result-wide v4

    .line 425
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressStartTime()J

    .line 426
    .line 427
    .line 428
    move-result-wide v6

    .line 429
    sub-long/2addr v4, v6

    .line 430
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 431
    .line 432
    .line 433
    move-result-object v4

    .line 434
    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    :cond_8
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    .line 438
    .line 439
    .line 440
    move-result-object p1

    .line 441
    sget-object v3, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_50:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 442
    .line 443
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    .line 444
    .line 445
    .line 446
    move-result v4

    .line 447
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 448
    .line 449
    .line 450
    move-result-object v4

    .line 451
    invoke-virtual {p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 452
    .line 453
    .line 454
    move-result p1

    .line 455
    if-nez p1, :cond_9

    .line 456
    .line 457
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    .line 458
    .line 459
    .line 460
    move-result-object p1

    .line 461
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    .line 462
    .line 463
    .line 464
    move-result v3

    .line 465
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 466
    .line 467
    .line 468
    move-result-object v3

    .line 469
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 470
    .line 471
    .line 472
    move-result-wide v4

    .line 473
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressStartTime()J

    .line 474
    .line 475
    .line 476
    move-result-wide v6

    .line 477
    sub-long/2addr v4, v6

    .line 478
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 479
    .line 480
    .line 481
    move-result-object v4

    .line 482
    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    :cond_9
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    .line 486
    .line 487
    .line 488
    move-result-object p1

    .line 489
    sget-object v3, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_70:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 490
    .line 491
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    .line 492
    .line 493
    .line 494
    move-result v4

    .line 495
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 496
    .line 497
    .line 498
    move-result-object v4

    .line 499
    invoke-virtual {p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 500
    .line 501
    .line 502
    move-result p1

    .line 503
    if-nez p1, :cond_d

    .line 504
    .line 505
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    .line 506
    .line 507
    .line 508
    move-result-object p1

    .line 509
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    .line 510
    .line 511
    .line 512
    move-result v3

    .line 513
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 514
    .line 515
    .line 516
    move-result-object v3

    .line 517
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 518
    .line 519
    .line 520
    move-result-wide v4

    .line 521
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressStartTime()J

    .line 522
    .line 523
    .line 524
    move-result-wide v6

    .line 525
    sub-long/2addr v4, v6

    .line 526
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 527
    .line 528
    .line 529
    move-result-object v4

    .line 530
    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    .line 532
    .line 533
    goto/16 :goto_0

    .line 534
    .line 535
    :cond_a
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    .line 536
    .line 537
    .line 538
    move-result-object p1

    .line 539
    sget-object v3, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_30:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 540
    .line 541
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    .line 542
    .line 543
    .line 544
    move-result v4

    .line 545
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 546
    .line 547
    .line 548
    move-result-object v4

    .line 549
    invoke-virtual {p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 550
    .line 551
    .line 552
    move-result p1

    .line 553
    if-nez p1, :cond_b

    .line 554
    .line 555
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    .line 556
    .line 557
    .line 558
    move-result-object p1

    .line 559
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    .line 560
    .line 561
    .line 562
    move-result v3

    .line 563
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 564
    .line 565
    .line 566
    move-result-object v3

    .line 567
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 568
    .line 569
    .line 570
    move-result-wide v4

    .line 571
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressStartTime()J

    .line 572
    .line 573
    .line 574
    move-result-wide v6

    .line 575
    sub-long/2addr v4, v6

    .line 576
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 577
    .line 578
    .line 579
    move-result-object v4

    .line 580
    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    .line 582
    .line 583
    :cond_b
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    .line 584
    .line 585
    .line 586
    move-result-object p1

    .line 587
    sget-object v3, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_50:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 588
    .line 589
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    .line 590
    .line 591
    .line 592
    move-result v4

    .line 593
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 594
    .line 595
    .line 596
    move-result-object v4

    .line 597
    invoke-virtual {p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 598
    .line 599
    .line 600
    move-result p1

    .line 601
    if-nez p1, :cond_d

    .line 602
    .line 603
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    .line 604
    .line 605
    .line 606
    move-result-object p1

    .line 607
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    .line 608
    .line 609
    .line 610
    move-result v3

    .line 611
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 612
    .line 613
    .line 614
    move-result-object v3

    .line 615
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 616
    .line 617
    .line 618
    move-result-wide v4

    .line 619
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressStartTime()J

    .line 620
    .line 621
    .line 622
    move-result-wide v6

    .line 623
    sub-long/2addr v4, v6

    .line 624
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 625
    .line 626
    .line 627
    move-result-object v4

    .line 628
    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    .line 630
    .line 631
    goto :goto_0

    .line 632
    :cond_c
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    .line 633
    .line 634
    .line 635
    move-result-object p1

    .line 636
    sget-object v3, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_30:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 637
    .line 638
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    .line 639
    .line 640
    .line 641
    move-result v4

    .line 642
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 643
    .line 644
    .line 645
    move-result-object v4

    .line 646
    invoke-virtual {p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 647
    .line 648
    .line 649
    move-result p1

    .line 650
    if-nez p1, :cond_d

    .line 651
    .line 652
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    .line 653
    .line 654
    .line 655
    move-result-object p1

    .line 656
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    .line 657
    .line 658
    .line 659
    move-result v3

    .line 660
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 661
    .line 662
    .line 663
    move-result-object v3

    .line 664
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 665
    .line 666
    .line 667
    move-result-wide v4

    .line 668
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressStartTime()J

    .line 669
    .line 670
    .line 671
    move-result-wide v6

    .line 672
    sub-long/2addr v4, v6

    .line 673
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 674
    .line 675
    .line 676
    move-result-object v4

    .line 677
    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    .line 679
    .line 680
    :cond_d
    :goto_0
    new-instance p1, Landroid/os/Bundle;

    .line 681
    .line 682
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 683
    .line 684
    .line 685
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    .line 686
    .line 687
    const-string v4, "app"

    .line 688
    .line 689
    invoke-virtual {p1, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    .line 691
    .line 692
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    .line 693
    .line 694
    iget-object v4, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    .line 696
    const-string v5, "-1"

    .line 697
    .line 698
    const-string v6, "uniqueChainID"

    .line 699
    .line 700
    const/4 v7, 0x0

    .line 701
    if-eqz v4, :cond_e

    .line 702
    .line 703
    :try_start_1
    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 704
    .line 705
    .line 706
    move-result-object v4

    .line 707
    if-eqz v4, :cond_e

    .line 708
    .line 709
    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    .line 710
    .line 711
    .line 712
    move-result-object v4

    .line 713
    if-eqz v4, :cond_e

    .line 714
    .line 715
    invoke-virtual {v4, v6, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 716
    .line 717
    .line 718
    move-result-object v4

    .line 719
    goto :goto_1

    .line 720
    :cond_e
    move-object v4, v7

    .line 721
    :goto_1
    invoke-virtual {p1, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    .line 723
    .line 724
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->APP_H5_PROGRESS_STATUS:Ljava/lang/String;

    .line 725
    .line 726
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    .line 727
    .line 728
    .line 729
    move-result-object v4

    .line 730
    invoke-static {v4}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 731
    .line 732
    .line 733
    move-result-object v4

    .line 734
    invoke-virtual {p1, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    .line 736
    .line 737
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 738
    .line 739
    .line 740
    move-result-object v3

    .line 741
    check-cast v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 742
    .line 743
    iget-object v4, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 744
    .line 745
    if-eqz v4, :cond_f

    .line 746
    .line 747
    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 748
    .line 749
    .line 750
    move-result-object v4

    .line 751
    if-eqz v4, :cond_f

    .line 752
    .line 753
    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 754
    .line 755
    .line 756
    move-result-object v4

    .line 757
    goto :goto_2

    .line 758
    :cond_f
    move-object v4, v7

    .line 759
    :goto_2
    sget-object v8, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_INSERT:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 760
    .line 761
    invoke-interface {v3, v4, v8, v0, p1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 762
    .line 763
    .line 764
    new-instance p1, Landroid/os/Bundle;

    .line 765
    .line 766
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 767
    .line 768
    .line 769
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    .line 770
    .line 771
    const-string v4, "page"

    .line 772
    .line 773
    invoke-virtual {p1, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    .line 775
    .line 776
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    .line 777
    .line 778
    iget-object v4, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 779
    .line 780
    if-eqz v4, :cond_10

    .line 781
    .line 782
    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 783
    .line 784
    .line 785
    move-result-object v4

    .line 786
    if-eqz v4, :cond_10

    .line 787
    .line 788
    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    .line 789
    .line 790
    .line 791
    move-result-object v4

    .line 792
    if-eqz v4, :cond_10

    .line 793
    .line 794
    invoke-virtual {v4, v6, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 795
    .line 796
    .line 797
    move-result-object v4

    .line 798
    goto :goto_3

    .line 799
    :cond_10
    move-object v4, v7

    .line 800
    :goto_3
    invoke-virtual {p1, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    .line 802
    .line 803
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_H5_PROGRESS_STATUS:Ljava/lang/String;

    .line 804
    .line 805
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    .line 806
    .line 807
    .line 808
    move-result-object v4

    .line 809
    invoke-static {v4}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 810
    .line 811
    .line 812
    move-result-object v4

    .line 813
    invoke-virtual {p1, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    .line 815
    .line 816
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 817
    .line 818
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getUrl()Ljava/lang/String;

    .line 819
    .line 820
    .line 821
    move-result-object v4

    .line 822
    invoke-virtual {p0, v4}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 823
    .line 824
    .line 825
    move-result-object v4

    .line 826
    invoke-virtual {p1, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    .line 828
    .line 829
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 830
    .line 831
    .line 832
    move-result-object v1

    .line 833
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 834
    .line 835
    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 836
    .line 837
    if-eqz v3, :cond_11

    .line 838
    .line 839
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 840
    .line 841
    .line 842
    move-result-object v3

    .line 843
    if-eqz v3, :cond_11

    .line 844
    .line 845
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 846
    .line 847
    .line 848
    move-result-object v7

    .line 849
    :cond_11
    invoke-interface {v1, v7, v8, v0, p1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 850
    .line 851
    .line 852
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    .line 853
    .line 854
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressCurrentStep()Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 855
    .line 856
    .line 857
    move-result-object v0

    .line 858
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    .line 859
    .line 860
    .line 861
    move-result-object v1

    .line 862
    new-instance v2, Ljava/lang/StringBuilder;

    .line 863
    .line 864
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 865
    .line 866
    .line 867
    const-string v3, "updateProgressStep: progressCurrentStep="

    .line 868
    .line 869
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 870
    .line 871
    .line 872
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 873
    .line 874
    .line 875
    const-string v0, ", progressCollectList="

    .line 876
    .line 877
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    .line 879
    .line 880
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 881
    .line 882
    .line 883
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 884
    .line 885
    .line 886
    move-result-object v0

    .line 887
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    .line 889
    .line 890
    goto :goto_5

    .line 891
    :cond_12
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    .line 892
    .line 893
    const-string v0, "updateProgressStep fail: backForwardStack.size = 0"

    .line 894
    .line 895
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/util/EmptyStackException; {:try_start_1 .. :try_end_1} :catch_0

    .line 896
    .line 897
    .line 898
    goto :goto_5

    .line 899
    :goto_4
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    .line 900
    .line 901
    new-instance v1, Ljava/lang/StringBuilder;

    .line 902
    .line 903
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 904
    .line 905
    .line 906
    const-string v2, "updateProgressStep fail: "

    .line 907
    .line 908
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    .line 910
    .line 911
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 912
    .line 913
    .line 914
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 915
    .line 916
    .line 917
    move-result-object p1

    .line 918
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    .line 920
    .line 921
    :goto_5
    return-void
.end method

.method public final updateProgressStepNew(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;)V
    .locals 7

    .line 1
    const-string v0, "step"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-class v2, Lcom/cloud/tmc/miniapp/base/ShowPageStore;

    .line 12
    .line 13
    invoke-interface {v0, v2}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/cloud/tmc/miniapp/base/ShowPageStore;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageStore;->findShowPages()Ljava/util/Stack;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/cloud/tmc/miniapp/base/ShowPageData;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception p1

    .line 35
    goto/16 :goto_2

    .line 36
    .line 37
    :cond_0
    move-object v0, v1

    .line 38
    :goto_0
    if-nez v0, :cond_1

    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getStatus()Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v5, "updateProgressStep => status:"

    .line 53
    .line 54
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-static {v2, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getLoadFail()Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_2

    .line 72
    .line 73
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getRequestUrl()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v2, "updateProgressStep fail: \u52a0\u8f7d\u9875\u9762\u5931\u8d25, loadingUrl: "

    .line 85
    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_2
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressCurrentStep()Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    if-nez v2, :cond_3

    .line 105
    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 107
    .line 108
    .line 109
    move-result-wide v2

    .line 110
    invoke-virtual {v0, v2, v3}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->setProgressStartTime(J)V

    .line 111
    .line 112
    .line 113
    :cond_3
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->setProgressCurrentStep(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;)V

    .line 114
    .line 115
    .line 116
    sget-object v2, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 117
    .line 118
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    aget p1, v2, p1

    .line 123
    .line 124
    const/4 v2, 0x2

    .line 125
    if-eq p1, v2, :cond_d

    .line 126
    .line 127
    const/4 v2, 0x3

    .line 128
    if-eq p1, v2, :cond_b

    .line 129
    .line 130
    const/4 v2, 0x4

    .line 131
    if-eq p1, v2, :cond_8

    .line 132
    .line 133
    const/4 v2, 0x5

    .line 134
    if-eq p1, v2, :cond_4

    .line 135
    .line 136
    goto/16 :goto_1

    .line 137
    .line 138
    :cond_4
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    sget-object v2, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_30:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 143
    .line 144
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    invoke-virtual {p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    if-nez p1, :cond_5

    .line 157
    .line 158
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 171
    .line 172
    .line 173
    move-result-wide v3

    .line 174
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressStartTime()J

    .line 175
    .line 176
    .line 177
    move-result-wide v5

    .line 178
    sub-long/2addr v3, v5

    .line 179
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    :cond_5
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    sget-object v2, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_50:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 191
    .line 192
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    invoke-virtual {p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result p1

    .line 204
    if-nez p1, :cond_6

    .line 205
    .line 206
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 219
    .line 220
    .line 221
    move-result-wide v3

    .line 222
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressStartTime()J

    .line 223
    .line 224
    .line 225
    move-result-wide v5

    .line 226
    sub-long/2addr v3, v5

    .line 227
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    :cond_6
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    sget-object v2, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_70:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 239
    .line 240
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    .line 241
    .line 242
    .line 243
    move-result v3

    .line 244
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    invoke-virtual {p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result p1

    .line 252
    if-nez p1, :cond_7

    .line 253
    .line 254
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 267
    .line 268
    .line 269
    move-result-wide v3

    .line 270
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressStartTime()J

    .line 271
    .line 272
    .line 273
    move-result-wide v5

    .line 274
    sub-long/2addr v3, v5

    .line 275
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    :cond_7
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    sget-object v2, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_100:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 287
    .line 288
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    .line 289
    .line 290
    .line 291
    move-result v3

    .line 292
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    invoke-virtual {p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result p1

    .line 300
    if-nez p1, :cond_e

    .line 301
    .line 302
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    .line 307
    .line 308
    .line 309
    move-result v2

    .line 310
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 311
    .line 312
    .line 313
    move-result-object v2

    .line 314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 315
    .line 316
    .line 317
    move-result-wide v3

    .line 318
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressStartTime()J

    .line 319
    .line 320
    .line 321
    move-result-wide v5

    .line 322
    sub-long/2addr v3, v5

    .line 323
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 324
    .line 325
    .line 326
    move-result-object v3

    .line 327
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    goto/16 :goto_1

    .line 331
    .line 332
    :cond_8
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    sget-object v2, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_30:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 337
    .line 338
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    .line 339
    .line 340
    .line 341
    move-result v3

    .line 342
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 343
    .line 344
    .line 345
    move-result-object v3

    .line 346
    invoke-virtual {p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    move-result p1

    .line 350
    if-nez p1, :cond_9

    .line 351
    .line 352
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    .line 353
    .line 354
    .line 355
    move-result-object p1

    .line 356
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    .line 357
    .line 358
    .line 359
    move-result v2

    .line 360
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 361
    .line 362
    .line 363
    move-result-object v2

    .line 364
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 365
    .line 366
    .line 367
    move-result-wide v3

    .line 368
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressStartTime()J

    .line 369
    .line 370
    .line 371
    move-result-wide v5

    .line 372
    sub-long/2addr v3, v5

    .line 373
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 374
    .line 375
    .line 376
    move-result-object v3

    .line 377
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    :cond_9
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    .line 381
    .line 382
    .line 383
    move-result-object p1

    .line 384
    sget-object v2, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_50:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 385
    .line 386
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    .line 387
    .line 388
    .line 389
    move-result v3

    .line 390
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 391
    .line 392
    .line 393
    move-result-object v3

    .line 394
    invoke-virtual {p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 395
    .line 396
    .line 397
    move-result p1

    .line 398
    if-nez p1, :cond_a

    .line 399
    .line 400
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    .line 401
    .line 402
    .line 403
    move-result-object p1

    .line 404
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    .line 405
    .line 406
    .line 407
    move-result v2

    .line 408
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 409
    .line 410
    .line 411
    move-result-object v2

    .line 412
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 413
    .line 414
    .line 415
    move-result-wide v3

    .line 416
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressStartTime()J

    .line 417
    .line 418
    .line 419
    move-result-wide v5

    .line 420
    sub-long/2addr v3, v5

    .line 421
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 422
    .line 423
    .line 424
    move-result-object v3

    .line 425
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    :cond_a
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    .line 429
    .line 430
    .line 431
    move-result-object p1

    .line 432
    sget-object v2, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_70:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 433
    .line 434
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    .line 435
    .line 436
    .line 437
    move-result v3

    .line 438
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 439
    .line 440
    .line 441
    move-result-object v3

    .line 442
    invoke-virtual {p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 443
    .line 444
    .line 445
    move-result p1

    .line 446
    if-nez p1, :cond_e

    .line 447
    .line 448
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    .line 449
    .line 450
    .line 451
    move-result-object p1

    .line 452
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    .line 453
    .line 454
    .line 455
    move-result v2

    .line 456
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 457
    .line 458
    .line 459
    move-result-object v2

    .line 460
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 461
    .line 462
    .line 463
    move-result-wide v3

    .line 464
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressStartTime()J

    .line 465
    .line 466
    .line 467
    move-result-wide v5

    .line 468
    sub-long/2addr v3, v5

    .line 469
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 470
    .line 471
    .line 472
    move-result-object v3

    .line 473
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    goto/16 :goto_1

    .line 477
    .line 478
    :cond_b
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    .line 479
    .line 480
    .line 481
    move-result-object p1

    .line 482
    sget-object v2, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_30:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 483
    .line 484
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    .line 485
    .line 486
    .line 487
    move-result v3

    .line 488
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 489
    .line 490
    .line 491
    move-result-object v3

    .line 492
    invoke-virtual {p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 493
    .line 494
    .line 495
    move-result p1

    .line 496
    if-nez p1, :cond_c

    .line 497
    .line 498
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    .line 499
    .line 500
    .line 501
    move-result-object p1

    .line 502
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    .line 503
    .line 504
    .line 505
    move-result v2

    .line 506
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 507
    .line 508
    .line 509
    move-result-object v2

    .line 510
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 511
    .line 512
    .line 513
    move-result-wide v3

    .line 514
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressStartTime()J

    .line 515
    .line 516
    .line 517
    move-result-wide v5

    .line 518
    sub-long/2addr v3, v5

    .line 519
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 520
    .line 521
    .line 522
    move-result-object v3

    .line 523
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    :cond_c
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    .line 527
    .line 528
    .line 529
    move-result-object p1

    .line 530
    sget-object v2, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_50:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 531
    .line 532
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    .line 533
    .line 534
    .line 535
    move-result v3

    .line 536
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 537
    .line 538
    .line 539
    move-result-object v3

    .line 540
    invoke-virtual {p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 541
    .line 542
    .line 543
    move-result p1

    .line 544
    if-nez p1, :cond_e

    .line 545
    .line 546
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    .line 547
    .line 548
    .line 549
    move-result-object p1

    .line 550
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    .line 551
    .line 552
    .line 553
    move-result v2

    .line 554
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 555
    .line 556
    .line 557
    move-result-object v2

    .line 558
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 559
    .line 560
    .line 561
    move-result-wide v3

    .line 562
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressStartTime()J

    .line 563
    .line 564
    .line 565
    move-result-wide v5

    .line 566
    sub-long/2addr v3, v5

    .line 567
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 568
    .line 569
    .line 570
    move-result-object v3

    .line 571
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    goto :goto_1

    .line 575
    :cond_d
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    .line 576
    .line 577
    .line 578
    move-result-object p1

    .line 579
    sget-object v2, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_30:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 580
    .line 581
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    .line 582
    .line 583
    .line 584
    move-result v3

    .line 585
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 586
    .line 587
    .line 588
    move-result-object v3

    .line 589
    invoke-virtual {p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 590
    .line 591
    .line 592
    move-result p1

    .line 593
    if-nez p1, :cond_e

    .line 594
    .line 595
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    .line 596
    .line 597
    .line 598
    move-result-object p1

    .line 599
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    .line 600
    .line 601
    .line 602
    move-result v2

    .line 603
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 604
    .line 605
    .line 606
    move-result-object v2

    .line 607
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 608
    .line 609
    .line 610
    move-result-wide v3

    .line 611
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressStartTime()J

    .line 612
    .line 613
    .line 614
    move-result-wide v5

    .line 615
    sub-long/2addr v3, v5

    .line 616
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 617
    .line 618
    .line 619
    move-result-object v3

    .line 620
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    .line 622
    .line 623
    :cond_e
    :goto_1
    new-instance p1, Landroid/os/Bundle;

    .line 624
    .line 625
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 626
    .line 627
    .line 628
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->APP_H5_PROGRESS_STATUS:Ljava/lang/String;

    .line 629
    .line 630
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    .line 631
    .line 632
    .line 633
    move-result-object v3

    .line 634
    invoke-static {v3}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 635
    .line 636
    .line 637
    move-result-object v3

    .line 638
    invoke-virtual {p1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    .line 640
    .line 641
    new-instance v2, Lcom/cloud/tmc/integration/chain/insert/AppInsertState;

    .line 642
    .line 643
    invoke-direct {v2, p1}, Lcom/cloud/tmc/integration/chain/insert/AppInsertState;-><init>(Landroid/os/Bundle;)V

    .line 644
    .line 645
    .line 646
    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 647
    .line 648
    if-eqz p1, :cond_f

    .line 649
    .line 650
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppChainContext()Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    .line 651
    .line 652
    .line 653
    move-result-object v1

    .line 654
    :cond_f
    invoke-virtual {v2, v1}, Lcom/cloud/tmc/integration/chain/insert/AppInsertState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    .line 655
    .line 656
    .line 657
    new-instance p1, Landroid/os/Bundle;

    .line 658
    .line 659
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 660
    .line 661
    .line 662
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_H5_PROGRESS_STATUS:Ljava/lang/String;

    .line 663
    .line 664
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    .line 665
    .line 666
    .line 667
    move-result-object v2

    .line 668
    invoke-static {v2}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 669
    .line 670
    .line 671
    move-result-object v2

    .line 672
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    .line 674
    .line 675
    new-instance v1, Lcom/cloud/tmc/integration/chain/insert/PageInsertState;

    .line 676
    .line 677
    invoke-direct {v1, p1}, Lcom/cloud/tmc/integration/chain/insert/PageInsertState;-><init>(Landroid/os/Bundle;)V

    .line 678
    .line 679
    .line 680
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getVirtual_h5PageId()Ljava/lang/String;

    .line 681
    .line 682
    .line 683
    move-result-object p1

    .line 684
    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getPageChainContext(Ljava/lang/String;)Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 685
    .line 686
    .line 687
    move-result-object p1

    .line 688
    invoke-virtual {v1, p1}, Lcom/cloud/tmc/integration/chain/insert/PageInsertState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    .line 689
    .line 690
    .line 691
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    .line 692
    .line 693
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressCurrentStep()Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 694
    .line 695
    .line 696
    move-result-object v1

    .line 697
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    .line 698
    .line 699
    .line 700
    move-result-object v0

    .line 701
    new-instance v2, Ljava/lang/StringBuilder;

    .line 702
    .line 703
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 704
    .line 705
    .line 706
    const-string v3, "updateProgressStep: progressCurrentStep="

    .line 707
    .line 708
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    .line 710
    .line 711
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 712
    .line 713
    .line 714
    const-string v1, ", progressCollectList="

    .line 715
    .line 716
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    .line 718
    .line 719
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 720
    .line 721
    .line 722
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 723
    .line 724
    .line 725
    move-result-object v0

    .line 726
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    .line 728
    .line 729
    goto :goto_3

    .line 730
    :goto_2
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    .line 731
    .line 732
    new-instance v1, Ljava/lang/StringBuilder;

    .line 733
    .line 734
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 735
    .line 736
    .line 737
    const-string v2, "updateProgressStep fail: "

    .line 738
    .line 739
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    .line 741
    .line 742
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 743
    .line 744
    .line 745
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 746
    .line 747
    .line 748
    move-result-object p1

    .line 749
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    .line 751
    .line 752
    :goto_3
    return-void
.end method
