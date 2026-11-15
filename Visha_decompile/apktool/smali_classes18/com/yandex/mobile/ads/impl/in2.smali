.class public final Lcom/yandex/mobile/ads/impl/in2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/r92;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/we;

.field private final b:Lcom/yandex/mobile/ads/impl/ju1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/we;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/ju1;)V
    .locals 1

    const-string v0, "appMetricaAdapter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/in2;->a:Lcom/yandex/mobile/ads/impl/we;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/in2;->b:Lcom/yandex/mobile/ads/impl/ju1;

    return-void
.end method


# virtual methods
.method public final setExperiments(Ljava/lang/String;)V
    .locals 2

    const-string v0, "experiments"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/in2;->b:Lcom/yandex/mobile/ads/impl/ju1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ju1;->B0()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/in2;->a:Lcom/yandex/mobile/ads/impl/we;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/we;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final setTriggeredTestIds(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "testIds"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/in2;->b:Lcom/yandex/mobile/ads/impl/ju1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ju1;->B0()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/in2;->a:Lcom/yandex/mobile/ads/impl/we;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/we;->a(Ljava/util/Set;)V

    :cond_0
    return-void
.end method
