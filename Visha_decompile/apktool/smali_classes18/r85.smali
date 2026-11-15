.class public final Lr85;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr85$a;,
        Lr85$b;
    }
.end annotation


# instance fields
.field public final a:Lf85;


# direct methods
.method public constructor <init>(Lf85;)V
    .locals 1

    const-string v0, "javaResolverSettings"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr85;->a:Lf85;

    return-void
.end method

.method public static synthetic c(Lr85;Lsm9;Le74;ILkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;ZZILjava/lang/Object;)Lr85$b;
    .locals 9

    and-int/lit8 v0, p7, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v7, v1

    goto :goto_0

    :cond_0
    move v7, p5

    :goto_0
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_1

    move v8, v1

    goto :goto_1

    :cond_1
    move v8, p6

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v2 .. v8}, Lr85;->b(Lsm9;Le74;ILkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;ZZ)Lr85$b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Leh5;Le74;Z)Leh5;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "qualifiers"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Leh5;->L0()Lmgb;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lr85;->d(Lmgb;Le74;IZ)Lr85$a;

    move-result-object p0

    invoke-virtual {p0}, Lr85$a;->b()Leh5;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lsm9;Le74;ILkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;ZZ)Lr85$b;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move/from16 v3, p6

    invoke-static/range {p4 .. p4}, Lrbb;->a(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_1

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    move v7, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v7, v6

    :goto_1
    const/4 v8, 0x0

    if-nez v4, :cond_2

    invoke-virtual/range {p1 .. p1}, Leh5;->G0()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v0, Lr85$b;

    invoke-direct {v0, v8, v6, v5}, Lr85$b;-><init>(Lsm9;IZ)V

    return-object v0

    :cond_2
    invoke-virtual/range {p1 .. p1}, Leh5;->I0()Lsbb;

    move-result-object v4

    invoke-interface {v4}, Lsbb;->c()Lpx0;

    move-result-object v4

    if-nez v4, :cond_3

    new-instance v0, Lr85$b;

    invoke-direct {v0, v8, v6, v5}, Lr85$b;-><init>(Lsm9;IZ)V

    return-object v0

    :cond_3
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v9}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/a;

    invoke-static {v4, v9, v2}, Lwbb;->b(Lpx0;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/a;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;)Lpx0;

    move-result-object v4

    invoke-static {v9, v2}, Lwbb;->d(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/a;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v4, :cond_5

    invoke-interface {v4}, Lpx0;->m()Lsbb;

    move-result-object v10

    if-nez v10, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    move-object v12, v10

    goto :goto_4

    :cond_5
    :goto_3
    invoke-virtual/range {p1 .. p1}, Leh5;->I0()Lsbb;

    move-result-object v10

    goto :goto_2

    :goto_4
    const-string v10, "enhancedClassifier?.typeConstructor ?: constructor"

    invoke-static {v12, v10}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v10, p3, 0x1

    invoke-virtual/range {p1 .. p1}, Leh5;->G0()Ljava/util/List;

    move-result-object v11

    check-cast v11, Ljava/lang/Iterable;

    invoke-interface {v12}, Lsbb;->getParameters()Ljava/util/List;

    move-result-object v13

    const-string v14, "typeConstructor.parameters"

    invoke-static {v13, v14}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Ljava/lang/Iterable;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    new-instance v6, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v11, v5}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-static {v13, v5}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-static {v11, v13}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-direct {v6, v11}, Ljava/util/ArrayList;-><init>(I)V

    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lhcb;

    check-cast v11, Lmcb;

    if-nez v7, :cond_6

    new-instance v5, Lr85$a;

    move/from16 p5, v7

    const/4 v7, 0x0

    invoke-direct {v5, v8, v7}, Lr85$a;-><init>(Leh5;I)V

    goto :goto_6

    :cond_6
    move/from16 p5, v7

    invoke-interface {v11}, Lmcb;->b()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-interface {v11}, Lmcb;->getType()Leh5;

    move-result-object v5

    invoke-virtual {v5}, Leh5;->L0()Lmgb;

    move-result-object v5

    invoke-virtual {v0, v5, v1, v10, v3}, Lr85;->d(Lmgb;Le74;IZ)Lr85$a;

    move-result-object v5

    goto :goto_6

    :cond_7
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/a;

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/a;->d()Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    move-result-object v5

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->FORCE_FLEXIBILITY:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    if-ne v5, v7, :cond_8

    invoke-interface {v11}, Lmcb;->getType()Leh5;

    move-result-object v5

    invoke-virtual {v5}, Leh5;->L0()Lmgb;

    move-result-object v5

    new-instance v7, Lr85$a;

    invoke-static {v5}, Lky3;->c(Leh5;)Lsm9;

    move-result-object v8

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Lsm9;->P0(Z)Lsm9;

    move-result-object v8

    invoke-static {v5}, Lky3;->d(Leh5;)Lsm9;

    move-result-object v1

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lsm9;->P0(Z)Lsm9;

    move-result-object v1

    invoke-static {v8, v1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->d(Lsm9;Lsm9;)Lmgb;

    move-result-object v1

    invoke-direct {v7, v1, v5}, Lr85$a;-><init>(Leh5;I)V

    move-object v5, v7

    goto :goto_6

    :cond_8
    const/4 v5, 0x1

    new-instance v1, Lr85$a;

    const/4 v7, 0x0

    invoke-direct {v1, v7, v5}, Lr85$a;-><init>(Leh5;I)V

    move-object v5, v1

    :goto_6
    invoke-virtual {v5}, Lr85$a;->a()I

    move-result v1

    add-int/2addr v10, v1

    invoke-virtual {v5}, Lr85$a;->b()Leh5;

    move-result-object v1

    const-string v7, "arg.projectionKind"

    if-eqz v1, :cond_9

    invoke-virtual {v5}, Lr85$a;->b()Leh5;

    move-result-object v1

    invoke-interface {v11}, Lmcb;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v5

    invoke-static {v5, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v5, v13}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->f(Leh5;Lkotlin/reflect/jvm/internal/impl/types/Variance;Lhcb;)Lmcb;

    move-result-object v7

    goto :goto_7

    :cond_9
    if-eqz v4, :cond_a

    invoke-interface {v11}, Lmcb;->b()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-interface {v11}, Lmcb;->getType()Leh5;

    move-result-object v1

    const-string v5, "arg.type"

    invoke-static {v1, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v11}, Lmcb;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v5

    invoke-static {v5, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v5, v13}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->f(Leh5;Lkotlin/reflect/jvm/internal/impl/types/Variance;Lhcb;)Lmcb;

    move-result-object v7

    goto :goto_7

    :cond_a
    if-eqz v4, :cond_b

    invoke-static {v13}, Lkotlin/reflect/jvm/internal/impl/types/n;->s(Lhcb;)Lmcb;

    move-result-object v7

    goto :goto_7

    :cond_b
    const/4 v7, 0x0

    :goto_7
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p2

    move/from16 v7, p5

    const/16 v5, 0xa

    const/4 v8, 0x0

    goto/16 :goto_5

    :cond_c
    sub-int v10, v10, p3

    if-nez v4, :cond_e

    if-nez v2, :cond_e

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_9

    :cond_d
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmcb;

    if-nez v3, :cond_e

    goto :goto_8

    :cond_e
    const/4 v7, 0x0

    goto :goto_a

    :cond_f
    :goto_9
    new-instance v0, Lr85$b;

    const/4 v1, 0x0

    const/4 v7, 0x0

    invoke-direct {v0, v7, v10, v1}, Lr85$b;-><init>(Lsm9;IZ)V

    return-object v0

    :goto_a
    invoke-virtual/range {p1 .. p1}, Leh5;->getAnnotations()Lmd;

    move-result-object v1

    invoke-static {}, Lwbb;->c()Lva3;

    move-result-object v3

    if-eqz v4, :cond_10

    goto :goto_b

    :cond_10
    move-object v3, v7

    :goto_b
    invoke-static {}, Lwbb;->g()Lmd;

    move-result-object v4

    if-eqz v2, :cond_11

    move-object v8, v4

    goto :goto_c

    :cond_11
    move-object v8, v7

    :goto_c
    const/4 v4, 0x3

    new-array v4, v4, [Lmd;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v3, v4, v1

    const/4 v3, 0x2

    aput-object v8, v4, v3

    invoke-static {v4}, Ly71;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lwbb;->a(Ljava/util/List;)Lmd;

    move-result-object v3

    invoke-static {v3}, Llbb;->b(Lmd;)Lkotlin/reflect/jvm/internal/impl/types/j;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Leh5;->G0()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    new-instance v13, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v6, v8}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-static {v3, v8}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-direct {v13, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmcb;

    check-cast v3, Lmcb;

    if-nez v3, :cond_12

    goto :goto_e

    :cond_12
    move-object v6, v3

    :goto_e
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_13
    if-eqz v2, :cond_14

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :goto_f
    move v14, v3

    goto :goto_10

    :cond_14
    invoke-virtual/range {p1 .. p1}, Leh5;->J0()Z

    move-result v3

    goto :goto_f

    :goto_10
    const/16 v16, 0x10

    const/16 v17, 0x0

    const/4 v15, 0x0

    invoke-static/range {v11 .. v17}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->j(Lkotlin/reflect/jvm/internal/impl/types/j;Lsbb;Ljava/util/List;ZLkotlin/reflect/jvm/internal/impl/types/checker/c;ILjava/lang/Object;)Lsm9;

    move-result-object v3

    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/a;->b()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-virtual {v0, v3}, Lr85;->e(Lsm9;)Lsm9;

    move-result-object v3

    :cond_15
    if-eqz v2, :cond_16

    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/a;->e()Z

    move-result v0

    if-eqz v0, :cond_16

    move v5, v1

    :cond_16
    new-instance v0, Lr85$b;

    invoke-direct {v0, v3, v10, v5}, Lr85$b;-><init>(Lsm9;IZ)V

    return-object v0
.end method

.method public final d(Lmgb;Le74;IZ)Lr85$a;
    .locals 11

    invoke-static {p1}, Lfh5;->a(Leh5;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance p0, Lr85$a;

    const/4 p1, 0x1

    invoke-direct {p0, v1, p1}, Lr85$a;-><init>(Leh5;I)V

    return-object p0

    :cond_0
    instance-of v0, p1, Lfy3;

    if-eqz v0, :cond_c

    instance-of v0, p1, Lco8;

    move-object v9, p1

    check-cast v9, Lfy3;

    invoke-virtual {v9}, Lfy3;->Q0()Lsm9;

    move-result-object v3

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;->FLEXIBLE_LOWER:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;

    move-object v2, p0

    move-object v4, p2

    move v5, p3

    move v7, v0

    move v8, p4

    invoke-virtual/range {v2 .. v8}, Lr85;->b(Lsm9;Le74;ILkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;ZZ)Lr85$b;

    move-result-object v10

    invoke-virtual {v9}, Lfy3;->R0()Lsm9;

    move-result-object v3

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;->FLEXIBLE_UPPER:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;

    invoke-virtual/range {v2 .. v8}, Lr85;->b(Lsm9;Le74;ILkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;ZZ)Lr85$b;

    move-result-object p0

    invoke-virtual {v10}, Lr85$b;->b()I

    invoke-virtual {p0}, Lr85$b;->b()I

    invoke-virtual {v10}, Lr85$b;->c()Lsm9;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lr85$b;->c()Lsm9;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v10}, Lr85$b;->a()Z

    move-result p2

    if-nez p2, :cond_8

    invoke-virtual {p0}, Lr85$b;->a()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_5

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawTypeImpl;

    invoke-virtual {v10}, Lr85$b;->c()Lsm9;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-virtual {v9}, Lfy3;->Q0()Lsm9;

    move-result-object p1

    :cond_3
    invoke-virtual {p0}, Lr85$b;->c()Lsm9;

    move-result-object p0

    if-nez p0, :cond_4

    invoke-virtual {v9}, Lfy3;->R0()Lsm9;

    move-result-object p0

    :cond_4
    invoke-direct {v1, p1, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawTypeImpl;-><init>(Lsm9;Lsm9;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v10}, Lr85$b;->c()Lsm9;

    move-result-object p1

    if-nez p1, :cond_6

    invoke-virtual {v9}, Lfy3;->Q0()Lsm9;

    move-result-object p1

    :cond_6
    invoke-virtual {p0}, Lr85$b;->c()Lsm9;

    move-result-object p0

    if-nez p0, :cond_7

    invoke-virtual {v9}, Lfy3;->R0()Lsm9;

    move-result-object p0

    :cond_7
    invoke-static {p1, p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->d(Lsm9;Lsm9;)Lmgb;

    move-result-object v1

    goto :goto_1

    :cond_8
    :goto_0
    invoke-virtual {p0}, Lr85$b;->c()Lsm9;

    move-result-object p0

    if-eqz p0, :cond_a

    invoke-virtual {v10}, Lr85$b;->c()Lsm9;

    move-result-object p2

    if-nez p2, :cond_9

    move-object p2, p0

    :cond_9
    invoke-static {p2, p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->d(Lsm9;Lsm9;)Lmgb;

    move-result-object p0

    if-nez p0, :cond_b

    :cond_a
    invoke-virtual {v10}, Lr85$b;->c()Lsm9;

    move-result-object p0

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    :cond_b
    invoke-static {p1, p0}, Lddb;->d(Lmgb;Leh5;)Lmgb;

    move-result-object v1

    :goto_1
    new-instance p0, Lr85$a;

    invoke-virtual {v10}, Lr85$b;->b()I

    move-result p1

    invoke-direct {p0, v1, p1}, Lr85$a;-><init>(Leh5;I)V

    goto :goto_3

    :cond_c
    instance-of v0, p1, Lsm9;

    if-eqz v0, :cond_e

    move-object v2, p1

    check-cast v2, Lsm9;

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;->INFLEXIBLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move v7, p4

    invoke-static/range {v1 .. v9}, Lr85;->c(Lr85;Lsm9;Le74;ILkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;ZZILjava/lang/Object;)Lr85$b;

    move-result-object p0

    new-instance p2, Lr85$a;

    invoke-virtual {p0}, Lr85$b;->a()Z

    move-result p3

    if-eqz p3, :cond_d

    invoke-virtual {p0}, Lr85$b;->c()Lsm9;

    move-result-object p3

    invoke-static {p1, p3}, Lddb;->d(Lmgb;Leh5;)Lmgb;

    move-result-object p1

    goto :goto_2

    :cond_d
    invoke-virtual {p0}, Lr85$b;->c()Lsm9;

    move-result-object p1

    :goto_2
    invoke-virtual {p0}, Lr85$b;->b()I

    move-result p0

    invoke-direct {p2, p1, p0}, Lr85$a;-><init>(Leh5;I)V

    move-object p0, p2

    :goto_3
    return-object p0

    :cond_e
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public final e(Lsm9;)Lsm9;
    .locals 0

    iget-object p0, p0, Lr85;->a:Lf85;

    invoke-interface {p0}, Lf85;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    invoke-static {p1, p0}, Ltu9;->h(Lsm9;Z)Lsm9;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, La27;

    invoke-direct {p0, p1}, La27;-><init>(Lsm9;)V

    :goto_0
    return-object p0
.end method
