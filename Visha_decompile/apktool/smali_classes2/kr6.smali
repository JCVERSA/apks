.class public final Lkr6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnk3;


# static fields
.field public static final u:Luk3;

.field public static final v:Llx4$a;


# instance fields
.field public final a:I

.field public final b:J

.field public final c:Lqw7;

.field public final d:Lur6$a;

.field public final e:Led4;

.field public final f:Lmx4;

.field public final g:Lfva;

.field public h:Lqk3;

.field public i:Lfva;

.field public j:Lfva;

.field public k:I

.field public l:Lcom/google/android/exoplayer2/metadata/Metadata;

.field public m:J

.field public n:J

.field public o:J

.field public p:I

.field public q:Lma9;

.field public r:Z

.field public s:Z

.field public t:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgr6;

    invoke-direct {v0}, Lgr6;-><init>()V

    sput-object v0, Lkr6;->u:Luk3;

    new-instance v0, Lir6;

    invoke-direct {v0}, Lir6;-><init>()V

    sput-object v0, Lkr6;->v:Llx4$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lkr6;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    invoke-direct {p0, p1, v0, v1}, Lkr6;-><init>(IJ)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    or-int/lit8 p1, p1, 0x1

    .line 4
    :cond_0
    iput p1, p0, Lkr6;->a:I

    .line 5
    iput-wide p2, p0, Lkr6;->b:J

    .line 6
    new-instance p1, Lqw7;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Lqw7;-><init>(I)V

    iput-object p1, p0, Lkr6;->c:Lqw7;

    .line 7
    new-instance p1, Lur6$a;

    invoke-direct {p1}, Lur6$a;-><init>()V

    iput-object p1, p0, Lkr6;->d:Lur6$a;

    .line 8
    new-instance p1, Led4;

    invoke-direct {p1}, Led4;-><init>()V

    iput-object p1, p0, Lkr6;->e:Led4;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    iput-wide p1, p0, Lkr6;->m:J

    .line 10
    new-instance p1, Lmx4;

    invoke-direct {p1}, Lmx4;-><init>()V

    iput-object p1, p0, Lkr6;->f:Lmx4;

    .line 11
    new-instance p1, Ls33;

    invoke-direct {p1}, Ls33;-><init>()V

    iput-object p1, p0, Lkr6;->g:Lfva;

    .line 12
    iput-object p1, p0, Lkr6;->j:Lfva;

    return-void
.end method

.method public static synthetic d()[Lnk3;
    .locals 1

    invoke-static {}, Lkr6;->n()[Lnk3;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic e(IIIII)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lkr6;->o(IIIII)Z

    move-result p0

    return p0
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lkr6;->i:Lfva;

    invoke-static {v0}, Lzi;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lkr6;->h:Lqk3;

    invoke-static {p0}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static k(Lcom/google/android/exoplayer2/metadata/Metadata;)J
    .locals 5

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    iget-object v3, v2, Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;->id:Ljava/lang/String;

    const-string v4, "TLEN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object p0, v2, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;->value:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lblb;->t0(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public static l(Lqw7;I)I
    .locals 2

    invoke-virtual {p0}, Lqw7;->f()I

    move-result v0

    add-int/lit8 v1, p1, 0x4

    if-lt v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lqw7;->O(I)V

    invoke-virtual {p0}, Lqw7;->n()I

    move-result p1

    const v0, 0x58696e67

    if-eq p1, v0, :cond_0

    const v0, 0x496e666f

    if-ne p1, v0, :cond_1

    :cond_0
    return p1

    :cond_1
    invoke-virtual {p0}, Lqw7;->f()I

    move-result p1

    const/16 v0, 0x28

    if-lt p1, v0, :cond_2

    const/16 p1, 0x24

    invoke-virtual {p0, p1}, Lqw7;->O(I)V

    invoke-virtual {p0}, Lqw7;->n()I

    move-result p0

    const p1, 0x56425249

    if-ne p0, p1, :cond_2

    return p1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static m(IJ)Z
    .locals 4

    const v0, -0x1f400

    and-int/2addr p0, v0

    int-to-long v0, p0

    const-wide/32 v2, -0x1f400

    and-long p0, p1, v2

    cmp-long p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic n()[Lnk3;
    .locals 3

    new-instance v0, Lkr6;

    invoke-direct {v0}, Lkr6;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lnk3;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method public static synthetic o(IIIII)Z
    .locals 3

    const/16 v0, 0x43

    const/4 v1, 0x2

    const/16 v2, 0x4d

    if-ne p1, v0, :cond_0

    const/16 v0, 0x4f

    if-ne p2, v0, :cond_0

    if-ne p3, v2, :cond_0

    if-eq p4, v2, :cond_1

    if-eq p0, v1, :cond_1

    :cond_0
    if-ne p1, v2, :cond_2

    const/16 p1, 0x4c

    if-ne p2, p1, :cond_2

    if-ne p3, p1, :cond_2

    const/16 p1, 0x54

    if-eq p4, p1, :cond_1

    if-ne p0, v1, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static p(Lcom/google/android/exoplayer2/metadata/Metadata;J)Lbq6;
    .locals 4

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/exoplayer2/metadata/id3/MlltFrame;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/google/android/exoplayer2/metadata/id3/MlltFrame;

    invoke-static {p0}, Lkr6;->k(Lcom/google/android/exoplayer2/metadata/Metadata;)J

    move-result-wide v0

    invoke-static {p1, p2, v2, v0, v1}, Lbq6;->a(JLcom/google/android/exoplayer2/metadata/id3/MlltFrame;J)Lbq6;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private t(Lpk3;)I
    .locals 11

    iget v0, p0, Lkr6;->p:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v0, :cond_4

    invoke-interface {p1}, Lpk3;->resetPeekPosition()V

    invoke-virtual {p0, p1}, Lkr6;->r(Lpk3;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lkr6;->c:Lqw7;

    invoke-virtual {v0, v3}, Lqw7;->O(I)V

    iget-object v0, p0, Lkr6;->c:Lqw7;

    invoke-virtual {v0}, Lqw7;->n()I

    move-result v0

    iget v4, p0, Lkr6;->k:I

    int-to-long v4, v4

    invoke-static {v0, v4, v5}, Lkr6;->m(IJ)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v0}, Lur6;->j(I)I

    move-result v4

    if-ne v4, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lkr6;->d:Lur6$a;

    invoke-virtual {v4, v0}, Lur6$a;->a(I)Z

    iget-wide v4, p0, Lkr6;->m:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    iget-object v0, p0, Lkr6;->q:Lma9;

    invoke-interface {p1}, Lpk3;->getPosition()J

    move-result-wide v4

    invoke-interface {v0, v4, v5}, Lma9;->getTimeUs(J)J

    move-result-wide v4

    iput-wide v4, p0, Lkr6;->m:J

    iget-wide v4, p0, Lkr6;->b:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkr6;->q:Lma9;

    const-wide/16 v4, 0x0

    invoke-interface {v0, v4, v5}, Lma9;->getTimeUs(J)J

    move-result-wide v4

    iget-wide v6, p0, Lkr6;->m:J

    iget-wide v8, p0, Lkr6;->b:J

    sub-long/2addr v8, v4

    add-long/2addr v6, v8

    iput-wide v6, p0, Lkr6;->m:J

    :cond_2
    iget-object v0, p0, Lkr6;->d:Lur6$a;

    iget v4, v0, Lur6$a;->c:I

    iput v4, p0, Lkr6;->p:I

    iget-object v4, p0, Lkr6;->q:Lma9;

    instance-of v5, v4, Lkz4;

    if-eqz v5, :cond_4

    check-cast v4, Lkz4;

    iget-wide v5, p0, Lkr6;->n:J

    iget v0, v0, Lur6$a;->g:I

    int-to-long v7, v0

    add-long/2addr v5, v7

    invoke-virtual {p0, v5, v6}, Lkr6;->h(J)J

    move-result-wide v5

    invoke-interface {p1}, Lpk3;->getPosition()J

    move-result-wide v7

    iget-object v0, p0, Lkr6;->d:Lur6$a;

    iget v0, v0, Lur6$a;->c:I

    int-to-long v9, v0

    add-long/2addr v7, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Lkz4;->b(JJ)V

    iget-boolean v0, p0, Lkr6;->s:Z

    if-eqz v0, :cond_4

    iget-wide v5, p0, Lkr6;->t:J

    invoke-virtual {v4, v5, v6}, Lkz4;->a(J)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v3, p0, Lkr6;->s:Z

    iget-object v0, p0, Lkr6;->i:Lfva;

    iput-object v0, p0, Lkr6;->j:Lfva;

    goto :goto_1

    :cond_3
    :goto_0
    invoke-interface {p1, v1}, Lpk3;->skipFully(I)V

    iput v3, p0, Lkr6;->k:I

    return v3

    :cond_4
    :goto_1
    iget-object v0, p0, Lkr6;->j:Lfva;

    iget v4, p0, Lkr6;->p:I

    invoke-interface {v0, p1, v4, v1}, Lfva;->c(Lms1;IZ)I

    move-result p1

    if-ne p1, v2, :cond_5

    return v2

    :cond_5
    iget v0, p0, Lkr6;->p:I

    sub-int/2addr v0, p1

    iput v0, p0, Lkr6;->p:I

    if-lez v0, :cond_6

    return v3

    :cond_6
    iget-object v4, p0, Lkr6;->j:Lfva;

    iget-wide v0, p0, Lkr6;->n:J

    invoke-virtual {p0, v0, v1}, Lkr6;->h(J)J

    move-result-wide v5

    iget-object p1, p0, Lkr6;->d:Lur6$a;

    iget v8, p1, Lur6$a;->c:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    invoke-interface/range {v4 .. v10}, Lfva;->e(JIIILfva$a;)V

    iget-wide v0, p0, Lkr6;->n:J

    iget-object p1, p0, Lkr6;->d:Lur6$a;

    iget p1, p1, Lur6$a;->g:I

    int-to-long v4, p1

    add-long/2addr v0, v4

    iput-wide v0, p0, Lkr6;->n:J

    iput v3, p0, Lkr6;->p:I

    return v3
.end method


# virtual methods
.method public a(Lqk3;)V
    .locals 2

    iput-object p1, p0, Lkr6;->h:Lqk3;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lqk3;->track(II)Lfva;

    move-result-object p1

    iput-object p1, p0, Lkr6;->i:Lfva;

    iput-object p1, p0, Lkr6;->j:Lfva;

    iget-object p0, p0, Lkr6;->h:Lqk3;

    invoke-interface {p0}, Lqk3;->endTracks()V

    return-void
.end method

.method public b(Lpk3;Lid8;)I
    .locals 4

    invoke-direct {p0}, Lkr6;->f()V

    invoke-virtual {p0, p1}, Lkr6;->s(Lpk3;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    iget-object p2, p0, Lkr6;->q:Lma9;

    instance-of p2, p2, Lkz4;

    if-eqz p2, :cond_0

    iget-wide v0, p0, Lkr6;->n:J

    invoke-virtual {p0, v0, v1}, Lkr6;->h(J)J

    move-result-wide v0

    iget-object p2, p0, Lkr6;->q:Lma9;

    invoke-interface {p2}, Lja9;->getDurationUs()J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lkr6;->q:Lma9;

    check-cast p2, Lkz4;

    invoke-virtual {p2, v0, v1}, Lkz4;->c(J)V

    iget-object p2, p0, Lkr6;->h:Lqk3;

    iget-object p0, p0, Lkr6;->q:Lma9;

    invoke-interface {p2, p0}, Lqk3;->d(Lja9;)V

    :cond_0
    return p1
.end method

.method public c(Lpk3;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lkr6;->u(Lpk3;Z)Z

    move-result p0

    return p0
.end method

.method public final g(Lpk3;)Lma9;
    .locals 11

    invoke-virtual {p0, p1}, Lkr6;->q(Lpk3;)Lma9;

    move-result-object v0

    iget-object v1, p0, Lkr6;->l:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-interface {p1}, Lpk3;->getPosition()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lkr6;->p(Lcom/google/android/exoplayer2/metadata/Metadata;J)Lbq6;

    move-result-object v1

    iget-boolean v2, p0, Lkr6;->r:Z

    if-eqz v2, :cond_0

    new-instance p0, Lma9$a;

    invoke-direct {p0}, Lma9$a;-><init>()V

    return-object p0

    :cond_0
    iget v2, p0, Lkr6;->a:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lja9;->getDurationUs()J

    move-result-wide v2

    invoke-interface {v1}, Lma9;->getDataEndPosition()J

    move-result-wide v0

    :goto_0
    move-wide v9, v0

    move-wide v5, v2

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lja9;->getDurationUs()J

    move-result-wide v2

    invoke-interface {v0}, Lma9;->getDataEndPosition()J

    move-result-wide v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lkr6;->l:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-static {v0}, Lkr6;->k(Lcom/google/android/exoplayer2/metadata/Metadata;)J

    move-result-wide v2

    const-wide/16 v0, -0x1

    goto :goto_0

    :goto_1
    new-instance v0, Lkz4;

    invoke-interface {p1}, Lpk3;->getPosition()J

    move-result-wide v7

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lkz4;-><init>(JJJ)V

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    move-object v0, v1

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    const/4 v1, 0x1

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lja9;->isSeekable()Z

    move-result v2

    if-nez v2, :cond_8

    iget v2, p0, Lkr6;->a:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_8

    :cond_6
    iget v0, p0, Lkr6;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p0, p1, v1}, Lkr6;->j(Lpk3;Z)Lma9;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public final h(J)J
    .locals 4

    iget-wide v0, p0, Lkr6;->m:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr p1, v2

    iget-object p0, p0, Lkr6;->d:Lur6$a;

    iget p0, p0, Lur6$a;->d:I

    int-to-long v2, p0

    div-long/2addr p1, v2

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkr6;->r:Z

    return-void
.end method

.method public final j(Lpk3;Z)Lma9;
    .locals 9

    iget-object v0, p0, Lkr6;->c:Lqw7;

    invoke-virtual {v0}, Lqw7;->d()[B

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lpk3;->peekFully([BII)V

    iget-object v0, p0, Lkr6;->c:Lqw7;

    invoke-virtual {v0, v2}, Lqw7;->O(I)V

    iget-object v0, p0, Lkr6;->d:Lur6$a;

    iget-object v1, p0, Lkr6;->c:Lqw7;

    invoke-virtual {v1}, Lqw7;->n()I

    move-result v1

    invoke-virtual {v0, v1}, Lur6$a;->a(I)Z

    new-instance v0, Lmf1;

    invoke-interface {p1}, Lpk3;->getLength()J

    move-result-wide v3

    invoke-interface {p1}, Lpk3;->getPosition()J

    move-result-wide v5

    iget-object v7, p0, Lkr6;->d:Lur6$a;

    move-object v2, v0

    move v8, p2

    invoke-direct/range {v2 .. v8}, Lmf1;-><init>(JJLur6$a;Z)V

    return-object v0
.end method

.method public final q(Lpk3;)Lma9;
    .locals 10

    new-instance v5, Lqw7;

    iget-object v0, p0, Lkr6;->d:Lur6$a;

    iget v0, v0, Lur6$a;->c:I

    invoke-direct {v5, v0}, Lqw7;-><init>(I)V

    invoke-virtual {v5}, Lqw7;->d()[B

    move-result-object v0

    iget-object v1, p0, Lkr6;->d:Lur6$a;

    iget v1, v1, Lur6$a;->c:I

    const/4 v6, 0x0

    invoke-interface {p1, v0, v6, v1}, Lpk3;->peekFully([BII)V

    iget-object v0, p0, Lkr6;->d:Lur6$a;

    iget v1, v0, Lur6$a;->a:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/16 v3, 0x15

    if-eqz v1, :cond_1

    iget v0, v0, Lur6$a;->e:I

    if-eq v0, v2, :cond_0

    const/16 v3, 0x24

    :cond_0
    :goto_0
    move v7, v3

    goto :goto_1

    :cond_1
    iget v0, v0, Lur6$a;->e:I

    if-eq v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/16 v3, 0xd

    goto :goto_0

    :goto_1
    invoke-static {v5, v7}, Lkr6;->l(Lqw7;I)I

    move-result v8

    const v0, 0x58696e67

    const v9, 0x496e666f

    if-eq v8, v0, :cond_5

    if-ne v8, v9, :cond_3

    goto :goto_2

    :cond_3
    const v0, 0x56425249

    if-ne v8, v0, :cond_4

    invoke-interface {p1}, Lpk3;->getLength()J

    move-result-wide v0

    invoke-interface {p1}, Lpk3;->getPosition()J

    move-result-wide v2

    iget-object v4, p0, Lkr6;->d:Lur6$a;

    invoke-static/range {v0 .. v5}, Lhob;->a(JJLur6$a;Lqw7;)Lhob;

    move-result-object v0

    iget-object p0, p0, Lkr6;->d:Lur6$a;

    iget p0, p0, Lur6$a;->c:I

    invoke-interface {p1, p0}, Lpk3;->skipFully(I)V

    goto :goto_3

    :cond_4
    invoke-interface {p1}, Lpk3;->resetPeekPosition()V

    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    invoke-interface {p1}, Lpk3;->getLength()J

    move-result-wide v0

    invoke-interface {p1}, Lpk3;->getPosition()J

    move-result-wide v2

    iget-object v4, p0, Lkr6;->d:Lur6$a;

    invoke-static/range {v0 .. v5}, Lvrc;->a(JJLur6$a;Lqw7;)Lvrc;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lkr6;->e:Led4;

    invoke-virtual {v1}, Led4;->a()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {p1}, Lpk3;->resetPeekPosition()V

    add-int/lit16 v7, v7, 0x8d

    invoke-interface {p1, v7}, Lpk3;->advancePeekPosition(I)V

    iget-object v1, p0, Lkr6;->c:Lqw7;

    invoke-virtual {v1}, Lqw7;->d()[B

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {p1, v1, v6, v2}, Lpk3;->peekFully([BII)V

    iget-object v1, p0, Lkr6;->c:Lqw7;

    invoke-virtual {v1, v6}, Lqw7;->O(I)V

    iget-object v1, p0, Lkr6;->e:Led4;

    iget-object v2, p0, Lkr6;->c:Lqw7;

    invoke-virtual {v2}, Lqw7;->F()I

    move-result v2

    invoke-virtual {v1, v2}, Led4;->d(I)Z

    :cond_6
    iget-object v1, p0, Lkr6;->d:Lur6$a;

    iget v1, v1, Lur6$a;->c:I

    invoke-interface {p1, v1}, Lpk3;->skipFully(I)V

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lja9;->isSeekable()Z

    move-result v1

    if-nez v1, :cond_7

    if-ne v8, v9, :cond_7

    invoke-virtual {p0, p1, v6}, Lkr6;->j(Lpk3;Z)Lma9;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_3
    return-object v0
.end method

.method public final r(Lpk3;)Z
    .locals 8

    iget-object v0, p0, Lkr6;->q:Lma9;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lma9;->getDataEndPosition()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lpk3;->getPeekPosition()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    sub-long/2addr v2, v6

    cmp-long v0, v4, v2

    if-lez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lkr6;->c:Lqw7;

    invoke-virtual {p0}, Lqw7;->d()[B

    move-result-object p0

    const/4 v0, 0x0

    const/4 v2, 0x4

    invoke-interface {p1, p0, v0, v2, v1}, Lpk3;->peekFully([BIIZ)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p0, v1

    return p0

    :catch_0
    return v1
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public final s(Lpk3;)I
    .locals 5

    iget v0, p0, Lkr6;->k:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lkr6;->u(Lpk3;Z)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, -0x1

    return p0

    :cond_0
    :goto_0
    iget-object v0, p0, Lkr6;->q:Lma9;

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lkr6;->g(Lpk3;)Lma9;

    move-result-object v0

    iput-object v0, p0, Lkr6;->q:Lma9;

    iget-object v1, p0, Lkr6;->h:Lqk3;

    invoke-interface {v1, v0}, Lqk3;->d(Lja9;)V

    iget-object v0, p0, Lkr6;->j:Lfva;

    new-instance v1, Lcom/google/android/exoplayer2/k$b;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/k$b;-><init>()V

    iget-object v2, p0, Lkr6;->d:Lur6$a;

    iget-object v2, v2, Lur6$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/k$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/k$b;

    move-result-object v1

    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/k$b;->W(I)Lcom/google/android/exoplayer2/k$b;

    move-result-object v1

    iget-object v2, p0, Lkr6;->d:Lur6$a;

    iget v2, v2, Lur6$a;->e:I

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/k$b;->H(I)Lcom/google/android/exoplayer2/k$b;

    move-result-object v1

    iget-object v2, p0, Lkr6;->d:Lur6$a;

    iget v2, v2, Lur6$a;->d:I

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/k$b;->f0(I)Lcom/google/android/exoplayer2/k$b;

    move-result-object v1

    iget-object v2, p0, Lkr6;->e:Led4;

    iget v2, v2, Led4;->a:I

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/k$b;->N(I)Lcom/google/android/exoplayer2/k$b;

    move-result-object v1

    iget-object v2, p0, Lkr6;->e:Led4;

    iget v2, v2, Led4;->b:I

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/k$b;->O(I)Lcom/google/android/exoplayer2/k$b;

    move-result-object v1

    iget v2, p0, Lkr6;->a:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lkr6;->l:Lcom/google/android/exoplayer2/metadata/Metadata;

    :goto_1
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/k$b;->X(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/k$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/k$b;->E()Lcom/google/android/exoplayer2/k;

    move-result-object v1

    invoke-interface {v0, v1}, Lfva;->b(Lcom/google/android/exoplayer2/k;)V

    invoke-interface {p1}, Lpk3;->getPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lkr6;->o:J

    goto :goto_2

    :cond_2
    iget-wide v0, p0, Lkr6;->o:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lpk3;->getPosition()J

    move-result-wide v0

    iget-wide v2, p0, Lkr6;->o:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_3

    sub-long/2addr v2, v0

    long-to-int v0, v2

    invoke-interface {p1, v0}, Lpk3;->skipFully(I)V

    :cond_3
    :goto_2
    invoke-direct {p0, p1}, Lkr6;->t(Lpk3;)I

    move-result p0

    return p0
.end method

.method public seek(JJ)V
    .locals 2

    const/4 p1, 0x0

    iput p1, p0, Lkr6;->k:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lkr6;->m:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lkr6;->n:J

    iput p1, p0, Lkr6;->p:I

    iput-wide p3, p0, Lkr6;->t:J

    iget-object p1, p0, Lkr6;->q:Lma9;

    instance-of p2, p1, Lkz4;

    if-eqz p2, :cond_0

    check-cast p1, Lkz4;

    invoke-virtual {p1, p3, p4}, Lkz4;->a(J)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lkr6;->s:Z

    iget-object p1, p0, Lkr6;->g:Lfva;

    iput-object p1, p0, Lkr6;->j:Lfva;

    :cond_0
    return-void
.end method

.method public final u(Lpk3;Z)Z
    .locals 11

    if-eqz p2, :cond_0

    const v0, 0x8000

    goto :goto_0

    :cond_0
    const/high16 v0, 0x20000

    :goto_0
    invoke-interface {p1}, Lpk3;->resetPeekPosition()V

    invoke-interface {p1}, Lpk3;->getPosition()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_4

    iget v1, p0, Lkr6;->a:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    sget-object v1, Lkr6;->v:Llx4$a;

    :goto_1
    iget-object v4, p0, Lkr6;->f:Lmx4;

    invoke-virtual {v4, p1, v1}, Lmx4;->a(Lpk3;Llx4$a;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v1

    iput-object v1, p0, Lkr6;->l:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-eqz v1, :cond_2

    iget-object v4, p0, Lkr6;->e:Led4;

    invoke-virtual {v4, v1}, Led4;->c(Lcom/google/android/exoplayer2/metadata/Metadata;)Z

    :cond_2
    invoke-interface {p1}, Lpk3;->getPeekPosition()J

    move-result-wide v4

    long-to-int v1, v4

    if-nez p2, :cond_3

    invoke-interface {p1, v1}, Lpk3;->skipFully(I)V

    :cond_3
    move v4, v3

    :goto_2
    move v5, v4

    move v6, v5

    goto :goto_3

    :cond_4
    move v1, v3

    move v4, v1

    goto :goto_2

    :goto_3
    invoke-virtual {p0, p1}, Lkr6;->r(Lpk3;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_6

    if-lez v5, :cond_5

    goto :goto_5

    :cond_5
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_6
    iget-object v7, p0, Lkr6;->c:Lqw7;

    invoke-virtual {v7, v3}, Lqw7;->O(I)V

    iget-object v7, p0, Lkr6;->c:Lqw7;

    invoke-virtual {v7}, Lqw7;->n()I

    move-result v7

    if-eqz v4, :cond_7

    int-to-long v9, v4

    invoke-static {v7, v9, v10}, Lkr6;->m(IJ)Z

    move-result v9

    if-eqz v9, :cond_8

    :cond_7
    invoke-static {v7}, Lur6;->j(I)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_c

    :cond_8
    add-int/lit8 v4, v6, 0x1

    if-ne v6, v0, :cond_a

    if-eqz p2, :cond_9

    return v3

    :cond_9
    const-string p0, "Searched too many bytes."

    invoke-static {p0, v2}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    :cond_a
    if-eqz p2, :cond_b

    invoke-interface {p1}, Lpk3;->resetPeekPosition()V

    add-int v5, v1, v4

    invoke-interface {p1, v5}, Lpk3;->advancePeekPosition(I)V

    goto :goto_4

    :cond_b
    invoke-interface {p1, v8}, Lpk3;->skipFully(I)V

    :goto_4
    move v5, v3

    move v6, v4

    move v4, v5

    goto :goto_3

    :cond_c
    add-int/lit8 v5, v5, 0x1

    if-ne v5, v8, :cond_d

    iget-object v4, p0, Lkr6;->d:Lur6$a;

    invoke-virtual {v4, v7}, Lur6$a;->a(I)Z

    move v4, v7

    goto :goto_7

    :cond_d
    const/4 v7, 0x4

    if-ne v5, v7, :cond_f

    :goto_5
    if-eqz p2, :cond_e

    add-int/2addr v1, v6

    invoke-interface {p1, v1}, Lpk3;->skipFully(I)V

    goto :goto_6

    :cond_e
    invoke-interface {p1}, Lpk3;->resetPeekPosition()V

    :goto_6
    iput v4, p0, Lkr6;->k:I

    return v8

    :cond_f
    :goto_7
    add-int/lit8 v9, v9, -0x4

    invoke-interface {p1, v9}, Lpk3;->advancePeekPosition(I)V

    goto :goto_3
.end method
