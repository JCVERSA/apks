.class public final Ljje;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llje;


# instance fields
.field public final a:Lu4h;

.field public final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Lrae;

.field public h:I

.field public i:I

.field public j:I

.field public k:J

.field public l:Lerj;

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:J


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p4, Lu4h;

    new-array p3, p3, [B

    invoke-direct {p4, p3}, Lu4h;-><init>([B)V

    iput-object p4, p0, Ljje;->a:Lu4h;

    const/4 p3, 0x0

    iput p3, p0, Ljje;->h:I

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p3, p0, Ljje;->q:J

    new-instance p3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p3, p0, Ljje;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p3, -0x1

    iput p3, p0, Ljje;->o:I

    iput p3, p0, Ljje;->p:I

    iput-object p1, p0, Ljje;->c:Ljava/lang/String;

    iput p2, p0, Ljje;->d:I

    const-string p1, "video/mp2t"

    iput-object p1, p0, Ljje;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lu4h;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x8

    iget-object v3, v0, Ljje;->g:Lrae;

    invoke-static {v3}, Ln7g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lu4h;->u()I

    move-result v3

    if-lez v3, :cond_20

    iget v3, v0, Ljje;->h:I

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x1

    if-eqz v3, :cond_14

    const/4 v9, 0x5

    const/4 v10, 0x7

    const/4 v11, 0x6

    if-eq v3, v8, :cond_b

    if-eq v3, v5, :cond_a

    const-wide/16 v12, 0x0

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v3, v4, :cond_8

    if-eq v3, v7, :cond_6

    if-eq v3, v9, :cond_3

    invoke-virtual/range {p1 .. p1}, Lu4h;->u()I

    move-result v3

    iget v4, v0, Ljje;->m:I

    iget v5, v0, Ljje;->i:I

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, v0, Ljje;->g:Lrae;

    invoke-interface {v4, v1, v3}, Lrae;->d(Lu4h;I)V

    iget v4, v0, Ljje;->i:I

    add-int/2addr v4, v3

    iput v4, v0, Ljje;->i:I

    iget v3, v0, Ljje;->m:I

    if-ne v4, v3, :cond_0

    iget-wide v3, v0, Ljje;->q:J

    cmp-long v3, v3, v14

    if-eqz v3, :cond_1

    move v3, v8

    goto :goto_1

    :cond_1
    move v3, v6

    :goto_1
    invoke-static {v3}, Ln7g;->f(Z)V

    iget-object v9, v0, Ljje;->g:Lrae;

    iget-wide v10, v0, Ljje;->q:J

    iget v3, v0, Ljje;->n:I

    if-ne v3, v7, :cond_2

    move v12, v6

    goto :goto_2

    :cond_2
    move v12, v8

    :goto_2
    iget v13, v0, Ljje;->m:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface/range {v9 .. v15}, Lrae;->g(JIIILqae;)V

    iget-wide v3, v0, Ljje;->q:J

    iget-wide v7, v0, Ljje;->k:J

    add-long/2addr v3, v7

    iput-wide v3, v0, Ljje;->q:J

    iput v6, v0, Ljje;->h:I

    goto :goto_0

    :cond_3
    iget-object v3, v0, Ljje;->a:Lu4h;

    invoke-virtual {v3}, Lu4h;->n()[B

    move-result-object v5

    iget v7, v0, Ljje;->p:I

    invoke-virtual {v0, v1, v5, v7}, Ljje;->e(Lu4h;[BI)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v0, Ljje;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Lu4h;->n()[B

    move-result-object v7

    invoke-static {v7, v5}, Lb9e;->e([BLjava/util/concurrent/atomic/AtomicInteger;)Lu8e;

    move-result-object v5

    iget v7, v0, Ljje;->n:I

    if-ne v7, v4, :cond_4

    invoke-virtual {v0, v5}, Ljje;->d(Lu8e;)V

    :cond_4
    iget v4, v5, Lu8e;->d:I

    iput v4, v0, Ljje;->m:I

    iget-wide v4, v5, Lu8e;->e:J

    cmp-long v7, v4, v14

    if-nez v7, :cond_5

    goto :goto_3

    :cond_5
    move-wide v12, v4

    :goto_3
    iput-wide v12, v0, Ljje;->k:J

    invoke-virtual {v3, v6}, Lu4h;->l(I)V

    iget-object v4, v0, Ljje;->g:Lrae;

    iget v5, v0, Ljje;->p:I

    invoke-interface {v4, v3, v5}, Lrae;->d(Lu4h;I)V

    iput v11, v0, Ljje;->h:I

    goto/16 :goto_0

    :cond_6
    iget-object v3, v0, Ljje;->a:Lu4h;

    invoke-virtual {v3}, Lu4h;->n()[B

    move-result-object v4

    invoke-virtual {v0, v1, v4, v11}, Ljje;->e(Lu4h;[BI)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lu4h;->n()[B

    move-result-object v3

    invoke-static {v3}, Lb9e;->b([B)I

    move-result v3

    iput v3, v0, Ljje;->p:I

    iget v4, v0, Ljje;->i:I

    if-le v4, v3, :cond_7

    sub-int v3, v4, v3

    sub-int/2addr v4, v3

    iput v4, v0, Ljje;->i:I

    invoke-virtual/range {p1 .. p1}, Lu4h;->w()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v1, v4}, Lu4h;->l(I)V

    :cond_7
    iput v9, v0, Ljje;->h:I

    goto/16 :goto_0

    :cond_8
    iget-object v3, v0, Ljje;->a:Lu4h;

    invoke-virtual {v3}, Lu4h;->n()[B

    move-result-object v4

    iget v5, v0, Ljje;->o:I

    invoke-virtual {v0, v1, v4, v5}, Ljje;->e(Lu4h;[BI)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lu4h;->n()[B

    move-result-object v4

    invoke-static {v4}, Lb9e;->d([B)Lu8e;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljje;->d(Lu8e;)V

    iget v5, v4, Lu8e;->d:I

    iput v5, v0, Ljje;->m:I

    iget-wide v4, v4, Lu8e;->e:J

    cmp-long v7, v4, v14

    if-nez v7, :cond_9

    goto :goto_4

    :cond_9
    move-wide v12, v4

    :goto_4
    iput-wide v12, v0, Ljje;->k:J

    invoke-virtual {v3, v6}, Lu4h;->l(I)V

    iget-object v4, v0, Ljje;->g:Lrae;

    iget v5, v0, Ljje;->o:I

    invoke-interface {v4, v3, v5}, Lrae;->d(Lu4h;I)V

    iput v11, v0, Ljje;->h:I

    goto/16 :goto_0

    :cond_a
    iget-object v3, v0, Ljje;->a:Lu4h;

    invoke-virtual {v3}, Lu4h;->n()[B

    move-result-object v5

    invoke-virtual {v0, v1, v5, v10}, Ljje;->e(Lu4h;[BI)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Lu4h;->n()[B

    move-result-object v3

    invoke-static {v3}, Lb9e;->a([B)I

    move-result v3

    iput v3, v0, Ljje;->o:I

    iput v4, v0, Ljje;->h:I

    goto/16 :goto_0

    :cond_b
    iget-object v3, v0, Ljje;->a:Lu4h;

    invoke-virtual {v3}, Lu4h;->n()[B

    move-result-object v12

    const/16 v13, 0x12

    invoke-virtual {v0, v1, v12, v13}, Ljje;->e(Lu4h;[BI)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v3}, Lu4h;->n()[B

    move-result-object v12

    iget-object v14, v0, Ljje;->l:Lerj;

    if-nez v14, :cond_c

    iget-object v15, v0, Ljje;->f:Ljava/lang/String;

    iget-object v14, v0, Ljje;->c:Ljava/lang/String;

    iget v13, v0, Ljje;->d:I

    iget-object v5, v0, Ljje;->e:Ljava/lang/String;

    const/16 v19, 0x0

    move-object/from16 v16, v14

    move-object v14, v12

    move/from16 v17, v13

    move-object/from16 v18, v5

    invoke-static/range {v14 .. v19}, Lb9e;->c([BLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzs;)Lerj;

    move-result-object v5

    iput-object v5, v0, Ljje;->l:Lerj;

    iget-object v13, v0, Ljje;->g:Lrae;

    invoke-interface {v13, v5}, Lrae;->f(Lerj;)V

    :cond_c
    sget-object v5, Lb9e;->a:[I

    aget-byte v5, v12, v6

    const/16 v13, 0x1f

    const/4 v14, -0x1

    const/4 v15, -0x2

    if-eq v5, v15, :cond_f

    if-eq v5, v14, :cond_e

    if-eq v5, v13, :cond_d

    aget-byte v16, v12, v9

    and-int/lit8 v4, v16, 0x3

    shl-int/lit8 v4, v4, 0xc

    aget-byte v6, v12, v11

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v7

    aget-byte v9, v12, v10

    :goto_5
    and-int/lit16 v9, v9, 0xf0

    shr-int/2addr v9, v7

    or-int/2addr v4, v6

    or-int/2addr v4, v9

    add-int/2addr v4, v8

    const/4 v6, 0x0

    goto :goto_7

    :cond_d
    aget-byte v6, v12, v11

    and-int/2addr v4, v6

    shl-int/lit8 v4, v4, 0xc

    aget-byte v6, v12, v10

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v7

    aget-byte v9, v12, v2

    :goto_6
    and-int/lit8 v9, v9, 0x3c

    const/16 v18, 0x2

    shr-int/lit8 v9, v9, 0x2

    or-int/2addr v4, v6

    or-int/2addr v4, v9

    add-int/2addr v4, v8

    move v6, v8

    goto :goto_7

    :cond_e
    aget-byte v6, v12, v10

    and-int/2addr v4, v6

    shl-int/lit8 v4, v4, 0xc

    aget-byte v6, v12, v11

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v7

    const/16 v9, 0x9

    aget-byte v9, v12, v9

    goto :goto_6

    :cond_f
    aget-byte v6, v12, v7

    and-int/2addr v4, v6

    shl-int/lit8 v4, v4, 0xc

    aget-byte v6, v12, v10

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v7

    aget-byte v9, v12, v11

    goto :goto_5

    :goto_7
    if-eqz v6, :cond_10

    mul-int/lit8 v4, v4, 0x10

    div-int/lit8 v4, v4, 0xe

    :cond_10
    iput v4, v0, Ljje;->m:I

    if-eq v5, v15, :cond_13

    if-eq v5, v14, :cond_12

    if-eq v5, v13, :cond_11

    aget-byte v4, v12, v7

    and-int/2addr v4, v8

    shl-int/2addr v4, v11

    const/4 v5, 0x5

    aget-byte v5, v12, v5

    and-int/lit16 v5, v5, 0xfc

    const/4 v6, 0x2

    :goto_8
    shr-int/2addr v5, v6

    or-int/2addr v4, v5

    goto :goto_a

    :cond_11
    const/4 v5, 0x5

    const/4 v6, 0x2

    aget-byte v4, v12, v5

    and-int/2addr v4, v10

    shl-int/2addr v4, v7

    aget-byte v5, v12, v11

    :goto_9
    and-int/lit8 v5, v5, 0x3c

    goto :goto_8

    :cond_12
    const/4 v6, 0x2

    aget-byte v4, v12, v7

    and-int/2addr v4, v10

    shl-int/2addr v4, v7

    aget-byte v5, v12, v10

    goto :goto_9

    :cond_13
    const/4 v4, 0x5

    const/4 v6, 0x2

    aget-byte v4, v12, v4

    and-int/2addr v4, v8

    shl-int/2addr v4, v11

    aget-byte v5, v12, v7

    and-int/lit16 v5, v5, 0xfc

    goto :goto_8

    :goto_a
    add-int/2addr v4, v8

    iget-object v5, v0, Ljje;->l:Lerj;

    iget v5, v5, Lerj;->F:I

    mul-int/lit8 v4, v4, 0x20

    int-to-long v6, v4

    invoke-static {v6, v7, v5}, Lkfh;->O(JI)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/s7;->b(J)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, v0, Ljje;->k:J

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lu4h;->l(I)V

    iget-object v4, v0, Ljje;->g:Lrae;

    const/16 v5, 0x12

    invoke-interface {v4, v3, v5}, Lrae;->d(Lu4h;I)V

    iput v11, v0, Ljje;->h:I

    goto/16 :goto_0

    :cond_14
    invoke-virtual/range {p1 .. p1}, Lu4h;->u()I

    move-result v3

    if-lez v3, :cond_0

    iget v3, v0, Ljje;->j:I

    shl-int/2addr v3, v2

    iput v3, v0, Ljje;->j:I

    invoke-virtual/range {p1 .. p1}, Lu4h;->G()I

    move-result v5

    or-int/2addr v3, v5

    iput v3, v0, Ljje;->j:I

    sget-object v5, Lb9e;->a:[I

    const v5, 0x7ffe8001

    if-eq v3, v5, :cond_15

    const v5, -0x180fe80

    if-eq v3, v5, :cond_15

    const v5, 0x1fffe800

    if-eq v3, v5, :cond_15

    const v5, -0xe0ff18

    if-ne v3, v5, :cond_16

    :cond_15
    move v3, v8

    goto :goto_b

    :cond_16
    const v5, 0x64582025

    if-eq v3, v5, :cond_17

    const v5, 0x25205864

    if-ne v3, v5, :cond_18

    :cond_17
    const/4 v3, 0x2

    goto :goto_b

    :cond_18
    const v5, 0x40411bf2

    if-eq v3, v5, :cond_19

    const v5, -0xde4bec0

    if-ne v3, v5, :cond_1a

    :cond_19
    move v3, v4

    goto :goto_b

    :cond_1a
    const v5, 0x71c442e8

    if-eq v3, v5, :cond_1b

    const v5, -0x17bd3b8f

    if-ne v3, v5, :cond_1c

    :cond_1b
    move v3, v7

    goto :goto_b

    :cond_1c
    const/4 v3, 0x0

    :goto_b
    iput v3, v0, Ljje;->n:I

    if-eqz v3, :cond_14

    iget-object v5, v0, Ljje;->a:Lu4h;

    invoke-virtual {v5}, Lu4h;->n()[B

    move-result-object v5

    iget v6, v0, Ljje;->j:I

    shr-int/lit8 v9, v6, 0x18

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    const/4 v10, 0x0

    aput-byte v9, v5, v10

    shr-int/lit8 v9, v6, 0x10

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v5, v8

    shr-int/lit8 v9, v6, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    const/4 v10, 0x2

    aput-byte v9, v5, v10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v4

    iput v7, v0, Ljje;->i:I

    const/4 v5, 0x0

    iput v5, v0, Ljje;->j:I

    if-eq v3, v4, :cond_1f

    if-ne v3, v7, :cond_1d

    goto :goto_c

    :cond_1d
    if-ne v3, v8, :cond_1e

    iput v8, v0, Ljje;->h:I

    goto/16 :goto_0

    :cond_1e
    const/4 v3, 0x2

    iput v3, v0, Ljje;->h:I

    goto/16 :goto_0

    :cond_1f
    :goto_c
    iput v7, v0, Ljje;->h:I

    goto/16 :goto_0

    :cond_20
    return-void
.end method

.method public final b(JI)V
    .locals 0

    iput-wide p1, p0, Ljje;->q:J

    return-void
.end method

.method public final c(Lf9e;Lcle;)V
    .locals 1

    invoke-virtual {p2}, Lcle;->c()V

    invoke-virtual {p2}, Lcle;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljje;->f:Ljava/lang/String;

    invoke-virtual {p2}, Lcle;->a()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lf9e;->j(II)Lrae;

    move-result-object p1

    iput-object p1, p0, Ljje;->g:Lrae;

    return-void
.end method

.method public final d(Lu8e;)V
    .locals 4

    iget v0, p1, Lu8e;->b:I

    const v1, -0x7fffffff

    if-eq v0, v1, :cond_3

    iget v1, p1, Lu8e;->c:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Ljje;->l:Lerj;

    if-eqz v2, :cond_1

    iget v3, v2, Lerj;->E:I

    if-ne v1, v3, :cond_1

    iget v3, v2, Lerj;->F:I

    if-ne v0, v3, :cond_1

    iget-object v3, p1, Lu8e;->a:Ljava/lang/String;

    iget-object v2, v2, Lerj;->o:Ljava/lang/String;

    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    iget-object v2, p0, Ljje;->l:Lerj;

    if-nez v2, :cond_2

    new-instance v2, Lgpj;

    invoke-direct {v2}, Lgpj;-><init>()V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lerj;->b()Lgpj;

    move-result-object v2

    :goto_0
    iget-object v3, p0, Ljje;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lgpj;->o(Ljava/lang/String;)Lgpj;

    iget-object v3, p0, Ljje;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lgpj;->e(Ljava/lang/String;)Lgpj;

    iget-object p1, p1, Lu8e;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lgpj;->E(Ljava/lang/String;)Lgpj;

    invoke-virtual {v2, v1}, Lgpj;->b(I)Lgpj;

    invoke-virtual {v2, v0}, Lgpj;->F(I)Lgpj;

    iget-object p1, p0, Ljje;->c:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lgpj;->s(Ljava/lang/String;)Lgpj;

    iget p1, p0, Ljje;->d:I

    invoke-virtual {v2, p1}, Lgpj;->C(I)Lgpj;

    invoke-virtual {v2}, Lgpj;->K()Lerj;

    move-result-object p1

    iput-object p1, p0, Ljje;->l:Lerj;

    iget-object p0, p0, Ljje;->g:Lrae;

    invoke-interface {p0, p1}, Lrae;->f(Lerj;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final e(Lu4h;[BI)Z
    .locals 2

    invoke-virtual {p1}, Lu4h;->u()I

    move-result v0

    iget v1, p0, Ljje;->i:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Ljje;->i:I

    invoke-virtual {p1, p2, v1, v0}, Lu4h;->h([BII)V

    iget p1, p0, Ljje;->i:I

    add-int/2addr p1, v0

    iput p1, p0, Ljje;->i:I

    if-ne p1, p3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzc(Z)V
    .locals 0

    return-void
.end method

.method public final zze()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Ljje;->h:I

    iput v0, p0, Ljje;->i:I

    iput v0, p0, Ljje;->j:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Ljje;->q:J

    iget-object p0, p0, Ljje;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method
