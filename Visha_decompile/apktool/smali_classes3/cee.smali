.class public final Lcee;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc9e;


# instance fields
.field public final a:Lu4h;

.field public final b:Lu9e;

.field public final c:Lq9e;

.field public final d:Ls9e;

.field public final e:Lrae;

.field public f:Lf9e;

.field public g:Lrae;

.field public h:Lrae;

.field public i:I

.field public j:Lhre;

.field public k:J

.field public l:J

.field public m:J

.field public n:J

.field public o:I

.field public p:Leee;

.field public q:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lu4h;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lu4h;-><init>(I)V

    iput-object p1, p0, Lcee;->a:Lu4h;

    new-instance p1, Lu9e;

    invoke-direct {p1}, Lu9e;-><init>()V

    iput-object p1, p0, Lcee;->b:Lu9e;

    new-instance p1, Lq9e;

    invoke-direct {p1}, Lq9e;-><init>()V

    iput-object p1, p0, Lcee;->c:Lq9e;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcee;->k:J

    new-instance p1, Ls9e;

    invoke-direct {p1}, Ls9e;-><init>()V

    iput-object p1, p0, Lcee;->d:Ls9e;

    new-instance p1, Ls8e;

    invoke-direct {p1}, Ls8e;-><init>()V

    iput-object p1, p0, Lcee;->e:Lrae;

    iput-object p1, p0, Lcee;->h:Lrae;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcee;->n:J

    return-void
.end method

.method public static i(IJ)Z
    .locals 4

    const v0, -0x1f400

    and-int/2addr p0, v0

    int-to-long v0, p0

    const-wide/32 v2, -0x1f400

    and-long p0, p1, v2

    cmp-long p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcee;->q:Z

    return-void
.end method

.method public final b(JJ)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lcee;->i:I

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p2, p0, Lcee;->k:J

    const-wide/16 p2, 0x0

    iput-wide p2, p0, Lcee;->l:J

    iput p1, p0, Lcee;->o:I

    return-void
.end method

.method public final c(Ld9e;)I
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcee;->i:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    :try_start_0
    invoke-virtual {v0, v1, v4}, Lcee;->k(Ld9e;Z)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return v3

    :cond_0
    :goto_0
    iget-object v2, v0, Lcee;->p:Leee;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x1

    if-nez v2, :cond_18

    iget-object v2, v0, Lcee;->b:Lu9e;

    new-instance v13, Lu4h;

    iget v8, v2, Lu9e;->c:I

    invoke-direct {v13, v8}, Lu4h;-><init>(I)V

    invoke-virtual {v13}, Lu4h;->n()[B

    move-result-object v8

    iget v9, v2, Lu9e;->c:I

    invoke-interface {v1, v8, v4, v9}, Ld9e;->i([BII)V

    iget v8, v2, Lu9e;->a:I

    and-int/2addr v8, v7

    const/16 v9, 0x15

    const/16 v10, 0x24

    if-eqz v8, :cond_1

    iget v8, v2, Lu9e;->e:I

    if-eq v8, v7, :cond_3

    move v9, v10

    goto :goto_1

    :cond_1
    iget v8, v2, Lu9e;->e:I

    if-eq v8, v7, :cond_2

    goto :goto_1

    :cond_2
    const/16 v9, 0xd

    :cond_3
    :goto_1
    invoke-virtual {v13}, Lu4h;->x()I

    move-result v8

    add-int/lit8 v11, v9, 0x4

    const v12, 0x56425249

    const v14, 0x496e666f

    const v15, 0x58696e67

    if-lt v8, v11, :cond_4

    invoke-virtual {v13, v9}, Lu4h;->l(I)V

    invoke-virtual {v13}, Lu4h;->A()I

    move-result v8

    if-eq v8, v15, :cond_6

    if-ne v8, v14, :cond_4

    move v8, v14

    goto :goto_2

    :cond_4
    invoke-virtual {v13}, Lu4h;->x()I

    move-result v8

    const/16 v9, 0x28

    if-lt v8, v9, :cond_5

    invoke-virtual {v13, v10}, Lu4h;->l(I)V

    invoke-virtual {v13}, Lu4h;->A()I

    move-result v8

    if-ne v8, v12, :cond_5

    move v8, v12

    goto :goto_2

    :cond_5
    move v8, v4

    :cond_6
    :goto_2
    const/16 v16, 0x0

    if-eq v8, v14, :cond_9

    if-eq v8, v12, :cond_8

    if-eq v8, v15, :cond_9

    invoke-interface/range {p1 .. p1}, Ld9e;->zzj()V

    :cond_7
    :goto_3
    move-object/from16 v8, v16

    goto/16 :goto_6

    :cond_8
    invoke-interface/range {p1 .. p1}, Ld9e;->zzd()J

    move-result-wide v8

    invoke-interface/range {p1 .. p1}, Ld9e;->zzf()J

    move-result-wide v10

    move-object v12, v2

    invoke-static/range {v8 .. v13}, Lfee;->b(JJLu9e;Lu4h;)Lfee;

    move-result-object v8

    iget v9, v2, Lu9e;->c:I

    invoke-interface {v1, v9}, Ld9e;->f(I)V

    goto/16 :goto_6

    :cond_9
    invoke-static {v2, v13}, Lgee;->b(Lu9e;Lu4h;)Lgee;

    move-result-object v9

    iget-object v10, v0, Lcee;->c:Lq9e;

    invoke-virtual {v10}, Lq9e;->a()Z

    move-result v11

    if-nez v11, :cond_a

    iget v11, v9, Lgee;->d:I

    if-eq v11, v3, :cond_a

    iget v12, v9, Lgee;->e:I

    if-eq v12, v3, :cond_a

    iput v11, v10, Lq9e;->a:I

    iput v12, v10, Lq9e;->b:I

    :cond_a
    invoke-interface/range {p1 .. p1}, Ld9e;->zzf()J

    move-result-wide v10

    invoke-interface/range {p1 .. p1}, Ld9e;->zzd()J

    move-result-wide v12

    const-wide/16 v17, -0x1

    cmp-long v12, v12, v17

    if-eqz v12, :cond_b

    iget-wide v12, v9, Lgee;->c:J

    cmp-long v14, v12, v17

    if-eqz v14, :cond_b

    invoke-interface/range {p1 .. p1}, Ld9e;->zzd()J

    move-result-wide v19

    add-long/2addr v12, v10

    cmp-long v14, v19, v12

    if-eqz v14, :cond_b

    invoke-interface/range {p1 .. p1}, Ld9e;->zzd()J

    move-result-wide v3

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Data size mismatch between stream ("

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ") and Xing frame ("

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "), using Xing value."

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Mp3Extractor"

    invoke-static {v4, v3}, Lzrg;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    iget v3, v2, Lu9e;->c:I

    invoke-interface {v1, v3}, Ld9e;->f(I)V

    if-ne v8, v15, :cond_c

    invoke-static {v9, v10, v11}, Lhee;->b(Lgee;J)Lhee;

    move-result-object v8

    goto :goto_6

    :cond_c
    invoke-interface/range {p1 .. p1}, Ld9e;->zzd()J

    move-result-wide v3

    invoke-virtual {v9}, Lgee;->a()J

    move-result-wide v25

    cmp-long v7, v25, v5

    if-nez v7, :cond_d

    goto/16 :goto_3

    :cond_d
    iget-wide v7, v9, Lgee;->c:J

    cmp-long v12, v7, v17

    if-eqz v12, :cond_e

    add-long v3, v10, v7

    iget-object v12, v9, Lgee;->a:Lu9e;

    iget v12, v12, Lu9e;->c:I

    :goto_4
    int-to-long v12, v12

    sub-long/2addr v7, v12

    move-wide/from16 v28, v3

    goto :goto_5

    :cond_e
    cmp-long v7, v3, v17

    if-eqz v7, :cond_7

    sub-long v7, v3, v10

    iget-object v12, v9, Lgee;->a:Lu9e;

    iget v12, v12, Lu9e;->c:I

    goto :goto_4

    :goto_5
    sget-object v3, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    const-wide/32 v23, 0x7a1200

    move-wide/from16 v21, v7

    move-object/from16 v27, v3

    invoke-static/range {v21 .. v27}, Lkfh;->P(JJJLjava/math/RoundingMode;)J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/ads/s7;->b(J)I

    move-result v32

    iget-wide v12, v9, Lgee;->b:J

    invoke-static {v7, v8, v12, v13, v3}, Lo6i;->b(JJLjava/math/RoundingMode;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/s7;->b(J)I

    move-result v33

    iget-object v3, v9, Lgee;->a:Lu9e;

    new-instance v8, Laee;

    iget v3, v3, Lu9e;->c:I

    int-to-long v3, v3

    add-long v30, v10, v3

    const/16 v34, 0x0

    move-object/from16 v27, v8

    invoke-direct/range {v27 .. v34}, Laee;-><init>(JJIIZ)V

    :goto_6
    iget-object v3, v0, Lcee;->j:Lhre;

    invoke-interface/range {p1 .. p1}, Ld9e;->zzf()J

    move-result-wide v9

    if-eqz v3, :cond_12

    invoke-virtual {v3}, Lhre;->a()I

    move-result v4

    const/4 v7, 0x0

    :goto_7
    if-ge v7, v4, :cond_12

    invoke-virtual {v3, v7}, Lhre;->b(I)Liqe;

    move-result-object v11

    instance-of v12, v11, Lfde;

    if-eqz v12, :cond_11

    check-cast v11, Lfde;

    invoke-virtual {v3}, Lhre;->a()I

    move-result v4

    const/4 v7, 0x0

    :goto_8
    if-ge v7, v4, :cond_10

    invoke-virtual {v3, v7}, Lhre;->b(I)Liqe;

    move-result-object v12

    instance-of v13, v12, Lhde;

    if-eqz v13, :cond_f

    check-cast v12, Lhde;

    iget-object v13, v12, Lcde;->a:Ljava/lang/String;

    const-string v14, "TLEN"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    iget-object v3, v12, Lhde;->c:Lcom/google/android/gms/internal/ads/zzfww;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lkfh;->N(J)J

    move-result-wide v3

    goto :goto_9

    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_10
    move-wide v3, v5

    :goto_9
    invoke-static {v9, v10, v11, v3, v4}, Lbee;->b(JLfde;J)Lbee;

    move-result-object v3

    goto :goto_a

    :cond_11
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_12
    move-object/from16 v3, v16

    :goto_a
    iget-boolean v4, v0, Lcee;->q:Z

    if-eqz v4, :cond_13

    new-instance v3, Ldee;

    invoke-direct {v3}, Ldee;-><init>()V

    goto :goto_d

    :cond_13
    if-eqz v3, :cond_14

    move-object/from16 v16, v3

    goto :goto_b

    :cond_14
    if-nez v8, :cond_15

    goto :goto_b

    :cond_15
    move-object/from16 v16, v8

    :goto_b
    if-nez v16, :cond_16

    iget-object v3, v0, Lcee;->a:Lu4h;

    invoke-virtual {v3}, Lu4h;->n()[B

    move-result-object v4

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-interface {v1, v4, v8, v7}, Ld9e;->i([BII)V

    invoke-virtual {v3, v8}, Lu4h;->l(I)V

    invoke-virtual {v3}, Lu4h;->A()I

    move-result v3

    invoke-virtual {v2, v3}, Lu9e;->a(I)Z

    new-instance v3, Laee;

    invoke-interface/range {p1 .. p1}, Ld9e;->zzd()J

    move-result-wide v8

    invoke-interface/range {p1 .. p1}, Ld9e;->zzf()J

    move-result-wide v10

    iget v12, v2, Lu9e;->f:I

    iget v13, v2, Lu9e;->c:I

    const/4 v14, 0x0

    move-object v7, v3

    invoke-direct/range {v7 .. v14}, Laee;-><init>(JJIIZ)V

    goto :goto_c

    :cond_16
    move-object/from16 v3, v16

    :goto_c
    iget-object v4, v0, Lcee;->g:Lrae;

    invoke-interface {v3}, Lkae;->zza()J

    move-result-wide v7

    invoke-interface {v4, v7, v8}, Lrae;->c(J)V

    :goto_d
    iput-object v3, v0, Lcee;->p:Leee;

    iget-object v4, v0, Lcee;->f:Lf9e;

    invoke-interface {v4, v3}, Lf9e;->i(Lkae;)V

    new-instance v3, Lgpj;

    invoke-direct {v3}, Lgpj;-><init>()V

    const-string v4, "audio/mpeg"

    invoke-virtual {v3, v4}, Lgpj;->e(Ljava/lang/String;)Lgpj;

    iget-object v4, v2, Lu9e;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lgpj;->E(Ljava/lang/String;)Lgpj;

    const/16 v4, 0x1000

    invoke-virtual {v3, v4}, Lgpj;->t(I)Lgpj;

    iget v4, v2, Lu9e;->e:I

    invoke-virtual {v3, v4}, Lgpj;->b(I)Lgpj;

    iget v2, v2, Lu9e;->d:I

    invoke-virtual {v3, v2}, Lgpj;->F(I)Lgpj;

    iget-object v2, v0, Lcee;->c:Lq9e;

    iget v4, v2, Lq9e;->a:I

    invoke-virtual {v3, v4}, Lgpj;->i(I)Lgpj;

    iget v2, v2, Lq9e;->b:I

    invoke-virtual {v3, v2}, Lgpj;->j(I)Lgpj;

    iget-object v2, v0, Lcee;->j:Lhre;

    invoke-virtual {v3, v2}, Lgpj;->w(Lhre;)Lgpj;

    iget-object v2, v0, Lcee;->p:Leee;

    invoke-interface {v2}, Leee;->zzc()I

    move-result v2

    const v4, -0x7fffffff

    if-eq v2, v4, :cond_17

    iget-object v2, v0, Lcee;->p:Leee;

    invoke-interface {v2}, Leee;->zzc()I

    move-result v2

    invoke-virtual {v3, v2}, Lgpj;->a(I)Lgpj;

    :cond_17
    iget-object v2, v0, Lcee;->h:Lrae;

    invoke-virtual {v3}, Lgpj;->K()Lerj;

    move-result-object v3

    invoke-interface {v2, v3}, Lrae;->f(Lerj;)V

    invoke-interface/range {p1 .. p1}, Ld9e;->zzf()J

    move-result-wide v2

    iput-wide v2, v0, Lcee;->m:J

    goto :goto_e

    :cond_18
    iget-wide v2, v0, Lcee;->m:J

    const-wide/16 v7, 0x0

    cmp-long v4, v2, v7

    if-eqz v4, :cond_19

    invoke-interface/range {p1 .. p1}, Ld9e;->zzf()J

    move-result-wide v7

    cmp-long v4, v7, v2

    if-gez v4, :cond_19

    sub-long/2addr v2, v7

    long-to-int v2, v2

    invoke-interface {v1, v2}, Ld9e;->f(I)V

    :cond_19
    :goto_e
    iget v2, v0, Lcee;->o:I

    if-nez v2, :cond_1e

    invoke-interface/range {p1 .. p1}, Ld9e;->zzj()V

    invoke-virtual/range {p0 .. p1}, Lcee;->j(Ld9e;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v3, -0x1

    goto :goto_12

    :cond_1a
    iget-object v2, v0, Lcee;->a:Lu4h;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lu4h;->l(I)V

    invoke-virtual {v2}, Lu4h;->A()I

    move-result v2

    iget v3, v0, Lcee;->i:I

    int-to-long v3, v3

    invoke-static {v2, v3, v4}, Lcee;->i(IJ)Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-static {v2}, Lv9e;->b(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1c

    :cond_1b
    const/4 v3, 0x1

    goto :goto_f

    :cond_1c
    iget-object v3, v0, Lcee;->b:Lu9e;

    invoke-virtual {v3, v2}, Lu9e;->a(I)Z

    iget-wide v7, v0, Lcee;->k:J

    cmp-long v2, v7, v5

    if-nez v2, :cond_1d

    iget-object v2, v0, Lcee;->p:Leee;

    invoke-interface/range {p1 .. p1}, Ld9e;->zzf()J

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Leee;->c(J)J

    move-result-wide v4

    iput-wide v4, v0, Lcee;->k:J

    :cond_1d
    iget v2, v3, Lu9e;->c:I

    iput v2, v0, Lcee;->o:I

    invoke-interface/range {p1 .. p1}, Ld9e;->zzf()J

    move-result-wide v3

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, v0, Lcee;->n:J

    :cond_1e
    const/4 v3, 0x1

    goto :goto_11

    :goto_f
    invoke-interface {v1, v3}, Ld9e;->f(I)V

    const/4 v1, 0x0

    iput v1, v0, Lcee;->i:I

    :goto_10
    const/4 v3, 0x0

    goto :goto_12

    :goto_11
    iget-object v4, v0, Lcee;->h:Lrae;

    invoke-interface {v4, v1, v2, v3}, Lrae;->a(Lk8j;IZ)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1f

    move v3, v2

    goto :goto_12

    :cond_1f
    iget v2, v0, Lcee;->o:I

    sub-int/2addr v2, v1

    iput v2, v0, Lcee;->o:I

    if-lez v2, :cond_20

    goto :goto_10

    :goto_12
    return v3

    :cond_20
    iget-object v4, v0, Lcee;->h:Lrae;

    iget-wide v1, v0, Lcee;->l:J

    invoke-virtual {v0, v1, v2}, Lcee;->g(J)J

    move-result-wide v5

    iget-object v1, v0, Lcee;->b:Lu9e;

    iget v8, v1, Lu9e;->c:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    invoke-interface/range {v4 .. v10}, Lrae;->g(JIIILqae;)V

    iget-wide v2, v0, Lcee;->l:J

    iget v1, v1, Lu9e;->g:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcee;->l:J

    const/4 v1, 0x0

    iput v1, v0, Lcee;->o:I

    return v1
.end method

.method public final d(Ld9e;Ly9e;)I
    .locals 0

    iget-object p2, p0, Lcee;->g:Lrae;

    invoke-static {p2}, Ln7g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    sget p2, Lkfh;->a:I

    invoke-virtual {p0, p1}, Lcee;->c(Ld9e;)I

    move-result p0

    return p0
.end method

.method public final e(Ld9e;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcee;->k(Ld9e;Z)Z

    move-result p0

    return p0
.end method

.method public final f(Lf9e;)V
    .locals 2

    iput-object p1, p0, Lcee;->f:Lf9e;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lf9e;->j(II)Lrae;

    move-result-object p1

    iput-object p1, p0, Lcee;->g:Lrae;

    iput-object p1, p0, Lcee;->h:Lrae;

    iget-object p0, p0, Lcee;->f:Lf9e;

    invoke-interface {p0}, Lf9e;->zzG()V

    return-void
.end method

.method public final g(J)J
    .locals 7

    iget-object v0, p0, Lcee;->b:Lu9e;

    iget-wide v1, p0, Lcee;->k:J

    iget p0, v0, Lu9e;->d:I

    int-to-long v3, p0

    const-wide/32 v5, 0xf4240

    mul-long/2addr p1, v5

    div-long/2addr p1, v3

    add-long/2addr v1, p1

    return-wide v1
.end method

.method public final h()V
    .locals 4

    iget-object v0, p0, Lcee;->p:Leee;

    instance-of v1, v0, Laee;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lkae;->zzh()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcee;->n:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcee;->p:Leee;

    invoke-interface {v2}, Leee;->zzd()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcee;->p:Leee;

    check-cast v0, Laee;

    iget-wide v1, p0, Lcee;->n:J

    invoke-virtual {v0, v1, v2}, Laee;->e(J)Laee;

    move-result-object v0

    iput-object v0, p0, Lcee;->p:Leee;

    iget-object v0, p0, Lcee;->f:Lf9e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcee;->p:Leee;

    invoke-interface {v0, v1}, Lf9e;->i(Lkae;)V

    iget-object v0, p0, Lcee;->g:Lrae;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcee;->p:Leee;

    invoke-interface {p0}, Lkae;->zza()J

    :cond_0
    return-void
.end method

.method public final j(Ld9e;)Z
    .locals 8

    iget-object v0, p0, Lcee;->p:Leee;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Leee;->zzd()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ld9e;->zze()J

    move-result-wide v4

    const-wide/16 v6, -0x4

    add-long/2addr v2, v6

    cmp-long v0, v4, v2

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    :try_start_0
    iget-object p0, p0, Lcee;->a:Lu4h;

    invoke-virtual {p0}, Lu4h;->n()[B

    move-result-object p0

    const/4 v0, 0x4

    const/4 v2, 0x0

    invoke-interface {p1, p0, v2, v0, v1}, Ld9e;->e([BIIZ)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_2

    return v1

    :cond_2
    return v2

    :catch_0
    return v1
.end method

.method public final k(Ld9e;Z)Z
    .locals 9

    invoke-interface {p1}, Ld9e;->zzj()V

    invoke-interface {p1}, Ld9e;->zzf()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcee;->d:Ls9e;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Ls9e;->a(Ld9e;Lzce;)Lhre;

    move-result-object v0

    iput-object v0, p0, Lcee;->j:Lhre;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcee;->c:Lq9e;

    invoke-virtual {v2, v0}, Lq9e;->b(Lhre;)Z

    :cond_0
    invoke-interface {p1}, Ld9e;->zze()J

    move-result-wide v2

    long-to-int v0, v2

    if-nez p2, :cond_1

    invoke-interface {p1, v0}, Ld9e;->f(I)V

    :cond_1
    move v2, v1

    :goto_0
    move v3, v2

    move v4, v3

    goto :goto_1

    :cond_2
    move v0, v1

    move v2, v0

    goto :goto_0

    :goto_1
    invoke-virtual {p0, p1}, Lcee;->j(Ld9e;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    if-lez v3, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {p0}, Lcee;->h()V

    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_4
    iget-object v5, p0, Lcee;->a:Lu4h;

    invoke-virtual {v5, v1}, Lu4h;->l(I)V

    invoke-virtual {v5}, Lu4h;->A()I

    move-result v5

    if-eqz v2, :cond_5

    int-to-long v7, v2

    invoke-static {v5, v7, v8}, Lcee;->i(IJ)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_5
    invoke-static {v5}, Lv9e;->b(I)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_b

    :cond_6
    if-eq v6, p2, :cond_7

    const/high16 v2, 0x20000

    goto :goto_2

    :cond_7
    const v2, 0x8000

    :goto_2
    add-int/lit8 v3, v4, 0x1

    if-ne v4, v2, :cond_9

    if-eqz p2, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Lcee;->h()V

    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_9
    if-eqz p2, :cond_a

    invoke-interface {p1}, Ld9e;->zzj()V

    add-int v2, v0, v3

    invoke-interface {p1, v2}, Ld9e;->zzg(I)V

    :goto_3
    move v2, v1

    move v4, v3

    move v3, v2

    goto :goto_1

    :cond_a
    invoke-interface {p1, v6}, Ld9e;->f(I)V

    goto :goto_3

    :cond_b
    add-int/lit8 v3, v3, 0x1

    if-ne v3, v6, :cond_c

    iget-object v2, p0, Lcee;->b:Lu9e;

    invoke-virtual {v2, v5}, Lu9e;->a(I)Z

    move v2, v5

    goto :goto_6

    :cond_c
    const/4 v5, 0x4

    if-ne v3, v5, :cond_e

    :goto_4
    if-eqz p2, :cond_d

    add-int/2addr v0, v4

    invoke-interface {p1, v0}, Ld9e;->f(I)V

    goto :goto_5

    :cond_d
    invoke-interface {p1}, Ld9e;->zzj()V

    :goto_5
    iput v2, p0, Lcee;->i:I

    return v6

    :cond_e
    :goto_6
    add-int/lit8 v7, v7, -0x4

    invoke-interface {p1, v7}, Ld9e;->zzg(I)V

    goto :goto_1
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
