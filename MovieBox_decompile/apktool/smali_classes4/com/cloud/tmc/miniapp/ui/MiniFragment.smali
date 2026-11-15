.class public final Lcom/cloud/tmc/miniapp/ui/MiniFragment;
.super Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/render/IPageEventCallback;
.implements Lcom/cloud/tmc/kernel/render/IPageCallback;
.implements Lcom/cloud/tmc/kernel/debug/DebugCallback;
.implements Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/ui/MiniFragment$Companion;,
        Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;,
        Lcom/cloud/tmc/miniapp/ui/MiniFragment$OnPageReadyEventSubscriber;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/miniapp/ui/MiniFragment$Companion;

.field private static final TAG:Ljava/lang/String; = "MiniFragment"


# instance fields
.field private adTag:Ljava/lang/String;

.field private adm:Z

.field private binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

.field private callbackId:Ljava/lang/String;

.field private contextView:Landroid/view/View;

.field private eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

.field private eventCenter_page:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

.field private eventCreateMiniAppFail:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

.field private eventCreateOnPageReady:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

.field private final isLowClient$delegate:Lkotlin/Lazy;

.field private mCustomView:Landroid/view/View;

.field private mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private mPendingSetPage:Lcom/cloud/tmc/integration/structure/Page;

.field private mScrollY:I

.field private navigationBarCustomIconStyleIsWhite:Z

.field private navigationBarDefaultStyleIsWhite:Z

.field private needRefreshYCoordinate:Z

.field private perfSendFlag:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->Companion:Lcom/cloud/tmc/miniapp/ui/MiniFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$isLowClient$2;->INSTANCE:Lcom/cloud/tmc/miniapp/ui/MiniFragment$isLowClient$2;

    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->isLowClient$delegate:Lkotlin/Lazy;

    .line 11
    .line 12
    const-string v0, ""

    .line 13
    .line 14
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->adTag:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->callbackId:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method

.method public static final synthetic access$getContextView$p(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->contextView:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getMScrollY$p(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->mScrollY:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getNavigationBarCustomIconStyleIsWhite$p(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->navigationBarCustomIconStyleIsWhite:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getPage$p$s-883329049(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)Lcom/cloud/tmc/integration/structure/Page;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$hideCustomView(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Z)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->hideCustomView(Z)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$openPage(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->openPage()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setNavigationBarDefaultStyleIsWhite$p(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->navigationBarDefaultStyleIsWhite:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$showCustomView(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->showCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$updateTitleBarStyle(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->updateTitleBarStyle()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c0(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->openPage$lambda$25(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final changeNavigationBarProgress$lambda$26(Lcom/cloud/tmc/miniapp/ui/MiniFragment;IIJ)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    add-int/lit8 p1, p1, 0x1

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->changeNavigationBarProgress(IIJ)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private final checkFirstNormalPageOpened()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 2
    .line 3
    const-string v1, "firstNormalPageOpened"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/node/ValueStore;->getBooleanValue(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v3, "Check first page opened: "

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const-string v3, "MiniFragment"

    .line 37
    .line 38
    invoke-static {v3, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/kernel/node/ValueStore;->putBooleanValue(Ljava/lang/String;Z)V

    .line 55
    .line 56
    .line 57
    :cond_1
    return-void
.end method

.method private final checkUpdateHomeButton()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "isApiShowHomeEnabled"

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/node/ValueStore;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    const-string v1, "showHomeButton"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getAppLoadResult()Lcom/cloud/tmc/integration/structure/AppLoadResult;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->isHomepage(Lcom/cloud/tmc/integration/structure/AppLoadResult;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 32
    .line 33
    if-eqz v0, :cond_5

    .line 34
    .line 35
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/node/TitleBarNode;->hideHomeButton()V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 40
    .line 41
    if-eqz v0, :cond_5

    .line 42
    .line 43
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/node/TitleBarNode;->showHomeButton()V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    const-string v1, "hideHomeButton"

    .line 48
    .line 49
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 56
    .line 57
    if-eqz v0, :cond_5

    .line 58
    .line 59
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/node/TitleBarNode;->hideHomeButton()V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getAppLoadResult()Lcom/cloud/tmc/integration/structure/AppLoadResult;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->isHomepage(Lcom/cloud/tmc/integration/structure/AppLoadResult;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 74
    .line 75
    if-eqz v0, :cond_5

    .line 76
    .line 77
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/node/TitleBarNode;->hideHomeButton()V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_4
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 82
    .line 83
    if-eqz v0, :cond_5

    .line 84
    .line 85
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/node/TitleBarNode;->showHomeButton()V

    .line 86
    .line 87
    .line 88
    :cond_5
    :goto_1
    return-void
.end method

.method private final checkUpdateTitleBarStyle()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->isShow()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->updateTabBarStyle()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->updateTitleBarStyle()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-ne v0, v1, :cond_0

    .line 27
    .line 28
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->updateTabBarMessage()V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method private final customNavigationStyle(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->navigationBarTextStyleIsWhite()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/node/TitleBarNode;->setNavigationBarTitleColor(Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getNavigationBgColor()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/node/TitleBarNode;->setNavigationBarBackgroundColor(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getEnableTransparentStatusBar()Ljava/lang/Boolean;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 34
    .line 35
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/node/TitleBarNode;->setNavigationBarTransparent(Z)V

    .line 40
    .line 41
    .line 42
    :cond_2
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getNavigationBarHomeAction()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 49
    .line 50
    if-eqz v1, :cond_3

    .line 51
    .line 52
    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;->navigationBarAction(Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    const/4 v2, 0x0

    .line 57
    invoke-interface {v1, v0, v2}, Lcom/cloud/tmc/kernel/node/TitleBarNode;->setHomeAction(IZ)V

    .line 58
    .line 59
    .line 60
    :cond_3
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->navigationBarIconStyleIsWhite()Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->navigationBarCustomIconStyleIsWhite:Z

    .line 65
    .line 66
    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 67
    .line 68
    if-eqz p1, :cond_4

    .line 69
    .line 70
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->navigationBarDefaultStyleIsWhite:Z

    .line 71
    .line 72
    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/node/TitleBarNode;->setNavigationBarIconStyle(Z)V

    .line 73
    .line 74
    .line 75
    :cond_4
    return-void
.end method

.method public static synthetic d0(Lcom/cloud/tmc/miniapp/ui/MiniFragment;IIJ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->changeNavigationBarProgress$lambda$26(Lcom/cloud/tmc/miniapp/ui/MiniFragment;IIJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final debugRefresh$lambda$44(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V
    .locals 9

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    instance-of v1, v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    check-cast v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v0, v2

    .line 19
    :goto_0
    if-nez v0, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    const/4 v1, 0x1

    .line 23
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->setFirstLaunch(Z)V

    .line 24
    .line 25
    .line 26
    :goto_1
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getEngineProxy()Lcom/cloud/tmc/kernel/engine/IEngine;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/engine/IEngine;->getEngineRouter()Lcom/cloud/tmc/kernel/engine/EngineRouter;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 49
    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getEngineProxy()Lcom/cloud/tmc/kernel/engine/IEngine;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    invoke-interface {v1}, Lcom/cloud/tmc/kernel/engine/IEngine;->getWorkerId()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    goto :goto_2

    .line 69
    :cond_2
    move-object v1, v2

    .line 70
    :goto_2
    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/engine/EngineRouter;->getWorkerById(Ljava/lang/String;)Lcom/cloud/tmc/kernel/worker/JSI;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    goto :goto_3

    .line 75
    :cond_3
    move-object v0, v2

    .line 76
    :goto_3
    if-eqz v0, :cond_4

    .line 77
    .line 78
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/worker/JSI;->debugRefresh()V

    .line 79
    .line 80
    .line 81
    :cond_4
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 82
    .line 83
    if-eqz v0, :cond_5

    .line 84
    .line 85
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    if-eqz v0, :cond_5

    .line 90
    .line 91
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    goto :goto_4

    .line 96
    :cond_5
    move-object v0, v2

    .line 97
    :goto_4
    instance-of v1, v0, Landroid/webkit/WebView;

    .line 98
    .line 99
    if-eqz v1, :cond_6

    .line 100
    .line 101
    check-cast v0, Landroid/webkit/WebView;

    .line 102
    .line 103
    move-object v3, v0

    .line 104
    goto :goto_5

    .line 105
    :cond_6
    move-object v3, v2

    .line 106
    :goto_5
    if-eqz v3, :cond_7

    .line 107
    .line 108
    const-string v7, "utf-8"

    .line 109
    .line 110
    const/4 v8, 0x0

    .line 111
    const/4 v4, 0x0

    .line 112
    const-string v5, ""

    .line 113
    .line 114
    const-string v6, "text/html"

    .line 115
    .line 116
    invoke-virtual/range {v3 .. v8}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    :cond_7
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getAppLoadResult()Lcom/cloud/tmc/integration/structure/AppLoadResult;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    if-eqz v0, :cond_c

    .line 124
    .line 125
    const-class v0, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 126
    .line 127
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 132
    .line 133
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 134
    .line 135
    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    if-eqz v0, :cond_8

    .line 140
    .line 141
    new-instance v1, Lcom/cloud/tmc/miniapp/ui/MiniFragment$debugRefresh$1$1$1;

    .line 142
    .line 143
    invoke-direct {v1, p0, v0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment$debugRefresh$1$1$1;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;)V

    .line 144
    .line 145
    .line 146
    const-string v3, "renderOnMessageReady"

    .line 147
    .line 148
    invoke-interface {v0, v3, v1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->register(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    .line 149
    .line 150
    .line 151
    :cond_8
    new-instance v0, Lcom/cloud/tmc/kernel/render/LoadParams;

    .line 152
    .line 153
    invoke-direct {v0}, Lcom/cloud/tmc/kernel/render/LoadParams;-><init>()V

    .line 154
    .line 155
    .line 156
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 157
    .line 158
    if-eqz v1, :cond_9

    .line 159
    .line 160
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getPageURI()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    goto :goto_6

    .line 165
    :cond_9
    move-object v1, v2

    .line 166
    :goto_6
    iput-object v1, v0, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    .line 167
    .line 168
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 169
    .line 170
    if-eqz v1, :cond_a

    .line 171
    .line 172
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    goto :goto_7

    .line 177
    :cond_a
    move-object v1, v2

    .line 178
    :goto_7
    iput-object v1, v0, Lcom/cloud/tmc/kernel/render/LoadParams;->pagePath:Ljava/lang/String;

    .line 179
    .line 180
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 181
    .line 182
    if-eqz v1, :cond_b

    .line 183
    .line 184
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    if-eqz v1, :cond_b

    .line 189
    .line 190
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    :cond_b
    iput-object v2, v0, Lcom/cloud/tmc/kernel/render/LoadParams;->appId:Ljava/lang/String;

    .line 195
    .line 196
    iget-object p0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 197
    .line 198
    if-eqz p0, :cond_c

    .line 199
    .line 200
    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    if-eqz p0, :cond_c

    .line 205
    .line 206
    invoke-interface {p0, v0}, Lcom/cloud/tmc/kernel/render/IRender;->load(Lcom/cloud/tmc/kernel/render/LoadParams;)V

    .line 207
    .line 208
    .line 209
    :cond_c
    return-void
.end method

.method public static synthetic e0(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->initView$lambda$12$lambda$11$lambda$9(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f0(ILandroid/view/View;Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->showWebViewMask$lambda$41(ILandroid/view/View;Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g0(Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->setPageOnMain$lambda$28(Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic h0(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->initView$lambda$12$lambda$11$lambda$10(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final hideCustomView(Z)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->mCustomView:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->needRefreshYCoordinate:Z

    .line 11
    .line 12
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/y0;->a()Lkotlinx/coroutines/i0;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {p1}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    new-instance v4, Lcom/cloud/tmc/miniapp/ui/MiniFragment$hideCustomView$1;

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    invoke-direct {v4, p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment$hideCustomView$1;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Lkotlin/coroutines/Continuation;)V

    .line 24
    .line 25
    .line 26
    const/4 v5, 0x3

    .line 27
    const/4 v6, 0x0

    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    .line 34
    .line 35
    const/16 v2, 0x8

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    iget-object v1, v1, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0OO:Landroid/widget/FrameLayout;

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->mCustomView:Landroid/view/View;

    .line 47
    .line 48
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 49
    .line 50
    .line 51
    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->mCustomView:Landroid/view/View;

    .line 52
    .line 53
    if-nez v1, :cond_3

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    :goto_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 60
    .line 61
    if-eqz v1, :cond_4

    .line 62
    .line 63
    invoke-interface {v1}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 64
    .line 65
    .line 66
    :cond_4
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->mCustomView:Landroid/view/View;

    .line 67
    .line 68
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getHasVirtualNavBar()Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_5

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->showVirtualNavBar()V

    .line 77
    .line 78
    .line 79
    :cond_5
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/extension/FullScreenExtensionKt;->landScapeToProtrait(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V

    .line 80
    .line 81
    .line 82
    return v0
.end method

.method private final hideWebViewMask()V
    .locals 4

    .line 1
    const-string v0, "MiniFragment"

    .line 2
    .line 3
    :try_start_0
    sget-object v1, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->enableWebViewMask()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v3, "hideWebViewMask enableWebViewMask: "

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    iget-object v1, v1, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0oo:Landroid/view/View;

    .line 37
    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    new-instance v2, Lcom/cloud/tmc/miniapp/ui/o0;

    .line 45
    .line 46
    invoke-direct {v2, v1}, Lcom/cloud/tmc/miniapp/ui/o0;-><init>(Landroid/view/View;)V

    .line 47
    .line 48
    .line 49
    invoke-static {v2}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :catchall_0
    move-exception v1

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    :goto_0
    return-void

    .line 56
    :goto_1
    const-string v2, ""

    .line 57
    .line 58
    invoke-static {v0, v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    :goto_2
    return-void
.end method

.method private static final hideWebViewMask$lambda$42(Landroid/view/View;)V
    .locals 3

    .line 1
    const-string v0, "MiniFragment"

    .line 2
    .line 3
    const-string v1, "$maskView"

    .line 4
    .line 5
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x4

    .line 13
    if-eq v1, v2, :cond_0

    .line 14
    .line 15
    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toInvisible(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    const-string p0, "hideWebViewMask maskView \u9690\u85cf\u6210\u529f"

    .line 19
    .line 20
    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    const-string p0, "hideWebViewMask \u6267\u884c\u5b8c\u6bd5"

    .line 27
    .line 28
    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    goto :goto_2

    .line 32
    :goto_1
    const-string v1, ""

    .line 33
    .line 34
    invoke-static {v0, v1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    :goto_2
    return-void
.end method

.method public static synthetic i0(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->openPage$lambda$24(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final init()V
    .locals 6

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
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const-class v2, Lcom/cloud/tmc/integration/structure/AppLoadResult;

    .line 16
    .line 17
    invoke-interface {v1, v2, v0}, Lcom/cloud/tmc/kernel/node/DataNode;->setData(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    :try_start_0
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/BuildConfigProxy;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/BuildConfigProxy;

    .line 27
    .line 28
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/BuildConfigProxy;->isDebug()Ljava/lang/Boolean;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "get(BuildConfigProxy::class.java).isDebug"

    .line 33
    .line 34
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    invoke-static {}, Lcom/cloud/tmc/integration/utils/AppUtils;->enableWebViewDebugger()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    :cond_1
    const/4 v0, 0x1

    .line 50
    invoke-static {v0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    :catchall_0
    :cond_2
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    goto :goto_0

    .line 69
    :cond_3
    move-object v0, v1

    .line 70
    :goto_0
    if-nez v0, :cond_4

    .line 71
    .line 72
    return-void

    .line 73
    :cond_4
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->contextView:Landroid/view/View;

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getAppLoadResult()Lcom/cloud/tmc/integration/structure/AppLoadResult;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 80
    .line 81
    if-eqz v2, :cond_5

    .line 82
    .line 83
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    goto :goto_1

    .line 88
    :cond_5
    move-object v2, v1

    .line 89
    :goto_1
    invoke-static {v0, v2}, Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;->getWindowOptimalConfiguration(Lcom/cloud/tmc/integration/structure/AppLoadResult;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const-string v2, "contextView"

    .line 94
    .line 95
    if-eqz v0, :cond_f

    .line 96
    .line 97
    :try_start_1
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getContentBgColor()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    if-eqz v3, :cond_7

    .line 102
    .line 103
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    if-lez v4, :cond_7

    .line 108
    .line 109
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    invoke-direct {p0, v4}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->showWebViewMask(I)V

    .line 114
    .line 115
    .line 116
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    .line 117
    .line 118
    if-eqz v5, :cond_6

    .line 119
    .line 120
    iget-object v5, v5, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/PageContainerView;

    .line 121
    .line 122
    if-eqz v5, :cond_6

    .line 123
    .line 124
    invoke-virtual {v5, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :catch_0
    move-exception v3

    .line 129
    goto :goto_3

    .line 130
    :cond_6
    :goto_2
    iget-object v4, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 131
    .line 132
    if-eqz v4, :cond_7

    .line 133
    .line 134
    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    if-eqz v4, :cond_7

    .line 139
    .line 140
    invoke-interface {v4, v3}, Lcom/cloud/tmc/kernel/render/IRender;->setBgColor(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 141
    .line 142
    .line 143
    goto :goto_4

    .line 144
    :goto_3
    const-string v4, "MiniFragment"

    .line 145
    .line 146
    const-string v5, "set content background color error"

    .line 147
    .line 148
    invoke-static {v4, v5, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    .line 150
    .line 151
    :cond_7
    :goto_4
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getEnablePullDownRefresh()Ljava/lang/Boolean;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 156
    .line 157
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    if-nez v3, :cond_8

    .line 162
    .line 163
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getEnablePullUpRefresh()Ljava/lang/Boolean;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    if-eqz v3, :cond_a

    .line 172
    .line 173
    :cond_8
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->contextView:Landroid/view/View;

    .line 174
    .line 175
    if-nez v3, :cond_9

    .line 176
    .line 177
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    move-object v3, v1

    .line 181
    :cond_9
    invoke-virtual {p0, v3, v0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->attachToRefresh(Landroid/view/View;Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;)Landroid/view/View;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    iput-object v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->contextView:Landroid/view/View;

    .line 186
    .line 187
    :cond_a
    :try_start_2
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getLimitTextZoom()Ljava/lang/Boolean;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    if-eqz v0, :cond_f

    .line 196
    .line 197
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 198
    .line 199
    if-eqz v0, :cond_b

    .line 200
    .line 201
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    if-eqz v0, :cond_b

    .line 206
    .line 207
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    goto :goto_5

    .line 212
    :cond_b
    move-object v0, v1

    .line 213
    :goto_5
    instance-of v3, v0, Landroid/webkit/WebView;

    .line 214
    .line 215
    if-eqz v3, :cond_c

    .line 216
    .line 217
    check-cast v0, Landroid/webkit/WebView;

    .line 218
    .line 219
    goto :goto_6

    .line 220
    :cond_c
    move-object v0, v1

    .line 221
    :goto_6
    if-eqz v0, :cond_d

    .line 222
    .line 223
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    goto :goto_7

    .line 228
    :cond_d
    move-object v0, v1

    .line 229
    :goto_7
    if-nez v0, :cond_e

    .line 230
    .line 231
    goto :goto_8

    .line 232
    :cond_e
    const/16 v3, 0x64

    .line 233
    .line 234
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setTextZoom(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 235
    .line 236
    .line 237
    :catchall_1
    :cond_f
    :goto_8
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    .line 238
    .line 239
    if-eqz v0, :cond_11

    .line 240
    .line 241
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/PageContainerView;

    .line 242
    .line 243
    if-eqz v0, :cond_11

    .line 244
    .line 245
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->contextView:Landroid/view/View;

    .line 246
    .line 247
    if-nez v3, :cond_10

    .line 248
    .line 249
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    move-object v3, v1

    .line 253
    :cond_10
    invoke-static {v3}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->removeSelf(Landroid/view/View;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 257
    .line 258
    .line 259
    :cond_11
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->prePage()V

    .line 260
    .line 261
    .line 262
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 263
    .line 264
    if-eqz v0, :cond_12

    .line 265
    .line 266
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    goto :goto_9

    .line 271
    :cond_12
    move-object v0, v1

    .line 272
    :goto_9
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 273
    .line 274
    if-eqz v2, :cond_13

    .line 275
    .line 276
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    goto :goto_a

    .line 281
    :cond_13
    move-object v2, v1

    .line 282
    :goto_a
    invoke-direct {p0, v0, v2}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->injectRenderFramework(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/integration/structure/App;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    instance-of v2, v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 290
    .line 291
    if-eqz v2, :cond_14

    .line 292
    .line 293
    move-object v1, v0

    .line 294
    check-cast v1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 295
    .line 296
    :cond_14
    if-eqz v1, :cond_15

    .line 297
    .line 298
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    .line 299
    .line 300
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getStartLoadingNativeAnimDelayTime()J

    .line 301
    .line 302
    .line 303
    move-result-wide v2

    .line 304
    invoke-virtual {v1, v2, v3}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->hideStatusLoadingDelay(J)V

    .line 305
    .line 306
    .line 307
    :cond_15
    return-void
.end method

.method private static final initView$lambda$12$lambda$11$lambda$10(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->goBack()V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method private static final initView$lambda$12$lambda$11$lambda$8(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Landroid/view/View;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {p0, v0, p1, v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->addScreen$default(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Ljava/lang/String;ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private static final initView$lambda$12$lambda$11$lambda$9(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    const-string p2, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->checkBackToPageInterceptAndRemoveIt()V

    .line 7
    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->goHome()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private final injectRenderFramework(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/integration/structure/App;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/cloud/tmc/integration/minicover/NativeComponentManager;->INSTANCE:Lcom/cloud/tmc/integration/minicover/NativeComponentManager;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

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
    const-string v3, ""

    .line 13
    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    move-object v2, v3

    .line 17
    :cond_1
    if-eqz p1, :cond_2

    .line 18
    .line 19
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderId()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    goto :goto_1

    .line 24
    :cond_2
    move-object v4, v1

    .line 25
    :goto_1
    if-nez v4, :cond_3

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_3
    move-object v3, v4

    .line 29
    :goto_2
    invoke-virtual {v0, v2, v3}, Lcom/cloud/tmc/integration/minicover/NativeComponentManager;->addAppId(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 33
    .line 34
    if-eqz v0, :cond_4

    .line 35
    .line 36
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->fromWarmup()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    const/4 v2, 0x1

    .line 47
    if-ne v0, v2, :cond_4

    .line 48
    .line 49
    return-void

    .line 50
    :cond_4
    new-instance v0, Landroid/os/Bundle;

    .line 51
    .line 52
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 53
    .line 54
    .line 55
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    .line 56
    .line 57
    const-string v3, "page"

    .line 58
    .line 59
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    .line 63
    .line 64
    if-eqz p2, :cond_5

    .line 65
    .line 66
    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    if-eqz v3, :cond_5

    .line 71
    .line 72
    const-string v4, "uniqueChainID"

    .line 73
    .line 74
    const-string v5, "-1"

    .line 75
    .line 76
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    goto :goto_3

    .line 81
    :cond_5
    move-object v3, v1

    .line 82
    :goto_3
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 90
    .line 91
    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 92
    .line 93
    if-eqz v3, :cond_6

    .line 94
    .line 95
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    goto :goto_4

    .line 100
    :cond_6
    move-object v3, v1

    .line 101
    :goto_4
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const-class v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 109
    .line 110
    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    check-cast v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 115
    .line 116
    iget-object v4, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 117
    .line 118
    if-eqz v4, :cond_7

    .line 119
    .line 120
    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    if-eqz v4, :cond_7

    .line 125
    .line 126
    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    goto :goto_5

    .line 131
    :cond_7
    move-object v4, v1

    .line 132
    :goto_5
    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 133
    .line 134
    sget-object v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->LoadRenderFramework:Ljava/lang/String;

    .line 135
    .line 136
    invoke-interface {v3, v4, v5, v6, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 137
    .line 138
    .line 139
    new-instance v0, Landroid/os/Bundle;

    .line 140
    .line 141
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 142
    .line 143
    .line 144
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 145
    .line 146
    iget-object v4, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 147
    .line 148
    if-eqz v4, :cond_8

    .line 149
    .line 150
    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    goto :goto_6

    .line 155
    :cond_8
    move-object v4, v1

    .line 156
    :goto_6
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    .line 164
    .line 165
    iget-object v4, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 166
    .line 167
    if-eqz v4, :cond_9

    .line 168
    .line 169
    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    goto :goto_7

    .line 174
    :cond_9
    move-object v4, v1

    .line 175
    :goto_7
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    check-cast v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 187
    .line 188
    iget-object v4, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 189
    .line 190
    if-eqz v4, :cond_a

    .line 191
    .line 192
    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    if-eqz v4, :cond_a

    .line 197
    .line 198
    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    goto :goto_8

    .line 203
    :cond_a
    move-object v4, v1

    .line 204
    :goto_8
    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 205
    .line 206
    sget-object v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageLoadRenderFramework:Ljava/lang/String;

    .line 207
    .line 208
    invoke-interface {v3, v4, v5, v6, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 209
    .line 210
    .line 211
    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    check-cast v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 216
    .line 217
    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 218
    .line 219
    if-eqz v3, :cond_b

    .line 220
    .line 221
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    if-eqz v3, :cond_b

    .line 226
    .line 227
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    goto :goto_9

    .line 232
    :cond_b
    move-object v3, v1

    .line 233
    :goto_9
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 234
    .line 235
    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageLoadRenderFramework:Ljava/lang/String;

    .line 236
    .line 237
    invoke-interface {v2, v3, v4, v5, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 238
    .line 239
    .line 240
    new-instance v2, Lcom/cloud/tmc/integration/chain/startState/LoadRenderFrameworkStartState;

    .line 241
    .line 242
    invoke-direct {v2, v0}, Lcom/cloud/tmc/integration/chain/startState/LoadRenderFrameworkStartState;-><init>(Landroid/os/Bundle;)V

    .line 243
    .line 244
    .line 245
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 246
    .line 247
    if-eqz v0, :cond_c

    .line 248
    .line 249
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPageChainContext()Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    goto :goto_a

    .line 254
    :cond_c
    move-object v0, v1

    .line 255
    :goto_a
    invoke-virtual {v2, v0}, Lcom/cloud/tmc/integration/chain/startState/LoadRenderFrameworkStartState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    .line 256
    .line 257
    .line 258
    new-instance v0, Lcom/cloud/tmc/kernel/render/LoadParams;

    .line 259
    .line 260
    invoke-direct {v0}, Lcom/cloud/tmc/kernel/render/LoadParams;-><init>()V

    .line 261
    .line 262
    .line 263
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 264
    .line 265
    if-eqz v2, :cond_d

    .line 266
    .line 267
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getPageURI()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    goto :goto_b

    .line 272
    :cond_d
    move-object v2, v1

    .line 273
    :goto_b
    iput-object v2, v0, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    .line 274
    .line 275
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 276
    .line 277
    if-eqz v2, :cond_e

    .line 278
    .line 279
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    goto :goto_c

    .line 284
    :cond_e
    move-object v2, v1

    .line 285
    :goto_c
    iput-object v2, v0, Lcom/cloud/tmc/kernel/render/LoadParams;->pagePath:Ljava/lang/String;

    .line 286
    .line 287
    if-eqz p2, :cond_f

    .line 288
    .line 289
    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object p2

    .line 293
    goto :goto_d

    .line 294
    :cond_f
    move-object p2, v1

    .line 295
    :goto_d
    iput-object p2, v0, Lcom/cloud/tmc/kernel/render/LoadParams;->appId:Ljava/lang/String;

    .line 296
    .line 297
    if-eqz p1, :cond_10

    .line 298
    .line 299
    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/render/IRender;->load(Lcom/cloud/tmc/kernel/render/LoadParams;)V

    .line 300
    .line 301
    .line 302
    :cond_10
    if-eqz p1, :cond_11

    .line 303
    .line 304
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    goto :goto_e

    .line 309
    :cond_11
    move-object p1, v1

    .line 310
    :goto_e
    instance-of p2, p1, Landroid/webkit/WebView;

    .line 311
    .line 312
    if-eqz p2, :cond_12

    .line 313
    .line 314
    move-object v1, p1

    .line 315
    check-cast v1, Landroid/webkit/WebView;

    .line 316
    .line 317
    :cond_12
    if-eqz v1, :cond_13

    .line 318
    .line 319
    const/4 p1, 0x0

    .line 320
    invoke-virtual {v1, p1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v1, p1}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 324
    .line 325
    .line 326
    :cond_13
    return-void
.end method

.method private final isLowClient()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->isLowClient$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public static synthetic j0(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->debugRefresh$lambda$44(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic k0(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->showWebViewMask$lambda$41$lambda$40(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic l0(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->initView$lambda$12$lambda$11$lambda$8(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic m0(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->hideWebViewMask$lambda$42(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic n0(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Lcom/cloud/tmc/integration/structure/Page;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->setPage$lambda$17(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Lcom/cloud/tmc/integration/structure/Page;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic o0(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->onViewCreated$lambda$3(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final onViewCreated$lambda$3(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->hideCustomView(Z)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final openPage()V
    .locals 11

    .line 1
    const-string v0, "MiniFragment"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v2, v1

    .line 20
    :goto_0
    if-eqz v2, :cond_4

    .line 21
    .line 22
    sget-object v3, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/AppModel;->getMiniappSubtype()Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v3, v4}, Lcom/cloud/tmc/integration/utils/AppUtils;->checkUesCommonresApp(Ljava/lang/Integer;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_4

    .line 33
    .line 34
    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 35
    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    invoke-interface {v3}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    move-object v3, v1

    .line 50
    :goto_1
    instance-of v4, v3, Lcom/cloud/tmc/render/system/SystemWebView;

    .line 51
    .line 52
    if-eqz v4, :cond_2

    .line 53
    .line 54
    check-cast v3, Lcom/cloud/tmc/render/system/SystemWebView;

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    move-object v3, v1

    .line 58
    :goto_2
    if-eqz v3, :cond_3

    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/AppModel;->getTemplateMiniappId()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {v3, v4}, Lcom/cloud/tmc/render/system/SystemWebView;->setCommonresId(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_3
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/AppModel;->getTemplateMiniappId()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v4, "use commonres miniapp, commonresId is "

    .line 77
    .line 78
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .line 90
    .line 91
    :catchall_0
    :cond_4
    new-instance v2, Landroid/os/Bundle;

    .line 92
    .line 93
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 94
    .line 95
    .line 96
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    .line 97
    .line 98
    const-string v4, "page"

    .line 99
    .line 100
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    .line 104
    .line 105
    iget-object v4, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 106
    .line 107
    if-eqz v4, :cond_5

    .line 108
    .line 109
    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    if-eqz v4, :cond_5

    .line 114
    .line 115
    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    if-eqz v4, :cond_5

    .line 120
    .line 121
    const-string v5, "uniqueChainID"

    .line 122
    .line 123
    const-string v6, "-1"

    .line 124
    .line 125
    invoke-virtual {v4, v5, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    goto :goto_3

    .line 130
    :cond_5
    move-object v4, v1

    .line 131
    :goto_3
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 139
    .line 140
    iget-object v4, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 141
    .line 142
    if-eqz v4, :cond_6

    .line 143
    .line 144
    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    goto :goto_4

    .line 149
    :cond_6
    move-object v4, v1

    .line 150
    :goto_4
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    const-class v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 158
    .line 159
    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    check-cast v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 164
    .line 165
    iget-object v5, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 166
    .line 167
    if-eqz v5, :cond_7

    .line 168
    .line 169
    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    if-eqz v5, :cond_7

    .line 174
    .line 175
    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    goto :goto_5

    .line 180
    :cond_7
    move-object v5, v1

    .line 181
    :goto_5
    sget-object v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 182
    .line 183
    sget-object v7, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->DrawView:Ljava/lang/String;

    .line 184
    .line 185
    invoke-interface {v4, v5, v6, v7, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 186
    .line 187
    .line 188
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->checkFirstNormalPageOpened()V

    .line 189
    .line 190
    .line 191
    const-string v2, "openPage"

    .line 192
    .line 193
    const-string v4, "subPkg"

    .line 194
    .line 195
    invoke-static {v4, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    instance-of v5, v2, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 203
    .line 204
    if-eqz v5, :cond_8

    .line 205
    .line 206
    check-cast v2, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 207
    .line 208
    goto :goto_6

    .line 209
    :cond_8
    move-object v2, v1

    .line 210
    :goto_6
    const/4 v5, 0x0

    .line 211
    const/4 v6, 0x1

    .line 212
    const-class v7, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 213
    .line 214
    if-eqz v2, :cond_b

    .line 215
    .line 216
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->isFirstLaunch()Z

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    if-ne v2, v6, :cond_b

    .line 221
    .line 222
    const-string v2, "appReady"

    .line 223
    .line 224
    invoke-static {v4, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->sendAppReadyToRender()V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    instance-of v3, v2, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 235
    .line 236
    if-eqz v3, :cond_9

    .line 237
    .line 238
    move-object v1, v2

    .line 239
    check-cast v1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 240
    .line 241
    :cond_9
    if-nez v1, :cond_a

    .line 242
    .line 243
    goto/16 :goto_16

    .line 244
    .line 245
    :cond_a
    invoke-virtual {v1, v5}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->setFirstLaunch(Z)V

    .line 246
    .line 247
    .line 248
    goto/16 :goto_16

    .line 249
    .line 250
    :cond_b
    const-string v2, "pageReady"

    .line 251
    .line 252
    invoke-static {v4, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->sendPageReadyToRender()V

    .line 256
    .line 257
    .line 258
    new-instance v2, Landroid/os/Bundle;

    .line 259
    .line 260
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 261
    .line 262
    .line 263
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 264
    .line 265
    iget-object v8, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 266
    .line 267
    if-eqz v8, :cond_c

    .line 268
    .line 269
    invoke-interface {v8}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v8

    .line 273
    goto :goto_7

    .line 274
    :cond_c
    move-object v8, v1

    .line 275
    :goto_7
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v8

    .line 279
    invoke-virtual {v2, v4, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    .line 283
    .line 284
    iget-object v8, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 285
    .line 286
    if-eqz v8, :cond_d

    .line 287
    .line 288
    invoke-interface {v8}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v8

    .line 292
    goto :goto_8

    .line 293
    :cond_d
    move-object v8, v1

    .line 294
    :goto_8
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v8

    .line 298
    invoke-virtual {v2, v4, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    check-cast v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 306
    .line 307
    iget-object v8, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 308
    .line 309
    if-eqz v8, :cond_e

    .line 310
    .line 311
    invoke-interface {v8}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v8

    .line 315
    goto :goto_9

    .line 316
    :cond_e
    move-object v8, v1

    .line 317
    :goto_9
    sget-object v9, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 318
    .line 319
    sget-object v10, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageDrawView:Ljava/lang/String;

    .line 320
    .line 321
    invoke-interface {v4, v8, v9, v10, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 322
    .line 323
    .line 324
    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v3

    .line 328
    check-cast v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 329
    .line 330
    iget-object v4, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 331
    .line 332
    if-eqz v4, :cond_f

    .line 333
    .line 334
    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v4

    .line 338
    goto :goto_a

    .line 339
    :cond_f
    move-object v4, v1

    .line 340
    :goto_a
    sget-object v8, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 341
    .line 342
    sget-object v9, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageDrawView:Ljava/lang/String;

    .line 343
    .line 344
    invoke-interface {v3, v4, v8, v9, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 345
    .line 346
    .line 347
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 348
    .line 349
    if-eqz v2, :cond_11

    .line 350
    .line 351
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 352
    .line 353
    .line 354
    move-result-object v2

    .line 355
    if-eqz v2, :cond_11

    .line 356
    .line 357
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getEngineProxy()Lcom/cloud/tmc/kernel/engine/IEngine;

    .line 358
    .line 359
    .line 360
    move-result-object v2

    .line 361
    if-eqz v2, :cond_11

    .line 362
    .line 363
    invoke-interface {v2}, Lcom/cloud/tmc/kernel/engine/IEngine;->getEngineRouter()Lcom/cloud/tmc/kernel/engine/EngineRouter;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    if-eqz v2, :cond_11

    .line 368
    .line 369
    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 370
    .line 371
    if-eqz v3, :cond_10

    .line 372
    .line 373
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 374
    .line 375
    .line 376
    move-result-object v3

    .line 377
    if-eqz v3, :cond_10

    .line 378
    .line 379
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/App;->getEngineProxy()Lcom/cloud/tmc/kernel/engine/IEngine;

    .line 380
    .line 381
    .line 382
    move-result-object v3

    .line 383
    if-eqz v3, :cond_10

    .line 384
    .line 385
    invoke-interface {v3}, Lcom/cloud/tmc/kernel/engine/IEngine;->getWorkerId()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v3

    .line 389
    goto :goto_b

    .line 390
    :cond_10
    move-object v3, v1

    .line 391
    :goto_b
    invoke-interface {v2, v3}, Lcom/cloud/tmc/kernel/engine/EngineRouter;->getWorkerById(Ljava/lang/String;)Lcom/cloud/tmc/kernel/worker/JSI;

    .line 392
    .line 393
    .line 394
    move-result-object v2

    .line 395
    goto :goto_c

    .line 396
    :cond_11
    move-object v2, v1

    .line 397
    :goto_c
    new-instance v3, Landroid/os/Bundle;

    .line 398
    .line 399
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 400
    .line 401
    .line 402
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 403
    .line 404
    iget-object v8, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 405
    .line 406
    if-eqz v8, :cond_12

    .line 407
    .line 408
    invoke-interface {v8}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v8

    .line 412
    goto :goto_d

    .line 413
    :cond_12
    move-object v8, v1

    .line 414
    :goto_d
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v8

    .line 418
    invoke-virtual {v3, v4, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    .line 422
    .line 423
    iget-object v8, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 424
    .line 425
    if-eqz v8, :cond_13

    .line 426
    .line 427
    invoke-interface {v8}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v8

    .line 431
    goto :goto_e

    .line 432
    :cond_13
    move-object v8, v1

    .line 433
    :goto_e
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v8

    .line 437
    invoke-virtual {v3, v4, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    .line 441
    .line 442
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 443
    .line 444
    .line 445
    move-result-wide v8

    .line 446
    invoke-virtual {v3, v4, v8, v9}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 447
    .line 448
    .line 449
    new-instance v4, Lcom/cloud/tmc/integration/chain/startState/CreateWorkerStartState;

    .line 450
    .line 451
    invoke-direct {v4, v3}, Lcom/cloud/tmc/integration/chain/startState/CreateWorkerStartState;-><init>(Landroid/os/Bundle;)V

    .line 452
    .line 453
    .line 454
    iget-object v8, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 455
    .line 456
    if-eqz v8, :cond_14

    .line 457
    .line 458
    invoke-interface {v8}, Lcom/cloud/tmc/integration/structure/Page;->getPageChainContext()Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 459
    .line 460
    .line 461
    move-result-object v8

    .line 462
    goto :goto_f

    .line 463
    :cond_14
    move-object v8, v1

    .line 464
    :goto_f
    invoke-virtual {v4, v8}, Lcom/cloud/tmc/integration/chain/startState/CreateWorkerStartState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    .line 465
    .line 466
    .line 467
    new-instance v4, Lcom/cloud/tmc/integration/chain/endState/CreateWorkerEndState;

    .line 468
    .line 469
    invoke-direct {v4, v3}, Lcom/cloud/tmc/integration/chain/endState/CreateWorkerEndState;-><init>(Landroid/os/Bundle;)V

    .line 470
    .line 471
    .line 472
    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 473
    .line 474
    if-eqz v3, :cond_15

    .line 475
    .line 476
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->getPageChainContext()Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 477
    .line 478
    .line 479
    move-result-object v3

    .line 480
    goto :goto_10

    .line 481
    :cond_15
    move-object v3, v1

    .line 482
    :goto_10
    invoke-virtual {v4, v3}, Lcom/cloud/tmc/integration/chain/endState/CreateWorkerEndState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    .line 483
    .line 484
    .line 485
    new-instance v3, Landroid/os/Bundle;

    .line 486
    .line 487
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 488
    .line 489
    .line 490
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    .line 491
    .line 492
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 493
    .line 494
    .line 495
    move-result-wide v8

    .line 496
    invoke-virtual {v3, v4, v8, v9}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 497
    .line 498
    .line 499
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 500
    .line 501
    iget-object v8, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 502
    .line 503
    if-eqz v8, :cond_16

    .line 504
    .line 505
    invoke-interface {v8}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v8

    .line 509
    goto :goto_11

    .line 510
    :cond_16
    move-object v8, v1

    .line 511
    :goto_11
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v8

    .line 515
    invoke-virtual {v3, v4, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    .line 517
    .line 518
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    .line 519
    .line 520
    iget-object v8, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 521
    .line 522
    if-eqz v8, :cond_17

    .line 523
    .line 524
    invoke-interface {v8}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v8

    .line 528
    goto :goto_12

    .line 529
    :cond_17
    move-object v8, v1

    .line 530
    :goto_12
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v8

    .line 534
    invoke-virtual {v3, v4, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    .line 536
    .line 537
    new-instance v4, Lcom/cloud/tmc/integration/chain/startState/LoadWorkerFrameworkStartState;

    .line 538
    .line 539
    invoke-direct {v4, v3}, Lcom/cloud/tmc/integration/chain/startState/LoadWorkerFrameworkStartState;-><init>(Landroid/os/Bundle;)V

    .line 540
    .line 541
    .line 542
    iget-object v8, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 543
    .line 544
    if-eqz v8, :cond_18

    .line 545
    .line 546
    invoke-interface {v8}, Lcom/cloud/tmc/integration/structure/Page;->getPageChainContext()Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 547
    .line 548
    .line 549
    move-result-object v8

    .line 550
    goto :goto_13

    .line 551
    :cond_18
    move-object v8, v1

    .line 552
    :goto_13
    invoke-virtual {v4, v8}, Lcom/cloud/tmc/integration/chain/startState/LoadWorkerFrameworkStartState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    .line 553
    .line 554
    .line 555
    new-instance v4, Lcom/cloud/tmc/integration/chain/endState/LoadWorkerFrameworkEndState;

    .line 556
    .line 557
    invoke-direct {v4, v3}, Lcom/cloud/tmc/integration/chain/endState/LoadWorkerFrameworkEndState;-><init>(Landroid/os/Bundle;)V

    .line 558
    .line 559
    .line 560
    iget-object v8, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 561
    .line 562
    if-eqz v8, :cond_19

    .line 563
    .line 564
    invoke-interface {v8}, Lcom/cloud/tmc/integration/structure/Page;->getPageChainContext()Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 565
    .line 566
    .line 567
    move-result-object v8

    .line 568
    goto :goto_14

    .line 569
    :cond_19
    move-object v8, v1

    .line 570
    :goto_14
    invoke-virtual {v4, v8}, Lcom/cloud/tmc/integration/chain/endState/LoadWorkerFrameworkEndState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    .line 571
    .line 572
    .line 573
    new-instance v4, Lcom/cloud/tmc/integration/chain/startState/ChainMidStartState;

    .line 574
    .line 575
    invoke-direct {v4, v3}, Lcom/cloud/tmc/integration/chain/startState/ChainMidStartState;-><init>(Landroid/os/Bundle;)V

    .line 576
    .line 577
    .line 578
    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 579
    .line 580
    if-eqz v3, :cond_1a

    .line 581
    .line 582
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->getPageChainContext()Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 583
    .line 584
    .line 585
    move-result-object v3

    .line 586
    goto :goto_15

    .line 587
    :cond_1a
    move-object v3, v1

    .line 588
    :goto_15
    invoke-virtual {v4, v3}, Lcom/cloud/tmc/integration/chain/startState/ChainMidStartState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    .line 589
    .line 590
    .line 591
    if-eqz v2, :cond_1b

    .line 592
    .line 593
    invoke-interface {v2}, Lcom/cloud/tmc/kernel/worker/JSI;->firstGetPackageFileStatus()Ljava/lang/Boolean;

    .line 594
    .line 595
    .line 596
    move-result-object v2

    .line 597
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 598
    .line 599
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 600
    .line 601
    .line 602
    move-result v5

    .line 603
    :cond_1b
    if-eqz v5, :cond_1c

    .line 604
    .line 605
    invoke-static {p0, v1, v6, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->sendPageEnterToWorker$default(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Ljava/util/Map;ILjava/lang/Object;)V

    .line 606
    .line 607
    .line 608
    goto :goto_16

    .line 609
    :cond_1c
    invoke-static {v7}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 610
    .line 611
    .line 612
    move-result-object v2

    .line 613
    check-cast v2, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 614
    .line 615
    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 616
    .line 617
    if-eqz v3, :cond_1d

    .line 618
    .line 619
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 620
    .line 621
    .line 622
    move-result-object v1

    .line 623
    :cond_1d
    invoke-interface {v2, v1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 624
    .line 625
    .line 626
    move-result-object v1

    .line 627
    if-eqz v1, :cond_1e

    .line 628
    .line 629
    sget-object v2, Lcom/cloud/tmc/worker/WorkerManager;->Companion:Lcom/cloud/tmc/worker/WorkerManager$Companion;

    .line 630
    .line 631
    invoke-virtual {v2}, Lcom/cloud/tmc/worker/WorkerManager$Companion;->getEVENT_RESEND_PAGE_ENTER()Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    move-result-object v2

    .line 635
    new-instance v3, Lcom/cloud/tmc/miniapp/ui/MiniFragment$openPage$2;

    .line 636
    .line 637
    invoke-direct {v3, p0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment$openPage$2;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V

    .line 638
    .line 639
    .line 640
    invoke-interface {v1, v2, v3}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->register(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    .line 641
    .line 642
    .line 643
    :cond_1e
    :goto_16
    :try_start_1
    invoke-static {v7}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 644
    .line 645
    .line 646
    move-result-object v1

    .line 647
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 648
    .line 649
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 650
    .line 651
    invoke-interface {v1, v2}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 652
    .line 653
    .line 654
    move-result-object v1

    .line 655
    if-eqz v1, :cond_1f

    .line 656
    .line 657
    const-string v2, "slaveLoaded"

    .line 658
    .line 659
    new-instance v3, Lcom/cloud/tmc/miniapp/ui/m0;

    .line 660
    .line 661
    invoke-direct {v3, p0}, Lcom/cloud/tmc/miniapp/ui/m0;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V

    .line 662
    .line 663
    .line 664
    invoke-interface {v1, v2, v3}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->register(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    .line 665
    .line 666
    .line 667
    goto :goto_17

    .line 668
    :catchall_1
    move-exception v1

    .line 669
    goto :goto_18

    .line 670
    :cond_1f
    :goto_17
    invoke-static {v7}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 671
    .line 672
    .line 673
    move-result-object v1

    .line 674
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 675
    .line 676
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 677
    .line 678
    invoke-interface {v1, v2}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 679
    .line 680
    .line 681
    move-result-object v1

    .line 682
    if-eqz v1, :cond_20

    .line 683
    .line 684
    const-string v2, "slaveAttached"

    .line 685
    .line 686
    new-instance v3, Lcom/cloud/tmc/miniapp/ui/n0;

    .line 687
    .line 688
    invoke-direct {v3, p0}, Lcom/cloud/tmc/miniapp/ui/n0;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V

    .line 689
    .line 690
    .line 691
    invoke-interface {v1, v2, v3}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->register(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    .line 692
    .line 693
    .line 694
    :cond_20
    invoke-static {v7}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 695
    .line 696
    .line 697
    move-result-object v1

    .line 698
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 699
    .line 700
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 701
    .line 702
    invoke-interface {v1, v2}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 703
    .line 704
    .line 705
    move-result-object v1

    .line 706
    if-eqz v1, :cond_21

    .line 707
    .line 708
    const-string v2, "onSwitchTab"

    .line 709
    .line 710
    new-instance v3, Lcom/cloud/tmc/miniapp/ui/MiniFragment$openPage$5;

    .line 711
    .line 712
    invoke-direct {v3, p0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment$openPage$5;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V

    .line 713
    .line 714
    .line 715
    invoke-interface {v1, v2, v3}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->register(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 716
    .line 717
    .line 718
    goto :goto_19

    .line 719
    :goto_18
    const-string v2, ""

    .line 720
    .line 721
    invoke-static {v0, v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 722
    .line 723
    .line 724
    :cond_21
    :goto_19
    return-void
.end method

.method private static final openPage$lambda$24(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)Z
    .locals 0

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->hideLoadingDialog()V

    .line 7
    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method private static final openPage$lambda$25(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)Z
    .locals 0

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->hideWebViewMask()V

    .line 7
    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method private final prePage()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->fromWarmup()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-ne v0, v1, :cond_2

    .line 17
    .line 18
    new-instance v0, Landroid/os/Bundle;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 21
    .line 22
    .line 23
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

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
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 46
    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    :cond_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->openPage()V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    const-class v0, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 65
    .line 66
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 71
    .line 72
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 73
    .line 74
    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    if-eqz v0, :cond_3

    .line 79
    .line 80
    new-instance v1, Lcom/cloud/tmc/miniapp/ui/MiniFragment$prePage$1;

    .line 81
    .line 82
    invoke-direct {v1, p0, v0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment$prePage$1;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;)V

    .line 83
    .line 84
    .line 85
    const-string v2, "renderOnMessageReady"

    .line 86
    .line 87
    invoke-interface {v0, v2, v1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->register(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    .line 88
    .line 89
    .line 90
    :cond_3
    :goto_1
    return-void
.end method

.method private final sendAppReadyToRender()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const-string v2, "appReady"

    .line 4
    .line 5
    invoke-static {p0, v2, v0, v1, v0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->sendAppOrPageReadyToRender$default(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final sendPageReadyToRender()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const-string v2, "pageReady"

    .line 4
    .line 5
    invoke-static {p0, v2, v0, v1, v0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->sendAppOrPageReadyToRender$default(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static final setPage$lambda$17(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Lcom/cloud/tmc/integration/structure/Page;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$page"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO00o:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->setPageOnMain(Lcom/cloud/tmc/integration/structure/Page;)V

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->mPendingSetPage:Lcom/cloud/tmc/integration/structure/Page;

    .line 26
    .line 27
    :goto_1
    return-void
.end method

.method private final setPageOnMain(Lcom/cloud/tmc/integration/structure/Page;)V
    .locals 4

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 2
    .line 3
    const-class v0, Lcom/cloud/tmc/integration/performanceanalyse/screen/IScreenInspectProxy;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/cloud/tmc/integration/performanceanalyse/screen/IScreenInspectProxy;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_2

    .line 23
    :cond_0
    move-object v3, v2

    .line 24
    :goto_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-interface {v0, v1, v3}, Lcom/cloud/tmc/integration/performanceanalyse/screen/IScreenInspectProxy;->start(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    if-eqz p1, :cond_3

    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    instance-of v1, v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 38
    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    move-object v2, v0

    .line 42
    check-cast v2, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 43
    .line 44
    :cond_1
    if-eqz v2, :cond_2

    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->isFirstLaunch()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    const/4 v0, 0x0

    .line 52
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    new-instance v1, Lcom/cloud/tmc/miniapp/ui/k0;

    .line 57
    .line 58
    invoke-direct {v1, p1, p0}, Lcom/cloud/tmc/miniapp/ui/k0;-><init>(Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V

    .line 59
    .line 60
    .line 61
    invoke-interface {p1, p0, v0, v1}, Lcom/cloud/tmc/integration/structure/Page;->bindContext(Lcom/cloud/tmc/integration/structure/PageContext;Ljava/lang/Boolean;Lcom/cloud/tmc/integration/structure/Page$CreateRenderListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    .line 64
    goto :goto_3

    .line 65
    :goto_2
    const-string v0, "MiniFragment"

    .line 66
    .line 67
    const-string v1, "setPageOnMain error"

    .line 68
    .line 69
    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    :cond_3
    :goto_3
    return-void
.end method

.method private static final setPageOnMain$lambda$28(Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V
    .locals 7

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {v0, p1}, Lcom/cloud/tmc/kernel/render/IRender;->registerPageCallback(Lcom/cloud/tmc/kernel/render/IPageCallback;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-static {p1, p0, p1}, Lcom/cloud/tmc/miniapp/ui/extension/FullScreenExtensionKt;->addADJSIListener(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    if-eqz v4, :cond_2

    .line 25
    .line 26
    iget-object v0, p1, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0OO:Landroid/widget/FrameLayout;

    .line 31
    .line 32
    :goto_0
    move-object v3, v0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/4 v0, 0x0

    .line 35
    goto :goto_0

    .line 36
    :goto_1
    iget-object v5, p1, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 37
    .line 38
    move-object v1, p1

    .line 39
    move-object v2, p0

    .line 40
    move-object v6, p1

    .line 41
    invoke-static/range {v1 .. v6}, Lcom/cloud/tmc/miniapp/ui/extension/FullScreenExtensionKt;->addFullScreenJSIListener(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Lcom/cloud/tmc/integration/structure/Page;Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentActivity;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    if-eqz p0, :cond_3

    .line 45
    .line 46
    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    if-eqz p0, :cond_3

    .line 51
    .line 52
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$setPageOnMain$1$2;

    .line 53
    .line 54
    invoke-direct {v0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment$setPageOnMain$1$2;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V

    .line 55
    .line 56
    .line 57
    invoke-interface {p0, v0}, Lcom/cloud/tmc/kernel/render/IRender;->registerICustomViewVisiable(Lcom/cloud/tmc/kernel/render/ICustomViewVisiable;)V

    .line 58
    .line 59
    .line 60
    :cond_3
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->initView()V

    .line 61
    .line 62
    .line 63
    invoke-direct {p1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->init()V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method private final showCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->mCustomView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void

    .line 11
    :cond_1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->mCustomView:Landroid/view/View;

    .line 12
    .line 13
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    .line 14
    .line 15
    if-eqz p1, :cond_3

    .line 16
    .line 17
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0OO:Landroid/widget/FrameLayout;

    .line 18
    .line 19
    if-eqz p1, :cond_3

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    const-string v2, "it"

    .line 32
    .line 33
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 37
    .line 38
    invoke-static {p0, p1, v1, v2}, Lcom/cloud/tmc/miniapp/ui/extension/FullScreenExtensionKt;->tryToProtrait(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentActivity;Lcom/cloud/tmc/integration/structure/App;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->mCustomView:Landroid/view/View;

    .line 42
    .line 43
    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 44
    .line 45
    .line 46
    :cond_3
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->contextView:Landroid/view/View;

    .line 47
    .line 48
    const-string v0, "contextView"

    .line 49
    .line 50
    if-nez p1, :cond_4

    .line 51
    .line 52
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_4
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->contextView:Landroid/view/View;

    .line 56
    .line 57
    if-nez p1, :cond_5

    .line 58
    .line 59
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const/4 p1, 0x0

    .line 63
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    iput p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->mScrollY:I

    .line 68
    .line 69
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 70
    .line 71
    return-void
.end method

.method private final showWebViewMask(I)V
    .locals 4

    .line 1
    const-string v0, "MiniFragment"

    .line 2
    .line 3
    :try_start_0
    sget-object v1, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->enableWebViewMask()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v3, "showWebViewMask enableWebViewMask: "

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    iget-object v1, v1, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0oo:Landroid/view/View;

    .line 37
    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    new-instance v2, Lcom/cloud/tmc/miniapp/ui/p0;

    .line 45
    .line 46
    invoke-direct {v2, p1, v1, p0}, Lcom/cloud/tmc/miniapp/ui/p0;-><init>(ILandroid/view/View;Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V

    .line 47
    .line 48
    .line 49
    invoke-static {v2}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :catchall_0
    move-exception p1

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    :goto_0
    return-void

    .line 56
    :goto_1
    const-string v1, ""

    .line 57
    .line 58
    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    :goto_2
    return-void
.end method

.method public static synthetic showWebViewMask$default(Lcom/cloud/tmc/miniapp/ui/MiniFragment;IILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->showWebViewMask(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final showWebViewMask$lambda$41(ILandroid/view/View;Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V
    .locals 3

    .line 1
    const-string v0, "$maskView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "this$0"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "MiniFragment"

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 16
    .line 17
    .line 18
    const-string p0, "showWebViewMask maskView background \u8bbe\u7f6e\u6210\u529f"

    .line 19
    .line 20
    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->getVisible(Landroid/view/View;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-nez p0, :cond_1

    .line 31
    .line 32
    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisible(Landroid/view/View;)V

    .line 33
    .line 34
    .line 35
    const-string p0, "showWebViewMask maskView \u663e\u793a\u6210\u529f"

    .line 36
    .line 37
    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    new-instance p0, Lcom/cloud/tmc/miniapp/ui/r0;

    .line 41
    .line 42
    invoke-direct {p0, p2}, Lcom/cloud/tmc/miniapp/ui/r0;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V

    .line 43
    .line 44
    .line 45
    const-wide/16 v1, 0x1388

    .line 46
    .line 47
    invoke-virtual {p2, p1, v1, v2, p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->postDelayed(Ljava/lang/Object;JLjava/lang/Runnable;)Z

    .line 48
    .line 49
    .line 50
    const-string p0, "showWebViewMask \u6267\u884c\u5b8c\u6bd5"

    .line 51
    .line 52
    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :goto_1
    const-string p1, ""

    .line 57
    .line 58
    invoke-static {v0, p1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    :goto_2
    return-void
.end method

.method private static final showWebViewMask$lambda$41$lambda$40(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "MiniFragment"

    .line 7
    .line 8
    const-string v1, "showWebViewMask \u6267\u884c\u8d85\u65f6\u5173\u95ed\u906e\u7f69"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->hideWebViewMask()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private final updateTabBarMessage()V
    .locals 10

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 2
    .line 3
    if-eqz v0, :cond_a

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_a

    .line 10
    .line 11
    const-class v1, Lcom/cloud/tmc/integration/model/TabBarMessageStore;

    .line 12
    .line 13
    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/cloud/tmc/integration/model/TabBarMessageStore;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto/16 :goto_3

    .line 22
    .line 23
    :cond_0
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/TabBarMessageStore;->getRedDotMessageHashMap()Ljava/util/HashMap;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_6

    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Ljava/util/Map$Entry;

    .line 46
    .line 47
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;

    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->getShowRedDot()Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_2

    .line 58
    .line 59
    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 60
    .line 61
    if-eqz v3, :cond_3

    .line 62
    .line 63
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->getIndex()I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    invoke-interface {v3, v4}, Lcom/cloud/tmc/kernel/node/TabBarNode;->showTabBarRedDot(I)Z

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    goto/16 :goto_4

    .line 73
    .line 74
    :cond_2
    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 75
    .line 76
    if-eqz v3, :cond_3

    .line 77
    .line 78
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->getIndex()I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    invoke-interface {v3, v4}, Lcom/cloud/tmc/kernel/node/TabBarNode;->hideTabBarRedDot(I)Z

    .line 83
    .line 84
    .line 85
    :cond_3
    :goto_1
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->getShowUnreadIcon()Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-eqz v3, :cond_5

    .line 90
    .line 91
    iget-object v4, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 92
    .line 93
    if-eqz v4, :cond_1

    .line 94
    .line 95
    const-string v3, "page"

    .line 96
    .line 97
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->getIndex()I

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->getUnreadIcon()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    if-nez v2, :cond_4

    .line 109
    .line 110
    const-string v2, ""

    .line 111
    .line 112
    :cond_4
    move-object v6, v2

    .line 113
    const/4 v8, 0x4

    .line 114
    const/4 v9, 0x0

    .line 115
    const/4 v7, 0x0

    .line 116
    invoke-static/range {v4 .. v9}, Lcom/cloud/tmc/kernel/node/TabBarNode$DefaultImpls;->showTabBarUnreadIcon$default(Lcom/cloud/tmc/kernel/node/TabBarNode;ILjava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_5
    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 121
    .line 122
    if-eqz v3, :cond_1

    .line 123
    .line 124
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->getIndex()I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    invoke-interface {v3, v2}, Lcom/cloud/tmc/kernel/node/TabBarNode;->hideTabBarUnreadIcon(I)Z

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_6
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/TabBarMessageStore;->getBadgeMessageHashMap()Ljava/util/HashMap;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    :cond_7
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-eqz v2, :cond_9

    .line 149
    .line 150
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    check-cast v2, Ljava/util/Map$Entry;

    .line 155
    .line 156
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    check-cast v2, Lcom/cloud/tmc/integration/model/TabBarBadgeMessage;

    .line 161
    .line 162
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/TabBarBadgeMessage;->getShowBadge()Z

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    if-eqz v3, :cond_8

    .line 167
    .line 168
    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 169
    .line 170
    if-eqz v3, :cond_7

    .line 171
    .line 172
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/TabBarBadgeMessage;->getIndex()I

    .line 173
    .line 174
    .line 175
    move-result v4

    .line 176
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/TabBarBadgeMessage;->getText()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-interface {v3, v4, v2}, Lcom/cloud/tmc/kernel/node/TabBarNode;->setTabBarBadge(ILjava/lang/String;)Z

    .line 181
    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_8
    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 185
    .line 186
    if-eqz v3, :cond_7

    .line 187
    .line 188
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/TabBarBadgeMessage;->getIndex()I

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    invoke-interface {v3, v2}, Lcom/cloud/tmc/kernel/node/TabBarNode;->removeTabBarBadge(I)Z

    .line 193
    .line 194
    .line 195
    goto :goto_2

    .line 196
    :cond_9
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/TabBarMessageStore;->getTabBarStyle()Lcom/cloud/tmc/integration/model/TabBarStyle;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    if-eqz v0, :cond_b

    .line 201
    .line 202
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 203
    .line 204
    if-eqz v1, :cond_b

    .line 205
    .line 206
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/TabBarStyle;->getColor()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/TabBarStyle;->getSelectedColor()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/TabBarStyle;->getBackgroundColor()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v4

    .line 218
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/TabBarStyle;->getBorderStyle()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-interface {v1, v2, v3, v4, v0}, Lcom/cloud/tmc/kernel/node/TabBarNode;->setTabBarStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    .line 224
    .line 225
    goto :goto_5

    .line 226
    :cond_a
    :goto_3
    return-void

    .line 227
    :goto_4
    const-string v1, "MiniFragment"

    .line 228
    .line 229
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 230
    .line 231
    .line 232
    :cond_b
    :goto_5
    return-void
.end method

.method private final updateTabBarStyle()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getAppLoadResult()Lcom/cloud/tmc/integration/structure/AppLoadResult;

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
    iget-object v2, v0, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->tabBarManual()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v2, v1

    .line 18
    :goto_0
    if-eqz v2, :cond_9

    .line 19
    .line 20
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    const-class v4, Lcom/cloud/tmc/integration/model/TabBarManualConfigStore;

    .line 32
    .line 33
    invoke-interface {v2, v4}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lcom/cloud/tmc/integration/model/TabBarManualConfigStore;

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move-object v2, v3

    .line 41
    :goto_1
    if-eqz v2, :cond_9

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/TabBarManualConfigStore;->getTabBarConfig()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    if-eqz v2, :cond_9

    .line 48
    .line 49
    const/4 v4, 0x4

    .line 50
    invoke-static {v2, v0, v1, v4, v3}, Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;->getTabBar$default(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;Lcom/cloud/tmc/integration/structure/AppLoadResult;ZILjava/lang/Object;)Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-object v2, v0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;->list:Ljava/util/List;

    .line 55
    .line 56
    const/4 v4, -0x1

    .line 57
    if-eqz v2, :cond_4

    .line 58
    .line 59
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    if-eqz v5, :cond_4

    .line 68
    .line 69
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    check-cast v5, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;

    .line 74
    .line 75
    iget-object v5, v5, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;->pagePath:Ljava/lang/String;

    .line 76
    .line 77
    iget-object v6, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 78
    .line 79
    if-eqz v6, :cond_2

    .line 80
    .line 81
    invoke-interface {v6}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    goto :goto_3

    .line 86
    :cond_2
    move-object v6, v3

    .line 87
    :goto_3
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    if-eqz v5, :cond_3

    .line 92
    .line 93
    goto :goto_4

    .line 94
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_4
    move v1, v4

    .line 98
    :goto_4
    if-eq v1, v4, :cond_9

    .line 99
    .line 100
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 101
    .line 102
    if-nez v1, :cond_5

    .line 103
    .line 104
    goto :goto_5

    .line 105
    :cond_5
    const/4 v2, 0x1

    .line 106
    invoke-interface {v1, v2}, Lcom/cloud/tmc/integration/structure/Page;->setTabPage(Z)V

    .line 107
    .line 108
    .line 109
    :goto_5
    sget-object v1, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    .line 110
    .line 111
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 112
    .line 113
    if-eqz v2, :cond_6

    .line 114
    .line 115
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    if-eqz v2, :cond_6

    .line 120
    .line 121
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/AppModel;->getMiniappSubtype()Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    :cond_6
    invoke-virtual {v1, v3}, Lcom/cloud/tmc/integration/utils/AppUtils;->checkUesCommonresApp(Ljava/lang/Integer;)Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    const-string v2, ""

    .line 130
    .line 131
    if-eqz v1, :cond_8

    .line 132
    .line 133
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 134
    .line 135
    if-eqz v1, :cond_8

    .line 136
    .line 137
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    if-eqz v1, :cond_8

    .line 142
    .line 143
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/AppModel;->getTemplateMiniappId()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    if-nez v1, :cond_7

    .line 148
    .line 149
    goto :goto_6

    .line 150
    :cond_7
    move-object v2, v1

    .line 151
    :cond_8
    :goto_6
    invoke-virtual {p0, v0, v2}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->loadTabBar(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;Ljava/lang/String;)Z

    .line 152
    .line 153
    .line 154
    :cond_9
    return-void
.end method

.method private final updateTitleBarStyle()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->checkUpdateScreenButton()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getWindow()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->navigationStyleIsHide()Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-ne v3, v1, :cond_3

    .line 17
    .line 18
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v1, v2}, Lcom/cloud/tmc/kernel/node/TitleBarNode;->setTitleBarVisible(Z)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->navigationBarTextStyleIsWhite()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-interface {v1, v2}, Lcom/cloud/tmc/kernel/node/TitleBarNode;->setNavigationBarTitleColor(Z)V

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->navigationBarIconStyleIsWhite()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-interface {v1, v0}, Lcom/cloud/tmc/kernel/node/TitleBarNode;->setNavigationBarIconStyle(Z)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-void

    .line 48
    :cond_3
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->checkUpdateHomeButton()V

    .line 49
    .line 50
    .line 51
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    .line 52
    .line 53
    if-eqz v3, :cond_4

    .line 54
    .line 55
    iget-object v3, v3, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0o0:Landroid/widget/ProgressBar;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_4
    const/4 v3, 0x0

    .line 59
    :goto_0
    if-nez v3, :cond_5

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_5
    if-eqz v0, :cond_6

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getEnableNavigationBarLoading()Ljava/lang/Boolean;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 69
    .line 70
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    goto :goto_1

    .line 75
    :cond_6
    move v4, v2

    .line 76
    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    :goto_2
    if-eqz v0, :cond_7

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->navigationStyleIsCustom()Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-ne v3, v1, :cond_7

    .line 90
    .line 91
    invoke-direct {p0, v0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->customNavigationStyle(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;)V

    .line 92
    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_7
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 96
    .line 97
    if-eqz v0, :cond_8

    .line 98
    .line 99
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->navigationBarDefaultStyleIsWhite:Z

    .line 100
    .line 101
    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/node/TitleBarNode;->setNavigationBarTitleColor(Z)V

    .line 102
    .line 103
    .line 104
    :cond_8
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 105
    .line 106
    if-eqz v0, :cond_9

    .line 107
    .line 108
    sget-object v1, Lcom/cloud/tmc/integration/constants/IntegrationConstants;->INSTANCE:Lcom/cloud/tmc/integration/constants/IntegrationConstants;

    .line 109
    .line 110
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-virtual {v1, v3}, Lcom/cloud/tmc/integration/constants/IntegrationConstants;->getDefaultNavigationBarBackgroundColor(Landroid/content/Context;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/node/TitleBarNode;->setNavigationBarBackgroundColor(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    :cond_9
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 122
    .line 123
    if-eqz v0, :cond_a

    .line 124
    .line 125
    invoke-interface {v0, v2}, Lcom/cloud/tmc/kernel/node/TitleBarNode;->setNavigationBarTransparent(Z)V

    .line 126
    .line 127
    .line 128
    :cond_a
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 129
    .line 130
    if-eqz v0, :cond_b

    .line 131
    .line 132
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->navigationBarDefaultStyleIsWhite:Z

    .line 133
    .line 134
    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/node/TitleBarNode;->setNavigationBarIconStyle(Z)V

    .line 135
    .line 136
    .line 137
    :cond_b
    :goto_3
    return-void
.end method


# virtual methods
.method public changeNavigationBarProgress(IIJ)V
    .locals 8

    .line 1
    if-le p1, p2, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->setNavigationBarProgressUpdating(Z)V

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->setNavigationBarProgressUpdating(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0o0:Landroid/widget/ProgressBar;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    new-instance v7, Lcom/cloud/tmc/miniapp/ui/t0;

    .line 21
    .line 22
    move-object v1, v7

    .line 23
    move-object v2, p0

    .line 24
    move v3, p1

    .line 25
    move v4, p2

    .line 26
    move-wide v5, p3

    .line 27
    invoke-direct/range {v1 .. v6}, Lcom/cloud/tmc/miniapp/ui/t0;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniFragment;IIJ)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v7, p3, p4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 31
    .line 32
    .line 33
    :cond_1
    const/4 p2, 0x0

    .line 34
    invoke-virtual {p0, p2, p1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final checkUpdateScreenButton()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lcom/cloud/tmc/integration/utils/AbilitiesUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AbilitiesUtils;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v2, "it.appId"

    .line 12
    .line 13
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v2, "title_bar_add_home"

    .line 17
    .line 18
    invoke-virtual {v1, v0, v2}, Lcom/cloud/tmc/integration/utils/AbilitiesUtils;->getAbilityEnableStatus(Ljava/lang/String;Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x1

    .line 24
    :goto_0
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    const-string v2, "isApiAddScreenEnabled"

    .line 29
    .line 30
    invoke-interface {v1, v2}, Lcom/cloud/tmc/kernel/node/ValueStore;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/4 v1, 0x0

    .line 36
    :goto_1
    const-string v2, "showAddScreenButton"

    .line 37
    .line 38
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_3

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 47
    .line 48
    if-eqz v0, :cond_6

    .line 49
    .line 50
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/node/TitleBarNode;->showAddScreenButton()V

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 55
    .line 56
    if-eqz v0, :cond_6

    .line 57
    .line 58
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/node/TitleBarNode;->hideAddScreenButton()V

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_3
    const-string v2, "hideAddScreenButton"

    .line 63
    .line 64
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_4

    .line 69
    .line 70
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 71
    .line 72
    if-eqz v0, :cond_6

    .line 73
    .line 74
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/node/TitleBarNode;->hideAddScreenButton()V

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_4
    if-eqz v0, :cond_5

    .line 79
    .line 80
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 81
    .line 82
    if-eqz v0, :cond_6

    .line 83
    .line 84
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/node/TitleBarNode;->showAddScreenButton()V

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_5
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 89
    .line 90
    if-eqz v0, :cond_6

    .line 91
    .line 92
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/node/TitleBarNode;->hideAddScreenButton()V

    .line 93
    .line 94
    .line 95
    :cond_6
    :goto_2
    return-void
.end method

.method public debugRefresh()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/cloud/tmc/kernel/debug/DebugConfig;->DEBUG_REFRESH:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    instance-of v1, v0, Landroid/app/Activity;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast v0, Landroid/app/Activity;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    if-eqz v0, :cond_1

    .line 17
    .line 18
    new-instance v1, Lcom/cloud/tmc/miniapp/ui/s0;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/ui/s0;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 9

    .line 1
    invoke-super {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->destroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v1, "consumeTime"

    .line 9
    .line 10
    invoke-interface {v0, v1, p0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->unregister(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 14
    .line 15
    const-string v1, "create_miniapp_worker_fail"

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->eventCreateMiniAppFail:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    .line 20
    .line 21
    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->unregister(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->eventCenter_page:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->eventCreateMiniAppFail:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    .line 29
    .line 30
    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->unregister(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    .line 31
    .line 32
    .line 33
    :cond_2
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 34
    .line 35
    invoke-static {p0, v0}, Lcom/cloud/tmc/miniapp/ui/extension/FullScreenExtensionKt;->removeFullScreenJSIListener(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Lcom/cloud/tmc/integration/structure/Page;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 39
    .line 40
    invoke-static {p0, v0}, Lcom/cloud/tmc/miniapp/ui/extension/FullScreenExtensionKt;->removeADJSIListener(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Lcom/cloud/tmc/integration/structure/Page;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->eventCenter_page:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 44
    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->eventCreateOnPageReady:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    .line 48
    .line 49
    const-string v2, "onPageReady"

    .line 50
    .line 51
    invoke-interface {v0, v2, v1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->unregister(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    .line 52
    .line 53
    .line 54
    :cond_3
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 55
    .line 56
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 61
    .line 62
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    if-eqz v1, :cond_4

    .line 66
    .line 67
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    if-eqz v1, :cond_4

    .line 72
    .line 73
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    goto :goto_0

    .line 78
    :cond_4
    move-object v1, v2

    .line 79
    :goto_0
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_CLEAR:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 80
    .line 81
    new-instance v4, Landroid/os/Bundle;

    .line 82
    .line 83
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 84
    .line 85
    .line 86
    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    .line 87
    .line 88
    const-string v6, "page"

    .line 89
    .line 90
    invoke-virtual {v4, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    .line 94
    .line 95
    iget-object v6, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 96
    .line 97
    if-eqz v6, :cond_5

    .line 98
    .line 99
    invoke-interface {v6}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    if-eqz v6, :cond_5

    .line 104
    .line 105
    const-string v7, "uniqueChainID"

    .line 106
    .line 107
    const-string v8, "-1"

    .line 108
    .line 109
    invoke-virtual {v6, v7, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    goto :goto_1

    .line 114
    :cond_5
    move-object v6, v2

    .line 115
    :goto_1
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    invoke-virtual {v4, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 123
    .line 124
    iget-object v6, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 125
    .line 126
    if-eqz v6, :cond_6

    .line 127
    .line 128
    invoke-interface {v6}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    goto :goto_2

    .line 133
    :cond_6
    move-object v6, v2

    .line 134
    :goto_2
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    invoke-virtual {v4, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    iget-object v5, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 142
    .line 143
    if-eqz v5, :cond_7

    .line 144
    .line 145
    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/Page;->getPageRandomIdByGAId()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    goto :goto_3

    .line 150
    :cond_7
    move-object v5, v2

    .line 151
    :goto_3
    const-string v6, "pageRandomId"

    .line 152
    .line 153
    invoke-virtual {v4, v6, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 157
    .line 158
    const-string v5, "clear"

    .line 159
    .line 160
    invoke-interface {v0, v1, v3, v5, v4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 161
    .line 162
    .line 163
    const-class v0, Lcom/cloud/tmc/integration/performanceanalyse/screen/IScreenInspectProxy;

    .line 164
    .line 165
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    check-cast v0, Lcom/cloud/tmc/integration/performanceanalyse/screen/IScreenInspectProxy;

    .line 170
    .line 171
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 172
    .line 173
    if-eqz v1, :cond_8

    .line 174
    .line 175
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    goto :goto_4

    .line 180
    :cond_8
    move-object v1, v2

    .line 181
    :goto_4
    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 182
    .line 183
    if-eqz v3, :cond_9

    .line 184
    .line 185
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    goto :goto_5

    .line 190
    :cond_9
    move-object v3, v2

    .line 191
    :goto_5
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    invoke-interface {v0, v1, v3}, Lcom/cloud/tmc/integration/performanceanalyse/screen/IScreenInspectProxy;->destroy(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 199
    .line 200
    if-eqz v0, :cond_b

    .line 201
    .line 202
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    if-eqz v0, :cond_b

    .line 207
    .line 208
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->fromWarmup()Z

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    const/4 v1, 0x1

    .line 213
    if-ne v0, v1, :cond_b

    .line 214
    .line 215
    const-class v0, Lcom/cloud/tmc/integration/performance/innerrender/IInnerRenderPool;

    .line 216
    .line 217
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    check-cast v0, Lcom/cloud/tmc/integration/performance/innerrender/IInnerRenderPool;

    .line 222
    .line 223
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 224
    .line 225
    if-eqz v1, :cond_a

    .line 226
    .line 227
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    if-eqz v1, :cond_a

    .line 232
    .line 233
    invoke-interface {v1}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderId()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    :cond_a
    invoke-interface {v0, v2}, Lcom/cloud/tmc/integration/performance/innerrender/IInnerRenderPool;->removeRender(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    goto :goto_6

    .line 241
    :cond_b
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 242
    .line 243
    if-eqz v0, :cond_c

    .line 244
    .line 245
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    if-eqz v0, :cond_c

    .line 250
    .line 251
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->destroy()V

    .line 252
    .line 253
    .line 254
    :cond_c
    :goto_6
    return-void
.end method

.method public exitFullScreen()Ljava/lang/Boolean;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->hideCustomView(Z)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public final getAdTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->adTag:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAdm()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->adm:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getCallbackId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->callbackId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContentView()Landroid/view/ViewGroup;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO00o:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return-object v0
.end method

.method public getCurrentPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public getErrorView()Lcom/cloud/tmc/integration/structure/ui/ErrorView;
    .locals 3

    .line 1
    new-instance v0, Lkotlin/NotImplementedError;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "An operation is not implemented: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, "Not yet implemented"

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
    invoke-direct {v0, v1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw v0
.end method

.method public final getEventCenter()Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getEventCenter_page()Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->eventCenter_page:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getEventCreateMiniAppFail()Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->eventCreateMiniAppFail:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getEventCreateOnPageReady()Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->eventCreateOnPageReady:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getGlobalObjectScript(Ljava/lang/String;Lcom/google/gson/JsonObject;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "jsonObject"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "(function() {window."

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p1, " = "

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p1, "; })();"

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    return-object p1
.end method

.method public getLoadingView()Lcom/cloud/tmc/integration/structure/ui/LoadingView;
    .locals 3

    .line 1
    new-instance v0, Lkotlin/NotImplementedError;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "An operation is not implemented: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, "Not yet implemented"

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
    invoke-direct {v0, v1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw v0
.end method

.method public getPageContainer()Lcom/cloud/tmc/integration/structure/ui/PageContainer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/PageContainerView;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return-object v0
.end method

.method public getProgressBar()Landroid/widget/ProgressBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0o0:Landroid/widget/ProgressBar;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return-object v0
.end method

.method public getTabBar()Lcom/cloud/tmc/integration/structure/ui/TabBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0o:Lcom/cloud/tmc/miniapp/widget/TabBarView;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return-object v0
.end method

.method public getTitleBar()Lcom/cloud/tmc/integration/structure/ui/TitleBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0oO:Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return-object v0
.end method

.method public hideNavigationBarLoading()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0o0:Landroid/widget/ProgressBar;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    if-nez v0, :cond_1

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_1
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :goto_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0o0:Landroid/widget/ProgressBar;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toGone(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    :cond_2
    return-void
.end method

.method public initView()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->initView()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    instance-of v1, v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    check-cast v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v0, v2

    .line 17
    :goto_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getEntryInfo()Lcom/cloud/tmc/integration/model/EntryInfo;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    .line 22
    .line 23
    const-string v4, ""

    .line 24
    .line 25
    if-eqz v3, :cond_8

    .line 26
    .line 27
    iget-object v3, v3, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0oO:Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;

    .line 28
    .line 29
    iget-object v5, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 30
    .line 31
    invoke-virtual {v3, v5}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->attachPage(Lcom/cloud/tmc/integration/structure/Page;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getWindow()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    if-eqz v5, :cond_1

    .line 39
    .line 40
    invoke-virtual {v5}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getNavigationBarTitleText()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    if-nez v5, :cond_3

    .line 45
    .line 46
    :cond_1
    if-eqz v1, :cond_2

    .line 47
    .line 48
    iget-object v5, v1, Lcom/cloud/tmc/integration/model/EntryInfo;->title:Ljava/lang/String;

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    move-object v5, v2

    .line 52
    :cond_3
    :goto_1
    invoke-virtual {v3, v5}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->setTitle(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    new-instance v1, Lcom/cloud/tmc/miniapp/ui/u0;

    .line 56
    .line 57
    invoke-direct {v1, v0}, Lcom/cloud/tmc/miniapp/ui/u0;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v1}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->setOnAddScreenClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    .line 62
    .line 63
    new-instance v1, Lcom/cloud/tmc/miniapp/ui/v0;

    .line 64
    .line 65
    invoke-direct {v1, p0, v0}, Lcom/cloud/tmc/miniapp/ui/v0;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v1}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->setOnHomeClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    .line 70
    .line 71
    new-instance v1, Lcom/cloud/tmc/miniapp/ui/w0;

    .line 72
    .line 73
    invoke-direct {v1, v0}, Lcom/cloud/tmc/miniapp/ui/w0;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v1}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->setOnBackClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getAppLoadResult()Lcom/cloud/tmc/integration/structure/AppLoadResult;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    if-eqz v0, :cond_4

    .line 84
    .line 85
    iget-object v1, v0, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    .line 86
    .line 87
    if-eqz v1, :cond_4

    .line 88
    .line 89
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->tabBarManual()Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    goto :goto_2

    .line 94
    :cond_4
    const/4 v1, 0x0

    .line 95
    :goto_2
    if-nez v1, :cond_8

    .line 96
    .line 97
    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;->getTabBar(Lcom/cloud/tmc/integration/structure/AppLoadResult;)Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    sget-object v1, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    .line 102
    .line 103
    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 104
    .line 105
    if-eqz v3, :cond_5

    .line 106
    .line 107
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    if-eqz v3, :cond_5

    .line 112
    .line 113
    invoke-virtual {v3}, Lcom/cloud/tmc/integration/model/AppModel;->getMiniappSubtype()Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    :cond_5
    invoke-virtual {v1, v2}, Lcom/cloud/tmc/integration/utils/AppUtils;->checkUesCommonresApp(Ljava/lang/Integer;)Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-eqz v1, :cond_6

    .line 122
    .line 123
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 124
    .line 125
    if-eqz v1, :cond_6

    .line 126
    .line 127
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    if-eqz v1, :cond_6

    .line 132
    .line 133
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/AppModel;->getTemplateMiniappId()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    if-nez v1, :cond_7

    .line 138
    .line 139
    :cond_6
    move-object v1, v4

    .line 140
    :cond_7
    invoke-virtual {p0, v0, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->loadTabBar(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;Ljava/lang/String;)Z

    .line 141
    .line 142
    .line 143
    :cond_8
    :try_start_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->checkUpdateTitleBarStyle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    .line 145
    .line 146
    goto :goto_3

    .line 147
    :catchall_0
    move-exception v0

    .line 148
    const-string v1, "MiniFragment"

    .line 149
    .line 150
    invoke-static {v1, v4, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    .line 152
    .line 153
    :goto_3
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    const-string p2, "inflater"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-static {p2}, Lcom/cloud/tmc/miniutils/util/SystemUtils;->darkThemeIsEnabled(Landroid/content/Context;)Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    iput-boolean p2, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->navigationBarDefaultStyleIsWhite:Z

    .line 15
    .line 16
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO00o(Landroid/view/LayoutInflater;)Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    .line 21
    .line 22
    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 23
    .line 24
    const-string p2, "binding!!.root"

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    const/4 p3, 0x1

    .line 33
    if-ne p1, p3, :cond_0

    .line 34
    .line 35
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    .line 36
    .line 37
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO00o:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 41
    .line 42
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    .line 47
    .line 48
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO00o:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 52
    .line 53
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->attachToSwipeBack(Landroid/view/View;)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    :goto_0
    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->removeSelf(Landroid/view/View;)V

    .line 61
    .line 62
    .line 63
    return-object p1
.end method

.method public onDestroy()V
    .locals 6

    .line 1
    sget-object v0, Lcom/cloud/tmc/integration/minicover/NativeComponentManager;->INSTANCE:Lcom/cloud/tmc/integration/minicover/NativeComponentManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v1, v2

    .line 14
    :goto_0
    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 15
    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    invoke-interface {v3}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderId()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move-object v3, v2

    .line 30
    :goto_1
    invoke-virtual {v0, v1, v3}, Lcom/cloud/tmc/integration/minicover/NativeComponentManager;->onDestoryForRenderId(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    move-object v0, v2

    .line 49
    :goto_2
    instance-of v1, v0, Landroid/webkit/WebView;

    .line 50
    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    check-cast v0, Landroid/webkit/WebView;

    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_3
    move-object v0, v2

    .line 57
    :goto_3
    if-eqz v0, :cond_4

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 60
    .line 61
    .line 62
    :cond_4
    invoke-super {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->onDestroy()V

    .line 63
    .line 64
    .line 65
    new-instance v0, Landroid/os/Bundle;

    .line 66
    .line 67
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 68
    .line 69
    .line 70
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->OPEN_PAGE_FAILED_REASON:Ljava/lang/String;

    .line 71
    .line 72
    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->exitType:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

    .line 73
    .line 74
    invoke-virtual {v3}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;->getDes()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 82
    .line 83
    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 84
    .line 85
    if-eqz v3, :cond_5

    .line 86
    .line 87
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    goto :goto_4

    .line 92
    :cond_5
    move-object v3, v2

    .line 93
    :goto_4
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    .line 101
    .line 102
    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 103
    .line 104
    if-eqz v3, :cond_6

    .line 105
    .line 106
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    goto :goto_5

    .line 111
    :cond_6
    move-object v3, v2

    .line 112
    :goto_5
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 120
    .line 121
    if-eqz v1, :cond_7

    .line 122
    .line 123
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getPageRandomIdByGAId()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    goto :goto_6

    .line 128
    :cond_7
    move-object v1, v2

    .line 129
    :goto_6
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    const-string v3, "pageRandomId"

    .line 134
    .line 135
    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 139
    .line 140
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 145
    .line 146
    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 147
    .line 148
    if-eqz v3, :cond_8

    .line 149
    .line 150
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    goto :goto_7

    .line 155
    :cond_8
    move-object v3, v2

    .line 156
    :goto_7
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_CLEAR:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 157
    .line 158
    const-string v5, "clear"

    .line 159
    .line 160
    invoke-interface {v1, v3, v4, v5, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 161
    .line 162
    .line 163
    new-instance v1, Lcom/cloud/tmc/integration/chain/insert/PageInsertState;

    .line 164
    .line 165
    invoke-direct {v1, v0}, Lcom/cloud/tmc/integration/chain/insert/PageInsertState;-><init>(Landroid/os/Bundle;)V

    .line 166
    .line 167
    .line 168
    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 169
    .line 170
    if-eqz v3, :cond_9

    .line 171
    .line 172
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->getPageChainContext()Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    :cond_9
    invoke-virtual {v1, v2}, Lcom/cloud/tmc/integration/chain/insert/PageInsertState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    .line 177
    .line 178
    .line 179
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 180
    .line 181
    if-eqz v1, :cond_a

    .line 182
    .line 183
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getPageChainContext()Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    if-eqz v1, :cond_a

    .line 188
    .line 189
    invoke-virtual {v1, v0}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->destroy(Landroid/os/Bundle;)V

    .line 190
    .line 191
    .line 192
    :cond_a
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/cloud/tmc/kernel/debug/a;->c(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/PageContainerView;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 16
    .line 17
    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    const-class v1, Lcom/cloud/tmc/kernel/engine/EngineRouter;

    .line 26
    .line 27
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/cloud/tmc/kernel/engine/EngineRouter;

    .line 32
    .line 33
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {v1, v0}, Lcom/cloud/tmc/kernel/engine/EngineRouter;->unRegisterRender(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method public onEvent(Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)Z
    .locals 6

    .line 1
    const-string v0, "eventData"

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    :try_start_0
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_3

    .line 10
    .line 11
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v2, v3

    .line 22
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x1

    .line 27
    if-ne v1, v2, :cond_3

    .line 28
    .line 29
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;->getData()Ljava/util/Map;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_3

    .line 34
    .line 35
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-ne v1, v2, :cond_3

    .line 40
    .line 41
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string v0, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Long>"

    .line 46
    .line 47
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    check-cast p1, Ljava/util/List;

    .line 51
    .line 52
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ICommunicationTimeProxy;

    .line 53
    .line 54
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ICommunicationTimeProxy;

    .line 59
    .line 60
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_3

    .line 69
    .line 70
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Ljava/lang/Number;

    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 77
    .line 78
    .line 79
    move-result-wide v4

    .line 80
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 81
    .line 82
    if-eqz v1, :cond_1

    .line 83
    .line 84
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    goto :goto_2

    .line 89
    :cond_1
    move-object v1, v3

    .line 90
    :goto_2
    invoke-interface {v0, v1, v4, v5}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ICommunicationTimeProxy;->plusTime(Ljava/lang/String;J)V

    .line 91
    .line 92
    .line 93
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 94
    .line 95
    if-eqz v1, :cond_2

    .line 96
    .line 97
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    goto :goto_3

    .line 102
    :cond_2
    move-object v1, v3

    .line 103
    :goto_3
    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ICommunicationTimeProxy;->plusNum(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :catch_0
    const-string p1, "miniapp"

    .line 108
    .line 109
    const-string v0, "parse consumeTime from EventCenter fail"

    .line 110
    .line 111
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/utils/TraceLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :cond_3
    const/4 p1, 0x0

    .line 115
    return p1
.end method

.method public onLoadMoreEvent()V
    .locals 7

    .line 1
    invoke-super {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->onLoadMoreEvent()V

    .line 2
    .line 3
    .line 4
    const-string v0, "[MiniFragment]\uff1aonLoadMoreEvent"

    .line 5
    .line 6
    invoke-static {v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/4 v5, 0x4

    .line 10
    const/4 v6, 0x0

    .line 11
    const-string v2, "onReachBottom"

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    const/4 v4, 0x0

    .line 15
    move-object v1, p0

    .line 16
    invoke-static/range {v1 .. v6}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->sendEventOrLifecycleToWorker$default(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Ljava/lang/String;ZLjava/util/Map;ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderId()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    sget-object v1, Lcom/cloud/tmc/integration/minicover/NativeComponentManager;->INSTANCE:Lcom/cloud/tmc/integration/minicover/NativeComponentManager;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lcom/cloud/tmc/integration/minicover/NativeComponentManager;->onPauseForRenderId(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move-object v0, v1

    .line 42
    :goto_0
    instance-of v2, v0, Landroid/webkit/WebView;

    .line 43
    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    move-object v1, v0

    .line 47
    check-cast v1, Landroid/webkit/WebView;

    .line 48
    .line 49
    :cond_2
    if-eqz v1, :cond_3

    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/webkit/WebView;->onPause()V

    .line 52
    .line 53
    .line 54
    :cond_3
    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0o0:Landroid/widget/ProgressBar;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move p1, v0

    .line 22
    :goto_0
    const/4 v1, 0x1

    .line 23
    if-eqz p1, :cond_3

    .line 24
    .line 25
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0o0:Landroid/widget/ProgressBar;

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->getVisible(Landroid/view/View;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-ne p1, v1, :cond_1

    .line 38
    .line 39
    move v0, v1

    .line 40
    :cond_1
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    .line 43
    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0o0:Landroid/widget/ProgressBar;

    .line 47
    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toGone(Landroid/view/View;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    return-void

    .line 54
    :cond_3
    if-nez p2, :cond_4

    .line 55
    .line 56
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    .line 57
    .line 58
    if-eqz p1, :cond_8

    .line 59
    .line 60
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0o0:Landroid/widget/ProgressBar;

    .line 61
    .line 62
    if-eqz p1, :cond_8

    .line 63
    .line 64
    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisible(Landroid/view/View;)V

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_4
    const/16 p1, 0x64

    .line 69
    .line 70
    if-ne p2, p1, :cond_5

    .line 71
    .line 72
    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->perfSendFlag:Z

    .line 73
    .line 74
    if-nez p1, :cond_5

    .line 75
    .line 76
    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->perfSendFlag:Z

    .line 77
    .line 78
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    .line 79
    .line 80
    if-eqz p1, :cond_5

    .line 81
    .line 82
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0o0:Landroid/widget/ProgressBar;

    .line 83
    .line 84
    if-eqz p1, :cond_5

    .line 85
    .line 86
    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toGone(Landroid/view/View;)V

    .line 87
    .line 88
    .line 89
    :cond_5
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    .line 90
    .line 91
    if-eqz p1, :cond_6

    .line 92
    .line 93
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0o0:Landroid/widget/ProgressBar;

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_6
    const/4 p1, 0x0

    .line 97
    :goto_1
    if-nez p1, :cond_7

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_7
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 101
    .line 102
    .line 103
    :cond_8
    :goto_2
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 0

    .line 1
    return-void
.end method

.method public synthetic onReceivedIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/kernel/render/b;->b(Lcom/cloud/tmc/kernel/render/IPageEventCallback;Landroid/graphics/Bitmap;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onReceivedTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/kernel/render/b;->c(Lcom/cloud/tmc/kernel/render/IPageEventCallback;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onRefreshEvent()V
    .locals 7

    .line 1
    invoke-super {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->onRefreshEvent()V

    .line 2
    .line 3
    .line 4
    const-string v0, "[MiniFragment]\uff1aonRefreshEvent"

    .line 5
    .line 6
    invoke-static {v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/4 v5, 0x4

    .line 10
    const/4 v6, 0x0

    .line 11
    const-string v2, "onPullDownRefresh"

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    const/4 v4, 0x0

    .line 15
    move-object v1, p0

    .line 16
    invoke-static/range {v1 .. v6}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->sendEventOrLifecycleToWorker$default(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Ljava/lang/String;ZLjava/util/Map;ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 p2, 0x1a

    .line 4
    .line 5
    if-ge p1, p2, :cond_0

    .line 6
    .line 7
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    instance-of p2, p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 15
    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    check-cast p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    const/4 p1, 0x0

    .line 24
    :goto_0
    if-eqz p1, :cond_2

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->refresh()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    goto :goto_2

    .line 30
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v0, "refresh fail!!,msg:"

    .line 36
    .line 37
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    :goto_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 51
    .line 52
    return-object p1
.end method

.method public synthetic onRequestFocus()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/kernel/render/b;->d(Lcom/cloud/tmc/kernel/render/IPageEventCallback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onResume()V
    .locals 10

    .line 1
    const-string v0, "MiniFragment"

    .line 2
    .line 3
    invoke-super {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->onResume()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 7
    .line 8
    if-eqz v1, :cond_6

    .line 9
    .line 10
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_6

    .line 15
    .line 16
    invoke-interface {v1}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderId()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_6

    .line 21
    .line 22
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception v1

    .line 33
    goto :goto_3

    .line 34
    :cond_0
    move-object v2, v3

    .line 35
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v5, "resume:->"

    .line 41
    .line 42
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 56
    .line 57
    if-eqz v2, :cond_1

    .line 58
    .line 59
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    move-object v2, v3

    .line 65
    :goto_1
    iget-object v4, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 66
    .line 67
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_6

    .line 72
    .line 73
    iget-boolean v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->needRefreshYCoordinate:Z

    .line 74
    .line 75
    if-eqz v2, :cond_2

    .line 76
    .line 77
    const/4 v2, 0x0

    .line 78
    iput-boolean v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->needRefreshYCoordinate:Z

    .line 79
    .line 80
    invoke-static {}, Lkotlinx/coroutines/y0;->a()Lkotlinx/coroutines/i0;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-static {v2}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    new-instance v7, Lcom/cloud/tmc/miniapp/ui/MiniFragment$onResume$1$1;

    .line 89
    .line 90
    invoke-direct {v7, p0, v3}, Lcom/cloud/tmc/miniapp/ui/MiniFragment$onResume$1$1;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Lkotlin/coroutines/Continuation;)V

    .line 91
    .line 92
    .line 93
    const/4 v8, 0x3

    .line 94
    const/4 v9, 0x0

    .line 95
    const/4 v5, 0x0

    .line 96
    const/4 v6, 0x0

    .line 97
    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 98
    .line 99
    .line 100
    :cond_2
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->checkUpdateTitleBarStyle()V

    .line 101
    .line 102
    .line 103
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 104
    .line 105
    if-eqz v2, :cond_3

    .line 106
    .line 107
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    if-eqz v2, :cond_3

    .line 112
    .line 113
    invoke-interface {v2}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    goto :goto_2

    .line 118
    :cond_3
    move-object v2, v3

    .line 119
    :goto_2
    instance-of v4, v2, Landroid/webkit/WebView;

    .line 120
    .line 121
    if-eqz v4, :cond_4

    .line 122
    .line 123
    move-object v3, v2

    .line 124
    check-cast v3, Landroid/webkit/WebView;

    .line 125
    .line 126
    :cond_4
    if-eqz v3, :cond_5

    .line 127
    .line 128
    invoke-virtual {v3}, Landroid/webkit/WebView;->onResume()V

    .line 129
    .line 130
    .line 131
    :cond_5
    sget-object v2, Lcom/cloud/tmc/integration/minicover/NativeComponentManager;->INSTANCE:Lcom/cloud/tmc/integration/minicover/NativeComponentManager;

    .line 132
    .line 133
    invoke-virtual {v2, v1}, Lcom/cloud/tmc/integration/minicover/NativeComponentManager;->onResumeForRenderId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    .line 135
    .line 136
    goto :goto_4

    .line 137
    :goto_3
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    .line 139
    .line 140
    :cond_6
    :goto_4
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->onStop()V

    .line 2
    .line 3
    .line 4
    const-string v0, "MiniFragment"

    .line 5
    .line 6
    const-string v1, "onStop"

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderId()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    sget-object v1, Lcom/cloud/tmc/integration/minicover/NativeComponentManager;->INSTANCE:Lcom/cloud/tmc/integration/minicover/NativeComponentManager;

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Lcom/cloud/tmc/integration/minicover/NativeComponentManager;->onStopForRenderId(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    const/4 v0, 0x1

    .line 33
    invoke-direct {p0, v0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->hideCustomView(Z)Z

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->pageChainContext:Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 10
    .line 11
    iget-object p2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/App;->getAppChainContext()Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object p2, v0

    .line 22
    :goto_0
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->setAppChainContext(Lcom/cloud/tmc/integration/chain/app/AppChainContext;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 26
    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    iget-object p2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->pageChainContext:Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 31
    .line 32
    invoke-interface {p1, p2}, Lcom/cloud/tmc/integration/structure/Page;->setPageChainContext(Lcom/cloud/tmc/integration/chain/page/PageChainContext;)V

    .line 33
    .line 34
    .line 35
    :goto_1
    new-instance p1, Landroid/os/Bundle;

    .line 36
    .line 37
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 38
    .line 39
    .line 40
    sget-object p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    move-object v1, v0

    .line 52
    :goto_2
    const-string v2, ""

    .line 53
    .line 54
    if-nez v1, :cond_3

    .line 55
    .line 56
    move-object v1, v2

    .line 57
    goto :goto_3

    .line 58
    :cond_3
    const-string v3, "page?.pagePath ?: \"\""

    .line 59
    .line 60
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :goto_3
    invoke-virtual {p1, p2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    sget-object p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    .line 67
    .line 68
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 69
    .line 70
    if-eqz v1, :cond_4

    .line 71
    .line 72
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    goto :goto_4

    .line 77
    :cond_4
    move-object v1, v0

    .line 78
    :goto_4
    if-nez v1, :cond_5

    .line 79
    .line 80
    move-object v1, v2

    .line 81
    goto :goto_5

    .line 82
    :cond_5
    const-string v3, "page?.pageId ?: \"\""

    .line 83
    .line 84
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :goto_5
    invoke-virtual {p1, p2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const-class p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 91
    .line 92
    invoke-static {p2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 97
    .line 98
    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 99
    .line 100
    if-eqz v3, :cond_6

    .line 101
    .line 102
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    goto :goto_6

    .line 107
    :cond_6
    move-object v3, v0

    .line 108
    :goto_6
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 109
    .line 110
    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageCreateContainer:Ljava/lang/String;

    .line 111
    .line 112
    invoke-interface {v1, v3, v4, v5, p1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 113
    .line 114
    .line 115
    invoke-static {p2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 120
    .line 121
    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 122
    .line 123
    if-eqz v3, :cond_7

    .line 124
    .line 125
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    goto :goto_7

    .line 130
    :cond_7
    move-object v3, v0

    .line 131
    :goto_7
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 132
    .line 133
    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageCreateContainer:Ljava/lang/String;

    .line 134
    .line 135
    invoke-interface {v1, v3, v4, v5, p1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 136
    .line 137
    .line 138
    invoke-static {p2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 143
    .line 144
    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 145
    .line 146
    if-eqz v3, :cond_8

    .line 147
    .line 148
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    goto :goto_8

    .line 153
    :cond_8
    move-object v3, v0

    .line 154
    :goto_8
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 155
    .line 156
    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageCreateContainer:Ljava/lang/String;

    .line 157
    .line 158
    invoke-interface {v1, v3, v4, v5, p1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 159
    .line 160
    .line 161
    invoke-static {p2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 166
    .line 167
    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 168
    .line 169
    if-eqz v3, :cond_9

    .line 170
    .line 171
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    goto :goto_9

    .line 176
    :cond_9
    move-object v3, v0

    .line 177
    :goto_9
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 178
    .line 179
    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageCreateContainer:Ljava/lang/String;

    .line 180
    .line 181
    invoke-interface {v1, v3, v4, v5, p1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 182
    .line 183
    .line 184
    new-instance v1, Lcom/cloud/tmc/integration/chain/startState/CreateContainerStartState;

    .line 185
    .line 186
    invoke-direct {v1, p1}, Lcom/cloud/tmc/integration/chain/startState/CreateContainerStartState;-><init>(Landroid/os/Bundle;)V

    .line 187
    .line 188
    .line 189
    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->pageChainContext:Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 190
    .line 191
    invoke-virtual {v1, v3}, Lcom/cloud/tmc/integration/chain/startState/CreateContainerStartState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    .line 192
    .line 193
    .line 194
    new-instance v1, Lcom/cloud/tmc/integration/chain/endState/CreateContainerEndState;

    .line 195
    .line 196
    invoke-direct {v1, p1}, Lcom/cloud/tmc/integration/chain/endState/CreateContainerEndState;-><init>(Landroid/os/Bundle;)V

    .line 197
    .line 198
    .line 199
    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->pageChainContext:Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 200
    .line 201
    invoke-virtual {v1, p1}, Lcom/cloud/tmc/integration/chain/endState/CreateContainerEndState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    .line 202
    .line 203
    .line 204
    new-instance p1, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;

    .line 205
    .line 206
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 207
    .line 208
    invoke-direct {p1, p0, v1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;-><init>(Landroidx/fragment/app/Fragment;Lcom/cloud/tmc/integration/structure/Page;)V

    .line 209
    .line 210
    .line 211
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->eventCreateMiniAppFail:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    .line 212
    .line 213
    const-class p1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 214
    .line 215
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 220
    .line 221
    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 222
    .line 223
    invoke-interface {v1, v3}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 228
    .line 229
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    if-eqz v1, :cond_a

    .line 234
    .line 235
    new-instance v1, Lcom/cloud/tmc/miniapp/ui/MiniFragment$OnPageReadyEventSubscriber;

    .line 236
    .line 237
    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment$OnPageReadyEventSubscriber;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V

    .line 238
    .line 239
    .line 240
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->eventCreateOnPageReady:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    .line 241
    .line 242
    :cond_a
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 247
    .line 248
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 249
    .line 250
    invoke-interface {p1, v1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->eventCenter_page:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 255
    .line 256
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 257
    .line 258
    if-eqz p1, :cond_b

    .line 259
    .line 260
    const-string v1, "consumeTime"

    .line 261
    .line 262
    invoke-interface {p1, v1, p0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->register(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    .line 263
    .line 264
    .line 265
    :cond_b
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 266
    .line 267
    const-string v1, "create_miniapp_worker_fail"

    .line 268
    .line 269
    if-eqz p1, :cond_c

    .line 270
    .line 271
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->eventCreateMiniAppFail:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    .line 272
    .line 273
    invoke-interface {p1, v1, v3}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->register(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    .line 274
    .line 275
    .line 276
    :cond_c
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->eventCenter_page:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 277
    .line 278
    if-eqz p1, :cond_d

    .line 279
    .line 280
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->eventCreateOnPageReady:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    .line 281
    .line 282
    const-string v4, "onPageReady"

    .line 283
    .line 284
    invoke-interface {p1, v4, v3}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->register(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    .line 285
    .line 286
    .line 287
    :cond_d
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->eventCenter_page:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 288
    .line 289
    if-eqz p1, :cond_e

    .line 290
    .line 291
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->eventCreateMiniAppFail:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    .line 292
    .line 293
    invoke-interface {p1, v1, v3}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->register(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    .line 294
    .line 295
    .line 296
    :cond_e
    new-instance p1, Landroid/os/Bundle;

    .line 297
    .line 298
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 299
    .line 300
    .line 301
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    .line 302
    .line 303
    const-string v3, "page"

    .line 304
    .line 305
    invoke-virtual {p1, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    .line 309
    .line 310
    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 311
    .line 312
    if-eqz v3, :cond_f

    .line 313
    .line 314
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 315
    .line 316
    .line 317
    move-result-object v3

    .line 318
    if-eqz v3, :cond_f

    .line 319
    .line 320
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    .line 321
    .line 322
    .line 323
    move-result-object v3

    .line 324
    if-eqz v3, :cond_f

    .line 325
    .line 326
    const-string v4, "uniqueChainID"

    .line 327
    .line 328
    const-string v5, "-1"

    .line 329
    .line 330
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v3

    .line 334
    goto :goto_a

    .line 335
    :cond_f
    move-object v3, v0

    .line 336
    :goto_a
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v3

    .line 340
    invoke-virtual {p1, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 344
    .line 345
    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 346
    .line 347
    if-eqz v3, :cond_10

    .line 348
    .line 349
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v3

    .line 353
    goto :goto_b

    .line 354
    :cond_10
    move-object v3, v0

    .line 355
    :goto_b
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v3

    .line 359
    invoke-virtual {p1, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    invoke-static {p2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 367
    .line 368
    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 369
    .line 370
    if-eqz v3, :cond_11

    .line 371
    .line 372
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 373
    .line 374
    .line 375
    move-result-object v3

    .line 376
    if-eqz v3, :cond_11

    .line 377
    .line 378
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v3

    .line 382
    goto :goto_c

    .line 383
    :cond_11
    move-object v3, v0

    .line 384
    :goto_c
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 385
    .line 386
    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->page:Ljava/lang/String;

    .line 387
    .line 388
    invoke-interface {v1, v3, v4, v5, p1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 389
    .line 390
    .line 391
    invoke-static {p2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object p1

    .line 395
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 396
    .line 397
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 398
    .line 399
    if-eqz v1, :cond_12

    .line 400
    .line 401
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    if-eqz v1, :cond_12

    .line 406
    .line 407
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    goto :goto_d

    .line 412
    :cond_12
    move-object v1, v0

    .line 413
    :goto_d
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CREATE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 414
    .line 415
    invoke-interface {p1, v1, v3, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 419
    .line 420
    .line 421
    move-result-object p1

    .line 422
    instance-of v1, p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 423
    .line 424
    if-eqz v1, :cond_13

    .line 425
    .line 426
    check-cast p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 427
    .line 428
    goto :goto_e

    .line 429
    :cond_13
    move-object p1, v0

    .line 430
    :goto_e
    if-eqz p1, :cond_15

    .line 431
    .line 432
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->isFirstLaunch()Z

    .line 433
    .line 434
    .line 435
    move-result p1

    .line 436
    if-nez p1, :cond_15

    .line 437
    .line 438
    invoke-static {p2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    move-result-object p1

    .line 442
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 443
    .line 444
    iget-object p2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 445
    .line 446
    if-eqz p2, :cond_14

    .line 447
    .line 448
    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 449
    .line 450
    .line 451
    move-result-object p2

    .line 452
    if-eqz p2, :cond_14

    .line 453
    .line 454
    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object p2

    .line 458
    goto :goto_f

    .line 459
    :cond_14
    move-object p2, v0

    .line 460
    :goto_f
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_PV:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 461
    .line 462
    invoke-interface {p1, p2, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    :cond_15
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->mPendingSetPage:Lcom/cloud/tmc/integration/structure/Page;

    .line 466
    .line 467
    if-eqz p1, :cond_16

    .line 468
    .line 469
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 470
    .line 471
    .line 472
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->setPage(Lcom/cloud/tmc/integration/structure/Page;)V

    .line 473
    .line 474
    .line 475
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->mPendingSetPage:Lcom/cloud/tmc/integration/structure/Page;

    .line 476
    .line 477
    :cond_16
    invoke-static {p0, p0}, Lcom/cloud/tmc/kernel/debug/a;->a(Ljava/lang/Object;Lcom/cloud/tmc/kernel/debug/DebugCallback;)V

    .line 478
    .line 479
    .line 480
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    .line 481
    .line 482
    if-eqz p1, :cond_17

    .line 483
    .line 484
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0Oo:Landroid/widget/ImageView;

    .line 485
    .line 486
    if-eqz p1, :cond_17

    .line 487
    .line 488
    new-instance p2, Lcom/cloud/tmc/miniapp/ui/l0;

    .line 489
    .line 490
    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/ui/l0;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V

    .line 491
    .line 492
    .line 493
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 494
    .line 495
    .line 496
    :cond_17
    return-void
.end method

.method public final setAdTag(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->adTag:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setAdm(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->adm:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setCallbackId(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->callbackId:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public setCapsuleStyle(Z)V
    .locals 3

    .line 1
    xor-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v0, v2

    .line 16
    :goto_0
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getCapsule()Lcom/cloud/tmc/miniapp/widget/CapsuleView;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    invoke-static {v0, p1, v2, v1}, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->OooO00o(Lcom/cloud/tmc/miniapp/widget/CapsuleView;ILjava/util/HashMap;I)V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public final setEventCenter(Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 2
    .line 3
    return-void
.end method

.method public final setEventCenter_page(Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->eventCenter_page:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 2
    .line 3
    return-void
.end method

.method public final setEventCreateMiniAppFail(Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->eventCreateMiniAppFail:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    .line 2
    .line 3
    return-void
.end method

.method public final setEventCreateOnPageReady(Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->eventCreateOnPageReady:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    .line 2
    .line 3
    return-void
.end method

.method public setNavigationBarIconStyle(Z)V
    .locals 1

    .line 1
    xor-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0oO:Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->setThemeMode(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setPage(Lcom/cloud/tmc/integration/structure/Page;)V
    .locals 5

    .line 1
    const-string v0, "page"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->setPage(Lcom/cloud/tmc/integration/structure/Page;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 10
    .line 11
    const-class v0, Lcom/cloud/tmc/integration/structure/App;

    .line 12
    .line 13
    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/node/Node;->bubbleFindNode(Ljava/lang/Class;)Lcom/cloud/tmc/kernel/node/Node;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/cloud/tmc/integration/structure/App;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 20
    .line 21
    const-string v1, "MiniFragment"

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    :try_start_0
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppLifecycleCallback()Lcom/cloud/tmc/integration/callback/ICheckMiniAppLifecycleCallback;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    move-object v0, v2

    .line 34
    :goto_0
    if-nez v0, :cond_2

    .line 35
    .line 36
    const-string v0, "setMiniappLifecycleCallback"

    .line 37
    .line 38
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    instance-of v4, v3, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 50
    .line 51
    if-eqz v4, :cond_1

    .line 52
    .line 53
    move-object v2, v3

    .line 54
    check-cast v2, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 55
    .line 56
    :cond_1
    invoke-interface {v0, v2}, Lcom/cloud/tmc/integration/structure/App;->setMiniappLifecycleCallback(Lcom/cloud/tmc/integration/callback/ICheckMiniAppLifecycleCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :goto_1
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    :goto_2
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/q0;

    .line 64
    .line 65
    invoke-direct {v0, p0, p1}, Lcom/cloud/tmc/miniapp/ui/q0;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Lcom/cloud/tmc/integration/structure/Page;)V

    .line 66
    .line 67
    .line 68
    invoke-static {v0}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Ljava/lang/Boolean;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, ""

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    :cond_0
    move-object v2, v1

    .line 19
    :cond_1
    const-string v3, "https://100000"

    .line 20
    .line 21
    const/4 v4, 0x2

    .line 22
    const/4 v5, 0x0

    .line 23
    invoke-static {v2, v3, v0, v4, v5}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-nez v3, :cond_5

    .line 28
    .line 29
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->adTag:Ljava/lang/String;

    .line 30
    .line 31
    const-string v4, "ad_click"

    .line 32
    .line 33
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_5

    .line 38
    .line 39
    iget-boolean v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->adm:Z

    .line 40
    .line 41
    if-eqz v3, :cond_5

    .line 42
    .line 43
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 44
    .line 45
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 46
    .line 47
    .line 48
    new-instance p2, Lcom/google/gson/JsonObject;

    .line 49
    .line 50
    invoke-direct {p2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v3, "abilityName"

    .line 54
    .line 55
    const-string v4, "callback"

    .line 56
    .line 57
    invoke-virtual {p1, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 61
    .line 62
    if-eqz v3, :cond_2

    .line 63
    .line 64
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    move-object v3, v5

    .line 70
    :goto_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    const-string v4, "renderId"

    .line 75
    .line 76
    invoke-virtual {p1, v4, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const-string v3, "target"

    .line 80
    .line 81
    const-string v4, "native"

    .line 82
    .line 83
    invoke-virtual {p1, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const-string v3, "source"

    .line 87
    .line 88
    const-string v4, "render"

    .line 89
    .line 90
    invoke-virtual {p1, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->callbackId:Ljava/lang/String;

    .line 94
    .line 95
    const-string v4, "callbackId"

    .line 96
    .line 97
    invoke-virtual {p1, v4, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-string v3, "adUrl"

    .line 101
    .line 102
    invoke-static {v3, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    const/4 v3, 0x1

    .line 107
    new-array v3, v3, [Lkotlin/Pair;

    .line 108
    .line 109
    aput-object v2, v3, v0

    .line 110
    .line 111
    invoke-static {v3}, Lkotlin/collections/MapsKt;->j([Lkotlin/Pair;)Ljava/util/HashMap;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-static {v2}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    const-string v3, "dataJson"

    .line 120
    .line 121
    invoke-virtual {p2, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->callbackId:Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {p2, v4, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v3, p2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 130
    .line 131
    .line 132
    iget-object p2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 133
    .line 134
    if-eqz p2, :cond_3

    .line 135
    .line 136
    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    goto :goto_1

    .line 141
    :cond_3
    move-object p2, v5

    .line 142
    :goto_1
    invoke-static {p2}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext;->newBuilder(Lcom/cloud/tmc/kernel/render/IRender;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    const-string v2, "message"

    .line 147
    .line 148
    invoke-virtual {p2, v2}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->action(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    const-string v2, "call"

    .line 153
    .line 154
    invoke-virtual {p2, v2}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->type(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    invoke-virtual {p2, p1}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->param(Lcom/google/gson/JsonObject;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    iget-object p2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 163
    .line 164
    if-eqz p2, :cond_4

    .line 165
    .line 166
    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    if-eqz p2, :cond_4

    .line 171
    .line 172
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderBridge()Lcom/cloud/tmc/kernel/bridge/RenderBridge;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    if-eqz p2, :cond_4

    .line 177
    .line 178
    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->build()Lcom/cloud/tmc/kernel/bridge/RenderCallContext;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-interface {p2, p1, v5}, Lcom/cloud/tmc/kernel/bridge/RenderBridge;->sendToRender(Lcom/cloud/tmc/kernel/bridge/RenderCallContext;Lcom/cloud/tmc/kernel/bridge/SendToRenderCallback;)V

    .line 183
    .line 184
    .line 185
    :cond_4
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->adTag:Ljava/lang/String;

    .line 186
    .line 187
    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->adm:Z

    .line 188
    .line 189
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->callbackId:Ljava/lang/String;

    .line 190
    .line 191
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 192
    .line 193
    return-object p1

    .line 194
    :cond_5
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/kernel/render/a;->b(Lcom/cloud/tmc/kernel/render/IPageCallback;Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Ljava/lang/Boolean;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    const-string p2, "super.shouldOverrideUrlLoading(view, request)"

    .line 199
    .line 200
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    return-object p1
.end method

.method public showNavigationBarLoading()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0o0:Landroid/widget/ProgressBar;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    if-nez v0, :cond_1

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_1
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :goto_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0o0:Landroid/widget/ProgressBar;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisible(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    :cond_2
    return-void
.end method
