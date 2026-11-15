.class public final Lcom/yandex/mobile/ads/impl/k51;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o3;

.field private final b:Lcom/yandex/mobile/ads/impl/e51;

.field private final c:Lcom/yandex/mobile/ads/impl/r41;

.field private final d:Lcom/yandex/mobile/ads/impl/u41;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/e51;)V
    .locals 6

    .line 1
    new-instance v4, Lcom/yandex/mobile/ads/impl/r41;

    invoke-direct {v4, p2}, Lcom/yandex/mobile/ads/impl/r41;-><init>(Lcom/yandex/mobile/ads/impl/bv1;)V

    .line 2
    new-instance v5, Lcom/yandex/mobile/ads/impl/u41;

    invoke-direct {v5, p2}, Lcom/yandex/mobile/ads/impl/u41;-><init>(Lcom/yandex/mobile/ads/impl/bv1;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/k51;-><init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/e51;Lcom/yandex/mobile/ads/impl/r41;Lcom/yandex/mobile/ads/impl/u41;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/e51;Lcom/yandex/mobile/ads/impl/r41;Lcom/yandex/mobile/ads/impl/u41;)V
    .locals 1

    .line 4
    const-string v0, "adConfiguration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkEnvironmentModule"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "nativeAdControllers"

    invoke-static {p3, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "nativeAdBinderFactory"

    invoke-static {p4, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "nativeAdBlockCreatorProvider"

    invoke-static {p5, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/k51;->a:Lcom/yandex/mobile/ads/impl/o3;

    .line 7
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/k51;->b:Lcom/yandex/mobile/ads/impl/e51;

    .line 8
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/k51;->c:Lcom/yandex/mobile/ads/impl/r41;

    .line 9
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/k51;->d:Lcom/yandex/mobile/ads/impl/u41;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/s41;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/s51;Lcom/yandex/mobile/ads/impl/g51;)V
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdBlock"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageProvider"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdFactoriesProvider"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdCreationListener"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/k51;->a:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/o3;->p()Lcom/yandex/mobile/ads/impl/ca1;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/k51;->d:Lcom/yandex/mobile/ads/impl/u41;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/impl/u41;->a(Lcom/yandex/mobile/ads/impl/ca1;)Lcom/yandex/mobile/ads/impl/t41;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/k51;->c:Lcom/yandex/mobile/ads/impl/r41;

    iget-object v8, p0, Lcom/yandex/mobile/ads/impl/k51;->b:Lcom/yandex/mobile/ads/impl/e51;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    move-object v9, p5

    invoke-interface/range {v2 .. v9}, Lcom/yandex/mobile/ads/impl/t41;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/s41;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/r41;Lcom/yandex/mobile/ads/impl/s51;Lcom/yandex/mobile/ads/impl/e51;Lcom/yandex/mobile/ads/impl/g51;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/yandex/mobile/ads/impl/w7;->x()Lcom/yandex/mobile/ads/impl/w3;

    move-result-object p0

    invoke-interface {p5, p0}, Lcom/yandex/mobile/ads/impl/g51;->a(Lcom/yandex/mobile/ads/impl/w3;)V

    :goto_0
    return-void
.end method
