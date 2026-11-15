.class public final Ljv9;
.super Lf43;
.source "SourceFile"


# instance fields
.field public B:Lkv9;

.field public C:F

.field public D:Z

.field public E:J

.field public F:J

.field public G:F

.field public H:F

.field public I:F

.field public J:J


# direct methods
.method public constructor <init>(Lfz3;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lf43;-><init>(Lfz3;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Ljv9;->B:Lkv9;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 3
    iput p1, p0, Ljv9;->C:F

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Ljv9;->D:Z

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Ljv9;->E:J

    .line 6
    iput-wide v0, p0, Ljv9;->F:J

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Ljv9;->G:F

    .line 8
    iput p1, p0, Ljv9;->H:F

    .line 9
    iput p1, p0, Ljv9;->I:F

    .line 10
    iput-wide v0, p0, Ljv9;->J:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Laz3;)V
    .locals 1

    .line 11
    invoke-direct {p0, p1, p2}, Lf43;-><init>(Ljava/lang/Object;Laz3;)V

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Ljv9;->B:Lkv9;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 13
    iput p1, p0, Ljv9;->C:F

    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Ljv9;->D:Z

    const-wide/16 p1, 0x0

    .line 15
    iput-wide p1, p0, Ljv9;->E:J

    .line 16
    iput-wide p1, p0, Ljv9;->F:J

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Ljv9;->G:F

    .line 18
    iput v0, p0, Ljv9;->H:F

    .line 19
    iput v0, p0, Ljv9;->I:F

    .line 20
    iput-wide p1, p0, Ljv9;->J:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Laz3;F)V
    .locals 1

    .line 21
    invoke-direct {p0, p1, p2}, Lf43;-><init>(Ljava/lang/Object;Laz3;)V

    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Ljv9;->B:Lkv9;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 23
    iput p1, p0, Ljv9;->C:F

    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Ljv9;->D:Z

    const-wide/16 p1, 0x0

    .line 25
    iput-wide p1, p0, Ljv9;->E:J

    .line 26
    iput-wide p1, p0, Ljv9;->F:J

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Ljv9;->G:F

    .line 28
    iput v0, p0, Ljv9;->H:F

    .line 29
    iput v0, p0, Ljv9;->I:F

    .line 30
    iput-wide p1, p0, Ljv9;->J:J

    .line 31
    new-instance p1, Lkv9;

    invoke-direct {p1, p3}, Lkv9;-><init>(F)V

    iput-object p1, p0, Ljv9;->B:Lkv9;

    return-void
.end method


# virtual methods
.method public A()V
    .locals 1

    invoke-virtual {p0}, Ljv9;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lf43;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljv9;->D:Z

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Spring animations can only come to an end when there is damping"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c()V
    .locals 3

    invoke-super {p0}, Lf43;->c()V

    iget v0, p0, Ljv9;->C:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljv9;->B:Lkv9;

    if-nez v0, :cond_0

    new-instance v0, Lkv9;

    iget v2, p0, Ljv9;->C:F

    invoke-direct {v0, v2}, Lkv9;-><init>(F)V

    iput-object v0, p0, Ljv9;->B:Lkv9;

    goto :goto_0

    :cond_0
    iget v2, p0, Ljv9;->C:F

    invoke-virtual {v0, v2}, Lkv9;->h(F)Lkv9;

    :goto_0
    iput v1, p0, Ljv9;->C:F

    :cond_1
    return-void
.end method

.method public o(F)V
    .locals 0

    return-void
.end method

.method public p()V
    .locals 3

    invoke-virtual {p0}, Ljv9;->y()V

    iget-object v0, p0, Ljv9;->B:Lkv9;

    invoke-virtual {p0}, Lf43;->g()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lkv9;->j(D)V

    invoke-super {p0}, Lf43;->p()V

    return-void
.end method

.method public r(J)Z
    .locals 20

    move-object/from16 v0, p0

    iget-boolean v1, v0, Ljv9;->D:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    if-eqz v1, :cond_1

    iget v1, v0, Ljv9;->C:F

    invoke-static {v1, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Ljv9;->B:Lkv9;

    iget v6, v0, Ljv9;->C:F

    invoke-virtual {v1, v6}, Lkv9;->h(F)Lkv9;

    iput v5, v0, Ljv9;->C:F

    :cond_0
    iget-object v1, v0, Ljv9;->B:Lkv9;

    invoke-virtual {v1}, Lkv9;->b()F

    move-result v1

    iput v1, v0, Lf43;->b:F

    iput v4, v0, Lf43;->a:F

    iput-boolean v3, v0, Ljv9;->D:Z

    return v2

    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljv9;->x()V

    iget v1, v0, Ljv9;->C:F

    invoke-static {v1, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v6, v0, Ljv9;->B:Lkv9;

    iget v1, v0, Lf43;->b:F

    float-to-double v7, v1

    iget v1, v0, Lf43;->a:F

    float-to-double v9, v1

    const-wide/16 v11, 0x2

    div-long v18, p1, v11

    move-wide/from16 v11, v18

    invoke-virtual/range {v6 .. v12}, Lkv9;->m(DDJ)Lf43$p;

    move-result-object v1

    iget-object v6, v0, Ljv9;->B:Lkv9;

    iget v7, v0, Ljv9;->C:F

    invoke-virtual {v6, v7}, Lkv9;->h(F)Lkv9;

    iput v5, v0, Ljv9;->C:F

    iget-object v13, v0, Ljv9;->B:Lkv9;

    iget v5, v1, Lf43$p;->a:F

    float-to-double v14, v5

    iget v1, v1, Lf43$p;->b:F

    float-to-double v5, v1

    move-wide/from16 v16, v5

    invoke-virtual/range {v13 .. v19}, Lkv9;->m(DDJ)Lf43$p;

    move-result-object v1

    iget v5, v1, Lf43$p;->a:F

    iput v5, v0, Lf43;->b:F

    iget v1, v1, Lf43$p;->b:F

    iput v1, v0, Lf43;->a:F

    goto :goto_0

    :cond_2
    iget-object v13, v0, Ljv9;->B:Lkv9;

    iget v1, v0, Lf43;->b:F

    float-to-double v14, v1

    iget v1, v0, Lf43;->a:F

    float-to-double v5, v1

    move-wide/from16 v16, v5

    move-wide/from16 v18, p1

    invoke-virtual/range {v13 .. v19}, Lkv9;->m(DDJ)Lf43$p;

    move-result-object v1

    iget v5, v1, Lf43$p;->a:F

    iput v5, v0, Lf43;->b:F

    iget v1, v1, Lf43$p;->b:F

    iput v1, v0, Lf43;->a:F

    :goto_0
    iget v1, v0, Lf43;->b:F

    iget v5, v0, Lf43;->h:F

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lf43;->b:F

    iget v5, v0, Lf43;->g:F

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Lf43;->b:F

    iget v5, v0, Lf43;->a:F

    invoke-virtual {v0, v1, v5}, Ljv9;->w(FF)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Ljv9;->B:Lkv9;

    invoke-virtual {v1}, Lkv9;->b()F

    move-result v1

    iput v1, v0, Lf43;->b:F

    iput v4, v0, Lf43;->a:F

    return v2

    :cond_3
    return v3
.end method

.method public s(F)V
    .locals 1

    invoke-virtual {p0}, Lf43;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Ljv9;->C:F

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljv9;->B:Lkv9;

    if-nez v0, :cond_1

    new-instance v0, Lkv9;

    invoke-direct {v0, p1}, Lkv9;-><init>(F)V

    iput-object v0, p0, Ljv9;->B:Lkv9;

    :cond_1
    iget-object v0, p0, Ljv9;->B:Lkv9;

    invoke-virtual {v0, p1}, Lkv9;->h(F)Lkv9;

    invoke-virtual {p0}, Ljv9;->p()V

    :goto_0
    return-void
.end method

.method public t(FFF)V
    .locals 3

    iget-object v0, p0, Ljv9;->B:Lkv9;

    if-nez v0, :cond_0

    new-instance v0, Lkv9;

    invoke-direct {v0, p3}, Lkv9;-><init>(F)V

    iput-object v0, p0, Ljv9;->B:Lkv9;

    invoke-virtual {v0, p1}, Lkv9;->i(F)Lkv9;

    iget-object p0, p0, Ljv9;->B:Lkv9;

    invoke-virtual {p0, p2}, Lkv9;->g(F)Lkv9;

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Ljv9;->J:J

    invoke-virtual {v0, v1, v2}, Lkv9;->f(J)Lkv9;

    iget-object v0, p0, Ljv9;->B:Lkv9;

    invoke-virtual {v0, p1, p2}, Lkv9;->a(FF)V

    invoke-virtual {p0}, Lf43;->h()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p3}, Ljv9;->s(F)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Ljv9;->B:Lkv9;

    invoke-virtual {p0, p3}, Lkv9;->h(F)Lkv9;

    :goto_0
    return-void
.end method

.method public u()Z
    .locals 4

    iget-object p0, p0, Ljv9;->B:Lkv9;

    iget-wide v0, p0, Lkv9;->b:D

    const-wide/16 v2, 0x0

    cmpl-double p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public v()Lkv9;
    .locals 0

    iget-object p0, p0, Ljv9;->B:Lkv9;

    return-object p0
.end method

.method public w(FF)Z
    .locals 0

    iget-object p0, p0, Ljv9;->B:Lkv9;

    invoke-virtual {p0, p1, p2}, Lkv9;->d(FF)Z

    move-result p0

    return p0
.end method

.method public final x()V
    .locals 4

    iget-wide v0, p0, Ljv9;->F:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p0, Ljv9;->E:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Ljv9;->F:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Ljv9;->E:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljv9;->F:J

    iput-wide v0, p0, Ljv9;->E:J

    iget v0, p0, Ljv9;->G:F

    iget v1, p0, Ljv9;->H:F

    iget v2, p0, Ljv9;->I:F

    invoke-virtual {p0, v0, v1, v2}, Ljv9;->t(FFF)V

    :cond_1
    return-void
.end method

.method public final y()V
    .locals 4

    iget-object v0, p0, Ljv9;->B:Lkv9;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lkv9;->b()F

    move-result v0

    float-to-double v0, v0

    iget v2, p0, Lf43;->g:F

    float-to-double v2, v2

    cmpl-double v2, v0, v2

    if-gtz v2, :cond_1

    iget p0, p0, Lf43;->h:F

    float-to-double v2, p0

    cmpg-double p0, v0, v2

    if-ltz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Final position of the spring cannot be less than the min value."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Final position of the spring cannot be greater than the max value."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Incomplete SpringAnimation: Either final position or a spring force needs to be set."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public z(Lkv9;)Ljv9;
    .locals 0

    iput-object p1, p0, Ljv9;->B:Lkv9;

    return-object p0
.end method
