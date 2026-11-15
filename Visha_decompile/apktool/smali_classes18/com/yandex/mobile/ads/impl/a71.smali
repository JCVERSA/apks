.class public final Lcom/yandex/mobile/ads/impl/a71;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/bv1;

.field private final b:Lcom/yandex/mobile/ads/impl/o3;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/o3;)V
    .locals 1

    const-string v0, "sdkEnvironmentModule"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/a71;->a:Lcom/yandex/mobile/ads/impl/bv1;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/a71;->b:Lcom/yandex/mobile/ads/impl/o3;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/o8;)Lcom/yandex/mobile/ads/impl/m81;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "Lcom/yandex/mobile/ads/impl/y61;",
            ">;)",
            "Lcom/yandex/mobile/ads/impl/m81;"
        }
    .end annotation

    const-string v0, "adResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/o8;->D()Lcom/yandex/mobile/ads/impl/hz0;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/yandex/mobile/ads/impl/wy0;

    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/wy0;-><init>(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/hz0;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/yandex/mobile/ads/impl/kw1;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/a71;->a:Lcom/yandex/mobile/ads/impl/bv1;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/a71;->b:Lcom/yandex/mobile/ads/impl/o3;

    invoke-direct {p1, v0, p0}, Lcom/yandex/mobile/ads/impl/kw1;-><init>(Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/o3;)V

    move-object p0, p1

    :goto_0
    return-object p0
.end method
