.class public Liu7;
.super Lhu7;
.source "SourceFile"


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lhu7;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public b([Ljava/lang/Class;[I)V
    .locals 6

    array-length v0, p1

    invoke-virtual {p0}, Lhu7;->j()[[Ljava/lang/Class;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    move v3, v2

    :goto_0
    if-ltz v3, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3}, Lhu7;->i(I)[I

    move-result-object v3

    invoke-virtual {p0, v0, v4, v3}, Liu7;->n(I[Ljava/lang/Class;[I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 v3, v0, 0x1

    array-length v4, v1

    if-ge v3, v4, :cond_2

    aget-object v4, v1, v3

    if-eqz v4, :cond_2

    invoke-virtual {p0, v3}, Lhu7;->i(I)[I

    move-result-object v5

    invoke-virtual {p0, v0, v4, v5}, Liu7;->n(I[Ljava/lang/Class;[I)V

    :cond_2
    :goto_2
    array-length v4, v1

    if-ge v3, v4, :cond_3

    invoke-virtual {p0, v3, p1, p2}, Liu7;->n(I[Ljava/lang/Class;[I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    if-lez v0, :cond_4

    invoke-virtual {p0, v2, p1, p2}, Liu7;->n(I[Ljava/lang/Class;[I)V

    :cond_4
    return-void
.end method

.method public f(Ljava/util/List;Lfreemarker/ext/beans/b;)Lf96;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-nez p1, :cond_0

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lhu7;->j()[[Ljava/lang/Class;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    add-int/lit8 v6, v3, 0x1

    array-length v7, v4

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v9, 0x0

    :goto_1
    if-ltz v6, :cond_7

    aget-object v10, v4, v6

    if-nez v10, :cond_1

    if-nez v6, :cond_5

    sget-object v0, Ls93;->d:Ls93;

    return-object v0

    :cond_1
    invoke-virtual {v0, v6}, Lhu7;->i(I)[I

    move-result-object v9

    sget-object v11, Lhu7;->g:[I

    if-ne v9, v11, :cond_2

    const/4 v9, 0x0

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v12, 0x0

    move v13, v12

    :goto_2
    if-ge v13, v3, :cond_7

    if-ge v13, v6, :cond_3

    move v14, v13

    goto :goto_3

    :cond_3
    add-int/lit8 v14, v6, -0x1

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lzfa;

    aget-object v7, v10, v14

    if-eqz v9, :cond_4

    aget v14, v9, v14

    goto :goto_4

    :cond_4
    move v14, v12

    :goto_4
    invoke-virtual {v1, v15, v7, v14}, Lfreemarker/ext/beans/b;->M(Lzfa;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v7

    sget-object v14, Lhc7;->d:Ljava/lang/Object;

    if-ne v7, v14, :cond_6

    :cond_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_6
    aput-object v7, v5, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {v0, v5, v8}, Lhu7;->g([Ljava/lang/Object;Z)Le96;

    move-result-object v3

    instance-of v4, v3, Lqq0;

    if-eqz v4, :cond_b

    check-cast v3, Lqq0;

    invoke-virtual {v0, v5, v2, v3, v1}, Liu7;->m([Ljava/lang/Object;Ljava/util/List;Lqq0;Lfreemarker/ext/beans/b;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, [Ljava/lang/Object;

    if-eqz v2, :cond_a

    check-cast v1, [Ljava/lang/Object;

    iget-boolean v2, v0, Lhu7;->f:Z

    if-eqz v2, :cond_8

    if-eqz v9, :cond_9

    invoke-virtual {v3}, Lqq0;->b()[Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v9}, Lhu7;->d([Ljava/lang/Object;[Ljava/lang/Class;[I)V

    goto :goto_5

    :cond_8
    invoke-virtual {v3}, Lqq0;->b()[Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v1}, Lfreemarker/ext/beans/b;->k([Ljava/lang/Class;[Ljava/lang/Object;)V

    :cond_9
    :goto_5
    new-instance v0, Lan6;

    invoke-direct {v0, v3, v1}, Lan6;-><init>(Lqq0;[Ljava/lang/Object;)V

    return-object v0

    :cond_a
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ls93;->f(I)Ls93;

    move-result-object v0

    return-object v0

    :cond_b
    check-cast v3, Lo93;

    invoke-static {v3, v5}, Ls93;->b(Lo93;[Ljava/lang/Object;)Lf96;

    move-result-object v0

    return-object v0
.end method

.method public l(Lqq0;)[Ljava/lang/Class;
    .locals 1

    invoke-virtual {p1}, Lqq0;->b()[Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Class;

    array-length p1, p0

    add-int/lit8 p1, p1, -0x1

    aget-object v0, p0, p1

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    aput-object v0, p0, p1

    return-object p0

    :cond_0
    new-instance p0, Lfreemarker/core/BugException;

    const-string p1, "Only varargs methods should be handled here"

    invoke-direct {p0, p1}, Lfreemarker/core/BugException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final m([Ljava/lang/Object;Ljava/util/List;Lqq0;Lfreemarker/ext/beans/b;)Ljava/lang/Object;
    .locals 6

    invoke-virtual {p3}, Lqq0;->b()[Ljava/lang/Class;

    move-result-object p0

    array-length p3, p0

    add-int/lit8 v0, p3, -0x1

    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    array-length v1, p1

    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, p3, :cond_2

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p1, v3, p3, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int p1, v1, v0

    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzfa;

    invoke-virtual {p4, v3, p0}, Lfreemarker/ext/beans/b;->L(Lzfa;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    sget-object v5, Lhc7;->d:Ljava/lang/Object;

    if-ne v3, v5, :cond_0

    new-instance p0, Ljava/lang/Integer;

    add-int/2addr v2, v4

    invoke-direct {p0, v2}, Ljava/lang/Integer;-><init>(I)V

    return-object p0

    :cond_0
    sub-int v5, v2, v0

    invoke-static {p1, v5, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    aput-object p1, p3, v0

    return-object p3

    :cond_2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lzfa;

    invoke-virtual {p4, p2, p0}, Lfreemarker/ext/beans/b;->L(Lzfa;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    sget-object p4, Lhc7;->d:Ljava/lang/Object;

    if-ne p2, p4, :cond_3

    new-instance p0, Ljava/lang/Integer;

    invoke-direct {p0, p3}, Ljava/lang/Integer;-><init>(I)V

    return-object p0

    :cond_3
    invoke-static {p0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v3, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    aput-object p0, p1, v0

    return-object p1
.end method

.method public final n(I[Ljava/lang/Class;[I)V
    .locals 7

    invoke-virtual {p0}, Lhu7;->j()[[Ljava/lang/Class;

    move-result-object v0

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v1, v0

    array-length v2, p2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    aget-object v6, p2, v4

    invoke-virtual {p0, v5, v6}, Lhu7;->e(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-le v1, v2, :cond_2

    add-int/lit8 v3, v2, -0x1

    aget-object p2, p2, v3

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {p0, v3, p2}, Lhu7;->e(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-boolean p2, p0, Lhu7;->f:Z

    if-eqz p2, :cond_3

    invoke-virtual {p0, p1, p3}, Lhu7;->k(I[I)V

    :cond_3
    return-void
.end method
