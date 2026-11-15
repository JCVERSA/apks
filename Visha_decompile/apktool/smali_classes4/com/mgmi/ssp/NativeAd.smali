.class public Lcom/mgmi/ssp/NativeAd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private activityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private hasInit:Z

.field private isBidAd:Z

.field private mAdsLoaderInterface:Lcom/mgmi/ads/api/a/b;

.field private mAdsRequestInterface:Lcom/mgmi/ads/api/a/d;

.field mNativeADDataRefs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgmi/ssp/NativeADDataRef;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeAdListener:Lcom/mgmi/ssp/NativeAdListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/mgmi/ssp/NativeAdListener;ILcom/mgmi/ssp/TParams;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mgmi/ssp/NativeAd;->isBidAd:Z

    .line 3
    invoke-direct/range {p0 .. p6}, Lcom/mgmi/ssp/NativeAd;->init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/mgmi/ssp/NativeAdListener;ILcom/mgmi/ssp/TParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/mgmi/ssp/NativeAdListener;ILcom/mgmi/ssp/TParams;I)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/mgmi/ssp/NativeAd;->isBidAd:Z

    if-eqz p6, :cond_0

    .line 6
    invoke-virtual {p6, p7}, Lcom/mgmi/ssp/TParams;->setEcpm(I)V

    .line 7
    :cond_0
    invoke-direct/range {p0 .. p6}, Lcom/mgmi/ssp/NativeAd;->init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/mgmi/ssp/NativeAdListener;ILcom/mgmi/ssp/TParams;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/mgmi/ssp/NativeAd;)Lcom/mgmi/ssp/NativeAdListener;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ssp/NativeAd;->mNativeAdListener:Lcom/mgmi/ssp/NativeAdListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/mgmi/ssp/NativeAd;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgmi/ssp/NativeAd;->isBidAd:Z

    return p0
.end method

.method private init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/mgmi/ssp/NativeAdListener;ILcom/mgmi/ssp/TParams;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/mgmi/platform/b;->a()Lcom/mgmi/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/platform/b;->b()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p4, :cond_0

    new-instance p0, Lcom/mgmi/ssp/AdError;

    const/16 p1, 0x1390

    const-string p2, "\u5a92\u4f53\u9ed1\u540d\u5355"

    invoke-direct {p0, p1, p2}, Lcom/mgmi/ssp/AdError;-><init>(ILjava/lang/String;)V

    invoke-interface {p4, p0}, Lcom/mgmi/ssp/BasicADListener;->onNoAd(Lcom/mgmi/ssp/AdError;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/mgmi/platform/b;->a()Lcom/mgmi/platform/b;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/mgmi/platform/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p4, :cond_2

    new-instance p0, Lcom/mgmi/ssp/AdError;

    const/16 p1, 0x138f

    const-string p2, "\u5e7f\u544a\u4f4d\u9ed1\u540d\u5355"

    invoke-direct {p0, p1, p2}, Lcom/mgmi/ssp/AdError;-><init>(ILjava/lang/String;)V

    invoke-interface {p4, p0}, Lcom/mgmi/ssp/BasicADListener;->onNoAd(Lcom/mgmi/ssp/AdError;)V

    :cond_2
    return-void

    :cond_3
    invoke-static {}, Lcom/mgmi/platform/b;->a()Lcom/mgmi/platform/b;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mgmi/platform/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p4, :cond_4

    new-instance p0, Lcom/mgmi/ssp/AdError;

    const/16 p1, 0x138e

    const-string p2, "\u5305\u540d\u6821\u9a8c\u9519\u8bef\uff0c\u5f53\u524dAPP\u5305\u540d\u4e0e\u5b98\u7f51\u6ce8\u518c\u5a92\u4f53\u662f\u586b\u5199\u7684\u5305\u540d\u4e0d\u4e00\u81f4\uff0c\u65e0\u6cd5\u4f7f\u7528SDK"

    invoke-direct {p0, p1, p2}, Lcom/mgmi/ssp/AdError;-><init>(ILjava/lang/String;)V

    invoke-interface {p4, p0}, Lcom/mgmi/ssp/BasicADListener;->onNoAd(Lcom/mgmi/ssp/AdError;)V

    :cond_4
    return-void

    :cond_5
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mgmi/ssp/NativeAd;->activityWeakReference:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgmi/ssp/NativeAd;->mNativeADDataRefs:Ljava/util/List;

    iput-object p4, p0, Lcom/mgmi/ssp/NativeAd;->mNativeAdListener:Lcom/mgmi/ssp/NativeAdListener;

    new-instance p4, Lcom/mgmi/ads/api/a/c;

    invoke-direct {p4}, Lcom/mgmi/ads/api/a/c;-><init>()V

    iput-object p4, p0, Lcom/mgmi/ssp/NativeAd;->mAdsRequestInterface:Lcom/mgmi/ads/api/a/d;

    invoke-interface {p4, p5}, Lcom/mgmi/ads/api/a/d;->c(I)V

    iget-object p4, p0, Lcom/mgmi/ssp/NativeAd;->mAdsRequestInterface:Lcom/mgmi/ads/api/a/d;

    const/4 p5, 0x1

    invoke-interface {p4, p5}, Lcom/mgmi/ads/api/a/d;->f(Z)V

    new-instance p4, Lcom/mgmi/g/a;

    invoke-direct {p4, p2, p3}, Lcom/mgmi/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p6, :cond_6

    invoke-virtual {p6}, Lcom/mgmi/ssp/TParams;->getVid()I

    move-result p2

    invoke-virtual {p4, p2}, Lcom/mgmi/g/a;->c(I)Lcom/mgmi/g/a;

    invoke-virtual {p6}, Lcom/mgmi/ssp/TParams;->getNid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Lcom/mgmi/g/a;->d(Ljava/lang/String;)V

    invoke-virtual {p6}, Lcom/mgmi/ssp/TParams;->getISVip()I

    move-result p2

    invoke-virtual {p4, p2}, Lcom/mgmi/g/a;->f(I)Lcom/mgmi/g/a;

    invoke-virtual {p6}, Lcom/mgmi/ssp/TParams;->getIspay()I

    move-result p2

    invoke-virtual {p4, p2}, Lcom/mgmi/g/a;->g(I)V

    invoke-virtual {p6}, Lcom/mgmi/ssp/TParams;->getIspreview()I

    move-result p2

    invoke-virtual {p4, p2}, Lcom/mgmi/g/a;->o(I)V

    invoke-virtual {p6}, Lcom/mgmi/ssp/TParams;->getHid()I

    move-result p2

    invoke-virtual {p4, p2}, Lcom/mgmi/g/a;->d(I)Lcom/mgmi/g/a;

    invoke-virtual {p6}, Lcom/mgmi/ssp/TParams;->getChid()I

    move-result p2

    invoke-virtual {p4, p2}, Lcom/mgmi/g/a;->e(I)Lcom/mgmi/g/a;

    invoke-virtual {p6}, Lcom/mgmi/ssp/TParams;->getFrom()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Lcom/mgmi/g/a;->b(Ljava/lang/String;)Lcom/mgmi/g/a;

    invoke-virtual {p6}, Lcom/mgmi/ssp/TParams;->getPosition()I

    move-result p2

    invoke-virtual {p4, p2}, Lcom/mgmi/g/a;->n(I)V

    :cond_6
    iget-object p2, p0, Lcom/mgmi/ssp/NativeAd;->mAdsRequestInterface:Lcom/mgmi/ads/api/a/d;

    invoke-interface {p2, p4}, Lcom/mgmi/ads/api/a/d;->b(Lcom/mgmi/g/a;)Lcom/mgmi/ads/api/a/d;

    iget-object p2, p0, Lcom/mgmi/ssp/NativeAd;->mAdsRequestInterface:Lcom/mgmi/ads/api/a/d;

    const-string p3, "ADS_BANNER"

    invoke-interface {p2, p3}, Lcom/mgmi/ads/api/a/d;->b(Ljava/lang/String;)Lcom/mgmi/ads/api/a/d;

    iget-object p2, p0, Lcom/mgmi/ssp/NativeAd;->mAdsRequestInterface:Lcom/mgmi/ads/api/a/d;

    new-instance p3, Lcom/mgmi/ssp/NativeAd$1;

    invoke-direct {p3, p0}, Lcom/mgmi/ssp/NativeAd$1;-><init>(Lcom/mgmi/ssp/NativeAd;)V

    invoke-interface {p2, p3}, Lcom/mgmi/ads/api/a/d;->a(Lcom/mgmi/ads/api/a;)Lcom/mgmi/ads/api/a/c;

    invoke-static {}, Lcom/mgmi/platform/b/b;->a()Lcom/mgmi/platform/b/b;

    move-result-object p2

    iget-object p3, p0, Lcom/mgmi/ssp/NativeAd;->mAdsRequestInterface:Lcom/mgmi/ads/api/a/d;

    invoke-virtual {p2, p1, p3}, Lcom/mgmi/platform/b/b;->a(Landroid/content/Context;Lcom/mgmi/ads/api/a/d;)Lcom/mgmi/ads/api/a/b;

    move-result-object p1

    iput-object p1, p0, Lcom/mgmi/ssp/NativeAd;->mAdsLoaderInterface:Lcom/mgmi/ads/api/a/b;

    iput-boolean p5, p0, Lcom/mgmi/ssp/NativeAd;->hasInit:Z

    return-void
.end method


# virtual methods
.method public bidFail(Lcom/mgmi/ssp/BidInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/mgmi/ssp/NativeAd;->mAdsLoaderInterface:Lcom/mgmi/ads/api/a/b;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/mgmi/ssp/NativeAd;->copyInfo(Lcom/mgmi/ssp/BidInfo;)Lcom/mgmi/e/a;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/mgmi/ads/api/a/b;->a(ZLcom/mgmi/e/a;)V

    :cond_0
    return-void
.end method

.method public bidSuccess(Lcom/mgmi/ssp/BidInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/mgmi/ssp/NativeAd;->mAdsLoaderInterface:Lcom/mgmi/ads/api/a/b;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Lcom/mgmi/ssp/NativeAd;->copyInfo(Lcom/mgmi/ssp/BidInfo;)Lcom/mgmi/e/a;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/mgmi/ads/api/a/b;->a(ZLcom/mgmi/e/a;)V

    :cond_0
    iget-object p1, p0, Lcom/mgmi/ssp/NativeAd;->mNativeAdListener:Lcom/mgmi/ssp/NativeAdListener;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/mgmi/ssp/NativeAd;->mNativeADDataRefs:Ljava/util/List;

    invoke-interface {p1, p0}, Lcom/mgmi/ssp/NativeAdListener;->onADLoaded(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public copyInfo(Lcom/mgmi/ssp/BidInfo;)Lcom/mgmi/e/a;
    .locals 3

    if-nez p1, :cond_0

    new-instance p0, Lcom/mgmi/e/a;

    invoke-direct {p0}, Lcom/mgmi/e/a;-><init>()V

    return-object p0

    :cond_0
    new-instance p0, Lcom/mgmi/e/a;

    invoke-direct {p0}, Lcom/mgmi/e/a;-><init>()V

    invoke-virtual {p1}, Lcom/mgmi/ssp/BidInfo;->getResult()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mgmi/e/a;->setResult(I)Lcom/mgmi/e/a;

    move-result-object p0

    invoke-virtual {p1}, Lcom/mgmi/ssp/BidInfo;->getBidType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mgmi/e/a;->setBidType(Ljava/lang/String;)Lcom/mgmi/e/a;

    move-result-object p0

    invoke-virtual {p1}, Lcom/mgmi/ssp/BidInfo;->getBidWinner()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mgmi/e/a;->setBidWinner(Ljava/lang/String;)Lcom/mgmi/e/a;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mgmi/ssp/BidInfo;->getWinECPM()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mgmi/e/a;->setWinECPM(Ljava/lang/String;)Lcom/mgmi/e/a;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mgmi/ssp/BidInfo;->getSecondECPM()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mgmi/e/a;->setSecondECPM(Ljava/lang/String;)Lcom/mgmi/e/a;

    move-result-object p0

    return-object p0
.end method

.method public loadAd(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mgmi/ssp/NativeAd;->hasInit:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/mgmi/ssp/NativeAd;->mAdsRequestInterface:Lcom/mgmi/ads/api/a/d;

    invoke-interface {v0}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/mgmi/ssp/NativeAd;->mAdsRequestInterface:Lcom/mgmi/ads/api/a/d;

    invoke-interface {v0}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mgmi/g/a;->b(I)V

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/mgmi/ssp/NativeAd;->mAdsLoaderInterface:Lcom/mgmi/ads/api/a/b;

    iget-object p0, p0, Lcom/mgmi/ssp/NativeAd;->mAdsRequestInterface:Lcom/mgmi/ads/api/a/d;

    invoke-interface {p1, p0}, Lcom/mgmi/ads/api/a/b;->b(Lcom/mgmi/ads/api/a/d;)V

    return-void
.end method

.method public loadAd(II)V
    .locals 1

    .line 5
    iget-boolean v0, p0, Lcom/mgmi/ssp/NativeAd;->hasInit:Z

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mgmi/ssp/NativeAd;->mAdsRequestInterface:Lcom/mgmi/ads/api/a/d;

    invoke-interface {v0}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/mgmi/ssp/NativeAd;->mAdsRequestInterface:Lcom/mgmi/ads/api/a/d;

    invoke-interface {v0}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mgmi/g/a;->j(I)Lcom/mgmi/g/a;

    .line 8
    iget-object p2, p0, Lcom/mgmi/ssp/NativeAd;->mAdsRequestInterface:Lcom/mgmi/ads/api/a/d;

    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mgmi/g/a;->b(I)V

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/mgmi/ssp/NativeAd;->mAdsLoaderInterface:Lcom/mgmi/ads/api/a/b;

    iget-object p0, p0, Lcom/mgmi/ssp/NativeAd;->mAdsRequestInterface:Lcom/mgmi/ads/api/a/d;

    invoke-interface {p1, p0}, Lcom/mgmi/ads/api/a/b;->b(Lcom/mgmi/ads/api/a/d;)V

    return-void
.end method
