.class public final Lcom/yandex/mobile/ads/impl/hc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/zb2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/ic;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/ic;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/ic;",
            ")V"
        }
    .end annotation

    const-string v0, "videoAdInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "advertiserPresentController"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/hc;->a:Lcom/yandex/mobile/ads/impl/zb2;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/hc;->b:Lcom/yandex/mobile/ads/impl/ic;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/gc;
    .locals 2

    new-instance v0, Lcom/yandex/mobile/ads/impl/d22;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/hc;->b:Lcom/yandex/mobile/ads/impl/ic;

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/d22;-><init>(Lcom/yandex/mobile/ads/impl/ic;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/hc;->a:Lcom/yandex/mobile/ads/impl/zb2;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/d22;->a(Lcom/yandex/mobile/ads/impl/zb2;)Lcom/yandex/mobile/ads/impl/c22;

    move-result-object v0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hc;->a:Lcom/yandex/mobile/ads/impl/zb2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zb2;->f()Lcom/yandex/mobile/ads/impl/i12;

    move-result-object p0

    sget-object v1, Lcom/yandex/mobile/ads/impl/c22;->c:Lcom/yandex/mobile/ads/impl/c22;

    if-ne v1, v0, :cond_0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/yandex/mobile/ads/impl/h12;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/h12;-><init>(Lcom/yandex/mobile/ads/impl/i12;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/yandex/mobile/ads/impl/c22;->d:Lcom/yandex/mobile/ads/impl/c22;

    if-ne p0, v0, :cond_1

    new-instance v0, Lcom/yandex/mobile/ads/impl/c50;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/c50;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/yandex/mobile/ads/impl/az;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/az;-><init>()V

    :goto_0
    return-object v0
.end method
