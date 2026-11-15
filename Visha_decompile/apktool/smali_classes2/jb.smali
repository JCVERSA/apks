.class public final Ljb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnk3;


# static fields
.field public static final p:Luk3;

.field public static final q:[I

.field public static final r:[I

.field public static final s:[B

.field public static final t:[B

.field public static final u:I


# instance fields
.field public final a:[B

.field public final b:I

.field public c:Z

.field public d:J

.field public e:I

.field public f:I

.field public g:Z

.field public h:J

.field public i:I

.field public j:I

.field public k:J

.field public l:Lqk3;

.field public m:Lfva;

.field public n:Lja9;

.field public o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lhb;

    invoke-direct {v0}, Lhb;-><init>()V

    sput-object v0, Ljb;->p:Luk3;

    const/16 v0, 0x10

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Ljb;->q:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Ljb;->r:[I

    const-string v1, "#!AMR\n"

    invoke-static {v1}, Lblb;->f0(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Ljb;->s:[B

    const-string v1, "#!AMR-WB\n"

    invoke-static {v1}, Lblb;->f0(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Ljb;->t:[B

    const/16 v1, 0x8

    aget v0, v0, v1

    sput v0, Ljb;->u:I

    return-void

    :array_0
    .array-data 4
        0xd
        0xe
        0x10
        0x12
        0x14
        0x15
        0x1b
        0x20
        0x6
        0x7
        0x6
        0x6
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x12
        0x18
        0x21
        0x25
        0x29
        0x2f
        0x33
        0x3b
        0x3d
        0x6
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Ljb;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    or-int/lit8 p1, p1, 0x1

    .line 3
    :cond_0
    iput p1, p0, Ljb;->b:I

    const/4 p1, 0x1

    .line 4
    new-array p1, p1, [B

    iput-object p1, p0, Ljb;->a:[B

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Ljb;->i:I

    return-void
.end method

.method public static synthetic d()[Lnk3;
    .locals 1

    invoke-static {}, Ljb;->l()[Lnk3;

    move-result-object v0

    return-object v0
.end method

.method public static f(IJ)I
    .locals 4

    int-to-long v0, p0

    const-wide/32 v2, 0x7a1200

    mul-long/2addr v0, v2

    div-long/2addr v0, p1

    long-to-int p0, v0

    return p0
.end method

.method private static synthetic l()[Lnk3;
    .locals 3

    new-instance v0, Ljb;

    invoke-direct {v0}, Ljb;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lnk3;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method public static o(Lpk3;[B)Z
    .locals 3

    invoke-interface {p0}, Lpk3;->resetPeekPosition()V

    array-length v0, p1

    new-array v0, v0, [B

    const/4 v1, 0x0

    array-length v2, p1

    invoke-interface {p0, v0, v1, v2}, Lpk3;->peekFully([BII)V

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Lqk3;)V
    .locals 2

    iput-object p1, p0, Ljb;->l:Lqk3;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lqk3;->track(II)Lfva;

    move-result-object v0

    iput-object v0, p0, Ljb;->m:Lfva;

    invoke-interface {p1}, Lqk3;->endTracks()V

    return-void
.end method

.method public b(Lpk3;Lid8;)I
    .locals 4

    invoke-virtual {p0}, Ljb;->e()V

    invoke-interface {p1}, Lpk3;->getPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Ljb;->q(Lpk3;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Could not find AMR header."

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljb;->m()V

    invoke-virtual {p0, p1}, Ljb;->r(Lpk3;)I

    move-result p2

    invoke-interface {p1}, Lpk3;->getLength()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Ljb;->n(JI)V

    return p2
.end method

.method public c(Lpk3;)Z
    .locals 0

    invoke-virtual {p0, p1}, Ljb;->q(Lpk3;)Z

    move-result p0

    return p0
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Ljb;->m:Lfva;

    invoke-static {v0}, Lzi;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Ljb;->l:Lqk3;

    invoke-static {p0}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final g(JZ)Lja9;
    .locals 11

    iget v0, p0, Ljb;->i:I

    const-wide/16 v1, 0x4e20

    invoke-static {v0, v1, v2}, Ljb;->f(IJ)I

    move-result v8

    new-instance v0, Llf1;

    iget-wide v6, p0, Ljb;->h:J

    iget v9, p0, Ljb;->i:I

    move-object v3, v0

    move-wide v4, p1

    move v10, p3

    invoke-direct/range {v3 .. v10}, Llf1;-><init>(JJIIZ)V

    return-object v0
.end method

.method public final h(I)I
    .locals 2

    invoke-virtual {p0, p1}, Ljb;->j(I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal AMR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Ljb;->c:Z

    if-eqz p0, :cond_0

    const-string p0, "WB"

    goto :goto_0

    :cond_0
    const-string p0, "NB"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " frame type "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    :cond_1
    iget-boolean p0, p0, Ljb;->c:Z

    if-eqz p0, :cond_2

    sget-object p0, Ljb;->r:[I

    aget p0, p0, p1

    goto :goto_1

    :cond_2
    sget-object p0, Ljb;->q:[I

    aget p0, p0, p1

    :goto_1
    return p0
.end method

.method public final i(I)Z
    .locals 0

    iget-boolean p0, p0, Ljb;->c:Z

    if-nez p0, :cond_1

    const/16 p0, 0xc

    if-lt p1, p0, :cond_0

    const/16 p0, 0xe

    if-le p1, p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final j(I)Z
    .locals 1

    if-ltz p1, :cond_1

    const/16 v0, 0xf

    if-gt p1, v0, :cond_1

    invoke-virtual {p0, p1}, Ljb;->k(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Ljb;->i(I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final k(I)Z
    .locals 0

    iget-boolean p0, p0, Ljb;->c:Z

    if-eqz p0, :cond_1

    const/16 p0, 0xa

    if-lt p1, p0, :cond_0

    const/16 p0, 0xd

    if-le p1, p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final m()V
    .locals 4

    iget-boolean v0, p0, Ljb;->o:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljb;->o:Z

    iget-boolean v1, p0, Ljb;->c:Z

    if-eqz v1, :cond_0

    const-string v2, "audio/amr-wb"

    goto :goto_0

    :cond_0
    const-string v2, "audio/3gpp"

    :goto_0
    if-eqz v1, :cond_1

    const/16 v1, 0x3e80

    goto :goto_1

    :cond_1
    const/16 v1, 0x1f40

    :goto_1
    iget-object p0, p0, Ljb;->m:Lfva;

    new-instance v3, Lcom/google/android/exoplayer2/k$b;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/k$b;-><init>()V

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/k$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/k$b;

    move-result-object v2

    sget v3, Ljb;->u:I

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/k$b;->W(I)Lcom/google/android/exoplayer2/k$b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/k$b;->H(I)Lcom/google/android/exoplayer2/k$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/k$b;->f0(I)Lcom/google/android/exoplayer2/k$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/k$b;->E()Lcom/google/android/exoplayer2/k;

    move-result-object v0

    invoke-interface {p0, v0}, Lfva;->b(Lcom/google/android/exoplayer2/k;)V

    :cond_2
    return-void
.end method

.method public final n(JI)V
    .locals 5

    iget-boolean v0, p0, Ljb;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Ljb;->b:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    const-wide/16 v3, -0x1

    cmp-long v1, p1, v3

    if-eqz v1, :cond_4

    iget v1, p0, Ljb;->i:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    iget v4, p0, Ljb;->e:I

    if-eq v1, v4, :cond_1

    goto :goto_1

    :cond_1
    iget v1, p0, Ljb;->j:I

    const/16 v4, 0x14

    if-ge v1, v4, :cond_2

    if-ne p3, v3, :cond_5

    :cond_2
    and-int/lit8 p3, v0, 0x2

    if-eqz p3, :cond_3

    move p3, v2

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Ljb;->g(JZ)Lja9;

    move-result-object p1

    iput-object p1, p0, Ljb;->n:Lja9;

    iget-object p2, p0, Ljb;->l:Lqk3;

    invoke-interface {p2, p1}, Lqk3;->d(Lja9;)V

    iput-boolean v2, p0, Ljb;->g:Z

    goto :goto_2

    :cond_4
    :goto_1
    new-instance p1, Lja9$b;

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p1, p2, p3}, Lja9$b;-><init>(J)V

    iput-object p1, p0, Ljb;->n:Lja9;

    iget-object p2, p0, Ljb;->l:Lqk3;

    invoke-interface {p2, p1}, Lqk3;->d(Lja9;)V

    iput-boolean v2, p0, Ljb;->g:Z

    :cond_5
    :goto_2
    return-void
.end method

.method public final p(Lpk3;)I
    .locals 3

    invoke-interface {p1}, Lpk3;->resetPeekPosition()V

    iget-object v0, p0, Ljb;->a:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lpk3;->peekFully([BII)V

    iget-object p1, p0, Ljb;->a:[B

    aget-byte p1, p1, v2

    and-int/lit16 v0, p1, 0x83

    if-gtz v0, :cond_0

    shr-int/lit8 p1, p1, 0x3

    and-int/lit8 p1, p1, 0xf

    invoke-virtual {p0, p1}, Ljb;->h(I)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid padding bits for frame header "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0
.end method

.method public final q(Lpk3;)Z
    .locals 4

    sget-object v0, Ljb;->s:[B

    invoke-static {p1, v0}, Ljb;->o(Lpk3;[B)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Ljb;->c:Z

    array-length p0, v0

    invoke-interface {p1, p0}, Lpk3;->skipFully(I)V

    return v3

    :cond_0
    sget-object v0, Ljb;->t:[B

    invoke-static {p1, v0}, Ljb;->o(Lpk3;[B)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v3, p0, Ljb;->c:Z

    array-length p0, v0

    invoke-interface {p1, p0}, Lpk3;->skipFully(I)V

    return v3

    :cond_1
    return v2
.end method

.method public final r(Lpk3;)I
    .locals 8

    iget v0, p0, Ljb;->f:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-nez v0, :cond_1

    :try_start_0
    invoke-virtual {p0, p1}, Ljb;->p(Lpk3;)I

    move-result v0

    iput v0, p0, Ljb;->e:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    iput v0, p0, Ljb;->f:I

    iget v0, p0, Ljb;->i:I

    if-ne v0, v2, :cond_0

    invoke-interface {p1}, Lpk3;->getPosition()J

    move-result-wide v3

    iput-wide v3, p0, Ljb;->h:J

    iget v0, p0, Ljb;->e:I

    iput v0, p0, Ljb;->i:I

    :cond_0
    iget v0, p0, Ljb;->i:I

    iget v3, p0, Ljb;->e:I

    if-ne v0, v3, :cond_1

    iget v0, p0, Ljb;->j:I

    add-int/2addr v0, v1

    iput v0, p0, Ljb;->j:I

    goto :goto_0

    :catch_0
    return v2

    :cond_1
    :goto_0
    iget-object v0, p0, Ljb;->m:Lfva;

    iget v3, p0, Ljb;->f:I

    invoke-interface {v0, p1, v3, v1}, Lfva;->c(Lms1;IZ)I

    move-result p1

    if-ne p1, v2, :cond_2

    return v2

    :cond_2
    iget v0, p0, Ljb;->f:I

    sub-int/2addr v0, p1

    iput v0, p0, Ljb;->f:I

    const/4 p1, 0x0

    if-lez v0, :cond_3

    return p1

    :cond_3
    iget-object v1, p0, Ljb;->m:Lfva;

    iget-wide v2, p0, Ljb;->k:J

    iget-wide v4, p0, Ljb;->d:J

    add-long/2addr v2, v4

    iget v5, p0, Ljb;->e:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    invoke-interface/range {v1 .. v7}, Lfva;->e(JIIILfva$a;)V

    iget-wide v0, p0, Ljb;->d:J

    const-wide/16 v2, 0x4e20

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljb;->d:J

    return p1
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 2

    const-wide/16 p3, 0x0

    iput-wide p3, p0, Ljb;->d:J

    const/4 v0, 0x0

    iput v0, p0, Ljb;->e:I

    iput v0, p0, Ljb;->f:I

    cmp-long v0, p1, p3

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljb;->n:Lja9;

    instance-of v1, v0, Llf1;

    if-eqz v1, :cond_0

    check-cast v0, Llf1;

    invoke-virtual {v0, p1, p2}, Llf1;->b(J)J

    move-result-wide p1

    iput-wide p1, p0, Ljb;->k:J

    goto :goto_0

    :cond_0
    iput-wide p3, p0, Ljb;->k:J

    :goto_0
    return-void
.end method
