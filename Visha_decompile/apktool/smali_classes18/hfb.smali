.class public abstract Lhfb;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/String;)B
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lhfb;->b(Ljava/lang/String;)Lzdb;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lzdb;->g()B

    move-result p0

    return p0

    :cond_0
    invoke-static {p0}, Lf1a;->q(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public static final b(Ljava/lang/String;)Lzdb;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lhfb;->c(Ljava/lang/String;I)Lzdb;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Ljava/lang/String;I)Lzdb;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lhfb;->f(Ljava/lang/String;I)Lkeb;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lkeb;->g()I

    move-result p0

    const/16 v0, 0xff

    invoke-static {v0}, Lkeb;->b(I)I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v0

    if-lez v0, :cond_0

    return-object p1

    :cond_0
    int-to-byte p0, p0

    invoke-static {p0}, Lzdb;->b(B)B

    move-result p0

    invoke-static {p0}, Lzdb;->a(B)Lzdb;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method public static final d(Ljava/lang/String;)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lhfb;->e(Ljava/lang/String;)Lkeb;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lkeb;->g()I

    move-result p0

    return p0

    :cond_0
    invoke-static {p0}, Lf1a;->q(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public static final e(Ljava/lang/String;)Lkeb;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lhfb;->f(Ljava/lang/String;I)Lkeb;

    move-result-object p0

    return-object p0
.end method

.method public static final f(Ljava/lang/String;I)Lkeb;
    .locals 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/text/a;->a(I)I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    invoke-static {v3, v4}, Ly45;->l(II)I

    move-result v4

    if-gez v4, :cond_2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_1

    const/16 v5, 0x2b

    if-eq v3, v5, :cond_3

    :cond_1
    return-object v1

    :cond_2
    move v4, v2

    :cond_3
    invoke-static {p1}, Lkeb;->b(I)I

    move-result v3

    const v5, 0x71c71c7

    move v6, v5

    :goto_0
    if-ge v4, v0, :cond_8

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7, p1}, Lkotlin/text/a;->b(CI)I

    move-result v7

    if-gez v7, :cond_4

    return-object v1

    :cond_4
    invoke-static {v2, v6}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v8

    if-lez v8, :cond_6

    if-ne v6, v5, :cond_5

    const/4 v6, -0x1

    invoke-static {v6, v3}, Ljava/lang/Integer;->divideUnsigned(II)I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v8

    if-lez v8, :cond_6

    :cond_5
    return-object v1

    :cond_6
    mul-int/2addr v2, v3

    invoke-static {v2}, Lkeb;->b(I)I

    move-result v2

    invoke-static {v7}, Lkeb;->b(I)I

    move-result v7

    add-int/2addr v7, v2

    invoke-static {v7}, Lkeb;->b(I)I

    move-result v7

    invoke-static {v7, v2}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v2

    if-gez v2, :cond_7

    return-object v1

    :cond_7
    add-int/lit8 v4, v4, 0x1

    move v2, v7

    goto :goto_0

    :cond_8
    invoke-static {v2}, Lkeb;->a(I)Lkeb;

    move-result-object p0

    return-object p0
.end method

.method public static final g(Ljava/lang/String;)J
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lhfb;->h(Ljava/lang/String;)Lqeb;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lqeb;->g()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-static {p0}, Lf1a;->q(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public static final h(Ljava/lang/String;)Lqeb;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lhfb;->i(Ljava/lang/String;I)Lqeb;

    move-result-object p0

    return-object p0
.end method

.method public static final i(Ljava/lang/String;I)Lqeb;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string v2, "<this>"

    invoke-static {v0, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lkotlin/text/a;->a(I)I

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    invoke-static {v5, v6}, Ly45;->l(II)I

    move-result v6

    if-gez v6, :cond_2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1

    const/16 v6, 0x2b

    if-eq v5, v6, :cond_2

    :cond_1
    return-object v3

    :cond_2
    int-to-long v5, v1

    invoke-static {v5, v6}, Lqeb;->b(J)J

    move-result-wide v5

    const-wide v7, 0x71c71c71c71c71cL

    const-wide/16 v9, 0x0

    move-wide v11, v7

    :goto_0
    if-ge v4, v2, :cond_7

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13, v1}, Lkotlin/text/a;->b(CI)I

    move-result v13

    if-gez v13, :cond_3

    return-object v3

    :cond_3
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v14

    if-lez v14, :cond_5

    cmp-long v11, v11, v7

    if-nez v11, :cond_4

    const-wide/16 v11, -0x1

    invoke-static {v11, v12, v5, v6}, Ljava/lang/Long;->divideUnsigned(JJ)J

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v14

    if-lez v14, :cond_5

    :cond_4
    return-object v3

    :cond_5
    mul-long/2addr v9, v5

    invoke-static {v9, v10}, Lqeb;->b(J)J

    move-result-wide v9

    invoke-static {v13}, Lkeb;->b(I)I

    move-result v13

    int-to-long v13, v13

    const-wide v15, 0xffffffffL

    and-long/2addr v13, v15

    invoke-static {v13, v14}, Lqeb;->b(J)J

    move-result-wide v13

    add-long/2addr v13, v9

    invoke-static {v13, v14}, Lqeb;->b(J)J

    move-result-wide v13

    invoke-static {v13, v14, v9, v10}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v9

    if-gez v9, :cond_6

    return-object v3

    :cond_6
    add-int/lit8 v4, v4, 0x1

    move-wide v9, v13

    goto :goto_0

    :cond_7
    invoke-static {v9, v10}, Lqeb;->a(J)Lqeb;

    move-result-object v0

    return-object v0
.end method

.method public static final j(Ljava/lang/String;)S
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lhfb;->k(Ljava/lang/String;)Lbfb;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbfb;->g()S

    move-result p0

    return p0

    :cond_0
    invoke-static {p0}, Lf1a;->q(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public static final k(Ljava/lang/String;)Lbfb;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lhfb;->l(Ljava/lang/String;I)Lbfb;

    move-result-object p0

    return-object p0
.end method

.method public static final l(Ljava/lang/String;I)Lbfb;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lhfb;->f(Ljava/lang/String;I)Lkeb;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lkeb;->g()I

    move-result p0

    const v0, 0xffff

    invoke-static {v0}, Lkeb;->b(I)I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v0

    if-lez v0, :cond_0

    return-object p1

    :cond_0
    int-to-short p0, p0

    invoke-static {p0}, Lbfb;->b(S)S

    move-result p0

    invoke-static {p0}, Lbfb;->a(S)Lbfb;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method
