.class public final Lcom/yandex/mobile/ads/impl/zi0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/p50;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/p50;)V
    .locals 1

    const-string v0, "environmentController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/zi0;->a:Lcom/yandex/mobile/ads/impl/p50;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/xi0;
    .locals 3

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zi0;->a:Lcom/yandex/mobile/ads/impl/p50;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/p50;->d()Lcom/yandex/mobile/ads/impl/bj0;

    move-result-object p0

    new-instance v0, Lcom/yandex/mobile/ads/impl/xi0;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/bj0;->b()Lcom/yandex/mobile/ads/impl/df;

    move-result-object v1

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/bj0;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/bj0;->c()Lcom/yandex/mobile/ads/impl/cj0;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/yandex/mobile/ads/impl/xi0;-><init>(Lcom/yandex/mobile/ads/impl/df;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/cj0;)V

    return-object v0
.end method
