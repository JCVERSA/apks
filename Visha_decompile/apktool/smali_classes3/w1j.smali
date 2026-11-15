.class public final Lw1j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:J

.field public c:J

.field public d:J

.field public e:J

.field public f:J

.field public g:J

.field public h:J

.field public i:F

.field public j:F

.field public k:F

.field public l:J

.field public m:J

.field public n:J


# direct methods
.method public synthetic constructor <init>(FFJFJJFLs1j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p6, p0, Lw1j;->a:J

    iput-wide p8, p0, Lw1j;->b:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lw1j;->c:J

    iput-wide p1, p0, Lw1j;->d:J

    iput-wide p1, p0, Lw1j;->f:J

    iput-wide p1, p0, Lw1j;->g:J

    const p3, 0x3f7851ec    # 0.97f

    iput p3, p0, Lw1j;->j:F

    const p3, 0x3f83d70a    # 1.03f

    iput p3, p0, Lw1j;->i:F

    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p0, Lw1j;->k:F

    iput-wide p1, p0, Lw1j;->l:J

    iput-wide p1, p0, Lw1j;->e:J

    iput-wide p1, p0, Lw1j;->h:J

    iput-wide p1, p0, Lw1j;->m:J

    iput-wide p1, p0, Lw1j;->n:J

    return-void
.end method

.method public static f(JJF)J
    .locals 0

    long-to-float p0, p0

    long-to-float p1, p2

    const p2, 0x3f7fbe77    # 0.999f

    mul-float/2addr p0, p2

    const p2, 0x3a831200    # 9.999871E-4f

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    float-to-long p0, p0

    return-wide p0
.end method


# virtual methods
.method public final a(JJ)F
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    iget-wide v4, v0, Lw1j;->c:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v4, v6

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v4, :cond_8

    sub-long v8, p1, p3

    iget-wide v10, v0, Lw1j;->m:J

    cmp-long v4, v10, v6

    if-nez v4, :cond_0

    iput-wide v8, v0, Lw1j;->m:J

    const-wide/16 v8, 0x0

    iput-wide v8, v0, Lw1j;->n:J

    goto :goto_0

    :cond_0
    const v4, 0x3f7fbe77    # 0.999f

    invoke-static {v10, v11, v8, v9, v4}, Lw1j;->f(JJF)J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    iput-wide v10, v0, Lw1j;->m:J

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    iget-wide v10, v0, Lw1j;->n:J

    invoke-static {v10, v11, v8, v9, v4}, Lw1j;->f(JJF)J

    move-result-wide v8

    iput-wide v8, v0, Lw1j;->n:J

    :goto_0
    iget-wide v8, v0, Lw1j;->l:J

    cmp-long v4, v8, v6

    const-wide/16 v8, 0x3e8

    if-eqz v4, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-wide v12, v0, Lw1j;->l:J

    sub-long/2addr v10, v12

    cmp-long v4, v10, v8

    if-ltz v4, :cond_1

    goto :goto_1

    :cond_1
    iget v0, v0, Lw1j;->k:F

    return v0

    :cond_2
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iput-wide v10, v0, Lw1j;->l:J

    iget-wide v10, v0, Lw1j;->m:J

    iget-wide v12, v0, Lw1j;->n:J

    const-wide/16 v14, 0x3

    mul-long/2addr v12, v14

    add-long/2addr v10, v12

    iget-wide v12, v0, Lw1j;->h:J

    cmp-long v4, v12, v10

    const/high16 v13, -0x40800000    # -1.0f

    if-lez v4, :cond_5

    invoke-static {v8, v9}, Lkfh;->N(J)J

    move-result-wide v6

    iget v4, v0, Lw1j;->k:F

    add-float/2addr v4, v13

    iget v8, v0, Lw1j;->i:F

    add-float/2addr v8, v13

    iget-wide v13, v0, Lw1j;->e:J

    move-wide/from16 v16, v13

    iget-wide v12, v0, Lw1j;->h:J

    long-to-float v6, v6

    mul-float/2addr v8, v6

    mul-float/2addr v4, v6

    float-to-long v6, v4

    float-to-long v8, v8

    add-long/2addr v6, v8

    sub-long/2addr v12, v6

    new-array v4, v2, [J

    aput-wide v10, v4, v1

    aput-wide v16, v4, v3

    const/4 v6, 0x2

    aput-wide v12, v4, v6

    aget-wide v6, v4, v1

    move v1, v3

    :goto_2
    if-ge v1, v2, :cond_4

    aget-wide v8, v4, v1

    cmp-long v10, v8, v6

    if-gtz v10, :cond_3

    goto :goto_3

    :cond_3
    move-wide v6, v8

    :goto_3
    add-int/2addr v1, v3

    goto :goto_2

    :cond_4
    iput-wide v6, v0, Lw1j;->h:J

    goto :goto_4

    :cond_5
    iget v1, v0, Lw1j;->k:F

    add-float/2addr v1, v13

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const v2, 0x33d6bf95    # 1.0E-7f

    div-float/2addr v1, v2

    float-to-long v1, v1

    sub-long v1, p1, v1

    iget-wide v3, v0, Lw1j;->h:J

    sget v8, Lkfh;->a:I

    invoke-static {v1, v2, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Lw1j;->h:J

    iget-wide v3, v0, Lw1j;->g:J

    cmp-long v6, v3, v6

    if-eqz v6, :cond_6

    cmp-long v6, v1, v3

    if-lez v6, :cond_6

    iput-wide v3, v0, Lw1j;->h:J

    move-wide v6, v3

    goto :goto_4

    :cond_6
    move-wide v6, v1

    :goto_4
    sub-long v1, p1, v6

    iget-wide v3, v0, Lw1j;->a:J

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    cmp-long v3, v6, v3

    if-gez v3, :cond_7

    iput v5, v0, Lw1j;->k:F

    goto :goto_5

    :cond_7
    long-to-float v1, v1

    const v2, 0x33d6bf95    # 1.0E-7f

    mul-float/2addr v1, v2

    add-float/2addr v1, v5

    iget v2, v0, Lw1j;->j:F

    iget v3, v0, Lw1j;->i:F

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v0, Lw1j;->k:F

    :cond_8
    :goto_5
    return v5
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lw1j;->h:J

    return-wide v0
.end method

.method public final c()V
    .locals 7

    iget-wide v0, p0, Lw1j;->h:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-wide v4, p0, Lw1j;->b:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lw1j;->h:J

    iget-wide v4, p0, Lw1j;->g:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    iput-wide v4, p0, Lw1j;->h:J

    :cond_1
    iput-wide v2, p0, Lw1j;->l:J

    return-void
.end method

.method public final d(Lwfe;)V
    .locals 4

    iget-wide v0, p1, Lwfe;->a:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v0, v1}, Lkfh;->N(J)J

    move-result-wide v2

    iput-wide v2, p0, Lw1j;->c:J

    invoke-static {v0, v1}, Lkfh;->N(J)J

    move-result-wide v2

    iput-wide v2, p0, Lw1j;->f:J

    invoke-static {v0, v1}, Lkfh;->N(J)J

    move-result-wide v0

    iput-wide v0, p0, Lw1j;->g:J

    const p1, 0x3f7851ec    # 0.97f

    iput p1, p0, Lw1j;->j:F

    const p1, 0x3f83d70a    # 1.03f

    iput p1, p0, Lw1j;->i:F

    invoke-virtual {p0}, Lw1j;->g()V

    return-void
.end method

.method public final e(J)V
    .locals 0

    iput-wide p1, p0, Lw1j;->d:J

    invoke-virtual {p0}, Lw1j;->g()V

    return-void
.end method

.method public final g()V
    .locals 7

    iget-wide v0, p0, Lw1j;->c:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    iget-wide v4, p0, Lw1j;->d:J

    cmp-long v6, v4, v2

    if-nez v6, :cond_3

    iget-wide v4, p0, Lw1j;->f:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    cmp-long v6, v0, v4

    if-gez v6, :cond_0

    move-wide v0, v4

    :cond_0
    iget-wide v4, p0, Lw1j;->g:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    cmp-long v6, v0, v4

    if-lez v6, :cond_1

    goto :goto_0

    :cond_1
    move-wide v4, v0

    goto :goto_0

    :cond_2
    move-wide v4, v2

    :cond_3
    :goto_0
    iget-wide v0, p0, Lw1j;->e:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_4

    return-void

    :cond_4
    iput-wide v4, p0, Lw1j;->e:J

    iput-wide v4, p0, Lw1j;->h:J

    iput-wide v2, p0, Lw1j;->m:J

    iput-wide v2, p0, Lw1j;->n:J

    iput-wide v2, p0, Lw1j;->l:J

    return-void
.end method
