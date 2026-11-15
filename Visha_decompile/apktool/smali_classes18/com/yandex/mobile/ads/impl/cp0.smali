.class public final Lcom/yandex/mobile/ads/impl/cp0;
.super Lcom/yandex/mobile/ads/impl/qk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/mobile/ads/impl/qk<",
        "Lcom/yandex/mobile/ads/impl/rx;",
        ">;"
    }
.end annotation


# instance fields
.field private final x:Landroid/content/Context;

.field private final y:Lcom/yandex/mobile/ads/impl/hq1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/hq1<",
            "Lcom/yandex/mobile/ads/impl/rx;",
            ">;"
        }
    .end annotation
.end field

.field private final z:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/hq1;Ljava/util/Map;Lcom/yandex/mobile/ads/impl/nl0;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestPolicy"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customHeaders"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p5}, Lcom/yandex/mobile/ads/impl/qk;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/qk$a;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/cp0;->x:Landroid/content/Context;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/cp0;->y:Lcom/yandex/mobile/ads/impl/hq1;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/cp0;->z:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/xc1;)Lcom/yandex/mobile/ads/impl/xq1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/xc1;",
            ")",
            "Lcom/yandex/mobile/ads/impl/xq1<",
            "Lcom/yandex/mobile/ads/impl/rx;",
            ">;"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Lcom/yandex/mobile/ads/impl/xc1;->a:I

    const/16 v1, 0xc8

    if-ne v1, v0, :cond_1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/cp0;->y:Lcom/yandex/mobile/ads/impl/hq1;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/hq1;->a(Lcom/yandex/mobile/ads/impl/xc1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/rx;

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/wh0;->a(Lcom/yandex/mobile/ads/impl/xc1;)Lcom/yandex/mobile/ads/impl/tm$a;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/xq1;->a(Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/tm$a;)Lcom/yandex/mobile/ads/impl/xq1;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/yandex/mobile/ads/impl/r3;

    sget-object v0, Lcom/yandex/mobile/ads/impl/x3;->c:Lcom/yandex/mobile/ads/impl/x3;

    invoke-direct {p0, v0, p1}, Lcom/yandex/mobile/ads/impl/r3;-><init>(Lcom/yandex/mobile/ads/impl/x3;Lcom/yandex/mobile/ads/impl/xc1;)V

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/xq1;->a(Lcom/yandex/mobile/ads/impl/si2;)Lcom/yandex/mobile/ads/impl/xq1;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Lcom/yandex/mobile/ads/impl/r3;

    sget-object v0, Lcom/yandex/mobile/ads/impl/x3;->e:Lcom/yandex/mobile/ads/impl/x3;

    invoke-direct {p0, v0, p1}, Lcom/yandex/mobile/ads/impl/r3;-><init>(Lcom/yandex/mobile/ads/impl/x3;Lcom/yandex/mobile/ads/impl/xc1;)V

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/xq1;->a(Lcom/yandex/mobile/ads/impl/si2;)Lcom/yandex/mobile/ads/impl/xq1;

    move-result-object p0

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    :goto_1
    return-object p0
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/si2;)Lcom/yandex/mobile/ads/impl/si2;
    .locals 1

    const-string v0, "volleyError"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/sp0;->c([Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/yandex/mobile/ads/impl/qk;->b(Lcom/yandex/mobile/ads/impl/si2;)Lcom/yandex/mobile/ads/impl/si2;

    move-result-object p0

    return-object p0
.end method

.method public final e()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/cp0;->x:Landroid/content/Context;

    const-string v2, "context"

    invoke-static {v1, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "headers"

    invoke-static {v0, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/yandex/mobile/ads/impl/pw1;->l:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/yandex/mobile/ads/impl/pw1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ju1;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ju1;->c0()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yandex/mobile/ads/impl/vh0;->V:Lcom/yandex/mobile/ads/impl/vh0;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/vh0;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/cp0;->z:Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-object v0
.end method
