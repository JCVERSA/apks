.class public final Lcom/yandex/mobile/ads/impl/r7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private b:Lcom/yandex/mobile/ads/impl/dh0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/dh0;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/r7;->b:Lcom/yandex/mobile/ads/impl/dh0;

    return-void
.end method

.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/r7;->b:Lcom/yandex/mobile/ads/impl/dh0;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/yandex/mobile/ads/impl/w7;->l()Lcom/yandex/mobile/ads/impl/w3;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/yandex/mobile/ads/impl/dh0;->a(Lcom/yandex/mobile/ads/impl/w3;)V

    :cond_0
    return-void
.end method
