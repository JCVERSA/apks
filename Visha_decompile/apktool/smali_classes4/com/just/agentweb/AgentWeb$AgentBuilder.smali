.class public final Lcom/just/agentweb/AgentWeb$AgentBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/just/agentweb/AgentWeb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AgentBuilder"
.end annotation


# instance fields
.field private bgColor:I

.field private mActivity:Landroid/app/Activity;

.field private mAgentWebSettings:Lcom/just/agentweb/IAgentWebSettings;

.field private mAgentWebUIController:Lcom/just/agentweb/AbsAgentWebUIController;

.field private mBaseIndicatorView:Lcom/just/agentweb/BaseIndicatorView;

.field private mChromeMiddleWareHeader:Lcom/just/agentweb/MiddlewareWebChromeBase;

.field private mChromeMiddleWareTail:Lcom/just/agentweb/MiddlewareWebChromeBase;

.field private mEnableIndicator:Z

.field private mErrorLayout:I

.field private mErrorView:Landroid/view/View;

.field private mFragment:Landroidx/fragment/app/Fragment;

.field private mHeight:I

.field private mHttpHeaders:Lcom/just/agentweb/HttpHeaders;

.field private mIEventHandler:Lcom/just/agentweb/IEventHandler;

.field private mIndex:I

.field private mIndicatorColor:I

.field private mIndicatorController:Lcom/just/agentweb/IndicatorController;

.field private mIsInterceptUnkownUrl:Z

.field private mIsNeedDefaultProgress:Z

.field private mJavaObject:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field private mMiddlewareWebClientBaseHeader:Lcom/just/agentweb/MiddlewareWebClientBase;

.field private mMiddlewareWebClientBaseTail:Lcom/just/agentweb/MiddlewareWebClientBase;

.field private mOpenOtherPage:Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;

.field private mPermissionInterceptor:Lcom/just/agentweb/PermissionInterceptor;

.field private mReloadId:I

.field private mSecurityType:Lcom/just/agentweb/AgentWeb$SecurityType;

.field private mTag:I

.field private mViewGroup:Landroid/view/ViewGroup;

.field private mWebChromeClient:Lcom/just/agentweb/WebChromeClient;

.field private mWebClientHelper:Z

.field private mWebCreator:Lcom/just/agentweb/WebCreator;

.field private mWebLayout:Lcom/just/agentweb/IWebLayout;

.field private mWebView:Landroid/webkit/WebView;

.field private mWebViewClient:Lcom/just/agentweb/WebViewClient;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mIndex:I

    const/4 v1, 0x0

    .line 23
    iput-object v1, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mIndicatorController:Lcom/just/agentweb/IndicatorController;

    const/4 v2, 0x1

    .line 24
    iput-boolean v2, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mEnableIndicator:Z

    .line 25
    iput-object v1, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 26
    iput v0, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mIndicatorColor:I

    .line 27
    iput v0, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->bgColor:I

    .line 28
    iput-object v1, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mHttpHeaders:Lcom/just/agentweb/HttpHeaders;

    .line 29
    iput v0, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mHeight:I

    .line 30
    sget-object v0, Lcom/just/agentweb/AgentWeb$SecurityType;->DEFAULT_CHECK:Lcom/just/agentweb/AgentWeb$SecurityType;

    iput-object v0, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mSecurityType:Lcom/just/agentweb/AgentWeb$SecurityType;

    .line 31
    iput-boolean v2, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mWebClientHelper:Z

    .line 32
    iput-object v1, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mWebLayout:Lcom/just/agentweb/IWebLayout;

    .line 33
    iput-object v1, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mPermissionInterceptor:Lcom/just/agentweb/PermissionInterceptor;

    .line 34
    iput-object v1, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mOpenOtherPage:Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;

    .line 35
    iput-boolean v2, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mIsInterceptUnkownUrl:Z

    .line 36
    iput-object v1, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mChromeMiddleWareHeader:Lcom/just/agentweb/MiddlewareWebChromeBase;

    .line 37
    iput-object v1, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mChromeMiddleWareTail:Lcom/just/agentweb/MiddlewareWebChromeBase;

    .line 38
    iput-object p1, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mActivity:Landroid/app/Activity;

    const/4 p1, 0x0

    .line 39
    iput p1, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mTag:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mIndex:I

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mIndicatorController:Lcom/just/agentweb/IndicatorController;

    const/4 v2, 0x1

    .line 4
    iput-boolean v2, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mEnableIndicator:Z

    .line 5
    iput-object v1, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 6
    iput v0, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mIndicatorColor:I

    .line 7
    iput v0, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->bgColor:I

    .line 8
    iput-object v1, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mHttpHeaders:Lcom/just/agentweb/HttpHeaders;

    .line 9
    iput v0, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mHeight:I

    .line 10
    sget-object v0, Lcom/just/agentweb/AgentWeb$SecurityType;->DEFAULT_CHECK:Lcom/just/agentweb/AgentWeb$SecurityType;

    iput-object v0, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mSecurityType:Lcom/just/agentweb/AgentWeb$SecurityType;

    .line 11
    iput-boolean v2, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mWebClientHelper:Z

    .line 12
    iput-object v1, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mWebLayout:Lcom/just/agentweb/IWebLayout;

    .line 13
    iput-object v1, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mPermissionInterceptor:Lcom/just/agentweb/PermissionInterceptor;

    .line 14
    iput-object v1, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mOpenOtherPage:Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;

    .line 15
    iput-boolean v2, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mIsInterceptUnkownUrl:Z

    .line 16
    iput-object v1, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mChromeMiddleWareHeader:Lcom/just/agentweb/MiddlewareWebChromeBase;

    .line 17
    iput-object v1, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mChromeMiddleWareTail:Lcom/just/agentweb/MiddlewareWebChromeBase;

    .line 18
    iput-object p1, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mActivity:Landroid/app/Activity;

    .line 19
    iput-object p2, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mFragment:Landroidx/fragment/app/Fragment;

    .line 20
    iput v2, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mTag:I

    return-void
.end method

.method public static bridge synthetic A(Lcom/just/agentweb/AgentWeb$AgentBuilder;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mViewGroup:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static bridge synthetic B(Lcom/just/agentweb/AgentWeb$AgentBuilder;)Lcom/just/agentweb/WebChromeClient;
    .locals 0

    iget-object p0, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mWebChromeClient:Lcom/just/agentweb/WebChromeClient;

    return-object p0
.end method

.method public static bridge synthetic C(Lcom/just/agentweb/AgentWeb$AgentBuilder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mWebClientHelper:Z

    return p0
.end method

.method public static bridge synthetic D(Lcom/just/agentweb/AgentWeb$AgentBuilder;)Lcom/just/agentweb/WebCreator;
    .locals 0

    iget-object p0, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mWebCreator:Lcom/just/agentweb/WebCreator;

    return-object p0
.end method

.method public static bridge synthetic E(Lcom/just/agentweb/AgentWeb$AgentBuilder;)Lcom/just/agentweb/IWebLayout;
    .locals 0

    iget-object p0, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mWebLayout:Lcom/just/agentweb/IWebLayout;

    return-object p0
.end method

.method public static bridge synthetic F(Lcom/just/agentweb/AgentWeb$AgentBuilder;)Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mWebView:Landroid/webkit/WebView;

    return-object p0
.end method

.method public static bridge synthetic G(Lcom/just/agentweb/AgentWeb$AgentBuilder;)Lcom/just/agentweb/WebViewClient;
    .locals 0

    iget-object p0, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mWebViewClient:Lcom/just/agentweb/WebViewClient;

    return-object p0
.end method

.method public static bridge synthetic H(Lcom/just/agentweb/AgentWeb$AgentBuilder;I)V
    .locals 0

    iput p1, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->bgColor:I

    return-void
.end method

.method public static bridge synthetic I(Lcom/just/agentweb/AgentWeb$AgentBuilder;Lcom/just/agentweb/IAgentWebSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mAgentWebSettings:Lcom/just/agentweb/IAgentWebSettings;

    return-void
.end method

.method public static bridge synthetic J(Lcom/just/agentweb/AgentWeb$AgentBuilder;Lcom/just/agentweb/AbsAgentWebUIController;)V
    .locals 0

    iput-object p1, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mAgentWebUIController:Lcom/just/agentweb/AbsAgentWebUIController;

    return-void
.end method

.method public static bridge synthetic K(Lcom/just/agentweb/AgentWeb$AgentBuilder;Lcom/just/agentweb/BaseIndicatorView;)V
    .locals 0

    iput-object p1, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mBaseIndicatorView:Lcom/just/agentweb/BaseIndicatorView;

    return-void
.end method

.method public static bridge synthetic L(Lcom/just/agentweb/AgentWeb$AgentBuilder;Lcom/just/agentweb/MiddlewareWebChromeBase;)V
    .locals 0

    iput-object p1, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mChromeMiddleWareHeader:Lcom/just/agentweb/MiddlewareWebChromeBase;

    return-void
.end method

.method public static bridge synthetic M(Lcom/just/agentweb/AgentWeb$AgentBuilder;Lcom/just/agentweb/MiddlewareWebChromeBase;)V
    .locals 0

    iput-object p1, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mChromeMiddleWareTail:Lcom/just/agentweb/MiddlewareWebChromeBase;

    return-void
.end method

.method public static bridge synthetic N(Lcom/just/agentweb/AgentWeb$AgentBuilder;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mEnableIndicator:Z

    return-void
.end method

.method public static bridge synthetic O(Lcom/just/agentweb/AgentWeb$AgentBuilder;I)V
    .locals 0

    iput p1, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mErrorLayout:I

    return-void
.end method

.method public static bridge synthetic P(Lcom/just/agentweb/AgentWeb$AgentBuilder;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mErrorView:Landroid/view/View;

    return-void
.end method

.method public static bridge synthetic Q(Lcom/just/agentweb/AgentWeb$AgentBuilder;I)V
    .locals 0

    iput p1, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mHeight:I

    return-void
.end method

.method public static bridge synthetic R(Lcom/just/agentweb/AgentWeb$AgentBuilder;Lcom/just/agentweb/IEventHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mIEventHandler:Lcom/just/agentweb/IEventHandler;

    return-void
.end method

.method public static bridge synthetic S(Lcom/just/agentweb/AgentWeb$AgentBuilder;I)V
    .locals 0

    iput p1, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mIndicatorColor:I

    return-void
.end method

.method public static bridge synthetic T(Lcom/just/agentweb/AgentWeb$AgentBuilder;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mIsInterceptUnkownUrl:Z

    return-void
.end method

.method public static bridge synthetic U(Lcom/just/agentweb/AgentWeb$AgentBuilder;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mIsNeedDefaultProgress:Z

    return-void
.end method

.method public static bridge synthetic V(Lcom/just/agentweb/AgentWeb$AgentBuilder;Lcom/just/agentweb/MiddlewareWebClientBase;)V
    .locals 0

    iput-object p1, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mMiddlewareWebClientBaseHeader:Lcom/just/agentweb/MiddlewareWebClientBase;

    return-void
.end method

.method public static bridge synthetic W(Lcom/just/agentweb/AgentWeb$AgentBuilder;Lcom/just/agentweb/MiddlewareWebClientBase;)V
    .locals 0

    iput-object p1, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mMiddlewareWebClientBaseTail:Lcom/just/agentweb/MiddlewareWebClientBase;

    return-void
.end method

.method public static bridge synthetic X(Lcom/just/agentweb/AgentWeb$AgentBuilder;Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;)V
    .locals 0

    iput-object p1, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mOpenOtherPage:Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;

    return-void
.end method

.method public static bridge synthetic Y(Lcom/just/agentweb/AgentWeb$AgentBuilder;Lcom/just/agentweb/PermissionInterceptor;)V
    .locals 0

    iput-object p1, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mPermissionInterceptor:Lcom/just/agentweb/PermissionInterceptor;

    return-void
.end method

.method public static bridge synthetic Z(Lcom/just/agentweb/AgentWeb$AgentBuilder;I)V
    .locals 0

    iput p1, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mReloadId:I

    return-void
.end method

.method public static bridge synthetic a(Lcom/just/agentweb/AgentWeb$AgentBuilder;)I
    .locals 0

    iget p0, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->bgColor:I

    return p0
.end method

.method public static bridge synthetic a0(Lcom/just/agentweb/AgentWeb$AgentBuilder;Lcom/just/agentweb/AgentWeb$SecurityType;)V
    .locals 0

    iput-object p1, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mSecurityType:Lcom/just/agentweb/AgentWeb$SecurityType;

    return-void
.end method

.method private addHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mHttpHeaders:Lcom/just/agentweb/HttpHeaders;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/just/agentweb/HttpHeaders;->create()Lcom/just/agentweb/HttpHeaders;

    move-result-object v0

    iput-object v0, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mHttpHeaders:Lcom/just/agentweb/HttpHeaders;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mHttpHeaders:Lcom/just/agentweb/HttpHeaders;

    invoke-virtual {p0, p1, p2, p3}, Lcom/just/agentweb/HttpHeaders;->additionalHttpHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private addHeader(Ljava/lang/String;Ljava/util/Map;)V
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

    .line 4
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mHttpHeaders:Lcom/just/agentweb/HttpHeaders;

    if-nez v0, :cond_0

    .line 5
    invoke-static {}, Lcom/just/agentweb/HttpHeaders;->create()Lcom/just/agentweb/HttpHeaders;

    move-result-object v0

    iput-object v0, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mHttpHeaders:Lcom/just/agentweb/HttpHeaders;

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mHttpHeaders:Lcom/just/agentweb/HttpHeaders;

    invoke-virtual {p0, p1, p2}, Lcom/just/agentweb/HttpHeaders;->additionalHttpHeaders(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private addJavaObject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mJavaObject:Landroidx/collection/ArrayMap;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mJavaObject:Landroidx/collection/ArrayMap;

    :cond_0
    iget-object p0, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mJavaObject:Landroidx/collection/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static bridge synthetic b(Lcom/just/agentweb/AgentWeb$AgentBuilder;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static bridge synthetic b0(Lcom/just/agentweb/AgentWeb$AgentBuilder;Lcom/just/agentweb/WebChromeClient;)V
    .locals 0

    iput-object p1, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mWebChromeClient:Lcom/just/agentweb/WebChromeClient;

    return-void
.end method

.method private buildAgentWeb()Lcom/just/agentweb/AgentWeb$PreAgentWeb;
    .locals 3

    iget v0, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mTag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mViewGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "ViewGroup is null,Please check your parameters ."

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance v0, Lcom/just/agentweb/AgentWeb$PreAgentWeb;

    new-instance v1, Lcom/just/agentweb/AgentWeb;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/just/agentweb/AgentWeb;-><init>(Lcom/just/agentweb/AgentWeb$AgentBuilder;Lw9;)V

    invoke-static {v1, p0}, Lcom/just/agentweb/HookManager;->hookAgentWeb(Lcom/just/agentweb/AgentWeb;Lcom/just/agentweb/AgentWeb$AgentBuilder;)Lcom/just/agentweb/AgentWeb;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/just/agentweb/AgentWeb$PreAgentWeb;-><init>(Lcom/just/agentweb/AgentWeb;)V

    return-object v0
.end method

.method public static bridge synthetic c(Lcom/just/agentweb/AgentWeb$AgentBuilder;)Lcom/just/agentweb/IAgentWebSettings;
    .locals 0

    iget-object p0, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mAgentWebSettings:Lcom/just/agentweb/IAgentWebSettings;

    return-object p0
.end method

.method public static bridge synthetic c0(Lcom/just/agentweb/AgentWeb$AgentBuilder;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mWebClientHelper:Z

    return-void
.end method

.method public static bridge synthetic d(Lcom/just/agentweb/AgentWeb$AgentBuilder;)Lcom/just/agentweb/AbsAgentWebUIController;
    .locals 0

    iget-object p0, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mAgentWebUIController:Lcom/just/agentweb/AbsAgentWebUIController;

    return-object p0
.end method

.method public static bridge synthetic d0(Lcom/just/agentweb/AgentWeb$AgentBuilder;Lcom/just/agentweb/IWebLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mWebLayout:Lcom/just/agentweb/IWebLayout;

    return-void
.end method

.method public static bridge synthetic e(Lcom/just/agentweb/AgentWeb$AgentBuilder;)Lcom/just/agentweb/BaseIndicatorView;
    .locals 0

    iget-object p0, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mBaseIndicatorView:Lcom/just/agentweb/BaseIndicatorView;

    return-object p0
.end method

.method public static bridge synthetic e0(Lcom/just/agentweb/AgentWeb$AgentBuilder;Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mWebView:Landroid/webkit/WebView;

    return-void
.end method

.method public static bridge synthetic f(Lcom/just/agentweb/AgentWeb$AgentBuilder;)Lcom/just/agentweb/MiddlewareWebChromeBase;
    .locals 0

    iget-object p0, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mChromeMiddleWareHeader:Lcom/just/agentweb/MiddlewareWebChromeBase;

    return-object p0
.end method

.method public static bridge synthetic f0(Lcom/just/agentweb/AgentWeb$AgentBuilder;Lcom/just/agentweb/WebViewClient;)V
    .locals 0

    iput-object p1, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mWebViewClient:Lcom/just/agentweb/WebViewClient;

    return-void
.end method

.method public static bridge synthetic g(Lcom/just/agentweb/AgentWeb$AgentBuilder;)Lcom/just/agentweb/MiddlewareWebChromeBase;
    .locals 0

    iget-object p0, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mChromeMiddleWareTail:Lcom/just/agentweb/MiddlewareWebChromeBase;

    return-object p0
.end method

.method public static bridge synthetic g0(Lcom/just/agentweb/AgentWeb$AgentBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic h(Lcom/just/agentweb/AgentWeb$AgentBuilder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mEnableIndicator:Z

    return p0
.end method

.method public static bridge synthetic h0(Lcom/just/agentweb/AgentWeb$AgentBuilder;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->addHeader(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static bridge synthetic i(Lcom/just/agentweb/AgentWeb$AgentBuilder;)I
    .locals 0

    iget p0, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mErrorLayout:I

    return p0
.end method

.method public static bridge synthetic i0(Lcom/just/agentweb/AgentWeb$AgentBuilder;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->addJavaObject(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic j(Lcom/just/agentweb/AgentWeb$AgentBuilder;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mErrorView:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic j0(Lcom/just/agentweb/AgentWeb$AgentBuilder;)Lcom/just/agentweb/AgentWeb$PreAgentWeb;
    .locals 0

    invoke-direct {p0}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->buildAgentWeb()Lcom/just/agentweb/AgentWeb$PreAgentWeb;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/just/agentweb/AgentWeb$AgentBuilder;)I
    .locals 0

    iget p0, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mHeight:I

    return p0
.end method

.method public static bridge synthetic l(Lcom/just/agentweb/AgentWeb$AgentBuilder;)Lcom/just/agentweb/HttpHeaders;
    .locals 0

    iget-object p0, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mHttpHeaders:Lcom/just/agentweb/HttpHeaders;

    return-object p0
.end method

.method public static bridge synthetic m(Lcom/just/agentweb/AgentWeb$AgentBuilder;)Lcom/just/agentweb/IEventHandler;
    .locals 0

    iget-object p0, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mIEventHandler:Lcom/just/agentweb/IEventHandler;

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/just/agentweb/AgentWeb$AgentBuilder;)I
    .locals 0

    iget p0, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mIndex:I

    return p0
.end method

.method public static bridge synthetic o(Lcom/just/agentweb/AgentWeb$AgentBuilder;)I
    .locals 0

    iget p0, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mIndicatorColor:I

    return p0
.end method

.method public static bridge synthetic p(Lcom/just/agentweb/AgentWeb$AgentBuilder;)Lcom/just/agentweb/IndicatorController;
    .locals 0

    iget-object p0, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mIndicatorController:Lcom/just/agentweb/IndicatorController;

    return-object p0
.end method

.method public static bridge synthetic q(Lcom/just/agentweb/AgentWeb$AgentBuilder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mIsInterceptUnkownUrl:Z

    return p0
.end method

.method public static bridge synthetic r(Lcom/just/agentweb/AgentWeb$AgentBuilder;)Landroidx/collection/ArrayMap;
    .locals 0

    iget-object p0, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mJavaObject:Landroidx/collection/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic s(Lcom/just/agentweb/AgentWeb$AgentBuilder;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    iget-object p0, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    return-object p0
.end method

.method public static bridge synthetic t(Lcom/just/agentweb/AgentWeb$AgentBuilder;)Lcom/just/agentweb/MiddlewareWebClientBase;
    .locals 0

    iget-object p0, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mMiddlewareWebClientBaseHeader:Lcom/just/agentweb/MiddlewareWebClientBase;

    return-object p0
.end method

.method public static bridge synthetic u(Lcom/just/agentweb/AgentWeb$AgentBuilder;)Lcom/just/agentweb/MiddlewareWebClientBase;
    .locals 0

    iget-object p0, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mMiddlewareWebClientBaseTail:Lcom/just/agentweb/MiddlewareWebClientBase;

    return-object p0
.end method

.method public static bridge synthetic v(Lcom/just/agentweb/AgentWeb$AgentBuilder;)Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;
    .locals 0

    iget-object p0, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mOpenOtherPage:Lcom/just/agentweb/DefaultWebClient$OpenOtherPageWays;

    return-object p0
.end method

.method public static bridge synthetic w(Lcom/just/agentweb/AgentWeb$AgentBuilder;)Lcom/just/agentweb/PermissionInterceptor;
    .locals 0

    iget-object p0, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mPermissionInterceptor:Lcom/just/agentweb/PermissionInterceptor;

    return-object p0
.end method

.method public static bridge synthetic x(Lcom/just/agentweb/AgentWeb$AgentBuilder;)I
    .locals 0

    iget p0, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mReloadId:I

    return p0
.end method

.method public static bridge synthetic y(Lcom/just/agentweb/AgentWeb$AgentBuilder;)Lcom/just/agentweb/AgentWeb$SecurityType;
    .locals 0

    iget-object p0, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mSecurityType:Lcom/just/agentweb/AgentWeb$SecurityType;

    return-object p0
.end method

.method public static bridge synthetic z(Lcom/just/agentweb/AgentWeb$AgentBuilder;)I
    .locals 0

    iget p0, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mTag:I

    return p0
.end method


# virtual methods
.method public setAgentWebParent(Landroid/view/ViewGroup;ILandroid/view/ViewGroup$LayoutParams;)Lcom/just/agentweb/AgentWeb$IndicatorBuilder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup$LayoutParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    iput-object p1, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mViewGroup:Landroid/view/ViewGroup;

    .line 5
    iput-object p3, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 6
    iput p2, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mIndex:I

    .line 7
    new-instance p1, Lcom/just/agentweb/AgentWeb$IndicatorBuilder;

    invoke-direct {p1, p0}, Lcom/just/agentweb/AgentWeb$IndicatorBuilder;-><init>(Lcom/just/agentweb/AgentWeb$AgentBuilder;)V

    return-object p1
.end method

.method public setAgentWebParent(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;)Lcom/just/agentweb/AgentWeb$IndicatorBuilder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup$LayoutParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mViewGroup:Landroid/view/ViewGroup;

    .line 2
    iput-object p2, p0, Lcom/just/agentweb/AgentWeb$AgentBuilder;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 3
    new-instance p1, Lcom/just/agentweb/AgentWeb$IndicatorBuilder;

    invoke-direct {p1, p0}, Lcom/just/agentweb/AgentWeb$IndicatorBuilder;-><init>(Lcom/just/agentweb/AgentWeb$AgentBuilder;)V

    return-object p1
.end method
