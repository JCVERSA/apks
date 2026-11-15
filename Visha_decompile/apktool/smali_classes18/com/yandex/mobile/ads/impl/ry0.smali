.class public final Lcom/yandex/mobile/ads/impl/ry0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/jx0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/aw0;Lcom/yandex/mobile/ads/impl/pk0;Lcom/yandex/mobile/ads/impl/n91;Lcom/yandex/mobile/ads/impl/t81;Lcom/yandex/mobile/ads/impl/e51;Lcom/yandex/mobile/ads/impl/ox0;Lcom/yandex/mobile/ads/impl/yx1;Lcom/yandex/mobile/ads/impl/ex0;)Lcom/yandex/mobile/ads/impl/hx0;
    .locals 0

    const-string p0, "mediaView"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "adConfiguration"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "imageProvider"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "controlsProvider"

    invoke-static {p4, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "impressionEventsObservable"

    invoke-static {p5, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "nativeMediaContent"

    invoke-static {p6, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "nativeForcePauseObserver"

    invoke-static {p7, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "nativeAdControllers"

    invoke-static {p8, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "mediaViewRenderController"

    invoke-static {p9, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance p0, Lcom/yandex/mobile/ads/impl/qy0;

    invoke-direct {p0, p1, p9}, Lcom/yandex/mobile/ads/impl/qy0;-><init>(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lcom/yandex/mobile/ads/impl/ox0;)V

    return-object p0
.end method
