.class public final Lthj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:J

.field public B:Z

.field public C:J

.field public D:J

.field public E:Z

.field public F:J

.field public G:Ltbg;

.field public final a:Lshj;

.field public final b:[J

.field public c:Landroid/media/AudioTrack;

.field public d:I

.field public e:Lrhj;

.field public f:I

.field public g:J

.field public h:F

.field public i:Z

.field public j:J

.field public k:J

.field public l:Ljava/lang/reflect/Method;

.field public m:J

.field public n:Z

.field public o:Z

.field public p:J

.field public q:J

.field public r:J

.field public s:J

.field public t:I

.field public u:I

.field public v:J

.field public w:J

.field public x:J

.field public y:J

.field public z:J


# direct methods
.method public constructor <init>(Lshj;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lthj;->a:Lshj;

    :try_start_0
    const-class p1, Landroid/media/AudioTrack;

    const-string v0, "getLatency"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lthj;->l:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/16 p1, 0xa

    new-array p1, p1, [J

    iput-object p1, p0, Lthj;->b:[J

    sget-object p1, Ltbg;->a:Ltbg;

    iput-object p1, p0, Lthj;->G:Ltbg;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x1

    iget-object v2, v0, Lthj;->c:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v3

    const/4 v4, 0x3

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x3e8

    if-ne v3, v4, :cond_8

    iget-object v3, v0, Lthj;->G:Ltbg;

    invoke-interface {v3}, Ltbg;->zzc()J

    move-result-wide v9

    div-long/2addr v9, v7

    iget-wide v11, v0, Lthj;->k:J

    sub-long v11, v9, v11

    const-wide/16 v13, 0x7530

    cmp-long v3, v11, v13

    if-ltz v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lthj;->m()J

    move-result-wide v11

    cmp-long v3, v11, v5

    if-nez v3, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v3, v0, Lthj;->b:[J

    iget v13, v0, Lthj;->t:I

    iget v14, v0, Lthj;->h:F

    invoke-static {v11, v12, v14}, Lkfh;->M(JF)J

    move-result-wide v11

    sub-long/2addr v11, v9

    aput-wide v11, v3, v13

    iget v11, v0, Lthj;->t:I

    add-int/2addr v11, v1

    const/16 v12, 0xa

    rem-int/2addr v11, v12

    iput v11, v0, Lthj;->t:I

    iget v11, v0, Lthj;->u:I

    if-ge v11, v12, :cond_1

    add-int/2addr v11, v1

    iput v11, v0, Lthj;->u:I

    :cond_1
    iput-wide v9, v0, Lthj;->k:J

    iput-wide v5, v0, Lthj;->j:J

    const/4 v11, 0x0

    :goto_0
    iget v12, v0, Lthj;->u:I

    if-ge v11, v12, :cond_2

    iget-wide v13, v0, Lthj;->j:J

    aget-wide v15, v3, v11

    int-to-long v4, v12

    div-long/2addr v15, v4

    add-long/2addr v13, v15

    iput-wide v13, v0, Lthj;->j:J

    add-int/2addr v11, v1

    const/4 v4, 0x3

    const-wide/16 v5, 0x0

    goto :goto_0

    :cond_2
    iget-object v3, v0, Lthj;->e:Lrhj;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v9, v10}, Lrhj;->g(J)Z

    move-result v4

    const-wide/32 v5, 0x4c4b40

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lrhj;->b()J

    move-result-wide v14

    invoke-virtual {v3}, Lrhj;->a()J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Lthj;->m()J

    move-result-wide v18

    sub-long v16, v14, v9

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(J)J

    move-result-wide v16

    cmp-long v4, v16, v5

    if-lez v4, :cond_4

    iget-object v11, v0, Lthj;->a:Lshj;

    move-wide/from16 v16, v9

    invoke-interface/range {v11 .. v19}, Lshj;->e(JJJJ)V

    invoke-virtual {v3}, Lrhj;->d()V

    goto :goto_1

    :cond_4
    iget v4, v0, Lthj;->f:I

    invoke-static {v12, v13, v4}, Lkfh;->O(JI)J

    move-result-wide v16

    sub-long v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(J)J

    move-result-wide v16

    cmp-long v4, v16, v5

    if-lez v4, :cond_5

    iget-object v11, v0, Lthj;->a:Lshj;

    move-wide/from16 v16, v9

    invoke-interface/range {v11 .. v19}, Lshj;->d(JJJJ)V

    invoke-virtual {v3}, Lrhj;->d()V

    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Lrhj;->c()V

    :goto_1
    iget-boolean v3, v0, Lthj;->o:Z

    if-eqz v3, :cond_8

    iget-object v3, v0, Lthj;->l:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_8

    iget-wide v11, v0, Lthj;->p:J

    sub-long v11, v9, v11

    const-wide/32 v13, 0x7a120

    cmp-long v4, v11, v13

    if-ltz v4, :cond_8

    const/4 v4, 0x0

    :try_start_0
    iget-object v11, v0, Lthj;->c:Landroid/media/AudioTrack;

    if-eqz v11, :cond_6

    invoke-virtual {v3, v11, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    sget v11, Lkfh;->a:I

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v11, v3

    mul-long/2addr v11, v7

    iget-wide v13, v0, Lthj;->g:J

    sub-long/2addr v11, v13

    iput-wide v11, v0, Lthj;->m:J

    const-wide/16 v13, 0x0

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    iput-wide v11, v0, Lthj;->m:J

    cmp-long v3, v11, v5

    if-lez v3, :cond_7

    iget-object v3, v0, Lthj;->a:Lshj;

    invoke-interface {v3, v11, v12}, Lshj;->b(J)V

    iput-wide v13, v0, Lthj;->m:J

    goto :goto_2

    :cond_6
    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iput-object v4, v0, Lthj;->l:Ljava/lang/reflect/Method;

    :cond_7
    :goto_2
    iput-wide v9, v0, Lthj;->p:J

    :cond_8
    :goto_3
    iget-object v3, v0, Lthj;->G:Ltbg;

    invoke-interface {v3}, Ltbg;->zzc()J

    move-result-wide v3

    div-long/2addr v3, v7

    iget-object v5, v0, Lthj;->e:Lrhj;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Lrhj;->f()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v5}, Lrhj;->a()J

    move-result-wide v9

    iget v11, v0, Lthj;->f:I

    invoke-static {v9, v10, v11}, Lkfh;->O(JI)J

    move-result-wide v9

    invoke-virtual {v5}, Lrhj;->b()J

    move-result-wide v11

    sub-long v11, v3, v11

    iget v5, v0, Lthj;->h:F

    invoke-static {v11, v12, v5}, Lkfh;->L(JF)J

    move-result-wide v11

    add-long/2addr v9, v11

    goto :goto_5

    :cond_9
    iget v5, v0, Lthj;->u:I

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v5, :cond_b

    iget-wide v11, v0, Lthj;->v:J

    cmp-long v5, v11, v9

    if-eqz v5, :cond_a

    invoke-virtual/range {p0 .. p0}, Lthj;->n()J

    move-result-wide v11

    iget v5, v0, Lthj;->f:I

    invoke-static {v11, v12, v5}, Lkfh;->O(JI)J

    move-result-wide v11

    goto :goto_4

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lthj;->m()J

    move-result-wide v11

    goto :goto_4

    :cond_b
    iget-wide v11, v0, Lthj;->j:J

    add-long/2addr v11, v3

    iget v5, v0, Lthj;->h:F

    invoke-static {v11, v12, v5}, Lkfh;->L(JF)J

    move-result-wide v11

    :goto_4
    iget-wide v13, v0, Lthj;->m:J

    sub-long/2addr v11, v13

    const-wide/16 v13, 0x0

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    iget-wide v13, v0, Lthj;->v:J

    cmp-long v5, v13, v9

    if-eqz v5, :cond_c

    iget-wide v9, v0, Lthj;->y:J

    iget v5, v0, Lthj;->f:I

    invoke-static {v9, v10, v5}, Lkfh;->O(JI)J

    move-result-wide v9

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    goto :goto_5

    :cond_c
    move-wide v9, v11

    :goto_5
    iget-boolean v5, v0, Lthj;->B:Z

    if-eq v5, v6, :cond_d

    iget-wide v11, v0, Lthj;->A:J

    iput-wide v11, v0, Lthj;->D:J

    iget-wide v11, v0, Lthj;->z:J

    iput-wide v11, v0, Lthj;->C:J

    :cond_d
    iget-wide v11, v0, Lthj;->D:J

    sub-long v11, v3, v11

    const-wide/32 v13, 0xf4240

    cmp-long v5, v11, v13

    if-gez v5, :cond_e

    move-object v15, v2

    iget-wide v1, v0, Lthj;->C:J

    iget v5, v0, Lthj;->h:F

    invoke-static {v11, v12, v5}, Lkfh;->L(JF)J

    move-result-wide v17

    add-long v1, v1, v17

    mul-long/2addr v11, v7

    div-long/2addr v11, v13

    mul-long/2addr v9, v11

    sub-long v11, v7, v11

    mul-long/2addr v11, v1

    add-long/2addr v9, v11

    div-long/2addr v9, v7

    goto :goto_6

    :cond_e
    move-object v15, v2

    :goto_6
    iget-boolean v1, v0, Lthj;->i:Z

    if-nez v1, :cond_f

    iget-wide v1, v0, Lthj;->z:J

    cmp-long v1, v9, v1

    if-lez v1, :cond_f

    invoke-virtual {v15}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_f

    const/4 v1, 0x1

    iput-boolean v1, v0, Lthj;->i:Z

    iget-wide v1, v0, Lthj;->z:J

    sub-long v1, v9, v1

    sget v5, Lkfh;->a:I

    iget v5, v0, Lthj;->h:F

    invoke-static {v1, v2}, Lkfh;->Q(J)J

    move-result-wide v1

    invoke-static {v1, v2, v5}, Lkfh;->M(JF)J

    move-result-wide v1

    iget-object v5, v0, Lthj;->G:Ltbg;

    invoke-interface {v5}, Ltbg;->zza()J

    move-result-wide v7

    invoke-static {v1, v2}, Lkfh;->Q(J)J

    move-result-wide v1

    sub-long/2addr v7, v1

    iget-object v1, v0, Lthj;->a:Lshj;

    invoke-interface {v1, v7, v8}, Lshj;->a(J)V

    :cond_f
    iput-wide v3, v0, Lthj;->A:J

    iput-wide v9, v0, Lthj;->z:J

    iput-boolean v6, v0, Lthj;->B:Z

    return-wide v9
.end method

.method public final b(J)V
    .locals 2

    invoke-virtual {p0}, Lthj;->l()J

    move-result-wide v0

    iput-wide v0, p0, Lthj;->x:J

    iget-object v0, p0, Lthj;->G:Ltbg;

    invoke-interface {v0}, Ltbg;->zzb()J

    move-result-wide v0

    invoke-static {v0, v1}, Lkfh;->N(J)J

    move-result-wide v0

    iput-wide v0, p0, Lthj;->v:J

    iput-wide p1, p0, Lthj;->y:J

    return-void
.end method

.method public final c()V
    .locals 1

    invoke-virtual {p0}, Lthj;->o()V

    const/4 v0, 0x0

    iput-object v0, p0, Lthj;->c:Landroid/media/AudioTrack;

    iput-object v0, p0, Lthj;->e:Lrhj;

    return-void
.end method

.method public final d(Landroid/media/AudioTrack;ZIII)V
    .locals 1

    iput-object p1, p0, Lthj;->c:Landroid/media/AudioTrack;

    iput p5, p0, Lthj;->d:I

    new-instance v0, Lrhj;

    invoke-direct {v0, p1}, Lrhj;-><init>(Landroid/media/AudioTrack;)V

    iput-object v0, p0, Lthj;->e:Lrhj;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result p1

    iput p1, p0, Lthj;->f:I

    if-eqz p2, :cond_0

    sget p1, Lkfh;->a:I

    :cond_0
    invoke-static {p3}, Lkfh;->k(I)Z

    move-result p1

    iput-boolean p1, p0, Lthj;->o:Z

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p1, :cond_1

    div-int/2addr p5, p4

    int-to-long p4, p5

    iget p1, p0, Lthj;->f:I

    invoke-static {p4, p5, p1}, Lkfh;->O(JI)J

    move-result-wide p4

    goto :goto_0

    :cond_1
    move-wide p4, p2

    :goto_0
    iput-wide p4, p0, Lthj;->g:J

    const-wide/16 p4, 0x0

    iput-wide p4, p0, Lthj;->r:J

    iput-wide p4, p0, Lthj;->s:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lthj;->E:Z

    iput-wide p4, p0, Lthj;->F:J

    iput-boolean p1, p0, Lthj;->n:Z

    iput-wide p2, p0, Lthj;->v:J

    iput-wide p2, p0, Lthj;->w:J

    iput-wide p4, p0, Lthj;->p:J

    iput-wide p4, p0, Lthj;->m:J

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lthj;->h:F

    return-void
.end method

.method public final e(Ltbg;)V
    .locals 0

    iput-object p1, p0, Lthj;->G:Ltbg;

    return-void
.end method

.method public final f()V
    .locals 4

    iget-wide v0, p0, Lthj;->v:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lthj;->G:Ltbg;

    invoke-interface {v0}, Ltbg;->zzb()J

    move-result-wide v0

    invoke-static {v0, v1}, Lkfh;->N(J)J

    move-result-wide v0

    iput-wide v0, p0, Lthj;->v:J

    :cond_0
    iget-object p0, p0, Lthj;->e:Lrhj;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lrhj;->e()V

    return-void
.end method

.method public final g(J)Z
    .locals 2

    invoke-virtual {p0}, Lthj;->a()J

    move-result-wide v0

    iget p0, p0, Lthj;->f:I

    invoke-static {v0, v1, p0}, Lkfh;->K(JI)J

    move-result-wide v0

    cmp-long p0, p1, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final h()Z
    .locals 1

    iget-object p0, p0, Lthj;->c:Landroid/media/AudioTrack;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final i(J)Z
    .locals 4

    iget-wide v0, p0, Lthj;->w:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    iget-object p1, p0, Lthj;->G:Ltbg;

    invoke-interface {p1}, Ltbg;->zzb()J

    move-result-wide p1

    iget-wide v0, p0, Lthj;->w:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0xc8

    cmp-long p0, p1, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final j(J)Z
    .locals 3

    iget-object v0, p0, Lthj;->c:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    iget-boolean v1, p0, Lthj;->n:Z

    invoke-virtual {p0, p1, p2}, Lthj;->g(J)Z

    move-result p1

    iput-boolean p1, p0, Lthj;->n:Z

    const/4 p2, 0x1

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    if-eq v0, p2, :cond_0

    iget-object p1, p0, Lthj;->a:Lshj;

    iget v0, p0, Lthj;->d:I

    iget-wide v1, p0, Lthj;->g:J

    invoke-static {v1, v2}, Lkfh;->Q(J)J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lshj;->c(IJ)V

    :cond_0
    return p2
.end method

.method public final k()Z
    .locals 4

    invoke-virtual {p0}, Lthj;->o()V

    iget-wide v0, p0, Lthj;->v:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object p0, p0, Lthj;->e:Lrhj;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lrhj;->e()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Lthj;->l()J

    move-result-wide v0

    iput-wide v0, p0, Lthj;->x:J

    const/4 p0, 0x0

    return p0
.end method

.method public final l()J
    .locals 10

    iget-wide v0, p0, Lthj;->v:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lthj;->n()J

    move-result-wide v0

    iget-wide v2, p0, Lthj;->y:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lthj;->G:Ltbg;

    invoke-interface {v0}, Ltbg;->zzb()J

    move-result-wide v0

    iget-wide v4, p0, Lthj;->q:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x5

    cmp-long v4, v4, v6

    if-ltz v4, :cond_7

    iget-object v4, p0, Lthj;->c:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v4

    int-to-long v6, v4

    sget v4, Lkfh;->a:I

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    const/16 v8, 0x1d

    if-gt v4, v8, :cond_4

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_3

    iget-wide v6, p0, Lthj;->r:J

    cmp-long v4, v6, v8

    if-lez v4, :cond_2

    const/4 v4, 0x3

    if-ne v5, v4, :cond_2

    iget-wide v4, p0, Lthj;->w:J

    cmp-long v2, v4, v2

    if-nez v2, :cond_6

    iput-wide v0, p0, Lthj;->w:J

    goto :goto_0

    :cond_2
    move-wide v6, v8

    :cond_3
    iput-wide v2, p0, Lthj;->w:J

    :cond_4
    iget-wide v2, p0, Lthj;->r:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_5

    iget-wide v2, p0, Lthj;->s:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lthj;->s:J

    :cond_5
    iput-wide v6, p0, Lthj;->r:J

    :cond_6
    :goto_0
    iput-wide v0, p0, Lthj;->q:J

    :cond_7
    iget-wide v0, p0, Lthj;->r:J

    iget-wide v2, p0, Lthj;->F:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lthj;->s:J

    const/16 p0, 0x20

    shl-long/2addr v2, p0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final m()J
    .locals 2

    invoke-virtual {p0}, Lthj;->l()J

    move-result-wide v0

    iget p0, p0, Lthj;->f:I

    invoke-static {v0, v1, p0}, Lkfh;->O(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final n()J
    .locals 4

    iget-object v0, p0, Lthj;->c:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lthj;->x:J

    return-wide v0

    :cond_0
    iget-object v0, p0, Lthj;->G:Ltbg;

    invoke-interface {v0}, Ltbg;->zzb()J

    move-result-wide v0

    invoke-static {v0, v1}, Lkfh;->N(J)J

    move-result-wide v0

    iget-wide v2, p0, Lthj;->v:J

    sub-long/2addr v0, v2

    iget v2, p0, Lthj;->h:F

    invoke-static {v0, v1, v2}, Lkfh;->L(JF)J

    move-result-wide v0

    iget v2, p0, Lthj;->f:I

    invoke-static {v0, v1, v2}, Lkfh;->K(JI)J

    move-result-wide v0

    iget-wide v2, p0, Lthj;->x:J

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public final o()V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lthj;->j:J

    const/4 v2, 0x0

    iput v2, p0, Lthj;->u:I

    iput v2, p0, Lthj;->t:I

    iput-wide v0, p0, Lthj;->k:J

    iput-wide v0, p0, Lthj;->A:J

    iput-wide v0, p0, Lthj;->D:J

    iput-boolean v2, p0, Lthj;->i:Z

    return-void
.end method
