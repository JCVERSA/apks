.class public final Lcom/google/android/exoplayer2/source/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/h;
.implements Lcom/google/android/exoplayer2/source/h$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/k$a;,
        Lcom/google/android/exoplayer2/source/k$c;,
        Lcom/google/android/exoplayer2/source/k$b;
    }
.end annotation


# instance fields
.field public final b:[Lcom/google/android/exoplayer2/source/h;

.field public final c:Ljava/util/IdentityHashMap;

.field public final d:Lod1;

.field public final e:Ljava/util/ArrayList;

.field public final f:Ljava/util/HashMap;

.field public g:Lcom/google/android/exoplayer2/source/h$a;

.field public h:Leva;

.field public i:[Lcom/google/android/exoplayer2/source/h;

.field public j:Lcom/google/android/exoplayer2/source/q;


# direct methods
.method public varargs constructor <init>(Lod1;[J[Lcom/google/android/exoplayer2/source/h;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/k;->d:Lod1;

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/k;->b:[Lcom/google/android/exoplayer2/source/h;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/k;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/k;->f:Ljava/util/HashMap;

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/google/android/exoplayer2/source/q;

    invoke-interface {p1, v1}, Lod1;->a([Lcom/google/android/exoplayer2/source/q;)Lcom/google/android/exoplayer2/source/q;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/k;->j:Lcom/google/android/exoplayer2/source/q;

    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/k;->c:Ljava/util/IdentityHashMap;

    new-array p1, v0, [Lcom/google/android/exoplayer2/source/h;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/k;->i:[Lcom/google/android/exoplayer2/source/h;

    :goto_0
    array-length p1, p3

    if-ge v0, p1, :cond_1

    aget-wide v1, p2, v0

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/k;->b:[Lcom/google/android/exoplayer2/source/h;

    new-instance v3, Lcom/google/android/exoplayer2/source/k$b;

    aget-object v4, p3, v0

    invoke-direct {v3, v4, v1, v2}, Lcom/google/android/exoplayer2/source/k$b;-><init>(Lcom/google/android/exoplayer2/source/h;J)V

    aput-object v3, p1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a([Lqi3;[Z[Lh19;[ZJ)J
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    array-length v3, v1

    new-array v3, v3, [I

    array-length v4, v1

    new-array v4, v4, [I

    const/4 v6, 0x0

    :goto_0
    array-length v7, v1

    const/4 v8, 0x0

    if-ge v6, v7, :cond_4

    aget-object v7, v2, v6

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    iget-object v8, v0, Lcom/google/android/exoplayer2/source/k;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v8, v7}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Ljava/lang/Integer;

    :goto_1
    const/4 v7, -0x1

    if-nez v8, :cond_1

    move v8, v7

    goto :goto_2

    :cond_1
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :goto_2
    aput v8, v3, v6

    aput v7, v4, v6

    aget-object v8, v1, v6

    if-eqz v8, :cond_3

    invoke-interface {v8}, Lhva;->getTrackGroup()Lzua;

    move-result-object v8

    iget-object v9, v0, Lcom/google/android/exoplayer2/source/k;->f:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lzua;

    invoke-static {v8}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lzua;

    const/4 v9, 0x0

    :goto_3
    iget-object v10, v0, Lcom/google/android/exoplayer2/source/k;->b:[Lcom/google/android/exoplayer2/source/h;

    array-length v11, v10

    if-ge v9, v11, :cond_3

    aget-object v10, v10, v9

    invoke-interface {v10}, Lcom/google/android/exoplayer2/source/h;->getTrackGroups()Leva;

    move-result-object v10

    invoke-virtual {v10, v8}, Leva;->c(Lzua;)I

    move-result v10

    if-eq v10, v7, :cond_2

    aput v9, v4, v6

    goto :goto_4

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/k;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v6}, Ljava/util/IdentityHashMap;->clear()V

    array-length v6, v1

    new-array v7, v6, [Lh19;

    array-length v9, v1

    new-array v9, v9, [Lh19;

    array-length v10, v1

    new-array v15, v10, [Lqi3;

    new-instance v14, Ljava/util/ArrayList;

    iget-object v10, v0, Lcom/google/android/exoplayer2/source/k;->b:[Lcom/google/android/exoplayer2/source/h;

    array-length v10, v10

    invoke-direct {v14, v10}, Ljava/util/ArrayList;-><init>(I)V

    move-wide/from16 v17, p5

    const/4 v13, 0x0

    :goto_5
    iget-object v10, v0, Lcom/google/android/exoplayer2/source/k;->b:[Lcom/google/android/exoplayer2/source/h;

    array-length v10, v10

    if-ge v13, v10, :cond_f

    const/4 v10, 0x0

    :goto_6
    array-length v11, v1

    if-ge v10, v11, :cond_7

    aget v11, v3, v10

    if-ne v11, v13, :cond_5

    aget-object v11, v2, v10

    goto :goto_7

    :cond_5
    move-object v11, v8

    :goto_7
    aput-object v11, v9, v10

    aget v11, v4, v10

    if-ne v11, v13, :cond_6

    aget-object v11, v1, v10

    invoke-static {v11}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lqi3;

    invoke-interface {v11}, Lhva;->getTrackGroup()Lzua;

    move-result-object v12

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/k;->f:Ljava/util/HashMap;

    invoke-virtual {v5, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lzua;

    invoke-static {v5}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lzua;

    new-instance v12, Lcom/google/android/exoplayer2/source/k$a;

    invoke-direct {v12, v11, v5}, Lcom/google/android/exoplayer2/source/k$a;-><init>(Lqi3;Lzua;)V

    aput-object v12, v15, v10

    goto :goto_8

    :cond_6
    aput-object v8, v15, v10

    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_7
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/k;->b:[Lcom/google/android/exoplayer2/source/h;

    aget-object v10, v5, v13

    move-object v11, v15

    move-object/from16 v12, p2

    move v5, v13

    move-object v13, v9

    move-object v8, v14

    move-object/from16 v14, p4

    move-object/from16 v19, v15

    move-wide/from16 v15, v17

    invoke-interface/range {v10 .. v16}, Lcom/google/android/exoplayer2/source/h;->a([Lqi3;[Z[Lh19;[ZJ)J

    move-result-wide v10

    if-nez v5, :cond_8

    move-wide/from16 v17, v10

    goto :goto_9

    :cond_8
    cmp-long v10, v10, v17

    if-nez v10, :cond_e

    :goto_9
    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_a
    array-length v12, v1

    if-ge v10, v12, :cond_c

    aget v12, v4, v10

    const/4 v13, 0x1

    if-ne v12, v5, :cond_9

    aget-object v11, v9, v10

    invoke-static {v11}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lh19;

    aget-object v12, v9, v10

    aput-object v12, v7, v10

    iget-object v12, v0, Lcom/google/android/exoplayer2/source/k;->c:Ljava/util/IdentityHashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v11, v14}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v11, v13

    goto :goto_c

    :cond_9
    aget v12, v3, v10

    if-ne v12, v5, :cond_b

    aget-object v12, v9, v10

    if-nez v12, :cond_a

    goto :goto_b

    :cond_a
    const/4 v13, 0x0

    :goto_b
    invoke-static {v13}, Lzi;->g(Z)V

    :cond_b
    :goto_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    :cond_c
    if-eqz v11, :cond_d

    iget-object v10, v0, Lcom/google/android/exoplayer2/source/k;->b:[Lcom/google/android/exoplayer2/source/h;

    aget-object v10, v10, v5

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v13, v5, 0x1

    move-object v14, v8

    move-object/from16 v15, v19

    const/4 v8, 0x0

    goto/16 :goto_5

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Children enabled at different positions."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    move-object v8, v14

    const/4 v1, 0x0

    invoke-static {v7, v1, v2, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v1, v1, [Lcom/google/android/exoplayer2/source/h;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/exoplayer2/source/h;

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/k;->i:[Lcom/google/android/exoplayer2/source/h;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/k;->d:Lod1;

    invoke-interface {v2, v1}, Lod1;->a([Lcom/google/android/exoplayer2/source/q;)Lcom/google/android/exoplayer2/source/q;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/k;->j:Lcom/google/android/exoplayer2/source/q;

    return-wide v17
.end method

.method public bridge synthetic b(Lcom/google/android/exoplayer2/source/q;)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/source/h;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/k;->f(Lcom/google/android/exoplayer2/source/h;)V

    return-void
.end method

.method public c(JLka9;)J
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/k;->i:[Lcom/google/android/exoplayer2/source/h;

    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_0

    aget-object p0, v0, v2

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/k;->b:[Lcom/google/android/exoplayer2/source/h;

    aget-object p0, p0, v2

    :goto_0
    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/h;->c(JLka9;)J

    move-result-wide p0

    return-wide p0
.end method

.method public continueLoading(J)Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/h;

    invoke-interface {v3, p1, p2}, Lcom/google/android/exoplayer2/source/h;->continueLoading(J)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/k;->j:Lcom/google/android/exoplayer2/source/q;

    invoke-interface {p0, p1, p2}, Lcom/google/android/exoplayer2/source/q;->continueLoading(J)Z

    move-result p0

    return p0
.end method

.method public d(Lcom/google/android/exoplayer2/source/h;)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/k;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/k;->b:[Lcom/google/android/exoplayer2/source/h;

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v4, p1, v2

    invoke-interface {v4}, Lcom/google/android/exoplayer2/source/h;->getTrackGroups()Leva;

    move-result-object v4

    iget v4, v4, Leva;->b:I

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-array p1, v3, [Lzua;

    move v0, v1

    move v2, v0

    :goto_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/k;->b:[Lcom/google/android/exoplayer2/source/h;

    array-length v4, v3

    if-ge v0, v4, :cond_3

    aget-object v3, v3, v0

    invoke-interface {v3}, Lcom/google/android/exoplayer2/source/h;->getTrackGroups()Leva;

    move-result-object v3

    iget v4, v3, Leva;->b:I

    move v5, v1

    :goto_2
    if-ge v5, v4, :cond_2

    invoke-virtual {v3, v5}, Leva;->b(I)Lzua;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Lzua;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lzua;->b(Ljava/lang/String;)Lzua;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/exoplayer2/source/k;->f:Ljava/util/HashMap;

    invoke-virtual {v8, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v2, 0x1

    aput-object v7, p1, v2

    add-int/lit8 v5, v5, 0x1

    move v2, v6

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    new-instance v0, Leva;

    invoke-direct {v0, p1}, Leva;-><init>([Lzua;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/k;->h:Leva;

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/k;->g:Lcom/google/android/exoplayer2/source/h$a;

    invoke-static {p1}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/h$a;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/h$a;->d(Lcom/google/android/exoplayer2/source/h;)V

    return-void
.end method

.method public discardBuffer(JZ)V
    .locals 3

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/k;->i:[Lcom/google/android/exoplayer2/source/h;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-interface {v2, p1, p2, p3}, Lcom/google/android/exoplayer2/source/h;->discardBuffer(JZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e(I)Lcom/google/android/exoplayer2/source/h;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/k;->b:[Lcom/google/android/exoplayer2/source/h;

    aget-object p0, p0, p1

    instance-of p1, p0, Lcom/google/android/exoplayer2/source/k$b;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/google/android/exoplayer2/source/k$b;

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/k$b;->e(Lcom/google/android/exoplayer2/source/k$b;)Lcom/google/android/exoplayer2/source/h;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public f(Lcom/google/android/exoplayer2/source/h;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/k;->g:Lcom/google/android/exoplayer2/source/h$a;

    invoke-static {p1}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/h$a;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/q$a;->b(Lcom/google/android/exoplayer2/source/q;)V

    return-void
.end method

.method public g(Lcom/google/android/exoplayer2/source/h$a;J)V
    .locals 3

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/k;->g:Lcom/google/android/exoplayer2/source/h$a;

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/k;->e:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/k;->b:[Lcom/google/android/exoplayer2/source/h;

    invoke-static {p1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/k;->b:[Lcom/google/android/exoplayer2/source/h;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-interface {v2, p0, p2, p3}, Lcom/google/android/exoplayer2/source/h;->g(Lcom/google/android/exoplayer2/source/h$a;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 2

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/k;->j:Lcom/google/android/exoplayer2/source/q;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/source/q;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/k;->j:Lcom/google/android/exoplayer2/source/q;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/source/q;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackGroups()Leva;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/k;->h:Leva;

    invoke-static {p0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Leva;

    return-object p0
.end method

.method public isLoading()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/k;->j:Lcom/google/android/exoplayer2/source/q;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/source/q;->isLoading()Z

    move-result p0

    return p0
.end method

.method public maybeThrowPrepareError()V
    .locals 3

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/k;->b:[Lcom/google/android/exoplayer2/source/h;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-interface {v2}, Lcom/google/android/exoplayer2/source/h;->maybeThrowPrepareError()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public readDiscontinuity()J
    .locals 15

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/k;->i:[Lcom/google/android/exoplayer2/source/h;

    array-length v1, v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, 0x0

    move-wide v6, v2

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_8

    aget-object v8, v0, v5

    invoke-interface {v8}, Lcom/google/android/exoplayer2/source/h;->readDiscontinuity()J

    move-result-wide v9

    cmp-long v11, v9, v2

    const-string v12, "Unexpected child seekToUs result."

    if-eqz v11, :cond_5

    cmp-long v11, v6, v2

    if-nez v11, :cond_3

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/k;->i:[Lcom/google/android/exoplayer2/source/h;

    array-length v7, v6

    move v11, v4

    :goto_1
    if-ge v11, v7, :cond_2

    aget-object v13, v6, v11

    if-ne v13, v8, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v13, v9, v10}, Lcom/google/android/exoplayer2/source/h;->seekToUs(J)J

    move-result-wide v13

    cmp-long v13, v13, v9

    if-nez v13, :cond_1

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_2
    move-wide v6, v9

    goto :goto_3

    :cond_3
    cmp-long v8, v9, v6

    if-nez v8, :cond_4

    goto :goto_3

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Conflicting discontinuities."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    cmp-long v9, v6, v2

    if-eqz v9, :cond_7

    invoke-interface {v8, v6, v7}, Lcom/google/android/exoplayer2/source/h;->seekToUs(J)J

    move-result-wide v8

    cmp-long v8, v8, v6

    if-nez v8, :cond_6

    goto :goto_3

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_8
    return-wide v6
.end method

.method public reevaluateBuffer(J)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/k;->j:Lcom/google/android/exoplayer2/source/q;

    invoke-interface {p0, p1, p2}, Lcom/google/android/exoplayer2/source/q;->reevaluateBuffer(J)V

    return-void
.end method

.method public seekToUs(J)J
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/k;->i:[Lcom/google/android/exoplayer2/source/h;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/h;->seekToUs(J)J

    move-result-wide p1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/k;->i:[Lcom/google/android/exoplayer2/source/h;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-interface {v1, p1, p2}, Lcom/google/android/exoplayer2/source/h;->seekToUs(J)J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unexpected child seekToUs result."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-wide p1
.end method
