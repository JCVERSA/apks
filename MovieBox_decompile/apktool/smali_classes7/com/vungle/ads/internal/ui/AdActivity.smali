.class public abstract Lcom/vungle/ads/internal/ui/AdActivity;
.super Landroid/app/Activity;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/ui/AdActivity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0083\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001@\u0008&\u0018\u0000 C2\u00020\u0001:\u0001DB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0003J\u0019\u0010\u000c\u001a\u00020\u00062\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0014\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000eH\u0014\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u0012\u0010\u0003J\u000f\u0010\u0013\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u0013\u0010\u0003J\u0017\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0003J\u0017\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u0019H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u000f\u0010 \u001a\u00020\u001dH\u0011\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u000f\u0010!\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008!\u0010\u0003R(\u0010\"\u001a\u00020\u00048\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0018\n\u0004\u0008\"\u0010#\u0012\u0004\u0008\'\u0010\u0003\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\u0008R*\u0010)\u001a\u0004\u0018\u00010(8\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0018\n\u0004\u0008)\u0010*\u0012\u0004\u0008/\u0010\u0003\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R*\u00101\u001a\u0004\u0018\u0001008\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0018\n\u0004\u00081\u00102\u0012\u0004\u00087\u0010\u0003\u001a\u0004\u00083\u00104\"\u0004\u00085\u00106R\u0018\u00109\u001a\u0004\u0018\u0001088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00089\u0010:R\u0014\u0010<\u001a\u00020;8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008<\u0010=R\u0016\u0010>\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008>\u0010?R\u0014\u0010A\u001a\u00020@8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008A\u0010B\u00a8\u0006M\u00b2\u0006\u000c\u0010F\u001a\u00020E8\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010H\u001a\u00020G8\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010J\u001a\u00020I8\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010L\u001a\u00020K8\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vungle/ads/internal/ui/AdActivity;",
        "Landroid/app/Activity;",
        "<init>",
        "()V",
        "",
        "placement",
        "",
        "onConcurrentPlaybackError",
        "(Ljava/lang/String;)V",
        "hideSystemUi",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/content/Intent;",
        "intent",
        "onNewIntent",
        "(Landroid/content/Intent;)V",
        "onResume",
        "onPause",
        "Landroid/content/res/Configuration;",
        "newConfig",
        "onConfigurationChanged",
        "(Landroid/content/res/Configuration;)V",
        "onBackPressed",
        "",
        "requestedOrientation",
        "setRequestedOrientation",
        "(I)V",
        "",
        "canRotate$vungle_ads_release",
        "()Z",
        "canRotate",
        "onDestroy",
        "placementRefId",
        "Ljava/lang/String;",
        "getPlacementRefId$vungle_ads_release",
        "()Ljava/lang/String;",
        "setPlacementRefId$vungle_ads_release",
        "getPlacementRefId$vungle_ads_release$annotations",
        "Lcom/vungle/ads/internal/presenter/MRAIDPresenter;",
        "mraidPresenter",
        "Lcom/vungle/ads/internal/presenter/MRAIDPresenter;",
        "getMraidPresenter$vungle_ads_release",
        "()Lcom/vungle/ads/internal/presenter/MRAIDPresenter;",
        "setMraidPresenter$vungle_ads_release",
        "(Lcom/vungle/ads/internal/presenter/MRAIDPresenter;)V",
        "getMraidPresenter$vungle_ads_release$annotations",
        "Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;",
        "mraidAdWidget",
        "Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;",
        "getMraidAdWidget$vungle_ads_release",
        "()Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;",
        "setMraidAdWidget$vungle_ads_release",
        "(Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;)V",
        "getMraidAdWidget$vungle_ads_release$annotations",
        "Lcom/vungle/ads/internal/model/j;",
        "unclosedAd",
        "Lcom/vungle/ads/internal/model/j;",
        "Lcom/vungle/ads/internal/util/RingerModeReceiver;",
        "ringerModeReceiver",
        "Lcom/vungle/ads/internal/util/RingerModeReceiver;",
        "isReceiverRegistered",
        "Z",
        "com/vungle/ads/internal/ui/AdActivity$b",
        "lifeCycleCallback",
        "Lcom/vungle/ads/internal/ui/AdActivity$b;",
        "Companion",
        "a",
        "Lcom/vungle/ads/internal/signals/SignalManager;",
        "signalManager",
        "Lcom/vungle/ads/internal/executor/a;",
        "executors",
        "Lcom/vungle/ads/internal/platform/d;",
        "platform",
        "Lcom/vungle/ads/internal/omsdk/c$b;",
        "omTrackerFactory",
        "vungle-ads_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final AD_INVISIBLE_LOGGED_KEY:Ljava/lang/String; = "ad_invisible_logged"

.field public static final Companion:Lcom/vungle/ads/internal/ui/AdActivity$a;

.field public static final REQUEST_KEY_EVENT_ID_EXTRA:Ljava/lang/String; = "request_eventId"

.field public static final REQUEST_KEY_EXTRA:Ljava/lang/String; = "request"

.field private static final TAG:Ljava/lang/String; = "AdActivity"

.field private static advertisement:Lcom/vungle/ads/internal/model/AdPayload;

.field private static bidPayload:Lcom/vungle/ads/internal/model/BidPayload;

.field private static eventListener:Lcom/vungle/ads/internal/presenter/a;

.field private static presenterDelegate:Lcom/vungle/ads/internal/presenter/l;


# instance fields
.field private isReceiverRegistered:Z

.field private final lifeCycleCallback:Lcom/vungle/ads/internal/ui/AdActivity$b;

.field private mraidAdWidget:Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;

.field private mraidPresenter:Lcom/vungle/ads/internal/presenter/MRAIDPresenter;

.field private placementRefId:Ljava/lang/String;

.field private final ringerModeReceiver:Lcom/vungle/ads/internal/util/RingerModeReceiver;

.field private unclosedAd:Lcom/vungle/ads/internal/model/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/ui/AdActivity$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/ui/AdActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/vungle/ads/internal/ui/AdActivity;->Companion:Lcom/vungle/ads/internal/ui/AdActivity$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/vungle/ads/internal/ui/AdActivity;->placementRefId:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Lcom/vungle/ads/internal/util/RingerModeReceiver;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/vungle/ads/internal/util/RingerModeReceiver;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/vungle/ads/internal/ui/AdActivity;->ringerModeReceiver:Lcom/vungle/ads/internal/util/RingerModeReceiver;

    .line 14
    .line 15
    new-instance v0, Lcom/vungle/ads/internal/ui/AdActivity$b;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/vungle/ads/internal/ui/AdActivity$b;-><init>(Lcom/vungle/ads/internal/ui/AdActivity;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/vungle/ads/internal/ui/AdActivity;->lifeCycleCallback:Lcom/vungle/ads/internal/ui/AdActivity$b;

    .line 21
    .line 22
    return-void
.end method

.method public static synthetic a(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/vungle/ads/internal/ui/AdActivity;->onCreate$lambda-7(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getAdvertisement$cp()Lcom/vungle/ads/internal/model/AdPayload;
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ui/AdActivity;->advertisement:Lcom/vungle/ads/internal/model/AdPayload;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getBidPayload$cp()Lcom/vungle/ads/internal/model/BidPayload;
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ui/AdActivity;->bidPayload:Lcom/vungle/ads/internal/model/BidPayload;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getEventListener$cp()Lcom/vungle/ads/internal/presenter/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ui/AdActivity;->eventListener:Lcom/vungle/ads/internal/presenter/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getPresenterDelegate$cp()Lcom/vungle/ads/internal/presenter/l;
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ui/AdActivity;->presenterDelegate:Lcom/vungle/ads/internal/presenter/l;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getUnclosedAd$p(Lcom/vungle/ads/internal/ui/AdActivity;)Lcom/vungle/ads/internal/model/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vungle/ads/internal/ui/AdActivity;->unclosedAd:Lcom/vungle/ads/internal/model/j;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$onCreate$lambda-0(Lkotlin/Lazy;)Lcom/vungle/ads/internal/signals/SignalManager;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/vungle/ads/internal/ui/AdActivity;->onCreate$lambda-0(Lkotlin/Lazy;)Lcom/vungle/ads/internal/signals/SignalManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$setAdvertisement$cp(Lcom/vungle/ads/internal/model/AdPayload;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/vungle/ads/internal/ui/AdActivity;->advertisement:Lcom/vungle/ads/internal/model/AdPayload;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setBidPayload$cp(Lcom/vungle/ads/internal/model/BidPayload;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/vungle/ads/internal/ui/AdActivity;->bidPayload:Lcom/vungle/ads/internal/model/BidPayload;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setEventListener$cp(Lcom/vungle/ads/internal/presenter/a;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/vungle/ads/internal/ui/AdActivity;->eventListener:Lcom/vungle/ads/internal/presenter/a;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setPresenterDelegate$cp(Lcom/vungle/ads/internal/presenter/l;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/vungle/ads/internal/ui/AdActivity;->presenterDelegate:Lcom/vungle/ads/internal/presenter/l;

    .line 2
    .line 3
    return-void
.end method

.method public static synthetic getMraidAdWidget$vungle_ads_release$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getMraidPresenter$vungle_ads_release$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getPlacementRefId$vungle_ads_release$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private final hideSystemUi()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Landroidx/core/view/WindowCompat;->getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "getInsetsController(window, window.decorView)"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x2

    .line 23
    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsControllerCompat;->setSystemBarsBehavior(I)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsControllerCompat;->hide(I)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private final onConcurrentPlaybackError(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/vungle/ads/ConcurrentPlaybackUnsupported;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "Trying to show "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, " but "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lcom/vungle/ads/internal/ui/AdActivity;->placementRefId:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, " is already showing"

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-direct {v0, v1}, Lcom/vungle/ads/ConcurrentPlaybackUnsupported;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    sget-object v1, Lcom/vungle/ads/internal/ui/AdActivity;->advertisement:Lcom/vungle/ads/internal/model/AdPayload;

    .line 39
    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/vungle/ads/internal/model/AdPayload;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/n;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 v1, 0x0

    .line 48
    :goto_0
    invoke-virtual {v0, v1}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/n;)Lcom/vungle/ads/VungleError;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/vungle/ads/VungleError;->logError$vungle_ads_release()Lcom/vungle/ads/VungleError;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    sget-object v1, Lcom/vungle/ads/internal/ui/AdActivity;->eventListener:Lcom/vungle/ads/internal/presenter/a;

    .line 57
    .line 58
    if-eqz v1, :cond_1

    .line 59
    .line 60
    invoke-virtual {v1, v0, p1}, Lcom/vungle/ads/internal/presenter/a;->onError(Lcom/vungle/ads/VungleError;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    sget-object p1, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    .line 64
    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v2, "onConcurrentPlaybackError: "

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/vungle/ads/VungleError;->getLocalizedMessage()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    const-string v1, "AdActivity"

    .line 87
    .line 88
    invoke-virtual {p1, v1, v0}, Lcom/vungle/ads/internal/util/o$a;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method private static final onCreate$lambda-0(Lkotlin/Lazy;)Lcom/vungle/ads/internal/signals/SignalManager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Lazy<",
            "Lcom/vungle/ads/internal/signals/SignalManager;",
            ">;)",
            "Lcom/vungle/ads/internal/signals/SignalManager;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/vungle/ads/internal/signals/SignalManager;

    .line 6
    .line 7
    return-object p0
.end method

.method private static final onCreate$lambda-4(Lkotlin/Lazy;)Lcom/vungle/ads/internal/executor/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Lazy<",
            "+",
            "Lcom/vungle/ads/internal/executor/a;",
            ">;)",
            "Lcom/vungle/ads/internal/executor/a;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/vungle/ads/internal/executor/a;

    .line 6
    .line 7
    return-object p0
.end method

.method private static final onCreate$lambda-5(Lkotlin/Lazy;)Lcom/vungle/ads/internal/platform/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Lazy<",
            "+",
            "Lcom/vungle/ads/internal/platform/d;",
            ">;)",
            "Lcom/vungle/ads/internal/platform/d;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/vungle/ads/internal/platform/d;

    .line 6
    .line 7
    return-object p0
.end method

.method private static final onCreate$lambda-6(Lkotlin/Lazy;)Lcom/vungle/ads/internal/omsdk/c$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Lazy<",
            "Lcom/vungle/ads/internal/omsdk/c$b;",
            ">;)",
            "Lcom/vungle/ads/internal/omsdk/c$b;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/vungle/ads/internal/omsdk/c$b;

    .line 6
    .line 7
    return-object p0
.end method

.method private static final onCreate$lambda-7(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 4

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "insets"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->displayCutout()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    or-int/2addr v0, v1

    .line 20
    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Lz0/c;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "insets.getInsets(\n      \u2026utout()\n                )"

    .line 25
    .line 26
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->statusBars()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {p1, v1}, Landroidx/core/view/WindowInsetsCompat;->isVisible(I)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    iget v1, v0, Lz0/c;->a:I

    .line 40
    .line 41
    iget v2, v0, Lz0/c;->b:I

    .line 42
    .line 43
    iget v3, v0, Lz0/c;->c:I

    .line 44
    .line 45
    iget v0, v0, Lz0/c;->d:I

    .line 46
    .line 47
    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 48
    .line 49
    .line 50
    :cond_0
    return-object p1
.end method


# virtual methods
.method public canRotate$vungle_ads_release()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final getMraidAdWidget$vungle_ads_release()Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/AdActivity;->mraidAdWidget:Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMraidPresenter$vungle_ads_release()Lcom/vungle/ads/internal/presenter/MRAIDPresenter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/AdActivity;->mraidPresenter:Lcom/vungle/ads/internal/presenter/MRAIDPresenter;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPlacementRefId$vungle_ads_release()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/AdActivity;->placementRefId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/AdActivity;->mraidPresenter:Lcom/vungle/ads/internal/presenter/MRAIDPresenter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->handleExit()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 1
    const-string v0, "AdActivity"

    .line 2
    .line 3
    const-string v1, "newConfig"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 9
    .line 10
    .line 11
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    if-ne p1, v1, :cond_0

    .line 15
    .line 16
    sget-object p1, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    .line 17
    .line 18
    const-string v1, "landscape"

    .line 19
    .line 20
    invoke-virtual {p1, v0, v1}, Lcom/vungle/ads/internal/util/o$a;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception p1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    const/4 v1, 0x1

    .line 27
    if-ne p1, v1, :cond_1

    .line 28
    .line 29
    sget-object p1, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    .line 30
    .line 31
    const-string v1, "portrait"

    .line 32
    .line 33
    invoke-virtual {p1, v0, v1}, Lcom/vungle/ads/internal/util/o$a;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/vungle/ads/internal/ui/AdActivity;->mraidPresenter:Lcom/vungle/ads/internal/presenter/MRAIDPresenter;

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->onViewConfigurationChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    goto :goto_2

    .line 44
    :goto_1
    sget-object v1, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    .line 45
    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v3, "onConfigurationChanged: "

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {v1, v0, p1}, Lcom/vungle/ads/internal/util/o$a;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    :cond_2
    :goto_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/high16 v0, 0x1000000

    .line 13
    .line 14
    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 15
    .line 16
    .line 17
    sget-object p1, Lcom/vungle/ads/internal/ui/AdActivity;->Companion:Lcom/vungle/ads/internal/ui/AdActivity$a;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "intent"

    .line 24
    .line 25
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p1, v0}, Lcom/vungle/ads/internal/ui/AdActivity$a;->access$getPlacement(Lcom/vungle/ads/internal/ui/AdActivity$a;Landroid/content/Intent;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    const-string v0, ""

    .line 35
    .line 36
    :cond_0
    iput-object v0, p0, Lcom/vungle/ads/internal/ui/AdActivity;->placementRefId:Ljava/lang/String;

    .line 37
    .line 38
    sget-object v11, Lcom/vungle/ads/internal/ui/AdActivity;->advertisement:Lcom/vungle/ads/internal/model/AdPayload;

    .line 39
    .line 40
    sget-object v2, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    .line 41
    .line 42
    invoke-virtual {v2, v0}, Lcom/vungle/ads/internal/ConfigManager;->getPlacement(Ljava/lang/String;)Lcom/vungle/ads/internal/model/g;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const/4 v2, 0x0

    .line 47
    if-eqz v0, :cond_7

    .line 48
    .line 49
    if-nez v11, :cond_1

    .line 50
    .line 51
    goto/16 :goto_1

    .line 52
    .line 53
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    const/high16 v4, -0x1000000

    .line 62
    .line 63
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 64
    .line 65
    .line 66
    :try_start_0
    new-instance v12, Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;

    .line 67
    .line 68
    invoke-direct {v12, p0}, Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    const-string v4, "ad_invisible_logged"

    .line 76
    .line 77
    const/4 v5, 0x0

    .line 78
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_2

    .line 83
    .line 84
    const-string v3, "3"

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    const-string v3, "2"

    .line 88
    .line 89
    :goto_0
    sget-object v4, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    .line 90
    .line 91
    new-instance v5, Lcom/vungle/ads/w;

    .line 92
    .line 93
    sget-object v6, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->AD_VISIBILITY:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    .line 94
    .line 95
    invoke-direct {v5, v6}, Lcom/vungle/ads/w;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v11}, Lcom/vungle/ads/internal/model/AdPayload;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/n;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    invoke-virtual {v4, v5, v6, v3}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release(Lcom/vungle/ads/w;Lcom/vungle/ads/internal/util/n;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    sget-object v4, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    .line 106
    .line 107
    new-instance v5, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    const-string v6, "Log metric AD_VISIBILITY: "

    .line 113
    .line 114
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    const-string v5, "AdActivity"

    .line 125
    .line 126
    invoke-virtual {v4, v5, v3}, Lcom/vungle/ads/internal/util/o$a;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    sget-object v3, Lcom/vungle/ads/ServiceLocator;->Companion:Lcom/vungle/ads/ServiceLocator$Companion;

    .line 130
    .line 131
    sget-object v8, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 132
    .line 133
    new-instance v3, Lcom/vungle/ads/internal/ui/AdActivity$onCreate$$inlined$inject$1;

    .line 134
    .line 135
    invoke-direct {v3, p0}, Lcom/vungle/ads/internal/ui/AdActivity$onCreate$$inlined$inject$1;-><init>(Landroid/content/Context;)V

    .line 136
    .line 137
    .line 138
    invoke-static {v8, v3}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-static {p1, v4}, Lcom/vungle/ads/internal/ui/AdActivity$a;->access$getEventId(Lcom/vungle/ads/internal/ui/AdActivity$a;Landroid/content/Intent;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    if-eqz p1, :cond_3

    .line 154
    .line 155
    new-instance v1, Lcom/vungle/ads/internal/model/j;

    .line 156
    .line 157
    const/4 v4, 0x2

    .line 158
    invoke-direct {v1, p1, v2, v4, v2}, Lcom/vungle/ads/internal/model/j;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 159
    .line 160
    .line 161
    move-object v2, v1

    .line 162
    :cond_3
    iput-object v2, p0, Lcom/vungle/ads/internal/ui/AdActivity;->unclosedAd:Lcom/vungle/ads/internal/model/j;

    .line 163
    .line 164
    if-eqz v2, :cond_4

    .line 165
    .line 166
    invoke-static {v3}, Lcom/vungle/ads/internal/ui/AdActivity;->onCreate$lambda-0(Lkotlin/Lazy;)Lcom/vungle/ads/internal/signals/SignalManager;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-virtual {p1, v2}, Lcom/vungle/ads/internal/signals/SignalManager;->recordUnclosedAd(Lcom/vungle/ads/internal/model/j;)V

    .line 171
    .line 172
    .line 173
    :cond_4
    new-instance p1, Lcom/vungle/ads/internal/ui/AdActivity$c;

    .line 174
    .line 175
    invoke-direct {p1, p0, v3}, Lcom/vungle/ads/internal/ui/AdActivity$c;-><init>(Lcom/vungle/ads/internal/ui/AdActivity;Lkotlin/Lazy;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v12, p1}, Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;->setCloseDelegate(Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$a;)V

    .line 179
    .line 180
    .line 181
    new-instance p1, Lcom/vungle/ads/internal/ui/AdActivity$d;

    .line 182
    .line 183
    invoke-direct {p1, p0}, Lcom/vungle/ads/internal/ui/AdActivity$d;-><init>(Lcom/vungle/ads/internal/ui/AdActivity;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v12, p1}, Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;->setOnViewTouchListener(Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$c;)V

    .line 187
    .line 188
    .line 189
    new-instance p1, Lcom/vungle/ads/internal/ui/AdActivity$e;

    .line 190
    .line 191
    invoke-direct {p1, p0}, Lcom/vungle/ads/internal/ui/AdActivity$e;-><init>(Lcom/vungle/ads/internal/ui/AdActivity;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v12, p1}, Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;->setOrientationDelegate(Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$d;)V

    .line 195
    .line 196
    .line 197
    new-instance p1, Lcom/vungle/ads/internal/ui/AdActivity$onCreate$$inlined$inject$2;

    .line 198
    .line 199
    invoke-direct {p1, p0}, Lcom/vungle/ads/internal/ui/AdActivity$onCreate$$inlined$inject$2;-><init>(Landroid/content/Context;)V

    .line 200
    .line 201
    .line 202
    invoke-static {v8, p1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    new-instance v1, Lcom/vungle/ads/internal/ui/AdActivity$onCreate$$inlined$inject$3;

    .line 207
    .line 208
    invoke-direct {v1, p0}, Lcom/vungle/ads/internal/ui/AdActivity$onCreate$$inlined$inject$3;-><init>(Landroid/content/Context;)V

    .line 209
    .line 210
    .line 211
    invoke-static {v8, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-static {p1}, Lcom/vungle/ads/internal/ui/AdActivity;->onCreate$lambda-4(Lkotlin/Lazy;)Lcom/vungle/ads/internal/executor/a;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    invoke-interface {v2}, Lcom/vungle/ads/internal/executor/a;->getOffloadExecutor()Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    new-instance v9, Lcom/vungle/ads/internal/ui/j;

    .line 224
    .line 225
    invoke-static {v3}, Lcom/vungle/ads/internal/ui/AdActivity;->onCreate$lambda-0(Lkotlin/Lazy;)Lcom/vungle/ads/internal/signals/SignalManager;

    .line 226
    .line 227
    .line 228
    move-result-object v6

    .line 229
    invoke-static {v1}, Lcom/vungle/ads/internal/ui/AdActivity;->onCreate$lambda-5(Lkotlin/Lazy;)Lcom/vungle/ads/internal/platform/d;

    .line 230
    .line 231
    .line 232
    move-result-object v7

    .line 233
    move-object v2, v9

    .line 234
    move-object v3, v11

    .line 235
    move-object v4, v0

    .line 236
    invoke-direct/range {v2 .. v7}, Lcom/vungle/ads/internal/ui/j;-><init>(Lcom/vungle/ads/internal/model/AdPayload;Lcom/vungle/ads/internal/model/g;Ljava/util/concurrent/ExecutorService;Lcom/vungle/ads/internal/signals/SignalManager;Lcom/vungle/ads/internal/platform/d;)V

    .line 237
    .line 238
    .line 239
    new-instance v2, Lcom/vungle/ads/internal/ui/AdActivity$onCreate$$inlined$inject$4;

    .line 240
    .line 241
    invoke-direct {v2, p0}, Lcom/vungle/ads/internal/ui/AdActivity$onCreate$$inlined$inject$4;-><init>(Landroid/content/Context;)V

    .line 242
    .line 243
    .line 244
    invoke-static {v8, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    invoke-static {v2}, Lcom/vungle/ads/internal/ui/AdActivity;->onCreate$lambda-6(Lkotlin/Lazy;)Lcom/vungle/ads/internal/omsdk/c$b;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    invoke-virtual {v11}, Lcom/vungle/ads/internal/model/AdPayload;->omEnabled()Z

    .line 253
    .line 254
    .line 255
    move-result v3

    .line 256
    invoke-virtual {v2, v3}, Lcom/vungle/ads/internal/omsdk/c$b;->make(Z)Lcom/vungle/ads/internal/omsdk/c;

    .line 257
    .line 258
    .line 259
    move-result-object v8

    .line 260
    invoke-static {p1}, Lcom/vungle/ads/internal/ui/AdActivity;->onCreate$lambda-4(Lkotlin/Lazy;)Lcom/vungle/ads/internal/executor/a;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    invoke-interface {p1}, Lcom/vungle/ads/internal/executor/a;->getJobExecutor()Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    .line 265
    .line 266
    .line 267
    move-result-object v7

    .line 268
    invoke-virtual {v9, v8}, Lcom/vungle/ads/internal/ui/j;->setWebViewObserver(Lcom/vungle/ads/internal/omsdk/d;)V

    .line 269
    .line 270
    .line 271
    iget-object p1, p0, Lcom/vungle/ads/internal/ui/AdActivity;->ringerModeReceiver:Lcom/vungle/ads/internal/util/RingerModeReceiver;

    .line 272
    .line 273
    invoke-virtual {p1, v9}, Lcom/vungle/ads/internal/util/RingerModeReceiver;->setWebClient(Lcom/vungle/ads/internal/ui/j;)V

    .line 274
    .line 275
    .line 276
    new-instance p1, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;

    .line 277
    .line 278
    sget-object v10, Lcom/vungle/ads/internal/ui/AdActivity;->bidPayload:Lcom/vungle/ads/internal/model/BidPayload;

    .line 279
    .line 280
    invoke-static {v1}, Lcom/vungle/ads/internal/ui/AdActivity;->onCreate$lambda-5(Lkotlin/Lazy;)Lcom/vungle/ads/internal/platform/d;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    move-object v2, p1

    .line 285
    move-object v3, v12

    .line 286
    move-object v4, v11

    .line 287
    move-object v5, v0

    .line 288
    move-object v6, v9

    .line 289
    move-object v9, v10

    .line 290
    move-object v10, v1

    .line 291
    invoke-direct/range {v2 .. v10}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;-><init>(Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;Lcom/vungle/ads/internal/model/AdPayload;Lcom/vungle/ads/internal/model/g;Lcom/vungle/ads/internal/ui/j;Ljava/util/concurrent/Executor;Lcom/vungle/ads/internal/omsdk/c;Lcom/vungle/ads/internal/model/BidPayload;Lcom/vungle/ads/internal/platform/d;)V

    .line 292
    .line 293
    .line 294
    sget-object v0, Lcom/vungle/ads/internal/ui/AdActivity;->eventListener:Lcom/vungle/ads/internal/presenter/a;

    .line 295
    .line 296
    invoke-virtual {p1, v0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->setEventListener(Lcom/vungle/ads/internal/presenter/a;)V

    .line 297
    .line 298
    .line 299
    sget-object v0, Lcom/vungle/ads/internal/ui/AdActivity;->presenterDelegate:Lcom/vungle/ads/internal/presenter/l;

    .line 300
    .line 301
    invoke-virtual {p1, v0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->setPresenterDelegate$vungle_ads_release(Lcom/vungle/ads/internal/presenter/l;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {p1}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->prepare()V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    invoke-virtual {p0, v12, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    .line 313
    .line 314
    new-instance v0, Lcom/vungle/ads/internal/ui/a;

    .line 315
    .line 316
    invoke-direct {v0}, Lcom/vungle/ads/internal/ui/a;-><init>()V

    .line 317
    .line 318
    .line 319
    invoke-static {v12, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v11}, Lcom/vungle/ads/internal/model/AdPayload;->getAdConfig()Lcom/vungle/ads/b;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    if-eqz v0, :cond_5

    .line 327
    .line 328
    invoke-virtual {v0}, Lcom/vungle/ads/b;->getWatermark$vungle_ads_release()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    if-eqz v0, :cond_5

    .line 333
    .line 334
    new-instance v1, Lcom/vungle/ads/internal/ui/WatermarkView;

    .line 335
    .line 336
    invoke-direct {v1, p0, v0}, Lcom/vungle/ads/internal/ui/WatermarkView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    const v2, 0x1020002

    .line 348
    .line 349
    .line 350
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    check-cast v0, Landroid/widget/FrameLayout;

    .line 355
    .line 356
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    .line 360
    .line 361
    .line 362
    :cond_5
    iput-object v12, p0, Lcom/vungle/ads/internal/ui/AdActivity;->mraidAdWidget:Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;

    .line 363
    .line 364
    iput-object p1, p0, Lcom/vungle/ads/internal/ui/AdActivity;->mraidPresenter:Lcom/vungle/ads/internal/presenter/MRAIDPresenter;

    .line 365
    .line 366
    sget-object p1, Lcom/vungle/ads/internal/util/a;->Companion:Lcom/vungle/ads/internal/util/a$a;

    .line 367
    .line 368
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/AdActivity;->lifeCycleCallback:Lcom/vungle/ads/internal/ui/AdActivity$b;

    .line 369
    .line 370
    invoke-virtual {p1, v0}, Lcom/vungle/ads/internal/util/a$a;->addLifecycleListener(Lcom/vungle/ads/internal/util/a$b;)V

    .line 371
    .line 372
    .line 373
    return-void

    .line 374
    :catch_0
    sget-object p1, Lcom/vungle/ads/internal/ui/AdActivity;->eventListener:Lcom/vungle/ads/internal/presenter/a;

    .line 375
    .line 376
    if-eqz p1, :cond_6

    .line 377
    .line 378
    new-instance v0, Lcom/vungle/ads/AdCantPlayWithoutWebView;

    .line 379
    .line 380
    invoke-direct {v0}, Lcom/vungle/ads/AdCantPlayWithoutWebView;-><init>()V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v11}, Lcom/vungle/ads/internal/model/AdPayload;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/n;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    invoke-virtual {v0, v1}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/n;)Lcom/vungle/ads/VungleError;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    invoke-virtual {v0}, Lcom/vungle/ads/VungleError;->logError$vungle_ads_release()Lcom/vungle/ads/VungleError;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    iget-object v1, p0, Lcom/vungle/ads/internal/ui/AdActivity;->placementRefId:Ljava/lang/String;

    .line 396
    .line 397
    invoke-virtual {p1, v0, v1}, Lcom/vungle/ads/internal/presenter/a;->onError(Lcom/vungle/ads/VungleError;Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 401
    .line 402
    .line 403
    return-void

    .line 404
    :cond_7
    :goto_1
    sget-object p1, Lcom/vungle/ads/internal/ui/AdActivity;->eventListener:Lcom/vungle/ads/internal/presenter/a;

    .line 405
    .line 406
    if-eqz p1, :cond_9

    .line 407
    .line 408
    new-instance v1, Lcom/vungle/ads/AdNotLoadedCantPlay;

    .line 409
    .line 410
    new-instance v3, Ljava/lang/StringBuilder;

    .line 411
    .line 412
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 413
    .line 414
    .line 415
    const-string v4, "Can not play fullscreen ad. placement="

    .line 416
    .line 417
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    const-string v0, " adv="

    .line 424
    .line 425
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    invoke-direct {v1, v0}, Lcom/vungle/ads/AdNotLoadedCantPlay;-><init>(Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    if-eqz v11, :cond_8

    .line 439
    .line 440
    invoke-virtual {v11}, Lcom/vungle/ads/internal/model/AdPayload;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/n;

    .line 441
    .line 442
    .line 443
    move-result-object v2

    .line 444
    :cond_8
    invoke-virtual {v1, v2}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/n;)Lcom/vungle/ads/VungleError;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    invoke-virtual {v0}, Lcom/vungle/ads/VungleError;->logError$vungle_ads_release()Lcom/vungle/ads/VungleError;

    .line 449
    .line 450
    .line 451
    move-result-object v0

    .line 452
    iget-object v1, p0, Lcom/vungle/ads/internal/ui/AdActivity;->placementRefId:Ljava/lang/String;

    .line 453
    .line 454
    invoke-virtual {p1, v0, v1}, Lcom/vungle/ads/internal/presenter/a;->onError(Lcom/vungle/ads/VungleError;Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    :cond_9
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 458
    .line 459
    .line 460
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/AdActivity;->mraidPresenter:Lcom/vungle/ads/internal/presenter/MRAIDPresenter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    or-int/lit8 v1, v1, 0x2

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->detach(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    sget-object v0, Lcom/vungle/ads/internal/util/a;->Companion:Lcom/vungle/ads/internal/util/a$a;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/vungle/ads/internal/ui/AdActivity;->lifeCycleCallback:Lcom/vungle/ads/internal/ui/AdActivity$b;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/util/a$a;->removeLifecycleListener(Lcom/vungle/ads/internal/util/a$b;)V

    .line 19
    .line 20
    .line 21
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5

    .line 1
    const-string v0, "intent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/vungle/ads/internal/ui/AdActivity;->Companion:Lcom/vungle/ads/internal/ui/AdActivity$a;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "getIntent()"

    .line 16
    .line 17
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/vungle/ads/internal/ui/AdActivity$a;->access$getPlacement(Lcom/vungle/ads/internal/ui/AdActivity$a;Landroid/content/Intent;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, p1}, Lcom/vungle/ads/internal/ui/AdActivity$a;->access$getPlacement(Lcom/vungle/ads/internal/ui/AdActivity$a;Landroid/content/Intent;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v4}, Lcom/vungle/ads/internal/ui/AdActivity$a;->access$getEventId(Lcom/vungle/ads/internal/ui/AdActivity$a;Landroid/content/Intent;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {v0, p1}, Lcom/vungle/ads/internal/ui/AdActivity$a;->access$getEventId(Lcom/vungle/ads/internal/ui/AdActivity$a;Landroid/content/Intent;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    if-eqz v3, :cond_0

    .line 46
    .line 47
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    :cond_0
    if-eqz v2, :cond_2

    .line 54
    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_2

    .line 62
    .line 63
    :cond_1
    sget-object p1, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    .line 64
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v2, "Tried to play another placement "

    .line 71
    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v2, " while playing "

    .line 79
    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    const-string v1, "AdActivity"

    .line 91
    .line 92
    invoke-virtual {p1, v1, v0}, Lcom/vungle/ads/internal/util/o$a;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    invoke-direct {p0, v3}, Lcom/vungle/ads/internal/ui/AdActivity;->onConcurrentPlaybackError(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :cond_2
    return-void
.end method

.method protected onPause()V
    .locals 5

    .line 1
    const-string v0, "AdActivity"

    .line 2
    .line 3
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-boolean v1, p0, Lcom/vungle/ads/internal/ui/AdActivity;->isReceiverRegistered:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/vungle/ads/internal/ui/AdActivity;->ringerModeReceiver:Lcom/vungle/ads/internal/util/RingerModeReceiver;

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput-boolean v1, p0, Lcom/vungle/ads/internal/ui/AdActivity;->isReceiverRegistered:Z

    .line 17
    .line 18
    sget-object v1, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    .line 19
    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v3, "unregisterReceiver(): "

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v3, p0, Lcom/vungle/ads/internal/ui/AdActivity;->ringerModeReceiver:Lcom/vungle/ads/internal/util/RingerModeReceiver;

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v1, v0, v2}, Lcom/vungle/ads/internal/util/o$a;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception v1

    .line 48
    sget-object v2, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    .line 49
    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v4, "unregisterReceiver error: "

    .line 56
    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v2, v0, v1}, Lcom/vungle/ads/internal/util/o$a;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/AdActivity;->mraidPresenter:Lcom/vungle/ads/internal/presenter/MRAIDPresenter;

    .line 75
    .line 76
    if-eqz v0, :cond_1

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->stop()V

    .line 79
    .line 80
    .line 81
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 5

    .line 1
    const-string v0, "AdActivity"

    .line 2
    .line 3
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/vungle/ads/internal/ui/AdActivity;->hideSystemUi()V

    .line 7
    .line 8
    .line 9
    :try_start_0
    iget-boolean v1, p0, Lcom/vungle/ads/internal/ui/AdActivity;->isReceiverRegistered:Z

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Landroid/content/IntentFilter;

    .line 14
    .line 15
    const-string v2, "android.media.RINGER_MODE_CHANGED"

    .line 16
    .line 17
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/vungle/ads/internal/ui/AdActivity;->ringerModeReceiver:Lcom/vungle/ads/internal/util/RingerModeReceiver;

    .line 21
    .line 22
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    iput-boolean v1, p0, Lcom/vungle/ads/internal/ui/AdActivity;->isReceiverRegistered:Z

    .line 27
    .line 28
    sget-object v1, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    .line 29
    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v3, "registerReceiver(): "

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object v3, p0, Lcom/vungle/ads/internal/ui/AdActivity;->ringerModeReceiver:Lcom/vungle/ads/internal/util/RingerModeReceiver;

    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v1, v0, v2}, Lcom/vungle/ads/internal/util/o$a;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception v1

    .line 58
    sget-object v2, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    .line 59
    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v4, "registerReceiver error: "

    .line 66
    .line 67
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v2, v0, v1}, Lcom/vungle/ads/internal/util/o$a;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/AdActivity;->mraidPresenter:Lcom/vungle/ads/internal/presenter/MRAIDPresenter;

    .line 85
    .line 86
    if-eqz v0, :cond_1

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->start()V

    .line 89
    .line 90
    .line 91
    :cond_1
    return-void
.end method

.method public final setMraidAdWidget$vungle_ads_release(Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/ui/AdActivity;->mraidAdWidget:Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;

    .line 2
    .line 3
    return-void
.end method

.method public final setMraidPresenter$vungle_ads_release(Lcom/vungle/ads/internal/presenter/MRAIDPresenter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/ui/AdActivity;->mraidPresenter:Lcom/vungle/ads/internal/presenter/MRAIDPresenter;

    .line 2
    .line 3
    return-void
.end method

.method public final setPlacementRefId$vungle_ads_release(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/vungle/ads/internal/ui/AdActivity;->placementRefId:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public setRequestedOrientation(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/internal/ui/AdActivity;->canRotate$vungle_ads_release()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-super {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
