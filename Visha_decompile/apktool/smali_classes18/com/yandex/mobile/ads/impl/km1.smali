.class public final Lcom/yandex/mobile/ads/impl/km1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/w81;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/g41;Lcom/yandex/mobile/ads/impl/m61;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/kl;Lcom/yandex/mobile/ads/impl/e51;)Lcom/yandex/mobile/ads/impl/q61;
    .locals 7

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "nativeAd"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "nativeAdManager"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "imageProvider"

    invoke-static {p4, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "binderConfiguration"

    invoke-static {p5, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "nativeAdControllers"

    invoke-static {p6, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/yandex/mobile/ads/impl/t91;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/yandex/mobile/ads/impl/t91;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/g41;Lcom/yandex/mobile/ads/impl/m61;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/kl;Lcom/yandex/mobile/ads/impl/e51;)V

    return-object p0
.end method
