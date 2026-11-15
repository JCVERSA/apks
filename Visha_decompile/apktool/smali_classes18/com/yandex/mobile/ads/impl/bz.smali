.class final Lcom/yandex/mobile/ads/impl/bz;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lc74;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/yandex/mobile/ads/impl/cz;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/cz;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/bz;->b:Lcom/yandex/mobile/ads/impl/cz;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/bz;->b:Lcom/yandex/mobile/ads/impl/cz;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/cz;->b(Lcom/yandex/mobile/ads/impl/cz;)Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/bz;->b:Lcom/yandex/mobile/ads/impl/cz;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/cz;->a(Lcom/yandex/mobile/ads/impl/cz;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
