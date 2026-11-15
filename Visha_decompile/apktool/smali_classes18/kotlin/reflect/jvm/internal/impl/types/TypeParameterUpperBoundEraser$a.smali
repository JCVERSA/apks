.class public final Lkotlin/reflect/jvm/internal/impl/types/TypeParameterUpperBoundEraser$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/types/TypeParameterUpperBoundEraser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeParameterUpperBoundEraser$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Leh5;Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;Ljava/util/Set;Z)Leh5;
    .locals 16

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const-string v2, "<this>"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "substitutor"

    invoke-static {v0, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Leh5;->L0()Lmgb;

    move-result-object v2

    instance-of v4, v2, Lfy3;

    const-string v6, "argument.type"

    const-string v9, "type"

    const/16 v10, 0xa

    const-string v11, "constructor.parameters"

    const/4 v12, 0x0

    if-eqz v4, :cond_e

    move-object v4, v2

    check-cast v4, Lfy3;

    invoke-virtual {v4}, Lfy3;->Q0()Lsm9;

    move-result-object v13

    invoke-virtual {v13}, Leh5;->I0()Lsbb;

    move-result-object v14

    invoke-interface {v14}, Lsbb;->getParameters()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_6

    invoke-virtual {v13}, Leh5;->I0()Lsbb;

    move-result-object v14

    invoke-interface {v14}, Lsbb;->c()Lpx0;

    move-result-object v14

    if-nez v14, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v13}, Leh5;->I0()Lsbb;

    move-result-object v14

    invoke-interface {v14}, Lsbb;->getParameters()Ljava/util/List;

    move-result-object v14

    invoke-static {v14, v11}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v14, Ljava/lang/Iterable;

    new-instance v15, Ljava/util/ArrayList;

    invoke-static {v14, v10}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v15, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lhcb;

    invoke-virtual/range {p1 .. p1}, Leh5;->G0()Ljava/util/List;

    move-result-object v8

    invoke-interface {v14}, Lhcb;->getIndex()I

    move-result v10

    invoke-static {v8, v10}, Li81;->r0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmcb;

    if-eqz p4, :cond_1

    if-eqz v8, :cond_1

    invoke-interface {v8}, Lmcb;->getType()Leh5;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-static {v10, v9}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->e(Leh5;)Z

    move-result v10

    if-nez v10, :cond_1

    goto :goto_2

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x1

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    :goto_1
    if-eqz v8, :cond_3

    if-nez v10, :cond_3

    invoke-virtual/range {p2 .. p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->j()Lkotlin/reflect/jvm/internal/impl/types/l;

    move-result-object v10

    invoke-interface {v8}, Lmcb;->getType()Leh5;

    move-result-object v5

    invoke-static {v5, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Lkotlin/reflect/jvm/internal/impl/types/l;->e(Leh5;)Lmcb;

    move-result-object v5

    if-nez v5, :cond_4

    :cond_3
    new-instance v8, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    invoke-direct {v8, v14}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;-><init>(Lhcb;)V

    :cond_4
    :goto_2
    invoke-interface {v15, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/16 v10, 0xa

    goto :goto_0

    :cond_5
    const/4 v5, 0x2

    invoke-static {v13, v15, v12, v5, v12}, Lscb;->f(Lsm9;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/j;ILjava/lang/Object;)Lsm9;

    move-result-object v13

    :cond_6
    :goto_3
    invoke-virtual {v4}, Lfy3;->R0()Lsm9;

    move-result-object v4

    invoke-virtual {v4}, Leh5;->I0()Lsbb;

    move-result-object v5

    invoke-interface {v5}, Lsbb;->getParameters()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d

    invoke-virtual {v4}, Leh5;->I0()Lsbb;

    move-result-object v5

    invoke-interface {v5}, Lsbb;->c()Lpx0;

    move-result-object v5

    if-nez v5, :cond_7

    goto/16 :goto_7

    :cond_7
    invoke-virtual {v4}, Leh5;->I0()Lsbb;

    move-result-object v5

    invoke-interface {v5}, Lsbb;->getParameters()Ljava/util/List;

    move-result-object v5

    invoke-static {v5, v11}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v5, v8}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lhcb;

    invoke-virtual/range {p1 .. p1}, Leh5;->G0()Ljava/util/List;

    move-result-object v10

    invoke-interface {v8}, Lhcb;->getIndex()I

    move-result v11

    invoke-static {v10, v11}, Li81;->r0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmcb;

    if-eqz p4, :cond_8

    if-eqz v10, :cond_8

    invoke-interface {v10}, Lmcb;->getType()Leh5;

    move-result-object v11

    if-eqz v11, :cond_8

    invoke-static {v11, v9}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->e(Leh5;)Z

    move-result v11

    if-nez v11, :cond_8

    goto :goto_6

    :cond_8
    if-eqz v1, :cond_9

    invoke-interface {v1, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    const/4 v11, 0x1

    goto :goto_5

    :cond_9
    const/4 v11, 0x0

    :goto_5
    if-eqz v10, :cond_a

    if-nez v11, :cond_a

    invoke-virtual/range {p2 .. p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->j()Lkotlin/reflect/jvm/internal/impl/types/l;

    move-result-object v11

    invoke-interface {v10}, Lmcb;->getType()Leh5;

    move-result-object v14

    invoke-static {v14, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11, v14}, Lkotlin/reflect/jvm/internal/impl/types/l;->e(Leh5;)Lmcb;

    move-result-object v11

    if-nez v11, :cond_b

    :cond_a
    new-instance v10, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    invoke-direct {v10, v8}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;-><init>(Lhcb;)V

    :cond_b
    :goto_6
    invoke-interface {v7, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_c
    const/4 v8, 0x2

    invoke-static {v4, v7, v12, v8, v12}, Lscb;->f(Lsm9;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/j;ILjava/lang/Object;)Lsm9;

    move-result-object v4

    :cond_d
    :goto_7
    invoke-static {v13, v4}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->d(Lsm9;Lsm9;)Lmgb;

    move-result-object v1

    goto/16 :goto_c

    :cond_e
    instance-of v4, v2, Lsm9;

    if-eqz v4, :cond_16

    move-object v4, v2

    check-cast v4, Lsm9;

    invoke-virtual {v4}, Leh5;->I0()Lsbb;

    move-result-object v5

    invoke-interface {v5}, Lsbb;->getParameters()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_15

    invoke-virtual {v4}, Leh5;->I0()Lsbb;

    move-result-object v5

    invoke-interface {v5}, Lsbb;->c()Lpx0;

    move-result-object v5

    if-nez v5, :cond_f

    goto/16 :goto_b

    :cond_f
    invoke-virtual {v4}, Leh5;->I0()Lsbb;

    move-result-object v5

    invoke-interface {v5}, Lsbb;->getParameters()Ljava/util/List;

    move-result-object v5

    invoke-static {v5, v11}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v5, v8}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lhcb;

    invoke-virtual/range {p1 .. p1}, Leh5;->G0()Ljava/util/List;

    move-result-object v10

    invoke-interface {v8}, Lhcb;->getIndex()I

    move-result v11

    invoke-static {v10, v11}, Li81;->r0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmcb;

    if-eqz p4, :cond_10

    if-eqz v10, :cond_10

    invoke-interface {v10}, Lmcb;->getType()Leh5;

    move-result-object v11

    if-eqz v11, :cond_10

    invoke-static {v11, v9}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->e(Leh5;)Z

    move-result v11

    if-nez v11, :cond_10

    goto :goto_a

    :cond_10
    if-eqz v1, :cond_11

    invoke-interface {v1, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    const/4 v11, 0x1

    goto :goto_9

    :cond_11
    const/4 v11, 0x0

    :goto_9
    if-eqz v10, :cond_12

    if-nez v11, :cond_12

    invoke-virtual/range {p2 .. p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->j()Lkotlin/reflect/jvm/internal/impl/types/l;

    move-result-object v11

    invoke-interface {v10}, Lmcb;->getType()Leh5;

    move-result-object v13

    invoke-static {v13, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11, v13}, Lkotlin/reflect/jvm/internal/impl/types/l;->e(Leh5;)Lmcb;

    move-result-object v11

    if-nez v11, :cond_13

    :cond_12
    new-instance v10, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    invoke-direct {v10, v8}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;-><init>(Lhcb;)V

    :cond_13
    :goto_a
    invoke-interface {v7, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_14
    const/4 v8, 0x2

    invoke-static {v4, v7, v12, v8, v12}, Lscb;->f(Lsm9;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/j;ILjava/lang/Object;)Lsm9;

    move-result-object v1

    goto :goto_c

    :cond_15
    :goto_b
    move-object v1, v4

    :goto_c
    invoke-static {v1, v2}, Lddb;->b(Lmgb;Leh5;)Lmgb;

    move-result-object v1

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-virtual {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->n(Leh5;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Leh5;

    move-result-object v0

    const-string v1, "substitutor.safeSubstitu\u2026s, Variance.OUT_VARIANCE)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_16
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method
