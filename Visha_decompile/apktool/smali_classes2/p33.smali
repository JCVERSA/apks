.class public final Lp33;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm83;


# instance fields
.field public final a:Lqw7;

.field public final b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lfva;

.field public e:I

.field public f:I

.field public g:I

.field public h:J

.field public i:Lcom/google/android/exoplayer2/k;

.field public j:I

.field public k:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lqw7;

    const/16 v1, 0x12

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lqw7;-><init>([B)V

    iput-object v0, p0, Lp33;->a:Lqw7;

    const/4 v0, 0x0

    iput v0, p0, Lp33;->e:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lp33;->k:J

    iput-object p1, p0, Lp33;->b:Ljava/lang/String;

    return-void
.end method

.method private d(Lqw7;[BI)Z
    .locals 2

    invoke-virtual {p1}, Lqw7;->a()I

    move-result v0

    iget v1, p0, Lp33;->f:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lp33;->f:I

    invoke-virtual {p1, p2, v1, v0}, Lqw7;->j([BII)V

    iget p1, p0, Lp33;->f:I

    add-int/2addr p1, v0

    iput p1, p0, Lp33;->f:I

    if-ne p1, p3, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private e()V
    .locals 4

    iget-object v0, p0, Lp33;->a:Lqw7;

    invoke-virtual {v0}, Lqw7;->d()[B

    move-result-object v0

    iget-object v1, p0, Lp33;->i:Lcom/google/android/exoplayer2/k;

    if-nez v1, :cond_0

    iget-object v1, p0, Lp33;->c:Ljava/lang/String;

    iget-object v2, p0, Lp33;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lq33;->g([BLjava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/k;

    move-result-object v1

    iput-object v1, p0, Lp33;->i:Lcom/google/android/exoplayer2/k;

    iget-object v2, p0, Lp33;->d:Lfva;

    invoke-interface {v2, v1}, Lfva;->b(Lcom/google/android/exoplayer2/k;)V

    :cond_0
    invoke-static {v0}, Lq33;->a([B)I

    move-result v1

    iput v1, p0, Lp33;->j:I

    invoke-static {v0}, Lq33;->f([B)I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget-object v2, p0, Lp33;->i:Lcom/google/android/exoplayer2/k;

    iget v2, v2, Lcom/google/android/exoplayer2/k;->A:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lp33;->h:J

    return-void
.end method

.method private f(Lqw7;)Z
    .locals 5

    :cond_0
    invoke-virtual {p1}, Lqw7;->a()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    iget v0, p0, Lp33;->g:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lp33;->g:I

    invoke-virtual {p1}, Lqw7;->C()I

    move-result v2

    or-int/2addr v0, v2

    iput v0, p0, Lp33;->g:I

    invoke-static {v0}, Lq33;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lp33;->a:Lqw7;

    invoke-virtual {p1}, Lqw7;->d()[B

    move-result-object p1

    iget v0, p0, Lp33;->g:I

    shr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    shr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, p1, v3

    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v4, 0x2

    aput-byte v2, p1, v4

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v2, 0x3

    aput-byte v0, p1, v2

    const/4 p1, 0x4

    iput p1, p0, Lp33;->f:I

    iput v1, p0, Lp33;->g:I

    return v3

    :cond_1
    return v1
.end method


# virtual methods
.method public a(Lqw7;)V
    .locals 10

    iget-object v0, p0, Lp33;->d:Lfva;

    invoke-static {v0}, Lzi;->i(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lqw7;->a()I

    move-result v0

    if-lez v0, :cond_5

    iget v0, p0, Lp33;->e:I

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v1, :cond_3

    if-ne v0, v3, :cond_2

    invoke-virtual {p1}, Lqw7;->a()I

    move-result v0

    iget v1, p0, Lp33;->j:I

    iget v3, p0, Lp33;->f:I

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lp33;->d:Lfva;

    invoke-interface {v1, p1, v0}, Lfva;->d(Lqw7;I)V

    iget v1, p0, Lp33;->f:I

    add-int/2addr v1, v0

    iput v1, p0, Lp33;->f:I

    iget v7, p0, Lp33;->j:I

    if-ne v1, v7, :cond_0

    iget-wide v4, p0, Lp33;->k:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lp33;->d:Lfva;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x1

    invoke-interface/range {v3 .. v9}, Lfva;->e(JIIILfva$a;)V

    iget-wide v0, p0, Lp33;->k:J

    iget-wide v3, p0, Lp33;->h:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lp33;->k:J

    :cond_1
    iput v2, p0, Lp33;->e:I

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_3
    iget-object v0, p0, Lp33;->a:Lqw7;

    invoke-virtual {v0}, Lqw7;->d()[B

    move-result-object v0

    const/16 v1, 0x12

    invoke-direct {p0, p1, v0, v1}, Lp33;->d(Lqw7;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lp33;->e()V

    iget-object v0, p0, Lp33;->a:Lqw7;

    invoke-virtual {v0, v2}, Lqw7;->O(I)V

    iget-object v0, p0, Lp33;->d:Lfva;

    iget-object v2, p0, Lp33;->a:Lqw7;

    invoke-interface {v0, v2, v1}, Lfva;->d(Lqw7;I)V

    iput v3, p0, Lp33;->e:I

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lp33;->f(Lqw7;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput v1, p0, Lp33;->e:I

    goto :goto_0

    :cond_5
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c(Lqk3;Lnab$d;)V
    .locals 1

    invoke-virtual {p2}, Lnab$d;->a()V

    invoke-virtual {p2}, Lnab$d;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lp33;->c:Ljava/lang/String;

    invoke-virtual {p2}, Lnab$d;->c()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lqk3;->track(II)Lfva;

    move-result-object p1

    iput-object p1, p0, Lp33;->d:Lfva;

    return-void
.end method

.method public packetStarted(JI)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    iput-wide p1, p0, Lp33;->k:J

    :cond_0
    return-void
.end method

.method public seek()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lp33;->e:I

    iput v0, p0, Lp33;->f:I

    iput v0, p0, Lp33;->g:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lp33;->k:J

    return-void
.end method
