.class public Lcom/google/android/exoplayer2/source/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfva;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/p$c;,
        Lcom/google/android/exoplayer2/source/p$b;,
        Lcom/google/android/exoplayer2/source/p$d;
    }
.end annotation


# instance fields
.field public A:Lcom/google/android/exoplayer2/k;

.field public B:Lcom/google/android/exoplayer2/k;

.field public C:I

.field public D:Z

.field public E:Z

.field public F:J

.field public G:Z

.field public final a:Lcom/google/android/exoplayer2/source/o;

.field public final b:Lcom/google/android/exoplayer2/source/p$b;

.field public final c:Lju9;

.field public final d:Lcom/google/android/exoplayer2/drm/c;

.field public final e:Lcom/google/android/exoplayer2/drm/b$a;

.field public f:Lcom/google/android/exoplayer2/source/p$d;

.field public g:Lcom/google/android/exoplayer2/k;

.field public h:Lcom/google/android/exoplayer2/drm/DrmSession;

.field public i:I

.field public j:[I

.field public k:[J

.field public l:[I

.field public m:[I

.field public n:[J

.field public o:[Lfva$a;

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:J

.field public u:J

.field public v:J

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Lcb;Lcom/google/android/exoplayer2/drm/c;Lcom/google/android/exoplayer2/drm/b$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/p;->d:Lcom/google/android/exoplayer2/drm/c;

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/p;->e:Lcom/google/android/exoplayer2/drm/b$a;

    new-instance p2, Lcom/google/android/exoplayer2/source/o;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/source/o;-><init>(Lcb;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/p;->a:Lcom/google/android/exoplayer2/source/o;

    new-instance p1, Lcom/google/android/exoplayer2/source/p$b;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/source/p$b;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/p;->b:Lcom/google/android/exoplayer2/source/p$b;

    const/16 p1, 0x3e8

    iput p1, p0, Lcom/google/android/exoplayer2/source/p;->i:I

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/p;->j:[I

    new-array p2, p1, [J

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/p;->k:[J

    new-array p2, p1, [J

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/p;->n:[J

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/p;->m:[I

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/p;->l:[I

    new-array p1, p1, [Lfva$a;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/p;->o:[Lfva$a;

    new-instance p1, Lju9;

    new-instance p2, Lg19;

    invoke-direct {p2}, Lg19;-><init>()V

    invoke-direct {p1, p2}, Lju9;-><init>(Lag1;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/p;->c:Lju9;

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/p;->t:J

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/p;->u:J

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/p;->v:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/p;->y:Z

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/p;->x:Z

    return-void
.end method

.method public static synthetic E(Lcom/google/android/exoplayer2/source/p$c;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/p$c;->b:Lcom/google/android/exoplayer2/drm/c$b;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/drm/c$b;->release()V

    return-void
.end method

.method public static synthetic g(Lcom/google/android/exoplayer2/source/p$c;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/p;->E(Lcom/google/android/exoplayer2/source/p$c;)V

    return-void
.end method

.method public static k(Lcb;Lcom/google/android/exoplayer2/drm/c;Lcom/google/android/exoplayer2/drm/b$a;)Lcom/google/android/exoplayer2/source/p;
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/source/p;

    invoke-static {p1}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/drm/c;

    invoke-static {p2}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/drm/b$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/exoplayer2/source/p;-><init>(Lcb;Lcom/google/android/exoplayer2/drm/c;Lcom/google/android/exoplayer2/drm/b$a;)V

    return-object v0
.end method


# virtual methods
.method public final A()I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/source/p;->q:I

    iget p0, p0, Lcom/google/android/exoplayer2/source/p;->p:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final B()Z
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/source/p;->s:I

    iget p0, p0, Lcom/google/android/exoplayer2/source/p;->p:I

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final declared-synchronized C()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/p;->w:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized D(Z)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/p;->B()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/p;->w:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/p;->B:Lcom/google/android/exoplayer2/k;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/p;->g:Lcom/google/android/exoplayer2/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, v0, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    monitor-exit p0

    return v1

    :cond_2
    :try_start_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/p;->c:Lju9;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/p;->w()I

    move-result v0

    invoke-virtual {p1, v0}, Lju9;->e(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/p$c;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/p$c;->a:Lcom/google/android/exoplayer2/k;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/p;->g:Lcom/google/android/exoplayer2/k;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq p1, v0, :cond_3

    monitor-exit p0

    return v1

    :cond_3
    :try_start_2
    iget p1, p0, Lcom/google/android/exoplayer2/source/p;->s:I

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/p;->x(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/p;->F(I)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final F(I)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/p;->h:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/p;->m:[I

    aget p1, v0, p1

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/p;->h:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/drm/DrmSession;->playClearSamplesWithoutKeys()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public G()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/p;->h:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/p;->h:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/drm/DrmSession;->getError()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object p0

    invoke-static {p0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final H(Lcom/google/android/exoplayer2/k;Lo44;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/p;->g:Lcom/google/android/exoplayer2/k;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lcom/google/android/exoplayer2/k;->p:Lcom/google/android/exoplayer2/drm/DrmInitData;

    :goto_1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/p;->g:Lcom/google/android/exoplayer2/k;

    iget-object v2, p1, Lcom/google/android/exoplayer2/k;->p:Lcom/google/android/exoplayer2/drm/DrmInitData;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/p;->d:Lcom/google/android/exoplayer2/drm/c;

    if-eqz v3, :cond_2

    invoke-interface {v3, p1}, Lcom/google/android/exoplayer2/drm/c;->d(Lcom/google/android/exoplayer2/k;)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/k;->c(I)Lcom/google/android/exoplayer2/k;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, p1

    :goto_2
    iput-object v3, p2, Lo44;->b:Lcom/google/android/exoplayer2/k;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/p;->h:Lcom/google/android/exoplayer2/drm/DrmSession;

    iput-object v3, p2, Lo44;->a:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/p;->d:Lcom/google/android/exoplayer2/drm/c;

    if-nez v3, :cond_3

    return-void

    :cond_3
    if-nez v1, :cond_4

    invoke-static {v0, v2}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/p;->h:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/p;->d:Lcom/google/android/exoplayer2/drm/c;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/p;->e:Lcom/google/android/exoplayer2/drm/b$a;

    invoke-interface {v1, v2, p1}, Lcom/google/android/exoplayer2/drm/c;->b(Lcom/google/android/exoplayer2/drm/b$a;Lcom/google/android/exoplayer2/k;)Lcom/google/android/exoplayer2/drm/DrmSession;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/p;->h:Lcom/google/android/exoplayer2/drm/DrmSession;

    iput-object p1, p2, Lo44;->a:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/p;->e:Lcom/google/android/exoplayer2/drm/b$a;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/drm/DrmSession;->a(Lcom/google/android/exoplayer2/drm/b$a;)V

    :cond_5
    return-void
.end method

.method public final declared-synchronized I(Lo44;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;ZZLcom/google/android/exoplayer2/source/p$b;)I
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:Z

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/p;->B()Z

    move-result v0

    const/4 v1, -0x4

    const/4 v2, -0x3

    const/4 v3, -0x5

    if-nez v0, :cond_4

    if-nez p4, :cond_3

    iget-boolean p4, p0, Lcom/google/android/exoplayer2/source/p;->w:Z

    if-eqz p4, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/p;->B:Lcom/google/android/exoplayer2/k;

    if-eqz p2, :cond_2

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/google/android/exoplayer2/source/p;->g:Lcom/google/android/exoplayer2/k;

    if-eq p2, p3, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_0
    invoke-static {p2}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/k;

    invoke-virtual {p0, p2, p1}, Lcom/google/android/exoplayer2/source/p;->H(Lcom/google/android/exoplayer2/k;Lo44;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v3

    :cond_2
    monitor-exit p0

    return v2

    :cond_3
    :goto_1
    const/4 p1, 0x4

    :try_start_1
    invoke-virtual {p2, p1}, Lwk0;->k(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    :cond_4
    :try_start_2
    iget-object p4, p0, Lcom/google/android/exoplayer2/source/p;->c:Lju9;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/p;->w()I

    move-result v0

    invoke-virtual {p4, v0}, Lju9;->e(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/android/exoplayer2/source/p$c;

    iget-object p4, p4, Lcom/google/android/exoplayer2/source/p$c;->a:Lcom/google/android/exoplayer2/k;

    if-nez p3, :cond_8

    iget-object p3, p0, Lcom/google/android/exoplayer2/source/p;->g:Lcom/google/android/exoplayer2/k;

    if-eq p4, p3, :cond_5

    goto :goto_2

    :cond_5
    iget p1, p0, Lcom/google/android/exoplayer2/source/p;->s:I

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/p;->x(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/p;->F(I)Z

    move-result p3

    if-nez p3, :cond_6

    const/4 p1, 0x1

    iput-boolean p1, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v2

    :cond_6
    :try_start_3
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/p;->m:[I

    aget p3, p3, p1

    invoke-virtual {p2, p3}, Lwk0;->k(I)V

    iget-object p3, p0, Lcom/google/android/exoplayer2/source/p;->n:[J

    aget-wide p3, p3, p1

    iput-wide p3, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->f:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/p;->t:J

    cmp-long p3, p3, v2

    if-gez p3, :cond_7

    const/high16 p3, -0x80000000

    invoke-virtual {p2, p3}, Lwk0;->a(I)V

    :cond_7
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/p;->l:[I

    aget p2, p2, p1

    iput p2, p5, Lcom/google/android/exoplayer2/source/p$b;->a:I

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/p;->k:[J

    aget-wide p2, p2, p1

    iput-wide p2, p5, Lcom/google/android/exoplayer2/source/p$b;->b:J

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/p;->o:[Lfva$a;

    aget-object p1, p2, p1

    iput-object p1, p5, Lcom/google/android/exoplayer2/source/p$b;->c:Lfva$a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v1

    :cond_8
    :goto_2
    :try_start_4
    invoke-virtual {p0, p4, p1}, Lcom/google/android/exoplayer2/source/p;->H(Lcom/google/android/exoplayer2/k;Lo44;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return v3

    :goto_3
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public J()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/p;->p()V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/p;->M()V

    return-void
.end method

.method public K(Lo44;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;IZ)I
    .locals 9

    and-int/lit8 v0, p3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v6, v2

    goto :goto_0

    :cond_0
    move v6, v1

    :goto_0
    iget-object v8, p0, Lcom/google/android/exoplayer2/source/p;->b:Lcom/google/android/exoplayer2/source/p$b;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/source/p;->I(Lo44;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;ZZLcom/google/android/exoplayer2/source/p$b;)I

    move-result p1

    const/4 p4, -0x4

    if-ne p1, p4, :cond_4

    invoke-virtual {p2}, Lwk0;->h()Z

    move-result p4

    if-nez p4, :cond_4

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_1

    move v1, v2

    :cond_1
    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_3

    if-eqz v1, :cond_2

    iget-object p3, p0, Lcom/google/android/exoplayer2/source/p;->a:Lcom/google/android/exoplayer2/source/o;

    iget-object p4, p0, Lcom/google/android/exoplayer2/source/p;->b:Lcom/google/android/exoplayer2/source/p$b;

    invoke-virtual {p3, p2, p4}, Lcom/google/android/exoplayer2/source/o;->e(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/source/p$b;)V

    goto :goto_1

    :cond_2
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/p;->a:Lcom/google/android/exoplayer2/source/o;

    iget-object p4, p0, Lcom/google/android/exoplayer2/source/p;->b:Lcom/google/android/exoplayer2/source/p$b;

    invoke-virtual {p3, p2, p4}, Lcom/google/android/exoplayer2/source/o;->l(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/source/p$b;)V

    :cond_3
    :goto_1
    if-nez v1, :cond_4

    iget p2, p0, Lcom/google/android/exoplayer2/source/p;->s:I

    add-int/2addr p2, v2

    iput p2, p0, Lcom/google/android/exoplayer2/source/p;->s:I

    :cond_4
    return p1
.end method

.method public L()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/p;->O(Z)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/p;->M()V

    return-void
.end method

.method public final M()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/p;->h:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/p;->e:Lcom/google/android/exoplayer2/drm/b$a;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/drm/DrmSession;->a(Lcom/google/android/exoplayer2/drm/b$a;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/p;->h:Lcom/google/android/exoplayer2/drm/DrmSession;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/p;->g:Lcom/google/android/exoplayer2/k;

    :cond_0
    return-void
.end method

.method public final N()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/p;->O(Z)V

    return-void
.end method

.method public O(Z)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/p;->a:Lcom/google/android/exoplayer2/source/o;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/o;->m()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/source/p;->p:I

    iput v0, p0, Lcom/google/android/exoplayer2/source/p;->q:I

    iput v0, p0, Lcom/google/android/exoplayer2/source/p;->r:I

    iput v0, p0, Lcom/google/android/exoplayer2/source/p;->s:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/p;->x:Z

    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/p;->t:J

    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/p;->u:J

    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/p;->v:J

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/p;->w:Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/p;->c:Lju9;

    invoke-virtual {v0}, Lju9;->b()V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/p;->A:Lcom/google/android/exoplayer2/k;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/p;->B:Lcom/google/android/exoplayer2/k;

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/p;->y:Z

    :cond_0
    return-void
.end method

.method public final declared-synchronized P()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/google/android/exoplayer2/source/p;->s:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/p;->a:Lcom/google/android/exoplayer2/source/o;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/o;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized Q(JZ)Z
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/p;->P()V

    iget v0, p0, Lcom/google/android/exoplayer2/source/p;->s:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/p;->x(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/p;->B()Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/p;->n:[J

    aget-wide v0, v0, v2

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/p;->v:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    iget p3, p0, Lcom/google/android/exoplayer2/source/p;->p:I

    iget v0, p0, Lcom/google/android/exoplayer2/source/p;->s:I

    sub-int v3, p3, v0

    const/4 v6, 0x1

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/p;->r(IIJZ)I

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    monitor-exit p0

    return v7

    :cond_1
    :try_start_1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/p;->t:J

    iget p1, p0, Lcom/google/android/exoplayer2/source/p;->s:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/exoplayer2/source/p;->s:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    monitor-exit p0

    return v7

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final R(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/p;->t:J

    return-void
.end method

.method public final declared-synchronized S(Lcom/google/android/exoplayer2/k;)Z
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/p;->y:Z

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/p;->B:Lcom/google/android/exoplayer2/k;

    invoke-static {p1, v1}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/p;->c:Lju9;

    invoke-virtual {v1}, Lju9;->g()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/p;->c:Lju9;

    invoke-virtual {v1}, Lju9;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/p$c;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/p$c;->a:Lcom/google/android/exoplayer2/k;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/k;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/p;->c:Lju9;

    invoke-virtual {p1}, Lju9;->f()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/p$c;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/p$c;->a:Lcom/google/android/exoplayer2/k;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/p;->B:Lcom/google/android/exoplayer2/k;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/p;->B:Lcom/google/android/exoplayer2/k;

    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/p;->B:Lcom/google/android/exoplayer2/k;

    iget-object v1, p1, Lcom/google/android/exoplayer2/k;->m:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/exoplayer2/k;->j:Ljava/lang/String;

    invoke-static {v1, p1}, Lqp6;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/p;->D:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/p;->E:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final T(Lcom/google/android/exoplayer2/source/p$d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/p;->f:Lcom/google/android/exoplayer2/source/p$d;

    return-void
.end method

.method public final declared-synchronized U(I)V
    .locals 2

    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/p;->s:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/exoplayer2/source/p;->p:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lzi;->a(Z)V

    iget v0, p0, Lcom/google/android/exoplayer2/source/p;->s:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/source/p;->s:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Lqw7;II)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/p;->a:Lcom/google/android/exoplayer2/source/o;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/o;->p(Lqw7;I)V

    return-void
.end method

.method public final b(Lcom/google/android/exoplayer2/k;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/p;->s(Lcom/google/android/exoplayer2/k;)Lcom/google/android/exoplayer2/k;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/p;->z:Z

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/p;->A:Lcom/google/android/exoplayer2/k;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/p;->S(Lcom/google/android/exoplayer2/k;)Z

    move-result p1

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/p;->f:Lcom/google/android/exoplayer2/source/p$d;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/source/p$d;->b(Lcom/google/android/exoplayer2/k;)V

    :cond_0
    return-void
.end method

.method public e(JIIILfva$a;)V
    .locals 10

    move-object v0, p0

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/p;->z:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/p;->A:Lcom/google/android/exoplayer2/k;

    invoke-static {v1}, Lzi;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/k;

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/source/p;->b(Lcom/google/android/exoplayer2/k;)V

    :cond_0
    and-int/lit8 v1, p3, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    iget-boolean v5, v0, Lcom/google/android/exoplayer2/source/p;->x:Z

    if-eqz v5, :cond_3

    if-nez v4, :cond_2

    return-void

    :cond_2
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/source/p;->x:Z

    :cond_3
    iget-wide v5, v0, Lcom/google/android/exoplayer2/source/p;->F:J

    add-long/2addr v5, p1

    iget-boolean v7, v0, Lcom/google/android/exoplayer2/source/p;->D:Z

    if-eqz v7, :cond_6

    iget-wide v7, v0, Lcom/google/android/exoplayer2/source/p;->t:J

    cmp-long v7, v5, v7

    if-gez v7, :cond_4

    return-void

    :cond_4
    if-nez v1, :cond_6

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/p;->E:Z

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Overriding unexpected non-sync sample for format: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/p;->B:Lcom/google/android/exoplayer2/k;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v7, "SampleQueue"

    invoke-static {v7, v1}, Lop5;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, v0, Lcom/google/android/exoplayer2/source/p;->E:Z

    :cond_5
    or-int/lit8 v1, p3, 0x1

    move v3, v1

    goto :goto_1

    :cond_6
    move v3, p3

    :goto_1
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/p;->G:Z

    if-eqz v1, :cond_9

    if-eqz v4, :cond_8

    invoke-virtual {p0, v5, v6}, Lcom/google/android/exoplayer2/source/p;->h(J)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_2

    :cond_7
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/source/p;->G:Z

    goto :goto_3

    :cond_8
    :goto_2
    return-void

    :cond_9
    :goto_3
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/p;->a:Lcom/google/android/exoplayer2/source/o;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/o;->d()J

    move-result-wide v1

    move v7, p4

    int-to-long v8, v7

    sub-long/2addr v1, v8

    move v4, p5

    int-to-long v8, v4

    sub-long v8, v1, v8

    move-object v0, p0

    move-wide v1, v5

    move-wide v4, v8

    move v6, p4

    move-object/from16 v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/p;->i(JIJILfva$a;)V

    return-void
.end method

.method public final f(Lms1;IZI)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/p;->a:Lcom/google/android/exoplayer2/source/o;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/o;->o(Lms1;IZ)I

    move-result p0

    return p0
.end method

.method public final declared-synchronized h(J)Z
    .locals 5

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/p;->p:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/p;->u:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long p1, p1, v3

    if-lez p1, :cond_0

    move v1, v2

    :cond_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/p;->u()J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v0, v3, p1

    if-ltz v0, :cond_2

    monitor-exit p0

    return v1

    :cond_2
    :try_start_2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/p;->j(J)I

    move-result p1

    iget p2, p0, Lcom/google/android/exoplayer2/source/p;->q:I

    add-int/2addr p2, p1

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/source/p;->q(I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v2

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized i(JIJILfva$a;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/p;->p:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/p;->x(I)I

    move-result v0

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/p;->k:[J

    aget-wide v3, v3, v0

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/p;->l:[I

    aget v0, v5, v0

    int-to-long v5, v0

    add-long/2addr v3, v5

    cmp-long v0, v3, p4

    if-gtz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lzi;->a(Z)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_1
    :goto_1
    const/high16 v0, 0x20000000

    and-int/2addr v0, p3

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/p;->w:Z

    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/p;->v:J

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/exoplayer2/source/p;->v:J

    iget v0, p0, Lcom/google/android/exoplayer2/source/p;->p:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/p;->x(I)I

    move-result v0

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/p;->n:[J

    aput-wide p1, v3, v0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/p;->k:[J

    aput-wide p4, p1, v0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/p;->l:[I

    aput p6, p1, v0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/p;->m:[I

    aput p3, p1, v0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/p;->o:[Lfva$a;

    aput-object p7, p1, v0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/p;->j:[I

    iget p2, p0, Lcom/google/android/exoplayer2/source/p;->C:I

    aput p2, p1, v0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/p;->c:Lju9;

    invoke-virtual {p1}, Lju9;->g()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/p;->c:Lju9;

    invoke-virtual {p1}, Lju9;->f()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/p$c;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/p$c;->a:Lcom/google/android/exoplayer2/k;

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/p;->B:Lcom/google/android/exoplayer2/k;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/k;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/p;->d:Lcom/google/android/exoplayer2/drm/c;

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/p;->e:Lcom/google/android/exoplayer2/drm/b$a;

    iget-object p3, p0, Lcom/google/android/exoplayer2/source/p;->B:Lcom/google/android/exoplayer2/k;

    invoke-interface {p1, p2, p3}, Lcom/google/android/exoplayer2/drm/c;->c(Lcom/google/android/exoplayer2/drm/b$a;Lcom/google/android/exoplayer2/k;)Lcom/google/android/exoplayer2/drm/c$b;

    move-result-object p1

    goto :goto_3

    :cond_4
    sget-object p1, Lcom/google/android/exoplayer2/drm/c$b;->a:Lcom/google/android/exoplayer2/drm/c$b;

    :goto_3
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/p;->c:Lju9;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/p;->A()I

    move-result p3

    new-instance p4, Lcom/google/android/exoplayer2/source/p$c;

    iget-object p5, p0, Lcom/google/android/exoplayer2/source/p;->B:Lcom/google/android/exoplayer2/k;

    invoke-static {p5}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/google/android/exoplayer2/k;

    const/4 p6, 0x0

    invoke-direct {p4, p5, p1, p6}, Lcom/google/android/exoplayer2/source/p$c;-><init>(Lcom/google/android/exoplayer2/k;Lcom/google/android/exoplayer2/drm/c$b;Lcom/google/android/exoplayer2/source/p$a;)V

    invoke-virtual {p2, p3, p4}, Lju9;->a(ILjava/lang/Object;)V

    :cond_5
    iget p1, p0, Lcom/google/android/exoplayer2/source/p;->p:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/exoplayer2/source/p;->p:I

    iget p2, p0, Lcom/google/android/exoplayer2/source/p;->i:I

    if-ne p1, p2, :cond_6

    add-int/lit16 p1, p2, 0x3e8

    new-array p3, p1, [I

    new-array p4, p1, [J

    new-array p5, p1, [J

    new-array p6, p1, [I

    new-array p7, p1, [I

    new-array v0, p1, [Lfva$a;

    iget v1, p0, Lcom/google/android/exoplayer2/source/p;->r:I

    sub-int/2addr p2, v1

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/p;->k:[J

    invoke-static {v3, v1, p4, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/p;->n:[J

    iget v3, p0, Lcom/google/android/exoplayer2/source/p;->r:I

    invoke-static {v1, v3, p5, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/p;->m:[I

    iget v3, p0, Lcom/google/android/exoplayer2/source/p;->r:I

    invoke-static {v1, v3, p6, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/p;->l:[I

    iget v3, p0, Lcom/google/android/exoplayer2/source/p;->r:I

    invoke-static {v1, v3, p7, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/p;->o:[Lfva$a;

    iget v3, p0, Lcom/google/android/exoplayer2/source/p;->r:I

    invoke-static {v1, v3, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/p;->j:[I

    iget v3, p0, Lcom/google/android/exoplayer2/source/p;->r:I

    invoke-static {v1, v3, p3, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/google/android/exoplayer2/source/p;->r:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/p;->k:[J

    invoke-static {v3, v2, p4, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/p;->n:[J

    invoke-static {v3, v2, p5, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/p;->m:[I

    invoke-static {v3, v2, p6, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/p;->l:[I

    invoke-static {v3, v2, p7, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/p;->o:[Lfva$a;

    invoke-static {v3, v2, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/p;->j:[I

    invoke-static {v3, v2, p3, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p4, p0, Lcom/google/android/exoplayer2/source/p;->k:[J

    iput-object p5, p0, Lcom/google/android/exoplayer2/source/p;->n:[J

    iput-object p6, p0, Lcom/google/android/exoplayer2/source/p;->m:[I

    iput-object p7, p0, Lcom/google/android/exoplayer2/source/p;->l:[I

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/p;->o:[Lfva$a;

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/p;->j:[I

    iput v2, p0, Lcom/google/android/exoplayer2/source/p;->r:I

    iput p1, p0, Lcom/google/android/exoplayer2/source/p;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    monitor-exit p0

    return-void

    :goto_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final j(J)I
    .locals 4

    iget v0, p0, Lcom/google/android/exoplayer2/source/p;->p:I

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/source/p;->x(I)I

    move-result v1

    :cond_0
    :goto_0
    iget v2, p0, Lcom/google/android/exoplayer2/source/p;->s:I

    if-le v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/p;->n:[J

    aget-wide v2, v2, v1

    cmp-long v2, v2, p1

    if-ltz v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/exoplayer2/source/p;->i:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final declared-synchronized l(JZZ)J
    .locals 10

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/p;->p:I

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/p;->n:[J

    iget v5, p0, Lcom/google/android/exoplayer2/source/p;->r:I

    aget-wide v3, v3, v5

    cmp-long v3, p1, v3

    if-gez v3, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p4, :cond_1

    iget p4, p0, Lcom/google/android/exoplayer2/source/p;->s:I

    if-eq p4, v0, :cond_1

    add-int/lit8 v0, p4, 0x1

    :cond_1
    move v6, v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :goto_0
    move-object v4, p0

    move-wide v7, p1

    move v9, p3

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/exoplayer2/source/p;->r(IIJZ)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    monitor-exit p0

    return-wide v1

    :cond_2
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/p;->n(I)J

    move-result-wide p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide p1

    :cond_3
    :goto_1
    monitor-exit p0

    return-wide v1

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized m()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/p;->p:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/p;->n(I)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final n(I)J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/p;->u:J

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/p;->v(I)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/p;->u:J

    iget v0, p0, Lcom/google/android/exoplayer2/source/p;->p:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/source/p;->p:I

    iget v0, p0, Lcom/google/android/exoplayer2/source/p;->q:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/source/p;->q:I

    iget v1, p0, Lcom/google/android/exoplayer2/source/p;->r:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/exoplayer2/source/p;->r:I

    iget v2, p0, Lcom/google/android/exoplayer2/source/p;->i:I

    if-lt v1, v2, :cond_0

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer2/source/p;->r:I

    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer2/source/p;->s:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/exoplayer2/source/p;->s:I

    if-gez v1, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/exoplayer2/source/p;->s:I

    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/p;->c:Lju9;

    invoke-virtual {p1, v0}, Lju9;->d(I)V

    iget p1, p0, Lcom/google/android/exoplayer2/source/p;->p:I

    if-nez p1, :cond_3

    iget p1, p0, Lcom/google/android/exoplayer2/source/p;->r:I

    if-nez p1, :cond_2

    iget p1, p0, Lcom/google/android/exoplayer2/source/p;->i:I

    :cond_2
    add-int/lit8 p1, p1, -0x1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/p;->k:[J

    aget-wide v0, v0, p1

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/p;->l:[I

    aget p0, p0, p1

    int-to-long p0, p0

    add-long/2addr v0, p0

    return-wide v0

    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/p;->k:[J

    iget p0, p0, Lcom/google/android/exoplayer2/source/p;->r:I

    aget-wide p0, p1, p0

    return-wide p0
.end method

.method public final o(JZZ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/p;->a:Lcom/google/android/exoplayer2/source/o;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/p;->l(JZZ)J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/exoplayer2/source/o;->b(J)V

    return-void
.end method

.method public final p()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/p;->a:Lcom/google/android/exoplayer2/source/o;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/p;->m()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/o;->b(J)V

    return-void
.end method

.method public final q(I)J
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/p;->A()I

    move-result v0

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    iget v3, p0, Lcom/google/android/exoplayer2/source/p;->p:I

    iget v4, p0, Lcom/google/android/exoplayer2/source/p;->s:I

    sub-int/2addr v3, v4

    if-gt v0, v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-static {v3}, Lzi;->a(Z)V

    iget v3, p0, Lcom/google/android/exoplayer2/source/p;->p:I

    sub-int/2addr v3, v0

    iput v3, p0, Lcom/google/android/exoplayer2/source/p;->p:I

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/p;->u:J

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/source/p;->v(I)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/exoplayer2/source/p;->v:J

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/p;->w:Z

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/p;->w:Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/p;->c:Lju9;

    invoke-virtual {v0, p1}, Lju9;->c(I)V

    iget p1, p0, Lcom/google/android/exoplayer2/source/p;->p:I

    if-eqz p1, :cond_2

    sub-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/p;->x(I)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/p;->k:[J

    aget-wide v0, v0, p1

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/p;->l:[I

    aget p0, p0, p1

    int-to-long p0, p0

    add-long/2addr v0, p0

    return-wide v0

    :cond_2
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final r(IIJZ)I
    .locals 6

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_4

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/p;->n:[J

    aget-wide v3, v3, p1

    cmp-long v5, v3, p3

    if-gtz v5, :cond_4

    if-eqz p5, :cond_0

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/p;->m:[I

    aget v5, v5, p1

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    :cond_0
    cmp-long v0, v3, p3

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v2

    :cond_2
    add-int/lit8 p1, p1, 0x1

    iget v3, p0, Lcom/google/android/exoplayer2/source/p;->i:I

    if-ne p1, v3, :cond_3

    move p1, v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v0
.end method

.method public s(Lcom/google/android/exoplayer2/k;)Lcom/google/android/exoplayer2/k;
    .locals 4

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/p;->F:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/google/android/exoplayer2/k;->q:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/k;->b()Lcom/google/android/exoplayer2/k$b;

    move-result-object v0

    iget-wide v1, p1, Lcom/google/android/exoplayer2/k;->q:J

    iget-wide p0, p0, Lcom/google/android/exoplayer2/source/p;->F:J

    add-long/2addr v1, p0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/k$b;->i0(J)Lcom/google/android/exoplayer2/k$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k$b;->E()Lcom/google/android/exoplayer2/k;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final declared-synchronized t()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/p;->v:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized u()J
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/p;->u:J

    iget v2, p0, Lcom/google/android/exoplayer2/source/p;->s:I

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/source/p;->v(I)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final v(I)J
    .locals 6

    const-wide/high16 v0, -0x8000000000000000L

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/source/p;->x(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_3

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/p;->n:[J

    aget-wide v4, v4, v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/p;->m:[I

    aget v4, v4, v2

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/source/p;->i:I

    add-int/lit8 v2, v2, -0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-wide v0
.end method

.method public final w()I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/source/p;->q:I

    iget p0, p0, Lcom/google/android/exoplayer2/source/p;->s:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final x(I)I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/source/p;->r:I

    add-int/2addr v0, p1

    iget p0, p0, Lcom/google/android/exoplayer2/source/p;->i:I

    if-ge v0, p0, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr v0, p0

    :goto_0
    return v0
.end method

.method public final declared-synchronized y(JZ)I
    .locals 8

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/p;->s:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/p;->x(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/p;->B()Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/p;->n:[J

    aget-wide v0, v0, v2

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/p;->v:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    if-eqz p3, :cond_1

    iget p1, p0, Lcom/google/android/exoplayer2/source/p;->p:I

    iget p2, p0, Lcom/google/android/exoplayer2/source/p;->s:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr p1, p2

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :try_start_1
    iget p3, p0, Lcom/google/android/exoplayer2/source/p;->p:I

    iget v0, p0, Lcom/google/android/exoplayer2/source/p;->s:I

    sub-int v3, p3, v0

    const/4 v6, 0x1

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/p;->r(IIJZ)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    monitor-exit p0

    return v7

    :cond_2
    monitor-exit p0

    return p1

    :cond_3
    :goto_0
    monitor-exit p0

    return v7

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized z()Lcom/google/android/exoplayer2/k;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/p;->y:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/p;->B:Lcom/google/android/exoplayer2/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
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
