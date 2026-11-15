.class public final Lzg5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/moshi/e$e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Type;Ljava/util/Set;Lcom/squareup/moshi/j;)Lcom/squareup/moshi/e;
    .locals 26

    move-object/from16 v1, p1

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    const-string v3, "type"

    invoke-static {v1, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "annotations"

    invoke-static {v0, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "moshi"

    invoke-static {v2, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    return-object v3

    :cond_0
    invoke-static/range {p1 .. p1}, Lv0d;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v3

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v3

    :cond_2
    invoke-static {}, Lah5;->b()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3

    return-object v3

    :cond_3
    invoke-static {v4}, Lwkb;->j(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-object v3

    :cond_4
    :try_start_0
    invoke-static {v2, v1, v4}, Lwkb;->d(Lcom/squareup/moshi/j;Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/squareup/moshi/e;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_5

    return-object v0

    :catch_0
    move-exception v0

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/ClassNotFoundException;

    if-eqz v0, :cond_2c

    :cond_5
    invoke-virtual {v4}, Ljava/lang/Class;->isLocalClass()Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-static {v4}, Led5;->e(Ljava/lang/Class;)Lde5;

    move-result-object v0

    invoke-interface {v0}, Lde5;->isAbstract()Z

    move-result v5

    if-nez v5, :cond_2a

    invoke-interface {v0}, Lde5;->g()Z

    move-result v5

    if-nez v5, :cond_29

    invoke-interface {v0}, Lde5;->m()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_28

    invoke-interface {v0}, Lde5;->i()Z

    move-result v5

    if-nez v5, :cond_27

    invoke-static {v0}, Lfe5;->b(Lde5;)Lle5;

    move-result-object v5

    if-nez v5, :cond_6

    return-object v3

    :cond_6
    invoke-interface {v5}, Lbe5;->getParameters()Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    const/16 v7, 0xa

    invoke-static {v6, v7}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-static {v8}, Lky5;->g(I)I

    move-result v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Lwn8;->d(II)I

    move-result v8

    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9, v8}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Lkotlin/reflect/KParameter;

    invoke-interface {v10}, Lkotlin/reflect/KParameter;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_7
    const/4 v6, 0x1

    invoke-static {v5, v6}, Lce5;->b(Lbe5;Z)V

    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0}, Lfe5;->a(Lde5;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v15, v10

    check-cast v15, Lcf5;

    invoke-interface {v15}, Lbe5;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkotlin/reflect/KParameter;

    invoke-static {v15, v6}, Lce5;->b(Lbe5;Z)V

    invoke-interface {v15}, Lzd5;->getAnnotations()Ljava/util/List;

    move-result-object v12

    check-cast v12, Ljava/lang/Iterable;

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, Ljava/lang/annotation/Annotation;

    instance-of v14, v14, Lv95;

    if-eqz v14, :cond_8

    goto :goto_2

    :cond_9
    move-object v13, v3

    :goto_2
    check-cast v13, Lv95;

    invoke-interface {v15}, Lzd5;->getAnnotations()Ljava/util/List;

    move-result-object v12

    check-cast v12, Ljava/util/Collection;

    invoke-static {v12}, Li81;->e1(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v12

    if-eqz v10, :cond_c

    move-object v14, v12

    check-cast v14, Ljava/util/Collection;

    invoke-interface {v10}, Lzd5;->getAnnotations()Ljava/util/List;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v14, v3}, Ld81;->C(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    if-nez v13, :cond_c

    invoke-interface {v10}, Lzd5;->getAnnotations()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, Ljava/lang/annotation/Annotation;

    instance-of v14, v14, Lv95;

    if-eqz v14, :cond_a

    goto :goto_3

    :cond_b
    const/4 v13, 0x0

    :goto_3
    check-cast v13, Lv95;

    :cond_c
    invoke-static {v15}, Lpq8;->b(Laf5;)Ljava/lang/reflect/Field;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    goto :goto_4

    :cond_d
    move v3, v11

    :goto_4
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v3

    if-eqz v3, :cond_10

    if-eqz v10, :cond_f

    invoke-interface {v10}, Lkotlin/reflect/KParameter;->f()Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_5

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No default value for transient constructor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    :goto_5
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_10
    if-eqz v13, :cond_12

    invoke-interface {v13}, Lv95;->ignore()Z

    move-result v3

    if-ne v3, v6, :cond_12

    if-eqz v10, :cond_f

    invoke-interface {v10}, Lkotlin/reflect/KParameter;->f()Z

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_5

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No default value for ignored constructor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    if-eqz v10, :cond_14

    invoke-interface {v10}, Lkotlin/reflect/KParameter;->getType()Lff5;

    move-result-object v3

    invoke-interface {v15}, Lbe5;->getReturnType()Lff5;

    move-result-object v14

    invoke-static {v3, v14}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    goto :goto_6

    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v15}, Lbe5;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' has a constructor parameter of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Ly45;->g(Ljava/lang/Object;)V

    invoke-interface {v10}, Lkotlin/reflect/KParameter;->getType()Lff5;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " but a property of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v15}, Lbe5;->getReturnType()Lff5;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    :goto_6
    instance-of v3, v15, Lxe5;

    if-nez v3, :cond_15

    if-eqz v10, :cond_f

    :cond_15
    if-eqz v13, :cond_18

    invoke-interface {v13}, Lv95;->name()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_18

    const-string v13, "\u0000"

    invoke-static {v3, v13}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_16

    goto :goto_7

    :cond_16
    const/4 v3, 0x0

    :goto_7
    if-nez v3, :cond_17

    goto :goto_9

    :cond_17
    :goto_8
    move-object v13, v3

    goto :goto_a

    :cond_18
    :goto_9
    invoke-interface {v15}, Lbe5;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    :goto_a
    invoke-interface {v15}, Lbe5;->getReturnType()Lff5;

    move-result-object v3

    invoke-interface {v3}, Lff5;->j()Lhe5;

    move-result-object v3

    instance-of v14, v3, Lde5;

    if-eqz v14, :cond_1e

    check-cast v3, Lde5;

    invoke-interface {v3}, Lde5;->s()Z

    move-result v14

    if-eqz v14, :cond_1d

    invoke-static {v3}, Led5;->b(Lde5;)Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v15}, Lbe5;->getReturnType()Lff5;

    move-result-object v14

    invoke-interface {v14}, Lff5;->l()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_19

    goto :goto_d

    :cond_19
    invoke-interface {v15}, Lbe5;->getReturnType()Lff5;

    move-result-object v14

    invoke-interface {v14}, Lff5;->l()Ljava/util/List;

    move-result-object v14

    check-cast v14, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_b
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljf5;

    invoke-virtual/range {v16 .. v16}, Ljf5;->c()Lff5;

    move-result-object v16

    if-eqz v16, :cond_1a

    invoke-static/range {v16 .. v16}, Lpq8;->f(Lff5;)Ljava/lang/reflect/Type;

    move-result-object v16

    move-object/from16 v7, v16

    goto :goto_c

    :cond_1a
    const/4 v7, 0x0

    :goto_c
    if-eqz v7, :cond_1b

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1b
    const/16 v7, 0xa

    goto :goto_b

    :cond_1c
    new-array v7, v11, [Ljava/lang/reflect/Type;

    invoke-interface {v6, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/reflect/Type;

    array-length v7, v6

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/reflect/Type;

    invoke-static {v3, v6}, Lkdb;->j(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v3

    goto :goto_d

    :cond_1d
    invoke-interface {v15}, Lbe5;->getReturnType()Lff5;

    move-result-object v3

    invoke-static {v3}, Lpq8;->f(Lff5;)Ljava/lang/reflect/Type;

    move-result-object v3

    goto :goto_d

    :cond_1e
    instance-of v3, v3, Lhf5;

    if-eqz v3, :cond_20

    invoke-interface {v15}, Lbe5;->getReturnType()Lff5;

    move-result-object v3

    invoke-static {v3}, Lpq8;->f(Lff5;)Ljava/lang/reflect/Type;

    move-result-object v3

    :goto_d
    invoke-static {v1, v4, v3}, Lwkb;->q(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    check-cast v12, Ljava/util/Collection;

    new-array v6, v11, [Ljava/lang/annotation/Annotation;

    invoke-interface {v12, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/annotation/Annotation;

    invoke-static {v6}, Lwkb;->l([Ljava/lang/annotation/Annotation;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v15}, Lbe5;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v3, v6, v7}, Lcom/squareup/moshi/j;->f(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lcom/squareup/moshi/e;

    move-result-object v14

    invoke-interface {v15}, Lbe5;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lyg5$a;

    const-string v7, "adapter"

    invoke-static {v14, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "null cannot be cast to non-null type kotlin.reflect.KProperty1<kotlin.Any, kotlin.Any?>"

    invoke-static {v15, v7}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v10, :cond_1f

    invoke-interface {v10}, Lkotlin/reflect/KParameter;->getIndex()I

    move-result v7

    :goto_e
    move/from16 v17, v7

    goto :goto_f

    :cond_1f
    const/4 v7, -0x1

    goto :goto_e

    :goto_f
    move-object v12, v6

    move-object/from16 v16, v10

    invoke-direct/range {v12 .. v17}, Lyg5$a;-><init>(Ljava/lang/String;Lcom/squareup/moshi/e;Lcf5;Lkotlin/reflect/KParameter;I)V

    invoke-interface {v8, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/16 v7, 0xa

    goto/16 :goto_1

    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not possible!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Lbe5;->getParameters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/KParameter;

    invoke-interface {v2}, Lkotlin/reflect/KParameter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8}, Lccb;->d(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyg5$a;

    if-nez v3, :cond_23

    invoke-interface {v2}, Lkotlin/reflect/KParameter;->f()Z

    move-result v4

    if-eqz v4, :cond_22

    goto :goto_11

    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No property for required constructor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_23
    :goto_11
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_24
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    move/from16 v23, v1

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Lyg5$a;

    add-int/lit8 v1, v23, 0x1

    const/16 v24, 0xf

    const/16 v25, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v18 .. v25}, Lyg5$a;->b(Lyg5$a;Ljava/lang/String;Lcom/squareup/moshi/e;Lcf5;Lkotlin/reflect/KParameter;IILjava/lang/Object;)Lyg5$a;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_25
    invoke-static {v0}, Li81;->l0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyg5$a;

    invoke-virtual {v4}, Lyg5$a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_26
    new-array v2, v11, [Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-static {v2}, Lcom/squareup/moshi/JsonReader$b;->a([Ljava/lang/String;)Lcom/squareup/moshi/JsonReader$b;

    move-result-object v2

    new-instance v3, Lyg5;

    const-string v4, "options"

    invoke-static {v2, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v5, v0, v1, v2}, Lyg5;-><init>(Lle5;Ljava/util/List;Ljava/util/List;Lcom/squareup/moshi/JsonReader$b;)V

    invoke-virtual {v3}, Lcom/squareup/moshi/e;->nullSafe()Lcom/squareup/moshi/e;

    move-result-object v0

    return-object v0

    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot reflectively serialize sealed class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Please register an adapter."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot serialize object declaration "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot serialize inner class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot serialize abstract class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot serialize local class or object expression "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2c
    throw v5
.end method
