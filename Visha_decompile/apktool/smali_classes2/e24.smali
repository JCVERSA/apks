.class public final Le24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnk3;


# static fields
.field public static final q:Luk3;


# instance fields
.field public final a:Lqw7;

.field public final b:Lqw7;

.field public final c:Lqw7;

.field public final d:Lqw7;

.field public final e:Lg39;

.field public f:Lqk3;

.field public g:I

.field public h:Z

.field public i:J

.field public j:I

.field public k:I

.field public l:I

.field public m:J

.field public n:Z

.field public o:Lcom/google/android/exoplayer2/extractor/flv/a;

.field public p:Lcom/google/android/exoplayer2/extractor/flv/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc24;

    invoke-direct {v0}, Lc24;-><init>()V

    sput-object v0, Le24;->q:Luk3;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lqw7;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lqw7;-><init>(I)V

    iput-object v0, p0, Le24;->a:Lqw7;

    new-instance v0, Lqw7;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lqw7;-><init>(I)V

    iput-object v0, p0, Le24;->b:Lqw7;

    new-instance v0, Lqw7;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lqw7;-><init>(I)V

    iput-object v0, p0, Le24;->c:Lqw7;

    new-instance v0, Lqw7;

    invoke-direct {v0}, Lqw7;-><init>()V

    iput-object v0, p0, Le24;->d:Lqw7;

    new-instance v0, Lg39;

    invoke-direct {v0}, Lg39;-><init>()V

    iput-object v0, p0, Le24;->e:Lg39;

    const/4 v0, 0x1

    iput v0, p0, Le24;->g:I

    return-void
.end method

.method public static synthetic d()[Lnk3;
    .locals 1

    invoke-static {}, Le24;->g()[Lnk3;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic g()[Lnk3;
    .locals 3

    new-instance v0, Le24;

    invoke-direct {v0}, Le24;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lnk3;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method


# virtual methods
.method public a(Lqk3;)V
    .locals 0

    iput-object p1, p0, Le24;->f:Lqk3;

    return-void
.end method

.method public b(Lpk3;Lid8;)I
    .locals 2

    iget-object p2, p0, Le24;->f:Lqk3;

    invoke-static {p2}, Lzi;->i(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    iget p2, p0, Le24;->g:I

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    invoke-virtual {p0, p1}, Le24;->j(Lpk3;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    invoke-virtual {p0, p1}, Le24;->k(Lpk3;)Z

    move-result p2

    if-nez p2, :cond_0

    return v1

    :cond_3
    invoke-virtual {p0, p1}, Le24;->l(Lpk3;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Le24;->i(Lpk3;)Z

    move-result p2

    if-nez p2, :cond_0

    return v1
.end method

.method public c(Lpk3;)Z
    .locals 3

    iget-object v0, p0, Le24;->a:Lqw7;

    invoke-virtual {v0}, Lqw7;->d()[B

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lpk3;->peekFully([BII)V

    iget-object v0, p0, Le24;->a:Lqw7;

    invoke-virtual {v0, v2}, Lqw7;->O(I)V

    iget-object v0, p0, Le24;->a:Lqw7;

    invoke-virtual {v0}, Lqw7;->F()I

    move-result v0

    const v1, 0x464c56

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Le24;->a:Lqw7;

    invoke-virtual {v0}, Lqw7;->d()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v2, v1}, Lpk3;->peekFully([BII)V

    iget-object v0, p0, Le24;->a:Lqw7;

    invoke-virtual {v0, v2}, Lqw7;->O(I)V

    iget-object v0, p0, Le24;->a:Lqw7;

    invoke-virtual {v0}, Lqw7;->I()I

    move-result v0

    and-int/lit16 v0, v0, 0xfa

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Le24;->a:Lqw7;

    invoke-virtual {v0}, Lqw7;->d()[B

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {p1, v0, v2, v1}, Lpk3;->peekFully([BII)V

    iget-object v0, p0, Le24;->a:Lqw7;

    invoke-virtual {v0, v2}, Lqw7;->O(I)V

    iget-object v0, p0, Le24;->a:Lqw7;

    invoke-virtual {v0}, Lqw7;->n()I

    move-result v0

    invoke-interface {p1}, Lpk3;->resetPeekPosition()V

    invoke-interface {p1, v0}, Lpk3;->advancePeekPosition(I)V

    iget-object v0, p0, Le24;->a:Lqw7;

    invoke-virtual {v0}, Lqw7;->d()[B

    move-result-object v0

    invoke-interface {p1, v0, v2, v1}, Lpk3;->peekFully([BII)V

    iget-object p1, p0, Le24;->a:Lqw7;

    invoke-virtual {p1, v2}, Lqw7;->O(I)V

    iget-object p0, p0, Le24;->a:Lqw7;

    invoke-virtual {p0}, Lqw7;->n()I

    move-result p0

    if-nez p0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public final e()V
    .locals 4

    iget-boolean v0, p0, Le24;->n:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Le24;->f:Lqk3;

    new-instance v1, Lja9$b;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v2, v3}, Lja9$b;-><init>(J)V

    invoke-interface {v0, v1}, Lqk3;->d(Lja9;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Le24;->n:Z

    :cond_0
    return-void
.end method

.method public final f()J
    .locals 4

    iget-boolean v0, p0, Le24;->h:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Le24;->i:J

    iget-wide v2, p0, Le24;->m:J

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le24;->e:Lg39;

    invoke-virtual {v0}, Lg39;->d()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Le24;->m:J

    :goto_0
    return-wide v0
.end method

.method public final h(Lpk3;)Lqw7;
    .locals 4

    iget v0, p0, Le24;->l:I

    iget-object v1, p0, Le24;->d:Lqw7;

    invoke-virtual {v1}, Lqw7;->b()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    iget-object v0, p0, Le24;->d:Lqw7;

    invoke-virtual {v0}, Lqw7;->b()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iget v3, p0, Le24;->l:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1, v2}, Lqw7;->M([BI)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le24;->d:Lqw7;

    invoke-virtual {v0, v2}, Lqw7;->O(I)V

    :goto_0
    iget-object v0, p0, Le24;->d:Lqw7;

    iget v1, p0, Le24;->l:I

    invoke-virtual {v0, v1}, Lqw7;->N(I)V

    iget-object v0, p0, Le24;->d:Lqw7;

    invoke-virtual {v0}, Lqw7;->d()[B

    move-result-object v0

    iget v1, p0, Le24;->l:I

    invoke-interface {p1, v0, v2, v1}, Lpk3;->readFully([BII)V

    iget-object p0, p0, Le24;->d:Lqw7;

    return-object p0
.end method

.method public final i(Lpk3;)Z
    .locals 5

    iget-object v0, p0, Le24;->b:Lqw7;

    invoke-virtual {v0}, Lqw7;->d()[B

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x9

    const/4 v3, 0x1

    invoke-interface {p1, v0, v1, v2, v3}, Lpk3;->readFully([BIIZ)Z

    move-result p1

    if-nez p1, :cond_0

    return v1

    :cond_0
    iget-object p1, p0, Le24;->b:Lqw7;

    invoke-virtual {p1, v1}, Lqw7;->O(I)V

    iget-object p1, p0, Le24;->b:Lqw7;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lqw7;->P(I)V

    iget-object p1, p0, Le24;->b:Lqw7;

    invoke-virtual {p1}, Lqw7;->C()I

    move-result p1

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    and-int/2addr p1, v3

    if-eqz p1, :cond_2

    move v1, v3

    :cond_2
    if-eqz v0, :cond_3

    iget-object p1, p0, Le24;->o:Lcom/google/android/exoplayer2/extractor/flv/a;

    if-nez p1, :cond_3

    new-instance p1, Lcom/google/android/exoplayer2/extractor/flv/a;

    iget-object v0, p0, Le24;->f:Lqk3;

    const/16 v4, 0x8

    invoke-interface {v0, v4, v3}, Lqk3;->track(II)Lfva;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/flv/a;-><init>(Lfva;)V

    iput-object p1, p0, Le24;->o:Lcom/google/android/exoplayer2/extractor/flv/a;

    :cond_3
    const/4 p1, 0x2

    if-eqz v1, :cond_4

    iget-object v0, p0, Le24;->p:Lcom/google/android/exoplayer2/extractor/flv/b;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/exoplayer2/extractor/flv/b;

    iget-object v1, p0, Le24;->f:Lqk3;

    invoke-interface {v1, v2, p1}, Lqk3;->track(II)Lfva;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/flv/b;-><init>(Lfva;)V

    iput-object v0, p0, Le24;->p:Lcom/google/android/exoplayer2/extractor/flv/b;

    :cond_4
    iget-object v0, p0, Le24;->f:Lqk3;

    invoke-interface {v0}, Lqk3;->endTracks()V

    iget-object v0, p0, Le24;->b:Lqw7;

    invoke-virtual {v0}, Lqw7;->n()I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    iput v0, p0, Le24;->j:I

    iput p1, p0, Le24;->g:I

    return v3
.end method

.method public final j(Lpk3;)Z
    .locals 9

    invoke-virtual {p0}, Le24;->f()J

    move-result-wide v0

    iget v2, p0, Le24;->k:I

    const/16 v3, 0x8

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x1

    if-ne v2, v3, :cond_1

    iget-object v3, p0, Le24;->o:Lcom/google/android/exoplayer2/extractor/flv/a;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Le24;->e()V

    iget-object v2, p0, Le24;->o:Lcom/google/android/exoplayer2/extractor/flv/a;

    invoke-virtual {p0, p1}, Le24;->h(Lpk3;)Lqw7;

    move-result-object p1

    invoke-virtual {v2, p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;->a(Lqw7;J)Z

    move-result p1

    :cond_0
    :goto_0
    move v0, v6

    goto :goto_1

    :cond_1
    const/16 v3, 0x9

    if-ne v2, v3, :cond_2

    iget-object v3, p0, Le24;->p:Lcom/google/android/exoplayer2/extractor/flv/b;

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Le24;->e()V

    iget-object v2, p0, Le24;->p:Lcom/google/android/exoplayer2/extractor/flv/b;

    invoke-virtual {p0, p1}, Le24;->h(Lpk3;)Lqw7;

    move-result-object p1

    invoke-virtual {v2, p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;->a(Lqw7;J)Z

    move-result p1

    goto :goto_0

    :cond_2
    const/16 v3, 0x12

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Le24;->n:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Le24;->e:Lg39;

    invoke-virtual {p0, p1}, Le24;->h(Lpk3;)Lqw7;

    move-result-object p1

    invoke-virtual {v2, p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;->a(Lqw7;J)Z

    move-result p1

    iget-object v0, p0, Le24;->e:Lg39;

    invoke-virtual {v0}, Lg39;->d()J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    iget-object v2, p0, Le24;->f:Lqk3;

    new-instance v3, Ljz4;

    iget-object v7, p0, Le24;->e:Lg39;

    invoke-virtual {v7}, Lg39;->e()[J

    move-result-object v7

    iget-object v8, p0, Le24;->e:Lg39;

    invoke-virtual {v8}, Lg39;->f()[J

    move-result-object v8

    invoke-direct {v3, v7, v8, v0, v1}, Ljz4;-><init>([J[JJ)V

    invoke-interface {v2, v3}, Lqk3;->d(Lja9;)V

    iput-boolean v6, p0, Le24;->n:Z

    goto :goto_0

    :cond_3
    iget v0, p0, Le24;->l:I

    invoke-interface {p1, v0}, Lpk3;->skipFully(I)V

    const/4 p1, 0x0

    move v0, p1

    :goto_1
    iget-boolean v1, p0, Le24;->h:Z

    if-nez v1, :cond_5

    if-eqz p1, :cond_5

    iput-boolean v6, p0, Le24;->h:Z

    iget-object p1, p0, Le24;->e:Lg39;

    invoke-virtual {p1}, Lg39;->d()J

    move-result-wide v1

    cmp-long p1, v1, v4

    if-nez p1, :cond_4

    iget-wide v1, p0, Le24;->m:J

    neg-long v1, v1

    goto :goto_2

    :cond_4
    const-wide/16 v1, 0x0

    :goto_2
    iput-wide v1, p0, Le24;->i:J

    :cond_5
    const/4 p1, 0x4

    iput p1, p0, Le24;->j:I

    const/4 p1, 0x2

    iput p1, p0, Le24;->g:I

    return v0
.end method

.method public final k(Lpk3;)Z
    .locals 6

    iget-object v0, p0, Le24;->c:Lqw7;

    invoke-virtual {v0}, Lqw7;->d()[B

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-interface {p1, v0, v1, v2, v3}, Lpk3;->readFully([BIIZ)Z

    move-result p1

    if-nez p1, :cond_0

    return v1

    :cond_0
    iget-object p1, p0, Le24;->c:Lqw7;

    invoke-virtual {p1, v1}, Lqw7;->O(I)V

    iget-object p1, p0, Le24;->c:Lqw7;

    invoke-virtual {p1}, Lqw7;->C()I

    move-result p1

    iput p1, p0, Le24;->k:I

    iget-object p1, p0, Le24;->c:Lqw7;

    invoke-virtual {p1}, Lqw7;->F()I

    move-result p1

    iput p1, p0, Le24;->l:I

    iget-object p1, p0, Le24;->c:Lqw7;

    invoke-virtual {p1}, Lqw7;->F()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Le24;->m:J

    iget-object p1, p0, Le24;->c:Lqw7;

    invoke-virtual {p1}, Lqw7;->C()I

    move-result p1

    shl-int/lit8 p1, p1, 0x18

    int-to-long v0, p1

    iget-wide v4, p0, Le24;->m:J

    or-long/2addr v0, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    iput-wide v0, p0, Le24;->m:J

    iget-object p1, p0, Le24;->c:Lqw7;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lqw7;->P(I)V

    const/4 p1, 0x4

    iput p1, p0, Le24;->g:I

    return v3
.end method

.method public final l(Lpk3;)V
    .locals 1

    iget v0, p0, Le24;->j:I

    invoke-interface {p1, v0}, Lpk3;->skipFully(I)V

    const/4 p1, 0x0

    iput p1, p0, Le24;->j:I

    const/4 p1, 0x3

    iput p1, p0, Le24;->g:I

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 0

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Le24;->g:I

    iput-boolean p2, p0, Le24;->h:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    iput p1, p0, Le24;->g:I

    :goto_0
    iput p2, p0, Le24;->j:I

    return-void
.end method
