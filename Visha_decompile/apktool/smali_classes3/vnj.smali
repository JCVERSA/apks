.class public final Lvnj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzmj;
.implements Lymj;


# instance fields
.field public final b:[Lzmj;

.field public final c:Ljava/util/IdentityHashMap;

.field public final d:Ljava/util/ArrayList;

.field public final e:Ljava/util/HashMap;

.field public f:Lymj;

.field public g:Lnpj;

.field public h:[Lzmj;

.field public i:Lapj;


# direct methods
.method public varargs constructor <init>(Lmmj;[J[Lzmj;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lvnj;->b:[Lzmj;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lvnj;->d:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lvnj;->e:Ljava/util/HashMap;

    new-instance p1, Llmj;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfww;->zzn()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfww;->zzn()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Llmj;-><init>(Ljava/util/List;Ljava/util/List;)V

    iput-object p1, p0, Lvnj;->i:Lapj;

    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lvnj;->c:Ljava/util/IdentityHashMap;

    const/4 p1, 0x0

    new-array v0, p1, [Lzmj;

    iput-object v0, p0, Lvnj;->h:[Lzmj;

    :goto_0
    array-length v0, p3

    if-ge p1, v0, :cond_1

    aget-wide v0, p2, p1

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lvnj;->b:[Lzmj;

    new-instance v3, Lkpj;

    aget-object v4, p3, p1

    invoke-direct {v3, v4, v0, v1}, Lkpj;-><init>(Lzmj;J)V

    aput-object v3, v2, p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 0

    iget-object p0, p0, Lvnj;->i:Lapj;

    invoke-interface {p0, p1, p2}, Lapj;->a(J)V

    return-void
.end method

.method public final b(Lz7j;)Z
    .locals 4

    iget-object v0, p0, Lvnj;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p0, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzmj;

    invoke-interface {v3, p1}, Lzmj;->b(Lz7j;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    iget-object p0, p0, Lvnj;->i:Lapj;

    invoke-interface {p0, p1}, Lapj;->b(Lz7j;)Z

    move-result p0

    return p0
.end method

.method public final c(J)J
    .locals 3

    iget-object v0, p0, Lvnj;->h:[Lzmj;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1, p2}, Lzmj;->c(J)J

    move-result-wide p1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lvnj;->h:[Lzmj;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-interface {v1, p1, p2}, Lzmj;->c(J)J

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

.method public final d(Lymj;J)V
    .locals 2

    iput-object p1, p0, Lvnj;->f:Lymj;

    iget-object p1, p0, Lvnj;->d:Ljava/util/ArrayList;

    iget-object v0, p0, Lvnj;->b:[Lzmj;

    invoke-static {p1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const/4 p1, 0x0

    :goto_0
    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object v1, v0, p1

    invoke-interface {v1, p0, p2, p3}, Lzmj;->d(Lymj;J)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e(JZ)V
    .locals 3

    iget-object p0, p0, Lvnj;->h:[Lzmj;

    array-length p3, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_0

    aget-object v2, p0, v1

    invoke-interface {v2, p1, p2, v0}, Lzmj;->e(JZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f(Lzmj;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lvnj;->d:Ljava/util/ArrayList;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lvnj;->b:[Lzmj;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    array-length v5, v1

    if-ge v3, v5, :cond_1

    aget-object v5, v1, v3

    invoke-interface {v5}, Lzmj;->zzg()Lnpj;

    move-result-object v5

    iget v5, v5, Lnpj;->a:I

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-array v3, v4, [Ln5f;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    array-length v6, v1

    if-ge v4, v6, :cond_5

    aget-object v6, v1, v4

    invoke-interface {v6}, Lzmj;->zzg()Lnpj;

    move-result-object v6

    iget v7, v6, Lnpj;->a:I

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_4

    invoke-virtual {v6, v8}, Lnpj;->b(I)Ln5f;

    move-result-object v9

    iget v10, v9, Ln5f;->a:I

    new-array v11, v10, [Lerj;

    const/4 v12, 0x0

    :goto_3
    const-string v13, ":"

    if-ge v12, v10, :cond_3

    invoke-virtual {v9, v12}, Ln5f;->b(I)Lerj;

    move-result-object v14

    invoke-virtual {v14}, Lerj;->b()Lgpj;

    move-result-object v15

    iget-object v14, v14, Lerj;->a:Ljava/lang/String;

    if-nez v14, :cond_2

    const-string v14, ""

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Lgpj;->o(Ljava/lang/String;)Lgpj;

    invoke-virtual {v15}, Lgpj;->K()Lerj;

    move-result-object v2

    aput-object v2, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_3
    new-instance v2, Ln5f;

    iget-object v10, v9, Ln5f;->b:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10, v11}, Ln5f;-><init>(Ljava/lang/String;[Lerj;)V

    iget-object v10, v0, Lvnj;->e:Ljava/util/HashMap;

    invoke-virtual {v10, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v5, 0x1

    aput-object v2, v3, v5

    add-int/lit8 v8, v8, 0x1

    move v5, v9

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    new-instance v1, Lnpj;

    invoke-direct {v1, v3}, Lnpj;-><init>([Ln5f;)V

    iput-object v1, v0, Lvnj;->g:Lnpj;

    iget-object v1, v0, Lvnj;->f:Lymj;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, v0}, Lymj;->f(Lzmj;)V

    return-void
.end method

.method public final g(JLkaj;)J
    .locals 3

    iget-object v0, p0, Lvnj;->h:[Lzmj;

    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_0

    aget-object p0, v0, v2

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lvnj;->b:[Lzmj;

    aget-object p0, p0, v2

    :goto_0
    invoke-interface {p0, p1, p2, p3}, Lzmj;->g(JLkaj;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final bridge synthetic h(Lapj;)V
    .locals 0

    check-cast p1, Lzmj;

    iget-object p1, p0, Lvnj;->f:Lymj;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Lzoj;->h(Lapj;)V

    return-void
.end method

.method public final i(I)Lzmj;
    .locals 0

    iget-object p0, p0, Lvnj;->b:[Lzmj;

    aget-object p0, p0, p1

    instance-of p1, p0, Lkpj;

    if-eqz p1, :cond_0

    check-cast p0, Lkpj;

    invoke-virtual {p0}, Lkpj;->i()Lzmj;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final m([Ltqj;[Z[Lyoj;[ZJ)J
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    array-length v3, v1

    new-array v4, v3, [I

    new-array v3, v3, [I

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    array-length v7, v1

    if-ge v6, v7, :cond_3

    aget-object v7, v2, v6

    if-nez v7, :cond_0

    const/4 v8, 0x0

    goto :goto_1

    :cond_0
    iget-object v8, v0, Lvnj;->c:Ljava/util/IdentityHashMap;

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
    aput v8, v4, v6

    aget-object v8, v1, v6

    if-eqz v8, :cond_2

    invoke-interface {v8}, Lxqj;->zzg()Ln5f;

    move-result-object v7

    iget-object v7, v7, Ln5f;->b:Ljava/lang/String;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v3, v6

    goto :goto_3

    :cond_2
    aput v7, v3, v6

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    iget-object v6, v0, Lvnj;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v6}, Ljava/util/IdentityHashMap;->clear()V

    iget-object v9, v0, Lvnj;->b:[Lzmj;

    new-array v10, v7, [Lyoj;

    new-array v15, v7, [Lyoj;

    new-array v14, v7, [Ltqj;

    new-instance v13, Ljava/util/ArrayList;

    array-length v11, v9

    invoke-direct {v13, v11}, Ljava/util/ArrayList;-><init>(I)V

    move-wide/from16 v18, p5

    move v12, v5

    :goto_4
    array-length v11, v9

    if-ge v12, v11, :cond_e

    move v11, v5

    :goto_5
    array-length v5, v1

    if-ge v11, v5, :cond_6

    aget v5, v4, v11

    if-ne v5, v12, :cond_4

    aget-object v5, v2, v11

    goto :goto_6

    :cond_4
    const/4 v5, 0x0

    :goto_6
    aput-object v5, v15, v11

    aget v5, v3, v11

    if-ne v5, v12, :cond_5

    aget-object v5, v1, v11

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v5}, Lxqj;->zzg()Ln5f;

    move-result-object v8

    move-object/from16 v16, v13

    iget-object v13, v0, Lvnj;->e:Ljava/util/HashMap;

    invoke-virtual {v13, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ln5f;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v13, Lunj;

    invoke-direct {v13, v5, v8}, Lunj;-><init>(Ltqj;Ln5f;)V

    aput-object v13, v14, v11

    const/4 v5, 0x0

    goto :goto_7

    :cond_5
    move-object/from16 v16, v13

    const/4 v5, 0x0

    aput-object v5, v14, v11

    :goto_7
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v13, v16

    goto :goto_5

    :cond_6
    move-object/from16 v16, v13

    const/4 v5, 0x0

    aget-object v11, v9, v12

    move v8, v12

    move-object v12, v14

    move-object/from16 v5, v16

    move-object/from16 v13, p2

    move-object/from16 v20, v14

    move-object v14, v15

    move-object/from16 v21, v15

    move-object/from16 v15, p4

    move-wide/from16 v16, v18

    invoke-interface/range {v11 .. v17}, Lzmj;->m([Ltqj;[Z[Lyoj;[ZJ)J

    move-result-wide v11

    if-nez v8, :cond_7

    move-wide/from16 v18, v11

    goto :goto_8

    :cond_7
    cmp-long v11, v11, v18

    if-nez v11, :cond_d

    :goto_8
    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_9
    array-length v13, v1

    if-ge v11, v13, :cond_b

    aget v13, v3, v11

    const/4 v14, 0x1

    if-ne v13, v8, :cond_8

    aget-object v12, v21, v11

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v12, v14

    goto :goto_b

    :cond_8
    aget v13, v4, v11

    if-ne v13, v8, :cond_a

    aget-object v13, v21, v11

    if-nez v13, :cond_9

    goto :goto_a

    :cond_9
    const/4 v14, 0x0

    :goto_a
    invoke-static {v14}, Ln7g;->f(Z)V

    :cond_a
    :goto_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :cond_b
    if-eqz v12, :cond_c

    aget-object v11, v9, v8

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v12, v8, 0x1

    move-object v13, v5

    move-object/from16 v14, v20

    move-object/from16 v15, v21

    const/4 v5, 0x0

    goto/16 :goto_4

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Children enabled at different positions."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    move v1, v5

    move-object v5, v13

    invoke-static {v10, v1, v2, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v1, v1, [Lzmj;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lzmj;

    iput-object v1, v0, Lvnj;->h:[Lzmj;

    new-instance v1, Ltnj;

    invoke-direct {v1}, Ltnj;-><init>()V

    invoke-static {v5, v1}, Lcom/google/android/gms/internal/ads/p7;->b(Ljava/util/List;Lm2i;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Llmj;

    invoke-direct {v2, v5, v1}, Llmj;-><init>(Ljava/util/List;Ljava/util/List;)V

    iput-object v2, v0, Lvnj;->i:Lapj;

    return-wide v18
.end method

.method public final zzb()J
    .locals 2

    iget-object p0, p0, Lvnj;->i:Lapj;

    invoke-interface {p0}, Lapj;->zzb()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzc()J
    .locals 2

    iget-object p0, p0, Lvnj;->i:Lapj;

    invoke-interface {p0}, Lapj;->zzc()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzd()J
    .locals 15

    iget-object v0, p0, Lvnj;->h:[Lzmj;

    array-length v1, v0

    const/4 v2, 0x0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    move v5, v2

    move-wide v6, v3

    :goto_0
    if-ge v5, v1, :cond_8

    aget-object v8, v0, v5

    invoke-interface {v8}, Lzmj;->zzd()J

    move-result-wide v9

    cmp-long v11, v9, v3

    const-string v12, "Unexpected child seekToUs result."

    if-eqz v11, :cond_5

    cmp-long v11, v6, v3

    if-nez v11, :cond_3

    iget-object v6, p0, Lvnj;->h:[Lzmj;

    array-length v7, v6

    move v11, v2

    :goto_1
    if-ge v11, v7, :cond_2

    aget-object v13, v6, v11

    if-ne v13, v8, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v13, v9, v10}, Lzmj;->c(J)J

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
    cmp-long v9, v6, v3

    if-eqz v9, :cond_7

    invoke-interface {v8, v6, v7}, Lzmj;->c(J)J

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

.method public final zzg()Lnpj;
    .locals 0

    iget-object p0, p0, Lvnj;->g:Lnpj;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final zzi()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lvnj;->b:[Lzmj;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-interface {v1}, Lzmj;->zzi()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzp()Z
    .locals 0

    iget-object p0, p0, Lvnj;->i:Lapj;

    invoke-interface {p0}, Lapj;->zzp()Z

    move-result p0

    return p0
.end method
