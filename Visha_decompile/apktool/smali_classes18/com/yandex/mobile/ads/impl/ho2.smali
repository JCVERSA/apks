.class public final Lcom/yandex/mobile/ads/impl/ho2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/so2;

.field private final b:Lcom/yandex/mobile/ads/impl/oo2;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/yandex/mobile/ads/impl/so2;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/so2;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/ho2;->a:Lcom/yandex/mobile/ads/impl/so2;

    new-instance v1, Lcom/yandex/mobile/ads/impl/oo2;

    invoke-direct {v1, v0}, Lcom/yandex/mobile/ads/impl/oo2;-><init>(Lcom/yandex/mobile/ads/impl/so2;)V

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/ho2;->b:Lcom/yandex/mobile/ads/impl/oo2;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/oo2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ho2;->b:Lcom/yandex/mobile/ads/impl/oo2;

    return-object p0
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/so2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ho2;->a:Lcom/yandex/mobile/ads/impl/so2;

    return-object p0
.end method
