.class public final Lcom/yandex/mobile/ads/impl/ni2;
.super Lcom/yandex/mobile/ads/impl/i62;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/mobile/ads/impl/i62<",
        "Lcom/yandex/mobile/ads/impl/oi2;",
        "Lcom/yandex/mobile/ads/impl/ki2;",
        ">;"
    }
.end annotation


# instance fields
.field private final C:Lcom/yandex/mobile/ads/impl/mi2;

.field private final D:Lcom/yandex/mobile/ads/impl/vi2;

.field private final E:Lcom/yandex/mobile/ads/impl/mq1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/zi2;Lcom/yandex/mobile/ads/impl/oi2;Lcom/yandex/mobile/ads/impl/ri2;Lcom/yandex/mobile/ads/impl/mi2;Lcom/yandex/mobile/ads/impl/vi2;)V
    .locals 14

    move-object v10, p0

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    const-string v0, "context"

    move-object v1, p1

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    move-object/from16 v2, p2

    invoke-static {v2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    move-object/from16 v13, p3

    invoke-static {v13, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestReporter"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vmapParser"

    invoke-static {v11, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "volleyNetworkResponseDecoder"

    invoke-static {v12, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/16 v9, 0x780

    const/4 v3, 0x0

    move-object v0, p0

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v9}, Lcom/yandex/mobile/ads/impl/i62;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;ILjava/lang/String;Lcom/yandex/mobile/ads/impl/qk$a;Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/lq1;Lcom/yandex/mobile/ads/impl/eq1;I)V

    iput-object v11, v10, Lcom/yandex/mobile/ads/impl/ni2;->C:Lcom/yandex/mobile/ads/impl/mi2;

    iput-object v12, v10, Lcom/yandex/mobile/ads/impl/ni2;->D:Lcom/yandex/mobile/ads/impl/vi2;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/sp0;->e([Ljava/lang/Object;)V

    sget-object v0, Lcom/yandex/mobile/ads/impl/mq1;->d:Lcom/yandex/mobile/ads/impl/mq1;

    iput-object v0, v10, Lcom/yandex/mobile/ads/impl/ni2;->E:Lcom/yandex/mobile/ads/impl/mq1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/xc1;I)Lcom/yandex/mobile/ads/impl/xq1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/xc1;",
            "I)",
            "Lcom/yandex/mobile/ads/impl/xq1<",
            "Lcom/yandex/mobile/ads/impl/ki2;",
            ">;"
        }
    .end annotation

    const-string v0, "networkResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/qk;->a(Ljava/lang/Integer;)V

    const/16 v0, 0xc8

    const-string v1, "error(...)"

    const/4 v2, 0x0

    if-ne v0, p2, :cond_4

    iget-object p2, p1, Lcom/yandex/mobile/ads/impl/xc1;->b:[B

    if-eqz p2, :cond_4

    const-string v0, "data"

    invoke-static {p2, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p2, p2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/ni2;->D:Lcom/yandex/mobile/ads/impl/vi2;

    invoke-interface {p2, p1}, Lcom/yandex/mobile/ads/impl/vi2;->a(Lcom/yandex/mobile/ads/impl/xc1;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/yandex/mobile/ads/impl/wj;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/xc1;->c:Ljava/util/Map;

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/collections/a;->l()Ljava/util/Map;

    move-result-object p1

    :cond_1
    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/wj;-><init>(Ljava/util/Map;)V

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ni2;->C:Lcom/yandex/mobile/ads/impl/mi2;

    invoke-virtual {p0, p2, v0}, Lcom/yandex/mobile/ads/impl/mi2;->a(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/wj;)Lcom/yandex/mobile/ads/impl/ki2;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/yandex/mobile/ads/impl/xq1;->a(Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/tm$a;)Lcom/yandex/mobile/ads/impl/xq1;

    move-result-object p0

    const-string p1, "success(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    new-instance p1, Lcom/yandex/mobile/ads/impl/cg1;

    invoke-direct {p1, p0}, Lcom/yandex/mobile/ads/impl/cg1;-><init>(Ljava/lang/Exception;)V

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/xq1;->a(Lcom/yandex/mobile/ads/impl/si2;)Lcom/yandex/mobile/ads/impl/xq1;

    move-result-object p0

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    :goto_0
    new-instance p0, Lcom/yandex/mobile/ads/impl/cg1;

    const-string p1, "Can\'t parse VMAP response"

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/cg1;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/xq1;->a(Lcom/yandex/mobile/ads/impl/si2;)Lcom/yandex/mobile/ads/impl/xq1;

    move-result-object p0

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    :goto_1
    sget p0, Lcom/yandex/mobile/ads/impl/r3;->d:I

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/r3$a;->a(Lcom/yandex/mobile/ads/impl/xc1;)Lcom/yandex/mobile/ads/impl/r3;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/r3;->a()Lcom/yandex/mobile/ads/impl/x3;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/yandex/mobile/ads/impl/y3$a;->a(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/x3;)Lcom/yandex/mobile/ads/impl/w3;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/w3;->c()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/yandex/mobile/ads/impl/si2;

    invoke-direct {p1, p0}, Lcom/yandex/mobile/ads/impl/si2;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/xq1;->a(Lcom/yandex/mobile/ads/impl/si2;)Lcom/yandex/mobile/ads/impl/xq1;

    move-result-object p0

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object p0
.end method

.method public final w()Lcom/yandex/mobile/ads/impl/mq1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ni2;->E:Lcom/yandex/mobile/ads/impl/mq1;

    return-object p0
.end method
