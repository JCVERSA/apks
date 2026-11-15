.class public abstract Lsy9;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsy9$c;,
        Lsy9$b;
    }
.end annotation


# instance fields
.field public final a:Lbe7;

.field public b:Lfva;

.field public c:Lqk3;

.field public d:Lde7;

.field public e:J

.field public f:J

.field public g:J

.field public h:I

.field public i:I

.field public j:Lsy9$b;

.field public k:J

.field public l:Z

.field public m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbe7;

    invoke-direct {v0}, Lbe7;-><init>()V

    iput-object v0, p0, Lsy9;->a:Lbe7;

    new-instance v0, Lsy9$b;

    invoke-direct {v0}, Lsy9$b;-><init>()V

    iput-object v0, p0, Lsy9;->j:Lsy9$b;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lsy9;->b:Lfva;

    invoke-static {v0}, Lzi;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lsy9;->c:Lqk3;

    invoke-static {p0}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long/2addr p1, v0

    iget p0, p0, Lsy9;->i:I

    int-to-long v0, p0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public c(J)J
    .locals 2

    iget p0, p0, Lsy9;->i:I

    int-to-long v0, p0

    mul-long/2addr v0, p1

    const-wide/32 p0, 0xf4240

    div-long/2addr v0, p0

    return-wide v0
.end method

.method public d(Lqk3;Lfva;)V
    .locals 0

    iput-object p1, p0, Lsy9;->c:Lqk3;

    iput-object p2, p0, Lsy9;->b:Lfva;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lsy9;->l(Z)V

    return-void
.end method

.method public e(J)V
    .locals 0

    iput-wide p1, p0, Lsy9;->g:J

    return-void
.end method

.method public abstract f(Lqw7;)J
.end method

.method public final g(Lpk3;Lid8;)I
    .locals 3

    invoke-virtual {p0}, Lsy9;->a()V

    iget v0, p0, Lsy9;->h:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_1

    const/4 p0, 0x3

    if-ne v0, p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    iget-object v0, p0, Lsy9;->d:Lde7;

    invoke-static {v0}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lsy9;->k(Lpk3;Lid8;)I

    move-result p0

    return p0

    :cond_2
    iget-wide v0, p0, Lsy9;->f:J

    long-to-int p2, v0

    invoke-interface {p1, p2}, Lpk3;->skipFully(I)V

    iput v2, p0, Lsy9;->h:I

    const/4 p0, 0x0

    return p0

    :cond_3
    invoke-virtual {p0, p1}, Lsy9;->j(Lpk3;)I

    move-result p0

    return p0
.end method

.method public final h(Lpk3;)Z
    .locals 4

    :goto_0
    iget-object v0, p0, Lsy9;->a:Lbe7;

    invoke-virtual {v0, p1}, Lbe7;->d(Lpk3;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x3

    iput p1, p0, Lsy9;->h:I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p1}, Lpk3;->getPosition()J

    move-result-wide v0

    iget-wide v2, p0, Lsy9;->f:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lsy9;->k:J

    iget-object v0, p0, Lsy9;->a:Lbe7;

    invoke-virtual {v0}, Lbe7;->c()Lqw7;

    move-result-object v0

    iget-wide v1, p0, Lsy9;->f:J

    iget-object v3, p0, Lsy9;->j:Lsy9$b;

    invoke-virtual {p0, v0, v1, v2, v3}, Lsy9;->i(Lqw7;JLsy9$b;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lpk3;->getPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lsy9;->f:J

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public abstract i(Lqw7;JLsy9$b;)Z
.end method

.method public final j(Lpk3;)I
    .locals 13

    invoke-virtual {p0, p1}, Lsy9;->h(Lpk3;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lsy9;->j:Lsy9$b;

    iget-object v0, v0, Lsy9$b;->a:Lcom/google/android/exoplayer2/k;

    iget v1, v0, Lcom/google/android/exoplayer2/k;->A:I

    iput v1, p0, Lsy9;->i:I

    iget-boolean v1, p0, Lsy9;->m:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lsy9;->b:Lfva;

    invoke-interface {v1, v0}, Lfva;->b(Lcom/google/android/exoplayer2/k;)V

    iput-boolean v2, p0, Lsy9;->m:Z

    :cond_1
    iget-object v0, p0, Lsy9;->j:Lsy9$b;

    iget-object v0, v0, Lsy9$b;->b:Lde7;

    const/4 v11, 0x0

    if-eqz v0, :cond_2

    iput-object v0, p0, Lsy9;->d:Lde7;

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Lpk3;->getLength()J

    move-result-wide v0

    const-wide/16 v3, -0x1

    cmp-long v0, v0, v3

    if-nez v0, :cond_3

    new-instance v0, Lsy9$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lsy9$c;-><init>(Lsy9$a;)V

    iput-object v0, p0, Lsy9;->d:Lde7;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lsy9;->a:Lbe7;

    invoke-virtual {v0}, Lbe7;->b()Lce7;

    move-result-object v0

    iget v1, v0, Lce7;->b:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    move v10, v2

    goto :goto_0

    :cond_4
    move v10, v11

    :goto_0
    new-instance v12, Lc32;

    iget-wide v2, p0, Lsy9;->f:J

    invoke-interface {p1}, Lpk3;->getLength()J

    move-result-wide v4

    iget v1, v0, Lce7;->h:I

    iget v6, v0, Lce7;->i:I

    add-int/2addr v1, v6

    int-to-long v6, v1

    iget-wide v8, v0, Lce7;->c:J

    move-object v0, v12

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lc32;-><init>(Lsy9;JJJJZ)V

    iput-object v12, p0, Lsy9;->d:Lde7;

    :goto_1
    const/4 v0, 0x2

    iput v0, p0, Lsy9;->h:I

    iget-object v0, p0, Lsy9;->a:Lbe7;

    invoke-virtual {v0}, Lbe7;->f()V

    return v11
.end method

.method public final k(Lpk3;Lid8;)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lsy9;->d:Lde7;

    invoke-interface {v2, v1}, Lde7;->a(Lpk3;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    const/4 v7, 0x1

    if-ltz v6, :cond_0

    move-object/from16 v6, p2

    iput-wide v2, v6, Lid8;->a:J

    return v7

    :cond_0
    const-wide/16 v8, -0x1

    cmp-long v6, v2, v8

    if-gez v6, :cond_1

    const-wide/16 v10, 0x2

    add-long/2addr v2, v10

    neg-long v2, v2

    invoke-virtual {v0, v2, v3}, Lsy9;->e(J)V

    :cond_1
    iget-boolean v2, v0, Lsy9;->l:Z

    if-nez v2, :cond_2

    iget-object v2, v0, Lsy9;->d:Lde7;

    invoke-interface {v2}, Lde7;->createSeekMap()Lja9;

    move-result-object v2

    invoke-static {v2}, Lzi;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lja9;

    iget-object v3, v0, Lsy9;->c:Lqk3;

    invoke-interface {v3, v2}, Lqk3;->d(Lja9;)V

    iput-boolean v7, v0, Lsy9;->l:Z

    :cond_2
    iget-wide v2, v0, Lsy9;->k:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_4

    iget-object v2, v0, Lsy9;->a:Lbe7;

    invoke-virtual {v2, v1}, Lbe7;->d(Lpk3;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    iput v1, v0, Lsy9;->h:I

    const/4 v0, -0x1

    return v0

    :cond_4
    :goto_0
    iput-wide v4, v0, Lsy9;->k:J

    iget-object v1, v0, Lsy9;->a:Lbe7;

    invoke-virtual {v1}, Lbe7;->c()Lqw7;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsy9;->f(Lqw7;)J

    move-result-wide v2

    cmp-long v4, v2, v4

    if-ltz v4, :cond_5

    iget-wide v4, v0, Lsy9;->g:J

    add-long v6, v4, v2

    iget-wide v10, v0, Lsy9;->e:J

    cmp-long v6, v6, v10

    if-ltz v6, :cond_5

    invoke-virtual {v0, v4, v5}, Lsy9;->b(J)J

    move-result-wide v11

    iget-object v4, v0, Lsy9;->b:Lfva;

    invoke-virtual {v1}, Lqw7;->f()I

    move-result v5

    invoke-interface {v4, v1, v5}, Lfva;->d(Lqw7;I)V

    iget-object v10, v0, Lsy9;->b:Lfva;

    invoke-virtual {v1}, Lqw7;->f()I

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v13, 0x1

    invoke-interface/range {v10 .. v16}, Lfva;->e(JIIILfva$a;)V

    iput-wide v8, v0, Lsy9;->e:J

    :cond_5
    iget-wide v4, v0, Lsy9;->g:J

    add-long/2addr v4, v2

    iput-wide v4, v0, Lsy9;->g:J

    const/4 v0, 0x0

    return v0
.end method

.method public l(Z)V
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    new-instance p1, Lsy9$b;

    invoke-direct {p1}, Lsy9$b;-><init>()V

    iput-object p1, p0, Lsy9;->j:Lsy9$b;

    iput-wide v0, p0, Lsy9;->f:J

    const/4 p1, 0x0

    iput p1, p0, Lsy9;->h:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput p1, p0, Lsy9;->h:I

    :goto_0
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lsy9;->e:J

    iput-wide v0, p0, Lsy9;->g:J

    return-void
.end method

.method public final m(JJ)V
    .locals 2

    iget-object v0, p0, Lsy9;->a:Lbe7;

    invoke-virtual {v0}, Lbe7;->e()V

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lsy9;->l:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lsy9;->l(Z)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lsy9;->h:I

    if-eqz p1, :cond_1

    invoke-virtual {p0, p3, p4}, Lsy9;->c(J)J

    move-result-wide p1

    iput-wide p1, p0, Lsy9;->e:J

    iget-object p1, p0, Lsy9;->d:Lde7;

    invoke-static {p1}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lde7;

    iget-wide p2, p0, Lsy9;->e:J

    invoke-interface {p1, p2, p3}, Lde7;->startSeek(J)V

    const/4 p1, 0x2

    iput p1, p0, Lsy9;->h:I

    :cond_1
    :goto_0
    return-void
.end method
