.class public final Lcom/yandex/mobile/ads/impl/d81;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/qe2;

.field private final b:Lcom/yandex/mobile/ads/impl/n91;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/qe2;Lcom/yandex/mobile/ads/impl/n91;)V
    .locals 1

    const-string v0, "videoEventController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeMediaContent"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/d81;->a:Lcom/yandex/mobile/ads/impl/qe2;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/d81;->b:Lcom/yandex/mobile/ads/impl/n91;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/e81;
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/d81;->b:Lcom/yandex/mobile/ads/impl/n91;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/n91;->a()Lcom/yandex/mobile/ads/impl/db1;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/yandex/mobile/ads/impl/e81;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/d81;->a:Lcom/yandex/mobile/ads/impl/qe2;

    invoke-direct {v1, v0, p0, p0}, Lcom/yandex/mobile/ads/impl/e81;-><init>(Lcom/yandex/mobile/ads/impl/db1;Lcom/yandex/mobile/ads/impl/qe2;Lcom/yandex/mobile/ads/impl/ve2;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method
