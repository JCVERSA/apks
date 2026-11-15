.class public final Lcom/vungle/ads/NativeAd;
.super Lcom/vungle/ads/BaseAd;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/NativeAd$a;
    }
.end annotation


# static fields
.field public static final BOTTOM_LEFT:I = 0x2

.field public static final BOTTOM_RIGHT:I = 0x3

.field public static final Companion:Lcom/vungle/ads/NativeAd$a;

.field private static final TAG:Ljava/lang/String; = "NativeAd"

.field public static final TOP_LEFT:I = 0x0

.field public static final TOP_RIGHT:I = 0x1


# instance fields
.field private adContentView:Lcom/vungle/ads/internal/ui/view/MediaView;

.field private adIconView:Landroid/widget/ImageView;

.field private adOptionsPosition:I

.field private adOptionsView:Lcom/vungle/ads/NativeAdOptionsView;

.field private final adPlayCallback:Lcom/vungle/ads/NativeAd$adPlayCallback$1;

.field private adRootView:Landroid/widget/FrameLayout;

.field private aspectRatio:F

.field private clickableViews:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "+",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final executors$delegate:Lkotlin/Lazy;

.field private final imageLoader$delegate:Lkotlin/Lazy;

.field private final impressionTracker$delegate:Lkotlin/Lazy;

.field private final isInvisibleLogged:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private nativeAdAssetMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private presenter:Lcom/vungle/ads/internal/presenter/NativeAdPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/vungle/ads/NativeAd$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/vungle/ads/NativeAd$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/vungle/ads/NativeAd;->Companion:Lcom/vungle/ads/NativeAd$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placementId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v0, Lcom/vungle/ads/b;

    invoke-direct {v0}, Lcom/vungle/ads/b;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/vungle/ads/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/b;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/ads/BaseAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/b;)V

    .line 2
    new-instance p2, Lcom/vungle/ads/NativeAd$imageLoader$2;

    invoke-direct {p2, p0}, Lcom/vungle/ads/NativeAd$imageLoader$2;-><init>(Lcom/vungle/ads/NativeAd;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/vungle/ads/NativeAd;->imageLoader$delegate:Lkotlin/Lazy;

    .line 3
    sget-object p2, Lcom/vungle/ads/ServiceLocator;->Companion:Lcom/vungle/ads/ServiceLocator$Companion;

    .line 4
    sget-object p2, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance p3, Lcom/vungle/ads/NativeAd$special$$inlined$inject$1;

    invoke-direct {p3, p1}, Lcom/vungle/ads/NativeAd$special$$inlined$inject$1;-><init>(Landroid/content/Context;)V

    invoke-static {p2, p3}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    .line 5
    iput-object p2, p0, Lcom/vungle/ads/NativeAd;->executors$delegate:Lkotlin/Lazy;

    .line 6
    new-instance p2, Lcom/vungle/ads/NativeAd$impressionTracker$2;

    invoke-direct {p2, p1}, Lcom/vungle/ads/NativeAd$impressionTracker$2;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/vungle/ads/NativeAd;->impressionTracker$delegate:Lkotlin/Lazy;

    .line 7
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/vungle/ads/NativeAd;->isInvisibleLogged:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    .line 8
    iput p2, p0, Lcom/vungle/ads/NativeAd;->adOptionsPosition:I

    .line 9
    new-instance p2, Lcom/vungle/ads/NativeAdOptionsView;

    invoke-direct {p2, p1}, Lcom/vungle/ads/NativeAdOptionsView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/vungle/ads/NativeAd;->adOptionsView:Lcom/vungle/ads/NativeAdOptionsView;

    .line 10
    new-instance p1, Lcom/vungle/ads/NativeAd$adPlayCallback$1;

    invoke-direct {p1, p0}, Lcom/vungle/ads/NativeAd$adPlayCallback$1;-><init>(Lcom/vungle/ads/NativeAd;)V

    iput-object p1, p0, Lcom/vungle/ads/NativeAd;->adPlayCallback:Lcom/vungle/ads/NativeAd$adPlayCallback$1;

    return-void
.end method

.method public static synthetic a(Lcom/vungle/ads/NativeAd;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/vungle/ads/NativeAd;->registerViewForInteraction$lambda-4$lambda-3(Lcom/vungle/ads/NativeAd;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getExecutors(Lcom/vungle/ads/NativeAd;)Lcom/vungle/ads/internal/executor/a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/vungle/ads/NativeAd;->getExecutors()Lcom/vungle/ads/internal/executor/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getPresenter$p(Lcom/vungle/ads/NativeAd;)Lcom/vungle/ads/internal/presenter/NativeAdPresenter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vungle/ads/NativeAd;->presenter:Lcom/vungle/ads/internal/presenter/NativeAdPresenter;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$isInvisibleLogged$p(Lcom/vungle/ads/NativeAd;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vungle/ads/NativeAd;->isInvisibleLogged:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$logViewVisibleOnPlay(Lcom/vungle/ads/NativeAd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/vungle/ads/NativeAd;->logViewVisibleOnPlay()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setAspectRatio$p(Lcom/vungle/ads/NativeAd;F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/vungle/ads/NativeAd;->aspectRatio:F

    .line 2
    .line 3
    return-void
.end method

.method public static synthetic b(Lcom/vungle/ads/NativeAd;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/vungle/ads/NativeAd;->registerViewForInteraction$lambda-2(Lcom/vungle/ads/NativeAd;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final createMediaAspectRatio()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/vungle/ads/NativeAd;->getImageLoader()Lcom/vungle/ads/internal/util/k;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0}, Lcom/vungle/ads/NativeAd;->getMainImagePath()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Lcom/vungle/ads/NativeAd$createMediaAspectRatio$1;

    .line 10
    .line 11
    invoke-direct {v2, p0}, Lcom/vungle/ads/NativeAd$createMediaAspectRatio$1;-><init>(Lcom/vungle/ads/NativeAd;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/vungle/ads/internal/util/k;->getImageSize(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/vungle/ads/NativeAd;->getImageLoader()Lcom/vungle/ads/internal/util/k;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/vungle/ads/NativeAd$displayImage$1;

    .line 6
    .line 7
    invoke-direct {v1, p2}, Lcom/vungle/ads/NativeAd$displayImage$1;-><init>(Landroid/widget/ImageView;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1, v1}, Lcom/vungle/ads/internal/util/k;->displayImage(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static synthetic getAdOptionsPosition$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private final getExecutors()Lcom/vungle/ads/internal/executor/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->executors$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/vungle/ads/internal/executor/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getImageLoader()Lcom/vungle/ads/internal/util/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->imageLoader$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/vungle/ads/internal/util/k;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getImpressionTracker()Lcom/vungle/ads/internal/ImpressionTracker;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->impressionTracker$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/vungle/ads/internal/ImpressionTracker;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getMainImagePath()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->nativeAdAssetMap:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "MAIN_IMAGE"

    .line 6
    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/String;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    :cond_0
    const-string v0, ""

    .line 16
    .line 17
    :cond_1
    return-object v0
.end method

.method private final logViewVisibleOnPlay()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->isInvisibleLogged:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "3"

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v0, "2"

    .line 13
    .line 14
    :goto_0
    sget-object v1, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    .line 15
    .line 16
    new-instance v2, Lcom/vungle/ads/w;

    .line 17
    .line 18
    sget-object v3, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->AD_VISIBILITY:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    .line 19
    .line 20
    invoke-direct {v2, v3}, Lcom/vungle/ads/w;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/n;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release(Lcom/vungle/ads/w;Lcom/vungle/ads/internal/util/n;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    sget-object v1, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    .line 31
    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v3, "Log metric AD_VISIBILITY: "

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v2, "NativeAd"

    .line 50
    .line 51
    invoke-virtual {v1, v2, v0}, Lcom/vungle/ads/internal/util/o$a;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method private static final registerViewForInteraction$lambda-1(Lkotlin/Lazy;)Lcom/vungle/ads/internal/platform/d;
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

.method private static final registerViewForInteraction$lambda-2(Lcom/vungle/ads/NativeAd;Landroid/view/View;)V
    .locals 1

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/vungle/ads/NativeAd;->presenter:Lcom/vungle/ads/internal/presenter/NativeAdPresenter;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const-string v0, "openPrivacy"

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/vungle/ads/NativeAd;->getPrivacyUrl$vungle_ads_release()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p1, v0, p0}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->processCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method private static final registerViewForInteraction$lambda-4$lambda-3(Lcom/vungle/ads/NativeAd;Landroid/view/View;)V
    .locals 1

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/vungle/ads/NativeAd;->presenter:Lcom/vungle/ads/internal/presenter/NativeAdPresenter;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const-string v0, "download"

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/vungle/ads/NativeAd;->getCtaUrl$vungle_ads_release()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p1, v0, p0}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->processCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic constructAdInternal$vungle_ads_release(Landroid/content/Context;)Lcom/vungle/ads/internal/AdInternal;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/vungle/ads/NativeAd;->constructAdInternal$vungle_ads_release(Landroid/content/Context;)Lcom/vungle/ads/internal/f;

    move-result-object p1

    return-object p1
.end method

.method public constructAdInternal$vungle_ads_release(Landroid/content/Context;)Lcom/vungle/ads/internal/f;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/vungle/ads/internal/f;

    invoke-direct {v0, p1}, Lcom/vungle/ads/internal/f;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final getAdBodyText()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->nativeAdAssetMap:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "APP_DESCRIPTION"

    .line 6
    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/String;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    :cond_0
    const-string v0, ""

    .line 16
    .line 17
    :cond_1
    return-object v0
.end method

.method public final getAdCallToActionText()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->nativeAdAssetMap:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "CTA_BUTTON_TEXT"

    .line 6
    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/String;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    :cond_0
    const-string v0, ""

    .line 16
    .line 17
    :cond_1
    return-object v0
.end method

.method public final getAdOptionsPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/vungle/ads/NativeAd;->adOptionsPosition:I

    .line 2
    .line 3
    return v0
.end method

.method public final getAdSponsoredText()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->nativeAdAssetMap:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "SPONSORED_BY"

    .line 6
    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/String;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    :cond_0
    const-string v0, ""

    .line 16
    .line 17
    :cond_1
    return-object v0
.end method

.method public final getAdStarRating()Ljava/lang/Double;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->nativeAdAssetMap:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "APP_RATING_VALUE"

    .line 6
    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/String;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    :cond_0
    const-string v0, ""

    .line 16
    .line 17
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x0

    .line 22
    if-nez v1, :cond_2

    .line 23
    .line 24
    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    .line 25
    .line 26
    .line 27
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :catch_0
    :cond_2
    return-object v2
.end method

.method public final getAdTitle()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->nativeAdAssetMap:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "APP_NAME"

    .line 6
    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/String;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    :cond_0
    const-string v0, ""

    .line 16
    .line 17
    :cond_1
    return-object v0
.end method

.method public final getAppIcon()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->nativeAdAssetMap:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "APP_ICON"

    .line 6
    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/String;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    :cond_0
    const-string v0, ""

    .line 16
    .line 17
    :cond_1
    return-object v0
.end method

.method public final getCtaUrl$vungle_ads_release()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->nativeAdAssetMap:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "CTA_BUTTON_URL"

    .line 6
    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/String;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    :cond_0
    const-string v0, ""

    .line 16
    .line 17
    :cond_1
    return-object v0
.end method

.method public final getMediaAspectRatio()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/vungle/ads/NativeAd;->aspectRatio:F

    .line 2
    .line 3
    return v0
.end method

.method public final getPrivacyIconUrl$vungle_ads_release()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->nativeAdAssetMap:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "VUNGLE_PRIVACY_ICON_URL"

    .line 6
    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/String;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    :cond_0
    const-string v0, ""

    .line 16
    .line 17
    :cond_1
    return-object v0
.end method

.method public final getPrivacyUrl$vungle_ads_release()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->nativeAdAssetMap:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "VUNGLE_PRIVACY_URL"

    .line 6
    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/String;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    :cond_0
    const-string v0, ""

    .line 16
    .line 17
    :cond_1
    return-object v0
.end method

.method public final hasCallToAction()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/NativeAd;->getCtaUrl$vungle_ads_release()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public onAdLoaded$vungle_ads_release(Lcom/vungle/ads/internal/model/AdPayload;)V
    .locals 1

    .line 1
    const-string v0, "advertisement"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/vungle/ads/BaseAd;->onAdLoaded$vungle_ads_release(Lcom/vungle/ads/internal/model/AdPayload;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/AdPayload;->getMRAIDArgsInMap()Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/vungle/ads/NativeAd;->nativeAdAssetMap:Ljava/util/Map;

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/vungle/ads/NativeAd;->createMediaAspectRatio()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final performCTA()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->presenter:Lcom/vungle/ads/internal/presenter/NativeAdPresenter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "download"

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/vungle/ads/NativeAd;->getCtaUrl$vungle_ads_release()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->processCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final registerViewForInteraction(Landroid/widget/FrameLayout;Lcom/vungle/ads/internal/ui/view/MediaView;Landroid/widget/ImageView;Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/FrameLayout;",
            "Lcom/vungle/ads/internal/ui/view/MediaView;",
            "Landroid/widget/ImageView;",
            "Ljava/util/Collection<",
            "+",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "rootView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "mediaView"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    .line 12
    .line 13
    new-instance v2, Lcom/vungle/ads/w;

    .line 14
    .line 15
    sget-object v1, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->PLAY_AD_API:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    .line 16
    .line 17
    invoke-direct {v2, v1}, Lcom/vungle/ads/w;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/n;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const/4 v5, 0x4

    .line 25
    const/4 v6, 0x0

    .line 26
    const/4 v4, 0x0

    .line 27
    move-object v1, v0

    .line 28
    invoke-static/range {v1 .. v6}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;Lcom/vungle/ads/w;Lcom/vungle/ads/internal/util/n;Ljava/lang/String;ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getResponseToShowMetric$vungle_ads_release()Lcom/vungle/ads/x;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lcom/vungle/ads/x;->markEnd()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getResponseToShowMetric$vungle_ads_release()Lcom/vungle/ads/x;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/n;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    move-object v1, v0

    .line 47
    invoke-static/range {v1 .. v6}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;Lcom/vungle/ads/x;Lcom/vungle/ads/internal/util/n;Ljava/lang/String;ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/AdInternal;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/vungle/ads/internal/AdInternal;->getShowToValidationMetric$vungle_ads_release()Lcom/vungle/ads/x;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/vungle/ads/x;->markStart()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getShowToFailMetric$vungle_ads_release()Lcom/vungle/ads/x;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/vungle/ads/x;->markStart()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getShowToCloseMetric$vungle_ads_release()Lcom/vungle/ads/x;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/vungle/ads/x;->markStart()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/AdInternal;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    const/4 v1, 0x1

    .line 80
    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/AdInternal;->canPlayAd(Z)Lcom/vungle/ads/VungleError;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    if-eqz v0, :cond_2

    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/AdInternal;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {v0}, Lcom/vungle/ads/VungleError;->getCode()I

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    invoke-virtual {p1, p2}, Lcom/vungle/ads/internal/AdInternal;->isErrorTerminal$vungle_ads_release(I)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-eqz p1, :cond_0

    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/AdInternal;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    sget-object p2, Lcom/vungle/ads/internal/AdInternal$AdState;->ERROR:Lcom/vungle/ads/internal/AdInternal$AdState;

    .line 105
    .line 106
    invoke-virtual {p1, p2}, Lcom/vungle/ads/internal/AdInternal;->setAdState(Lcom/vungle/ads/internal/AdInternal$AdState;)V

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lcom/vungle/ads/NativeAd;->nativeAdAssetMap:Ljava/util/Map;

    .line 110
    .line 111
    if-eqz p1, :cond_0

    .line 112
    .line 113
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 114
    .line 115
    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdListener()Lcom/vungle/ads/h;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    if-eqz p1, :cond_1

    .line 121
    .line 122
    invoke-interface {p1, p0, v0}, Lcom/vungle/ads/h;->onAdFailedToPlay(Lcom/vungle/ads/BaseAd;Lcom/vungle/ads/VungleError;)V

    .line 123
    .line 124
    .line 125
    :cond_1
    return-void

    .line 126
    :cond_2
    iput-object p1, p0, Lcom/vungle/ads/NativeAd;->adRootView:Landroid/widget/FrameLayout;

    .line 127
    .line 128
    iput-object p2, p0, Lcom/vungle/ads/NativeAd;->adContentView:Lcom/vungle/ads/internal/ui/view/MediaView;

    .line 129
    .line 130
    iput-object p3, p0, Lcom/vungle/ads/NativeAd;->adIconView:Landroid/widget/ImageView;

    .line 131
    .line 132
    iput-object p4, p0, Lcom/vungle/ads/NativeAd;->clickableViews:Ljava/util/Collection;

    .line 133
    .line 134
    sget-object v0, Lcom/vungle/ads/ServiceLocator;->Companion:Lcom/vungle/ads/ServiceLocator$Companion;

    .line 135
    .line 136
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getContext()Landroid/content/Context;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 141
    .line 142
    new-instance v2, Lcom/vungle/ads/NativeAd$registerViewForInteraction$$inlined$inject$1;

    .line 143
    .line 144
    invoke-direct {v2, v0}, Lcom/vungle/ads/NativeAd$registerViewForInteraction$$inlined$inject$1;-><init>(Landroid/content/Context;)V

    .line 145
    .line 146
    .line 147
    invoke-static {v1, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    new-instance v1, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;

    .line 152
    .line 153
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getContext()Landroid/content/Context;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/AdInternal;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    const-string v4, "null cannot be cast to non-null type com.vungle.ads.internal.presenter.NativePresenterDelegate"

    .line 162
    .line 163
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    check-cast v3, Lcom/vungle/ads/internal/presenter/k;

    .line 167
    .line 168
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/AdInternal;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    invoke-virtual {v4}, Lcom/vungle/ads/internal/AdInternal;->getAdvertisement()Lcom/vungle/ads/internal/model/AdPayload;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    invoke-static {v0}, Lcom/vungle/ads/NativeAd;->registerViewForInteraction$lambda-1(Lkotlin/Lazy;)Lcom/vungle/ads/internal/platform/d;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;-><init>(Landroid/content/Context;Lcom/vungle/ads/internal/presenter/k;Lcom/vungle/ads/internal/model/AdPayload;Lcom/vungle/ads/internal/platform/d;)V

    .line 181
    .line 182
    .line 183
    iput-object v1, p0, Lcom/vungle/ads/NativeAd;->presenter:Lcom/vungle/ads/internal/presenter/NativeAdPresenter;

    .line 184
    .line 185
    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->nativeAdAssetMap:Ljava/util/Map;

    .line 186
    .line 187
    if-eqz v0, :cond_3

    .line 188
    .line 189
    const-string v1, "OM_SDK_DATA"

    .line 190
    .line 191
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    check-cast v0, Ljava/lang/String;

    .line 196
    .line 197
    if-nez v0, :cond_4

    .line 198
    .line 199
    :cond_3
    const-string v0, ""

    .line 200
    .line 201
    :cond_4
    iget-object v1, p0, Lcom/vungle/ads/NativeAd;->presenter:Lcom/vungle/ads/internal/presenter/NativeAdPresenter;

    .line 202
    .line 203
    if-eqz v1, :cond_5

    .line 204
    .line 205
    invoke-virtual {v1, v0}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->initOMTracker(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    :cond_5
    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->presenter:Lcom/vungle/ads/internal/presenter/NativeAdPresenter;

    .line 209
    .line 210
    if-eqz v0, :cond_6

    .line 211
    .line 212
    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->startTracking(Landroid/view/View;)V

    .line 213
    .line 214
    .line 215
    :cond_6
    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->presenter:Lcom/vungle/ads/internal/presenter/NativeAdPresenter;

    .line 216
    .line 217
    if-eqz v0, :cond_7

    .line 218
    .line 219
    new-instance v1, Lcom/vungle/ads/internal/presenter/a;

    .line 220
    .line 221
    iget-object v2, p0, Lcom/vungle/ads/NativeAd;->adPlayCallback:Lcom/vungle/ads/NativeAd$adPlayCallback$1;

    .line 222
    .line 223
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/AdInternal;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    invoke-virtual {v3}, Lcom/vungle/ads/internal/AdInternal;->getPlacement()Lcom/vungle/ads/internal/model/g;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    invoke-direct {v1, v2, v3}, Lcom/vungle/ads/internal/presenter/a;-><init>(Lcom/vungle/ads/internal/presenter/b;Lcom/vungle/ads/internal/model/g;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->setEventListener(Lcom/vungle/ads/internal/presenter/a;)V

    .line 235
    .line 236
    .line 237
    :cond_7
    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->adOptionsView:Lcom/vungle/ads/NativeAdOptionsView;

    .line 238
    .line 239
    if-eqz v0, :cond_8

    .line 240
    .line 241
    new-instance v1, Lcom/vungle/ads/q;

    .line 242
    .line 243
    invoke-direct {v1, p0}, Lcom/vungle/ads/q;-><init>(Lcom/vungle/ads/NativeAd;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    .line 248
    .line 249
    :cond_8
    if-nez p4, :cond_9

    .line 250
    .line 251
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 252
    .line 253
    .line 254
    move-result-object p4

    .line 255
    check-cast p4, Ljava/util/Collection;

    .line 256
    .line 257
    :cond_9
    check-cast p4, Ljava/lang/Iterable;

    .line 258
    .line 259
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 260
    .line 261
    .line 262
    move-result-object p4

    .line 263
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 264
    .line 265
    .line 266
    move-result v0

    .line 267
    if-eqz v0, :cond_a

    .line 268
    .line 269
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    check-cast v0, Landroid/view/View;

    .line 274
    .line 275
    new-instance v1, Lcom/vungle/ads/r;

    .line 276
    .line 277
    invoke-direct {v1, p0}, Lcom/vungle/ads/r;-><init>(Lcom/vungle/ads/NativeAd;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    .line 282
    .line 283
    goto :goto_0

    .line 284
    :cond_a
    iget-object p4, p0, Lcom/vungle/ads/NativeAd;->adOptionsView:Lcom/vungle/ads/NativeAdOptionsView;

    .line 285
    .line 286
    if-eqz p4, :cond_b

    .line 287
    .line 288
    iget v0, p0, Lcom/vungle/ads/NativeAd;->adOptionsPosition:I

    .line 289
    .line 290
    invoke-virtual {p4, p1, v0}, Lcom/vungle/ads/NativeAdOptionsView;->renderTo(Landroid/widget/FrameLayout;I)V

    .line 291
    .line 292
    .line 293
    :cond_b
    invoke-direct {p0}, Lcom/vungle/ads/NativeAd;->getImpressionTracker()Lcom/vungle/ads/internal/ImpressionTracker;

    .line 294
    .line 295
    .line 296
    move-result-object p4

    .line 297
    new-instance v0, Lcom/vungle/ads/NativeAd$b;

    .line 298
    .line 299
    invoke-direct {v0, p0}, Lcom/vungle/ads/NativeAd$b;-><init>(Lcom/vungle/ads/NativeAd;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {p4, p1, v0}, Lcom/vungle/ads/internal/ImpressionTracker;->addView(Landroid/view/View;Lcom/vungle/ads/internal/ImpressionTracker$b;)V

    .line 303
    .line 304
    .line 305
    invoke-direct {p0}, Lcom/vungle/ads/NativeAd;->getMainImagePath()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object p4

    .line 309
    invoke-virtual {p2}, Lcom/vungle/ads/internal/ui/view/MediaView;->getMainImage$vungle_ads_release()Landroid/widget/ImageView;

    .line 310
    .line 311
    .line 312
    move-result-object p2

    .line 313
    invoke-direct {p0, p4, p2}, Lcom/vungle/ads/NativeAd;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {p0}, Lcom/vungle/ads/NativeAd;->getAppIcon()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object p2

    .line 320
    invoke-direct {p0, p2, p3}, Lcom/vungle/ads/NativeAd;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {p0}, Lcom/vungle/ads/NativeAd;->getPrivacyIconUrl$vungle_ads_release()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object p2

    .line 327
    iget-object p3, p0, Lcom/vungle/ads/NativeAd;->adOptionsView:Lcom/vungle/ads/NativeAdOptionsView;

    .line 328
    .line 329
    if-eqz p3, :cond_c

    .line 330
    .line 331
    invoke-virtual {p3}, Lcom/vungle/ads/NativeAdOptionsView;->getPrivacyIcon$vungle_ads_release()Landroid/widget/ImageView;

    .line 332
    .line 333
    .line 334
    move-result-object p3

    .line 335
    goto :goto_1

    .line 336
    :cond_c
    const/4 p3, 0x0

    .line 337
    :goto_1
    invoke-direct {p0, p2, p3}, Lcom/vungle/ads/NativeAd;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdConfig()Lcom/vungle/ads/b;

    .line 341
    .line 342
    .line 343
    move-result-object p2

    .line 344
    invoke-virtual {p2}, Lcom/vungle/ads/b;->getWatermark$vungle_ads_release()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object p2

    .line 348
    if-eqz p2, :cond_d

    .line 349
    .line 350
    new-instance p3, Lcom/vungle/ads/internal/ui/WatermarkView;

    .line 351
    .line 352
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 353
    .line 354
    .line 355
    move-result-object p4

    .line 356
    const-string v0, "rootView.context"

    .line 357
    .line 358
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    invoke-direct {p3, p4, p2}, Lcom/vungle/ads/internal/ui/WatermarkView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {p3}, Landroid/view/View;->bringToFront()V

    .line 368
    .line 369
    .line 370
    :cond_d
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/AdInternal;

    .line 371
    .line 372
    .line 373
    move-result-object p1

    .line 374
    invoke-virtual {p1}, Lcom/vungle/ads/internal/AdInternal;->getShowToValidationMetric$vungle_ads_release()Lcom/vungle/ads/x;

    .line 375
    .line 376
    .line 377
    move-result-object p1

    .line 378
    invoke-virtual {p1}, Lcom/vungle/ads/x;->markEnd()V

    .line 379
    .line 380
    .line 381
    sget-object v0, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    .line 382
    .line 383
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/AdInternal;

    .line 384
    .line 385
    .line 386
    move-result-object p1

    .line 387
    invoke-virtual {p1}, Lcom/vungle/ads/internal/AdInternal;->getShowToValidationMetric$vungle_ads_release()Lcom/vungle/ads/x;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/n;

    .line 392
    .line 393
    .line 394
    move-result-object v2

    .line 395
    const/4 v4, 0x4

    .line 396
    const/4 v5, 0x0

    .line 397
    const/4 v3, 0x0

    .line 398
    invoke-static/range {v0 .. v5}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;Lcom/vungle/ads/x;Lcom/vungle/ads/internal/util/n;Ljava/lang/String;ILjava/lang/Object;)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/AdInternal;

    .line 402
    .line 403
    .line 404
    move-result-object p1

    .line 405
    invoke-virtual {p1}, Lcom/vungle/ads/internal/AdInternal;->getValidationToPresentMetric$vungle_ads_release()Lcom/vungle/ads/x;

    .line 406
    .line 407
    .line 408
    move-result-object p1

    .line 409
    invoke-virtual {p1}, Lcom/vungle/ads/x;->markStart()V

    .line 410
    .line 411
    .line 412
    iget-object p1, p0, Lcom/vungle/ads/NativeAd;->presenter:Lcom/vungle/ads/internal/presenter/NativeAdPresenter;

    .line 413
    .line 414
    if-eqz p1, :cond_e

    .line 415
    .line 416
    invoke-virtual {p1}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->prepare()V

    .line 417
    .line 418
    .line 419
    :cond_e
    return-void
.end method

.method public final setAdOptionsPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/vungle/ads/NativeAd;->adOptionsPosition:I

    .line 2
    .line 3
    return-void
.end method

.method public final unregisterView()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/AdInternal;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/vungle/ads/internal/AdInternal;->getAdState()Lcom/vungle/ads/internal/AdInternal$AdState;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lcom/vungle/ads/internal/AdInternal$AdState;->FINISHED:Lcom/vungle/ads/internal/AdInternal$AdState;

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->clickableViews:Ljava/util/Collection;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    check-cast v0, Ljava/lang/Iterable;

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Landroid/view/View;

    .line 36
    .line 37
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iput-object v1, p0, Lcom/vungle/ads/NativeAd;->clickableViews:Ljava/util/Collection;

    .line 42
    .line 43
    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->nativeAdAssetMap:Ljava/util/Map;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 48
    .line 49
    .line 50
    :cond_2
    invoke-direct {p0}, Lcom/vungle/ads/NativeAd;->getImpressionTracker()Lcom/vungle/ads/internal/ImpressionTracker;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/vungle/ads/internal/ImpressionTracker;->destroy()V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->adContentView:Lcom/vungle/ads/internal/ui/view/MediaView;

    .line 58
    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/vungle/ads/internal/ui/view/MediaView;->destroy()V

    .line 62
    .line 63
    .line 64
    :cond_3
    iput-object v1, p0, Lcom/vungle/ads/NativeAd;->adContentView:Lcom/vungle/ads/internal/ui/view/MediaView;

    .line 65
    .line 66
    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->adOptionsView:Lcom/vungle/ads/NativeAdOptionsView;

    .line 67
    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/vungle/ads/NativeAdOptionsView;->destroy()V

    .line 71
    .line 72
    .line 73
    :cond_4
    iput-object v1, p0, Lcom/vungle/ads/NativeAd;->adOptionsView:Lcom/vungle/ads/NativeAdOptionsView;

    .line 74
    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->adIconView:Landroid/widget/ImageView;

    .line 76
    .line 77
    if-eqz v0, :cond_5

    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    goto :goto_1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    goto :goto_2

    .line 86
    :cond_5
    move-object v0, v1

    .line 87
    :goto_1
    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 88
    .line 89
    if-eqz v2, :cond_6

    .line 90
    .line 91
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 92
    .line 93
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-nez v2, :cond_6

    .line 102
    .line 103
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .line 105
    .line 106
    goto :goto_3

    .line 107
    :goto_2
    sget-object v2, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    .line 108
    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    const-string v4, "error msg: "

    .line 115
    .line 116
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    const-string v3, "NativeAd"

    .line 131
    .line 132
    invoke-virtual {v2, v3, v0}, Lcom/vungle/ads/internal/util/o$a;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->adIconView:Landroid/widget/ImageView;

    .line 136
    .line 137
    if-eqz v0, :cond_7

    .line 138
    .line 139
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    .line 141
    .line 142
    :cond_7
    iput-object v1, p0, Lcom/vungle/ads/NativeAd;->adIconView:Landroid/widget/ImageView;

    .line 143
    .line 144
    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->presenter:Lcom/vungle/ads/internal/presenter/NativeAdPresenter;

    .line 145
    .line 146
    if-eqz v0, :cond_8

    .line 147
    .line 148
    invoke-virtual {v0}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->detach()V

    .line 149
    .line 150
    .line 151
    :cond_8
    return-void
.end method
