.class public final Ltbe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc9e;


# instance fields
.field public final a:[B

.field public final b:Lu4h;

.field public final c:Li9e;

.field public d:Lf9e;

.field public e:Lrae;

.field public f:I

.field public g:Lhre;

.field public h:Ln9e;

.field public i:I

.field public j:I

.field public k:Lsbe;

.field public l:I

.field public m:J


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x2a

    new-array p1, p1, [B

    iput-object p1, p0, Ltbe;->a:[B

    new-instance p1, Lu4h;

    const v0, 0x8000

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lu4h;-><init>([BI)V

    iput-object p1, p0, Ltbe;->b:Lu4h;

    new-instance p1, Li9e;

    invoke-direct {p1}, Li9e;-><init>()V

    iput-object p1, p0, Ltbe;->c:Li9e;

    iput v1, p0, Ltbe;->f:I

    return-void
.end method


# virtual methods
.method public final a(Lu4h;Z)J
    .locals 4

    iget-object v0, p0, Ltbe;->h:Ln9e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lu4h;->w()I

    move-result v0

    :goto_0
    invoke-virtual {p1}, Lu4h;->x()I

    move-result v1

    add-int/lit8 v1, v1, -0x10

    if-gt v0, v1, :cond_1

    invoke-virtual {p1, v0}, Lu4h;->l(I)V

    iget-object v1, p0, Ltbe;->h:Ln9e;

    iget v2, p0, Ltbe;->j:I

    iget-object v3, p0, Ltbe;->c:Li9e;

    invoke-static {p1, v1, v2, v3}, Lj9e;->c(Lu4h;Ln9e;ILi9e;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lu4h;->l(I)V

    iget-wide p0, v3, Li9e;->a:J

    return-wide p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_5

    :goto_1
    invoke-virtual {p1}, Lu4h;->x()I

    move-result p2

    iget v1, p0, Ltbe;->i:I

    sub-int/2addr p2, v1

    if-gt v0, p2, :cond_4

    invoke-virtual {p1, v0}, Lu4h;->l(I)V

    :try_start_0
    iget-object p2, p0, Ltbe;->h:Ln9e;

    iget v1, p0, Ltbe;->j:I

    iget-object v2, p0, Ltbe;->c:Li9e;

    invoke-static {p1, p2, v1, v2}, Lj9e;->c(Lu4h;Ln9e;ILi9e;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const/4 p2, 0x0

    :goto_2
    invoke-virtual {p1}, Lu4h;->w()I

    move-result v1

    invoke-virtual {p1}, Lu4h;->x()I

    move-result v2

    if-le v1, v2, :cond_2

    goto :goto_3

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p1, v0}, Lu4h;->l(I)V

    iget-object p0, p0, Ltbe;->c:Li9e;

    iget-wide p0, p0, Li9e;->a:J

    return-wide p0

    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lu4h;->x()I

    move-result p0

    invoke-virtual {p1, p0}, Lu4h;->l(I)V

    goto :goto_4

    :cond_5
    invoke-virtual {p1, v0}, Lu4h;->l(I)V

    :goto_4
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public final b(JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    const/4 p2, 0x0

    if-nez p1, :cond_0

    iput p2, p0, Ltbe;->f:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ltbe;->k:Lsbe;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p3, p4}, Li8e;->d(J)V

    :cond_1
    :goto_0
    cmp-long p1, p3, v0

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v0, -0x1

    :goto_1
    iput-wide v0, p0, Ltbe;->m:J

    iput p2, p0, Ltbe;->l:I

    iget-object p0, p0, Ltbe;->b:Lu4h;

    invoke-virtual {p0, p2}, Lu4h;->i(I)V

    return-void
.end method

.method public final c()V
    .locals 11

    iget-wide v0, p0, Ltbe;->m:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget-object v2, p0, Ltbe;->h:Ln9e;

    sget v3, Lkfh;->a:I

    iget v2, v2, Ln9e;->e:I

    int-to-long v2, v2

    div-long v5, v0, v2

    iget-object v4, p0, Ltbe;->e:Lrae;

    iget v8, p0, Ltbe;->l:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    invoke-interface/range {v4 .. v10}, Lrae;->g(JIIILqae;)V

    return-void
.end method

.method public final d(Ld9e;Ly9e;)I
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x2

    iget v3, v0, Ltbe;->f:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_18

    if-eq v3, v4, :cond_17

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x4

    if-eq v3, v2, :cond_15

    if-eq v3, v7, :cond_e

    const-wide/16 v9, -0x1

    if-eq v3, v8, :cond_a

    iget-object v2, v0, Ltbe;->e:Lrae;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Ltbe;->h:Ln9e;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Ltbe;->k:Lsbe;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Li8e;->e()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object/from16 v6, p2

    invoke-virtual {v3, v1, v6}, Li8e;->a(Ld9e;Ly9e;)I

    move-result v5

    goto/16 :goto_2

    :cond_0
    iget-wide v6, v0, Ltbe;->m:J

    cmp-long v3, v6, v9

    if-nez v3, :cond_1

    invoke-static {v1, v2}, Lj9e;->b(Ld9e;Ln9e;)J

    move-result-wide v1

    iput-wide v1, v0, Ltbe;->m:J

    goto/16 :goto_2

    :cond_1
    iget-object v2, v0, Ltbe;->b:Lu4h;

    invoke-virtual {v2}, Lu4h;->x()I

    move-result v3

    const v6, 0x8000

    if-ge v3, v6, :cond_4

    invoke-virtual {v2}, Lu4h;->n()[B

    move-result-object v7

    sub-int/2addr v6, v3

    invoke-interface {v1, v7, v3, v6}, Ld9e;->b([BII)I

    move-result v1

    const/4 v6, -0x1

    if-ne v1, v6, :cond_2

    goto :goto_0

    :cond_2
    move v4, v5

    :goto_0
    if-nez v4, :cond_3

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lu4h;->k(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lu4h;->u()I

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Ltbe;->c()V

    move v5, v6

    goto :goto_2

    :cond_4
    move v4, v5

    :cond_5
    :goto_1
    invoke-virtual {v2}, Lu4h;->w()I

    move-result v1

    iget v3, v0, Ltbe;->l:I

    iget v6, v0, Ltbe;->i:I

    if-ge v3, v6, :cond_6

    invoke-virtual {v2}, Lu4h;->u()I

    move-result v7

    sub-int/2addr v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lu4h;->m(I)V

    :cond_6
    invoke-virtual {v0, v2, v4}, Ltbe;->a(Lu4h;Z)J

    move-result-wide v3

    invoke-virtual {v2}, Lu4h;->w()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {v2, v1}, Lu4h;->l(I)V

    iget-object v1, v0, Ltbe;->e:Lrae;

    invoke-interface {v1, v2, v6}, Lrae;->d(Lu4h;I)V

    iget v1, v0, Ltbe;->l:I

    add-int/2addr v1, v6

    iput v1, v0, Ltbe;->l:I

    cmp-long v1, v3, v9

    if-eqz v1, :cond_7

    invoke-virtual/range {p0 .. p0}, Ltbe;->c()V

    iput v5, v0, Ltbe;->l:I

    iput-wide v3, v0, Ltbe;->m:J

    :cond_7
    invoke-virtual {v2}, Lu4h;->n()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {v2}, Lu4h;->x()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {v2}, Lu4h;->u()I

    move-result v1

    const/16 v3, 0x10

    if-ge v1, v3, :cond_9

    if-lt v0, v3, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {v2}, Lu4h;->u()I

    move-result v0

    invoke-virtual {v2}, Lu4h;->n()[B

    move-result-object v1

    invoke-virtual {v2}, Lu4h;->w()I

    move-result v3

    invoke-virtual {v2}, Lu4h;->n()[B

    move-result-object v4

    invoke-static {v1, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v2, v5}, Lu4h;->l(I)V

    invoke-virtual {v2, v0}, Lu4h;->k(I)V

    :cond_9
    :goto_2
    return v5

    :cond_a
    invoke-interface/range {p1 .. p1}, Ld9e;->zzj()V

    new-instance v3, Lu4h;

    invoke-direct {v3, v2}, Lu4h;-><init>(I)V

    invoke-virtual {v3}, Lu4h;->n()[B

    move-result-object v4

    invoke-interface {v1, v4, v5, v2}, Ld9e;->i([BII)V

    invoke-virtual {v3}, Lu4h;->K()I

    move-result v3

    shr-int/lit8 v2, v3, 0x2

    const/16 v4, 0x3ffe

    if-ne v2, v4, :cond_d

    invoke-interface/range {p1 .. p1}, Ld9e;->zzj()V

    iput v3, v0, Ltbe;->j:I

    iget-object v2, v0, Ltbe;->d:Lf9e;

    sget v3, Lkfh;->a:I

    invoke-interface/range {p1 .. p1}, Ld9e;->zzf()J

    move-result-wide v14

    invoke-interface/range {p1 .. p1}, Ld9e;->zzd()J

    move-result-wide v16

    iget-object v12, v0, Ltbe;->h:Ln9e;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v12, Ln9e;->k:Lm9e;

    if-eqz v1, :cond_b

    new-instance v1, Ll9e;

    invoke-direct {v1, v12, v14, v15}, Ll9e;-><init>(Ln9e;J)V

    goto :goto_3

    :cond_b
    cmp-long v1, v16, v9

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_c

    iget-wide v6, v12, Ln9e;->j:J

    cmp-long v1, v6, v3

    if-lez v1, :cond_c

    new-instance v1, Lsbe;

    iget v13, v0, Ltbe;->j:I

    move-object v11, v1

    invoke-direct/range {v11 .. v17}, Lsbe;-><init>(Ln9e;IJJ)V

    iput-object v1, v0, Ltbe;->k:Lsbe;

    invoke-virtual {v1}, Li8e;->b()Lkae;

    move-result-object v1

    goto :goto_3

    :cond_c
    new-instance v1, Ljae;

    invoke-virtual {v12}, Ln9e;->a()J

    move-result-wide v6

    invoke-direct {v1, v6, v7, v3, v4}, Ljae;-><init>(JJ)V

    :goto_3
    invoke-interface {v2, v1}, Lf9e;->i(Lkae;)V

    const/4 v1, 0x5

    iput v1, v0, Ltbe;->f:I

    return v5

    :cond_d
    invoke-interface/range {p1 .. p1}, Ld9e;->zzj()V

    const-string v0, "First frame does not start with sync code."

    invoke-static {v0, v6}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0

    :cond_e
    iget-object v2, v0, Ltbe;->h:Ln9e;

    :cond_f
    invoke-interface/range {p1 .. p1}, Ld9e;->zzj()V

    new-instance v3, Lp3h;

    new-array v4, v8, [B

    invoke-direct {v3, v4, v8}, Lp3h;-><init>([BI)V

    iget-object v4, v3, Lp3h;->a:[B

    invoke-interface {v1, v4, v5, v8}, Ld9e;->i([BII)V

    invoke-virtual {v3}, Lp3h;->p()Z

    move-result v4

    const/4 v6, 0x7

    invoke-virtual {v3, v6}, Lp3h;->d(I)I

    move-result v6

    const/16 v9, 0x18

    invoke-virtual {v3, v9}, Lp3h;->d(I)I

    move-result v3

    add-int/2addr v3, v8

    const/4 v9, 0x6

    if-nez v6, :cond_10

    const/16 v2, 0x26

    new-array v3, v2, [B

    invoke-interface {v1, v3, v5, v2}, Ld9e;->h([BII)V

    new-instance v2, Ln9e;

    invoke-direct {v2, v3, v8}, Ln9e;-><init>([BI)V

    goto :goto_4

    :cond_10
    if-eqz v2, :cond_14

    if-ne v6, v7, :cond_11

    new-instance v6, Lu4h;

    invoke-direct {v6, v3}, Lu4h;-><init>(I)V

    invoke-virtual {v6}, Lu4h;->n()[B

    move-result-object v10

    invoke-interface {v1, v10, v5, v3}, Ld9e;->h([BII)V

    invoke-static {v6}, Lk9e;->b(Lu4h;)Lm9e;

    move-result-object v3

    invoke-virtual {v2, v3}, Ln9e;->f(Lm9e;)Ln9e;

    move-result-object v2

    goto :goto_4

    :cond_11
    if-ne v6, v8, :cond_12

    new-instance v6, Lu4h;

    invoke-direct {v6, v3}, Lu4h;-><init>(I)V

    invoke-virtual {v6}, Lu4h;->n()[B

    move-result-object v10

    invoke-interface {v1, v10, v5, v3}, Ld9e;->h([BII)V

    invoke-virtual {v6, v8}, Lu4h;->m(I)V

    invoke-static {v6, v5, v5}, Lxae;->c(Lu4h;ZZ)Luae;

    move-result-object v3

    iget-object v3, v3, Luae;->a:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ln9e;->g(Ljava/util/List;)Ln9e;

    move-result-object v2

    goto :goto_4

    :cond_12
    if-ne v6, v9, :cond_13

    new-instance v6, Lu4h;

    invoke-direct {v6, v3}, Lu4h;-><init>(I)V

    invoke-virtual {v6}, Lu4h;->n()[B

    move-result-object v10

    invoke-interface {v1, v10, v5, v3}, Ld9e;->h([BII)V

    invoke-virtual {v6, v8}, Lu4h;->m(I)V

    invoke-static {v6}, Lqce;->b(Lu4h;)Lqce;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzfww;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v3

    invoke-virtual {v2, v3}, Ln9e;->e(Ljava/util/List;)Ln9e;

    move-result-object v2

    goto :goto_4

    :cond_13
    invoke-interface {v1, v3}, Ld9e;->f(I)V

    :goto_4
    sget v3, Lkfh;->a:I

    iput-object v2, v0, Ltbe;->h:Ln9e;

    if-eqz v4, :cond_f

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v2, Ln9e;->c:I

    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Ltbe;->i:I

    iget-object v1, v0, Ltbe;->h:Ln9e;

    iget-object v2, v0, Ltbe;->a:[B

    iget-object v3, v0, Ltbe;->g:Lhre;

    invoke-virtual {v1, v2, v3}, Ln9e;->c([BLhre;)Lerj;

    move-result-object v1

    iget-object v2, v0, Ltbe;->e:Lrae;

    invoke-virtual {v1}, Lerj;->b()Lgpj;

    move-result-object v1

    const-string v3, "audio/flac"

    invoke-virtual {v1, v3}, Lgpj;->e(Ljava/lang/String;)Lgpj;

    invoke-virtual {v1}, Lgpj;->K()Lerj;

    move-result-object v1

    invoke-interface {v2, v1}, Lrae;->f(Lerj;)V

    iget-object v1, v0, Ltbe;->e:Lrae;

    iget-object v2, v0, Ltbe;->h:Ln9e;

    invoke-virtual {v2}, Ln9e;->a()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lrae;->c(J)V

    iput v8, v0, Ltbe;->f:I

    return v5

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_15
    new-instance v2, Lu4h;

    invoke-direct {v2, v8}, Lu4h;-><init>(I)V

    invoke-virtual {v2}, Lu4h;->n()[B

    move-result-object v3

    invoke-interface {v1, v3, v5, v8}, Ld9e;->h([BII)V

    invoke-virtual {v2}, Lu4h;->O()J

    move-result-wide v1

    const-wide/32 v3, 0x664c6143

    cmp-long v1, v1, v3

    if-nez v1, :cond_16

    iput v7, v0, Ltbe;->f:I

    return v5

    :cond_16
    const-string v0, "Failed to read FLAC stream marker."

    invoke-static {v0, v6}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0

    :cond_17
    iget-object v3, v0, Ltbe;->a:[B

    const/16 v4, 0x2a

    invoke-interface {v1, v3, v5, v4}, Ld9e;->i([BII)V

    invoke-interface/range {p1 .. p1}, Ld9e;->zzj()V

    iput v2, v0, Ltbe;->f:I

    return v5

    :cond_18
    invoke-interface/range {p1 .. p1}, Ld9e;->zzj()V

    invoke-interface/range {p1 .. p1}, Ld9e;->zze()J

    move-result-wide v2

    invoke-static {v1, v4}, Lk9e;->a(Ld9e;Z)Lhre;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Ld9e;->zze()J

    move-result-wide v7

    sub-long/2addr v7, v2

    long-to-int v2, v7

    invoke-interface {v1, v2}, Ld9e;->f(I)V

    iput-object v6, v0, Ltbe;->g:Lhre;

    iput v4, v0, Ltbe;->f:I

    return v5
.end method

.method public final e(Ld9e;)Z
    .locals 4

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lk9e;->a(Ld9e;Z)Lhre;

    new-instance v0, Lu4h;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lu4h;-><init>(I)V

    invoke-virtual {v0}, Lu4h;->n()[B

    move-result-object v2

    check-cast p1, Lm8e;

    invoke-virtual {p1, v2, p0, v1, p0}, Lm8e;->e([BIIZ)Z

    invoke-virtual {v0}, Lu4h;->O()J

    move-result-wide v0

    const-wide/32 v2, 0x664c6143

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method public final f(Lf9e;)V
    .locals 2

    iput-object p1, p0, Ltbe;->d:Lf9e;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lf9e;->j(II)Lrae;

    move-result-object v0

    iput-object v0, p0, Ltbe;->e:Lrae;

    invoke-interface {p1}, Lf9e;->zzG()V

    return-void
.end method

.method public final synthetic zzc()Lc9e;
    .locals 0

    return-object p0
.end method

.method public final synthetic zzd()Ljava/util/List;
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfww;->zzn()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p0

    return-object p0
.end method
