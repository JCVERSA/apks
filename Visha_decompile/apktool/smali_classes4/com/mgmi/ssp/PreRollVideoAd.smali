.class public Lcom/mgmi/ssp/PreRollVideoAd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgmi/ssp/PreRollVideoAd$a;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "PreRollVideoAd"

.field public static final TO_FULL_SCREEN:I = 0x1

.field public static final TO_HALF_SCREEN:I = 0x0

.field public static isSuportFull:Z = false

.field public static isSupportClose:Z = false


# instance fields
.field private adPlayer:Lcom/mgmi/ssp/PreRollVideoAd$a;

.field private hasInit:Z

.field private isLocalPlay:Z

.field private mAdsLoaderInterface:Lcom/mgmi/ads/api/a/b;

.field private mAdsRequestInterface:Lcom/mgmi/ads/api/a/d;

.field private mMediaListener:Lcom/mgmi/ssp/MediaListener;

.field private mMgtvVideoView:Lcom/hunantv/media/widget/MgtvVideoView;

.field private mViewParent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Lcom/mgmi/ssp/MediaListener;IZLcom/mgmi/ssp/TParams;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/mgmi/ssp/MediaListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/mgmi/ssp/PreRollVideoAd;->TAG:Ljava/lang/String;

    const-string v1, "PreRollVideoAd"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mgmi/ssp/PreRollVideoAd;->mViewParent:Ljava/lang/ref/WeakReference;

    invoke-static {}, Lcom/mgmi/platform/b;->a()Lcom/mgmi/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/platform/b;->b()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/mgmi/ssp/PreRollVideoAd;->TAG:Ljava/lang/String;

    const-string p1, "ssp error"

    invoke-static {p0, p1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_0

    new-instance p0, Lcom/mgmi/ssp/AdError;

    const/16 p1, 0x1390

    const-string p2, "\u5a92\u4f53\u9ed1\u540d\u5355"

    invoke-direct {p0, p1, p2}, Lcom/mgmi/ssp/AdError;-><init>(ILjava/lang/String;)V

    invoke-interface {p5, p0}, Lcom/mgmi/ssp/BasicADListener;->onNoAd(Lcom/mgmi/ssp/AdError;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/mgmi/platform/b;->a()Lcom/mgmi/platform/b;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/mgmi/platform/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object p0, Lcom/mgmi/ssp/PreRollVideoAd;->TAG:Ljava/lang/String;

    const-string p1, "ssp pid error"

    invoke-static {p0, p1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_2

    new-instance p0, Lcom/mgmi/ssp/AdError;

    const/16 p1, 0x138f

    const-string p2, "\u5e7f\u544a\u4f4d\u9ed1\u540d\u5355"

    invoke-direct {p0, p1, p2}, Lcom/mgmi/ssp/AdError;-><init>(ILjava/lang/String;)V

    invoke-interface {p5, p0}, Lcom/mgmi/ssp/BasicADListener;->onNoAd(Lcom/mgmi/ssp/AdError;)V

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

    sget-object p0, Lcom/mgmi/ssp/PreRollVideoAd;->TAG:Ljava/lang/String;

    const-string p1, "package error"

    invoke-static {p0, p1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_4

    new-instance p0, Lcom/mgmi/ssp/AdError;

    const/16 p1, 0x138e

    const-string p2, "\u5305\u540d\u6821\u9a8c\u9519\u8bef\uff0c\u5f53\u524dAPP\u5305\u540d\u4e0e\u5b98\u7f51\u6ce8\u518c\u5a92\u4f53\u662f\u586b\u5199\u7684\u5305\u540d\u4e0d\u4e00\u81f4\uff0c\u65e0\u6cd5\u4f7f\u7528SDK"

    invoke-direct {p0, p1, p2}, Lcom/mgmi/ssp/AdError;-><init>(ILjava/lang/String;)V

    invoke-interface {p5, p0}, Lcom/mgmi/ssp/BasicADListener;->onNoAd(Lcom/mgmi/ssp/AdError;)V

    :cond_4
    return-void

    :cond_5
    invoke-static {p7}, Lcom/mgmi/platform/e;->a(Z)V

    new-instance p7, Lcom/mgmi/ads/api/a/n;

    new-instance v0, Lcom/mgmi/ads/api/i;

    invoke-interface {p5}, Lcom/mgmi/ssp/MediaListener;->getPositiveView()Lcom/hunantv/media/widget/IVideoView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mgmi/ads/api/i;-><init>(Lcom/hunantv/media/widget/IVideoView;)V

    invoke-direct {p7, v0, p2}, Lcom/mgmi/ads/api/a/n;-><init>(Lcom/mgmi/ads/api/i;Landroid/view/ViewGroup;)V

    iput-object p7, p0, Lcom/mgmi/ssp/PreRollVideoAd;->mAdsRequestInterface:Lcom/mgmi/ads/api/a/d;

    iput-object p5, p0, Lcom/mgmi/ssp/PreRollVideoAd;->mMediaListener:Lcom/mgmi/ssp/MediaListener;

    invoke-interface {p7, p6}, Lcom/mgmi/ads/api/a/d;->c(I)V

    new-instance p5, Lcom/mgmi/g/a;

    invoke-direct {p5, p3, p4}, Lcom/mgmi/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x1

    if-eqz p8, :cond_9

    invoke-virtual {p8}, Lcom/mgmi/ssp/TParams;->getISVip()I

    move-result p4

    if-ne p4, p3, :cond_6

    move p4, p3

    goto :goto_0

    :cond_6
    const/4 p4, 0x0

    :goto_0
    invoke-static {p4}, Lcom/mgmi/f/e;->d(Z)V

    invoke-virtual {p8}, Lcom/mgmi/ssp/TParams;->getVid()I

    move-result p4

    invoke-virtual {p5, p4}, Lcom/mgmi/g/a;->c(I)Lcom/mgmi/g/a;

    invoke-virtual {p8}, Lcom/mgmi/ssp/TParams;->getNid()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p5, p4}, Lcom/mgmi/g/a;->d(Ljava/lang/String;)V

    invoke-virtual {p8}, Lcom/mgmi/ssp/TParams;->getISVip()I

    move-result p4

    invoke-virtual {p5, p4}, Lcom/mgmi/g/a;->f(I)Lcom/mgmi/g/a;

    invoke-virtual {p8}, Lcom/mgmi/ssp/TParams;->getIspay()I

    move-result p4

    invoke-virtual {p5, p4}, Lcom/mgmi/g/a;->g(I)V

    invoke-virtual {p8}, Lcom/mgmi/ssp/TParams;->getIspreview()I

    move-result p4

    invoke-virtual {p5, p4}, Lcom/mgmi/g/a;->o(I)V

    invoke-virtual {p8}, Lcom/mgmi/ssp/TParams;->getHid()I

    move-result p4

    invoke-virtual {p5, p4}, Lcom/mgmi/g/a;->d(I)Lcom/mgmi/g/a;

    invoke-virtual {p8}, Lcom/mgmi/ssp/TParams;->getChid()I

    move-result p4

    invoke-virtual {p5, p4}, Lcom/mgmi/g/a;->e(I)Lcom/mgmi/g/a;

    invoke-virtual {p8}, Lcom/mgmi/ssp/TParams;->getFrom()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p5, p4}, Lcom/mgmi/g/a;->b(Ljava/lang/String;)Lcom/mgmi/g/a;

    invoke-virtual {p8}, Lcom/mgmi/ssp/TParams;->getAdParams()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_7

    invoke-virtual {p8}, Lcom/mgmi/ssp/TParams;->getAdParams()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p5, p4}, Lcom/mgmi/g/a;->e(Ljava/lang/String;)V

    :cond_7
    invoke-static {}, Lcom/doman/core/CoreMain;->getInstance()Lcom/doman/core/CoreMain;

    move-result-object p4

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p8}, Lcom/mgmi/ssp/TParams;->getVid()I

    move-result p7

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p7, ""

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p4, p6}, Lcom/doman/core/CoreMain;->setVid(Ljava/lang/String;)V

    invoke-virtual {p8}, Lcom/mgmi/ssp/TParams;->getChannellive()I

    move-result p4

    if-ne p4, p3, :cond_8

    invoke-virtual {p8}, Lcom/mgmi/ssp/TParams;->getChannellive()I

    move-result p4

    invoke-virtual {p5, p4}, Lcom/mgmi/g/a;->h(I)Lcom/mgmi/g/a;

    invoke-virtual {p8}, Lcom/mgmi/ssp/TParams;->getActivityId()I

    move-result p4

    invoke-virtual {p5, p4}, Lcom/mgmi/g/a;->m(I)V

    invoke-virtual {p8}, Lcom/mgmi/ssp/TParams;->getCamera_id()I

    move-result p4

    invoke-virtual {p5, p4}, Lcom/mgmi/g/a;->l(I)V

    invoke-static {}, Lcom/doman/core/CoreMain;->getInstance()Lcom/doman/core/CoreMain;

    move-result-object p4

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p8}, Lcom/mgmi/ssp/TParams;->getActivityId()I

    move-result v0

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p4, p6}, Lcom/doman/core/CoreMain;->setLiveid(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p8}, Lcom/mgmi/ssp/TParams;->getPosition()I

    move-result p4

    invoke-virtual {p5, p4}, Lcom/mgmi/g/a;->n(I)V

    :cond_9
    invoke-virtual {p8}, Lcom/mgmi/ssp/TParams;->getFrom()Ljava/lang/String;

    move-result-object p4

    const-string p6, "vod"

    invoke-virtual {p6, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    xor-int/2addr p4, p3

    sput-boolean p4, Lcom/mgmi/ssp/PreRollVideoAd;->isSupportClose:Z

    iget-object p6, p0, Lcom/mgmi/ssp/PreRollVideoAd;->mAdsRequestInterface:Lcom/mgmi/ads/api/a/d;

    invoke-interface {p6, p4}, Lcom/mgmi/ads/api/a/d;->b(Z)Lcom/mgmi/ads/api/a/d;

    const-string p4, "detail"

    invoke-virtual {p8}, Lcom/mgmi/ssp/TParams;->getFrom()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p4, p6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    sput-boolean p4, Lcom/mgmi/ssp/PreRollVideoAd;->isSuportFull:Z

    iget-object p6, p0, Lcom/mgmi/ssp/PreRollVideoAd;->mAdsRequestInterface:Lcom/mgmi/ads/api/a/d;

    invoke-interface {p6, p4}, Lcom/mgmi/ads/api/a/d;->c(Z)Lcom/mgmi/ads/api/a/d;

    iget-object p4, p0, Lcom/mgmi/ssp/PreRollVideoAd;->mAdsRequestInterface:Lcom/mgmi/ads/api/a/d;

    invoke-interface {p4, p5}, Lcom/mgmi/ads/api/a/d;->b(Lcom/mgmi/g/a;)Lcom/mgmi/ads/api/a/d;

    iget-object p4, p0, Lcom/mgmi/ssp/PreRollVideoAd;->mAdsRequestInterface:Lcom/mgmi/ads/api/a/d;

    const-string p5, "ADS_OFFVIDEO_ONLINE"

    invoke-interface {p4, p5}, Lcom/mgmi/ads/api/a/d;->b(Ljava/lang/String;)Lcom/mgmi/ads/api/a/d;

    iget-object p4, p0, Lcom/mgmi/ssp/PreRollVideoAd;->mAdsRequestInterface:Lcom/mgmi/ads/api/a/d;

    new-instance p5, Lcom/mgmi/ssp/PreRollVideoAd$1;

    invoke-direct {p5, p0}, Lcom/mgmi/ssp/PreRollVideoAd$1;-><init>(Lcom/mgmi/ssp/PreRollVideoAd;)V

    invoke-interface {p4, p5}, Lcom/mgmi/ads/api/a/d;->a(Lcom/mgmi/ads/api/a;)Lcom/mgmi/ads/api/a/c;

    iget-object p4, p0, Lcom/mgmi/ssp/PreRollVideoAd;->mAdsRequestInterface:Lcom/mgmi/ads/api/a/d;

    invoke-interface {p4, p2}, Lcom/mgmi/ads/api/a/d;->a(Landroid/view/ViewGroup;)V

    new-instance p2, Lcom/mgmi/ssp/PreRollVideoAd$a;

    iget-object p4, p0, Lcom/mgmi/ssp/PreRollVideoAd;->mMgtvVideoView:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-direct {p2, p4}, Lcom/mgmi/ssp/PreRollVideoAd$a;-><init>(Lcom/hunantv/media/widget/MgtvVideoView;)V

    iput-object p2, p0, Lcom/mgmi/ssp/PreRollVideoAd;->adPlayer:Lcom/mgmi/ssp/PreRollVideoAd$a;

    iget-object p2, p0, Lcom/mgmi/ssp/PreRollVideoAd;->mAdsRequestInterface:Lcom/mgmi/ads/api/a/d;

    const/4 p4, 0x0

    invoke-interface {p2, p4}, Lcom/mgmi/ads/api/a/d;->a(Lcom/mgmi/platform/d;)V

    iget-object p2, p0, Lcom/mgmi/ssp/PreRollVideoAd;->mAdsRequestInterface:Lcom/mgmi/ads/api/a/d;

    invoke-interface {p2, p4}, Lcom/mgmi/ads/api/a/d;->b(Lcom/mgmi/platform/d;)V

    invoke-static {}, Lcom/mgmi/platform/b/b;->a()Lcom/mgmi/platform/b/b;

    move-result-object p2

    iget-object p4, p0, Lcom/mgmi/ssp/PreRollVideoAd;->mAdsRequestInterface:Lcom/mgmi/ads/api/a/d;

    invoke-virtual {p2, p1, p4}, Lcom/mgmi/platform/b/b;->a(Landroid/content/Context;Lcom/mgmi/ads/api/a/d;)Lcom/mgmi/ads/api/a/b;

    move-result-object p1

    iput-object p1, p0, Lcom/mgmi/ssp/PreRollVideoAd;->mAdsLoaderInterface:Lcom/mgmi/ads/api/a/b;

    iput-boolean p3, p0, Lcom/mgmi/ssp/PreRollVideoAd;->hasInit:Z

    sget-object p0, Lcom/mgmi/ssp/PreRollVideoAd;->TAG:Ljava/lang/String;

    const-string p1, "PreRollVideoAd onAdClick"

    invoke-static {p0, p1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/mgmi/ssp/PreRollVideoAd;)Lcom/mgmi/ssp/MediaListener;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ssp/PreRollVideoAd;->mMediaListener:Lcom/mgmi/ssp/MediaListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/mgmi/ssp/PreRollVideoAd;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ssp/PreRollVideoAd;->mViewParent:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mgmi/ssp/PreRollVideoAd;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$300(Lcom/mgmi/ssp/PreRollVideoAd;)Lcom/mgmi/ads/api/a/b;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ssp/PreRollVideoAd;->mAdsLoaderInterface:Lcom/mgmi/ads/api/a/b;

    return-object p0
.end method


# virtual methods
.method public doAdMute()V
    .locals 2

    iget-object v0, p0, Lcom/mgmi/ssp/PreRollVideoAd;->mAdsLoaderInterface:Lcom/mgmi/ads/api/a/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mgmi/ssp/PreRollVideoAd;->TAG:Ljava/lang/String;

    const-string v1, "MgtvVideoView doAdMute"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mgmi/ssp/PreRollVideoAd;->mAdsLoaderInterface:Lcom/mgmi/ads/api/a/b;

    invoke-interface {p0}, Lcom/mgmi/ads/api/a/b;->b_()V

    :cond_0
    return-void
.end method

.method public doAdunMute()V
    .locals 2

    iget-object v0, p0, Lcom/mgmi/ssp/PreRollVideoAd;->mAdsLoaderInterface:Lcom/mgmi/ads/api/a/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mgmi/ssp/PreRollVideoAd;->TAG:Ljava/lang/String;

    const-string v1, "MgtvVideoView doAdunMute"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mgmi/ssp/PreRollVideoAd;->mAdsLoaderInterface:Lcom/mgmi/ads/api/a/b;

    invoke-interface {p0}, Lcom/mgmi/ads/api/a/b;->c_()V

    :cond_0
    return-void
.end method

.method public doPause()V
    .locals 2

    iget-object v0, p0, Lcom/mgmi/ssp/PreRollVideoAd;->mAdsLoaderInterface:Lcom/mgmi/ads/api/a/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mgmi/ssp/PreRollVideoAd;->TAG:Ljava/lang/String;

    const-string v1, "MgtvVideoView doPause"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mgmi/ssp/PreRollVideoAd;->mAdsLoaderInterface:Lcom/mgmi/ads/api/a/b;

    invoke-interface {v0}, Lcom/mgmi/ads/api/a/b;->c()V

    iget-object p0, p0, Lcom/mgmi/ssp/PreRollVideoAd;->adPlayer:Lcom/mgmi/ssp/PreRollVideoAd$a;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mgmi/ssp/PreRollVideoAd$a;->a(Z)V

    :cond_0
    return-void
.end method

.method public doResume()V
    .locals 2

    iget-object v0, p0, Lcom/mgmi/ssp/PreRollVideoAd;->mAdsLoaderInterface:Lcom/mgmi/ads/api/a/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mgmi/ssp/PreRollVideoAd;->TAG:Ljava/lang/String;

    const-string v1, "MgtvVideoView doResume"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mgmi/ssp/PreRollVideoAd;->mAdsLoaderInterface:Lcom/mgmi/ads/api/a/b;

    invoke-interface {v0}, Lcom/mgmi/ads/api/a/b;->b()V

    iget-object p0, p0, Lcom/mgmi/ssp/PreRollVideoAd;->adPlayer:Lcom/mgmi/ssp/PreRollVideoAd$a;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mgmi/ssp/PreRollVideoAd$a;->a(Z)V

    :cond_0
    return-void
.end method

.method public finish()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/mgmi/ssp/PreRollVideoAd;->mAdsLoaderInterface:Lcom/mgmi/ads/api/a/b;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/mgmi/ssp/PreRollVideoAd;->TAG:Ljava/lang/String;

    const-string v1, "PreRollVideoAd finish230"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mgmi/ssp/PreRollVideoAd;->mMgtvVideoView:Lcom/hunantv/media/widget/MgtvVideoView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mgmi/ssp/PreRollVideoAd;->TAG:Ljava/lang/String;

    const-string v1, "PreRollVideoAd @@@@@@@release232"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mgmi/ssp/PreRollVideoAd;->mMgtvVideoView:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-virtual {v0}, Lcom/hunantv/media/widget/MgtvVideoView;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mgmi/ssp/PreRollVideoAd;->mMgtvVideoView:Lcom/hunantv/media/widget/MgtvVideoView;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/mgmi/ssp/PreRollVideoAd;->TAG:Ljava/lang/String;

    const-string v1, "PreRollVideoAd ##release237 mMgtvVideoView n= "

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lcom/mgmi/ssp/PreRollVideoAd;->mAdsLoaderInterface:Lcom/mgmi/ads/api/a/b;

    invoke-interface {p0}, Lcom/mgmi/ads/api/a/b;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v0, Lcom/mgmi/ssp/PreRollVideoAd;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PreRollVideoAd finish"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void
.end method

.method public loadAd(Z)V
    .locals 2

    sget-object v0, Lcom/mgmi/ssp/PreRollVideoAd;->TAG:Ljava/lang/String;

    const-string v1, "PreRollVideoAd 1loadAd"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/mgmi/ssp/PreRollVideoAd;->hasInit:Z

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/mgmi/ssp/MGTVAdFactory;->getInstance()Lcom/mgmi/ssp/MGTVAdFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/ssp/MGTVAdFactory;->isAdSdkInit()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/mgmi/ssp/PreRollVideoAd;->mAdsRequestInterface:Lcom/mgmi/ads/api/a/d;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/mgmi/ssp/PreRollVideoAd;->mAdsLoaderInterface:Lcom/mgmi/ads/api/a/b;

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-boolean v1, p0, Lcom/mgmi/ssp/PreRollVideoAd;->isLocalPlay:Z

    if-eqz v1, :cond_3

    const-string v1, "ADS_OFFVIDEO_ONLINE"

    invoke-interface {v0, v1}, Lcom/mgmi/ads/api/a/d;->b(Ljava/lang/String;)Lcom/mgmi/ads/api/a/d;

    goto :goto_0

    :cond_3
    const-string v1, "ADS_ONLINE_VIDEO"

    invoke-interface {v0, v1}, Lcom/mgmi/ads/api/a/d;->b(Ljava/lang/String;)Lcom/mgmi/ads/api/a/d;

    :goto_0
    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/mgmi/ssp/PreRollVideoAd;->mAdsRequestInterface:Lcom/mgmi/ads/api/a/d;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/mgmi/ads/api/a/d;->a(Z)Lcom/mgmi/ads/api/a/d;

    :cond_4
    iget-object p1, p0, Lcom/mgmi/ssp/PreRollVideoAd;->mAdsLoaderInterface:Lcom/mgmi/ads/api/a/b;

    iget-object p0, p0, Lcom/mgmi/ssp/PreRollVideoAd;->mAdsRequestInterface:Lcom/mgmi/ads/api/a/d;

    invoke-interface {p1, p0}, Lcom/mgmi/ads/api/a/b;->b(Lcom/mgmi/ads/api/a/d;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public noticeActivityStatus(Z)V
    .locals 2

    sget-object v0, Lcom/mgmi/ssp/PreRollVideoAd;->TAG:Ljava/lang/String;

    const-string v1, "noticeActivityStatus"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mgmi/ssp/PreRollVideoAd;->mAdsLoaderInterface:Lcom/mgmi/ads/api/a/b;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/mgmi/ads/api/h;->RESUME:Lcom/mgmi/ads/api/h;

    invoke-interface {p0, p1, v0}, Lcom/mgmi/ads/api/a/b;->a(Lcom/mgmi/ads/api/h;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/mgmi/ads/api/h;->PAUSE:Lcom/mgmi/ads/api/h;

    invoke-interface {p0, p1, v0}, Lcom/mgmi/ads/api/a/b;->a(Lcom/mgmi/ads/api/h;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public noticeFullScreen()V
    .locals 2

    sget-object v0, Lcom/mgmi/ssp/PreRollVideoAd;->TAG:Ljava/lang/String;

    const-string v1, "noticeFullScreen"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mgmi/ssp/PreRollVideoAd;->mAdsLoaderInterface:Lcom/mgmi/ads/api/a/b;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/mgmi/ads/api/h;->FULLSCREEN:Lcom/mgmi/ads/api/h;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/mgmi/ads/api/a/b;->a(Lcom/mgmi/ads/api/h;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public noticeHarlfScreen()V
    .locals 2

    sget-object v0, Lcom/mgmi/ssp/PreRollVideoAd;->TAG:Ljava/lang/String;

    const-string v1, "noticeHarlfScreen"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mgmi/ssp/PreRollVideoAd;->mAdsLoaderInterface:Lcom/mgmi/ads/api/a/b;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/mgmi/ads/api/h;->HARLFSCREEN:Lcom/mgmi/ads/api/h;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/mgmi/ads/api/a/b;->a(Lcom/mgmi/ads/api/h;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public noticePlayViewMode(I)V
    .locals 2

    iget-object p0, p0, Lcom/mgmi/ssp/PreRollVideoAd;->mAdsLoaderInterface:Lcom/mgmi/ads/api/a/b;

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/mgmi/ads/api/h;->FLOAT_MODE:Lcom/mgmi/ads/api/h;

    invoke-interface {p0, p1, v1}, Lcom/mgmi/ads/api/a/b;->a(Lcom/mgmi/ads/api/h;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/mgmi/ads/api/h;->NORMAL_MODE:Lcom/mgmi/ads/api/h;

    invoke-interface {p0, p1, v1}, Lcom/mgmi/ads/api/a/b;->a(Lcom/mgmi/ads/api/h;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onScreenOrientationChange(I)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/mgmi/ssp/PreRollVideoAd;->mAdsLoaderInterface:Lcom/mgmi/ads/api/a/b;

    if-eqz p0, :cond_1

    sget-object p1, Lcom/mgmi/ads/api/h;->HARLFSCREEN:Lcom/mgmi/ads/api/h;

    invoke-interface {p0, p1, v0}, Lcom/mgmi/ads/api/a/b;->a(Lcom/mgmi/ads/api/h;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/mgmi/ssp/PreRollVideoAd;->mAdsLoaderInterface:Lcom/mgmi/ads/api/a/b;

    if-eqz p0, :cond_1

    sget-object p1, Lcom/mgmi/ads/api/h;->FULLSCREEN:Lcom/mgmi/ads/api/h;

    invoke-interface {p0, p1, v0}, Lcom/mgmi/ads/api/a/b;->a(Lcom/mgmi/ads/api/h;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onScreenRotate()V
    .locals 2

    iget-object v0, p0, Lcom/mgmi/ssp/PreRollVideoAd;->mAdsLoaderInterface:Lcom/mgmi/ads/api/a/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mgmi/ssp/PreRollVideoAd;->TAG:Ljava/lang/String;

    const-string v1, "MgtvVideoView fullScreen"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mgmi/ssp/PreRollVideoAd;->mAdsLoaderInterface:Lcom/mgmi/ads/api/a/b;

    invoke-interface {p0}, Lcom/mgmi/ads/api/a/b;->f()V

    :cond_0
    return-void
.end method

.method public pauseByUser()V
    .locals 2

    sget-object v0, Lcom/mgmi/ssp/PreRollVideoAd;->TAG:Ljava/lang/String;

    const-string v1, "pauseByUser"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mgmi/ssp/PreRollVideoAd;->mAdsLoaderInterface:Lcom/mgmi/ads/api/a/b;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/mgmi/ads/api/h;->PAUSEPLAYER:Lcom/mgmi/ads/api/h;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/mgmi/ads/api/a/b;->a(Lcom/mgmi/ads/api/h;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public resumeByUser()V
    .locals 2

    sget-object v0, Lcom/mgmi/ssp/PreRollVideoAd;->TAG:Ljava/lang/String;

    const-string v1, "resumeByUser"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mgmi/ssp/PreRollVideoAd;->mAdsLoaderInterface:Lcom/mgmi/ads/api/a/b;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/mgmi/ads/api/h;->RESUMEPLAYER:Lcom/mgmi/ads/api/h;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/mgmi/ads/api/a/b;->a(Lcom/mgmi/ads/api/h;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setAdBackground(I)V
    .locals 0

    return-void
.end method

.method public setIsDeatilBtnShow(Z)V
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ssp/PreRollVideoAd;->mAdsRequestInterface:Lcom/mgmi/ads/api/a/d;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgmi/ads/api/a/d;->d(Z)Lcom/mgmi/ads/api/a/d;

    :cond_0
    return-void
.end method

.method public setLocalPlay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgmi/ssp/PreRollVideoAd;->isLocalPlay:Z

    return-void
.end method

.method public videoContentComplete()V
    .locals 2

    sget-object v0, Lcom/mgmi/ssp/PreRollVideoAd;->TAG:Ljava/lang/String;

    const-string v1, "videoContentComplete"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mgmi/ssp/PreRollVideoAd;->mAdsLoaderInterface:Lcom/mgmi/ads/api/a/b;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/mgmi/ads/api/h;->CONTENT_ONEND:Lcom/mgmi/ads/api/h;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/mgmi/ads/api/a/b;->a(Lcom/mgmi/ads/api/h;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
