.class public final Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;
.super Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$a;,
        Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$b;,
        Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$c;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 W2\u00020\u0001:\u0003XYZB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0015\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0015\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0011H\u0007\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0017\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0011H\u0007\u00a2\u0006\u0004\u0008\u0015\u0010\u0014J/\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u0016H\u0007\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ/\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u0016H\u0007\u00a2\u0006\u0004\u0008\u001c\u0010\u001bJ\u001f\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u00112\u0006\u0010\u001e\u001a\u00020\u0016H\u0007\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0017\u0010\"\u001a\u00020!2\u0006\u0010\u001d\u001a\u00020\u0011H\u0007\u00a2\u0006\u0004\u0008\"\u0010#J\u001f\u0010%\u001a\u00020!2\u0006\u0010$\u001a\u00020\u00162\u0006\u0010\u001d\u001a\u00020\u0011H\u0007\u00a2\u0006\u0004\u0008%\u0010&J\u001f\u0010(\u001a\u00020!2\u0006\u0010\'\u001a\u00020\u00162\u0006\u0010\u001d\u001a\u00020\u0011H\u0007\u00a2\u0006\u0004\u0008(\u0010&J1\u0010+\u001a\u00020!2\u0006\u0010)\u001a\u00020\u00162\u0006\u0010*\u001a\u00020\u00162\u0008\u0010\'\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u001d\u001a\u00020\u0011H\u0007\u00a2\u0006\u0004\u0008+\u0010,J3\u00100\u001a\u00020\u0006*\u00020\u00042\u0006\u0010-\u001a\u00020\u00112\u0018\u0008\u0002\u0010/\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0011\u0012\u0004\u0012\u00020\u0006\u0018\u00010.\u00a2\u0006\u0004\u00080\u00101J\u000f\u00102\u001a\u00020!H\u0002\u00a2\u0006\u0004\u00082\u00103J1\u00108\u001a\u00020\u00112\u0006\u00104\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u00105\u001a\u00020!2\u0008\u00107\u001a\u0004\u0018\u000106H\u0002\u00a2\u0006\u0004\u00088\u00109J\'\u0010=\u001a\u00020\u00062\u0006\u0010;\u001a\u00020:2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010<\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008=\u0010>J!\u0010A\u001a\u00020!2\u0008\u0010@\u001a\u0004\u0018\u00010?2\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008A\u0010BR\u0014\u0010E\u001a\u00020\u00118\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008C\u0010DR\u0018\u0010H\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008F\u0010GR\u0018\u0010\n\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008I\u0010JR$\u0010R\u001a\u0004\u0018\u00010K8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008L\u0010M\u001a\u0004\u0008N\u0010O\"\u0004\u0008P\u0010QR\u001e\u0010V\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010S8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008T\u0010U\u00a8\u0006["
    }
    d2 = {
        "Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;",
        "Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;",
        "<init>",
        "()V",
        "Landroid/webkit/WebView;",
        "webview",
        "Lzfb;",
        "setWebview",
        "(Landroid/webkit/WebView;)V",
        "Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;",
        "agentPageCurrentAd",
        "setCurrentAdInfo",
        "(Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;)V",
        "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;",
        "adsDTO",
        "setCurrentAd",
        "(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V",
        "",
        "callbackId",
        "getCurrentAdInfo",
        "(Ljava/lang/String;)V",
        "getCurrentAd",
        "",
        "codeSeatType",
        "codeSeatId",
        "adCount",
        "loadAds",
        "(Ljava/lang/String;ILjava/lang/String;I)V",
        "loadNormalAds",
        "adInfo",
        "closeType",
        "closeAd",
        "(Ljava/lang/String;I)V",
        "",
        "openLandingPage",
        "(Ljava/lang/String;)Z",
        "trackType",
        "trackAd",
        "(ILjava/lang/String;)Z",
        "errorCode",
        "trackWarning",
        "lifeCycle",
        "platform",
        "trackContainerLifeCycle",
        "(IILjava/lang/Integer;Ljava/lang/String;)Z",
        "jsScript",
        "Lkotlin/Function1;",
        "onComplete",
        "executeJavascript",
        "(Landroid/webkit/WebView;Ljava/lang/String;Le74;)V",
        "r",
        "()Z",
        "apiName",
        "success",
        "Lorg/json/JSONObject;",
        "data",
        "o",
        "(Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;)Ljava/lang/String;",
        "Lcom/cloud/hisavana/sdk/internal/agentpage/a;",
        "agentPageAd",
        "methodName",
        "q",
        "(Lcom/cloud/hisavana/sdk/internal/agentpage/a;Ljava/lang/String;Ljava/lang/String;)V",
        "Landroid/view/View;",
        "view",
        "s",
        "(Landroid/view/View;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z",
        "f",
        "Ljava/lang/String;",
        "TAG",
        "g",
        "Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;",
        "agentPageCurrentAdInfo",
        "h",
        "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;",
        "Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$a;",
        "i",
        "Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$a;",
        "getAdActionListener",
        "()Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$a;",
        "setAdActionListener",
        "(Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$a;)V",
        "adActionListener",
        "Ljava/lang/ref/WeakReference;",
        "j",
        "Ljava/lang/ref/WeakReference;",
        "webviewRefer",
        "Companion",
        "a",
        "b",
        "c",
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
.field public static final AGENT_PAGE_INFO:Ljava/lang/String; = "ssplocalhost=true"

.field public static final AGENT_PAGE_START_URL:Ljava/lang/String; = "https://ssplocalhost/"

.field public static final Companion:Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$b;

.field public static final HTML_FROM_LOCAL:Ljava/lang/String; = "htmlfromlocal=true"

.field public static final HTTPS:Ljava/lang/String; = "https://"

.field public static final INTERFACE_NAME:Ljava/lang/String; = "AgentPageJsBridge"

.field public static final MAX_FETCH_NUM:I = 0x64

.field public static final TRACK_LIFE_CYCLE_CLICK:I = 0x2

.field public static final TRACK_LIFE_CYCLE_OPEN:I = 0x0

.field public static final TRACK_LIFE_CYCLE_SHOW:I = 0x1

.field public static final TYPE_TRACK_AD_CLICK:I = 0x2

.field public static final TYPE_TRACK_AD_SHOW:I = 0x1

.field public static k:F

.field public static l:F

.field public static m:F

.field public static n:F


# instance fields
.field public final f:Ljava/lang/String;

.field public g:Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;

.field public h:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field public i:Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$a;

.field public j:Ljava/lang/ref/WeakReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->Companion:Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$b;

    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->k:F

    sput v0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->l:F

    sput v0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->m:F

    sput v0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->n:F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;-><init>()V

    const-string v0, "AgentPageJsBridge"

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->f:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getCallbackJson(Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->o(Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->f:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getWebviewRefer$p(Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->j:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static final synthetic access$setDownX$cp(F)V
    .locals 0

    sput p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->k:F

    return-void
.end method

.method public static final synthetic access$setDownY$cp(F)V
    .locals 0

    sput p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->l:F

    return-void
.end method

.method public static final synthetic access$setUpX$cp(F)V
    .locals 0

    sput p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->m:F

    return-void
.end method

.method public static final synthetic access$setUpY$cp(F)V
    .locals 0

    sput p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->n:F

    return-void
.end method

.method public static synthetic executeJavascript$default(Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;Landroid/webkit/WebView;Ljava/lang/String;Le74;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->executeJavascript(Landroid/webkit/WebView;Ljava/lang/String;Le74;)V

    return-void
.end method

.method public static synthetic n(Lc74;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->p(Lc74;)V

    return-void
.end method

.method public static final p(Lc74;)V
    .locals 1

    const-string v0, "$runnable"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lc74;->invoke()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final closeAd(Ljava/lang/String;I)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "adInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->j:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->f:Ljava/lang/String;

    const-string p2, "close Ad webviewRefer == null"

    invoke-virtual {p1, p0, p2}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->i:Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$a;

    if-eqz p0, :cond_2

    invoke-interface {p0, p2}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$a;->a(I)V

    :cond_2
    return-void
.end method

.method public final executeJavascript(Landroid/webkit/WebView;Ljava/lang/String;Le74;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Ljava/lang/String;",
            "Le74;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jsScript"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$d;

    invoke-direct {v0, p2, p0, p1, p3}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$d;-><init>(Ljava/lang/String;Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;Landroid/webkit/WebView;Le74;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Lv9;

    invoke-direct {p1, v0}, Lv9;-><init>(Lc74;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lc74;->invoke()Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public final getAdActionListener()Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$a;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->i:Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$a;

    return-object p0
.end method

.method public final getCurrentAd(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "callbackId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "currentAd"

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->h:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v2}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "getCurrentAd"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, p1, v2, v0}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->o(Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->j:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:window.HisavanaAdJsBridgeCallback("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->executeJavascript(Landroid/webkit/WebView;Ljava/lang/String;Le74;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->f:Ljava/lang/String;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final getCurrentAdInfo(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "callbackId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "currentAdInfo"

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->g:Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;

    invoke-static {v2}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "getCurrentAdInfo"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, p1, v2, v0}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->o(Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->j:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:window.HisavanaAdJsBridgeCallback("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->executeJavascript(Landroid/webkit/WebView;Ljava/lang/String;Le74;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->f:Ljava/lang/String;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final loadAds(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "callbackId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "codeSeatId"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-gt v0, p4, :cond_0

    const/16 v1, 0x65

    if-ge p4, v1, :cond_0

    goto :goto_0

    :cond_0
    move p4, v0

    :goto_0
    new-instance v1, Lied$b;

    invoke-direct {v1}, Lied$b;-><init>()V

    invoke-virtual {v1, p2}, Lied$b;->i(I)Lied$b;

    move-result-object p2

    invoke-virtual {p2, p3}, Lied$b;->e(Ljava/lang/String;)Lied$b;

    move-result-object p2

    invoke-virtual {p2, v0}, Lied$b;->w(Z)Lied$b;

    move-result-object p2

    invoke-virtual {p2, p4}, Lied$b;->a(I)Lied$b;

    move-result-object p2

    invoke-virtual {p2}, Lied$b;->g()Lied;

    move-result-object p2

    new-instance p3, Lcom/cloud/hisavana/sdk/internal/agentpage/a;

    invoke-static {p2}, Ly45;->g(Ljava/lang/Object;)V

    invoke-direct {p3, p2}, Lcom/cloud/hisavana/sdk/internal/agentpage/a;-><init>(Lied;)V

    const-string p2, "loadAds"

    invoke-virtual {p0, p3, p1, p2}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->q(Lcom/cloud/hisavana/sdk/internal/agentpage/a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/G;->E()V

    return-void
.end method

.method public final loadNormalAds(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "callbackId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "codeSeatId"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-gt v0, p4, :cond_0

    const/16 v1, 0x65

    if-ge p4, v1, :cond_0

    goto :goto_0

    :cond_0
    move p4, v0

    :goto_0
    new-instance v0, Lied$b;

    invoke-direct {v0}, Lied$b;-><init>()V

    invoke-virtual {v0, p2}, Lied$b;->i(I)Lied$b;

    move-result-object p2

    invoke-virtual {p2, p3}, Lied$b;->e(Ljava/lang/String;)Lied$b;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lied$b;->w(Z)Lied$b;

    move-result-object p2

    invoke-virtual {p2, p4}, Lied$b;->a(I)Lied$b;

    move-result-object p2

    invoke-virtual {p2}, Lied$b;->g()Lied;

    move-result-object p2

    new-instance p3, Lcom/cloud/hisavana/sdk/internal/agentpage/a;

    invoke-static {p2}, Ly45;->g(Ljava/lang/Object;)V

    invoke-direct {p3, p2}, Lcom/cloud/hisavana/sdk/internal/agentpage/a;-><init>(Lied;)V

    const-string p2, "loadNormalAds"

    invoke-virtual {p0, p3, p1, p2}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->q(Lcom/cloud/hisavana/sdk/internal/agentpage/a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/G;->E()V

    return-void
.end method

.method public final o(Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;)Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "apiName"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p1, "success"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "callbackId"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p4, :cond_0

    const-string p1, "args"

    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p2, "data"

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "toString(...)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :goto_1
    invoke-static {}, Likd;->b()Likd;

    move-result-object p2

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->f:Ljava/lang/String;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method public final openLandingPage(Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "adInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {p1, v1}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->i:Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$a;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$a;->onClick()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->j:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, v1, p1}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->s(Landroid/view/View;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :goto_2
    invoke-static {}, Likd;->b()Likd;

    move-result-object v1

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->f:Ljava/lang/String;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public final q(Lcom/cloud/hisavana/sdk/internal/agentpage/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$e;

    invoke-direct {v0, p0, p3, p2}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$e;-><init>(Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/internal/agentpage/a;->F(Lcom/cloud/hisavana/sdk/internal/agentpage/a$a;)V

    new-instance p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$f;

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$f;-><init>(Lcom/cloud/hisavana/sdk/internal/agentpage/a;)V

    invoke-virtual {p1, p0}, Lcom/cloud/hisavana/sdk/G;->g(Lcom/cloud/hisavana/sdk/api/listener/AdCallback;)V

    return-void
.end method

.method public final r()Z
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->h:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final s(Landroid/view/View;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z
    .locals 9

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v8, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    sget v2, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->k:F

    sget v3, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->l:F

    sget v4, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->m:F

    sget v5, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->n:F

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;-><init>(FFFFII)V

    const/4 p1, 0x1

    invoke-static {v0, p2, v8, p1}, Lcom/cloud/hisavana/sdk/U0;->b(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    invoke-static {}, Likd;->b()Likd;

    move-result-object p2

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "ssp"

    invoke-virtual {p2, v0, p1}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public final setAdActionListener(Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$a;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->i:Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$a;

    return-void
.end method

.method public final setCurrentAd(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 1

    const-string v0, "adsDTO"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->h:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    return-void
.end method

.method public final setCurrentAdInfo(Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;)V
    .locals 1

    const-string v0, "agentPageCurrentAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->g:Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;

    return-void
.end method

.method public final setWebview(Landroid/webkit/WebView;)V
    .locals 1

    const-string/jumbo v0, "webview"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$c;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$c;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->j:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final trackAd(ILjava/lang/String;)Z
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "adInfo"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {p2, v1}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    return v0

    :cond_1
    invoke-static {p2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->b0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->r()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->i:Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$a;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$a;->a()V

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/cloud/hisavana/sdk/common/util/HSCommonUtils;->a:Lcom/cloud/hisavana/sdk/common/util/HSCommonUtils;

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/common/util/HSCommonUtils;->x(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-static {p2}, Lc2d;->b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_0
    return v1

    :goto_1
    invoke-static {}, Likd;->b()Likd;

    move-result-object p2

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->f:Ljava/lang/String;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public final trackContainerLifeCycle(IILjava/lang/Integer;Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "adInfo"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    const-class v1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {p4, v1}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez p4, :cond_1

    return v0

    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2, p3, p4}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->C(ILjava/lang/Integer;Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    invoke-static {}, Likd;->b()Likd;

    move-result-object p2

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->f:Ljava/lang/String;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public final trackWarning(ILjava/lang/String;)Z
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, ""

    const-string v1, "adInfo"

    invoke-static {p2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    const-class v0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {p2, v0}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez p2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getCodeSeatId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getUuid()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->F(Ljava/lang/String;Ljava/lang/String;I)V

    return v3

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    invoke-static {v0, v0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->F(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    :goto_0
    invoke-static {}, Likd;->b()Likd;

    move-result-object p2

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->f:Ljava/lang/String;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
