.class public Lcom/cloud/tmc/miniapp/ui/WebViewActivity;
.super Lcom/cloud/tmc/miniapp/base/BaseActivity;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;
.implements Lcom/cloud/tmc/kernel/render/WebviewPageCallback;
.implements Lcom/cloud/tmc/miniapp/action/StatusAction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/ui/WebViewActivity$Companion;
    }
.end annotation


# static fields
.field private static final APP_ID:Ljava/lang/String; = "open webview"

.field public static final Companion:Lcom/cloud/tmc/miniapp/ui/WebViewActivity$Companion;


# instance fields
.field private final mFlWb$delegate:Lkotlin/Lazy;

.field private final mLayoutTitle$delegate:Lkotlin/Lazy;

.field private mLoadErrorFlag:Ljava/lang/Boolean;

.field private final mPb$delegate:Lkotlin/Lazy;

.field private final mStatusLayout$delegate:Lkotlin/Lazy;

.field private wb:Lcom/cloud/tmc/kernel/render/IWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->Companion:Lcom/cloud/tmc/miniapp/ui/WebViewActivity$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity$mStatusLayout$2;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity$mStatusLayout$2;-><init>(Lcom/cloud/tmc/miniapp/ui/WebViewActivity;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->mStatusLayout$delegate:Lkotlin/Lazy;

    .line 14
    .line 15
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity$mFlWb$2;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity$mFlWb$2;-><init>(Lcom/cloud/tmc/miniapp/ui/WebViewActivity;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->mFlWb$delegate:Lkotlin/Lazy;

    .line 25
    .line 26
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity$mLayoutTitle$2;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity$mLayoutTitle$2;-><init>(Lcom/cloud/tmc/miniapp/ui/WebViewActivity;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->mLayoutTitle$delegate:Lkotlin/Lazy;

    .line 36
    .line 37
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity$mPb$2;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity$mPb$2;-><init>(Lcom/cloud/tmc/miniapp/ui/WebViewActivity;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->mPb$delegate:Lkotlin/Lazy;

    .line 47
    .line 48
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 49
    .line 50
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->mLoadErrorFlag:Ljava/lang/Boolean;

    .line 51
    .line 52
    return-void
.end method

.method public static final synthetic access$setMLoadErrorFlag$p(Lcom/cloud/tmc/miniapp/ui/WebViewActivity;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->mLoadErrorFlag:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method private final getMLayoutTitle()Lcom/cloud/tmc/miniapp/widget/NativeTitleBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->mLayoutTitle$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/miniapp/widget/NativeTitleBar;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getMPb()Landroid/widget/ProgressBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->mPb$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/ProgressBar;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getMStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->mStatusLayout$delegate:Lkotlin/Lazy;

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

.method public static final launch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->Companion:Lcom/cloud/tmc/miniapp/ui/WebViewActivity$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity$Companion;->launch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lcom/cloud/tmc/miniapp/R$layout;->activity_mini_web_view:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMFlWb()Landroid/widget/FrameLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->mFlWb$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/FrameLayout;

    .line 8
    .line 9
    return-object v0
.end method

.method public getStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->getMStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getViewThemeMode()Ljava/lang/Integer;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method public final getWb()Lcom/cloud/tmc/kernel/render/IWebView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->wb:Lcom/cloud/tmc/kernel/render/IWebView;

    .line 2
    .line 3
    return-object v0
.end method

.method public hideStatusLoading()V
    .locals 0

    .line 1
    return-void
.end method

.method public initData()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const-string v1, "pageUri"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const-string v1, "getString(TmcConstants.EXTRA_PAGE_URI) ?: return"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 26
    .line 27
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->mLoadErrorFlag:Ljava/lang/Boolean;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->wb:Lcom/cloud/tmc/kernel/render/IWebView;

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    const-string v2, "x-tr-devtype"

    .line 34
    .line 35
    const-string v3, "h5"

    .line 36
    .line 37
    invoke-static {v2, v3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const/4 v3, 0x1

    .line 42
    new-array v3, v3, [Lkotlin/Pair;

    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    aput-object v2, v3, v4

    .line 46
    .line 47
    invoke-static {v3}, Lkotlin/collections/MapsKt;->j([Lkotlin/Pair;)Ljava/util/HashMap;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-interface {v1, v0, v2}, Lcom/cloud/tmc/kernel/render/IWebView;->load(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    return-void
.end method

.method public initView()V
    .locals 8

    .line 1
    :try_start_0
    const-class v0, Lcom/cloud/tmc/kernel/proxy/render/IWebViewFactory;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/render/IWebViewFactory;

    .line 8
    .line 9
    invoke-interface {v0, p0}, Lcom/cloud/tmc/kernel/proxy/render/IWebViewFactory;->createWebView(Landroid/content/Context;)Lcom/cloud/tmc/kernel/render/IWebView;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {v0, p0}, Lcom/cloud/tmc/kernel/render/IWebView;->registerPageEventCallback(Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, p0}, Lcom/cloud/tmc/kernel/render/IWebView;->registerPageCallback(Lcom/cloud/tmc/kernel/render/WebviewPageCallback;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    goto/16 :goto_2

    .line 25
    .line 26
    :cond_0
    move-object v0, v1

    .line 27
    :goto_0
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->wb:Lcom/cloud/tmc/kernel/render/IWebView;

    .line 28
    .line 29
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 30
    .line 31
    const/4 v2, -0x1

    .line 32
    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->getMFlWb()Landroid/widget/FrameLayout;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-eqz v2, :cond_3

    .line 40
    .line 41
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->wb:Lcom/cloud/tmc/kernel/render/IWebView;

    .line 42
    .line 43
    instance-of v4, v3, Lcom/cloud/tmc/render/system/SystemWebView;

    .line 44
    .line 45
    if-eqz v4, :cond_1

    .line 46
    .line 47
    check-cast v3, Lcom/cloud/tmc/render/system/SystemWebView;

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    move-object v3, v1

    .line 51
    :goto_1
    if-eqz v3, :cond_2

    .line 52
    .line 53
    sget v1, Lcom/cloud/tmc/miniapp/R$color;->mini_color_bg_01:I

    .line 54
    .line 55
    invoke-static {v1}, Lcom/cloud/tmc/miniutils/util/ColorUtils;->getColor(I)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const/4 v4, 0x1

    .line 67
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    .line 72
    .line 73
    invoke-static {v3}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->removeSelf(Landroid/view/View;)V

    .line 74
    .line 75
    .line 76
    move-object v1, v3

    .line 77
    :cond_2
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 78
    .line 79
    .line 80
    :cond_3
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->wb:Lcom/cloud/tmc/kernel/render/IWebView;

    .line 81
    .line 82
    if-eqz v0, :cond_4

    .line 83
    .line 84
    const-string v1, "open webview"

    .line 85
    .line 86
    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/render/IWebView;->setAppId(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :cond_4
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->wb:Lcom/cloud/tmc/kernel/render/IWebView;

    .line 90
    .line 91
    if-eqz v0, :cond_5

    .line 92
    .line 93
    new-instance v7, Lcom/cloud/tmc/integration/structure/node/PageNode;

    .line 94
    .line 95
    const-string v3, ""

    .line 96
    .line 97
    const-string v4, ""

    .line 98
    .line 99
    const/4 v5, 0x0

    .line 100
    const/4 v6, 0x0

    .line 101
    const/4 v2, 0x0

    .line 102
    move-object v1, v7

    .line 103
    invoke-direct/range {v1 .. v6}, Lcom/cloud/tmc/integration/structure/node/PageNode;-><init>(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 104
    .line 105
    .line 106
    invoke-interface {v0, v7}, Lcom/cloud/tmc/kernel/render/IWebView;->setNode(Lcom/cloud/tmc/kernel/node/Node;)V

    .line 107
    .line 108
    .line 109
    :cond_5
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->wb:Lcom/cloud/tmc/kernel/render/IWebView;

    .line 110
    .line 111
    if-eqz v0, :cond_6

    .line 112
    .line 113
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IWebView;->create()V

    .line 114
    .line 115
    .line 116
    :cond_6
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->getMLayoutTitle()Lcom/cloud/tmc/miniapp/widget/NativeTitleBar;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    if-eqz v0, :cond_7

    .line 121
    .line 122
    const-string v1, ""

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/widget/NativeTitleBar;->setTitle(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :cond_7
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->getMLayoutTitle()Lcom/cloud/tmc/miniapp/widget/NativeTitleBar;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    if-eqz v0, :cond_8

    .line 132
    .line 133
    new-instance v1, Lcom/cloud/tmc/miniapp/ui/WebViewActivity$initView$3;

    .line 134
    .line 135
    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity$initView$3;-><init>(Lcom/cloud/tmc/miniapp/ui/WebViewActivity;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/widget/NativeTitleBar;->setonBackClickListener(Lkotlin/jvm/functions/Function0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    .line 140
    .line 141
    goto :goto_3

    .line 142
    :goto_2
    const-string v1, "WebViewActivity"

    .line 143
    .line 144
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    .line 146
    .line 147
    :cond_8
    :goto_3
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

.method public onConsoleMessage(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "consoleMessage"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->wb:Lcom/cloud/tmc/kernel/render/IWebView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IWebView;->destroy()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->wb:Lcom/cloud/tmc/kernel/render/IWebView;

    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->getMFlWb()Landroid/widget/FrameLayout;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->getStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO0O0()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    .line 1
    if-eqz p2, :cond_3

    .line 2
    .line 3
    const/16 p1, 0x64

    .line 4
    .line 5
    if-eq p2, p1, :cond_1

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->getMPb()Landroid/widget/ProgressBar;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->getMPb()Landroid/widget/ProgressBar;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-nez p1, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    const/16 p2, 0x8

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_3
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->getMPb()Landroid/widget/ProgressBar;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-nez p1, :cond_4

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_4
    const/4 p2, 0x0

    .line 39
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 8

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->mLoadErrorFlag:Ljava/lang/Boolean;

    .line 4
    .line 5
    if-eqz p2, :cond_3

    .line 6
    .line 7
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne v0, v1, :cond_3

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->getStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO0oo:Lcom/cloud/tmc/miniapp/widget/LoadingTextView;

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v1, 0x4

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->isConnected()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    new-instance v1, Lcom/cloud/tmc/miniapp/ui/WebViewActivity$onReceivedError$1;

    .line 36
    .line 37
    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity$onReceivedError$1;-><init>(Lcom/cloud/tmc/miniapp/ui/WebViewActivity;)V

    .line 38
    .line 39
    .line 40
    const/16 v6, 0x16

    .line 41
    .line 42
    const/4 v7, 0x0

    .line 43
    const/4 v2, 0x0

    .line 44
    const/4 v3, 0x0

    .line 45
    const-string v4, "open webview"

    .line 46
    .line 47
    const/4 v5, 0x0

    .line 48
    move-object v0, p0

    .line 49
    invoke-static/range {v0 .. v7}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showNoNetwork$default(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;ILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    new-instance v1, Lcom/cloud/tmc/miniapp/ui/WebViewActivity$onReceivedError$2;

    .line 54
    .line 55
    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity$onReceivedError$2;-><init>(Lcom/cloud/tmc/miniapp/ui/WebViewActivity;)V

    .line 56
    .line 57
    .line 58
    sget v2, Lcom/cloud/tmc/miniapp/R$string;->loading_error_tv:I

    .line 59
    .line 60
    const/16 v6, 0x10

    .line 61
    .line 62
    const/4 v7, 0x0

    .line 63
    const-string v3, ""

    .line 64
    .line 65
    const-string v4, "open webview"

    .line 66
    .line 67
    const/4 v5, 0x0

    .line 68
    move-object v0, p0

    .line 69
    invoke-static/range {v0 .. v7}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showError$default(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;ILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    :cond_3
    :goto_1
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onReceivedIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onReceivedTitle(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->mLoadErrorFlag:Ljava/lang/Boolean;

    .line 2
    .line 3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/EmptyUtils;->textIsEmpty(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->getMLayoutTitle()Lcom/cloud/tmc/miniapp/widget/NativeTitleBar;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/widget/NativeTitleBar;->setTitle(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->getMLayoutTitle()Lcom/cloud/tmc/miniapp/widget/NativeTitleBar;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    const-string v0, ""

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/widget/NativeTitleBar;->setTitle(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/kernel/render/d;->a(Lcom/cloud/tmc/kernel/render/WebviewPageCallback;Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public onRequestFocus()V
    .locals 0

    .line 1
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

.method public final setWb(Lcom/cloud/tmc/kernel/render/IWebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->wb:Lcom/cloud/tmc/kernel/render/IWebView;

    .line 2
    .line 3
    return-void
.end method

.method public synthetic shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/kernel/render/d;->b(Lcom/cloud/tmc/kernel/render/WebviewPageCallback;Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
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

.method public showStatusLoading()V
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

.method public final trackH5Event(Ljava/lang/String;Lcom/cloud/tmc/ad/bean/response/AdsDTO;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string v0, "ssp"

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-direct {v1, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance p4, Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-eqz v2, :cond_6

    .line 18
    .line 19
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_6

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    if-nez v4, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-static {v0, v5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    sparse-switch v5, :sswitch_data_0

    .line 58
    .line 59
    .line 60
    goto/16 :goto_1

    .line 61
    .line 62
    :sswitch_0
    const-string v5, "Double"

    .line 63
    .line 64
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-nez v4, :cond_1

    .line 69
    .line 70
    goto/16 :goto_1

    .line 71
    .line 72
    :cond_1
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    const-string v5, "null cannot be cast to non-null type kotlin.Double"

    .line 77
    .line 78
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    check-cast v4, Ljava/lang/Double;

    .line 82
    .line 83
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    .line 84
    .line 85
    .line 86
    move-result-wide v4

    .line 87
    invoke-virtual {p4, v3, v4, v5}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :catch_0
    move-exception p1

    .line 92
    goto/16 :goto_3

    .line 93
    .line 94
    :sswitch_1
    const-string v5, "Boolean"

    .line 95
    .line 96
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    if-nez v4, :cond_2

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_2
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    const-string v5, "null cannot be cast to non-null type kotlin.Boolean"

    .line 108
    .line 109
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    check-cast v4, Ljava/lang/Boolean;

    .line 113
    .line 114
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    invoke-virtual {p4, v3, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :sswitch_2
    const-string v5, "Long"

    .line 123
    .line 124
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    if-nez v4, :cond_3

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_3
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    const-string v5, "null cannot be cast to non-null type kotlin.Long"

    .line 136
    .line 137
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    check-cast v4, Ljava/lang/Long;

    .line 141
    .line 142
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 143
    .line 144
    .line 145
    move-result-wide v4

    .line 146
    invoke-virtual {p4, v3, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 147
    .line 148
    .line 149
    goto/16 :goto_0

    .line 150
    .line 151
    :sswitch_3
    const-string v5, "Integer"

    .line 152
    .line 153
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    if-nez v4, :cond_4

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_4
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    const-string v5, "null cannot be cast to non-null type kotlin.Int"

    .line 165
    .line 166
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    check-cast v4, Ljava/lang/Integer;

    .line 170
    .line 171
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 172
    .line 173
    .line 174
    move-result v4

    .line 175
    invoke-virtual {p4, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 176
    .line 177
    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    :sswitch_4
    const-string v5, "String"

    .line 181
    .line 182
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v4

    .line 186
    if-nez v4, :cond_5

    .line 187
    .line 188
    :goto_1
    const-string v3, "type not supported"

    .line 189
    .line 190
    invoke-static {v0, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    goto/16 :goto_0

    .line 194
    .line 195
    :cond_5
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v4

    .line 199
    const-string v5, "null cannot be cast to non-null type kotlin.String"

    .line 200
    .line 201
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    check-cast v4, Ljava/lang/String;

    .line 205
    .line 206
    invoke-virtual {p4, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    goto/16 :goto_0

    .line 210
    .line 211
    :cond_6
    if-eqz p2, :cond_7

    .line 212
    .line 213
    const-string v0, "code_seat_type"

    .line 214
    .line 215
    invoke-virtual {p2}, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->getCodeSeatType()Ljava/lang/Integer;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    const-string v2, "info.getCodeSeatType()"

    .line 220
    .line 221
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    invoke-virtual {p4, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 229
    .line 230
    .line 231
    const-string v0, "advertiser_id"

    .line 232
    .line 233
    invoke-virtual {p2}, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->getAdvertiserId()Ljava/lang/Long;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    invoke-virtual {p4, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    const-string v0, "plan_id"

    .line 245
    .line 246
    invoke-virtual {p2}, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->getPlanId()Ljava/lang/Long;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    invoke-virtual {p4, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    const-string v0, "ad_group_id"

    .line 258
    .line 259
    invoke-virtual {p2}, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->getAdGroupId()Ljava/lang/Long;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    invoke-virtual {p4, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    const-string v0, "ad_creative_id"

    .line 271
    .line 272
    invoke-virtual {p2}, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/Long;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    invoke-virtual {p4, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    const-string v0, "is_offline_ad"

    .line 284
    .line 285
    invoke-virtual {p2}, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->isOfflineAd()Z

    .line 286
    .line 287
    .line 288
    move-result v1

    .line 289
    invoke-virtual {p4, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 290
    .line 291
    .line 292
    const-string v0, "request_id"

    .line 293
    .line 294
    invoke-virtual {p2}, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->getRequestId()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    invoke-virtual {p4, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    const-string v0, "code_seat_id"

    .line 302
    .line 303
    invoke-virtual {p2}, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->getCodeSeatId()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    invoke-virtual {p4, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    :cond_7
    const-string v0, "ip_address"

    .line 311
    .line 312
    sget-object v1, Lcom/cloud/tmc/integration/utils/DeviceUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/DeviceUtil;

    .line 313
    .line 314
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getIp()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    invoke-virtual {p4, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    const-string v0, "app_id_external"

    .line 322
    .line 323
    const/4 v1, 0x0

    .line 324
    if-eqz p2, :cond_8

    .line 325
    .line 326
    invoke-virtual {p2}, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->getAppIdExternal()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    goto :goto_2

    .line 331
    :cond_8
    move-object v2, v1

    .line 332
    :goto_2
    invoke-virtual {p4, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    const-string v0, "code_seat_id_external"

    .line 336
    .line 337
    if-eqz p2, :cond_9

    .line 338
    .line 339
    invoke-virtual {p2}, Lcom/cloud/tmc/ad/bean/response/AdsDTO;->getCodeSeatIdExternal()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    :cond_9
    invoke-virtual {p4, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    const-string p2, "event_ts"

    .line 347
    .line 348
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 349
    .line 350
    .line 351
    move-result-wide v0

    .line 352
    invoke-virtual {p4, p2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 353
    .line 354
    .line 355
    const-class p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 356
    .line 357
    invoke-static {p2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object p2

    .line 361
    check-cast p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 362
    .line 363
    const-string v0, ""

    .line 364
    .line 365
    invoke-interface {p2, p1, p3, v0, p4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->recordForAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    .line 367
    .line 368
    goto :goto_4

    .line 369
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 370
    .line 371
    .line 372
    :goto_4
    return-void

    .line 373
    :sswitch_data_0
    .sparse-switch
        -0x6bc5b3cf -> :sswitch_4
        -0x2811e6e2 -> :sswitch_3
        0x243a9c -> :sswitch_2
        0x67140408 -> :sswitch_1
        0x7a5c67f1 -> :sswitch_0
    .end sparse-switch
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
