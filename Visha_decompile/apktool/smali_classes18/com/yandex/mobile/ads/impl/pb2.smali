.class public final Lcom/yandex/mobile/ads/impl/pb2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/c41;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/c41;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/pb2;-><init>(Lcom/yandex/mobile/ads/impl/c41;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/c41;)V
    .locals 1

    .line 3
    const-string v0, "muteControlViewWrapperFactory"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
