.class public final Lcom/yandex/mobile/ads/impl/ta2;
.super Lcom/yandex/mobile/ads/impl/i62;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/mobile/ads/impl/i62<",
        "Lcom/yandex/mobile/ads/impl/mb2;",
        "Ljava/util/List<",
        "+",
        "Lcom/yandex/mobile/ads/impl/mb2;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final C:Lcom/yandex/mobile/ads/impl/ca2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/zi2;Lcom/yandex/mobile/ads/impl/mb2;Lcom/yandex/mobile/ads/impl/zk2;Lcom/yandex/mobile/ads/impl/ca2;)V
    .locals 12

    move-object/from16 v0, p7

    const-string v1, "context"

    move-object v3, p1

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adConfiguration"

    move-object v4, p2

    invoke-static {p2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "url"

    move-object v6, p3

    invoke-static {p3, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "listener"

    move-object/from16 v7, p4

    invoke-static {v7, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "wrapper"

    move-object/from16 v8, p5

    invoke-static {v8, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "requestReporter"

    move-object/from16 v9, p6

    invoke-static {v9, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "vastDataResponseParser"

    invoke-static {v0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x0

    const/16 v11, 0x780

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v11}, Lcom/yandex/mobile/ads/impl/i62;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;ILjava/lang/String;Lcom/yandex/mobile/ads/impl/qk$a;Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/lq1;Lcom/yandex/mobile/ads/impl/eq1;I)V

    move-object v1, p0

    iput-object v0, v1, Lcom/yandex/mobile/ads/impl/ta2;->C:Lcom/yandex/mobile/ads/impl/ca2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/xc1;I)Lcom/yandex/mobile/ads/impl/xq1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/xc1;",
            "I)",
            "Lcom/yandex/mobile/ads/impl/xq1<",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/mb2;",
            ">;>;"
        }
    .end annotation

    const-string p2, "networkResponse"

    invoke-static {p1, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ta2;->C:Lcom/yandex/mobile/ads/impl/ca2;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/ca2;->a(Lcom/yandex/mobile/ads/impl/xc1;)Lcom/yandex/mobile/ads/impl/z92;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/z92;->b()Lcom/yandex/mobile/ads/impl/u92;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/u92;->b()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p0, Lcom/yandex/mobile/ads/impl/g50;

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/g50;-><init>()V

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/xq1;->a(Lcom/yandex/mobile/ads/impl/si2;)Lcom/yandex/mobile/ads/impl/xq1;

    move-result-object p0

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/xq1;->a(Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/tm$a;)Lcom/yandex/mobile/ads/impl/xq1;

    move-result-object p0

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Lcom/yandex/mobile/ads/impl/cg1;

    const-string p1, "Can\'t parse VAST response."

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/cg1;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/xq1;->a(Lcom/yandex/mobile/ads/impl/si2;)Lcom/yandex/mobile/ads/impl/xq1;

    move-result-object p0

    const-string p1, "error(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
