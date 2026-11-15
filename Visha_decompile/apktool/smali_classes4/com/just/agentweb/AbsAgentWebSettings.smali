.class public abstract Lcom/just/agentweb/AbsAgentWebSettings;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/just/agentweb/IAgentWebSettings;
.implements Lcom/just/agentweb/WebListenerManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "AbsAgentWebSettings"

.field public static final USERAGENT_AGENTWEB:Ljava/lang/String; = " AgentWeb/1.0 "

.field public static final USERAGENT_QQ_BROWSER:Ljava/lang/String; = " MQQBrowser/8.0 "

.field public static final USERAGENT_UC:Ljava/lang/String; = " UCBrowser/11.6.4.950 "


# instance fields
.field protected mAgentWeb:Lcom/just/agentweb/AgentWeb;

.field private mWebSettings:Landroid/webkit/WebSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/just/agentweb/AbsAgentWebSettings;
    .locals 1

    new-instance v0, Lcom/just/agentweb/AgentWebSettingsImpl;

    invoke-direct {v0}, Lcom/just/agentweb/AgentWebSettingsImpl;-><init>()V

    return-object v0
.end method

.method private settings(Landroid/webkit/WebView;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-object v0, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    iget-object v0, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/just/agentweb/AgentWebUtils;->checkNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    :goto_0
    iget-object v0, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    const/4 v0, 0x2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    const/16 v3, 0x64

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    iget-object v0, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    iget-object v0, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    iget-object v0, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    iget-object v0, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    iget-object v0, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    iget-object v0, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    iget-object v0, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    iget-object v0, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    iget-object v0, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    sget-object v2, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    iget-object v0, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    iget-object v0, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    iget-object v0, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    iget-object v0, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    iget-object v0, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    const-string v2, "utf-8"

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    iget-object v0, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    iget-object v0, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/just/agentweb/AgentWebConfig;->getCachePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/just/agentweb/AbsAgentWebSettings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dir:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   appcache:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/just/agentweb/AgentWebConfig;->getCachePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/just/agentweb/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {p0}, Lcom/just/agentweb/AbsAgentWebSettings;->getWebSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    const-string v2, " AgentWeb/1.0 "

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, " UCBrowser/11.6.4.950 "

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UserAgentString : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {p0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/just/agentweb/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final bindAgentWeb(Lcom/just/agentweb/AgentWeb;)V
    .locals 0

    iput-object p1, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mAgentWeb:Lcom/just/agentweb/AgentWeb;

    invoke-virtual {p0, p1}, Lcom/just/agentweb/AbsAgentWebSettings;->bindAgentWebSupport(Lcom/just/agentweb/AgentWeb;)V

    return-void
.end method

.method public abstract bindAgentWebSupport(Lcom/just/agentweb/AgentWeb;)V
.end method

.method public getWebSettings()Landroid/webkit/WebSettings;
    .locals 0

    iget-object p0, p0, Lcom/just/agentweb/AbsAgentWebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    return-object p0
.end method

.method public setDownloader(Landroid/webkit/WebView;Landroid/webkit/DownloadListener;)Lcom/just/agentweb/WebListenerManager;
    .locals 0

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    return-object p0
.end method

.method public setWebChromeClient(Landroid/webkit/WebView;Landroid/webkit/WebChromeClient;)Lcom/just/agentweb/WebListenerManager;
    .locals 0

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-object p0
.end method

.method public setWebViewClient(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;)Lcom/just/agentweb/WebListenerManager;
    .locals 0

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-object p0
.end method

.method public toSetting(Landroid/webkit/WebView;)Lcom/just/agentweb/IAgentWebSettings;
    .locals 0

    invoke-direct {p0, p1}, Lcom/just/agentweb/AbsAgentWebSettings;->settings(Landroid/webkit/WebView;)V

    return-object p0
.end method
