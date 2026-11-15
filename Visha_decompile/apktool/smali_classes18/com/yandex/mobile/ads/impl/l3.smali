.class public final Lcom/yandex/mobile/ads/impl/l3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/j1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/v1;)V
    .locals 1

    const-string v0, "adActivityListener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/l3;->a:Lcom/yandex/mobile/ads/impl/j1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/ks1;)Lcom/yandex/mobile/ads/impl/y1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;",
            "Lcom/yandex/mobile/ads/impl/ks1;",
            ")",
            "Lcom/yandex/mobile/ads/impl/y1;"
        }
    .end annotation

    const-string v0, "adResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "closeVerificationController"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/o8;->n()Lcom/yandex/mobile/ads/impl/ts;

    move-result-object p1

    sget-object v0, Lcom/yandex/mobile/ads/impl/ts;->f:Lcom/yandex/mobile/ads/impl/ts;

    if-ne p1, v0, :cond_0

    new-instance p1, Lcom/yandex/mobile/ads/impl/sr1;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/l3;->a:Lcom/yandex/mobile/ads/impl/j1;

    new-instance v0, Lcom/yandex/mobile/ads/impl/tr1;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/tr1;-><init>(Lcom/yandex/mobile/ads/impl/j1;)V

    invoke-direct {p1, p0, p2, v0}, Lcom/yandex/mobile/ads/impl/sr1;-><init>(Lcom/yandex/mobile/ads/impl/j1;Lcom/yandex/mobile/ads/impl/ks1;Lcom/yandex/mobile/ads/impl/tr1;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/yandex/mobile/ads/impl/tp0;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/tp0;-><init>()V

    :goto_0
    return-object p1
.end method
