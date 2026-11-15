.class public final Lcom/yandex/mobile/ads/banner/BannerAdView;
.super Lcom/yandex/mobile/ads/impl/np0;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/MainThread;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0007\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B#\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0004\u0010\u000bJ\u0015\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u000e2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0015\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0019\u0010\u001b\u001a\u00020\u000e2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001eR\u0017\u0010$\u001a\u00020\u001f8\u0006\u00a2\u0006\u000c\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#R\u0013\u0010\u0016\u001a\u0004\u0018\u00010\u00158F\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010&R\u0013\u0010)\u001a\u0004\u0018\u00010\u00198F\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010(\u00a8\u0006*"
    }
    d2 = {
        "Lcom/yandex/mobile/ads/banner/BannerAdView;",
        "Lcom/yandex/mobile/ads/impl/np0;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "defStyleAttr",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "Lcom/yandex/mobile/ads/common/AdRequest;",
        "adRequest",
        "Lzfb;",
        "loadAd",
        "(Lcom/yandex/mobile/ads/common/AdRequest;)V",
        "Lcom/yandex/mobile/ads/banner/BannerAdEventListener;",
        "bannerAdEventListener",
        "setBannerAdEventListener",
        "(Lcom/yandex/mobile/ads/banner/BannerAdEventListener;)V",
        "Lcom/yandex/mobile/ads/banner/BannerAdSize;",
        "adSize",
        "setAdSize",
        "(Lcom/yandex/mobile/ads/banner/BannerAdSize;)V",
        "",
        "adUnitId",
        "setAdUnitId",
        "(Ljava/lang/String;)V",
        "destroy",
        "()V",
        "Lcom/yandex/mobile/ads/common/VideoController;",
        "l",
        "Lcom/yandex/mobile/ads/common/VideoController;",
        "getVideoController",
        "()Lcom/yandex/mobile/ads/common/VideoController;",
        "videoController",
        "getAdSize",
        "()Lcom/yandex/mobile/ads/banner/BannerAdSize;",
        "getInfo",
        "()Ljava/lang/String;",
        "info",
        "mobileads_externalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field private final j:Lcom/yandex/mobile/ads/impl/ml2;

.field private k:Ljava/lang/String;

.field private final l:Lcom/yandex/mobile/ads/common/VideoController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/banner/BannerAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/yandex/mobile/ads/banner/BannerAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 13

    move-object v12, p0

    move-object v1, p1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v4, Lcom/yandex/mobile/ads/impl/o3;

    sget-object v0, Lcom/yandex/mobile/ads/impl/ts;->d:Lcom/yandex/mobile/ads/impl/ts;

    new-instance v2, Lcom/yandex/mobile/ads/impl/en2;

    invoke-direct {v2, p1}, Lcom/yandex/mobile/ads/impl/en2;-><init>(Landroid/content/Context;)V

    invoke-direct {v4, v0, v2}, Lcom/yandex/mobile/ads/impl/o3;-><init>(Lcom/yandex/mobile/ads/impl/ts;Lcom/yandex/mobile/ads/impl/bv1;)V

    const/16 v10, 0x1f0

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p2

    move/from16 v3, p3

    invoke-direct/range {v0 .. v11}, Lcom/yandex/mobile/ads/impl/np0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/ht0;Lcom/yandex/mobile/ads/impl/lt0;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/zi;Lcom/yandex/mobile/ads/impl/pw1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4
    new-instance v0, Lcom/yandex/mobile/ads/impl/ml2;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/ml2;-><init>()V

    iput-object v0, v12, Lcom/yandex/mobile/ads/banner/BannerAdView;->j:Lcom/yandex/mobile/ads/impl/ml2;

    .line 5
    new-instance v0, Lcom/yandex/mobile/ads/common/VideoController;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/np0;->d()Lcom/yandex/mobile/ads/impl/qe2;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/common/VideoController;-><init>(Lcom/yandex/mobile/ads/impl/qe2;)V

    iput-object v0, v12, Lcom/yandex/mobile/ads/banner/BannerAdView;->l:Lcom/yandex/mobile/ads/common/VideoController;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/zi;Lcom/yandex/mobile/ads/impl/g5;)Lcom/yandex/mobile/ads/impl/aj;
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bannerAdListener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phasesManager"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/aj;

    new-instance v6, Lcom/yandex/mobile/ads/impl/qe2;

    invoke-direct {v6}, Lcom/yandex/mobile/ads/impl/qe2;-><init>()V

    new-instance v7, Lcom/yandex/mobile/ads/impl/cj;

    invoke-direct {v7}, Lcom/yandex/mobile/ads/impl/cj;-><init>()V

    new-instance v8, Lcom/yandex/mobile/ads/impl/bj;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/np0;->getAdConfiguration$mobileads_externalRelease()Lcom/yandex/mobile/ads/impl/o3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o3;->q()Lcom/yandex/mobile/ads/impl/bv1;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/yandex/mobile/ads/impl/bj;-><init>(Lcom/yandex/mobile/ads/impl/bv1;)V

    new-instance v9, Lcom/yandex/mobile/ads/impl/sg0;

    invoke-direct {v9}, Lcom/yandex/mobile/ads/impl/sg0;-><init>()V

    move-object v1, v0

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v9}, Lcom/yandex/mobile/ads/impl/aj;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/np0;Lcom/yandex/mobile/ads/impl/zi;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/qe2;Lcom/yandex/mobile/ads/impl/cj;Lcom/yandex/mobile/ads/impl/bj;Lcom/yandex/mobile/ads/impl/sg0;)V

    return-object v0
.end method

.method public destroy()V
    .locals 0

    invoke-super {p0}, Lcom/yandex/mobile/ads/impl/np0;->destroy()V

    return-void
.end method

.method public final getAdSize()Lcom/yandex/mobile/ads/banner/BannerAdSize;
    .locals 1

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/np0;->b()Lcom/yandex/mobile/ads/impl/zs;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "coreBannerAdSize"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/banner/BannerAdSize;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/fk;->a()Lcom/yandex/mobile/ads/impl/gz1;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/banner/BannerAdSize;-><init>(Lcom/yandex/mobile/ads/impl/gz1;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getInfo()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/np0;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getVideoController()Lcom/yandex/mobile/ads/common/VideoController;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/banner/BannerAdView;->l:Lcom/yandex/mobile/ads/common/VideoController;

    return-object p0
.end method

.method public final loadAd(Lcom/yandex/mobile/ads/common/AdRequest;)V
    .locals 2

    const-string v0, "adRequest"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/banner/BannerAdView;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/yandex/mobile/ads/banner/BannerAdView;->j:Lcom/yandex/mobile/ads/impl/ml2;

    invoke-virtual {v1, v0, p1}, Lcom/yandex/mobile/ads/impl/ml2;->a(Ljava/lang/String;Lcom/yandex/mobile/ads/common/AdRequest;)Lcom/yandex/mobile/ads/impl/v7;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/np0;->a(Lcom/yandex/mobile/ads/impl/v7;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "Failed to load ad with empty ad unit id"

    invoke-static {p1, p0}, Lcom/yandex/mobile/ads/impl/hp0;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final setAdSize(Lcom/yandex/mobile/ads/banner/BannerAdSize;)V
    .locals 1

    const-string v0, "adSize"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/yandex/mobile/ads/banner/a;->a(Lcom/yandex/mobile/ads/banner/BannerAdSize;)Lcom/yandex/mobile/ads/impl/zs;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/np0;->a(Lcom/yandex/mobile/ads/impl/zs;)V

    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/banner/BannerAdView;->k:Ljava/lang/String;

    invoke-super {p0, p1}, Lcom/yandex/mobile/ads/impl/np0;->setAdUnitId(Ljava/lang/String;)V

    return-void
.end method

.method public final setBannerAdEventListener(Lcom/yandex/mobile/ads/banner/BannerAdEventListener;)V
    .locals 1

    instance-of v0, p1, Lcom/yandex/mobile/ads/banner/ClosableBannerAdEventListener;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/yandex/mobile/ads/impl/wl2;

    check-cast p1, Lcom/yandex/mobile/ads/banner/ClosableBannerAdEventListener;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/wl2;-><init>(Lcom/yandex/mobile/ads/banner/ClosableBannerAdEventListener;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Lcom/yandex/mobile/ads/impl/sl2;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/sl2;-><init>(Lcom/yandex/mobile/ads/banner/BannerAdEventListener;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/np0;->a(Lcom/yandex/mobile/ads/impl/ys;)V

    return-void
.end method
