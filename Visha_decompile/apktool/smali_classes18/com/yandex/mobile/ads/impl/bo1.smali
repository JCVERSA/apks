.class public final Lcom/yandex/mobile/ads/impl/bo1;
.super Lcom/yandex/mobile/ads/impl/h42;
.source "SourceFile"


# instance fields
.field final synthetic e:Lcom/yandex/mobile/ads/impl/co1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/co1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/bo1;->e:Lcom/yandex/mobile/ads/impl/co1;

    invoke-direct {p0, p2}, Lcom/yandex/mobile/ads/impl/h42;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final e()J
    .locals 2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/bo1;->e:Lcom/yandex/mobile/ads/impl/co1;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/co1;->a(J)J

    move-result-wide v0

    return-wide v0
.end method
