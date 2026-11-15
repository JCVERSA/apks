.class public Lfreemarker/core/h0;
.super Lfreemarker/core/m;
.source "SourceFile"


# instance fields
.field public k:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lfreemarker/core/m;-><init>()V

    return-void
.end method


# virtual methods
.method public F(Lfreemarker/core/Environment;)Lzfa;
    .locals 19

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    iget-object v0, v12, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    invoke-virtual {v0, v13}, Lfreemarker/core/t0;->Q(Lfreemarker/core/Environment;)Lzfa;

    move-result-object v14

    iget-object v15, v12, Lfreemarker/core/h0;->k:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v11

    const/4 v0, 0x0

    move v10, v0

    :goto_0
    add-int/lit8 v9, v10, 0x1

    if-ge v9, v11, :cond_1

    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lfreemarker/core/t0;

    invoke-virtual {v5, v13}, Lfreemarker/core/t0;->Q(Lfreemarker/core/Environment;)Lzfa;

    move-result-object v4

    iget-object v1, v12, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v2, 0x1

    const-string v3, "=="

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, v14

    move-object/from16 v6, p0

    move/from16 v18, v9

    move/from16 v9, v16

    move/from16 v16, v10

    move/from16 v10, v17

    move/from16 v17, v11

    move-object/from16 v11, p1

    invoke-static/range {v0 .. v11}, Lfreemarker/core/q0;->d(Lzfa;Lfreemarker/core/t0;ILjava/lang/String;Lzfa;Lfreemarker/core/t0;Lfreemarker/core/t0;ZZZZLfreemarker/core/Environment;)Z

    move-result v0

    if-eqz v0, :cond_0

    move/from16 v10, v18

    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/core/t0;

    invoke-virtual {v0, v13}, Lfreemarker/core/t0;->Q(Lfreemarker/core/Environment;)Lzfa;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v10, v16, 0x2

    move/from16 v11, v17

    goto :goto_0

    :cond_1
    move/from16 v17, v11

    rem-int/lit8 v11, v17, 0x2

    if-eqz v11, :cond_2

    add-int/lit8 v11, v17, -0x1

    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/core/t0;

    invoke-virtual {v0, v13}, Lfreemarker/core/t0;->Q(Lfreemarker/core/Environment;)Lzfa;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Lfreemarker/core/_MiscTemplateException;

    iget-object v1, v12, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    iget-object v2, v12, Lfreemarker/core/j;->i:Ljava/lang/String;

    const-string v3, "(case1, value1, case2, value2, ...) didn\'t match any of the case parameters, and there was no default value parameter (an additional last parameter) eihter. "

    const-string v4, "The value before ?"

    filled-new-array {v4, v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/t0;[Ljava/lang/Object;)V

    throw v0
.end method

.method public h0(Ljava/util/List;Lfreemarker/core/Token;Lfreemarker/core/Token;)V
    .locals 2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iput-object p1, p0, Lfreemarker/core/h0;->k:Ljava/util/List;

    return-void

    :cond_0
    const-string p1, "must have at least 2"

    invoke-virtual {p0, p1, p2, p3}, Lfreemarker/core/m;->m0(Ljava/lang/String;Lfreemarker/core/Token;Lfreemarker/core/Token;)Lfreemarker/core/ParseException;

    move-result-object p0

    throw p0
.end method

.method public i0(Lfreemarker/core/t0;Ljava/lang/String;Lfreemarker/core/t0;Lfreemarker/core/t0$a;)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lfreemarker/core/h0;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lfreemarker/core/h0;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lfreemarker/core/h0;->k:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfreemarker/core/t0;

    invoke-virtual {v2, p2, p3, p4}, Lfreemarker/core/t0;->I(Ljava/lang/String;Lfreemarker/core/t0;Lfreemarker/core/t0$a;)Lfreemarker/core/t0;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    check-cast p1, Lfreemarker/core/h0;

    iput-object v0, p1, Lfreemarker/core/h0;->k:Ljava/util/List;

    return-void
.end method

.method public j0(I)Lfreemarker/core/t0;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/h0;->k:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfreemarker/core/t0;

    return-object p0
.end method

.method public k0()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/h0;->k:Ljava/util/List;

    return-object p0
.end method

.method public l0()I
    .locals 0

    iget-object p0, p0, Lfreemarker/core/h0;->k:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
