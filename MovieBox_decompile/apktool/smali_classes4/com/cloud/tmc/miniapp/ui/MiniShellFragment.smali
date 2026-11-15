.class public final Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;
.super Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/render/IPageEventCallback;
.implements Lcom/cloud/tmc/kernel/render/IPageCallback;
.implements Lcom/cloud/tmc/kernel/debug/DebugCallback;
.implements Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;
.implements Lcom/cloud/tmc/miniapp/action/StatusAction;
.implements Lcom/cloud/tmc/integration/callback/ILoadHtmlDataCallback;
.implements Lcom/cloud/tmc/miniapp/action/VersionUpdateAction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$Companion;

.field private static final TAG:Ljava/lang/String; = "MiniShellFragment"


# instance fields
.field private baseUrl:Ljava/lang/String;

.field private binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

.field private contextView:Landroid/view/View;

.field private enablePreRequest:Z

.field private eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

.field private mCustomView:Landroid/view/View;

.field private mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private final mHandler$delegate:Lkotlin/Lazy;

.field private mPendingSetPage:Lcom/cloud/tmc/integration/structure/Page;

.field private mScrollY:I

.field private mStatusLayout:Lcom/cloud/tmc/miniapp/widget/StatusLayout;

.field private needRefreshYCoordinate:Z

.field private perEnterFlag:Z

.field private perfSendFlag:Z

.field private typeLoadData:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->Companion:Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->baseUrl:Ljava/lang/String;

    .line 7
    .line 8
    sget-object v0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$mHandler$2;->INSTANCE:Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$mHandler$2;

    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->mHandler$delegate:Lkotlin/Lazy;

    .line 15
    .line 16
    return-void
.end method

.method public static final synthetic access$getApp$p$s2019804521(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)Lcom/cloud/tmc/integration/structure/App;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getAppLoadResult(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)Lcom/cloud/tmc/integration/structure/AppLoadResult;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getAppLoadResult()Lcom/cloud/tmc/integration/structure/AppLoadResult;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getContextView$p(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->contextView:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getMScrollY$p(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->mScrollY:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getPage$p$s2019804521(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)Lcom/cloud/tmc/integration/structure/Page;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getPerEnterFlag$p(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->perEnterFlag:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$hideCustomView(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;Z)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->hideCustomView(Z)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$isHomepage(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;Lcom/cloud/tmc/integration/structure/AppLoadResult;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->isHomepage(Lcom/cloud/tmc/integration/structure/AppLoadResult;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$openPage(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->openPage()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setPerEnterFlag$p(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->perEnterFlag:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$showCustomView(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->showCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final changeNavigationBarProgress$lambda$18(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;IIJ)V
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
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->changeNavigationBarProgress(IIJ)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private final checkUpdateTitleBarStyle()V
    .locals 2

    .line 1
    :try_start_0
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
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->updateTitleBarStyle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    const-string v1, "MiniShellFragment"

    .line 18
    .line 19
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    :goto_0
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
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getNavigationBarBackgroundColor()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 61
    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->navigationBarIconStyleIsWhite()Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    invoke-interface {v0, p1}, Lcom/cloud/tmc/kernel/node/TitleBarNode;->setNavigationBarIconStyle(Z)V

    .line 69
    .line 70
    .line 71
    :cond_4
    return-void
.end method

.method public static synthetic d0(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;Lcom/cloud/tmc/integration/structure/Page;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->setPage$lambda$14(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;Lcom/cloud/tmc/integration/structure/Page;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final debugRefresh$lambda$28(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)V
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
    new-instance v1, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$debugRefresh$1$1$1;

    .line 142
    .line 143
    invoke-direct {v1, p0, v0}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$debugRefresh$1$1$1;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;)V

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

.method public static synthetic e0(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->onViewCreated$lambda$1(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f0(Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->setPageOnMain$lambda$20(Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g0(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;IIJ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->changeNavigationBarProgress$lambda$18(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;IIJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final getMHandler()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->mHandler$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/os/Handler;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic h0(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->onReceivedError$lambda$33(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final hideCustomView(Z)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->mCustomView:Landroid/view/View;

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
    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->needRefreshYCoordinate:Z

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
    new-instance v4, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$hideCustomView$1;

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    invoke-direct {v4, p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$hideCustomView$1;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;Lkotlin/coroutines/Continuation;)V

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
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

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
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->mCustomView:Landroid/view/View;

    .line 47
    .line 48
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 49
    .line 50
    .line 51
    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->mCustomView:Landroid/view/View;

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
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

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
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->mCustomView:Landroid/view/View;

    .line 67
    .line 68
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

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

.method public static synthetic i0(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->initView$lambda$7$lambda$5$lambda$2(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final init()V
    .locals 7

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
    const/4 v0, 0x1

    .line 21
    :try_start_0
    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/BuildConfigProxy;

    .line 22
    .line 23
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/BuildConfigProxy;

    .line 28
    .line 29
    invoke-interface {v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/BuildConfigProxy;->isDebug()Ljava/lang/Boolean;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v2, "get(BuildConfigProxy::class.java).isDebug"

    .line 34
    .line 35
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_1

    .line 43
    .line 44
    invoke-static {}, Lcom/cloud/tmc/integration/utils/AppUtils;->enableWebViewDebugger()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    :cond_1
    invoke-static {v0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    :catchall_0
    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 54
    .line 55
    const/4 v2, 0x0

    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    if-eqz v1, :cond_3

    .line 63
    .line 64
    invoke-interface {v1}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    goto :goto_0

    .line 69
    :cond_3
    move-object v1, v2

    .line 70
    :goto_0
    if-nez v1, :cond_4

    .line 71
    .line 72
    return-void

    .line 73
    :cond_4
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->contextView:Landroid/view/View;

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getAppLoadResult()Lcom/cloud/tmc/integration/structure/AppLoadResult;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 80
    .line 81
    if-eqz v3, :cond_5

    .line 82
    .line 83
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    goto :goto_1

    .line 88
    :cond_5
    move-object v3, v2

    .line 89
    :goto_1
    invoke-static {v1, v3}, Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;->getWindowOptimalConfiguration(Lcom/cloud/tmc/integration/structure/AppLoadResult;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    const-string v3, "contextView"

    .line 94
    .line 95
    if-eqz v1, :cond_a

    .line 96
    .line 97
    :try_start_1
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getContentBgColor()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    if-eqz v4, :cond_7

    .line 102
    .line 103
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    if-lez v5, :cond_7

    .line 108
    .line 109
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    iget-object v6, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    .line 114
    .line 115
    if-eqz v6, :cond_6

    .line 116
    .line 117
    iget-object v6, v6, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/PageContainerView;

    .line 118
    .line 119
    if-eqz v6, :cond_6

    .line 120
    .line 121
    invoke-virtual {v6, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :catch_0
    move-exception v4

    .line 126
    goto :goto_3

    .line 127
    :cond_6
    :goto_2
    iget-object v5, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 128
    .line 129
    if-eqz v5, :cond_7

    .line 130
    .line 131
    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    if-eqz v5, :cond_7

    .line 136
    .line 137
    invoke-interface {v5, v4}, Lcom/cloud/tmc/kernel/render/IRender;->setBgColor(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 138
    .line 139
    .line 140
    goto :goto_4

    .line 141
    :goto_3
    const-string v5, "MiniShellFragment"

    .line 142
    .line 143
    const-string v6, "set content background color error"

    .line 144
    .line 145
    invoke-static {v5, v6, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    .line 147
    .line 148
    :cond_7
    :goto_4
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getEnablePullDownRefresh()Ljava/lang/Boolean;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 153
    .line 154
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    if-nez v4, :cond_8

    .line 159
    .line 160
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getEnablePullUpRefresh()Ljava/lang/Boolean;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v4

    .line 168
    if-eqz v4, :cond_a

    .line 169
    .line 170
    :cond_8
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->contextView:Landroid/view/View;

    .line 171
    .line 172
    if-nez v4, :cond_9

    .line 173
    .line 174
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    move-object v4, v2

    .line 178
    :cond_9
    invoke-virtual {p0, v4, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->attachToRefresh(Landroid/view/View;Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;)Landroid/view/View;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->contextView:Landroid/view/View;

    .line 183
    .line 184
    :cond_a
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    .line 185
    .line 186
    if-eqz v1, :cond_c

    .line 187
    .line 188
    iget-object v1, v1, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/PageContainerView;

    .line 189
    .line 190
    if-eqz v1, :cond_c

    .line 191
    .line 192
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->contextView:Landroid/view/View;

    .line 193
    .line 194
    if-nez v4, :cond_b

    .line 195
    .line 196
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    move-object v4, v2

    .line 200
    :cond_b
    invoke-static {v4}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->removeSelf(Landroid/view/View;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 204
    .line 205
    .line 206
    :cond_c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    instance-of v3, v1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 211
    .line 212
    if-eqz v3, :cond_d

    .line 213
    .line 214
    check-cast v1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 215
    .line 216
    goto :goto_5

    .line 217
    :cond_d
    move-object v1, v2

    .line 218
    :goto_5
    if-eqz v1, :cond_e

    .line 219
    .line 220
    sget-object v3, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    .line 221
    .line 222
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getStartLoadingH5AnimDelayTime()J

    .line 223
    .line 224
    .line 225
    move-result-wide v3

    .line 226
    invoke-virtual {v1, v3, v4}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->hideStatusLoadingDelay(J)V

    .line 227
    .line 228
    .line 229
    :cond_e
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 230
    .line 231
    if-eqz v1, :cond_10

    .line 232
    .line 233
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    if-eqz v1, :cond_10

    .line 238
    .line 239
    invoke-interface {v1}, Lcom/cloud/tmc/kernel/render/IRender;->fromWarmup()Z

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    if-ne v1, v0, :cond_10

    .line 244
    .line 245
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;

    .line 246
    .line 247
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;

    .line 252
    .line 253
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 254
    .line 255
    if-eqz v1, :cond_f

    .line 256
    .line 257
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    if-eqz v1, :cond_f

    .line 262
    .line 263
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    goto :goto_6

    .line 268
    :cond_f
    move-object v1, v2

    .line 269
    :goto_6
    const-string v3, "webview"

    .line 270
    .line 271
    invoke-interface {v0, v1, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;->addPeroformanceImprove(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    :cond_10
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 275
    .line 276
    if-eqz v0, :cond_11

    .line 277
    .line 278
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    goto :goto_7

    .line 283
    :cond_11
    move-object v0, v2

    .line 284
    :goto_7
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 285
    .line 286
    if-eqz v1, :cond_12

    .line 287
    .line 288
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    :cond_12
    invoke-direct {p0, v0, v2}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->injectRenderFramework(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/integration/structure/App;)V

    .line 293
    .line 294
    .line 295
    return-void
.end method

.method private static final initView$lambda$7$lambda$5$lambda$2(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Landroid/view/View;)V
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

.method private static final initView$lambda$7$lambda$5$lambda$3(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->goHome()V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method private static final initView$lambda$7$lambda$5$lambda$4(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;Landroid/view/View;)V
    .locals 2

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object p1, v0

    .line 23
    :goto_0
    instance-of v1, p1, Landroid/webkit/WebView;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    check-cast p1, Landroid/webkit/WebView;

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move-object p1, v0

    .line 31
    :goto_1
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->canGoBack(Landroid/webkit/WebView;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_6

    .line 36
    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :cond_2
    const/4 p1, 0x0

    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    goto :goto_2

    .line 51
    :cond_3
    move v0, p1

    .line 52
    :goto_2
    if-nez v0, :cond_5

    .line 53
    .line 54
    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 55
    .line 56
    if-eqz p1, :cond_4

    .line 57
    .line 58
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/node/TitleBarNode;->hideHomeButton()V

    .line 59
    .line 60
    .line 61
    :cond_4
    iget-object p0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 62
    .line 63
    if-eqz p0, :cond_6

    .line 64
    .line 65
    const/4 p1, 0x1

    .line 66
    invoke-interface {p0, p1}, Lcom/cloud/tmc/kernel/node/TitleBarNode;->setNavigationBarTitleVisible(Z)V

    .line 67
    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_5
    iget-object p0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 71
    .line 72
    if-eqz p0, :cond_6

    .line 73
    .line 74
    invoke-interface {p0, p1}, Lcom/cloud/tmc/kernel/node/TitleBarNode;->setNavigationBarTitleVisible(Z)V

    .line 75
    .line 76
    .line 77
    :cond_6
    :goto_3
    return-void
.end method

.method private final injectRenderFramework(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/integration/structure/App;)V
    .locals 13

    .line 1
    new-instance v6, Lcom/cloud/tmc/kernel/render/LoadParams;

    .line 2
    .line 3
    invoke-direct {v6}, Lcom/cloud/tmc/kernel/render/LoadParams;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 7
    .line 8
    const/4 v7, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPageURI()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v0, v7

    .line 17
    :goto_0
    iput-object v0, v6, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move-object v0, v7

    .line 29
    :goto_1
    iput-object v0, v6, Lcom/cloud/tmc/kernel/render/LoadParams;->pagePath:Ljava/lang/String;

    .line 30
    .line 31
    if-eqz p2, :cond_2

    .line 32
    .line 33
    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    goto :goto_2

    .line 38
    :cond_2
    move-object v0, v7

    .line 39
    :goto_2
    iput-object v0, v6, Lcom/cloud/tmc/kernel/render/LoadParams;->appId:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackLoadRenderFrameworkStart()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackLoadRenderFrameworkEnd()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackCreateWorkerStart()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackCreateWorkerEnd()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackLoadWorkerFrameworkStart()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackLoadWorkerFrameworkEnd()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackDrawViewStart()V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 63
    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPageURI()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    goto :goto_3

    .line 71
    :cond_3
    move-object v0, v7

    .line 72
    :goto_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 77
    .line 78
    if-eqz v1, :cond_4

    .line 79
    .line 80
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    goto :goto_4

    .line 85
    :cond_4
    move-object v1, v7

    .line 86
    :goto_4
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {p0, v0, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackLoadRenderFrameworkStartNew(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 94
    .line 95
    if-eqz v0, :cond_5

    .line 96
    .line 97
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPageURI()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    goto :goto_5

    .line 102
    :cond_5
    move-object v0, v7

    .line 103
    :goto_5
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 108
    .line 109
    if-eqz v1, :cond_6

    .line 110
    .line 111
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    goto :goto_6

    .line 116
    :cond_6
    move-object v1, v7

    .line 117
    :goto_6
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {p0, v0, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackLoadRenderFrameworkEndNew(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 125
    .line 126
    if-eqz v0, :cond_7

    .line 127
    .line 128
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPageURI()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    goto :goto_7

    .line 133
    :cond_7
    move-object v0, v7

    .line 134
    :goto_7
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 139
    .line 140
    if-eqz v1, :cond_8

    .line 141
    .line 142
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    goto :goto_8

    .line 147
    :cond_8
    move-object v1, v7

    .line 148
    :goto_8
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {p0, v0, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackCreateWorkerStartNew(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 156
    .line 157
    if-eqz v0, :cond_9

    .line 158
    .line 159
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPageURI()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    goto :goto_9

    .line 164
    :cond_9
    move-object v0, v7

    .line 165
    :goto_9
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 170
    .line 171
    if-eqz v1, :cond_a

    .line 172
    .line 173
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    goto :goto_a

    .line 178
    :cond_a
    move-object v1, v7

    .line 179
    :goto_a
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-virtual {p0, v0, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackCreateWorkerEndNew(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 187
    .line 188
    if-eqz v0, :cond_b

    .line 189
    .line 190
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPageURI()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    goto :goto_b

    .line 195
    :cond_b
    move-object v0, v7

    .line 196
    :goto_b
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 201
    .line 202
    if-eqz v1, :cond_c

    .line 203
    .line 204
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    goto :goto_c

    .line 209
    :cond_c
    move-object v1, v7

    .line 210
    :goto_c
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    invoke-virtual {p0, v0, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackLoadWorkerFrameworkStartNew(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 218
    .line 219
    if-eqz v0, :cond_d

    .line 220
    .line 221
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPageURI()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    goto :goto_d

    .line 226
    :cond_d
    move-object v0, v7

    .line 227
    :goto_d
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 232
    .line 233
    if-eqz v1, :cond_e

    .line 234
    .line 235
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    goto :goto_e

    .line 240
    :cond_e
    move-object v1, v7

    .line 241
    :goto_e
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    invoke-virtual {p0, v0, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackLoadWorkerFrameworkEndNew(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 249
    .line 250
    if-eqz v0, :cond_f

    .line 251
    .line 252
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPageURI()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    goto :goto_f

    .line 257
    :cond_f
    move-object v0, v7

    .line 258
    :goto_f
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 263
    .line 264
    if-eqz v1, :cond_10

    .line 265
    .line 266
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    goto :goto_10

    .line 271
    :cond_10
    move-object v1, v7

    .line 272
    :goto_10
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    invoke-virtual {p0, v0, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackMidStartNew(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 280
    .line 281
    if-eqz v0, :cond_11

    .line 282
    .line 283
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPageURI()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    goto :goto_11

    .line 288
    :cond_11
    move-object v0, v7

    .line 289
    :goto_11
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 294
    .line 295
    if-eqz v1, :cond_12

    .line 296
    .line 297
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    goto :goto_12

    .line 302
    :cond_12
    move-object v1, v7

    .line 303
    :goto_12
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    invoke-virtual {p0, v0, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackMidEndNew(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 311
    .line 312
    if-eqz v0, :cond_13

    .line 313
    .line 314
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPageURI()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    goto :goto_13

    .line 319
    :cond_13
    move-object v0, v7

    .line 320
    :goto_13
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 325
    .line 326
    if-eqz v1, :cond_14

    .line 327
    .line 328
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    goto :goto_14

    .line 333
    :cond_14
    move-object v1, v7

    .line 334
    :goto_14
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    invoke-virtual {p0, v0, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackDrawViewStartNew(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 342
    .line 343
    if-eqz v0, :cond_15

    .line 344
    .line 345
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPageRandomIdByGAId()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    if-nez v0, :cond_16

    .line 350
    .line 351
    :cond_15
    const-string v0, "null"

    .line 352
    .line 353
    :cond_16
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrlStart(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    const/4 v8, 0x2

    .line 361
    if-eqz v0, :cond_19

    .line 362
    .line 363
    if-eqz p1, :cond_19

    .line 364
    .line 365
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    if-eqz v1, :cond_19

    .line 370
    .line 371
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->getViewThemeMode()Ljava/lang/Integer;

    .line 372
    .line 373
    .line 374
    move-result-object v2

    .line 375
    if-nez v2, :cond_17

    .line 376
    .line 377
    goto :goto_15

    .line 378
    :cond_17
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 379
    .line 380
    .line 381
    move-result v2

    .line 382
    if-ne v2, v8, :cond_18

    .line 383
    .line 384
    sget v2, Lcom/cloud/tmc/miniapp/R$color;->mini_color_white:I

    .line 385
    .line 386
    goto :goto_16

    .line 387
    :cond_18
    :goto_15
    sget v2, Lcom/cloud/tmc/miniapp/R$color;->mini_color_bg_01:I

    .line 388
    .line 389
    :goto_16
    invoke-static {v0, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 390
    .line 391
    .line 392
    move-result v0

    .line 393
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 394
    .line 395
    .line 396
    :cond_19
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 397
    .line 398
    if-eqz v0, :cond_1a

    .line 399
    .line 400
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    if-eqz v0, :cond_1a

    .line 405
    .line 406
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    goto :goto_17

    .line 411
    :cond_1a
    move-object v0, v7

    .line 412
    :goto_17
    instance-of v1, v0, Landroid/webkit/WebView;

    .line 413
    .line 414
    if-eqz v1, :cond_1b

    .line 415
    .line 416
    check-cast v0, Landroid/webkit/WebView;

    .line 417
    .line 418
    goto :goto_18

    .line 419
    :cond_1b
    move-object v0, v7

    .line 420
    :goto_18
    const-string v1, "preLoadurl"

    .line 421
    .line 422
    invoke-virtual {p0, v0, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->injectJSFromConfig(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    const-string v9, "MiniShellFragment"

    .line 426
    .line 427
    if-eqz p1, :cond_1c

    .line 428
    .line 429
    :try_start_0
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    goto :goto_19

    .line 434
    :catchall_0
    move-exception v0

    .line 435
    goto/16 :goto_27

    .line 436
    .line 437
    :cond_1c
    move-object v0, v7

    .line 438
    :goto_19
    instance-of v1, v0, Lcom/cloud/tmc/render/system/ShellWebView;

    .line 439
    .line 440
    if-eqz v1, :cond_1d

    .line 441
    .line 442
    check-cast v0, Lcom/cloud/tmc/render/system/ShellWebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    .line 444
    goto :goto_1a

    .line 445
    :cond_1d
    move-object v0, v7

    .line 446
    :goto_1a
    const-string v10, "preHtml"

    .line 447
    .line 448
    const-string v1, "loadParams.url"

    .line 449
    .line 450
    const-string v2, "nevermore"

    .line 451
    .line 452
    const-class v11, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;

    .line 453
    .line 454
    const/4 v3, 0x1

    .line 455
    if-eqz v0, :cond_26

    .line 456
    .line 457
    :try_start_1
    invoke-virtual {v0}, Lcom/cloud/tmc/render/system/ShellWebView;->isOffScreenRender()Z

    .line 458
    .line 459
    .line 460
    move-result v0

    .line 461
    if-ne v0, v3, :cond_26

    .line 462
    .line 463
    if-eqz p1, :cond_1e

    .line 464
    .line 465
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->fromWarmup()Z

    .line 466
    .line 467
    .line 468
    move-result v0

    .line 469
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    goto :goto_1b

    .line 474
    :cond_1e
    move-object v0, v7

    .line 475
    :goto_1b
    if-eqz p1, :cond_1f

    .line 476
    .line 477
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    .line 478
    .line 479
    .line 480
    move-result-object v4

    .line 481
    goto :goto_1c

    .line 482
    :cond_1f
    move-object v4, v7

    .line 483
    :goto_1c
    instance-of v5, v4, Lcom/cloud/tmc/render/system/ShellWebView;

    .line 484
    .line 485
    if-eqz v5, :cond_20

    .line 486
    .line 487
    check-cast v4, Lcom/cloud/tmc/render/system/ShellWebView;

    .line 488
    .line 489
    goto :goto_1d

    .line 490
    :cond_20
    move-object v4, v7

    .line 491
    :goto_1d
    if-eqz v4, :cond_21

    .line 492
    .line 493
    invoke-virtual {v4}, Lcom/cloud/tmc/render/system/ShellWebView;->isLoadDataWithBaseURL()Z

    .line 494
    .line 495
    .line 496
    move-result v4

    .line 497
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 498
    .line 499
    .line 500
    move-result-object v4

    .line 501
    goto :goto_1e

    .line 502
    :cond_21
    move-object v4, v7

    .line 503
    :goto_1e
    new-instance v5, Ljava/lang/StringBuilder;

    .line 504
    .line 505
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 506
    .line 507
    .line 508
    const-string v12, "load Shell offscreen -> warmup: "

    .line 509
    .line 510
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 514
    .line 515
    .line 516
    const-string v0, ", loadDataWithBaseURL: "

    .line 517
    .line 518
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    .line 520
    .line 521
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 522
    .line 523
    .line 524
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v0

    .line 528
    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    .line 530
    .line 531
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    instance-of v2, v0, Lcom/cloud/tmc/render/system/ShellWebView;

    .line 536
    .line 537
    if-eqz v2, :cond_22

    .line 538
    .line 539
    check-cast v0, Lcom/cloud/tmc/render/system/ShellWebView;

    .line 540
    .line 541
    goto :goto_1f

    .line 542
    :cond_22
    move-object v0, v7

    .line 543
    :goto_1f
    if-eqz v0, :cond_24

    .line 544
    .line 545
    invoke-virtual {v0}, Lcom/cloud/tmc/render/system/ShellWebView;->isLoadDataWithBaseURL()Z

    .line 546
    .line 547
    .line 548
    move-result v0

    .line 549
    if-ne v0, v3, :cond_24

    .line 550
    .line 551
    iput-boolean v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->typeLoadData:Z

    .line 552
    .line 553
    invoke-virtual {p0, v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->setTrackPointLoadData(Z)V

    .line 554
    .line 555
    .line 556
    iget-object v0, v6, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    .line 557
    .line 558
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->baseUrl:Ljava/lang/String;

    .line 562
    .line 563
    invoke-static {v11}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 564
    .line 565
    .line 566
    move-result-object v0

    .line 567
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;

    .line 568
    .line 569
    if-eqz p2, :cond_23

    .line 570
    .line 571
    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v1

    .line 575
    goto :goto_20

    .line 576
    :cond_23
    move-object v1, v7

    .line 577
    :goto_20
    invoke-interface {v0, v1, v10}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;->addPeroformanceImprove(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    .line 579
    .line 580
    :cond_24
    invoke-static {v11}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 581
    .line 582
    .line 583
    move-result-object v0

    .line 584
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;

    .line 585
    .line 586
    if-eqz p2, :cond_25

    .line 587
    .line 588
    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v1

    .line 592
    goto :goto_21

    .line 593
    :cond_25
    move-object v1, v7

    .line 594
    :goto_21
    const-string v2, "offScreenRender"

    .line 595
    .line 596
    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;->addPeroformanceImprove(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    .line 598
    .line 599
    goto/16 :goto_28

    .line 600
    .line 601
    :cond_26
    if-eqz p1, :cond_27

    .line 602
    .line 603
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->fromWarmup()Z

    .line 604
    .line 605
    .line 606
    move-result v0

    .line 607
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 608
    .line 609
    .line 610
    move-result-object v0

    .line 611
    goto :goto_22

    .line 612
    :cond_27
    move-object v0, v7

    .line 613
    :goto_22
    new-instance v4, Ljava/lang/StringBuilder;

    .line 614
    .line 615
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 616
    .line 617
    .line 618
    const-string v5, "load Shell url -> "

    .line 619
    .line 620
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    .line 622
    .line 623
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 624
    .line 625
    .line 626
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 627
    .line 628
    .line 629
    move-result-object v0

    .line 630
    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    .line 632
    .line 633
    sget-object v0, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 634
    .line 635
    const-string v2, "enableShellPreRequest"

    .line 636
    .line 637
    invoke-virtual {v0, v2, v3}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetBool(Ljava/lang/String;Z)Z

    .line 638
    .line 639
    .line 640
    move-result v0

    .line 641
    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->enablePreRequest:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 642
    .line 643
    const-string v2, "use http -> url is "

    .line 644
    .line 645
    if-eqz v0, :cond_2d

    .line 646
    .line 647
    :try_start_2
    iget-object v0, v6, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    .line 648
    .line 649
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->encryptMD5ToString(Ljava/lang/String;)Ljava/lang/String;

    .line 650
    .line 651
    .line 652
    move-result-object v0

    .line 653
    new-instance v4, Ljava/lang/StringBuilder;

    .line 654
    .line 655
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 656
    .line 657
    .line 658
    const-string v5, "md5 -> "

    .line 659
    .line 660
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    .line 662
    .line 663
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    .line 665
    .line 666
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 667
    .line 668
    .line 669
    move-result-object v4

    .line 670
    invoke-static {v9, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    .line 672
    .line 673
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 674
    .line 675
    .line 676
    move-result-object v4

    .line 677
    if-eqz v4, :cond_29

    .line 678
    .line 679
    const-class v5, Lcom/cloud/tmc/integration/proxy/PreHtmStrategyProxy;

    .line 680
    .line 681
    invoke-static {v5}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 682
    .line 683
    .line 684
    move-result-object v5

    .line 685
    check-cast v5, Lcom/cloud/tmc/integration/proxy/PreHtmStrategyProxy;

    .line 686
    .line 687
    const-string v12, "md5"

    .line 688
    .line 689
    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 690
    .line 691
    .line 692
    invoke-interface {v5, v4, v0, v3, v3}, Lcom/cloud/tmc/integration/proxy/PreHtmStrategyProxy;->getPreHtmlCache(Landroid/content/Context;Ljava/lang/String;IZ)Ljava/lang/String;

    .line 693
    .line 694
    .line 695
    move-result-object v0

    .line 696
    if-nez v0, :cond_28

    .line 697
    .line 698
    goto :goto_24

    .line 699
    :cond_28
    :goto_23
    move-object v4, v0

    .line 700
    goto :goto_25

    .line 701
    :cond_29
    :goto_24
    const-string v0, ""

    .line 702
    .line 703
    goto :goto_23

    .line 704
    :goto_25
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 705
    .line 706
    .line 707
    move-result v0

    .line 708
    if-lez v0, :cond_2c

    .line 709
    .line 710
    iput-boolean v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->typeLoadData:Z

    .line 711
    .line 712
    invoke-virtual {p0, v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->setTrackPointLoadData(Z)V

    .line 713
    .line 714
    .line 715
    iget-object v0, v6, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    .line 716
    .line 717
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 718
    .line 719
    .line 720
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->baseUrl:Ljava/lang/String;

    .line 721
    .line 722
    if-eqz p1, :cond_2a

    .line 723
    .line 724
    const-string v3, "text/html"

    .line 725
    .line 726
    const-string v5, "UTF-8"

    .line 727
    .line 728
    const/4 v12, 0x0

    .line 729
    move-object v0, p1

    .line 730
    move-object v1, v6

    .line 731
    move-object v2, v4

    .line 732
    move-object v4, v5

    .line 733
    move-object v5, v12

    .line 734
    invoke-interface/range {v0 .. v5}, Lcom/cloud/tmc/kernel/render/IRender;->loadDataWithBaseURL(Lcom/cloud/tmc/kernel/render/LoadParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    .line 736
    .line 737
    :cond_2a
    iget-object v0, v6, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    .line 738
    .line 739
    new-instance v1, Ljava/lang/StringBuilder;

    .line 740
    .line 741
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 742
    .line 743
    .line 744
    const-string v2, "use loadDataWithBaseURL -> url is "

    .line 745
    .line 746
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    .line 748
    .line 749
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    .line 751
    .line 752
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 753
    .line 754
    .line 755
    move-result-object v0

    .line 756
    invoke-static {v9, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    .line 758
    .line 759
    invoke-static {v11}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 760
    .line 761
    .line 762
    move-result-object v0

    .line 763
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;

    .line 764
    .line 765
    if-eqz p2, :cond_2b

    .line 766
    .line 767
    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 768
    .line 769
    .line 770
    move-result-object v1

    .line 771
    goto :goto_26

    .line 772
    :cond_2b
    move-object v1, v7

    .line 773
    :goto_26
    invoke-interface {v0, v1, v10}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;->addPeroformanceImprove(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    .line 775
    .line 776
    goto :goto_28

    .line 777
    :cond_2c
    iget-object v0, v6, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    .line 778
    .line 779
    new-instance v1, Ljava/lang/StringBuilder;

    .line 780
    .line 781
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 782
    .line 783
    .line 784
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    .line 786
    .line 787
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    .line 789
    .line 790
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 791
    .line 792
    .line 793
    move-result-object v0

    .line 794
    invoke-static {v9, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    .line 796
    .line 797
    if-eqz p1, :cond_2f

    .line 798
    .line 799
    invoke-interface {p1, v6}, Lcom/cloud/tmc/kernel/render/IRender;->load(Lcom/cloud/tmc/kernel/render/LoadParams;)V

    .line 800
    .line 801
    .line 802
    goto :goto_28

    .line 803
    :cond_2d
    iget-object v0, v6, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    .line 804
    .line 805
    new-instance v1, Ljava/lang/StringBuilder;

    .line 806
    .line 807
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 808
    .line 809
    .line 810
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    .line 812
    .line 813
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    .line 815
    .line 816
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 817
    .line 818
    .line 819
    move-result-object v0

    .line 820
    invoke-static {v9, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    .line 822
    .line 823
    if-eqz p1, :cond_2f

    .line 824
    .line 825
    invoke-interface {p1, v6}, Lcom/cloud/tmc/kernel/render/IRender;->load(Lcom/cloud/tmc/kernel/render/LoadParams;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 826
    .line 827
    .line 828
    goto :goto_28

    .line 829
    :goto_27
    const/4 v1, 0x0

    .line 830
    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->typeLoadData:Z

    .line 831
    .line 832
    if-eqz p1, :cond_2e

    .line 833
    .line 834
    invoke-interface {p1, v6}, Lcom/cloud/tmc/kernel/render/IRender;->load(Lcom/cloud/tmc/kernel/render/LoadParams;)V

    .line 835
    .line 836
    .line 837
    :cond_2e
    invoke-static {v9, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 838
    .line 839
    .line 840
    :cond_2f
    :goto_28
    const-class p1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 841
    .line 842
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 843
    .line 844
    .line 845
    move-result-object p1

    .line 846
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 847
    .line 848
    invoke-interface {p1, p2}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 849
    .line 850
    .line 851
    move-result-object p1

    .line 852
    if-eqz p1, :cond_31

    .line 853
    .line 854
    new-instance p2, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEvent;

    .line 855
    .line 856
    const-string v0, "pageEnter"

    .line 857
    .line 858
    invoke-direct {p2, v0}, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEvent;-><init>(Ljava/lang/String;)V

    .line 859
    .line 860
    .line 861
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 862
    .line 863
    if-eqz v0, :cond_30

    .line 864
    .line 865
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 866
    .line 867
    .line 868
    move-result-object v0

    .line 869
    if-eqz v0, :cond_30

    .line 870
    .line 871
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderId()Ljava/lang/String;

    .line 872
    .line 873
    .line 874
    move-result-object v0

    .line 875
    goto :goto_29

    .line 876
    :cond_30
    move-object v0, v7

    .line 877
    :goto_29
    invoke-virtual {p2, v0}, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEvent;->setRenderId(Ljava/lang/String;)V

    .line 878
    .line 879
    .line 880
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 881
    .line 882
    const-string v0, "renderOnMessageReady"

    .line 883
    .line 884
    invoke-interface {p1, v0, p2}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->postEvent(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)V

    .line 885
    .line 886
    .line 887
    :cond_31
    invoke-virtual {p0, v8}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->initDomLoadMonitor(I)V

    .line 888
    .line 889
    .line 890
    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 891
    .line 892
    if-eqz p1, :cond_32

    .line 893
    .line 894
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPageURI()Ljava/lang/String;

    .line 895
    .line 896
    .line 897
    move-result-object p1

    .line 898
    goto :goto_2a

    .line 899
    :cond_32
    move-object p1, v7

    .line 900
    :goto_2a
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 901
    .line 902
    .line 903
    move-result-object v1

    .line 904
    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 905
    .line 906
    if-eqz p1, :cond_33

    .line 907
    .line 908
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 909
    .line 910
    .line 911
    move-result-object v7

    .line 912
    :cond_33
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 913
    .line 914
    .line 915
    move-result-object v2

    .line 916
    const/4 v4, 0x4

    .line 917
    const/4 v5, 0x0

    .line 918
    const/4 v3, 0x0

    .line 919
    move-object v0, p0

    .line 920
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackDrawViewEndForApp$default(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 921
    .line 922
    .line 923
    return-void
.end method

.method public static synthetic j0(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->initView$lambda$7$lambda$5$lambda$4(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic k0(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->debugRefresh$lambda$28(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic l0(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->initView$lambda$7$lambda$5$lambda$3(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final onReceivedError$lambda$33(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)V
    .locals 7

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v2, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$onReceivedError$1$1;

    .line 7
    .line 8
    invoke-direct {v2, p0}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$onReceivedError$1$1;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)V

    .line 9
    .line 10
    .line 11
    sget v3, Lcom/cloud/tmc/miniapp/R$string;->loading_error_tv:I

    .line 12
    .line 13
    const-string v4, ""

    .line 14
    .line 15
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    move-object v5, v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v5, v1

    .line 27
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    instance-of v6, v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 32
    .line 33
    if-eqz v6, :cond_1

    .line 34
    .line 35
    check-cast v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move-object v0, v1

    .line 39
    :goto_1
    if-eqz v0, :cond_2

    .line 40
    .line 41
    invoke-static {v0}, Lcom/cloud/tmc/miniapp/ui/extension/PinForLaterExtensionKt;->getPinForLaterListener(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    move-object v6, v0

    .line 46
    goto :goto_2

    .line 47
    :cond_2
    move-object v6, v1

    .line 48
    :goto_2
    move-object v1, p0

    .line 49
    invoke-virtual/range {v1 .. v6}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->showError(Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->getViewThemeMode()Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    if-nez v0, :cond_3

    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    const/4 v1, 0x1

    .line 64
    if-ne v0, v1, :cond_4

    .line 65
    .line 66
    goto :goto_4

    .line 67
    :cond_4
    :goto_3
    const/4 v1, 0x0

    .line 68
    :goto_4
    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->setCapsuleStyle(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .line 70
    .line 71
    :catchall_0
    return-void
.end method

.method private static final onViewCreated$lambda$1(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;Landroid/view/View;)V
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
    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->hideCustomView(Z)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final openPage()V
    .locals 6

    .line 1
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
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 52
    .line 53
    if-eqz v2, :cond_1

    .line 54
    .line 55
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getPageURI()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    move-object v2, v3

    .line 61
    :goto_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 73
    .line 74
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 79
    .line 80
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 81
    .line 82
    if-eqz v2, :cond_2

    .line 83
    .line 84
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    if-eqz v2, :cond_2

    .line 89
    .line 90
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    goto :goto_2

    .line 95
    :cond_2
    move-object v2, v3

    .line 96
    :goto_2
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 97
    .line 98
    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->DrawView:Ljava/lang/String;

    .line 99
    .line 100
    invoke-interface {v1, v2, v4, v5, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    instance-of v1, v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 108
    .line 109
    if-eqz v1, :cond_3

    .line 110
    .line 111
    check-cast v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_3
    move-object v0, v3

    .line 115
    :goto_3
    const/4 v1, 0x0

    .line 116
    const/4 v2, 0x1

    .line 117
    if-eqz v0, :cond_6

    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->isFirstLaunch()Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-ne v0, v2, :cond_6

    .line 124
    .line 125
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->sendAppReadyToRender()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    instance-of v2, v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 133
    .line 134
    if-eqz v2, :cond_4

    .line 135
    .line 136
    move-object v3, v0

    .line 137
    check-cast v3, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 138
    .line 139
    :cond_4
    if-nez v3, :cond_5

    .line 140
    .line 141
    goto/16 :goto_6

    .line 142
    .line 143
    :cond_5
    invoke-virtual {v3, v1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->setFirstLaunch(Z)V

    .line 144
    .line 145
    .line 146
    goto/16 :goto_6

    .line 147
    .line 148
    :cond_6
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->sendPageReadyToRender()V

    .line 149
    .line 150
    .line 151
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 152
    .line 153
    if-eqz v0, :cond_8

    .line 154
    .line 155
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    if-eqz v0, :cond_8

    .line 160
    .line 161
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getEngineProxy()Lcom/cloud/tmc/kernel/engine/IEngine;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    if-eqz v0, :cond_8

    .line 166
    .line 167
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/engine/IEngine;->getEngineRouter()Lcom/cloud/tmc/kernel/engine/EngineRouter;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    if-eqz v0, :cond_8

    .line 172
    .line 173
    iget-object v4, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 174
    .line 175
    if-eqz v4, :cond_7

    .line 176
    .line 177
    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    if-eqz v4, :cond_7

    .line 182
    .line 183
    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/App;->getEngineProxy()Lcom/cloud/tmc/kernel/engine/IEngine;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    if-eqz v4, :cond_7

    .line 188
    .line 189
    invoke-interface {v4}, Lcom/cloud/tmc/kernel/engine/IEngine;->getWorkerId()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    goto :goto_4

    .line 194
    :cond_7
    move-object v4, v3

    .line 195
    :goto_4
    invoke-interface {v0, v4}, Lcom/cloud/tmc/kernel/engine/EngineRouter;->getWorkerById(Ljava/lang/String;)Lcom/cloud/tmc/kernel/worker/JSI;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    goto :goto_5

    .line 200
    :cond_8
    move-object v0, v3

    .line 201
    :goto_5
    if-eqz v0, :cond_9

    .line 202
    .line 203
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/worker/JSI;->firstGetPackageFileStatus()Ljava/lang/Boolean;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 208
    .line 209
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    :cond_9
    if-eqz v1, :cond_a

    .line 214
    .line 215
    invoke-static {p0, v3, v2, v3}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->sendPageEnterToWorker$default(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Ljava/util/Map;ILjava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    goto :goto_6

    .line 219
    :cond_a
    const-class v0, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 220
    .line 221
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 226
    .line 227
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 228
    .line 229
    if-eqz v1, :cond_b

    .line 230
    .line 231
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    :cond_b
    invoke-interface {v0, v3}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    if-eqz v0, :cond_c

    .line 240
    .line 241
    sget-object v1, Lcom/cloud/tmc/worker/WorkerManager;->Companion:Lcom/cloud/tmc/worker/WorkerManager$Companion;

    .line 242
    .line 243
    invoke-virtual {v1}, Lcom/cloud/tmc/worker/WorkerManager$Companion;->getEVENT_RESEND_PAGE_ENTER()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    new-instance v2, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$openPage$1;

    .line 248
    .line 249
    invoke-direct {v2, p0}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$openPage$1;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)V

    .line 250
    .line 251
    .line 252
    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->register(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    .line 253
    .line 254
    .line 255
    :cond_c
    :goto_6
    return-void
.end method

.method private final prePage()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

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
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->openPage()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-class v0, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 31
    .line 32
    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    new-instance v1, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$prePage$1;

    .line 39
    .line 40
    invoke-direct {v1, p0, v0}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$prePage$1;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;)V

    .line 41
    .line 42
    .line 43
    const-string v2, "renderOnMessageReady"

    .line 44
    .line 45
    invoke-interface {v0, v2, v1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->register(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    :goto_0
    return-void
.end method

.method private final recordPointAfterLoadUrl(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/kernel/render/LoadParams;Ljava/lang/String;)V
    .locals 6

    .line 1
    :try_start_0
    iget-object p1, p2, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/UrlUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const-string p1, ""

    .line 14
    .line 15
    :cond_0
    move-object v1, p1

    .line 16
    const/4 v4, 0x4

    .line 17
    const/4 v5, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    move-object v0, p0

    .line 20
    move-object v2, p3

    .line 21
    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackDrawViewEndForApp$default(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    :catchall_0
    return-void
.end method

.method private final recordPointBeforeLoadUrl(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/kernel/render/LoadParams;Ljava/lang/String;)V
    .locals 9

    .line 1
    :try_start_0
    iget-object v0, p2, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/cloud/tmc/kernel/utils/UrlUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    const-string v1, ""

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    move-object v0, v1

    .line 16
    :cond_0
    const/4 v2, 0x1

    .line 17
    :try_start_1
    invoke-virtual {p0, v0, v2, p3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->setLoadingUrl(Ljava/lang/String;ZLjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v4, ""

    .line 21
    .line 22
    const-string v5, ""

    .line 23
    .line 24
    iget-object v0, p2, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Lcom/cloud/tmc/kernel/utils/UrlUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    move-object v6, v1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move-object v6, v0

    .line 39
    :goto_0
    new-instance v8, Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 40
    .line 41
    invoke-direct {v8}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;-><init>()V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppChainContext()Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    move-object v0, v2

    .line 55
    :goto_1
    invoke-virtual {v8, v0}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->setAppChainContext(Lcom/cloud/tmc/integration/chain/app/AppChainContext;)V

    .line 56
    .line 57
    .line 58
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 59
    .line 60
    move-object v3, p0

    .line 61
    move-object v7, p3

    .line 62
    invoke-virtual/range {v3 .. v8}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->addPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/chain/page/PageChainContext;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackPageStart()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    instance-of v3, v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 73
    .line 74
    if-eqz v3, :cond_3

    .line 75
    .line 76
    check-cast v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_3
    move-object v0, v2

    .line 80
    :goto_2
    if-eqz v0, :cond_7

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->isFirstLaunch()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_7

    .line 87
    .line 88
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 89
    .line 90
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 95
    .line 96
    if-eqz p1, :cond_4

    .line 97
    .line 98
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    goto :goto_3

    .line 103
    :cond_4
    move-object p1, v2

    .line 104
    :goto_3
    instance-of v3, p1, Lcom/cloud/tmc/integration/structure/node/PageNode;

    .line 105
    .line 106
    if-eqz v3, :cond_5

    .line 107
    .line 108
    check-cast p1, Lcom/cloud/tmc/integration/structure/node/PageNode;

    .line 109
    .line 110
    goto :goto_4

    .line 111
    :cond_5
    move-object p1, v2

    .line 112
    :goto_4
    if-eqz p1, :cond_6

    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    if-eqz p1, :cond_6

    .line 119
    .line 120
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    :cond_6
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_PV:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 125
    .line 126
    invoke-interface {v0, v2, p1, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    :cond_7
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackCreateRenderStart()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackCreateRenderEnd()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackLoadRenderFrameworkStart()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackLoadRenderFrameworkEnd()V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackCreateWorkerStart()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackCreateWorkerEnd()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackLoadWorkerFrameworkStart()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackLoadWorkerFrameworkEnd()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackDrawViewStart()V

    .line 154
    .line 155
    .line 156
    iget-object p1, p2, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    .line 157
    .line 158
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/UrlUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    if-nez p1, :cond_8

    .line 167
    .line 168
    move-object p1, v1

    .line 169
    :cond_8
    invoke-virtual {p0, p1, p3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackCreateContainerStartNew(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    iget-object p1, p2, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    .line 173
    .line 174
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/UrlUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    if-nez p1, :cond_9

    .line 183
    .line 184
    move-object p1, v1

    .line 185
    :cond_9
    invoke-virtual {p0, p1, p3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackCreateContainerEndNew(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    iget-object p1, p2, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    .line 189
    .line 190
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/UrlUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    if-nez p1, :cond_a

    .line 199
    .line 200
    move-object p1, v1

    .line 201
    :cond_a
    invoke-virtual {p0, p1, p3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackCreateRenderStartNew(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    iget-object p1, p2, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    .line 205
    .line 206
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/UrlUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    if-nez p1, :cond_b

    .line 215
    .line 216
    move-object p1, v1

    .line 217
    :cond_b
    invoke-virtual {p0, p1, p3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackCreateRenderEndNew(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    iget-object p1, p2, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    .line 221
    .line 222
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/UrlUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    if-nez p1, :cond_c

    .line 231
    .line 232
    move-object p1, v1

    .line 233
    :cond_c
    invoke-virtual {p0, p1, p3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackLoadRenderFrameworkStartNew(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    iget-object p1, p2, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    .line 237
    .line 238
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/UrlUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    if-nez p1, :cond_d

    .line 247
    .line 248
    move-object p1, v1

    .line 249
    :cond_d
    invoke-virtual {p0, p1, p3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackLoadRenderFrameworkEndNew(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    iget-object p1, p2, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    .line 253
    .line 254
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/UrlUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    if-nez p1, :cond_e

    .line 263
    .line 264
    move-object p1, v1

    .line 265
    :cond_e
    invoke-virtual {p0, p1, p3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackCreateWorkerStartNew(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    iget-object p1, p2, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    .line 269
    .line 270
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/UrlUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    if-nez p1, :cond_f

    .line 279
    .line 280
    move-object p1, v1

    .line 281
    :cond_f
    invoke-virtual {p0, p1, p3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackCreateWorkerEndNew(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    iget-object p1, p2, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    .line 285
    .line 286
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/UrlUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    if-nez p1, :cond_10

    .line 295
    .line 296
    move-object p1, v1

    .line 297
    :cond_10
    invoke-virtual {p0, p1, p3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackLoadWorkerFrameworkStartNew(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    iget-object p1, p2, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    .line 301
    .line 302
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/UrlUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object p1

    .line 310
    if-nez p1, :cond_11

    .line 311
    .line 312
    move-object p1, v1

    .line 313
    :cond_11
    invoke-virtual {p0, p1, p3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackLoadWorkerFrameworkEndNew(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    iget-object p1, p2, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    .line 317
    .line 318
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/UrlUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    if-nez p1, :cond_12

    .line 327
    .line 328
    move-object p1, v1

    .line 329
    :cond_12
    invoke-virtual {p0, p1, p3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackMidStartNew(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    iget-object p1, p2, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    .line 333
    .line 334
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object p1

    .line 338
    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/UrlUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object p1

    .line 342
    if-nez p1, :cond_13

    .line 343
    .line 344
    move-object p1, v1

    .line 345
    :cond_13
    invoke-virtual {p0, p1, p3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackMidEndNew(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    iget-object p1, p2, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    .line 349
    .line 350
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object p1

    .line 354
    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/UrlUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object p1

    .line 358
    if-nez p1, :cond_14

    .line 359
    .line 360
    goto :goto_5

    .line 361
    :cond_14
    move-object v1, p1

    .line 362
    :goto_5
    invoke-virtual {p0, v1, p3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackDrawViewStartNew(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 366
    .line 367
    if-eqz p1, :cond_15

    .line 368
    .line 369
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPageRandomIdByGAId()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object p1

    .line 373
    if-nez p1, :cond_16

    .line 374
    .line 375
    :cond_15
    const-string p1, "null"

    .line 376
    .line 377
    :cond_16
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrlStart(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 378
    .line 379
    .line 380
    :catchall_0
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

.method private static final setPage$lambda$14(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;Lcom/cloud/tmc/integration/structure/Page;)V
    .locals 9

    .line 1
    const-string v0, "MiniShellFragment"

    .line 2
    .line 3
    const-string v1, "this$0"

    .line 4
    .line 5
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "$page"

    .line 9
    .line 10
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v1, v1, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO00o:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v1, v2

    .line 22
    :goto_0
    if-eqz v1, :cond_3

    .line 23
    .line 24
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPageURI()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const/4 v4, 0x1

    .line 41
    invoke-virtual {p0, v1, v4, v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->setLoadingUrl(Ljava/lang/String;ZLjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPageURI()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    iget-object v8, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->pageChainContext:Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 61
    .line 62
    const-string v1, "pageChainContext"

    .line 63
    .line 64
    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string v4, ""

    .line 68
    .line 69
    const-string v5, ""

    .line 70
    .line 71
    move-object v3, p0

    .line 72
    invoke-virtual/range {v3 .. v8}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->addPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/chain/page/PageChainContext;)V

    .line 73
    .line 74
    .line 75
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPageURI()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {p0, v1, v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackCreateContainerStartNew(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPageURI()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {p0, v1, v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackCreateContainerEndNew(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackPageStart()V

    .line 114
    .line 115
    .line 116
    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->setPageOnMain(Lcom/cloud/tmc/integration/structure/Page;)V

    .line 117
    .line 118
    .line 119
    :try_start_0
    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 120
    .line 121
    if-eqz p1, :cond_1

    .line 122
    .line 123
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppLifecycleCallback()Lcom/cloud/tmc/integration/callback/ICheckMiniAppLifecycleCallback;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    goto :goto_1

    .line 128
    :catchall_0
    move-exception p0

    .line 129
    goto :goto_2

    .line 130
    :cond_1
    move-object p1, v2

    .line 131
    :goto_1
    if-nez p1, :cond_4

    .line 132
    .line 133
    const-string p1, "setMiniappLifecycleCallback"

    .line 134
    .line 135
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 139
    .line 140
    if-eqz p1, :cond_4

    .line 141
    .line 142
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    instance-of v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 147
    .line 148
    if-eqz v1, :cond_2

    .line 149
    .line 150
    move-object v2, p0

    .line 151
    check-cast v2, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 152
    .line 153
    :cond_2
    invoke-interface {p1, v2}, Lcom/cloud/tmc/integration/structure/App;->setMiniappLifecycleCallback(Lcom/cloud/tmc/integration/callback/ICheckMiniAppLifecycleCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    .line 155
    .line 156
    goto :goto_3

    .line 157
    :goto_2
    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_3
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->mPendingSetPage:Lcom/cloud/tmc/integration/structure/Page;

    .line 162
    .line 163
    :cond_4
    :goto_3
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
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPageURI()Ljava/lang/String;

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
    new-instance v1, Lcom/cloud/tmc/miniapp/ui/p1;

    .line 57
    .line 58
    invoke-direct {v1, p1, p0}, Lcom/cloud/tmc/miniapp/ui/p1;-><init>(Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)V

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
    const-string v0, "MiniShellFragment"

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

.method private static final setPageOnMain$lambda$20(Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)V
    .locals 9

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Lcom/cloud/tmc/integration/proxy/AuthorityProxy;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/cloud/tmc/integration/proxy/AuthorityProxy;

    .line 13
    .line 14
    invoke-interface {v0, p0}, Lcom/cloud/tmc/integration/proxy/AuthorityProxy;->checkFullScreenAuthority(Lcom/cloud/tmc/integration/structure/Page;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-interface {v1, v0}, Lcom/cloud/tmc/kernel/render/IRender;->setSupportFullScreen(Z)V

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-interface {v0, p1}, Lcom/cloud/tmc/kernel/render/IRender;->registerPageCallback(Lcom/cloud/tmc/kernel/render/IPageCallback;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const/4 v1, 0x0

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
    goto :goto_0

    .line 48
    :cond_2
    move-object v0, v1

    .line 49
    :goto_0
    instance-of v2, v0, Lcom/cloud/tmc/kernel/render/IWebView;

    .line 50
    .line 51
    if-eqz v2, :cond_3

    .line 52
    .line 53
    check-cast v0, Lcom/cloud/tmc/kernel/render/IWebView;

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    move-object v0, v1

    .line 57
    :goto_1
    if-nez v0, :cond_4

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_4
    iget-object v2, p1, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 61
    .line 62
    if-eqz v2, :cond_5

    .line 63
    .line 64
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    if-eqz v2, :cond_5

    .line 69
    .line 70
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/AppModel;->getAppinfoCategoryType()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    goto :goto_2

    .line 75
    :cond_5
    const/4 v2, 0x0

    .line 76
    :goto_2
    invoke-interface {v0, v2}, Lcom/cloud/tmc/kernel/render/IWebView;->setMiniAppType(I)V

    .line 77
    .line 78
    .line 79
    :goto_3
    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    if-eqz v0, :cond_6

    .line 84
    .line 85
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    goto :goto_4

    .line 90
    :cond_6
    move-object v0, v1

    .line 91
    :goto_4
    instance-of v2, v0, Landroid/webkit/WebView;

    .line 92
    .line 93
    if-eqz v2, :cond_7

    .line 94
    .line 95
    check-cast v0, Landroid/webkit/WebView;

    .line 96
    .line 97
    goto :goto_5

    .line 98
    :cond_7
    move-object v0, v1

    .line 99
    :goto_5
    if-eqz v0, :cond_8

    .line 100
    .line 101
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    goto :goto_6

    .line 106
    :cond_8
    move-object v0, v1

    .line 107
    :goto_6
    if-nez v0, :cond_9

    .line 108
    .line 109
    goto :goto_7

    .line 110
    :cond_9
    const/4 v2, 0x1

    .line 111
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 112
    .line 113
    .line 114
    :goto_7
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    if-eqz v6, :cond_b

    .line 119
    .line 120
    iget-object v0, p1, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    .line 121
    .line 122
    if-eqz v0, :cond_a

    .line 123
    .line 124
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0OO:Landroid/widget/FrameLayout;

    .line 125
    .line 126
    :cond_a
    move-object v5, v1

    .line 127
    iget-object v7, p1, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 128
    .line 129
    move-object v3, p1

    .line 130
    move-object v4, p0

    .line 131
    move-object v8, p1

    .line 132
    invoke-static/range {v3 .. v8}, Lcom/cloud/tmc/miniapp/ui/extension/FullScreenExtensionKt;->addFullScreenJSIListener(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Lcom/cloud/tmc/integration/structure/Page;Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentActivity;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V

    .line 133
    .line 134
    .line 135
    :cond_b
    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    if-eqz p0, :cond_c

    .line 140
    .line 141
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$setPageOnMain$1$2;

    .line 142
    .line 143
    invoke-direct {v0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$setPageOnMain$1$2;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)V

    .line 144
    .line 145
    .line 146
    invoke-interface {p0, v0}, Lcom/cloud/tmc/kernel/render/IRender;->registerICustomViewVisiable(Lcom/cloud/tmc/kernel/render/ICustomViewVisiable;)V

    .line 147
    .line 148
    .line 149
    :cond_c
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->initView()V

    .line 150
    .line 151
    .line 152
    invoke-direct {p1}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->init()V

    .line 153
    .line 154
    .line 155
    return-void
.end method

.method private final showCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->mCustomView:Landroid/view/View;

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
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->mCustomView:Landroid/view/View;

    .line 12
    .line 13
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    .line 14
    .line 15
    if-eqz p1, :cond_6

    .line 16
    .line 17
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0OO:Landroid/widget/FrameLayout;

    .line 18
    .line 19
    if-eqz p1, :cond_6

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
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->mCustomView:Landroid/view/View;

    .line 42
    .line 43
    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->contextView:Landroid/view/View;

    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    const-string v1, "contextView"

    .line 50
    .line 51
    if-nez p1, :cond_3

    .line 52
    .line 53
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    move-object p1, v0

    .line 57
    :cond_3
    if-eqz p1, :cond_5

    .line 58
    .line 59
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->contextView:Landroid/view/View;

    .line 60
    .line 61
    if-nez p1, :cond_4

    .line 62
    .line 63
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_4
    move-object v0, p1

    .line 68
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    iput p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->mScrollY:I

    .line 73
    .line 74
    :cond_5
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 75
    .line 76
    :cond_6
    return-void
.end method

.method private final updateTitleBarStyle()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/node/TitleBarNode;->hideHomeButton()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->checkUpdateScreenButton()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/node/TitleBarNode;->setNavigationBarIconStyle(Z)V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0o0:Landroid/widget/ProgressBar;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    const/4 v0, 0x0

    .line 27
    :goto_0
    if-nez v0, :cond_3

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_3
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getWindow()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    if-eqz v2, :cond_4

    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getEnableNavigationBarLoading()Ljava/lang/Boolean;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 41
    .line 42
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    :cond_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    :goto_1
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
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

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
    new-instance v7, Lcom/cloud/tmc/miniapp/ui/o1;

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
    invoke-direct/range {v1 .. v6}, Lcom/cloud/tmc/miniapp/ui/o1;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;IIJ)V

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
    invoke-virtual {p0, p2, p1}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final checkUpdateScreenButton()V
    .locals 0

    .line 1
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
    new-instance v1, Lcom/cloud/tmc/miniapp/ui/i1;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/ui/i1;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)V

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
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "consumeTime"

    .line 6
    .line 7
    invoke-interface {v0, v1, p0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->unregister(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 11
    .line 12
    invoke-static {p0, v0}, Lcom/cloud/tmc/miniapp/ui/extension/FullScreenExtensionKt;->removeFullScreenJSIListener(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Lcom/cloud/tmc/integration/structure/Page;)V

    .line 13
    .line 14
    .line 15
    const-class v0, Lcom/cloud/tmc/integration/performanceanalyse/screen/IScreenInspectProxy;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/cloud/tmc/integration/performanceanalyse/screen/IScreenInspectProxy;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move-object v1, v2

    .line 34
    :goto_0
    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 35
    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->getPageURI()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    move-object v3, v2

    .line 44
    :goto_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-interface {v0, v1, v3}, Lcom/cloud/tmc/integration/performanceanalyse/screen/IScreenInspectProxy;->destroy(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 52
    .line 53
    if-eqz v0, :cond_6

    .line 54
    .line 55
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    if-eqz v0, :cond_6

    .line 60
    .line 61
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->fromWarmup()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    const/4 v1, 0x1

    .line 66
    if-ne v0, v1, :cond_6

    .line 67
    .line 68
    const-class v0, Lcom/cloud/tmc/integration/performance/innerrender/IInnerRenderPool;

    .line 69
    .line 70
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Lcom/cloud/tmc/integration/performance/innerrender/IInnerRenderPool;

    .line 75
    .line 76
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 77
    .line 78
    if-eqz v1, :cond_3

    .line 79
    .line 80
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    if-eqz v1, :cond_3

    .line 85
    .line 86
    invoke-interface {v1}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderId()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    goto :goto_2

    .line 91
    :cond_3
    move-object v1, v2

    .line 92
    :goto_2
    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/performance/innerrender/IInnerRenderPool;->removeRender(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    const-class v0, Lcom/cloud/tmc/integration/performance/innerwebview/IInnerH5WebviewPool;

    .line 96
    .line 97
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    const-string v1, "get(IInnerH5WebviewPool::class.java)"

    .line 102
    .line 103
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    check-cast v0, Lcom/cloud/tmc/integration/performance/innerwebview/IInnerH5WebviewPool;

    .line 107
    .line 108
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 109
    .line 110
    if-eqz v1, :cond_4

    .line 111
    .line 112
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    goto :goto_3

    .line 117
    :cond_4
    move-object v1, v2

    .line 118
    :goto_3
    const/4 v3, 0x0

    .line 119
    const/4 v4, 0x2

    .line 120
    invoke-static {v0, v1, v3, v4, v2}, Lcom/cloud/tmc/integration/performance/innerwebview/IInnerH5WebviewPool$DefaultImpls;->removeWebview$default(Lcom/cloud/tmc/integration/performance/innerwebview/IInnerH5WebviewPool;Lcom/cloud/tmc/kernel/render/IRender;ZILjava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    sget-object v0, Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool;->INSTANCE:Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool;

    .line 124
    .line 125
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 126
    .line 127
    if-eqz v1, :cond_5

    .line 128
    .line 129
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    goto :goto_4

    .line 134
    :cond_5
    move-object v1, v2

    .line 135
    :goto_4
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool;->destroy(Lcom/cloud/tmc/kernel/render/IRender;)V

    .line 136
    .line 137
    .line 138
    goto :goto_5

    .line 139
    :cond_6
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 140
    .line 141
    if-eqz v0, :cond_7

    .line 142
    .line 143
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    if-eqz v0, :cond_7

    .line 148
    .line 149
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->destroy()V

    .line 150
    .line 151
    .line 152
    :cond_7
    :goto_5
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 153
    .line 154
    if-eqz v0, :cond_8

    .line 155
    .line 156
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    goto :goto_6

    .line 161
    :catchall_0
    move-exception v0

    .line 162
    goto :goto_7

    .line 163
    :cond_8
    move-object v0, v2

    .line 164
    :goto_6
    if-nez v0, :cond_9

    .line 165
    .line 166
    goto :goto_8

    .line 167
    :cond_9
    invoke-interface {v0, v2}, Lcom/cloud/tmc/integration/structure/App;->setLoadHtmlDataCallback(Lcom/cloud/tmc/integration/callback/ILoadHtmlDataCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    .line 169
    .line 170
    goto :goto_8

    .line 171
    :goto_7
    const-string v1, "MiniShellFragment"

    .line 172
    .line 173
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 174
    .line 175
    .line 176
    :goto_8
    return-void
.end method

.method public exitFullScreen()Ljava/lang/Boolean;
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContentView()Landroid/view/ViewGroup;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v0, v1

    .line 18
    :goto_0
    instance-of v2, v0, Landroid/webkit/WebView;

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    move-object v1, v0

    .line 23
    check-cast v1, Landroid/webkit/WebView;

    .line 24
    .line 25
    :cond_1
    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getCurrentUrl(Landroid/webkit/WebView;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method

.method public final getEnablePreRequest()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->enablePreRequest:Z

    .line 2
    .line 3
    return v0
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
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

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
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

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
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

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

.method public getStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->mStatusLayout:Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTabBar()Lcom/cloud/tmc/integration/structure/ui/TabBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

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
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

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

.method public getViewThemeMode()Ljava/lang/Integer;
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method public hideNavigationBarLoading()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

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
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

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
    .locals 11

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
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    .line 22
    .line 23
    if-eqz v3, :cond_5

    .line 24
    .line 25
    iget-object v4, v3, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0oO:Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;

    .line 26
    .line 27
    iget-object v5, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 28
    .line 29
    invoke-virtual {v4, v5}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->attachPage(Lcom/cloud/tmc/integration/structure/Page;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getWindow()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    if-eqz v5, :cond_2

    .line 37
    .line 38
    invoke-virtual {v5}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getNavigationBarTitleText()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    if-nez v5, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    move-object v2, v5

    .line 46
    goto :goto_2

    .line 47
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 48
    .line 49
    iget-object v2, v1, Lcom/cloud/tmc/integration/model/EntryInfo;->title:Ljava/lang/String;

    .line 50
    .line 51
    :cond_3
    :goto_2
    invoke-virtual {v4, v2}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->setTitle(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    new-instance v1, Lcom/cloud/tmc/miniapp/ui/l1;

    .line 55
    .line 56
    invoke-direct {v1, v0}, Lcom/cloud/tmc/miniapp/ui/l1;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4, v1}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->setOnAddScreenClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    .line 61
    .line 62
    new-instance v1, Lcom/cloud/tmc/miniapp/ui/m1;

    .line 63
    .line 64
    invoke-direct {v1, v0}, Lcom/cloud/tmc/miniapp/ui/m1;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4, v1}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->setOnHomeClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    .line 69
    .line 70
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/n1;

    .line 71
    .line 72
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/n1;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4, v0}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->setOnBackClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    .line 77
    .line 78
    iget-object v5, v3, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0o:Lcom/cloud/tmc/miniapp/widget/TabBarView;

    .line 79
    .line 80
    const-string v0, "v"

    .line 81
    .line 82
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 86
    .line 87
    const/4 v1, 0x1

    .line 88
    if-eqz v0, :cond_4

    .line 89
    .line 90
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-ne v0, v1, :cond_4

    .line 95
    .line 96
    move v0, v1

    .line 97
    goto :goto_3

    .line 98
    :cond_4
    const/4 v0, 0x0

    .line 99
    :goto_3
    invoke-static {v5, v0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisibleOrGone(Landroid/view/View;Z)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 103
    .line 104
    if-eqz v0, :cond_5

    .line 105
    .line 106
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-ne v0, v1, :cond_5

    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getAppLoadResult()Lcom/cloud/tmc/integration/structure/AppLoadResult;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;->getTabBar(Lcom/cloud/tmc/integration/structure/AppLoadResult;)Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    iget-object v7, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 121
    .line 122
    const/4 v9, 0x4

    .line 123
    const/4 v10, 0x0

    .line 124
    const/4 v8, 0x0

    .line 125
    invoke-static/range {v5 .. v10}, Lcom/cloud/tmc/integration/structure/ui/TabBar$DefaultImpls;->setTabs$default(Lcom/cloud/tmc/integration/structure/ui/TabBar;Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;ILjava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    :cond_5
    :try_start_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->checkUpdateTitleBarStyle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    .line 130
    .line 131
    goto :goto_4

    .line 132
    :catchall_0
    move-exception v0

    .line 133
    const-string v1, "MiniShellFragment"

    .line 134
    .line 135
    const-string v2, ""

    .line 136
    .line 137
    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    .line 139
    .line 140
    :goto_4
    return-void
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

.method public loadHtmlData(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/kernel/render/LoadParams;)Z
    .locals 11

    .line 1
    const-string v0, "MiniShellFragment"

    .line 2
    .line 3
    const-string v1, "loadParams"

    .line 4
    .line 5
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :try_start_0
    sget-object v2, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 10
    .line 11
    const-string v3, "enableShellPreRequest"

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    invoke-virtual {v2, v3, v4}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetBool(Ljava/lang/String;Z)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    iput-boolean v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->enablePreRequest:Z

    .line 19
    .line 20
    if-eqz v2, :cond_8

    .line 21
    .line 22
    iget-object v2, p2, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v2}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->encryptMD5ToString(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v5, "md5 -> "

    .line 34
    .line 35
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-static {v0, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    if-eqz v3, :cond_1

    .line 53
    .line 54
    const-class v5, Lcom/cloud/tmc/integration/proxy/PreHtmStrategyProxy;

    .line 55
    .line 56
    invoke-static {v5}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    check-cast v5, Lcom/cloud/tmc/integration/proxy/PreHtmStrategyProxy;

    .line 61
    .line 62
    const-string v6, "md5"

    .line 63
    .line 64
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-interface {v5, v3, v2, v4, v4}, Lcom/cloud/tmc/integration/proxy/PreHtmStrategyProxy;->getPreHtmlCache(Landroid/content/Context;Ljava/lang/String;IZ)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    if-nez v2, :cond_0

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_0
    :goto_0
    move-object v7, v2

    .line 75
    goto :goto_2

    .line 76
    :catchall_0
    move-exception p1

    .line 77
    goto/16 :goto_6

    .line 78
    .line 79
    :cond_1
    :goto_1
    const-string v2, ""

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :goto_2
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-lez v2, :cond_7

    .line 87
    .line 88
    const/4 v2, 0x0

    .line 89
    if-eqz p1, :cond_2

    .line 90
    .line 91
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    goto :goto_3

    .line 96
    :cond_2
    move-object v3, v2

    .line 97
    :goto_3
    instance-of v5, v3, Lcom/cloud/tmc/integration/structure/node/PageNode;

    .line 98
    .line 99
    if-eqz v5, :cond_3

    .line 100
    .line 101
    check-cast v3, Lcom/cloud/tmc/integration/structure/node/PageNode;

    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_3
    move-object v3, v2

    .line 105
    :goto_4
    if-eqz v3, :cond_4

    .line 106
    .line 107
    invoke-virtual {v3}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getPageId()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    goto :goto_5

    .line 112
    :cond_4
    move-object v3, v2

    .line 113
    :goto_5
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getH5PageId()Ljava/util/concurrent/atomic/AtomicInteger;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    new-instance v6, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string v3, "_"

    .line 130
    .line 131
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    invoke-direct {p0, p1, p2, v3}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->recordPointBeforeLoadUrl(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/kernel/render/LoadParams;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iput-boolean v4, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->typeLoadData:Z

    .line 145
    .line 146
    invoke-virtual {p0, v4}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->setTrackPointLoadData(Z)V

    .line 147
    .line 148
    .line 149
    iget-object v5, p2, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    .line 150
    .line 151
    const-string v6, "loadParams.url"

    .line 152
    .line 153
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    iput-object v5, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->baseUrl:Ljava/lang/String;

    .line 157
    .line 158
    if-eqz p1, :cond_5

    .line 159
    .line 160
    const-string v8, "text/html"

    .line 161
    .line 162
    const-string v9, "UTF-8"

    .line 163
    .line 164
    const/4 v10, 0x0

    .line 165
    move-object v5, p1

    .line 166
    move-object v6, p2

    .line 167
    invoke-interface/range {v5 .. v10}, Lcom/cloud/tmc/kernel/render/IRender;->loadDataWithBaseURL(Lcom/cloud/tmc/kernel/render/LoadParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    :cond_5
    iget-object v5, p2, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    .line 171
    .line 172
    new-instance v6, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    const-string v7, "use loadDataWithBaseURL -> url is "

    .line 178
    .line 179
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    invoke-static {v0, v5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    const-class v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;

    .line 193
    .line 194
    invoke-static {v5}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    check-cast v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;

    .line 199
    .line 200
    iget-object v6, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 201
    .line 202
    if-eqz v6, :cond_6

    .line 203
    .line 204
    invoke-interface {v6}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    :cond_6
    const-string v6, "preHtml"

    .line 209
    .line 210
    invoke-interface {v5, v2, v6}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;->addPeroformanceImprove(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-direct {p0, p1, p2, v3}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->recordPointAfterLoadUrl(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/kernel/render/LoadParams;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    .line 215
    .line 216
    return v4

    .line 217
    :cond_7
    return v1

    .line 218
    :goto_6
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 219
    .line 220
    .line 221
    :cond_8
    return v1
.end method

.method public loadUrl(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/kernel/render/LoadParams;)V
    .locals 3

    .line 1
    const-string v0, "loadParams"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object v1, v0

    .line 15
    :goto_0
    instance-of v2, v1, Lcom/cloud/tmc/integration/structure/node/PageNode;

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    check-cast v1, Lcom/cloud/tmc/integration/structure/node/PageNode;

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move-object v1, v0

    .line 23
    :goto_1
    if-eqz v1, :cond_2

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getPageId()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :cond_2
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getH5PageId()Ljava/util/concurrent/atomic/AtomicInteger;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const/4 v2, 0x1

    .line 34
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v0, "_"

    .line 47
    .line 48
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-direct {p0, p1, p2, v0}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->recordPointBeforeLoadUrl(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/kernel/render/LoadParams;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    if-eqz p1, :cond_3

    .line 62
    .line 63
    invoke-interface {p1, p2}, Lcom/cloud/tmc/kernel/render/IRender;->load(Lcom/cloud/tmc/kernel/render/LoadParams;)V

    .line 64
    .line 65
    .line 66
    :cond_3
    invoke-direct {p0, p1, p2, v0}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->recordPointAfterLoadUrl(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/kernel/render/LoadParams;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string p3, "loadAnimation(activity, nextAnim)"

    .line 10
    .line 11
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance p3, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$onCreateAnimation$1;

    .line 15
    .line 16
    invoke-direct {p3, p2, p0}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$onCreateAnimation$1;-><init>(ZLcom/cloud/tmc/miniapp/ui/MiniShellFragment;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    return-object p1

    .line 23
    :catch_0
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    return-object p1
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
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO00o(Landroid/view/LayoutInflater;)Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    .line 11
    .line 12
    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 13
    .line 14
    const-string p2, "binding!!.root"

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    const/4 p3, 0x1

    .line 23
    if-ne p1, p3, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    .line 26
    .line 27
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO00o:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 31
    .line 32
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    .line 37
    .line 38
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO00o:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 42
    .line 43
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->attachToSwipeBack(Landroid/view/View;)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    :goto_0
    sget p2, Lcom/cloud/tmc/miniapp/R$id;->sl_status:I

    .line 51
    .line 52
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    check-cast p2, Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    .line 57
    .line 58
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->mStatusLayout:Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    .line 59
    .line 60
    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->removeSelf(Landroid/view/View;)V

    .line 61
    .line 62
    .line 63
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/cloud/tmc/render/IMonitorWebviewManagerProxy;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/cloud/tmc/render/IMonitorWebviewManagerProxy;

    .line 11
    .line 12
    invoke-interface {v0, p0}, Lcom/cloud/tmc/render/IMonitorWebviewManagerProxy;->unRegisterMonitorListener(Lcom/cloud/tmc/render/MonitorWebviewListener;)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;->BACK:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->setExitType(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackClear()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackClearNew()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->destroySubscriber()V

    .line 27
    .line 28
    .line 29
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
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

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
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

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
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->checkUpdateTitleBarStyle()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_7

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/webkit/WebView;->getProgress()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/16 v1, 0x64

    .line 11
    .line 12
    if-ne v0, v1, :cond_7

    .line 13
    .line 14
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-object v0, v1

    .line 31
    :goto_0
    instance-of v2, v0, Landroid/webkit/WebView;

    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    check-cast v0, Landroid/webkit/WebView;

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move-object v0, v1

    .line 39
    :goto_1
    const-string v2, "pageFinished"

    .line 40
    .line 41
    invoke-virtual {p0, v0, v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->injectJSFromConfig(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    move-object v0, v1

    .line 60
    :goto_2
    instance-of v2, v0, Landroid/webkit/WebView;

    .line 61
    .line 62
    if-eqz v2, :cond_3

    .line 63
    .line 64
    check-cast v0, Landroid/webkit/WebView;

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_3
    move-object v0, v1

    .line 68
    :goto_3
    if-eqz v0, :cond_5

    .line 69
    .line 70
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 71
    .line 72
    if-eqz v2, :cond_4

    .line 73
    .line 74
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v3, "javascript:window.pageId="

    .line 84
    .line 85
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v1, ";"

    .line 92
    .line 93
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :cond_5
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/extension/FullScreenExtensionKt;->injectScreenFullJS(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 107
    .line 108
    if-eqz v0, :cond_6

    .line 109
    .line 110
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    if-eqz v0, :cond_6

    .line 115
    .line 116
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    if-eqz v0, :cond_6

    .line 121
    .line 122
    const-class v1, Lcom/cloud/tmc/integration/proxy/IUpdateLoadingStepProxy;

    .line 123
    .line 124
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    check-cast v1, Lcom/cloud/tmc/integration/proxy/IUpdateLoadingStepProxy;

    .line 129
    .line 130
    sget-object v2, Lcom/cloud/tmc/integration/activity/LoadStepAction;->STEP_FINISH_MINIAPP_LOAD:Lcom/cloud/tmc/integration/activity/LoadStepAction;

    .line 131
    .line 132
    invoke-interface {v1, v0, v2}, Lcom/cloud/tmc/integration/proxy/IUpdateLoadingStepProxy;->notifyUpdateLoadingStep(Ljava/lang/String;Lcom/cloud/tmc/integration/activity/LoadStepAction;)V

    .line 133
    .line 134
    .line 135
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackPageFinishedNew(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    :cond_7
    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->getViewThemeMode()Ljava/lang/Integer;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    if-nez p1, :cond_8

    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    const/4 p2, 0x1

    .line 150
    if-ne p1, p2, :cond_9

    .line 151
    .line 152
    goto :goto_5

    .line 153
    :cond_9
    :goto_4
    const/4 p2, 0x0

    .line 154
    :goto_5
    invoke-virtual {p0, p2}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->setCapsuleStyle(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    .line 156
    .line 157
    goto :goto_6

    .line 158
    :catchall_0
    move-exception p1

    .line 159
    const-string p2, "MiniShellFragment"

    .line 160
    .line 161
    const-string v0, ""

    .line 162
    .line 163
    invoke-static {p2, v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 164
    .line 165
    .line 166
    :goto_6
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "MiniShellFragment"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-interface {v1}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    move-object v1, v2

    .line 22
    :goto_0
    instance-of v3, v1, Landroid/webkit/WebView;

    .line 23
    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    move-object v2, v1

    .line 27
    check-cast v2, Landroid/webkit/WebView;

    .line 28
    .line 29
    :cond_1
    const-string v1, "pageStart"

    .line 30
    .line 31
    invoke-virtual {p0, v2, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->injectJSFromConfig(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->typeLoadData:Z

    .line 35
    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->baseUrl:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_4

    .line 45
    .line 46
    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 47
    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    if-eqz v1, :cond_3

    .line 61
    .line 62
    const-string v2, "load htmlData ,close loading page"

    .line 63
    .line 64
    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-class v2, Lcom/cloud/tmc/integration/proxy/IUpdateLoadingStepProxy;

    .line 68
    .line 69
    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Lcom/cloud/tmc/integration/proxy/IUpdateLoadingStepProxy;

    .line 74
    .line 75
    sget-object v3, Lcom/cloud/tmc/integration/activity/LoadStepAction;->STEP_FINISH_MINIAPP_LOAD:Lcom/cloud/tmc/integration/activity/LoadStepAction;

    .line 76
    .line 77
    invoke-interface {v2, v1, v3}, Lcom/cloud/tmc/integration/proxy/IUpdateLoadingStepProxy;->notifyUpdateLoadingStep(Ljava/lang/String;Lcom/cloud/tmc/integration/activity/LoadStepAction;)V

    .line 78
    .line 79
    .line 80
    :cond_3
    const/4 v1, 0x0

    .line 81
    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->typeLoadData:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :goto_1
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    .line 86
    .line 87
    :cond_4
    :goto_2
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->redirectPageStarted(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackStartNew(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const/4 p1, 0x2

    .line 94
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->initDomLoadMonitor(I)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0o0:Landroid/widget/ProgressBar;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v0, v1

    .line 22
    :goto_0
    const/4 v2, 0x1

    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

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
    if-ne p1, v2, :cond_1

    .line 38
    .line 39
    move v1, v2

    .line 40
    :cond_1
    if-eqz v1, :cond_2

    .line 41
    .line 42
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

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
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->perfSendFlag:Z

    .line 55
    .line 56
    if-eqz v0, :cond_4

    .line 57
    .line 58
    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->perfSendFlag:Z

    .line 59
    .line 60
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    .line 61
    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0o0:Landroid/widget/ProgressBar;

    .line 65
    .line 66
    if-eqz v0, :cond_4

    .line 67
    .line 68
    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisible(Landroid/view/View;)V

    .line 69
    .line 70
    .line 71
    :cond_4
    const/16 v0, 0x64

    .line 72
    .line 73
    if-eqz p2, :cond_8

    .line 74
    .line 75
    if-eq p2, v0, :cond_7

    .line 76
    .line 77
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    .line 78
    .line 79
    if-eqz v1, :cond_5

    .line 80
    .line 81
    iget-object v1, v1, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0o0:Landroid/widget/ProgressBar;

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_5
    const/4 v1, 0x0

    .line 85
    :goto_1
    if-nez v1, :cond_6

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_6
    invoke-virtual {v1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_7
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->perfSendFlag:Z

    .line 93
    .line 94
    if-nez v1, :cond_9

    .line 95
    .line 96
    iput-boolean v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->perfSendFlag:Z

    .line 97
    .line 98
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    .line 99
    .line 100
    if-eqz v1, :cond_9

    .line 101
    .line 102
    iget-object v1, v1, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0o0:Landroid/widget/ProgressBar;

    .line 103
    .line 104
    if-eqz v1, :cond_9

    .line 105
    .line 106
    invoke-static {v1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toGone(Landroid/view/View;)V

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_8
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    .line 111
    .line 112
    if-eqz v1, :cond_9

    .line 113
    .line 114
    iget-object v1, v1, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0o0:Landroid/widget/ProgressBar;

    .line 115
    .line 116
    if-eqz v1, :cond_9

    .line 117
    .line 118
    invoke-static {v1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisible(Landroid/view/View;)V

    .line 119
    .line 120
    .line 121
    :cond_9
    :goto_2
    if-ne p2, v0, :cond_b

    .line 122
    .line 123
    iget-object p2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 124
    .line 125
    if-eqz p2, :cond_a

    .line 126
    .line 127
    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    if-eqz p2, :cond_a

    .line 132
    .line 133
    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    if-eqz p2, :cond_a

    .line 138
    .line 139
    const-class v0, Lcom/cloud/tmc/integration/proxy/IUpdateLoadingStepProxy;

    .line 140
    .line 141
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    check-cast v0, Lcom/cloud/tmc/integration/proxy/IUpdateLoadingStepProxy;

    .line 146
    .line 147
    sget-object v1, Lcom/cloud/tmc/integration/activity/LoadStepAction;->STEP_FINISH_MINIAPP_LOAD:Lcom/cloud/tmc/integration/activity/LoadStepAction;

    .line 148
    .line 149
    invoke-interface {v0, p2, v1}, Lcom/cloud/tmc/integration/proxy/IUpdateLoadingStepProxy;->notifyUpdateLoadingStep(Ljava/lang/String;Lcom/cloud/tmc/integration/activity/LoadStepAction;)V

    .line 150
    .line 151
    .line 152
    :cond_a
    sget-object p2, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_100:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 153
    .line 154
    invoke-virtual {p0, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->updateProgressStep(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->updateProgressStepNew(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrlFinish()V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackProgressChanged100New(Landroid/webkit/WebView;)V

    .line 164
    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_b
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackProgressChangedNew(Landroid/webkit/WebView;I)V

    .line 168
    .line 169
    .line 170
    const/16 p1, 0x46

    .line 171
    .line 172
    if-lt p2, p1, :cond_c

    .line 173
    .line 174
    sget-object p1, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_70:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 175
    .line 176
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->updateProgressStep(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->updateProgressStepNew(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;)V

    .line 180
    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_c
    const/16 p1, 0x32

    .line 184
    .line 185
    if-lt p2, p1, :cond_d

    .line 186
    .line 187
    sget-object p1, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_50:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 188
    .line 189
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->updateProgressStep(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->updateProgressStepNew(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;)V

    .line 193
    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_d
    const/16 p1, 0x1e

    .line 197
    .line 198
    if-lt p2, p1, :cond_e

    .line 199
    .line 200
    sget-object p1, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_30:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 201
    .line 202
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->updateProgressStep(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->updateProgressStepNew(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;)V

    .line 206
    .line 207
    .line 208
    goto :goto_3

    .line 209
    :cond_e
    sget-object p1, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->INIT:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 210
    .line 211
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->updateProgressStep(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->updateProgressStepNew(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;)V

    .line 215
    .line 216
    .line 217
    :goto_3
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 2

    .line 1
    if-eqz p2, :cond_4

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 p2, 0x1

    .line 8
    if-ne p1, p2, :cond_4

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrlError()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    instance-of p3, p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    if-eqz p3, :cond_0

    .line 21
    .line 22
    check-cast p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object p1, v0

    .line 26
    :goto_0
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getDelayShowError()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-ne p1, p2, :cond_1

    .line 33
    .line 34
    const-wide/16 p1, 0x1f4

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const-wide/16 p1, 0x1

    .line 38
    .line 39
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    instance-of v1, p3, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 44
    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    move-object v0, p3

    .line 48
    check-cast v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 49
    .line 50
    :cond_2
    if-nez v0, :cond_3

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_3
    const/4 p3, 0x0

    .line 54
    invoke-virtual {v0, p3}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->setDelayShowError(Z)V

    .line 55
    .line 56
    .line 57
    :goto_2
    new-instance p3, Lcom/cloud/tmc/miniapp/ui/j1;

    .line 58
    .line 59
    invoke-direct {p3, p0}, Lcom/cloud/tmc/miniapp/ui/j1;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p3, p1, p2}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    .line 65
    :catchall_0
    :cond_4
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
    .locals 8

    .line 1
    invoke-super {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->needRefreshYCoordinate:Z

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->needRefreshYCoordinate:Z

    .line 11
    .line 12
    invoke-static {}, Lkotlinx/coroutines/y0;->a()Lkotlinx/coroutines/i0;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    new-instance v5, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$onResume$1;

    .line 21
    .line 22
    invoke-direct {v5, p0, v1}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$onResume$1;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    const/4 v6, 0x3

    .line 26
    const/4 v7, 0x0

    .line 27
    const/4 v3, 0x0

    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->checkUpdateTitleBarStyle()V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move-object v0, v1

    .line 51
    :goto_0
    instance-of v2, v0, Landroid/webkit/WebView;

    .line 52
    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    move-object v1, v0

    .line 56
    check-cast v1, Landroid/webkit/WebView;

    .line 57
    .line 58
    :cond_2
    if-eqz v1, :cond_3

    .line 59
    .line 60
    invoke-virtual {v1}, Landroid/webkit/WebView;->onResume()V

    .line 61
    .line 62
    .line 63
    :cond_3
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

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
    const-class p1, Lcom/cloud/tmc/render/IMonitorWebviewManagerProxy;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/cloud/tmc/render/IMonitorWebviewManagerProxy;

    .line 16
    .line 17
    invoke-interface {p1, p0}, Lcom/cloud/tmc/render/IMonitorWebviewManagerProxy;->registerMonitorListener(Lcom/cloud/tmc/render/MonitorWebviewListener;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->pageChainContext:Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 21
    .line 22
    iget-object p2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    if-eqz p2, :cond_0

    .line 26
    .line 27
    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/App;->getAppChainContext()Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move-object p2, v0

    .line 33
    :goto_0
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->setAppChainContext(Lcom/cloud/tmc/integration/chain/app/AppChainContext;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 37
    .line 38
    if-nez p1, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    iget-object p2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->pageChainContext:Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 42
    .line 43
    invoke-interface {p1, p2}, Lcom/cloud/tmc/integration/structure/Page;->setPageChainContext(Lcom/cloud/tmc/integration/chain/page/PageChainContext;)V

    .line 44
    .line 45
    .line 46
    :goto_1
    const-class p1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 53
    .line 54
    iget-object p2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 55
    .line 56
    invoke-interface {p1, p2}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 61
    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    const-string p2, "consumeTime"

    .line 65
    .line 66
    invoke-interface {p1, p2, p0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->register(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    .line 67
    .line 68
    .line 69
    :cond_2
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->createSubscriber()V

    .line 70
    .line 71
    .line 72
    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 73
    .line 74
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    check-cast p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 79
    .line 80
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 81
    .line 82
    if-eqz v1, :cond_3

    .line 83
    .line 84
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    if-eqz v1, :cond_3

    .line 89
    .line 90
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    goto :goto_2

    .line 95
    :cond_3
    move-object v1, v0

    .line 96
    :goto_2
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CREATE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 97
    .line 98
    const-string v3, ""

    .line 99
    .line 100
    invoke-interface {p2, v1, v2, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    instance-of v1, p2, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 108
    .line 109
    if-eqz v1, :cond_4

    .line 110
    .line 111
    check-cast p2, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_4
    move-object p2, v0

    .line 115
    :goto_3
    if-eqz p2, :cond_6

    .line 116
    .line 117
    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->isFirstLaunch()Z

    .line 118
    .line 119
    .line 120
    move-result p2

    .line 121
    if-nez p2, :cond_6

    .line 122
    .line 123
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 128
    .line 129
    iget-object p2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 130
    .line 131
    if-eqz p2, :cond_5

    .line 132
    .line 133
    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    if-eqz p2, :cond_5

    .line 138
    .line 139
    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    goto :goto_4

    .line 144
    :cond_5
    move-object p2, v0

    .line 145
    :goto_4
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_PV:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 146
    .line 147
    invoke-interface {p1, p2, v1, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    :cond_6
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->mPendingSetPage:Lcom/cloud/tmc/integration/structure/Page;

    .line 151
    .line 152
    if-eqz p1, :cond_7

    .line 153
    .line 154
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->setPage(Lcom/cloud/tmc/integration/structure/Page;)V

    .line 158
    .line 159
    .line 160
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->mPendingSetPage:Lcom/cloud/tmc/integration/structure/Page;

    .line 161
    .line 162
    :cond_7
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->showNavigationBarLoading()V

    .line 163
    .line 164
    .line 165
    invoke-static {p0, p0}, Lcom/cloud/tmc/kernel/debug/a;->a(Ljava/lang/Object;Lcom/cloud/tmc/kernel/debug/DebugCallback;)V

    .line 166
    .line 167
    .line 168
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    .line 169
    .line 170
    if-eqz p1, :cond_8

    .line 171
    .line 172
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0Oo:Landroid/widget/ImageView;

    .line 173
    .line 174
    if-eqz p1, :cond_8

    .line 175
    .line 176
    new-instance p2, Lcom/cloud/tmc/miniapp/ui/k1;

    .line 177
    .line 178
    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/ui/k1;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    .line 183
    .line 184
    :cond_8
    :try_start_0
    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 185
    .line 186
    if-eqz p1, :cond_9

    .line 187
    .line 188
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    goto :goto_5

    .line 193
    :catchall_0
    move-exception p1

    .line 194
    goto :goto_6

    .line 195
    :cond_9
    :goto_5
    if-nez v0, :cond_a

    .line 196
    .line 197
    goto :goto_7

    .line 198
    :cond_a
    invoke-interface {v0, p0}, Lcom/cloud/tmc/integration/structure/App;->setLoadHtmlDataCallback(Lcom/cloud/tmc/integration/callback/ILoadHtmlDataCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    .line 200
    .line 201
    goto :goto_7

    .line 202
    :goto_6
    const-string p2, "MiniShellFragment"

    .line 203
    .line 204
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 205
    .line 206
    .line 207
    :goto_7
    return-void
.end method

.method public reportDomLoadTime(ILjava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "uniqueId"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p2, 0x2

    .line 7
    if-ne p1, p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->updateDomContentLoaded()V

    .line 10
    .line 11
    .line 12
    :cond_0
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

.method public final setEnablePreRequest(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->enablePreRequest:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setEventCenter(Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

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

.method public setNavigationBarIconStyle(Z)V
    .locals 1

    .line 1
    xor-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

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
    .locals 4

    .line 1
    const-string v0, "page"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO00o:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object v0, v1

    .line 15
    :goto_0
    if-nez v0, :cond_6

    .line 16
    .line 17
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getExtend()Lcom/cloud/tmc/integration/model/ExtendModel;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/ExtendModel;->getH5Url()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move-object v0, v1

    .line 41
    :goto_1
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    goto :goto_2

    .line 52
    :cond_2
    move-object v2, v1

    .line 53
    :goto_2
    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/utils/KUrlUtils;->generateShellUrl(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getUrlMap()Ljava/util/Map;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Ljava/lang/String;

    .line 68
    .line 69
    :cond_3
    instance-of v0, p1, Lcom/cloud/tmc/integration/structure/node/PageNode;

    .line 70
    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    move-object v0, p1

    .line 74
    check-cast v0, Lcom/cloud/tmc/integration/structure/node/PageNode;

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_4
    move-object v0, v1

    .line 78
    :goto_3
    if-nez v0, :cond_5

    .line 79
    .line 80
    goto :goto_4

    .line 81
    :cond_5
    invoke-virtual {v0, v2}, Lcom/cloud/tmc/integration/structure/node/PageNode;->setPageURI(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :cond_6
    :goto_4
    iput-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 85
    .line 86
    const-class v0, Lcom/cloud/tmc/integration/structure/App;

    .line 87
    .line 88
    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/node/Node;->bubbleFindNode(Ljava/lang/Class;)Lcom/cloud/tmc/kernel/node/Node;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Lcom/cloud/tmc/integration/structure/App;

    .line 93
    .line 94
    iput-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 95
    .line 96
    if-eqz v0, :cond_9

    .line 97
    .line 98
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 99
    .line 100
    if-eqz v2, :cond_7

    .line 101
    .line 102
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getPageURI()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    :cond_7
    if-nez v1, :cond_8

    .line 107
    .line 108
    const-string v1, ""

    .line 109
    .line 110
    :cond_8
    const/4 v2, 0x2

    .line 111
    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/integration/structure/App;->putPageType(Ljava/lang/String;I)V

    .line 112
    .line 113
    .line 114
    :cond_9
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/h1;

    .line 115
    .line 116
    invoke-direct {v0, p0, p1}, Lcom/cloud/tmc/miniapp/ui/h1;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;Lcom/cloud/tmc/integration/structure/Page;)V

    .line 117
    .line 118
    .line 119
    invoke-static {v0}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method public shouldInterceptOnKeyDown()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v0, v1

    .line 18
    :goto_0
    instance-of v2, v0, Landroid/webkit/WebView;

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    move-object v1, v0

    .line 23
    check-cast v1, Landroid/webkit/WebView;

    .line 24
    .line 25
    :cond_1
    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->canGoBack(Landroid/webkit/WebView;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    return v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Ljava/lang/Boolean;
    .locals 10

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->redirectShouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackShouldOverrideUrlLoadingNew(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 8
    .line 9
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 10
    .line 11
    .line 12
    if-eqz p2, :cond_7

    .line 13
    .line 14
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_7

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const-string v3, "it.toString()"

    .line 25
    .line 26
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v4, "http"

    .line 30
    .line 31
    const/4 v5, 0x2

    .line 32
    const/4 v6, 0x0

    .line 33
    const/4 v7, 0x0

    .line 34
    invoke-static {v2, v4, v6, v5, v7}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    const-class v4, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 39
    .line 40
    if-nez v2, :cond_3

    .line 41
    .line 42
    :try_start_0
    invoke-static {v4}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 47
    .line 48
    const-string p2, "shellSchemeFilter"

    .line 49
    .line 50
    const-string v0, "[\"whatsapp\",\"sms\",\"tel\"]"

    .line 51
    .line 52
    invoke-interface {p1, p2, v0}, Lcom/cloud/tmc/kernel/service/ConfigService;->getConfigString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    new-instance p2, Lcom/google/gson/Gson;

    .line 57
    .line 58
    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 59
    .line 60
    .line 61
    const-class v0, Ljava/util/List;

    .line 62
    .line 63
    invoke-virtual {p2, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    instance-of p2, p1, Ljava/util/List;

    .line 68
    .line 69
    if-eqz p2, :cond_0

    .line 70
    .line 71
    move-object v7, p1

    .line 72
    check-cast v7, Ljava/util/List;

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catch_0
    move-exception p1

    .line 76
    goto :goto_2

    .line 77
    :cond_0
    :goto_0
    if-eqz v7, :cond_2

    .line 78
    .line 79
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-static {v7, p1}, Lkotlin/collections/CollectionsKt;->b0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-eqz p1, :cond_2

    .line 88
    .line 89
    const-string p1, "intent"

    .line 90
    .line 91
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_1

    .line 100
    .line 101
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    const/4 p2, 0x1

    .line 106
    invoke-static {p1, p2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    const-string p2, "parseUri(it.toString(), Intent.URI_INTENT_SCHEME)"

    .line 111
    .line 112
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_1
    new-instance p1, Landroid/content/Intent;

    .line 117
    .line 118
    const-string p2, "android.intent.action.VIEW"

    .line 119
    .line 120
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 129
    .line 130
    .line 131
    const/high16 p2, 0x30000000

    .line 132
    .line 133
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 134
    .line 135
    .line 136
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    if-eqz p2, :cond_2

    .line 141
    .line 142
    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .line 144
    .line 145
    goto :goto_3

    .line 146
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 147
    .line 148
    .line 149
    :cond_2
    :goto_3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 150
    .line 151
    return-object p1

    .line 152
    :cond_3
    sget-object v2, Lcom/cloud/tmc/integration/utils/MiniShellUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/MiniShellUtils;

    .line 153
    .line 154
    iget-object v5, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    .line 155
    .line 156
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v7

    .line 160
    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2, v5, v7}, Lcom/cloud/tmc/integration/utils/MiniShellUtils;->checkJumpUrlWhitelist(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Z

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    const-string v5, "\u662f\u5426\u652f\u6301\u5185\u90e8\u6253\u5f00\uff1a"

    .line 173
    .line 174
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    const-string v5, "MiniShellFragment"

    .line 185
    .line 186
    invoke-static {v5, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    if-nez v2, :cond_7

    .line 190
    .line 191
    :try_start_1
    invoke-static {v4}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    check-cast v2, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 196
    .line 197
    const-string v3, "shellPathFilter"

    .line 198
    .line 199
    const-string v4, "[]"

    .line 200
    .line 201
    invoke-interface {v2, v3, v4}, Lcom/cloud/tmc/kernel/service/ConfigService;->getConfigString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    const-string v3, "shellPathFilterConfig"

    .line 206
    .line 207
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    new-instance v3, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$shouldOverrideUrlLoading$1$shellPathFilter$1;

    .line 211
    .line 212
    invoke-direct {v3}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$shouldOverrideUrlLoading$1$shellPathFilter$1;-><init>()V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    const-string v4, "object :\n               \u2026ayList<String>>() {}.type"

    .line 220
    .line 221
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-static {v2, v3}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    check-cast v2, Ljava/util/ArrayList;

    .line 229
    .line 230
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v7

    .line 242
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v8

    .line 246
    new-instance v9, Ljava/lang/StringBuilder;

    .line 247
    .line 248
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    const-string v4, "://"

    .line 255
    .line 256
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v4

    .line 269
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getCurrentUrl(Landroid/webkit/WebView;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 273
    const-string v8, ""

    .line 274
    .line 275
    if-nez v7, :cond_4

    .line 276
    .line 277
    move-object v7, v8

    .line 278
    :cond_4
    :try_start_2
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 279
    .line 280
    .line 281
    move-result-object v7

    .line 282
    invoke-virtual {v7}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 286
    goto :goto_4

    .line 287
    :catchall_0
    move-exception v7

    .line 288
    :try_start_3
    invoke-static {v5, v7}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 289
    .line 290
    .line 291
    :goto_4
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result v2

    .line 295
    if-nez v2, :cond_5

    .line 296
    .line 297
    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    move-result v2

    .line 301
    if-nez v2, :cond_7

    .line 302
    .line 303
    goto :goto_5

    .line 304
    :catchall_1
    move-exception v1

    .line 305
    goto :goto_6

    .line 306
    :cond_5
    :goto_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    if-eqz v2, :cond_6

    .line 311
    .line 312
    sget-object v3, Lcom/cloud/tmc/integration/utils/EnvironmentUtil;->Companion:Lcom/cloud/tmc/integration/utils/EnvironmentUtil$Companion;

    .line 313
    .line 314
    const-string v4, "context"

    .line 315
    .line 316
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    invoke-virtual {v3, v2, v1}, Lcom/cloud/tmc/integration/utils/EnvironmentUtil$Companion;->openByBrowser(Landroid/content/Context;Ljava/lang/String;)Z

    .line 324
    .line 325
    .line 326
    move-result v6

    .line 327
    :cond_6
    iput-boolean v6, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 328
    .line 329
    goto :goto_7

    .line 330
    :goto_6
    invoke-static {v5, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 331
    .line 332
    .line 333
    :cond_7
    :goto_7
    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 334
    .line 335
    if-eqz v0, :cond_8

    .line 336
    .line 337
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 338
    .line 339
    return-object p1

    .line 340
    :cond_8
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getCurrentUrl(Landroid/webkit/WebView;)Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object p1

    .line 344
    if-nez p1, :cond_9

    .line 345
    .line 346
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 347
    .line 348
    return-object p1

    .line 349
    :cond_9
    if-eqz p2, :cond_b

    .line 350
    .line 351
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 352
    .line 353
    .line 354
    move-result-object p2

    .line 355
    if-eqz p2, :cond_b

    .line 356
    .line 357
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object p2

    .line 361
    if-nez p2, :cond_a

    .line 362
    .line 363
    goto :goto_8

    .line 364
    :cond_a
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->redirect(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 368
    .line 369
    return-object p1

    .line 370
    :cond_b
    :goto_8
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 371
    .line 372
    return-object p1
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

.method public showMainLayoutAlpha(F)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showMainLayoutAlpha(Lcom/cloud/tmc/miniapp/action/StatusAction;F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public showNavigationBarLoading()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

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
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

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

.method public showNoNetwork(Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showNoNetwork(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    .line 2
    .line 3
    .line 4
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

.method public showUnstableNetwork(Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showUnstableNetwork(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    .line 2
    .line 3
    .line 4
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

.method public updateStepAnimation(Lcom/cloud/tmc/integration/activity/LoadStepAction;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->updateStepAnimation(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/integration/activity/LoadStepAction;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
