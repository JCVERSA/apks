.class public Lcom/yandex/mobile/ads/nativeads/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/nativeads/NativeAd;
.implements Lcom/yandex/mobile/ads/nativeads/CustomClickable;
.implements Lcom/yandex/mobile/ads/nativeads/video/a;
.implements Lcom/yandex/mobile/ads/impl/s61;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/q61;

.field private final b:Lcom/yandex/mobile/ads/nativeads/g;

.field private final c:Lcom/yandex/mobile/ads/impl/wm2;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/q61;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/h;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/nativeads/h;-><init>()V

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/nativeads/g;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/nativeads/g;-><init>()V

    .line 3
    new-instance v2, Lcom/yandex/mobile/ads/impl/wm2;

    invoke-direct {v2}, Lcom/yandex/mobile/ads/impl/wm2;-><init>()V

    .line 4
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/yandex/mobile/ads/nativeads/e;-><init>(Lcom/yandex/mobile/ads/impl/q61;Lcom/yandex/mobile/ads/nativeads/h;Lcom/yandex/mobile/ads/nativeads/g;Lcom/yandex/mobile/ads/impl/wm2;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/q61;Lcom/yandex/mobile/ads/nativeads/h;Lcom/yandex/mobile/ads/nativeads/g;Lcom/yandex/mobile/ads/impl/wm2;)V
    .locals 1

    .line 5
    const-string v0, "nativeAdPrivate"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativePromoAdViewAdapter"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "nativeAdViewBinderAdapter"

    invoke-static {p3, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "nativeAdTypeConverter"

    invoke-static {p4, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/e;->a:Lcom/yandex/mobile/ads/impl/q61;

    .line 8
    iput-object p3, p0, Lcom/yandex/mobile/ads/nativeads/e;->b:Lcom/yandex/mobile/ads/nativeads/g;

    .line 9
    iput-object p4, p0, Lcom/yandex/mobile/ads/nativeads/e;->c:Lcom/yandex/mobile/ads/impl/wm2;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/q61;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/nativeads/e;->a:Lcom/yandex/mobile/ads/impl/q61;

    return-object p0
.end method

.method public final addImageLoadingListener(Lcom/yandex/mobile/ads/nativeads/NativeAdImageLoadingListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/tm2;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/tm2;-><init>(Lcom/yandex/mobile/ads/nativeads/NativeAdImageLoadingListener;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/nativeads/e;->a:Lcom/yandex/mobile/ads/impl/q61;

    invoke-interface {p0, v0}, Lcom/yandex/mobile/ads/impl/q61;->b(Lcom/yandex/mobile/ads/impl/ut;)V

    return-void
.end method

.method public final bindNativeAd(Lcom/yandex/mobile/ads/nativeads/NativeAdViewBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/nativeads/NativeAdException;
        }
    .end annotation

    const-string v0, "viewBinder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/e;->b:Lcom/yandex/mobile/ads/nativeads/g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/nativeads/g;->a(Lcom/yandex/mobile/ads/nativeads/NativeAdViewBinder;)Lcom/yandex/mobile/ads/impl/k71;

    move-result-object p1

    iget-object p0, p0, Lcom/yandex/mobile/ads/nativeads/e;->a:Lcom/yandex/mobile/ads/impl/q61;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/q61;->b(Lcom/yandex/mobile/ads/impl/k71;)V
    :try_end_0
    .catch Lcom/yandex/mobile/ads/impl/e61; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance p1, Lcom/yandex/mobile/ads/nativeads/NativeAdException;

    const-string v0, "Ad binding failed with unexpected exception"

    invoke-direct {p1, v0, p0}, Lcom/yandex/mobile/ads/nativeads/NativeAdException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :goto_1
    new-instance p1, Lcom/yandex/mobile/ads/nativeads/NativeAdException;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/e61;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/yandex/mobile/ads/nativeads/NativeAdException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/yandex/mobile/ads/nativeads/e;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/yandex/mobile/ads/nativeads/e;

    iget-object p1, p1, Lcom/yandex/mobile/ads/nativeads/e;->a:Lcom/yandex/mobile/ads/impl/q61;

    iget-object p0, p0, Lcom/yandex/mobile/ads/nativeads/e;->a:Lcom/yandex/mobile/ads/impl/q61;

    invoke-static {p1, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getAdAssets()Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;
    .locals 1

    new-instance v0, Lcom/yandex/mobile/ads/impl/qm2;

    iget-object p0, p0, Lcom/yandex/mobile/ads/nativeads/e;->a:Lcom/yandex/mobile/ads/impl/q61;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/q61;->getAdAssets()Lcom/yandex/mobile/ads/impl/rt;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/qm2;-><init>(Lcom/yandex/mobile/ads/impl/rt;)V

    return-object v0
.end method

.method public final getAdType()Lcom/yandex/mobile/ads/nativeads/NativeAdType;
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/e;->c:Lcom/yandex/mobile/ads/impl/wm2;

    iget-object p0, p0, Lcom/yandex/mobile/ads/nativeads/e;->a:Lcom/yandex/mobile/ads/impl/q61;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/q61;->getAdType()Lcom/yandex/mobile/ads/impl/gr1;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "responseNativeType"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yandex/mobile/ads/nativeads/NativeAdType;->CONTENT:Lcom/yandex/mobile/ads/nativeads/NativeAdType;

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Lcom/yandex/mobile/ads/nativeads/NativeAdType;->MEDIA:Lcom/yandex/mobile/ads/nativeads/NativeAdType;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/yandex/mobile/ads/nativeads/NativeAdType;->APP_INSTALL:Lcom/yandex/mobile/ads/nativeads/NativeAdType;

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/yandex/mobile/ads/nativeads/NativeAdType;->CONTENT:Lcom/yandex/mobile/ads/nativeads/NativeAdType;

    :goto_0
    return-object p0
.end method

.method public final getInfo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/nativeads/e;->a:Lcom/yandex/mobile/ads/impl/q61;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/q61;->getInfo()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getNativeAdVideoController()Lcom/yandex/mobile/ads/nativeads/video/b;
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/nativeads/e;->a:Lcom/yandex/mobile/ads/impl/q61;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/q61;->getNativeAdVideoController()Lcom/yandex/mobile/ads/impl/yt;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/yandex/mobile/ads/impl/xm2;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/xm2;-><init>(Lcom/yandex/mobile/ads/impl/yt;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/nativeads/e;->a:Lcom/yandex/mobile/ads/impl/q61;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final loadImages()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/nativeads/e;->a:Lcom/yandex/mobile/ads/impl/q61;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/q61;->loadImages()V

    return-void
.end method

.method public final removeImageLoadingListener(Lcom/yandex/mobile/ads/nativeads/NativeAdImageLoadingListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/tm2;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/tm2;-><init>(Lcom/yandex/mobile/ads/nativeads/NativeAdImageLoadingListener;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/nativeads/e;->a:Lcom/yandex/mobile/ads/impl/q61;

    invoke-interface {p0, v0}, Lcom/yandex/mobile/ads/impl/q61;->a(Lcom/yandex/mobile/ads/impl/ut;)V

    return-void
.end method

.method public final setCustomClickHandler(Lcom/yandex/mobile/ads/nativeads/CustomClickHandler;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/yandex/mobile/ads/nativeads/c;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/nativeads/c;-><init>(Lcom/yandex/mobile/ads/nativeads/CustomClickHandler;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/nativeads/e;->a:Lcom/yandex/mobile/ads/impl/q61;

    invoke-interface {p0, v0}, Lcom/yandex/mobile/ads/impl/q61;->a(Lcom/yandex/mobile/ads/nativeads/c;)V

    return-void
.end method

.method public final setNativeAdEventListener(Lcom/yandex/mobile/ads/nativeads/NativeAdEventListener;)V
    .locals 1

    instance-of v0, p1, Lcom/yandex/mobile/ads/nativeads/ClosableNativeAdEventListener;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/yandex/mobile/ads/impl/xl2;

    check-cast p1, Lcom/yandex/mobile/ads/nativeads/ClosableNativeAdEventListener;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/xl2;-><init>(Lcom/yandex/mobile/ads/nativeads/ClosableNativeAdEventListener;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Lcom/yandex/mobile/ads/impl/rm2;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/rm2;-><init>(Lcom/yandex/mobile/ads/nativeads/NativeAdEventListener;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/nativeads/e;->a:Lcom/yandex/mobile/ads/impl/q61;

    invoke-interface {p0, v0}, Lcom/yandex/mobile/ads/impl/q61;->a(Lcom/yandex/mobile/ads/impl/st;)V

    return-void
.end method
