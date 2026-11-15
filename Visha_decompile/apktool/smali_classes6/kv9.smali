.class public final Lkv9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:D

.field public b:D

.field public c:Z

.field public d:D

.field public e:D

.field public f:D

.field public g:D

.field public h:D

.field public i:D

.field public j:J

.field public k:Z

.field public l:J

.field public m:D

.field public n:D

.field public o:D

.field public p:D

.field public final q:Lf43$p;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x4097700000000000L    # 1500.0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lkv9;->a:D

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 3
    iput-wide v0, p0, Lkv9;->b:D

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lkv9;->c:Z

    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 5
    iput-wide v1, p0, Lkv9;->i:D

    const-wide/16 v1, 0x0

    .line 6
    iput-wide v1, p0, Lkv9;->j:J

    .line 7
    iput-boolean v0, p0, Lkv9;->k:Z

    .line 8
    iput-wide v1, p0, Lkv9;->l:J

    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Lkv9;->m:D

    .line 10
    iput-wide v0, p0, Lkv9;->n:D

    .line 11
    iput-wide v0, p0, Lkv9;->o:D

    .line 12
    iput-wide v0, p0, Lkv9;->p:D

    .line 13
    new-instance v0, Lf43$p;

    invoke-direct {v0}, Lf43$p;-><init>()V

    iput-object v0, p0, Lkv9;->q:Lf43$p;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x4097700000000000L    # 1500.0

    .line 15
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lkv9;->a:D

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 16
    iput-wide v0, p0, Lkv9;->b:D

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lkv9;->c:Z

    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 18
    iput-wide v1, p0, Lkv9;->i:D

    const-wide/16 v1, 0x0

    .line 19
    iput-wide v1, p0, Lkv9;->j:J

    .line 20
    iput-boolean v0, p0, Lkv9;->k:Z

    .line 21
    iput-wide v1, p0, Lkv9;->l:J

    const-wide/16 v0, 0x0

    .line 22
    iput-wide v0, p0, Lkv9;->m:D

    .line 23
    iput-wide v0, p0, Lkv9;->n:D

    .line 24
    iput-wide v0, p0, Lkv9;->o:D

    .line 25
    iput-wide v0, p0, Lkv9;->p:D

    .line 26
    new-instance v0, Lf43$p;

    invoke-direct {v0}, Lf43$p;-><init>()V

    iput-object v0, p0, Lkv9;->q:Lf43$p;

    float-to-double v0, p1

    .line 27
    iput-wide v0, p0, Lkv9;->i:D

    return-void
.end method


# virtual methods
.method public a(FF)V
    .locals 4

    iget-wide v0, p0, Lkv9;->j:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lkv9;->a:D

    mul-double/2addr v0, v0

    iput-wide v0, p0, Lkv9;->m:D

    iget-wide v0, p0, Lkv9;->b:D

    iput-wide v0, p0, Lkv9;->n:D

    float-to-double v0, p1

    iput-wide v0, p0, Lkv9;->o:D

    float-to-double p1, p2

    iput-wide p1, p0, Lkv9;->p:D

    const/4 p1, 0x1

    iput-boolean p1, p0, Lkv9;->k:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lkv9;->l:J

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lkv9;->i(F)Lkv9;

    invoke-virtual {p0, p2}, Lkv9;->g(F)Lkv9;

    :goto_0
    return-void
.end method

.method public b()F
    .locals 2

    iget-wide v0, p0, Lkv9;->i:D

    double-to-float p0, v0

    return p0
.end method

.method public final c()V
    .locals 8

    iget-boolean v0, p0, Lkv9;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lkv9;->i:D

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lkv9;->b:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    neg-double v4, v0

    iget-wide v6, p0, Lkv9;->a:D

    mul-double/2addr v4, v6

    mul-double/2addr v0, v0

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double/2addr v6, v0

    add-double/2addr v4, v6

    iput-wide v4, p0, Lkv9;->f:D

    iget-wide v0, p0, Lkv9;->b:D

    neg-double v4, v0

    iget-wide v6, p0, Lkv9;->a:D

    mul-double/2addr v4, v6

    mul-double/2addr v0, v0

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double/2addr v6, v0

    sub-double/2addr v4, v6

    iput-wide v4, p0, Lkv9;->g:D

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x0

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_2

    cmpg-double v4, v0, v2

    if-gez v4, :cond_2

    iget-wide v4, p0, Lkv9;->a:D

    mul-double/2addr v0, v0

    sub-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double/2addr v4, v0

    iput-wide v4, p0, Lkv9;->h:D

    :cond_2
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkv9;->c:Z

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Error: Final position of the spring must be set before the animation starts"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public d(FF)Z
    .locals 4

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-double v0, p2

    iget-wide v2, p0, Lkv9;->e:D

    cmpg-double p2, v0, v2

    if-gez p2, :cond_0

    invoke-virtual {p0}, Lkv9;->b()F

    move-result p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double p1, p1

    iget-wide v0, p0, Lkv9;->d:D

    cmpg-double p0, p1, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final e(DDF)D
    .locals 2

    sub-double/2addr p3, p1

    float-to-double v0, p5

    mul-double/2addr p3, v0

    add-double/2addr p1, p3

    return-wide p1
.end method

.method public f(J)Lkv9;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iput-wide p1, p0, Lkv9;->j:J

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Blend duration must be non-negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public g(F)Lkv9;
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    float-to-double v0, p1

    iput-wide v0, p0, Lkv9;->b:D

    const/4 p1, 0x0

    iput-boolean p1, p0, Lkv9;->c:Z

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Damping ratio must be non-negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public h(F)Lkv9;
    .locals 2

    float-to-double v0, p1

    iput-wide v0, p0, Lkv9;->i:D

    return-object p0
.end method

.method public i(F)Lkv9;
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lkv9;->a:D

    const/4 p1, 0x0

    iput-boolean p1, p0, Lkv9;->c:Z

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Spring stiffness constant must be positive."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public j(D)V
    .locals 2

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    iput-wide p1, p0, Lkv9;->d:D

    const-wide v0, 0x404f400000000000L    # 62.5

    mul-double/2addr p1, v0

    iput-wide p1, p0, Lkv9;->e:D

    return-void
.end method

.method public final k(F)F
    .locals 1

    mul-float p0, p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x40400000    # 3.0f

    sub-float/2addr v0, p1

    mul-float/2addr p0, v0

    return p0
.end method

.method public final l()V
    .locals 9

    iget-boolean v0, p0, Lkv9;->k:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lkv9;->l:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget-wide v1, p0, Lkv9;->j:J

    long-to-float v3, v1

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lkv9;->k:Z

    iget-wide v0, p0, Lkv9;->o:D

    double-to-float v0, v0

    invoke-virtual {p0, v0}, Lkv9;->i(F)Lkv9;

    iget-wide v0, p0, Lkv9;->p:D

    double-to-float v0, v0

    invoke-virtual {p0, v0}, Lkv9;->g(F)Lkv9;

    goto :goto_0

    :cond_1
    long-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lkv9;->k(F)F

    move-result v0

    iget-wide v2, p0, Lkv9;->m:D

    iget-wide v4, p0, Lkv9;->o:D

    move-object v1, p0

    move v6, v0

    invoke-virtual/range {v1 .. v6}, Lkv9;->e(DDF)D

    move-result-wide v7

    iget-wide v2, p0, Lkv9;->n:D

    iget-wide v4, p0, Lkv9;->p:D

    invoke-virtual/range {v1 .. v6}, Lkv9;->e(DDF)D

    move-result-wide v0

    double-to-float v2, v7

    invoke-virtual {p0, v2}, Lkv9;->i(F)Lkv9;

    double-to-float v0, v0

    invoke-virtual {p0, v0}, Lkv9;->g(F)Lkv9;

    :goto_0
    return-void
.end method

.method public m(DDJ)Lf43$p;
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lkv9;->l()V

    invoke-virtual/range {p0 .. p0}, Lkv9;->c()V

    move-wide/from16 v1, p5

    long-to-double v1, v1

    const-wide v3, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v1, v3

    iget-wide v3, v0, Lkv9;->i:D

    sub-double v3, p1, v3

    iget-wide v5, v0, Lkv9;->b:D

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpl-double v9, v5, v7

    const-wide v10, 0x4005bf0a8b145769L    # Math.E

    if-lez v9, :cond_0

    iget-wide v5, v0, Lkv9;->g:D

    mul-double v7, v5, v3

    sub-double v7, v7, p3

    iget-wide v12, v0, Lkv9;->f:D

    sub-double v14, v5, v12

    div-double/2addr v7, v14

    sub-double v7, v3, v7

    mul-double/2addr v3, v5

    sub-double v3, v3, p3

    sub-double v12, v5, v12

    div-double/2addr v3, v12

    mul-double/2addr v5, v1

    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v5, v7

    iget-wide v12, v0, Lkv9;->f:D

    mul-double/2addr v12, v1

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    mul-double/2addr v12, v3

    add-double/2addr v5, v12

    iget-wide v12, v0, Lkv9;->g:D

    mul-double/2addr v7, v12

    mul-double/2addr v12, v1

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    mul-double/2addr v7, v12

    iget-wide v12, v0, Lkv9;->f:D

    mul-double/2addr v3, v12

    mul-double/2addr v12, v1

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    mul-double/2addr v3, v1

    add-double/2addr v7, v3

    goto/16 :goto_0

    :cond_0
    cmpl-double v9, v5, v7

    if-nez v9, :cond_1

    iget-wide v5, v0, Lkv9;->a:D

    mul-double v7, v5, v3

    add-double v7, p3, v7

    mul-double v12, v7, v1

    add-double/2addr v3, v12

    neg-double v5, v5

    mul-double/2addr v5, v1

    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v5, v3

    iget-wide v12, v0, Lkv9;->a:D

    neg-double v12, v12

    mul-double/2addr v12, v1

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    mul-double/2addr v3, v12

    iget-wide v12, v0, Lkv9;->a:D

    neg-double v14, v12

    mul-double/2addr v3, v14

    neg-double v12, v12

    mul-double/2addr v12, v1

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    mul-double/2addr v7, v1

    add-double/2addr v7, v3

    goto :goto_0

    :cond_1
    iget-wide v12, v0, Lkv9;->h:D

    div-double/2addr v7, v12

    iget-wide v12, v0, Lkv9;->a:D

    mul-double v14, v5, v12

    mul-double/2addr v14, v3

    add-double v14, v14, p3

    mul-double/2addr v7, v14

    neg-double v5, v5

    mul-double/2addr v5, v12

    mul-double/2addr v5, v1

    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    iget-wide v12, v0, Lkv9;->h:D

    mul-double/2addr v12, v1

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v12, v3

    iget-wide v14, v0, Lkv9;->h:D

    mul-double/2addr v14, v1

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v14, v7

    add-double/2addr v12, v14

    mul-double/2addr v5, v12

    iget-wide v12, v0, Lkv9;->a:D

    neg-double v14, v12

    mul-double/2addr v14, v5

    iget-wide v10, v0, Lkv9;->b:D

    mul-double/2addr v14, v10

    neg-double v9, v10

    mul-double/2addr v9, v12

    mul-double/2addr v9, v1

    const-wide v11, 0x4005bf0a8b145769L    # Math.E

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    iget-wide v11, v0, Lkv9;->h:D

    move-wide/from16 p1, v5

    neg-double v5, v11

    mul-double/2addr v5, v3

    mul-double/2addr v11, v1

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v5, v3

    iget-wide v3, v0, Lkv9;->h:D

    mul-double/2addr v7, v3

    mul-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    mul-double/2addr v7, v1

    add-double/2addr v5, v7

    mul-double/2addr v9, v5

    add-double v7, v14, v9

    move-wide/from16 v5, p1

    :goto_0
    iget-object v1, v0, Lkv9;->q:Lf43$p;

    iget-wide v2, v0, Lkv9;->i:D

    add-double/2addr v5, v2

    double-to-float v0, v5

    iput v0, v1, Lf43$p;->a:F

    double-to-float v0, v7

    iput v0, v1, Lf43$p;->b:F

    return-object v1
.end method
