.class public final Ldif;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt7j;


# instance fields
.field public final a:Lnrj;

.field public b:J

.field public c:J

.field public d:J

.field public e:J

.field public f:I

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnrj;

    const/4 v1, 0x1

    const/high16 v2, 0x10000

    invoke-direct {v0, v1, v2}, Lnrj;-><init>(ZI)V

    iput-object v0, p0, Ldif;->a:Lnrj;

    const-wide/32 v0, 0xe4e1c0

    iput-wide v0, p0, Ldif;->b:J

    const-wide/32 v0, 0x1c9c380

    iput-wide v0, p0, Ldif;->c:J

    const-wide/32 v0, 0x2625a0

    iput-wide v0, p0, Ldif;->d:J

    const-wide/32 v0, 0x4c4b40

    iput-wide v0, p0, Ldif;->e:J

    return-void
.end method


# virtual methods
.method public final a(Ltfj;)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ldif;->j(Z)V

    return-void
.end method

.method public final b(Ltfj;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ldif;->j(Z)V

    return-void
.end method

.method public final c(Ltfj;)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ldif;->j(Z)V

    return-void
.end method

.method public final d(Ltfj;)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final synthetic e(Lw4f;Lbnj;J)Z
    .locals 0

    const-string p0, "LoadControl"

    const-string p1, "shouldContinuePreloading needs to be implemented when playlist preloading is enabled"

    invoke-static {p0, p1}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final f(Lr7j;)Z
    .locals 4

    iget-boolean v0, p1, Lr7j;->d:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Ldif;->e:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Ldif;->d:J

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_2

    iget-wide p0, p1, Lr7j;->b:J

    cmp-long p0, p0, v0

    if-ltz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final g(Lr7j;)Z
    .locals 7

    iget-wide v0, p1, Lr7j;->b:J

    iget-wide v2, p0, Ldif;->c:J

    cmp-long p1, v0, v2

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez p1, :cond_0

    move p1, v4

    goto :goto_0

    :cond_0
    iget-wide v5, p0, Ldif;->b:J

    cmp-long p1, v0, v5

    if-gez p1, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    move p1, v3

    :goto_0
    iget-object v0, p0, Ldif;->a:Lnrj;

    invoke-virtual {v0}, Lnrj;->a()I

    move-result v0

    iget v1, p0, Ldif;->f:I

    if-eq p1, v2, :cond_3

    if-ne p1, v3, :cond_2

    iget-boolean p1, p0, Ldif;->g:Z

    if-eqz p1, :cond_2

    if-ge v0, v1, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :cond_3
    :goto_1
    iput-boolean v3, p0, Ldif;->g:Z

    return v3
.end method

.method public final h(Lr7j;Lnpj;[Ltqj;)V
    .locals 4

    const/4 p1, 0x0

    iput p1, p0, Ldif;->f:I

    array-length p2, p3

    :goto_0
    if-ge p1, p2, :cond_6

    aget-object v0, p3, p1

    if-eqz v0, :cond_5

    iget v1, p0, Ldif;->f:I

    invoke-interface {v0}, Lxqj;->zzg()Ln5f;

    move-result-object v0

    iget v0, v0, Ln5f;->c:I

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    const/high16 v3, 0x20000

    if-eq v0, v2, :cond_4

    const/4 v2, 0x5

    if-eq v0, v2, :cond_4

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    const/high16 v3, 0x7d00000

    goto :goto_1

    :cond_2
    const/high16 v3, 0xc80000

    goto :goto_1

    :cond_3
    const/high16 v3, 0x89a0000

    :cond_4
    :goto_1
    add-int/2addr v1, v3

    iput v1, p0, Ldif;->f:I

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_6
    iget-object p1, p0, Ldif;->a:Lnrj;

    iget p0, p0, Ldif;->f:I

    invoke-virtual {p1, p0}, Lnrj;->f(I)V

    return-void
.end method

.method public final i(Ltfj;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final j(Z)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ldif;->f:I

    iput-boolean v0, p0, Ldif;->g:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Ldif;->a:Lnrj;

    invoke-virtual {p0}, Lnrj;->e()V

    :cond_0
    return-void
.end method

.method public final declared-synchronized k(I)V
    .locals 4

    monitor-enter p0

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    :try_start_0
    iput-wide v0, p0, Ldif;->d:J
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

.method public final declared-synchronized l(I)V
    .locals 4

    monitor-enter p0

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    :try_start_0
    iput-wide v0, p0, Ldif;->e:J
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

.method public final declared-synchronized m(I)V
    .locals 4

    monitor-enter p0

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    :try_start_0
    iput-wide v0, p0, Ldif;->c:J
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

.method public final declared-synchronized n(I)V
    .locals 4

    monitor-enter p0

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    :try_start_0
    iput-wide v0, p0, Ldif;->b:J
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

.method public final zzk()Lnrj;
    .locals 0

    iget-object p0, p0, Ldif;->a:Lnrj;

    return-object p0
.end method
