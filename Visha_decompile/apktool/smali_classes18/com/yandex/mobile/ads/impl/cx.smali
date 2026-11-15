.class public final Lcom/yandex/mobile/ads/impl/cx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/rz0;

.field private final b:Lcom/yandex/mobile/ads/impl/zz0;

.field private final c:Lcom/yandex/mobile/ads/impl/ww;

.field private final d:Lcom/yandex/mobile/ads/impl/wz0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/rz0;Lcom/yandex/mobile/ads/impl/zz0;Lcom/yandex/mobile/ads/impl/ww;Lcom/yandex/mobile/ads/impl/wz0;)V
    .locals 1

    const-string v0, "networksValidator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networksMapper"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "alertsMapper"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediationNetworksStatusMapper"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/cx;->a:Lcom/yandex/mobile/ads/impl/rz0;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/cx;->b:Lcom/yandex/mobile/ads/impl/zz0;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/cx;->c:Lcom/yandex/mobile/ads/impl/ww;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/cx;->d:Lcom/yandex/mobile/ads/impl/wz0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/nx;Lcom/yandex/mobile/ads/impl/rx;)Lcom/yandex/mobile/ads/impl/bx;
    .locals 25

    move-object/from16 v0, p0

    const/4 v1, 0x1

    const-string v2, "localData"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/rx;->f()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v2

    :cond_1
    new-instance v12, Lcom/yandex/mobile/ads/impl/bx;

    invoke-virtual/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/nx;->a()Lcom/yandex/mobile/ads/impl/xw;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/nx;->f()Lcom/yandex/mobile/ads/impl/yx;

    move-result-object v5

    new-instance v6, Lcom/yandex/mobile/ads/impl/gw;

    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/rx;->g()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    :goto_0
    if-eqz p2, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/rx;->e()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    :goto_1
    if-eqz p2, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/rx;->d()Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    :goto_2
    invoke-direct {v6, v8, v9, v10}, Lcom/yandex/mobile/ads/impl/gw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/nx;->e()Ljava/util/List;

    move-result-object v8

    iget-object v9, v0, Lcom/yandex/mobile/ads/impl/cx;->b:Lcom/yandex/mobile/ads/impl/zz0;

    invoke-virtual {v9, v2}, Lcom/yandex/mobile/ads/impl/zz0;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_3

    :cond_5
    move-object v8, v9

    :goto_3
    new-instance v9, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v8, v10}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/yandex/mobile/ads/impl/qz0;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    move-object v15, v14

    check-cast v15, Lcom/yandex/mobile/ads/impl/qx;

    invoke-virtual {v15}, Lcom/yandex/mobile/ads/impl/qx;->f()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11}, Lcom/yandex/mobile/ads/impl/qz0;->d()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_5

    :cond_7
    const/4 v14, 0x0

    :goto_5
    check-cast v14, Lcom/yandex/mobile/ads/impl/qx;

    iget-object v7, v0, Lcom/yandex/mobile/ads/impl/cx;->a:Lcom/yandex/mobile/ads/impl/rz0;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Lcom/yandex/mobile/ads/impl/rz0;->a(Lcom/yandex/mobile/ads/impl/qz0;)Z

    move-result v19

    iget-object v7, v0, Lcom/yandex/mobile/ads/impl/cx;->d:Lcom/yandex/mobile/ads/impl/wz0;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "network"

    invoke-static {v11, v7}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/yandex/mobile/ads/impl/qz0;->b()Ljava/util/List;

    move-result-object v7

    instance-of v13, v7, Ljava/util/Collection;

    if-eqz v13, :cond_8

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_8

    goto :goto_9

    :cond_8
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/yandex/mobile/ads/impl/qz0$c;

    invoke-virtual {v13}, Lcom/yandex/mobile/ads/impl/qz0$c;->c()Z

    move-result v13

    if-ne v13, v1, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v11}, Lcom/yandex/mobile/ads/impl/qz0;->b()Ljava/util/List;

    move-result-object v7

    instance-of v13, v7, Ljava/util/Collection;

    if-eqz v13, :cond_a

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_a

    goto :goto_8

    :cond_a
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/yandex/mobile/ads/impl/qz0$c;

    invoke-virtual {v13}, Lcom/yandex/mobile/ads/impl/qz0$c;->c()Z

    move-result v13

    if-eqz v13, :cond_b

    new-instance v7, Lcom/yandex/mobile/ads/impl/rw$a$b;

    sget-object v13, Lcom/yandex/mobile/ads/impl/sz0;->b:Lcom/yandex/mobile/ads/impl/sz0;

    invoke-direct {v7}, Lcom/yandex/mobile/ads/impl/rw$a$b;-><init>()V

    :goto_7
    move-object/from16 v23, v7

    goto :goto_a

    :cond_c
    :goto_8
    sget-object v7, Lcom/yandex/mobile/ads/impl/rw$a$c;->a:Lcom/yandex/mobile/ads/impl/rw$a$c;

    goto :goto_7

    :cond_d
    :goto_9
    sget-object v7, Lcom/yandex/mobile/ads/impl/rw$a$a;->a:Lcom/yandex/mobile/ads/impl/rw$a$a;

    goto :goto_7

    :goto_a
    invoke-virtual {v11}, Lcom/yandex/mobile/ads/impl/qz0;->d()Ljava/lang/String;

    move-result-object v17

    if-eqz v14, :cond_e

    invoke-virtual {v14}, Lcom/yandex/mobile/ads/impl/qx;->e()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v18, v7

    goto :goto_b

    :cond_e
    const/16 v18, 0x0

    :goto_b
    invoke-virtual {v11}, Lcom/yandex/mobile/ads/impl/qz0;->b()Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Li81;->q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/yandex/mobile/ads/impl/qz0$c;

    if-eqz v7, :cond_f

    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/qz0$c;->b()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v20, v7

    goto :goto_c

    :cond_f
    const/16 v20, 0x0

    :goto_c
    if-eqz v14, :cond_10

    invoke-virtual {v14}, Lcom/yandex/mobile/ads/impl/qx;->d()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v21, v7

    goto :goto_d

    :cond_10
    const/16 v21, 0x0

    :goto_d
    invoke-virtual {v11}, Lcom/yandex/mobile/ads/impl/qz0;->e()Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v11}, Lcom/yandex/mobile/ads/impl/qz0;->b()Ljava/util/List;

    move-result-object v7

    new-instance v11, Ljava/util/ArrayList;

    invoke-static {v7, v10}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v11, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/yandex/mobile/ads/impl/qz0$c;

    invoke-virtual {v13}, Lcom/yandex/mobile/ads/impl/qz0$c;->a()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_11
    new-instance v7, Lcom/yandex/mobile/ads/impl/rw;

    move-object/from16 v16, v7

    move-object/from16 v24, v11

    invoke-direct/range {v16 .. v24}, Lcom/yandex/mobile/ads/impl/rw;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/rw$a;Ljava/util/ArrayList;)V

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_12
    new-instance v7, Lcom/yandex/mobile/ads/impl/tw;

    invoke-direct {v7, v9}, Lcom/yandex/mobile/ads/impl/tw;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/nx;->b()Lcom/yandex/mobile/ads/impl/ax;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/nx;->c()Lcom/yandex/mobile/ads/impl/hx;

    move-result-object v9

    if-eqz p2, :cond_13

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/rx;->b()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_14

    :cond_13
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v2

    :cond_14
    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/cx;->c:Lcom/yandex/mobile/ads/impl/ww;

    if-eqz p2, :cond_15

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/rx;->c()Ljava/util/List;

    move-result-object v3

    goto :goto_f

    :cond_15
    const/4 v3, 0x0

    :goto_f
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v3, :cond_1d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_16
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v13, v11

    check-cast v13, Lcom/yandex/mobile/ads/impl/uw;

    invoke-virtual {v13}, Lcom/yandex/mobile/ads/impl/uw;->b()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_17

    invoke-virtual {v13}, Lcom/yandex/mobile/ads/impl/uw;->a()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_16

    :cond_17
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_18
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v0, v10}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v3, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/yandex/mobile/ads/impl/uw;

    new-instance v11, Lcom/yandex/mobile/ads/impl/vw;

    invoke-virtual {v10}, Lcom/yandex/mobile/ads/impl/uw;->b()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10}, Lcom/yandex/mobile/ads/impl/uw;->a()Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Lcom/yandex/mobile/ads/impl/vw$a;->values()[Lcom/yandex/mobile/ads/impl/vw$a;

    move-result-object v15

    array-length v1, v15

    const/16 v17, 0x0

    move-object/from16 p0, v0

    move/from16 v0, v17

    :goto_12
    if-ge v0, v1, :cond_1a

    aget-object v17, v15, v0

    move/from16 v18, v1

    invoke-virtual {v10}, Lcom/yandex/mobile/ads/impl/uw;->c()Ljava/lang/String;

    move-result-object v1

    move-object/from16 p1, v10

    invoke-virtual/range {v17 .. v17}, Lcom/yandex/mobile/ads/impl/vw$a;->a()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    goto :goto_13

    :cond_19
    const/4 v1, 0x1

    add-int/2addr v0, v1

    move-object/from16 v10, p1

    move/from16 v1, v18

    goto :goto_12

    :cond_1a
    const/4 v1, 0x1

    const/16 v17, 0x0

    :goto_13
    if-nez v17, :cond_1b

    sget-object v17, Lcom/yandex/mobile/ads/impl/vw$a;->c:Lcom/yandex/mobile/ads/impl/vw$a;

    :cond_1b
    move-object/from16 v0, v17

    invoke-direct {v11, v13, v14, v0}, Lcom/yandex/mobile/ads/impl/vw;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/vw$a;)V

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    goto :goto_11

    :cond_1c
    move-object v11, v3

    goto :goto_14

    :cond_1d
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v0

    move-object v11, v0

    :goto_14
    move-object v3, v12

    move-object v10, v2

    invoke-direct/range {v3 .. v11}, Lcom/yandex/mobile/ads/impl/bx;-><init>(Lcom/yandex/mobile/ads/impl/xw;Lcom/yandex/mobile/ads/impl/yx;Lcom/yandex/mobile/ads/impl/gw;Lcom/yandex/mobile/ads/impl/tw;Lcom/yandex/mobile/ads/impl/ax;Lcom/yandex/mobile/ads/impl/hx;Ljava/util/List;Ljava/util/List;)V

    return-object v12
.end method
