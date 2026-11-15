.class public final Lcom/yandex/mobile/ads/impl/ho0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/bv1;

.field private final b:Lcom/yandex/mobile/ads/impl/wl0;

.field private final c:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/wl0;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/wl0;-><init>()V

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/yandex/mobile/ads/impl/ho0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/wl0;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/wl0;)V
    .locals 1

    .line 3
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkEnvironmentModule"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adBreakPositionParser"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ho0;->a:Lcom/yandex/mobile/ads/impl/bv1;

    .line 6
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/ho0;->b:Lcom/yandex/mobile/ads/impl/wl0;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ho0;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/p2;Ljava/util/List;)Lcom/yandex/mobile/ads/impl/gt;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/p2;",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/mb2;",
            ">;)",
            "Lcom/yandex/mobile/ads/impl/gt;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    const-string v1, "adBreak"

    invoke-static {v10, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "videoAds"

    invoke-static {v11, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/p2;->c()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/ho0;->b:Lcom/yandex/mobile/ads/impl/wl0;

    invoke-virtual/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/p2;->f()Lcom/yandex/mobile/ads/impl/a52;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/impl/wl0;->a(Lcom/yandex/mobile/ads/impl/a52;)Lcom/yandex/mobile/ads/impl/ht;

    move-result-object v13

    if-eqz v13, :cond_1

    invoke-static {}, Lcom/yandex/mobile/ads/impl/wi0;->a()J

    move-result-wide v14

    new-instance v9, Lcom/yandex/mobile/ads/impl/mo0;

    new-instance v6, Lcom/yandex/mobile/ads/impl/rz1;

    invoke-direct {v6}, Lcom/yandex/mobile/ads/impl/rz1;-><init>()V

    new-instance v7, Lcom/yandex/mobile/ads/impl/p10;

    invoke-direct {v7, v10}, Lcom/yandex/mobile/ads/impl/p10;-><init>(Lcom/yandex/mobile/ads/impl/p2;)V

    new-instance v8, Lcom/yandex/mobile/ads/impl/yb2;

    invoke-direct {v8}, Lcom/yandex/mobile/ads/impl/yb2;-><init>()V

    new-instance v16, Lcom/yandex/mobile/ads/impl/em0;

    invoke-direct/range {v16 .. v16}, Lcom/yandex/mobile/ads/impl/em0;-><init>()V

    move-object v1, v9

    move-object/from16 v2, p1

    move-object v3, v13

    move-wide v4, v14

    move-object v10, v9

    move-object/from16 v9, v16

    invoke-direct/range {v1 .. v9}, Lcom/yandex/mobile/ads/impl/mo0;-><init>(Lcom/yandex/mobile/ads/impl/p2;Lcom/yandex/mobile/ads/impl/ht;JLcom/yandex/mobile/ads/impl/rz1;Lcom/yandex/mobile/ads/impl/p10;Lcom/yandex/mobile/ads/impl/yb2;Lcom/yandex/mobile/ads/impl/em0;)V

    new-instance v1, Lcom/yandex/mobile/ads/impl/dc2;

    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/ho0;->c:Landroid/content/Context;

    const-string v3, "context"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2, v10}, Lcom/yandex/mobile/ads/impl/dc2;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sc2;)V

    invoke-virtual {v1, v11}, Lcom/yandex/mobile/ads/impl/dc2;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v2, v1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/mobile/ads/impl/zb2;

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/zb2;->d()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/mobile/ads/impl/go0;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v9, Lcom/yandex/mobile/ads/impl/gt;

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/ho0;->a:Lcom/yandex/mobile/ads/impl/bv1;

    move-object v0, v9

    move-object v4, v12

    move-object/from16 v5, p1

    move-object v6, v13

    move-wide v7, v14

    invoke-direct/range {v0 .. v8}, Lcom/yandex/mobile/ads/impl/gt;-><init>(Lcom/yandex/mobile/ads/impl/bv1;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/p2;Lcom/yandex/mobile/ads/impl/ht;J)V

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    return-object v9
.end method
