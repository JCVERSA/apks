.class public Lxy9;
.super Lt2;
.source "SourceFile"

# interfaces
.implements Lia5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxy9$a;,
        Lxy9$b;
    }
.end annotation


# instance fields
.field public final a:Lu95;

.field public final b:Lkotlinx/serialization/json/internal/WriteMode;

.field public final c:Lc3;

.field public final d:Ltd9;

.field public e:I

.field public f:Lxy9$a;

.field public final g:Lda5;

.field public final h:Lkotlinx/serialization/json/internal/JsonElementMarker;


# direct methods
.method public constructor <init>(Lu95;Lkotlinx/serialization/json/internal/WriteMode;Lc3;Lkotlinx/serialization/descriptors/a;Lxy9$a;)V
    .locals 1

    const-string v0, "json"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lexer"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptor"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lt2;-><init>()V

    iput-object p1, p0, Lxy9;->a:Lu95;

    iput-object p2, p0, Lxy9;->b:Lkotlinx/serialization/json/internal/WriteMode;

    iput-object p3, p0, Lxy9;->c:Lc3;

    invoke-virtual {p1}, Lu95;->a()Ltd9;

    move-result-object p2

    iput-object p2, p0, Lxy9;->d:Ltd9;

    const/4 p2, -0x1

    iput p2, p0, Lxy9;->e:I

    iput-object p5, p0, Lxy9;->f:Lxy9$a;

    invoke-virtual {p1}, Lu95;->d()Lda5;

    move-result-object p1

    iput-object p1, p0, Lxy9;->g:Lda5;

    invoke-virtual {p1}, Lda5;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlinx/serialization/json/internal/JsonElementMarker;

    invoke-direct {p1, p4}, Lkotlinx/serialization/json/internal/JsonElementMarker;-><init>(Lkotlinx/serialization/descriptors/a;)V

    :goto_0
    iput-object p1, p0, Lxy9;->h:Lkotlinx/serialization/json/internal/JsonElementMarker;

    return-void
.end method


# virtual methods
.method public A(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deserializer"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lxy9;->b:Lkotlinx/serialization/json/internal/WriteMode;

    sget-object v1, Lkotlinx/serialization/json/internal/WriteMode;->MAP:Lkotlinx/serialization/json/internal/WriteMode;

    if-ne v0, v1, :cond_0

    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lxy9;->c:Lc3;

    iget-object v1, v1, Lc3;->b:Lpb5;

    invoke-virtual {v1}, Lpb5;->d()V

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lt2;->A(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz v0, :cond_2

    iget-object p0, p0, Lxy9;->c:Lc3;

    iget-object p0, p0, Lc3;->b:Lpb5;

    invoke-virtual {p0, p1}, Lpb5;->f(Ljava/lang/Object;)V

    :cond_2
    return-object p1
.end method

.method public B(Lk92;)Ljava/lang/Object;
    .locals 5

    const-string v0, "deserializer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    instance-of v1, p1, Lp3;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lxy9;->a:Lu95;

    invoke-virtual {v1}, Lu95;->d()Lda5;

    move-result-object v1

    invoke-virtual {v1}, Lda5;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lk92;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object v1

    iget-object v2, p0, Lxy9;->a:Lu95;

    invoke-static {v1, v2}, Lnc8;->c(Lkotlinx/serialization/descriptors/a;Lu95;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lxy9;->c:Lc3;

    iget-object v3, p0, Lxy9;->g:Lda5;

    invoke-virtual {v3}, Lda5;->m()Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Lc3;->l(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v3, p1

    check-cast v3, Lp3;

    invoke-virtual {v3, p0, v2}, Lp3;->c(Lfd1;Ljava/lang/String;)Lk92;

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    move-object v2, v0

    :goto_0
    if-nez v2, :cond_2

    invoke-static {p0, p1}, Lnc8;->d(Lia5;Lk92;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p1, Lxy9$a;

    invoke-direct {p1, v1}, Lxy9$a;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lxy9;->f:Lxy9$a;

    invoke-interface {v2, p0}, Lk92;->deserialize(Lhu1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    invoke-interface {p1, p0}, Lk92;->deserialize(Lhu1;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lkotlinx/serialization/MissingFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "at path"

    invoke-static {v1, v4, v2, v3, v0}, Lj1a;->X(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    throw p1

    :cond_4
    new-instance v0, Lkotlinx/serialization/MissingFieldException;

    invoke-virtual {p1}, Lkotlinx/serialization/MissingFieldException;->getMissingFields()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " at path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lxy9;->c:Lc3;

    iget-object p0, p0, Lc3;->b:Lpb5;

    invoke-virtual {p0}, Lpb5;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0, p1}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public E()Z
    .locals 3

    iget-object v0, p0, Lxy9;->h:Lkotlinx/serialization/json/internal/JsonElementMarker;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonElementMarker;->b()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    iget-object p0, p0, Lxy9;->c:Lc3;

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v0}, Lc3;->O(Lc3;ZILjava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public H()B
    .locals 10

    iget-object v0, p0, Lxy9;->c:Lc3;

    invoke-virtual {v0}, Lc3;->p()J

    move-result-wide v0

    long-to-int v2, v0

    int-to-byte v2, v2

    int-to-long v3, v2

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    return v2

    :cond_0
    iget-object v4, p0, Lxy9;->c:Lc3;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse byte for input \'"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lc3;->y(Lc3;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public final K()V
    .locals 8

    iget-object v0, p0, Lxy9;->c:Lc3;

    invoke-virtual {v0}, Lc3;->F()B

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lxy9;->c:Lc3;

    const/4 v6, 0x6

    const/4 v7, 0x0

    const-string v3, "Unexpected leading comma"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lc3;->y(Lc3;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public final L(Lkotlinx/serialization/descriptors/a;I)Z
    .locals 4

    iget-object v0, p0, Lxy9;->a:Lu95;

    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/a;->d(I)Lkotlinx/serialization/descriptors/a;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/a;->b()Z

    move-result p2

    const/4 v1, 0x1

    if-nez p2, :cond_0

    iget-object p2, p0, Lxy9;->c:Lc3;

    invoke-virtual {p2, v1}, Lc3;->N(Z)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/a;->getKind()Lid9;

    move-result-object p2

    sget-object v2, Lid9$b;->a:Lid9$b;

    invoke-static {p2, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/a;->b()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lxy9;->c:Lc3;

    invoke-virtual {p2, v2}, Lc3;->N(Z)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    :goto_0
    move v1, v2

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lxy9;->c:Lc3;

    iget-object v3, p0, Lxy9;->g:Lda5;

    invoke-virtual {v3}, Lda5;->m()Z

    move-result v3

    invoke-virtual {p2, v3}, Lc3;->G(Z)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {p1, v0, p2}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->g(Lkotlinx/serialization/descriptors/a;Lu95;Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x3

    if-ne p1, p2, :cond_1

    iget-object p0, p0, Lxy9;->c:Lc3;

    invoke-virtual {p0}, Lc3;->q()Ljava/lang/String;

    :goto_1
    return v1
.end method

.method public final M()I
    .locals 9

    iget-object v0, p0, Lxy9;->c:Lc3;

    invoke-virtual {v0}, Lc3;->M()Z

    move-result v0

    iget-object v1, p0, Lxy9;->c:Lc3;

    invoke-virtual {v1}, Lc3;->f()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    iget v1, p0, Lxy9;->e:I

    if-eq v1, v2, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lxy9;->c:Lc3;

    const/4 v7, 0x6

    const/4 v8, 0x0

    const-string v4, "Expected end of the array or comma"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lc3;->y(Lc3;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lxy9;->e:I

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    :goto_1
    return v2

    :cond_3
    iget-object v3, p0, Lxy9;->c:Lc3;

    const/4 v7, 0x6

    const/4 v8, 0x0

    const-string v4, "Unexpected trailing comma"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lc3;->y(Lc3;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public final N()I
    .locals 11

    iget v0, p0, Lxy9;->e:I

    rem-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const/4 v4, -0x1

    if-eqz v1, :cond_1

    if-eq v0, v4, :cond_2

    iget-object v0, p0, Lxy9;->c:Lc3;

    invoke-virtual {v0}, Lc3;->M()Z

    move-result v3

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lxy9;->c:Lc3;

    const/16 v5, 0x3a

    invoke-virtual {v0, v5}, Lc3;->o(C)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lxy9;->c:Lc3;

    invoke-virtual {v0}, Lc3;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v1, :cond_6

    iget v0, p0, Lxy9;->e:I

    if-ne v0, v4, :cond_4

    iget-object v5, p0, Lxy9;->c:Lc3;

    invoke-static {v5}, Lc3;->a(Lc3;)I

    move-result v7

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v6, "Unexpected trailing comma"

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lc3;->y(Lc3;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :cond_4
    iget-object v0, p0, Lxy9;->c:Lc3;

    invoke-static {v0}, Lc3;->a(Lc3;)I

    move-result v4

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    const/4 p0, 0x4

    const/4 v5, 0x0

    const-string v1, "Expected comma after the key-value pair"

    const/4 v3, 0x0

    move v2, v4

    move v4, p0

    invoke-static/range {v0 .. v5}, Lc3;->y(Lc3;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :cond_6
    :goto_2
    iget v0, p0, Lxy9;->e:I

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lxy9;->e:I

    goto :goto_3

    :cond_7
    if-nez v3, :cond_8

    :goto_3
    return v4

    :cond_8
    iget-object v5, p0, Lxy9;->c:Lc3;

    const/4 v9, 0x6

    const/4 v10, 0x0

    const-string v6, "Expected \'}\', but had \',\' instead"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lc3;->y(Lc3;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public final O(Lkotlinx/serialization/descriptors/a;)I
    .locals 7

    iget-object v0, p0, Lxy9;->c:Lc3;

    invoke-virtual {v0}, Lc3;->M()Z

    move-result v0

    :goto_0
    iget-object v1, p0, Lxy9;->c:Lc3;

    invoke-virtual {v1}, Lc3;->f()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lxy9;->P()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lxy9;->c:Lc3;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Lc3;->o(C)V

    iget-object v1, p0, Lxy9;->a:Lu95;

    invoke-static {p1, v1, v0}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->g(Lkotlinx/serialization/descriptors/a;Lu95;Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x3

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    iget-object v2, p0, Lxy9;->g:Lda5;

    invoke-virtual {v2}, Lda5;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1, v1}, Lxy9;->L(Lkotlinx/serialization/descriptors/a;I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lxy9;->c:Lc3;

    invoke-virtual {v1}, Lc3;->M()Z

    move-result v1

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lxy9;->h:Lkotlinx/serialization/json/internal/JsonElementMarker;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v1}, Lkotlinx/serialization/json/internal/JsonElementMarker;->c(I)V

    :cond_1
    return v1

    :cond_2
    const/4 v1, 0x1

    move v6, v3

    move v3, v1

    move v1, v6

    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {p0, v0}, Lxy9;->Q(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    if-nez v0, :cond_6

    iget-object p0, p0, Lxy9;->h:Lkotlinx/serialization/json/internal/JsonElementMarker;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonElementMarker;->d()I

    move-result p0

    goto :goto_2

    :cond_5
    const/4 p0, -0x1

    :goto_2
    return p0

    :cond_6
    iget-object v0, p0, Lxy9;->c:Lc3;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const-string v1, "Unexpected trailing comma"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lc3;->y(Lc3;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public final P()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lxy9;->g:Lda5;

    invoke-virtual {v0}, Lda5;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lxy9;->c:Lc3;

    invoke-virtual {p0}, Lc3;->t()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lxy9;->c:Lc3;

    invoke-virtual {p0}, Lc3;->k()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final Q(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lxy9;->g:Lda5;

    invoke-virtual {v0}, Lda5;->g()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lxy9;->f:Lxy9$a;

    invoke-virtual {p0, v0, p1}, Lxy9;->S(Lxy9$a;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lxy9;->c:Lc3;

    invoke-virtual {v0, p1}, Lc3;->A(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lxy9;->c:Lc3;

    iget-object v0, p0, Lxy9;->g:Lda5;

    invoke-virtual {v0}, Lda5;->m()Z

    move-result v0

    invoke-virtual {p1, v0}, Lc3;->I(Z)V

    :goto_1
    iget-object p0, p0, Lxy9;->c:Lc3;

    invoke-virtual {p0}, Lc3;->M()Z

    move-result p0

    return p0
.end method

.method public final R(Lkotlinx/serialization/descriptors/a;)V
    .locals 2

    :cond_0
    invoke-virtual {p0, p1}, Lxy9;->v(Lkotlinx/serialization/descriptors/a;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void
.end method

.method public final S(Lxy9$a;Ljava/lang/String;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    iget-object v0, p1, Lxy9$a;->a:Ljava/lang/String;

    invoke-static {v0, p2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p0, 0x0

    iput-object p0, p1, Lxy9$a;->a:Ljava/lang/String;

    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method public a()Ltd9;
    .locals 0

    iget-object p0, p0, Lxy9;->d:Ltd9;

    return-object p0
.end method

.method public b(Lkotlinx/serialization/descriptors/a;)Lfd1;
    .locals 7

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lxy9;->a:Lu95;

    invoke-static {v0, p1}, Lppc;->b(Lu95;Lkotlinx/serialization/descriptors/a;)Lkotlinx/serialization/json/internal/WriteMode;

    move-result-object v3

    iget-object v0, p0, Lxy9;->c:Lc3;

    iget-object v0, v0, Lc3;->b:Lpb5;

    invoke-virtual {v0, p1}, Lpb5;->c(Lkotlinx/serialization/descriptors/a;)V

    iget-object v0, p0, Lxy9;->c:Lc3;

    iget-char v1, v3, Lkotlinx/serialization/json/internal/WriteMode;->begin:C

    invoke-virtual {v0, v1}, Lc3;->o(C)V

    invoke-virtual {p0}, Lxy9;->K()V

    sget-object v0, Lxy9$b;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lxy9;->b:Lkotlinx/serialization/json/internal/WriteMode;

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lxy9;->a:Lu95;

    invoke-virtual {v0}, Lu95;->d()Lda5;

    move-result-object v0

    invoke-virtual {v0}, Lda5;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lxy9;

    iget-object v2, p0, Lxy9;->a:Lu95;

    iget-object v4, p0, Lxy9;->c:Lc3;

    iget-object v6, p0, Lxy9;->f:Lxy9$a;

    move-object v1, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lxy9;-><init>(Lu95;Lkotlinx/serialization/json/internal/WriteMode;Lc3;Lkotlinx/serialization/descriptors/a;Lxy9$a;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lxy9;

    iget-object v2, p0, Lxy9;->a:Lu95;

    iget-object v4, p0, Lxy9;->c:Lc3;

    iget-object v6, p0, Lxy9;->f:Lxy9$a;

    move-object v1, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lxy9;-><init>(Lu95;Lkotlinx/serialization/json/internal/WriteMode;Lc3;Lkotlinx/serialization/descriptors/a;Lxy9$a;)V

    :goto_0
    move-object p0, v0

    :goto_1
    return-object p0
.end method

.method public c(Lkotlinx/serialization/descriptors/a;)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lxy9;->a:Lu95;

    invoke-virtual {v0}, Lu95;->d()Lda5;

    move-result-object v0

    invoke-virtual {v0}, Lda5;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/a;->e()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lxy9;->R(Lkotlinx/serialization/descriptors/a;)V

    :cond_0
    iget-object p1, p0, Lxy9;->c:Lc3;

    iget-object v0, p0, Lxy9;->b:Lkotlinx/serialization/json/internal/WriteMode;

    iget-char v0, v0, Lkotlinx/serialization/json/internal/WriteMode;->end:C

    invoke-virtual {p1, v0}, Lc3;->o(C)V

    iget-object p0, p0, Lxy9;->c:Lc3;

    iget-object p0, p0, Lc3;->b:Lpb5;

    invoke-virtual {p0}, Lpb5;->b()V

    return-void
.end method

.method public final d()Lu95;
    .locals 0

    iget-object p0, p0, Lxy9;->a:Lu95;

    return-object p0
.end method

.method public g()Ljava/lang/Void;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public h()J
    .locals 2

    iget-object p0, p0, Lxy9;->c:Lc3;

    invoke-virtual {p0}, Lc3;->p()J

    move-result-wide v0

    return-wide v0
.end method

.method public l()S
    .locals 10

    iget-object v0, p0, Lxy9;->c:Lc3;

    invoke-virtual {v0}, Lc3;->p()J

    move-result-wide v0

    long-to-int v2, v0

    int-to-short v2, v2

    int-to-long v3, v2

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    return v2

    :cond_0
    iget-object v4, p0, Lxy9;->c:Lc3;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse short for input \'"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lc3;->y(Lc3;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public m()D
    .locals 6

    iget-object v0, p0, Lxy9;->c:Lc3;

    invoke-virtual {v0}, Lc3;->s()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lxy9;->a:Lu95;

    invoke-virtual {v2}, Lu95;->d()Lda5;

    move-result-object v2

    invoke-virtual {v2}, Lda5;->a()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lxy9;->c:Lc3;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {p0, v0}, Loa5;->i(Lc3;Ljava/lang/Number;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-wide v0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse type \'"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "double"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' for input \'"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lc3;->y(Lc3;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public n()C
    .locals 6

    iget-object v0, p0, Lxy9;->c:Lc3;

    invoke-virtual {v0}, Lc3;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lxy9;->c:Lc3;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected single char, but got \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

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

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lxy9;->g:Lda5;

    invoke-virtual {v0}, Lda5;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lxy9;->c:Lc3;

    invoke-virtual {p0}, Lc3;->t()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lxy9;->c:Lc3;

    invoke-virtual {p0}, Lc3;->q()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public q(Lkotlinx/serialization/descriptors/a;)I
    .locals 4

    const-string v0, "enumDescriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lxy9;->a:Lu95;

    invoke-virtual {p0}, Lxy9;->o()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " at path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lxy9;->c:Lc3;

    iget-object p0, p0, Lc3;->b:Lpb5;

    invoke-virtual {p0}, Lpb5;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, v1, p0}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->i(Lkotlinx/serialization/descriptors/a;Lu95;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public s()Lkotlinx/serialization/json/b;
    .locals 2

    new-instance v0, Lkotlinx/serialization/json/internal/JsonTreeReader;

    iget-object v1, p0, Lxy9;->a:Lu95;

    invoke-virtual {v1}, Lu95;->d()Lda5;

    move-result-object v1

    iget-object p0, p0, Lxy9;->c:Lc3;

    invoke-direct {v0, v1, p0}, Lkotlinx/serialization/json/internal/JsonTreeReader;-><init>(Lda5;Lc3;)V

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonTreeReader;->e()Lkotlinx/serialization/json/b;

    move-result-object p0

    return-object p0
.end method

.method public t()I
    .locals 10

    iget-object v0, p0, Lxy9;->c:Lc3;

    invoke-virtual {v0}, Lc3;->p()J

    move-result-wide v0

    long-to-int v2, v0

    int-to-long v3, v2

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    return v2

    :cond_0
    iget-object v4, p0, Lxy9;->c:Lc3;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse int for input \'"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lc3;->y(Lc3;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public v(Lkotlinx/serialization/descriptors/a;)I
    .locals 2

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lxy9;->b:Lkotlinx/serialization/json/internal/WriteMode;

    sget-object v1, Lxy9$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lxy9;->M()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lxy9;->O(Lkotlinx/serialization/descriptors/a;)I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lxy9;->N()I

    move-result p1

    :goto_0
    iget-object v0, p0, Lxy9;->b:Lkotlinx/serialization/json/internal/WriteMode;

    sget-object v1, Lkotlinx/serialization/json/internal/WriteMode;->MAP:Lkotlinx/serialization/json/internal/WriteMode;

    if-eq v0, v1, :cond_2

    iget-object p0, p0, Lxy9;->c:Lc3;

    iget-object p0, p0, Lc3;->b:Lpb5;

    invoke-virtual {p0, p1}, Lpb5;->g(I)V

    :cond_2
    return p1
.end method

.method public w(Lkotlinx/serialization/descriptors/a;)Lhu1;
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lzy9;->b(Lkotlinx/serialization/descriptors/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lja5;

    iget-object v0, p0, Lxy9;->c:Lc3;

    iget-object p0, p0, Lxy9;->a:Lu95;

    invoke-direct {p1, v0, p0}, Lja5;-><init>(Lc3;Lu95;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lt2;->w(Lkotlinx/serialization/descriptors/a;)Lhu1;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public x()F
    .locals 6

    iget-object v0, p0, Lxy9;->c:Lc3;

    invoke-virtual {v0}, Lc3;->s()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lxy9;->a:Lu95;

    invoke-virtual {v1}, Lu95;->d()Lda5;

    move-result-object v1

    invoke-virtual {v1}, Lda5;->a()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lxy9;->c:Lc3;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p0, v0}, Loa5;->i(Lc3;Ljava/lang/Number;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return v0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse type \'"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "float"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' for input \'"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lc3;->y(Lc3;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public z()Z
    .locals 1

    iget-object v0, p0, Lxy9;->g:Lda5;

    invoke-virtual {v0}, Lda5;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lxy9;->c:Lc3;

    invoke-virtual {p0}, Lc3;->i()Z

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lxy9;->c:Lc3;

    invoke-virtual {p0}, Lc3;->g()Z

    move-result p0

    :goto_0
    return p0
.end method
