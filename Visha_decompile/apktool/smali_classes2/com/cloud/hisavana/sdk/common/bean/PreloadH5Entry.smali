.class public final Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$Companion;,
        Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$PreloadCallback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008*\u0018\u0000 >2\u00020\u0001:\u0002>?BS\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J!\u0010\u0018\u001a\u00020\u00162\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0017\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\r\u0010\u001c\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u001c\u0010\u001bJ\r\u0010\u001d\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u001d\u0010\u001bR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u001e\u001a\u0004\u0008\u001f\u0010 R$\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010!\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R$\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010&\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R\"\u0010\t\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010+\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010\u0014R$\u0010\n\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010&\u001a\u0004\u0008/\u0010(\"\u0004\u00080\u0010*R\"\u0010\u000c\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u00101\u001a\u0004\u00082\u00103\"\u0004\u00084\u00105R$\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u00106\u001a\u0004\u00087\u00108\"\u0004\u00089\u0010:R\u0016\u0010;\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008;\u0010+R\u0016\u0010<\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008<\u0010=\u00a8\u0006@"
    }
    d2 = {
        "Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;",
        "",
        "Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;",
        "webView",
        "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;",
        "adsDTO",
        "",
        "overrideUrl",
        "",
        "process",
        "title",
        "",
        "spendEndTime",
        "Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$PreloadCallback;",
        "callback",
        "<init>",
        "(Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;ILjava/lang/String;JLcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$PreloadCallback;)V",
        "errorCode",
        "Lzfb;",
        "handlerLoadFailed",
        "(I)V",
        "url",
        "",
        "hasGesture",
        "shouldOverrideUrlLoad",
        "(Ljava/lang/String;Z)Z",
        "initPAW",
        "()V",
        "load",
        "release",
        "Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;",
        "getWebView",
        "()Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;",
        "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;",
        "getAdsDTO",
        "()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;",
        "setAdsDTO",
        "(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V",
        "Ljava/lang/String;",
        "getOverrideUrl",
        "()Ljava/lang/String;",
        "setOverrideUrl",
        "(Ljava/lang/String;)V",
        "I",
        "getProcess",
        "()I",
        "setProcess",
        "getTitle",
        "setTitle",
        "J",
        "getSpendEndTime",
        "()J",
        "setSpendEndTime",
        "(J)V",
        "Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$PreloadCallback;",
        "getCallback",
        "()Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$PreloadCallback;",
        "setCallback",
        "(Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$PreloadCallback;)V",
        "sslFailCount",
        "isStartLoad",
        "Z",
        "Companion",
        "PreloadCallback",
        "api_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$Companion;

.field private static final TAG:Ljava/lang/String;

.field private static sPawRegisterMethod:Ljava/lang/reflect/Method;


# instance fields
.field private adsDTO:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field private callback:Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$PreloadCallback;

.field private isStartLoad:Z

.field private overrideUrl:Ljava/lang/String;

.field private process:I

.field private spendEndTime:J

.field private sslFailCount:I

.field private title:Ljava/lang/String;

.field private final webView:Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->Companion:Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$Companion;

    const-string v0, "PreloadEntry"

    sput-object v0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;ILjava/lang/String;JLcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$PreloadCallback;)V
    .locals 1

    const-string/jumbo v0, "webView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->webView:Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    .line 3
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->adsDTO:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 4
    iput-object p3, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->overrideUrl:Ljava/lang/String;

    .line 5
    iput p4, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->process:I

    .line 6
    iput-object p5, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->title:Ljava/lang/String;

    .line 7
    iput-wide p6, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->spendEndTime:J

    .line 8
    iput-object p8, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->callback:Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$PreloadCallback;

    .line 9
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 10
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 11
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 12
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 13
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 14
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 15
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 16
    new-instance p2, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$1$1;

    invoke-direct {p2, p0}, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$1$1;-><init>(Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 17
    new-instance p2, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$1$2;

    invoke-direct {p2, p0}, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$1$2;-><init>(Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 18
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->initPAW()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;ILjava/lang/String;JLcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$PreloadCallback;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 8

    and-int/lit8 v0, p9, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    and-int/lit8 v2, p9, 0x4

    if-eqz v2, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    move-object v2, p3

    :goto_1
    and-int/lit8 v3, p9, 0x8

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    move v3, p4

    :goto_2
    and-int/lit8 v4, p9, 0x10

    if-eqz v4, :cond_3

    .line 19
    const-string v4, ""

    goto :goto_3

    :cond_3
    move-object v4, p5

    :goto_3
    and-int/lit8 v5, p9, 0x20

    if-eqz v5, :cond_4

    const-wide/16 v5, 0x0

    goto :goto_4

    :cond_4
    move-wide v5, p6

    :goto_4
    and-int/lit8 v7, p9, 0x40

    if-eqz v7, :cond_5

    goto :goto_5

    :cond_5
    move-object/from16 v1, p8

    :goto_5
    move-object p2, p0

    move-object p3, p1

    move-object p4, v0

    move-object p5, v2

    move p6, v3

    move-object p7, v4

    move-wide/from16 p8, v5

    move-object/from16 p10, v1

    .line 20
    invoke-direct/range {p2 .. p10}, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;-><init>(Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;ILjava/lang/String;JLcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$PreloadCallback;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->handlerLoadFailed$lambda$2(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getSslFailCount$p(Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;)I
    .locals 0

    iget p0, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->sslFailCount:I

    return p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$handlerLoadFailed(Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->handlerLoadFailed(I)V

    return-void
.end method

.method public static final synthetic access$isStartLoad$p(Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->isStartLoad:Z

    return p0
.end method

.method public static final synthetic access$setSslFailCount$p(Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->sslFailCount:I

    return-void
.end method

.method public static final synthetic access$setStartLoad$p(Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->isStartLoad:Z

    return-void
.end method

.method public static final synthetic access$shouldOverrideUrlLoad(Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;Ljava/lang/String;Z)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->shouldOverrideUrlLoad(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private final handlerLoadFailed(I)V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->adsDTO:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getUuid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->webView:Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    new-instance v2, Lne8;

    invoke-direct {v2, v0}, Lne8;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->callback:Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$PreloadCallback;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$PreloadCallback;->onPageFailed(I)V

    :cond_1
    return-void
.end method

.method private static final handlerLoadFailed$lambda$2(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Latd;->a:Latd;

    invoke-virtual {v0, p0}, Latd;->j(Ljava/lang/String;)V

    return-void
.end method

.method private final initPAW()V
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->webView:Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    sget-object v0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->sPawRegisterMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    const-class v0, Lcom/google/android/gms/ads/MobileAds;

    const-string v1, "registerWebView"

    const-class v2, Landroid/webkit/WebView;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->sPawRegisterMethod:Ljava/lang/reflect/Method;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->sPawRegisterMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->webView:Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    sget-object v1, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initPaw error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void
.end method

.method private final shouldOverrideUrlLoad(Ljava/lang/String;Z)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const-string v1, "http://"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v1, v0, v2, v3}, Lg1a;->R(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x1

    if-nez v1, :cond_1

    const-string v1, "https://"

    invoke-static {p1, v1, v0, v2, v3}, Lg1a;->R(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->overrideUrl:Ljava/lang/String;

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->callback:Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$PreloadCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$PreloadCallback;->shouldOverrideUrlLoading(Ljava/lang/String;Z)V

    :cond_0
    return v4

    :cond_1
    const-string v1, "play.google.com"

    invoke-static {p1, v1, v0, v2, v3}, Lj1a;->X(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->overrideUrl:Ljava/lang/String;

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->callback:Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$PreloadCallback;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$PreloadCallback;->shouldOverrideUrlLoading(Ljava/lang/String;Z)V

    :cond_2
    return v4

    :cond_3
    return v0
.end method


# virtual methods
.method public final getAdsDTO()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->adsDTO:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    return-object p0
.end method

.method public final getCallback()Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$PreloadCallback;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->callback:Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$PreloadCallback;

    return-object p0
.end method

.method public final getOverrideUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->overrideUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final getProcess()I
    .locals 0

    iget p0, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->process:I

    return p0
.end method

.method public final getSpendEndTime()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->spendEndTime:J

    return-wide v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final getWebView()Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->webView:Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    return-object p0
.end method

.method public final load()V
    .locals 5

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->adsDTO:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getRealLandUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->webView:Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    invoke-static {}, Lc39;->f()I

    move-result v2

    invoke-static {}, Lc39;->e()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/view/View;->layout(IIII)V

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->webView:Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final release()V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->webView:Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    new-instance v2, Landroid/webkit/WebViewClient;

    invoke-direct {v2}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->webView:Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->webView:Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->webView:Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->clearHistory()V

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->webView:Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->onPause()V

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->webView:Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Likd;->b()Likd;

    move-result-object v2

    sget-object v3, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reset error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->adsDTO:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/4 v1, 0x0

    iput v1, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->process:I

    const-string v2, ""

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->overrideUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->callback:Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$PreloadCallback;

    iput v1, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->sslFailCount:I

    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->isStartLoad:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->spendEndTime:J

    return-void
.end method

.method public final setAdsDTO(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->adsDTO:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    return-void
.end method

.method public final setCallback(Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$PreloadCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->callback:Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$PreloadCallback;

    return-void
.end method

.method public final setOverrideUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->overrideUrl:Ljava/lang/String;

    return-void
.end method

.method public final setProcess(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->process:I

    return-void
.end method

.method public final setSpendEndTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->spendEndTime:J

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->title:Ljava/lang/String;

    return-void
.end method
