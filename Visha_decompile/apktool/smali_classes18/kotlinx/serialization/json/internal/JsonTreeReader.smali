.class public final Lkotlinx/serialization/json/internal/JsonTreeReader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lc3;

.field public final b:Z

.field public c:I


# direct methods
.method public constructor <init>(Lda5;Lc3;)V
    .locals 1

    const-string v0, "configuration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lexer"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->a:Lc3;

    invoke-virtual {p1}, Lda5;->m()Z

    move-result p1

    iput-boolean p1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->b:Z

    return-void
.end method

.method public static final synthetic a(Lkotlinx/serialization/json/internal/JsonTreeReader;)Lc3;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->a:Lc3;

    return-object p0
.end method

.method public static final synthetic b(Lkotlinx/serialization/json/internal/JsonTreeReader;)Lkotlinx/serialization/json/b;
    .locals 0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeReader;->f()Lkotlinx/serialization/json/b;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lkotlinx/serialization/json/internal/JsonTreeReader;Lpu1;Lwh1;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/JsonTreeReader;->h(Lpu1;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lkotlinx/serialization/json/internal/JsonTreeReader;Z)Lkotlinx/serialization/json/c;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/JsonTreeReader;->j(Z)Lkotlinx/serialization/json/c;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final e()Lkotlinx/serialization/json/b;
    .locals 6

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->a:Lc3;

    invoke-virtual {v0}, Lc3;->F()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lkotlinx/serialization/json/internal/JsonTreeReader;->j(Z)Lkotlinx/serialization/json/c;

    move-result-object p0

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/JsonTreeReader;->j(Z)Lkotlinx/serialization/json/c;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 v2, 0x6

    if-ne v0, v2, :cond_3

    iget v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->c:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeReader;->g()Lkotlinx/serialization/json/b;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeReader;->i()Lkotlinx/serialization/json/b;

    move-result-object v0

    :goto_0
    iget v1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->c:I

    move-object p0, v0

    goto :goto_1

    :cond_3
    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeReader;->f()Lkotlinx/serialization/json/b;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_4
    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->a:Lc3;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot begin reading element, unexpected token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lc3;->y(Lc3;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public final f()Lkotlinx/serialization/json/b;
    .locals 11

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->a:Lc3;

    invoke-virtual {v0}, Lc3;->m()B

    move-result v0

    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->a:Lc3;

    invoke-virtual {v1}, Lc3;->F()B

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    iget-object v3, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->a:Lc3;

    invoke-virtual {v3}, Lc3;->f()Z

    move-result v3

    const/16 v4, 0x9

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeReader;->e()Lkotlinx/serialization/json/b;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->a:Lc3;

    invoke-virtual {v0}, Lc3;->m()B

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v5, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->a:Lc3;

    if-ne v0, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-static {v5}, Lc3;->a(Lc3;)I

    move-result v7

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v6, "Expected end of the array or comma"

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lc3;->y(Lc3;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :cond_3
    const/16 v3, 0x8

    if-ne v0, v3, :cond_4

    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->a:Lc3;

    invoke-virtual {p0, v4}, Lc3;->n(B)B

    goto :goto_2

    :cond_4
    if-eq v0, v2, :cond_5

    :goto_2
    new-instance p0, Lkotlinx/serialization/json/a;

    invoke-direct {p0, v1}, Lkotlinx/serialization/json/a;-><init>(Ljava/util/List;)V

    return-object p0

    :cond_5
    iget-object v2, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->a:Lc3;

    const/4 v6, 0x6

    const/4 v7, 0x0

    const-string v3, "Unexpected trailing comma"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lc3;->y(Lc3;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :cond_6
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->a:Lc3;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const-string v1, "Unexpected leading comma"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lc3;->y(Lc3;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public final g()Lkotlinx/serialization/json/b;
    .locals 3

    new-instance v0, Lou1;

    new-instance v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;-><init>(Lkotlinx/serialization/json/internal/JsonTreeReader;Lwh1;)V

    invoke-direct {v0, v1}, Lou1;-><init>(Lu74;)V

    sget-object p0, Lzfb;->a:Lzfb;

    invoke-static {v0, p0}, Lkotlin/a;->b(Lou1;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/json/b;

    return-object p0
.end method

.method public final h(Lpu1;Lwh1;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;

    iget v3, v2, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;

    invoke-direct {v2, v0, v1}, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;-><init>(Lkotlinx/serialization/json/internal/JsonTreeReader;Lwh1;)V

    :goto_0
    iget-object v1, v2, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->result:Ljava/lang/Object;

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v3

    iget v4, v2, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->label:I

    const/4 v5, 0x7

    const/4 v6, 0x6

    const/4 v7, 0x1

    const/4 v8, 0x4

    if-eqz v4, :cond_2

    if-ne v4, v7, :cond_1

    iget-object v0, v2, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$3:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v4, v2, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$2:Ljava/lang/Object;

    check-cast v4, Ljava/util/LinkedHashMap;

    iget-object v9, v2, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$1:Ljava/lang/Object;

    check-cast v9, Lkotlinx/serialization/json/internal/JsonTreeReader;

    iget-object v10, v2, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$0:Ljava/lang/Object;

    check-cast v10, Lpu1;

    invoke-static {v1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    move-object/from16 v17, v4

    move-object v4, v2

    move-object/from16 v2, v17

    goto :goto_3

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object v1, v0, Lkotlinx/serialization/json/internal/JsonTreeReader;->a:Lc3;

    invoke-virtual {v1, v6}, Lc3;->n(B)B

    move-result v1

    iget-object v4, v0, Lkotlinx/serialization/json/internal/JsonTreeReader;->a:Lc3;

    invoke-virtual {v4}, Lc3;->F()B

    move-result v4

    if-eq v4, v8, :cond_a

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v9, v4

    move-object v4, v2

    move v2, v1

    move-object/from16 v1, p1

    :goto_1
    iget-object v10, v0, Lkotlinx/serialization/json/internal/JsonTreeReader;->a:Lc3;

    invoke-virtual {v10}, Lc3;->f()Z

    move-result v10

    if-eqz v10, :cond_7

    iget-boolean v2, v0, Lkotlinx/serialization/json/internal/JsonTreeReader;->b:Z

    if-eqz v2, :cond_3

    iget-object v2, v0, Lkotlinx/serialization/json/internal/JsonTreeReader;->a:Lc3;

    invoke-virtual {v2}, Lc3;->s()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    iget-object v2, v0, Lkotlinx/serialization/json/internal/JsonTreeReader;->a:Lc3;

    invoke-virtual {v2}, Lc3;->q()Ljava/lang/String;

    move-result-object v2

    :goto_2
    iget-object v10, v0, Lkotlinx/serialization/json/internal/JsonTreeReader;->a:Lc3;

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Lc3;->n(B)B

    sget-object v10, Lzfb;->a:Lzfb;

    iput-object v1, v4, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$0:Ljava/lang/Object;

    iput-object v0, v4, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$1:Ljava/lang/Object;

    iput-object v9, v4, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$2:Ljava/lang/Object;

    iput-object v2, v4, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$3:Ljava/lang/Object;

    iput v7, v4, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->label:I

    invoke-virtual {v1, v10, v4}, Lpu1;->a(Ljava/lang/Object;Lwh1;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v3, :cond_4

    return-object v3

    :cond_4
    move-object/from16 v17, v9

    move-object v9, v0

    move-object v0, v2

    move-object/from16 v2, v17

    move-object/from16 v18, v10

    move-object v10, v1

    move-object/from16 v1, v18

    :goto_3
    check-cast v1, Lkotlinx/serialization/json/b;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v9, Lkotlinx/serialization/json/internal/JsonTreeReader;->a:Lc3;

    invoke-virtual {v0}, Lc3;->m()B

    move-result v0

    if-eq v0, v8, :cond_6

    if-ne v0, v5, :cond_5

    move-object/from16 v17, v2

    move v2, v0

    move-object v0, v9

    move-object/from16 v9, v17

    goto :goto_4

    :cond_5
    iget-object v11, v9, Lkotlinx/serialization/json/internal/JsonTreeReader;->a:Lc3;

    const/4 v15, 0x6

    const/16 v16, 0x0

    const-string v12, "Expected end of the object or comma"

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Lc3;->y(Lc3;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_6
    move-object v1, v10

    move-object/from16 v17, v2

    move v2, v0

    move-object v0, v9

    move-object/from16 v9, v17

    goto :goto_1

    :cond_7
    :goto_4
    if-ne v2, v6, :cond_8

    iget-object v0, v0, Lkotlinx/serialization/json/internal/JsonTreeReader;->a:Lc3;

    invoke-virtual {v0, v5}, Lc3;->n(B)B

    goto :goto_5

    :cond_8
    if-eq v2, v8, :cond_9

    :goto_5
    new-instance v0, Lkotlinx/serialization/json/JsonObject;

    invoke-direct {v0, v9}, Lkotlinx/serialization/json/JsonObject;-><init>(Ljava/util/Map;)V

    return-object v0

    :cond_9
    iget-object v1, v0, Lkotlinx/serialization/json/internal/JsonTreeReader;->a:Lc3;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const-string v2, "Unexpected trailing comma"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lc3;->y(Lc3;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_a
    iget-object v1, v0, Lkotlinx/serialization/json/internal/JsonTreeReader;->a:Lc3;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const-string v2, "Unexpected leading comma"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lc3;->y(Lc3;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public final i()Lkotlinx/serialization/json/b;
    .locals 12

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->a:Lc3;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lc3;->n(B)B

    move-result v0

    iget-object v2, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->a:Lc3;

    invoke-virtual {v2}, Lc3;->F()B

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_6

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_0
    iget-object v4, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->a:Lc3;

    invoke-virtual {v4}, Lc3;->f()Z

    move-result v4

    const/4 v5, 0x7

    if-eqz v4, :cond_3

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->a:Lc3;

    invoke-virtual {v0}, Lc3;->s()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->a:Lc3;

    invoke-virtual {v0}, Lc3;->q()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v4, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->a:Lc3;

    const/4 v6, 0x5

    invoke-virtual {v4, v6}, Lc3;->n(B)B

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeReader;->e()Lkotlinx/serialization/json/b;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->a:Lc3;

    invoke-virtual {v0}, Lc3;->m()B

    move-result v0

    if-eq v0, v3, :cond_0

    if-ne v0, v5, :cond_2

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->a:Lc3;

    const/4 v10, 0x6

    const/4 v11, 0x0

    const-string v7, "Expected end of the object or comma"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lc3;->y(Lc3;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :cond_3
    :goto_1
    if-ne v0, v1, :cond_4

    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->a:Lc3;

    invoke-virtual {p0, v5}, Lc3;->n(B)B

    goto :goto_2

    :cond_4
    if-eq v0, v3, :cond_5

    :goto_2
    new-instance p0, Lkotlinx/serialization/json/JsonObject;

    invoke-direct {p0, v2}, Lkotlinx/serialization/json/JsonObject;-><init>(Ljava/util/Map;)V

    return-object p0

    :cond_5
    iget-object v3, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->a:Lc3;

    const/4 v7, 0x6

    const/4 v8, 0x0

    const-string v4, "Unexpected trailing comma"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lc3;->y(Lc3;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :cond_6
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->a:Lc3;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const-string v1, "Unexpected leading comma"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lc3;->y(Lc3;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public final j(Z)Lkotlinx/serialization/json/c;
    .locals 6

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->b:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->a:Lc3;

    invoke-virtual {p0}, Lc3;->q()Ljava/lang/String;

    move-result-object p0

    :goto_0
    move-object v1, p0

    goto :goto_2

    :cond_1
    :goto_1
    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->a:Lc3;

    invoke-virtual {p0}, Lc3;->s()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :goto_2
    if-nez p1, :cond_2

    const-string p0, "null"

    invoke-static {v1, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lkotlinx/serialization/json/JsonNull;->INSTANCE:Lkotlinx/serialization/json/JsonNull;

    return-object p0

    :cond_2
    new-instance p0, Lwa5;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lwa5;-><init>(Ljava/lang/Object;ZLkotlinx/serialization/descriptors/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method
