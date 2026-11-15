.class public final Lpoj;
.super Lulj;
.source "SourceFile"

# interfaces
.implements Lgoj;


# instance fields
.field public final h:Lt8i;

.field public final i:Lojj;

.field public final j:I

.field public k:Z

.field public l:J

.field public m:Z

.field public n:Z

.field public o:Lixi;

.field public p:Lcme;

.field public final q:Lmoj;

.field public final r:Lrrj;


# direct methods
.method public synthetic constructor <init>(Lcme;Lt8i;Lmoj;Lojj;Lrrj;IILerj;Lk3i;Looj;)V
    .locals 0

    invoke-direct {p0}, Lulj;-><init>()V

    iput-object p1, p0, Lpoj;->p:Lcme;

    iput-object p2, p0, Lpoj;->h:Lt8i;

    iput-object p3, p0, Lpoj;->q:Lmoj;

    iput-object p4, p0, Lpoj;->i:Lojj;

    iput-object p5, p0, Lpoj;->r:Lrrj;

    iput p6, p0, Lpoj;->j:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lpoj;->k:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lpoj;->l:J

    return-void
.end method


# virtual methods
.method public final b(Lbnj;Lnrj;J)Lzmj;
    .locals 18

    move-object/from16 v8, p0

    iget-object v0, v8, Lpoj;->h:Lt8i;

    invoke-interface {v0}, Lt8i;->zza()Lv9i;

    move-result-object v2

    iget-object v0, v8, Lpoj;->o:Lixi;

    if-eqz v0, :cond_0

    invoke-interface {v2, v0}, Lv9i;->c(Lixi;)V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lpoj;->zzJ()Lcme;

    move-result-object v0

    iget-object v0, v0, Lcme;->b:Lxge;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lxge;->a:Landroid/net/Uri;

    iget-object v4, v8, Lpoj;->q:Lmoj;

    new-instance v17, Lkoj;

    move-object/from16 v0, v17

    invoke-virtual/range {p0 .. p0}, Lulj;->m()Ltfj;

    new-instance v5, Ldmj;

    move-object v3, v5

    iget-object v4, v4, Lmoj;->a:Lh9e;

    invoke-direct {v5, v4}, Ldmj;-><init>(Lh9e;)V

    iget-object v4, v8, Lpoj;->i:Lojj;

    invoke-virtual/range {p0 .. p1}, Lulj;->n(Lbnj;)Ljjj;

    move-result-object v5

    iget-object v6, v8, Lpoj;->r:Lrrj;

    invoke-virtual/range {p0 .. p1}, Lulj;->p(Lbnj;)Lrnj;

    move-result-object v7

    iget v11, v8, Lpoj;->j:I

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v9, v10}, Lkfh;->N(J)J

    move-result-wide v14

    const/16 v16, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    invoke-direct/range {v0 .. v16}, Lkoj;-><init>(Landroid/net/Uri;Lv9i;Lznj;Lojj;Ljjj;Lrrj;Lrnj;Lgoj;Lnrj;Ljava/lang/String;IILerj;JLa6e;)V

    return-object v17
.end method

.method public final h(Lzmj;)V
    .locals 0

    check-cast p1, Lkoj;

    invoke-virtual {p1}, Lkoj;->w()V

    return-void
.end method

.method public final declared-synchronized i(Lcme;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lpoj;->p:Lcme;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final k(JLkae;Z)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-wide p1, p0, Lpoj;->l:J

    :cond_0
    invoke-interface {p3}, Lkae;->zzh()Z

    move-result p3

    iget-boolean v0, p0, Lpoj;->k:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lpoj;->l:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lpoj;->m:Z

    if-ne v0, p3, :cond_1

    iget-boolean v0, p0, Lpoj;->n:Z

    if-ne v0, p4, :cond_1

    return-void

    :cond_1
    iput-wide p1, p0, Lpoj;->l:J

    iput-boolean p3, p0, Lpoj;->m:Z

    iput-boolean p4, p0, Lpoj;->n:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lpoj;->k:Z

    invoke-virtual {p0}, Lpoj;->x()V

    return-void
.end method

.method public final t(Lixi;)V
    .locals 0

    iput-object p1, p0, Lpoj;->o:Lixi;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lulj;->m()Ltfj;

    invoke-virtual {p0}, Lpoj;->x()V

    return-void
.end method

.method public final v()V
    .locals 0

    return-void
.end method

.method public final x()V
    .locals 25

    move-object/from16 v0, p0

    new-instance v10, Lcpj;

    iget-wide v8, v0, Lpoj;->l:J

    iget-boolean v11, v0, Lpoj;->m:Z

    iget-boolean v1, v0, Lpoj;->n:Z

    invoke-virtual/range {p0 .. p0}, Lpoj;->zzJ()Lcme;

    move-result-object v14

    if-eqz v1, :cond_0

    iget-object v1, v14, Lcme;->c:Lwfe;

    :goto_0
    move-object/from16 v21, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v6, v2

    move-wide v4, v2

    const-wide/16 v12, 0x0

    const-wide/16 v15, 0x0

    move-object/from16 v20, v14

    move-wide v14, v15

    const/16 v17, 0x0

    move-object v1, v10

    move-wide/from16 v22, v8

    move-object/from16 v24, v10

    move/from16 v16, v11

    move-wide/from16 v10, v22

    invoke-direct/range {v1 .. v21}, Lcpj;-><init>(JJJJJJJZZZLjava/lang/Object;Lcme;Lwfe;)V

    iget-boolean v1, v0, Lpoj;->k:Z

    if-eqz v1, :cond_1

    new-instance v10, Lloj;

    move-object/from16 v1, v24

    invoke-direct {v10, v0, v1}, Lloj;-><init>(Lpoj;Lw4f;)V

    goto :goto_2

    :cond_1
    move-object/from16 v1, v24

    move-object v10, v1

    :goto_2
    invoke-virtual {v0, v10}, Lulj;->u(Lw4f;)V

    return-void
.end method

.method public final declared-synchronized zzJ()Lcme;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lpoj;->p:Lcme;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final zzz()V
    .locals 0

    return-void
.end method
