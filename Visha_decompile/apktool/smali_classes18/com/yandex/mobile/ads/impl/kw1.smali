.class public final Lcom/yandex/mobile/ads/impl/kw1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/m81;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/bv1;

.field private final b:Lcom/yandex/mobile/ads/impl/o3;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/o3;)V
    .locals 1

    const-string v0, "sdkEnvironmentModule"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/kw1;->a:Lcom/yandex/mobile/ads/impl/bv1;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/kw1;->b:Lcom/yandex/mobile/ads/impl/o3;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/g61;)Lcom/yandex/mobile/ads/impl/l81;
    .locals 3

    const-string v0, "nativeAdLoadManager"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/jw1;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/kw1;->a:Lcom/yandex/mobile/ads/impl/bv1;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/kw1;->b:Lcom/yandex/mobile/ads/impl/o3;

    new-instance v2, Lcom/yandex/mobile/ads/impl/gw1;

    invoke-direct {v2, v1}, Lcom/yandex/mobile/ads/impl/gw1;-><init>(Lcom/yandex/mobile/ads/impl/bv1;)V

    invoke-direct {v0, v1, p1, p0, v2}, Lcom/yandex/mobile/ads/impl/jw1;-><init>(Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/g61;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/gw1;)V

    return-object v0
.end method
