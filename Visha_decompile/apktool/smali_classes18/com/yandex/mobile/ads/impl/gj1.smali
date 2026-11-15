.class public final Lcom/yandex/mobile/ads/impl/gj1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/gf2;

.field private final b:Lcom/yandex/mobile/ads/impl/z2;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/gf2;Lcom/yandex/mobile/ads/impl/z2;)V
    .locals 1

    const-string v0, "videoPlayerController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adBreakStatusController"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/gj1;->a:Lcom/yandex/mobile/ads/impl/gf2;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/gj1;->b:Lcom/yandex/mobile/ads/impl/z2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/om0;Lcom/yandex/mobile/ads/impl/hj1;)Lcom/yandex/mobile/ads/impl/fj1;
    .locals 4

    const-string v0, "instreamAdPlaylist"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/rf2;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/gj1;->a:Lcom/yandex/mobile/ads/impl/gf2;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/rf2;-><init>(Lcom/yandex/mobile/ads/impl/gf2;Landroid/os/Handler;)V

    new-instance v1, Lcom/yandex/mobile/ads/impl/ot1;

    invoke-direct {v1, p1}, Lcom/yandex/mobile/ads/impl/ot1;-><init>(Lcom/yandex/mobile/ads/impl/om0;)V

    new-instance p1, Lcom/yandex/mobile/ads/impl/yn1;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/gj1;->b:Lcom/yandex/mobile/ads/impl/z2;

    invoke-direct {p1, v1, v2}, Lcom/yandex/mobile/ads/impl/yn1;-><init>(Lcom/yandex/mobile/ads/impl/ot1;Lcom/yandex/mobile/ads/impl/z2;)V

    new-instance v2, Lcom/yandex/mobile/ads/impl/xn1;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/gj1;->b:Lcom/yandex/mobile/ads/impl/z2;

    invoke-direct {v2, v1, p0}, Lcom/yandex/mobile/ads/impl/xn1;-><init>(Lcom/yandex/mobile/ads/impl/ot1;Lcom/yandex/mobile/ads/impl/z2;)V

    new-instance p0, Lcom/yandex/mobile/ads/impl/fj1;

    invoke-direct {p0, v0, p1, v2, p2}, Lcom/yandex/mobile/ads/impl/fj1;-><init>(Lcom/yandex/mobile/ads/impl/rf2;Lcom/yandex/mobile/ads/impl/yn1;Lcom/yandex/mobile/ads/impl/xn1;Lcom/yandex/mobile/ads/impl/hj1;)V

    return-object p0
.end method
