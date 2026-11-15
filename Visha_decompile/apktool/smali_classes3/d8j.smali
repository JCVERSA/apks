.class public final Ld8j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lzmj;

.field public final b:Ljava/lang/Object;

.field public final c:[Lyoj;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Lf8j;

.field public h:Z

.field public final i:[Z

.field public final j:[Laaj;

.field public final k:Lzqj;

.field public final l:Lm9j;

.field public m:Ld8j;

.field public n:Lnpj;

.field public o:Larj;

.field public p:J


# direct methods
.method public constructor <init>([Laaj;JLzqj;Lnrj;Lm9j;Lf8j;Larj;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld8j;->j:[Laaj;

    iput-wide p2, p0, Ld8j;->p:J

    iput-object p4, p0, Ld8j;->k:Lzqj;

    iput-object p6, p0, Ld8j;->l:Lm9j;

    iget-object p1, p7, Lf8j;->a:Lbnj;

    iget-object p2, p1, Lbnj;->a:Ljava/lang/Object;

    iput-object p2, p0, Ld8j;->b:Ljava/lang/Object;

    iput-object p7, p0, Ld8j;->g:Lf8j;

    sget-object p2, Lnpj;->d:Lnpj;

    iput-object p2, p0, Ld8j;->n:Lnpj;

    iput-object p8, p0, Ld8j;->o:Larj;

    const/4 p2, 0x2

    new-array p3, p2, [Lyoj;

    iput-object p3, p0, Ld8j;->c:[Lyoj;

    new-array p2, p2, [Z

    iput-object p2, p0, Ld8j;->i:[Z

    iget-wide p2, p7, Lf8j;->b:J

    iget-wide p9, p7, Lf8j;->d:J

    invoke-virtual {p6, p1, p5, p2, p3}, Lm9j;->o(Lbnj;Lnrj;J)Lzmj;

    move-result-object p5

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p9, p1

    if-eqz p1, :cond_0

    new-instance p1, Lfmj;

    const/4 p6, 0x1

    const-wide/16 p7, 0x0

    move-object p4, p1

    invoke-direct/range {p4 .. p10}, Lfmj;-><init>(Lzmj;ZJJ)V

    move-object p5, p1

    :cond_0
    iput-object p5, p0, Ld8j;->a:Lzmj;

    return-void
.end method


# virtual methods
.method public final a(Larj;JZ)J
    .locals 6

    const/4 p4, 0x2

    new-array v5, p4, [Z

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Ld8j;->b(Larj;JZ[Z)J

    move-result-wide p0

    return-wide p0
.end method

.method public final b(Larj;JZ[Z)J
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, v1, Larj;->a:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    iget-object v4, v0, Ld8j;->i:[Z

    if-nez p4, :cond_0

    iget-object v6, v0, Ld8j;->o:Larj;

    invoke-virtual {v1, v6, v3}, Larj;->a(Larj;I)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    aput-boolean v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_2
    iget-object v4, v0, Ld8j;->j:[Laaj;

    const/4 v6, 0x2

    if-ge v3, v6, :cond_2

    aget-object v4, v4, v3

    invoke-interface {v4}, Laaj;->zzb()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ld8j;->u()V

    iput-object v1, v0, Ld8j;->o:Larj;

    invoke-virtual {p0}, Ld8j;->v()V

    iget-object v7, v0, Ld8j;->a:Lzmj;

    iget-object v3, v1, Larj;->c:[Ltqj;

    iget-object v9, v0, Ld8j;->i:[Z

    iget-object v14, v0, Ld8j;->c:[Lyoj;

    move-object v8, v3

    move-object v10, v14

    move-object/from16 v11, p5

    move-wide/from16 v12, p2

    invoke-interface/range {v7 .. v13}, Lzmj;->m([Ltqj;[Z[Lyoj;[ZJ)J

    move-result-wide v7

    move v9, v2

    :goto_3
    if-ge v9, v6, :cond_3

    aget-object v10, v4, v9

    invoke-interface {v10}, Laaj;->zzb()I

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_3
    iput-boolean v2, v0, Ld8j;->f:Z

    move v9, v2

    :goto_4
    if-ge v9, v6, :cond_6

    aget-object v10, v14, v9

    if-eqz v10, :cond_4

    invoke-virtual {v1, v9}, Larj;->b(I)Z

    move-result v10

    invoke-static {v10}, Ln7g;->f(Z)V

    aget-object v10, v4, v9

    invoke-interface {v10}, Laaj;->zzb()I

    iput-boolean v5, v0, Ld8j;->f:Z

    goto :goto_6

    :cond_4
    aget-object v10, v3, v9

    if-nez v10, :cond_5

    move v10, v5

    goto :goto_5

    :cond_5
    move v10, v2

    :goto_5
    invoke-static {v10}, Ln7g;->f(Z)V

    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_6
    return-wide v7
.end method

.method public final c()J
    .locals 5

    iget-boolean v0, p0, Ld8j;->e:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Ld8j;->g:Lf8j;

    iget-wide v0, p0, Lf8j;->b:J

    return-wide v0

    :cond_0
    iget-boolean v0, p0, Ld8j;->f:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld8j;->a:Lzmj;

    invoke-interface {v0}, Lzmj;->zzb()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    iget-object p0, p0, Ld8j;->g:Lf8j;

    iget-wide v0, p0, Lf8j;->e:J

    return-wide v0

    :cond_2
    return-wide v3
.end method

.method public final d()J
    .locals 2

    iget-boolean v0, p0, Ld8j;->e:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object p0, p0, Ld8j;->a:Lzmj;

    invoke-interface {p0}, Lzmj;->zzc()J

    move-result-wide v0

    return-wide v0
.end method

.method public final e()J
    .locals 2

    iget-wide v0, p0, Ld8j;->p:J

    return-wide v0
.end method

.method public final f()J
    .locals 4

    iget-object v0, p0, Ld8j;->g:Lf8j;

    iget-wide v0, v0, Lf8j;->b:J

    iget-wide v2, p0, Ld8j;->p:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final g()Ld8j;
    .locals 0

    iget-object p0, p0, Ld8j;->m:Ld8j;

    return-object p0
.end method

.method public final h()Lnpj;
    .locals 0

    iget-object p0, p0, Ld8j;->n:Lnpj;

    return-object p0
.end method

.method public final i()Larj;
    .locals 0

    iget-object p0, p0, Ld8j;->o:Larj;

    return-object p0
.end method

.method public final j(FLw4f;Z)Larj;
    .locals 2

    iget-object p1, p0, Ld8j;->n:Lnpj;

    iget-object p3, p0, Ld8j;->g:Lf8j;

    iget-object p3, p3, Lf8j;->a:Lbnj;

    iget-object v0, p0, Ld8j;->k:Lzqj;

    iget-object p0, p0, Ld8j;->j:[Laaj;

    invoke-virtual {v0, p0, p1, p3, p2}, Lzqj;->f([Laaj;Lnpj;Lbnj;Lw4f;)Larj;

    move-result-object p1

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    iget v0, p1, Larj;->a:I

    if-ge p3, v0, :cond_3

    invoke-virtual {p1, p3}, Larj;->b(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p1, Larj;->c:[Ltqj;

    aget-object v0, v0, p3

    if-nez v0, :cond_0

    aget-object v0, p0, p3

    invoke-interface {v0}, Laaj;->zzb()I

    move v1, p2

    :cond_0
    invoke-static {v1}, Ln7g;->f(Z)V

    goto :goto_2

    :cond_1
    iget-object v0, p1, Larj;->c:[Ltqj;

    aget-object v0, v0, p3

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, p2

    :goto_1
    invoke-static {v1}, Ln7g;->f(Z)V

    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    iget-object p0, p1, Larj;->c:[Ltqj;

    array-length p3, p0

    :goto_3
    if-ge p2, p3, :cond_4

    aget-object v0, p0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_4
    return-object p1
.end method

.method public final k(Lz7j;)V
    .locals 1

    invoke-virtual {p0}, Ld8j;->w()Z

    move-result v0

    invoke-static {v0}, Ln7g;->f(Z)V

    iget-object p0, p0, Ld8j;->a:Lzmj;

    invoke-interface {p0, p1}, Lzmj;->b(Lz7j;)Z

    return-void
.end method

.method public final l(FLw4f;Z)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld8j;->e:Z

    iget-object v0, p0, Ld8j;->a:Lzmj;

    invoke-interface {v0}, Lzmj;->zzg()Lnpj;

    move-result-object v0

    iput-object v0, p0, Ld8j;->n:Lnpj;

    invoke-virtual {p0, p1, p2, p3}, Ld8j;->j(FLw4f;Z)Larj;

    move-result-object p1

    iget-object p2, p0, Ld8j;->g:Lf8j;

    iget-wide v0, p2, Lf8j;->b:J

    iget-wide p2, p2, Lf8j;->e:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p2, v2

    if-eqz v2, :cond_0

    cmp-long v2, v0, p2

    if-ltz v2, :cond_0

    const-wide/16 v0, -0x1

    add-long/2addr p2, v0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Ld8j;->a(Larj;JZ)J

    move-result-wide p1

    iget-wide v0, p0, Ld8j;->p:J

    iget-object p3, p0, Ld8j;->g:Lf8j;

    iget-wide v2, p3, Lf8j;->b:J

    sub-long/2addr v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ld8j;->p:J

    invoke-virtual {p3, p1, p2}, Lf8j;->b(J)Lf8j;

    move-result-object p1

    iput-object p1, p0, Ld8j;->g:Lf8j;

    return-void
.end method

.method public final m(Lymj;J)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld8j;->d:Z

    iget-object p0, p0, Ld8j;->a:Lzmj;

    invoke-interface {p0, p1, p2, p3}, Lzmj;->d(Lymj;J)V

    return-void
.end method

.method public final n(J)V
    .locals 3

    invoke-virtual {p0}, Ld8j;->w()Z

    move-result v0

    invoke-static {v0}, Ln7g;->f(Z)V

    iget-boolean v0, p0, Ld8j;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld8j;->a:Lzmj;

    iget-wide v1, p0, Ld8j;->p:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lzmj;->a(J)V

    :cond_0
    return-void
.end method

.method public final o()V
    .locals 2

    invoke-virtual {p0}, Ld8j;->u()V

    iget-object v0, p0, Ld8j;->a:Lzmj;

    :try_start_0
    instance-of v1, v0, Lfmj;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Ld8j;->l:Lm9j;

    if-eqz v1, :cond_0

    :try_start_1
    check-cast v0, Lfmj;

    iget-object v0, v0, Lfmj;->b:Lzmj;

    invoke-virtual {p0, v0}, Lm9j;->i(Lzmj;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lm9j;->i(Lzmj;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :goto_0
    const-string v0, "MediaPeriodHolder"

    const-string v1, "Period release failed."

    invoke-static {v0, v1, p0}, Lzrg;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final p(Ld8j;)V
    .locals 1

    iget-object v0, p0, Ld8j;->m:Ld8j;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ld8j;->u()V

    iput-object p1, p0, Ld8j;->m:Ld8j;

    invoke-virtual {p0}, Ld8j;->v()V

    return-void
.end method

.method public final q(J)V
    .locals 0

    iput-wide p1, p0, Ld8j;->p:J

    return-void
.end method

.method public final r()V
    .locals 5

    iget-object v0, p0, Ld8j;->a:Lzmj;

    instance-of v1, v0, Lfmj;

    if-eqz v1, :cond_1

    iget-object p0, p0, Ld8j;->g:Lf8j;

    iget-wide v1, p0, Lf8j;->d:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, v1, v3

    if-nez p0, :cond_0

    const-wide/high16 v1, -0x8000000000000000L

    :cond_0
    check-cast v0, Lfmj;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Lfmj;->i(JJ)V

    :cond_1
    return-void
.end method

.method public final s()Z
    .locals 7

    iget-boolean v0, p0, Ld8j;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Ld8j;->f:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object p0, p0, Ld8j;->a:Lzmj;

    invoke-interface {p0}, Lzmj;->zzb()J

    move-result-wide v3

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long p0, v3, v5

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1
.end method

.method public final t()Z
    .locals 7

    iget-boolean v0, p0, Ld8j;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ld8j;->s()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ld8j;->c()J

    move-result-wide v3

    iget-object p0, p0, Ld8j;->g:Lf8j;

    iget-wide v5, p0, Lf8j;->b:J

    sub-long/2addr v3, v5

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, v3, v5

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1
.end method

.method public final u()V
    .locals 3

    invoke-virtual {p0}, Ld8j;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ld8j;->o:Larj;

    iget v2, v1, Larj;->a:I

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Larj;->b(I)Z

    iget-object v1, p0, Ld8j;->o:Larj;

    iget-object v1, v1, Larj;->c:[Ltqj;

    aget-object v1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final v()V
    .locals 3

    invoke-virtual {p0}, Ld8j;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ld8j;->o:Larj;

    iget v2, v1, Larj;->a:I

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Larj;->b(I)Z

    iget-object v1, p0, Ld8j;->o:Larj;

    iget-object v1, v1, Larj;->c:[Ltqj;

    aget-object v1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final w()Z
    .locals 0

    iget-object p0, p0, Ld8j;->m:Ld8j;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
