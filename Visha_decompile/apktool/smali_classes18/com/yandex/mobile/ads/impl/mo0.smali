.class public final Lcom/yandex/mobile/ads/impl/mo0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/sc2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/sc2<",
        "Lcom/yandex/mobile/ads/impl/go0;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ht;

.field private final b:J

.field private final c:Lcom/yandex/mobile/ads/impl/rz1;

.field private final d:Lcom/yandex/mobile/ads/impl/p10;

.field private final e:Lcom/yandex/mobile/ads/impl/yb2;

.field private final f:Lcom/yandex/mobile/ads/impl/em0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/p2;Lcom/yandex/mobile/ads/impl/ht;JLcom/yandex/mobile/ads/impl/rz1;Lcom/yandex/mobile/ads/impl/p10;Lcom/yandex/mobile/ads/impl/yb2;Lcom/yandex/mobile/ads/impl/em0;)V
    .locals 1

    const-string v0, "adBreak"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adBreakPosition"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "skipInfoParser"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "disableSkipChecker"

    invoke-static {p6, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "videoAdIdProvider"

    invoke-static {p7, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "instreamAdInfoProvider"

    invoke-static {p8, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/mo0;->a:Lcom/yandex/mobile/ads/impl/ht;

    iput-wide p3, p0, Lcom/yandex/mobile/ads/impl/mo0;->b:J

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/mo0;->c:Lcom/yandex/mobile/ads/impl/rz1;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/mo0;->d:Lcom/yandex/mobile/ads/impl/p10;

    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/mo0;->e:Lcom/yandex/mobile/ads/impl/yb2;

    iput-object p8, p0, Lcom/yandex/mobile/ads/impl/mo0;->f:Lcom/yandex/mobile/ads/impl/em0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/mb2;Lcom/yandex/mobile/ads/impl/uu;Lcom/yandex/mobile/ads/impl/ew0;Lcom/yandex/mobile/ads/impl/zc2;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    const-string v3, "videoAd"

    invoke-static {v1, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "creative"

    invoke-static {v2, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "vastMediaFile"

    move-object/from16 v7, p3

    invoke-static {v7, v6}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "adPodInfo"

    invoke-static {v4, v6}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/mo0;->c:Lcom/yandex/mobile/ads/impl/rz1;

    iget-object v8, v0, Lcom/yandex/mobile/ads/impl/mo0;->d:Lcom/yandex/mobile/ads/impl/p10;

    invoke-virtual {v8}, Lcom/yandex/mobile/ads/impl/p10;->a()Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_1

    invoke-virtual {v6, v2}, Lcom/yandex/mobile/ads/impl/rz1;->a(Lcom/yandex/mobile/ads/impl/uu;)Lcom/yandex/mobile/ads/impl/od2;

    move-result-object v6

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    new-instance v8, Lcom/yandex/mobile/ads/impl/xn0;

    iget-object v11, v0, Lcom/yandex/mobile/ads/impl/mo0;->a:Lcom/yandex/mobile/ads/impl/ht;

    invoke-virtual/range {p3 .. p3}, Lcom/yandex/mobile/ads/impl/ew0;->f()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Lcom/yandex/mobile/ads/impl/ew0;->h()I

    move-result v13

    invoke-virtual/range {p3 .. p3}, Lcom/yandex/mobile/ads/impl/ew0;->d()I

    move-result v14

    invoke-virtual/range {p3 .. p3}, Lcom/yandex/mobile/ads/impl/ew0;->e()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Lcom/yandex/mobile/ads/impl/ew0;->b()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {p3 .. p3}, Lcom/yandex/mobile/ads/impl/ew0;->a()Ljava/lang/String;

    move-result-object v17

    move-object v10, v8

    invoke-direct/range {v10 .. v17}, Lcom/yandex/mobile/ads/impl/xn0;-><init>(Lcom/yandex/mobile/ads/impl/ht;Ljava/lang/String;IILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/uu;->h()Ljava/util/List;

    move-result-object v7

    new-instance v10, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v7, v11}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/yandex/mobile/ads/impl/ew0;

    new-instance v15, Lcom/yandex/mobile/ads/impl/xn0;

    iget-object v13, v0, Lcom/yandex/mobile/ads/impl/mo0;->a:Lcom/yandex/mobile/ads/impl/ht;

    invoke-virtual {v11}, Lcom/yandex/mobile/ads/impl/ew0;->f()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11}, Lcom/yandex/mobile/ads/impl/ew0;->h()I

    move-result v16

    invoke-virtual {v11}, Lcom/yandex/mobile/ads/impl/ew0;->d()I

    move-result v17

    invoke-virtual {v11}, Lcom/yandex/mobile/ads/impl/ew0;->e()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v11}, Lcom/yandex/mobile/ads/impl/ew0;->b()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual {v11}, Lcom/yandex/mobile/ads/impl/ew0;->a()Ljava/lang/String;

    move-result-object v11

    move-object v12, v15

    move-object v9, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v11

    invoke-direct/range {v12 .. v19}, Lcom/yandex/mobile/ads/impl/xn0;-><init>(Lcom/yandex/mobile/ads/impl/ht;Ljava/lang/String;IILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/uu;->e()I

    move-result v7

    int-to-long v11, v7

    iget-object v7, v0, Lcom/yandex/mobile/ads/impl/mo0;->e:Lcom/yandex/mobile/ads/impl/yb2;

    iget-wide v13, v0, Lcom/yandex/mobile/ads/impl/mo0;->b:J

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13, v14, v4, v1}, Lcom/yandex/mobile/ads/impl/yb2;->a(JLcom/yandex/mobile/ads/impl/zc2;Lcom/yandex/mobile/ads/impl/mb2;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/mo0;->f:Lcom/yandex/mobile/ads/impl/em0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/mb2;->l()Lcom/yandex/mobile/ads/impl/ub2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ub2;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/yandex/mobile/ads/impl/u70;

    invoke-virtual {v5}, Lcom/yandex/mobile/ads/impl/u70;->a()Ljava/lang/String;

    move-result-object v5

    const-string v9, "bannerId"

    invoke-static {v5, v9}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    check-cast v3, Lcom/yandex/mobile/ads/impl/u70;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/u70;->b()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v16, v9

    goto :goto_4

    :cond_5
    const/16 v16, 0x0

    :goto_4
    new-instance v9, Lcom/yandex/mobile/ads/impl/cm0;

    invoke-virtual/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/mb2;->g()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/uu;->g()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/uu;->b()Ljava/lang/String;

    move-result-object v19

    move-object v13, v9

    move-object/from16 v17, p5

    move-object/from16 v18, p6

    invoke-direct/range {v13 .. v19}, Lcom/yandex/mobile/ads/impl/cm0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v13, Lcom/yandex/mobile/ads/impl/go0;

    invoke-virtual/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/mb2;->l()Lcom/yandex/mobile/ads/impl/ub2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ub2;->a()Ljava/util/List;

    move-result-object v14

    move-object v0, v13

    move-object v1, v7

    move-object v2, v8

    move-object v3, v10

    move-object/from16 v4, p4

    move-object v5, v6

    move-object v6, v9

    move-object/from16 v7, p7

    move-wide v8, v11

    move-object v10, v14

    invoke-direct/range {v0 .. v10}, Lcom/yandex/mobile/ads/impl/go0;-><init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/xn0;Ljava/util/ArrayList;Lcom/yandex/mobile/ads/impl/zc2;Lcom/yandex/mobile/ads/impl/od2;Lcom/yandex/mobile/ads/impl/cm0;Lorg/json/JSONObject;JLjava/util/List;)V

    return-object v13
.end method
