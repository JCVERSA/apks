.class public final Lwsf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:[S

.field public j:[S

.field public k:I

.field public l:[S

.field public m:I

.field public n:[S

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:D


# direct methods
.method public constructor <init>(IIFFI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lwsf;->a:I

    iput p2, p0, Lwsf;->b:I

    iput p3, p0, Lwsf;->c:F

    iput p4, p0, Lwsf;->d:F

    int-to-float p3, p1

    int-to-float p4, p5

    div-float/2addr p3, p4

    iput p3, p0, Lwsf;->e:F

    div-int/lit16 p3, p1, 0x190

    iput p3, p0, Lwsf;->f:I

    div-int/lit8 p1, p1, 0x41

    iput p1, p0, Lwsf;->g:I

    add-int/2addr p1, p1

    iput p1, p0, Lwsf;->h:I

    new-array p3, p1, [S

    iput-object p3, p0, Lwsf;->i:[S

    mul-int/2addr p1, p2

    new-array p2, p1, [S

    iput-object p2, p0, Lwsf;->j:[S

    new-array p2, p1, [S

    iput-object p2, p0, Lwsf;->l:[S

    new-array p1, p1, [S

    iput-object p1, p0, Lwsf;->n:[S

    return-void
.end method

.method public static j(II[SI[SI[SI)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    mul-int v2, p3, p1

    mul-int v3, p7, p1

    mul-int v4, p5, p1

    add-int/2addr v4, v1

    add-int/2addr v3, v1

    add-int/2addr v2, v1

    move v5, v0

    :goto_1
    if-ge v5, p0, :cond_0

    aget-short v6, p4, v4

    sub-int v7, p0, v5

    mul-int/2addr v6, v7

    aget-short v7, p6, v3

    mul-int/2addr v7, v5

    add-int/2addr v6, v7

    div-int/2addr v6, p0

    int-to-short v6, v6

    aput-short v6, p2, v2

    add-int/2addr v2, p1

    add-int/2addr v4, p1

    add-int/2addr v3, p1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lwsf;->m:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ln7g;->f(Z)V

    iget v0, p0, Lwsf;->m:I

    iget p0, p0, Lwsf;->b:I

    mul-int/2addr v0, p0

    add-int/2addr v0, v0

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lwsf;->k:I

    iget p0, p0, Lwsf;->b:I

    mul-int/2addr v0, p0

    add-int/2addr v0, v0

    return v0
.end method

.method public final c()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lwsf;->k:I

    iput v0, p0, Lwsf;->m:I

    iput v0, p0, Lwsf;->o:I

    iput v0, p0, Lwsf;->p:I

    iput v0, p0, Lwsf;->q:I

    iput v0, p0, Lwsf;->r:I

    iput v0, p0, Lwsf;->s:I

    iput v0, p0, Lwsf;->t:I

    iput v0, p0, Lwsf;->u:I

    iput v0, p0, Lwsf;->v:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lwsf;->w:D

    return-void
.end method

.method public final d(Ljava/nio/ShortBuffer;)V
    .locals 5

    iget v0, p0, Lwsf;->m:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Ln7g;->f(Z)V

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    iget v2, p0, Lwsf;->b:I

    div-int/2addr v0, v2

    iget v3, p0, Lwsf;->m:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int v3, v0, v2

    iget-object v4, p0, Lwsf;->l:[S

    invoke-virtual {p1, v4, v1, v3}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    iget p1, p0, Lwsf;->m:I

    sub-int/2addr p1, v0

    iput p1, p0, Lwsf;->m:I

    iget-object p0, p0, Lwsf;->l:[S

    mul-int/2addr p1, v2

    invoke-static {p0, v3, p0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final e()V
    .locals 10

    iget v0, p0, Lwsf;->k:I

    iget v1, p0, Lwsf;->r:I

    sub-int v2, v0, v1

    int-to-double v3, v1

    int-to-double v1, v2

    iget v5, p0, Lwsf;->m:I

    iget v6, p0, Lwsf;->c:F

    iget v7, p0, Lwsf;->d:F

    div-float/2addr v6, v7

    float-to-double v8, v6

    div-double/2addr v1, v8

    add-double/2addr v1, v3

    iget-wide v3, p0, Lwsf;->w:D

    add-double/2addr v1, v3

    iget v3, p0, Lwsf;->o:I

    int-to-double v3, v3

    add-double/2addr v1, v3

    iget v3, p0, Lwsf;->e:F

    mul-float/2addr v3, v7

    float-to-double v3, v3

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int v1, v1

    add-int/2addr v5, v1

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lwsf;->w:D

    iget v1, p0, Lwsf;->h:I

    add-int/2addr v1, v1

    add-int v2, v0, v1

    iget-object v3, p0, Lwsf;->j:[S

    invoke-virtual {p0, v3, v0, v2}, Lwsf;->l([SII)[S

    move-result-object v2

    iput-object v2, p0, Lwsf;->j:[S

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, p0, Lwsf;->b:I

    mul-int v6, v1, v4

    if-ge v3, v6, :cond_0

    iget-object v6, p0, Lwsf;->j:[S

    mul-int/2addr v4, v0

    add-int/2addr v4, v3

    aput-short v2, v6, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lwsf;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lwsf;->k:I

    invoke-virtual {p0}, Lwsf;->k()V

    iget v0, p0, Lwsf;->m:I

    if-le v0, v5, :cond_1

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lwsf;->m:I

    :cond_1
    iput v2, p0, Lwsf;->k:I

    iput v2, p0, Lwsf;->r:I

    iput v2, p0, Lwsf;->o:I

    return-void
.end method

.method public final f(Ljava/nio/ShortBuffer;)V
    .locals 5

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    iget v1, p0, Lwsf;->b:I

    div-int/2addr v0, v1

    mul-int v2, v0, v1

    iget-object v3, p0, Lwsf;->j:[S

    iget v4, p0, Lwsf;->k:I

    invoke-virtual {p0, v3, v4, v0}, Lwsf;->l([SII)[S

    move-result-object v3

    iput-object v3, p0, Lwsf;->j:[S

    iget v4, p0, Lwsf;->k:I

    mul-int/2addr v4, v1

    add-int/2addr v2, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p1, v3, v4, v2}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    iget p1, p0, Lwsf;->k:I

    add-int/2addr p1, v0

    iput p1, p0, Lwsf;->k:I

    invoke-virtual {p0}, Lwsf;->k()V

    return-void
.end method

.method public final g([SIII)I
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xff

    move v3, v0

    move v4, v3

    :goto_0
    if-gt p3, p4, :cond_5

    move v5, v0

    move v6, v5

    :goto_1
    if-ge v5, p3, :cond_0

    iget v7, p0, Lwsf;->b:I

    mul-int/2addr v7, p2

    add-int v8, v7, v5

    aget-short v8, p1, v8

    add-int/2addr v7, p3

    add-int/2addr v7, v5

    aget-short v7, p1, v7

    sub-int/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    mul-int v5, v6, v3

    mul-int v7, v1, p3

    if-ge v5, v7, :cond_1

    move v1, v6

    :cond_1
    if-ge v5, v7, :cond_2

    move v3, p3

    :cond_2
    mul-int v5, v6, v2

    mul-int v7, v4, p3

    if-le v5, v7, :cond_3

    move v4, v6

    :cond_3
    if-le v5, v7, :cond_4

    move v2, p3

    :cond_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_5
    div-int/2addr v1, v3

    iput v1, p0, Lwsf;->u:I

    div-int/2addr v4, v2

    iput v4, p0, Lwsf;->v:I

    return v3
.end method

.method public final h([SII)V
    .locals 4

    iget-object v0, p0, Lwsf;->l:[S

    iget v1, p0, Lwsf;->m:I

    invoke-virtual {p0, v0, v1, p3}, Lwsf;->l([SII)[S

    move-result-object v0

    iput-object v0, p0, Lwsf;->l:[S

    iget v1, p0, Lwsf;->m:I

    iget v2, p0, Lwsf;->b:I

    mul-int/2addr v1, v2

    mul-int v3, p3, v2

    mul-int/2addr p2, v2

    invoke-static {p1, p2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lwsf;->m:I

    add-int/2addr p1, p3

    iput p1, p0, Lwsf;->m:I

    return-void
.end method

.method public final i([SII)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lwsf;->h:I

    div-int/2addr v2, p3

    if-ge v1, v2, :cond_1

    move v2, v0

    move v3, v2

    :goto_1
    iget v4, p0, Lwsf;->b:I

    mul-int v5, v4, p3

    if-ge v2, v5, :cond_0

    mul-int/2addr v4, p2

    mul-int/2addr v5, v1

    add-int/2addr v4, v5

    add-int/2addr v4, v2

    aget-short v4, p1, v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    div-int/2addr v3, v5

    iget-object v2, p0, Lwsf;->i:[S

    int-to-short v3, v3

    aput-short v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final k()V
    .locals 22

    move-object/from16 v0, p0

    iget v1, v0, Lwsf;->c:F

    iget v2, v0, Lwsf;->d:F

    div-float/2addr v1, v2

    float-to-double v3, v1

    const-wide v5, 0x3ff0000a80000000L    # 1.0000100135803223

    cmpl-double v1, v3, v5

    iget v5, v0, Lwsf;->m:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-gtz v1, :cond_1

    const-wide v8, 0x3fefffeb00000000L    # 0.9999899864196777

    cmpg-double v1, v3, v8

    if-gez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lwsf;->j:[S

    iget v3, v0, Lwsf;->k:I

    invoke-virtual {v0, v1, v6, v3}, Lwsf;->h([SII)V

    iput v6, v0, Lwsf;->k:I

    :goto_0
    move/from16 v18, v5

    goto/16 :goto_e

    :cond_1
    :goto_1
    iget v1, v0, Lwsf;->k:I

    iget v8, v0, Lwsf;->h:I

    if-ge v1, v8, :cond_2

    goto :goto_0

    :cond_2
    move v15, v6

    :goto_2
    iget v9, v0, Lwsf;->r:I

    if-lez v9, :cond_3

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    iget-object v10, v0, Lwsf;->j:[S

    invoke-virtual {v0, v10, v15, v9}, Lwsf;->h([SII)V

    iget v10, v0, Lwsf;->r:I

    sub-int/2addr v10, v9

    iput v10, v0, Lwsf;->r:I

    add-int/2addr v15, v9

    move-wide/from16 v19, v3

    move/from16 v18, v5

    goto/16 :goto_d

    :cond_3
    iget-object v9, v0, Lwsf;->j:[S

    iget v10, v0, Lwsf;->a:I

    const/16 v11, 0xfa0

    if-le v10, v11, :cond_4

    div-int/lit16 v10, v10, 0xfa0

    goto :goto_3

    :cond_4
    move v10, v7

    :goto_3
    iget v11, v0, Lwsf;->b:I

    if-ne v11, v7, :cond_6

    if-ne v10, v7, :cond_5

    iget v10, v0, Lwsf;->f:I

    iget v11, v0, Lwsf;->g:I

    invoke-virtual {v0, v9, v15, v10, v11}, Lwsf;->g([SIII)I

    move-result v9

    move/from16 v18, v5

    move v10, v7

    goto :goto_8

    :cond_5
    move v11, v7

    :cond_6
    invoke-virtual {v0, v9, v15, v10}, Lwsf;->i([SII)V

    iget-object v12, v0, Lwsf;->i:[S

    iget v13, v0, Lwsf;->f:I

    iget v14, v0, Lwsf;->g:I

    div-int v7, v14, v10

    move/from16 v18, v5

    div-int v5, v13, v10

    invoke-virtual {v0, v12, v6, v5, v7}, Lwsf;->g([SIII)I

    move-result v5

    const/4 v7, 0x1

    if-eq v10, v7, :cond_a

    mul-int/2addr v5, v10

    mul-int/lit8 v10, v10, 0x4

    sub-int v7, v5, v10

    if-ge v7, v13, :cond_7

    goto :goto_4

    :cond_7
    move v13, v7

    :goto_4
    add-int/2addr v5, v10

    if-le v5, v14, :cond_8

    :goto_5
    const/4 v5, 0x1

    goto :goto_6

    :cond_8
    move v14, v5

    goto :goto_5

    :goto_6
    if-ne v11, v5, :cond_9

    invoke-virtual {v0, v9, v15, v13, v14}, Lwsf;->g([SIII)I

    move-result v9

    :goto_7
    move v10, v11

    goto :goto_8

    :cond_9
    invoke-virtual {v0, v9, v15, v5}, Lwsf;->i([SII)V

    invoke-virtual {v0, v12, v6, v13, v14}, Lwsf;->g([SIII)I

    move-result v9

    goto :goto_7

    :cond_a
    move v9, v5

    goto :goto_7

    :goto_8
    iget v5, v0, Lwsf;->u:I

    iget v7, v0, Lwsf;->v:I

    if-eqz v5, :cond_e

    iget v11, v0, Lwsf;->s:I

    if-nez v11, :cond_b

    goto :goto_9

    :cond_b
    mul-int/lit8 v12, v5, 0x3

    if-le v7, v12, :cond_c

    goto :goto_9

    :cond_c
    add-int v7, v5, v5

    iget v12, v0, Lwsf;->t:I

    mul-int/lit8 v12, v12, 0x3

    if-gt v7, v12, :cond_d

    goto :goto_9

    :cond_d
    move v7, v11

    goto :goto_a

    :cond_e
    :goto_9
    move v7, v9

    :goto_a
    add-int v16, v15, v7

    iput v5, v0, Lwsf;->t:I

    iput v9, v0, Lwsf;->s:I

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v3, v11

    int-to-double v13, v7

    const-wide/high16 v19, -0x4010000000000000L    # -1.0

    if-lez v5, :cond_10

    iget-object v5, v0, Lwsf;->j:[S

    add-double v19, v3, v19

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    cmpl-double v9, v3, v11

    if-ltz v9, :cond_f

    iget-wide v11, v0, Lwsf;->w:D

    div-double v13, v13, v19

    add-double/2addr v13, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    long-to-int v9, v11

    int-to-double v11, v9

    sub-double/2addr v13, v11

    iput-wide v13, v0, Lwsf;->w:D

    move/from16 v21, v7

    move v6, v9

    goto :goto_b

    :cond_f
    sub-double/2addr v11, v3

    move/from16 v21, v7

    iget-wide v6, v0, Lwsf;->w:D

    mul-double/2addr v13, v11

    div-double v13, v13, v19

    add-double/2addr v13, v6

    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    iput v6, v0, Lwsf;->r:I

    int-to-double v6, v6

    sub-double/2addr v13, v6

    iput-wide v13, v0, Lwsf;->w:D

    move/from16 v6, v21

    :goto_b
    iget-object v7, v0, Lwsf;->l:[S

    iget v9, v0, Lwsf;->m:I

    invoke-virtual {v0, v7, v9, v6}, Lwsf;->l([SII)[S

    move-result-object v11

    iput-object v11, v0, Lwsf;->l:[S

    iget v12, v0, Lwsf;->m:I

    move v9, v6

    move-object v13, v5

    move v14, v15

    move v7, v15

    move-object v15, v5

    invoke-static/range {v9 .. v16}, Lwsf;->j(II[SI[SI[SI)V

    iget v5, v0, Lwsf;->m:I

    add-int/2addr v5, v6

    iput v5, v0, Lwsf;->m:I

    add-int v5, v21, v6

    add-int v15, v7, v5

    move-wide/from16 v19, v3

    goto :goto_d

    :cond_10
    move/from16 v21, v7

    move v7, v15

    iget-object v15, v0, Lwsf;->j:[S

    sub-double/2addr v11, v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    cmpg-double v5, v3, v5

    if-gez v5, :cond_11

    mul-double/2addr v13, v3

    iget-wide v5, v0, Lwsf;->w:D

    div-double/2addr v13, v11

    add-double/2addr v13, v5

    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v5, v5

    int-to-double v11, v5

    sub-double/2addr v13, v11

    iput-wide v13, v0, Lwsf;->w:D

    move-wide/from16 v19, v3

    goto :goto_c

    :cond_11
    add-double v5, v3, v3

    add-double v5, v5, v19

    move-wide/from16 v19, v3

    iget-wide v3, v0, Lwsf;->w:D

    mul-double/2addr v13, v5

    div-double/2addr v13, v11

    add-double/2addr v13, v3

    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, v0, Lwsf;->r:I

    int-to-double v3, v3

    sub-double/2addr v13, v3

    iput-wide v13, v0, Lwsf;->w:D

    move/from16 v5, v21

    :goto_c
    iget-object v3, v0, Lwsf;->l:[S

    iget v4, v0, Lwsf;->m:I

    add-int v6, v21, v5

    invoke-virtual {v0, v3, v4, v6}, Lwsf;->l([SII)[S

    move-result-object v3

    iput-object v3, v0, Lwsf;->l:[S

    mul-int v4, v7, v10

    iget v9, v0, Lwsf;->m:I

    mul-int/2addr v9, v10

    mul-int v11, v21, v10

    invoke-static {v15, v4, v3, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v11, v0, Lwsf;->l:[S

    iget v3, v0, Lwsf;->m:I

    add-int v12, v3, v21

    move v9, v5

    move-object v13, v15

    move/from16 v14, v16

    move/from16 v16, v7

    invoke-static/range {v9 .. v16}, Lwsf;->j(II[SI[SI[SI)V

    iget v3, v0, Lwsf;->m:I

    add-int/2addr v3, v6

    iput v3, v0, Lwsf;->m:I

    add-int v15, v7, v5

    :goto_d
    add-int v3, v15, v8

    if-le v3, v1, :cond_1a

    iget v1, v0, Lwsf;->k:I

    sub-int/2addr v1, v15

    iget-object v3, v0, Lwsf;->j:[S

    iget v4, v0, Lwsf;->b:I

    mul-int/2addr v15, v4

    mul-int/2addr v4, v1

    const/4 v5, 0x0

    invoke-static {v3, v15, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v1, v0, Lwsf;->k:I

    :goto_e
    iget v1, v0, Lwsf;->e:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_19

    iget v2, v0, Lwsf;->m:I

    move/from16 v3, v18

    if-ne v2, v3, :cond_12

    goto/16 :goto_14

    :cond_12
    iget v2, v0, Lwsf;->a:I

    int-to-float v4, v2

    div-float/2addr v4, v1

    int-to-long v1, v2

    float-to-long v4, v4

    :goto_f
    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_13

    cmp-long v8, v1, v6

    if-eqz v8, :cond_13

    const-wide/16 v8, 0x2

    rem-long v10, v4, v8

    cmp-long v10, v10, v6

    if-nez v10, :cond_13

    rem-long v10, v1, v8

    cmp-long v6, v10, v6

    if-nez v6, :cond_13

    div-long/2addr v4, v8

    div-long/2addr v1, v8

    goto :goto_f

    :cond_13
    iget v6, v0, Lwsf;->m:I

    sub-int/2addr v6, v3

    iget-object v7, v0, Lwsf;->n:[S

    iget v8, v0, Lwsf;->o:I

    invoke-virtual {v0, v7, v8, v6}, Lwsf;->l([SII)[S

    move-result-object v7

    iput-object v7, v0, Lwsf;->n:[S

    iget-object v8, v0, Lwsf;->l:[S

    iget v9, v0, Lwsf;->b:I

    mul-int v10, v3, v9

    iget v11, v0, Lwsf;->o:I

    mul-int/2addr v11, v9

    mul-int v12, v6, v9

    invoke-static {v8, v10, v7, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v3, v0, Lwsf;->m:I

    iget v3, v0, Lwsf;->o:I

    add-int/2addr v3, v6

    iput v3, v0, Lwsf;->o:I

    const/4 v3, 0x0

    :goto_10
    iget v6, v0, Lwsf;->o:I

    add-int/lit8 v7, v6, -0x1

    if-ge v3, v7, :cond_18

    :goto_11
    iget v6, v0, Lwsf;->p:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    int-to-long v10, v6

    mul-long v12, v10, v4

    iget v8, v0, Lwsf;->q:I

    int-to-long v14, v8

    mul-long v16, v14, v1

    cmp-long v8, v12, v16

    if-lez v8, :cond_15

    iget-object v6, v0, Lwsf;->l:[S

    iget v8, v0, Lwsf;->m:I

    invoke-virtual {v0, v6, v8, v7}, Lwsf;->l([SII)[S

    move-result-object v6

    iput-object v6, v0, Lwsf;->l:[S

    const/4 v6, 0x0

    :goto_12
    if-ge v6, v9, :cond_14

    iget-object v7, v0, Lwsf;->l:[S

    iget v8, v0, Lwsf;->m:I

    mul-int/2addr v8, v9

    iget-object v10, v0, Lwsf;->n:[S

    mul-int v11, v3, v9

    add-int/2addr v11, v6

    aget-short v12, v10, v11

    add-int/2addr v11, v9

    aget-short v10, v10, v11

    iget v11, v0, Lwsf;->q:I

    int-to-long v13, v11

    mul-long/2addr v13, v1

    iget v11, v0, Lwsf;->p:I

    move-wide/from16 v18, v1

    int-to-long v1, v11

    mul-long/2addr v1, v4

    const/4 v15, 0x1

    add-int/2addr v11, v15

    move v15, v6

    move-object/from16 v16, v7

    int-to-long v6, v11

    mul-long/2addr v6, v4

    int-to-long v11, v12

    move/from16 v20, v9

    int-to-long v9, v10

    sub-long v1, v6, v1

    sub-long/2addr v6, v13

    sub-long v13, v1, v6

    mul-long/2addr v6, v11

    mul-long/2addr v13, v9

    add-long/2addr v6, v13

    div-long/2addr v6, v1

    long-to-int v1, v6

    add-int/2addr v8, v15

    int-to-short v1, v1

    aput-short v1, v16, v8

    add-int/lit8 v6, v15, 0x1

    move-wide/from16 v1, v18

    move/from16 v9, v20

    goto :goto_12

    :cond_14
    move-wide/from16 v18, v1

    move/from16 v20, v9

    iget v1, v0, Lwsf;->q:I

    const/4 v9, 0x1

    add-int/2addr v1, v9

    iput v1, v0, Lwsf;->q:I

    iget v1, v0, Lwsf;->m:I

    add-int/2addr v1, v9

    iput v1, v0, Lwsf;->m:I

    move-wide/from16 v1, v18

    move/from16 v9, v20

    goto :goto_11

    :cond_15
    move-wide/from16 v18, v1

    move/from16 v20, v9

    move v9, v7

    iput v6, v0, Lwsf;->p:I

    cmp-long v1, v10, v18

    const/4 v10, 0x0

    if-nez v1, :cond_17

    iput v10, v0, Lwsf;->p:I

    cmp-long v1, v14, v4

    if-nez v1, :cond_16

    move v7, v9

    goto :goto_13

    :cond_16
    move v7, v10

    :goto_13
    invoke-static {v7}, Ln7g;->f(Z)V

    iput v10, v0, Lwsf;->q:I

    :cond_17
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v1, v18

    move/from16 v9, v20

    goto/16 :goto_10

    :cond_18
    move/from16 v20, v9

    const/4 v10, 0x0

    if-eqz v7, :cond_19

    iget-object v1, v0, Lwsf;->n:[S

    mul-int v9, v7, v20

    sub-int/2addr v6, v7

    mul-int v6, v6, v20

    invoke-static {v1, v9, v1, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, v0, Lwsf;->o:I

    sub-int/2addr v1, v7

    iput v1, v0, Lwsf;->o:I

    :cond_19
    :goto_14
    return-void

    :cond_1a
    move/from16 v5, v18

    move-wide/from16 v3, v19

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto/16 :goto_2
.end method

.method public final l([SII)[S
    .locals 1

    array-length v0, p1

    iget p0, p0, Lwsf;->b:I

    div-int/2addr v0, p0

    add-int/2addr p2, p3

    if-gt p2, v0, :cond_0

    return-object p1

    :cond_0
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p3

    mul-int/2addr v0, p0

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object p0

    return-object p0
.end method
