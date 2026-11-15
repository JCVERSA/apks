.class public final Lcom/yandex/mobile/ads/impl/xj1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/xj1$a;
    }
.end annotation


# direct methods
.method public static a(Lcom/yandex/mobile/ads/impl/wj1;Lcom/yandex/mobile/ads/impl/wj1;)Lcom/yandex/mobile/ads/impl/wj1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/yandex/mobile/ads/impl/wj1<",
            "-TT;>;",
            "Lcom/yandex/mobile/ads/impl/wj1<",
            "-TT;>;)",
            "Lcom/yandex/mobile/ads/impl/wj1<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/yandex/mobile/ads/impl/xj1$a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/yandex/mobile/ads/impl/wj1;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, p0, p1}, Lcom/yandex/mobile/ads/impl/xj1$a;-><init>(Ljava/util/List;Lmxd;)V

    return-object v0
.end method
