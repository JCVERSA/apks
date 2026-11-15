.class public final Lcom/yandex/mobile/ads/impl/d22;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ic;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ic;)V
    .locals 1

    const-string v0, "advertiserPresentController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/d22;->a:Lcom/yandex/mobile/ads/impl/ic;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/zb2;)Lcom/yandex/mobile/ads/impl/c22;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;)",
            "Lcom/yandex/mobile/ads/impl/c22;"
        }
    .end annotation

    const-string v0, "videoAdInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/zb2;->f()Lcom/yandex/mobile/ads/impl/i12;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object p0, Lcom/yandex/mobile/ads/impl/c22;->c:Lcom/yandex/mobile/ads/impl/c22;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/d22;->a:Lcom/yandex/mobile/ads/impl/ic;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ic;->a()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/yandex/mobile/ads/impl/c22;->d:Lcom/yandex/mobile/ads/impl/c22;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/yandex/mobile/ads/impl/c22;->b:Lcom/yandex/mobile/ads/impl/c22;

    :goto_0
    return-object p0
.end method
