.class public final Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;
.super Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;
.source "source.java"


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
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 W2\u00020\u0001:\u0003XYZB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J1\u0010\r\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00042\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\'\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J!\u0010\u0019\u001a\u00020\u00042\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0018\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0015\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u001c\u001a\u00020\u001b\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0015\u0010!\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\u001f\u00a2\u0006\u0004\u0008!\u0010\"J\u0015\u0010#\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0017\u00a2\u0006\u0004\u0008#\u0010$J\u0017\u0010%\u001a\u00020\u00122\u0006\u0010\t\u001a\u00020\u0007H\u0007\u00a2\u0006\u0004\u0008%\u0010&J\u0017\u0010\'\u001a\u00020\u00122\u0006\u0010\t\u001a\u00020\u0007H\u0007\u00a2\u0006\u0004\u0008\'\u0010&J/\u0010,\u001a\u00020\u00122\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010)\u001a\u00020(2\u0006\u0010*\u001a\u00020\u00072\u0006\u0010+\u001a\u00020(H\u0007\u00a2\u0006\u0004\u0008,\u0010-J/\u0010.\u001a\u00020\u00122\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010)\u001a\u00020(2\u0006\u0010*\u001a\u00020\u00072\u0006\u0010+\u001a\u00020(H\u0007\u00a2\u0006\u0004\u0008.\u0010-J\u001f\u00101\u001a\u00020\u00122\u0006\u0010/\u001a\u00020\u00072\u0006\u00100\u001a\u00020(H\u0007\u00a2\u0006\u0004\u00081\u00102J\u0017\u00103\u001a\u00020\u00042\u0006\u0010/\u001a\u00020\u0007H\u0007\u00a2\u0006\u0004\u00083\u00104J\u001f\u00106\u001a\u00020\u00042\u0006\u00105\u001a\u00020(2\u0006\u0010/\u001a\u00020\u0007H\u0007\u00a2\u0006\u0004\u00086\u00107J\u001f\u00109\u001a\u00020\u00042\u0006\u00108\u001a\u00020(2\u0006\u0010/\u001a\u00020\u0007H\u0007\u00a2\u0006\u0004\u00089\u00107J1\u0010<\u001a\u00020\u00042\u0006\u0010:\u001a\u00020(2\u0006\u0010;\u001a\u00020(2\u0008\u00108\u001a\u0004\u0018\u00010(2\u0006\u0010/\u001a\u00020\u0007H\u0007\u00a2\u0006\u0004\u0008<\u0010=J3\u0010A\u001a\u00020\u0012*\u00020\u001b2\u0006\u0010>\u001a\u00020\u00072\u0018\u0008\u0002\u0010@\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0004\u0012\u00020\u0012\u0018\u00010?\u00a2\u0006\u0004\u0008A\u0010BR\u0014\u0010E\u001a\u00020\u00078\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008C\u0010DR\u0018\u0010H\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008F\u0010GR\u0018\u0010 \u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008I\u0010JR$\u0010R\u001a\u0004\u0018\u00010K8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008L\u0010M\u001a\u0004\u0008N\u0010O\"\u0004\u0008P\u0010QR\u001e\u0010V\u001a\n\u0012\u0004\u0012\u00020\u001b\u0018\u00010S8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008T\u0010U\u00a8\u0006["
    }
    d2 = {
        "Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;",
        "Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;",
        "<init>",
        "()V",
        "",
        "r",
        "()Z",
        "",
        "apiName",
        "callbackId",
        "success",
        "Lorg/json/JSONObject;",
        "data",
        "o",
        "(Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;)Ljava/lang/String;",
        "Lcom/cloud/hisavana/sdk/internal/agentpage/b;",
        "agentPageAd",
        "methodName",
        "",
        "p",
        "(Lcom/cloud/hisavana/sdk/internal/agentpage/b;Ljava/lang/String;Ljava/lang/String;)V",
        "Landroid/view/View;",
        "view",
        "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;",
        "adsDTO",
        "s",
        "(Landroid/view/View;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z",
        "Landroid/webkit/WebView;",
        "webview",
        "setWebview",
        "(Landroid/webkit/WebView;)V",
        "Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;",
        "agentPageCurrentAd",
        "setCurrentAdInfo",
        "(Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;)V",
        "setCurrentAd",
        "(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V",
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
        "(Landroid/webkit/WebView;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V",
        "i",
        "Ljava/lang/String;",
        "TAG",
        "j",
        "Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;",
        "agentPageCurrentAdInfo",
        "k",
        "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;",
        "Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$a;",
        "l",
        "Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$a;",
        "getAdActionListener",
        "()Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$a;",
        "setAdActionListener",
        "(Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$a;)V",
        "adActionListener",
        "Ljava/lang/ref/WeakReference;",
        "m",
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

.field private static n:F

.field private static o:F

.field private static p:F

.field private static q:F


# instance fields
.field private final i:Ljava/lang/String;

.field private j:Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;

.field private k:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field private l:Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$a;

.field private m:Ljava/lang/ref/WeakReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->Companion:Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$b;

    .line 8
    .line 9
    const/high16 v0, -0x40800000    # -1.0f

    .line 10
    .line 11
    sput v0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->n:F

    .line 12
    .line 13
    sput v0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->o:F

    .line 14
    .line 15
    sput v0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->p:F

    .line 16
    .line 17
    sput v0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->q:F

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "AgentPageJsBridge"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->i:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static final synthetic access$getCallbackJson(Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->o(Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getWebviewRefer$p(Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->m:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$setDownX$cp(F)V
    .locals 0

    .line 1
    sput p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->n:F

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setDownY$cp(F)V
    .locals 0

    .line 1
    sput p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->o:F

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setUpX$cp(F)V
    .locals 0

    .line 1
    sput p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->p:F

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setUpY$cp(F)V
    .locals 0

    .line 1
    sput p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->q:F

    .line 2
    .line 3
    return-void
.end method

.method public static synthetic executeJavascript$default(Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;Landroid/webkit/WebView;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x2

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->executeJavascript(Landroid/webkit/WebView;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic n(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->q(Lkotlin/jvm/functions/Function0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final o(Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "apiName"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    .line 10
    .line 11
    const-string p1, "success"

    .line 12
    .line 13
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 14
    .line 15
    .line 16
    const-string p1, "callbackId"

    .line 17
    .line 18
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    if-eqz p4, :cond_0

    .line 22
    .line 23
    const-string p1, "args"

    .line 24
    .line 25
    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    new-instance p1, Lorg/json/JSONObject;

    .line 32
    .line 33
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string p2, "data"

    .line 37
    .line 38
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string p2, "toString(...)"

    .line 47
    .line 48
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    return-object p1

    .line 52
    :goto_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    iget-object p3, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->i:Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p2, p3, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const-string p1, ""

    .line 66
    .line 67
    return-object p1
.end method

.method private final p(Lcom/cloud/hisavana/sdk/internal/agentpage/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$e;

    .line 2
    .line 3
    invoke-direct {v0, p0, p3, p2}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$e;-><init>(Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/internal/agentpage/b;->F(Lcom/cloud/hisavana/sdk/internal/agentpage/b$a;)V

    .line 7
    .line 8
    .line 9
    new-instance p2, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$f;

    .line 10
    .line 11
    invoke-direct {p2, p1}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$f;-><init>(Lcom/cloud/hisavana/sdk/internal/agentpage/b;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/F;->g(Lcom/cloud/hisavana/sdk/api/listener/AdCallback;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private static final q(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 1
    const-string v0, "$runnable"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final r()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->k:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method private final s(Landroid/view/View;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v9, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    .line 10
    .line 11
    sget v3, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->n:F

    .line 12
    .line 13
    sget v4, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->o:F

    .line 14
    .line 15
    sget v5, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->p:F

    .line 16
    .line 17
    sget v6, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->q:F

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 20
    .line 21
    .line 22
    move-result v7

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 24
    .line 25
    .line 26
    move-result v8

    .line 27
    move-object v2, v9

    .line 28
    invoke-direct/range {v2 .. v8}, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;-><init>(FFFFII)V

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    invoke-static {v1, p2, v9, p1}, Lcom/cloud/hisavana/sdk/J0;->b(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    return p1

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string v1, "ssp"

    .line 46
    .line 47
    invoke-virtual {p2, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return v0
.end method


# virtual methods
.method public final closeAd(Ljava/lang/String;I)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "adInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->m:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroid/webkit/WebView;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    if-nez p1, :cond_1

    .line 19
    .line 20
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->i:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "close Ad webviewRefer == null"

    .line 27
    .line 28
    invoke-virtual {p1, p2, v0}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->l:Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$a;

    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    invoke-interface {p1, p2}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$a;->a(I)V

    .line 37
    .line 38
    .line 39
    :cond_2
    return-void
.end method

.method public final executeJavascript(Landroid/webkit/WebView;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "jsScript"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance v0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$d;

    .line 19
    .line 20
    invoke-direct {v0, p2, p0, p1, p3}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$d;-><init>(Ljava/lang/String;Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;Landroid/webkit/WebView;Lkotlin/jvm/functions/Function1;)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    new-instance p1, Landroid/os/Handler;

    .line 38
    .line 39
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 44
    .line 45
    .line 46
    new-instance p2, Lcom/cloud/hisavana/sdk/internal/agentpage/a;

    .line 47
    .line 48
    invoke-direct {p2, v0}, Lcom/cloud/hisavana/sdk/internal/agentpage/a;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    :goto_0
    return-void
.end method

.method public final getAdActionListener()Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->l:Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCurrentAd(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "callbackId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 7
    .line 8
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "currentAd"

    .line 12
    .line 13
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->k:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 14
    .line 15
    invoke-static {v2}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "getCurrentAd"

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    invoke-direct {p0, v1, p1, v2, v0}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->o(Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->m:Ljava/lang/ref/WeakReference;

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroid/webkit/WebView;

    .line 39
    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v2, "javascript:window.HisavanaAdJsBridgeCallback("

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const/16 p1, 0x29

    .line 56
    .line 57
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    const/4 v1, 0x0

    .line 65
    invoke-virtual {p0, v0, p1, v1}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->executeJavascript(Landroid/webkit/WebView;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catchall_0
    move-exception p1

    .line 70
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->i:Ljava/lang/String;

    .line 75
    .line 76
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_0
    :goto_0
    return-void
.end method

.method public final getCurrentAdInfo(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "callbackId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 7
    .line 8
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "currentAdInfo"

    .line 12
    .line 13
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->j:Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;

    .line 14
    .line 15
    invoke-static {v2}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "getCurrentAdInfo"

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    invoke-direct {p0, v1, p1, v2, v0}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->o(Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->m:Ljava/lang/ref/WeakReference;

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroid/webkit/WebView;

    .line 39
    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v2, "javascript:window.HisavanaAdJsBridgeCallback("

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const/16 p1, 0x29

    .line 56
    .line 57
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    const/4 v1, 0x0

    .line 65
    invoke-virtual {p0, v0, p1, v1}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->executeJavascript(Landroid/webkit/WebView;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catchall_0
    move-exception p1

    .line 70
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->i:Ljava/lang/String;

    .line 75
    .line 76
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_0
    :goto_0
    return-void
.end method

.method public final loadAds(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "callbackId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "codeSeatId"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    if-gt v0, p4, :cond_0

    .line 13
    .line 14
    const/16 v1, 0x65

    .line 15
    .line 16
    if-ge p4, v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move p4, v0

    .line 20
    :goto_0
    new-instance v1, Lcom/cloud/hisavana/sdk/p3$b;

    .line 21
    .line 22
    invoke-direct {v1}, Lcom/cloud/hisavana/sdk/p3$b;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p2}, Lcom/cloud/hisavana/sdk/p3$b;->i(I)Lcom/cloud/hisavana/sdk/p3$b;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p2, p3}, Lcom/cloud/hisavana/sdk/p3$b;->e(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/p3$b;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p2, v0}, Lcom/cloud/hisavana/sdk/p3$b;->v(Z)Lcom/cloud/hisavana/sdk/p3$b;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p2, p4}, Lcom/cloud/hisavana/sdk/p3$b;->a(I)Lcom/cloud/hisavana/sdk/p3$b;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/p3$b;->g()Lcom/cloud/hisavana/sdk/p3;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    new-instance p3, Lcom/cloud/hisavana/sdk/internal/agentpage/b;

    .line 46
    .line 47
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-direct {p3, p2}, Lcom/cloud/hisavana/sdk/internal/agentpage/b;-><init>(Lcom/cloud/hisavana/sdk/p3;)V

    .line 51
    .line 52
    .line 53
    const-string p2, "loadAds"

    .line 54
    .line 55
    invoke-direct {p0, p3, p1, p2}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->p(Lcom/cloud/hisavana/sdk/internal/agentpage/b;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/F;->E()V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final loadNormalAds(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "callbackId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "codeSeatId"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    if-gt v0, p4, :cond_0

    .line 13
    .line 14
    const/16 v1, 0x65

    .line 15
    .line 16
    if-ge p4, v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move p4, v0

    .line 20
    :goto_0
    new-instance v0, Lcom/cloud/hisavana/sdk/p3$b;

    .line 21
    .line 22
    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/p3$b;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p2}, Lcom/cloud/hisavana/sdk/p3$b;->i(I)Lcom/cloud/hisavana/sdk/p3$b;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p2, p3}, Lcom/cloud/hisavana/sdk/p3$b;->e(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/p3$b;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    const/4 p3, 0x0

    .line 34
    invoke-virtual {p2, p3}, Lcom/cloud/hisavana/sdk/p3$b;->v(Z)Lcom/cloud/hisavana/sdk/p3$b;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {p2, p4}, Lcom/cloud/hisavana/sdk/p3$b;->a(I)Lcom/cloud/hisavana/sdk/p3$b;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/p3$b;->g()Lcom/cloud/hisavana/sdk/p3;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    new-instance p3, Lcom/cloud/hisavana/sdk/internal/agentpage/b;

    .line 47
    .line 48
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-direct {p3, p2}, Lcom/cloud/hisavana/sdk/internal/agentpage/b;-><init>(Lcom/cloud/hisavana/sdk/p3;)V

    .line 52
    .line 53
    .line 54
    const-string p2, "loadNormalAds"

    .line 55
    .line 56
    invoke-direct {p0, p3, p1, p2}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->p(Lcom/cloud/hisavana/sdk/internal/agentpage/b;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/F;->E()V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final openLandingPage(Ljava/lang/String;)Z
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "adInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :try_start_0
    const-class v1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 8
    .line 9
    invoke-static {p1, v1}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    return v0

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->l:Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$a;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-interface {v1}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$a;->onClick()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto :goto_2

    .line 28
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->m:Ljava/lang/ref/WeakReference;

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Landroid/webkit/WebView;

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    const/4 v1, 0x0

    .line 40
    :goto_1
    invoke-direct {p0, v1, p1}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->s(Landroid/view/View;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    .line 41
    .line 42
    .line 43
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    return p1

    .line 45
    :goto_2
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->i:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {v1, v2, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return v0
.end method

.method public final setAdActionListener(Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->l:Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$a;

    .line 2
    .line 3
    return-void
.end method

.method public final setCurrentAd(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 1

    .line 1
    const-string v0, "adsDTO"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->k:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 7
    .line 8
    return-void
.end method

.method public final setCurrentAdInfo(Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;)V
    .locals 1

    .line 1
    const-string v0, "agentPageCurrentAd"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->j:Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;

    .line 7
    .line 8
    return-void
.end method

.method public final setWebview(Landroid/webkit/WebView;)V
    .locals 1

    .line 1
    const-string v0, "webview"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$c;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$c;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->m:Ljava/lang/ref/WeakReference;

    .line 20
    .line 21
    return-void
.end method

.method public final trackAd(ILjava/lang/String;)Z
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "adInfo"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :try_start_0
    const-class v1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 8
    .line 9
    invoke-static {p2, v1}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    check-cast p2, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 14
    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    return v0

    .line 18
    :cond_0
    const/4 v1, 0x1

    .line 19
    if-eq p1, v1, :cond_2

    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    if-eq p1, v2, :cond_1

    .line 23
    .line 24
    return v0

    .line 25
    :cond_1
    invoke-static {p2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->W(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_2

    .line 31
    :cond_2
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->r()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_3

    .line 36
    .line 37
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->l:Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$a;

    .line 38
    .line 39
    if-eqz p1, :cond_6

    .line 40
    .line 41
    invoke-interface {p1}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$a;->a()V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_3
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getImpBeanRequest()Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-eqz p1, :cond_5

    .line 50
    .line 51
    invoke-static {}, Lcom/cloud/hisavana/sdk/O;->g()Lcom/cloud/hisavana/sdk/O;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getImpBeanRequest()Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    iget-object v2, v2, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->pmid:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {p1, v2}, Lcom/cloud/hisavana/sdk/O;->k(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    const/4 v2, 0x4

    .line 69
    if-ne p1, v2, :cond_4

    .line 70
    .line 71
    sget-object p1, Lcom/cloud/hisavana/sdk/Y;->a:Lcom/cloud/hisavana/sdk/Y;

    .line 72
    .line 73
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    const-string v3, "getAdCreativeId(...)"

    .line 78
    .line 79
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getCodeSeatId()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    const-string v4, "getCodeSeatId(...)"

    .line 87
    .line 88
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v2, v3}, Lcom/cloud/hisavana/sdk/Y;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_4
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isOfflineAd()Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_5

    .line 100
    .line 101
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getShowNum()Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    add-int/2addr p1, v1

    .line 110
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p2, p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setShowNum(Ljava/lang/Integer;)V

    .line 115
    .line 116
    .line 117
    invoke-static {}, Lcom/cloud/hisavana/sdk/p;->F()Lcom/cloud/hisavana/sdk/p;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/p;->q(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 122
    .line 123
    .line 124
    :cond_5
    :goto_0
    invoke-static {p2}, Lcom/cloud/hisavana/sdk/q2;->b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    .line 126
    .line 127
    :cond_6
    :goto_1
    return v1

    .line 128
    :goto_2
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->i:Ljava/lang/String;

    .line 133
    .line 134
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-virtual {p2, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    return v0
.end method

.method public final trackContainerLifeCycle(IILjava/lang/Integer;Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "adInfo"

    .line 2
    .line 3
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :try_start_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    const-class v1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 15
    .line 16
    invoke-static {p4, v1}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p4

    .line 20
    check-cast p4, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 21
    .line 22
    if-nez p4, :cond_1

    .line 23
    .line 24
    return v0

    .line 25
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-static {p1, p2, p3, p4}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->z(ILjava/lang/Integer;Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    return p1

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    iget-object p3, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->i:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p2, p3, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return v0
.end method

.method public final trackWarning(ILjava/lang/String;)Z
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const-string v1, "adInfo"

    .line 4
    .line 5
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x1

    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    const-class v0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 17
    .line 18
    invoke-static {p2, v0}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    check-cast p2, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 23
    .line 24
    if-nez p2, :cond_0

    .line 25
    .line 26
    return v1

    .line 27
    :cond_0
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getCodeSeatId()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getUuid()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-static {v0, p2, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->C(Ljava/lang/String;Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    return v3

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-static {v0, v0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->C(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    return v3

    .line 45
    :goto_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->i:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p2, v0, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return v1
.end method
