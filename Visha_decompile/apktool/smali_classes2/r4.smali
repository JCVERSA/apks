.class public final Lr4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm83;


# instance fields
.field public final a:Lpw7;

.field public final b:Lqw7;

.field public final c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Lfva;

.field public f:I

.field public g:I

.field public h:Z

.field public i:Z

.field public j:J

.field public k:Lcom/google/android/exoplayer2/k;

.field public l:I

.field public m:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lr4;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lpw7;

    const/16 v1, 0x10

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lpw7;-><init>([B)V

    iput-object v0, p0, Lr4;->a:Lpw7;

    .line 4
    new-instance v1, Lqw7;

    iget-object v0, v0, Lpw7;->a:[B

    invoke-direct {v1, v0}, Lqw7;-><init>([B)V

    iput-object v1, p0, Lr4;->b:Lqw7;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lr4;->f:I

    .line 6
    iput v0, p0, Lr4;->g:I

    .line 7
    iput-boolean v0, p0, Lr4;->h:Z

    .line 8
    iput-boolean v0, p0, Lr4;->i:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    iput-wide v0, p0, Lr4;->m:J

    .line 10
    iput-object p1, p0, Lr4;->c:Ljava/lang/String;

    return-void
.end method

.method private d(Lqw7;[BI)Z
    .locals 2

    invoke-virtual {p1}, Lqw7;->a()I

    move-result v0

    iget v1, p0, Lr4;->g:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lr4;->g:I

    invoke-virtual {p1, p2, v1, v0}, Lqw7;->j([BII)V

    iget p1, p0, Lr4;->g:I

    add-int/2addr p1, v0

    iput p1, p0, Lr4;->g:I

    if-ne p1, p3, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private e()V
    .locals 5

    iget-object v0, p0, Lr4;->a:Lpw7;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lpw7;->p(I)V

    iget-object v0, p0, Lr4;->a:Lpw7;

    invoke-static {v0}, Ls4;->d(Lpw7;)Ls4$b;

    move-result-object v0

    iget-object v1, p0, Lr4;->k:Lcom/google/android/exoplayer2/k;

    const-string v2, "audio/ac4"

    if-eqz v1, :cond_0

    iget v3, v0, Ls4$b;->c:I

    iget v4, v1, Lcom/google/android/exoplayer2/k;->z:I

    if-ne v3, v4, :cond_0

    iget v3, v0, Ls4$b;->b:I

    iget v4, v1, Lcom/google/android/exoplayer2/k;->A:I

    if-ne v3, v4, :cond_0

    iget-object v1, v1, Lcom/google/android/exoplayer2/k;->m:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/k$b;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/k$b;-><init>()V

    iget-object v3, p0, Lr4;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/k$b;->S(Ljava/lang/String;)Lcom/google/android/exoplayer2/k$b;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/k$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/k$b;

    move-result-object v1

    iget v2, v0, Ls4$b;->c:I

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/k$b;->H(I)Lcom/google/android/exoplayer2/k$b;

    move-result-object v1

    iget v2, v0, Ls4$b;->b:I

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/k$b;->f0(I)Lcom/google/android/exoplayer2/k$b;

    move-result-object v1

    iget-object v2, p0, Lr4;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/k$b;->V(Ljava/lang/String;)Lcom/google/android/exoplayer2/k$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/k$b;->E()Lcom/google/android/exoplayer2/k;

    move-result-object v1

    iput-object v1, p0, Lr4;->k:Lcom/google/android/exoplayer2/k;

    iget-object v2, p0, Lr4;->e:Lfva;

    invoke-interface {v2, v1}, Lfva;->b(Lcom/google/android/exoplayer2/k;)V

    :cond_1
    iget v1, v0, Ls4$b;->d:I

    iput v1, p0, Lr4;->l:I

    iget v0, v0, Ls4$b;->e:I

    int-to-long v0, v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget-object v2, p0, Lr4;->k:Lcom/google/android/exoplayer2/k;

    iget v2, v2, Lcom/google/android/exoplayer2/k;->A:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lr4;->j:J

    return-void
.end method

.method private f(Lqw7;)Z
    .locals 5

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lqw7;->a()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_6

    iget-boolean v0, p0, Lr4;->h:Z

    const/16 v2, 0xac

    const/4 v3, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lqw7;->C()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v1, v3

    :cond_1
    iput-boolean v1, p0, Lr4;->h:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lqw7;->C()I

    move-result v0

    if-ne v0, v2, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lr4;->h:Z

    const/16 v2, 0x40

    const/16 v4, 0x41

    if-eq v0, v2, :cond_4

    if-ne v0, v4, :cond_0

    :cond_4
    if-ne v0, v4, :cond_5

    move v1, v3

    :cond_5
    iput-boolean v1, p0, Lr4;->i:Z

    return v3

    :cond_6
    return v1
.end method


# virtual methods
.method public a(Lqw7;)V
    .locals 10

    iget-object v0, p0, Lr4;->e:Lfva;

    invoke-static {v0}, Lzi;->i(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lqw7;->a()I

    move-result v0

    if-lez v0, :cond_6

    iget v0, p0, Lr4;->f:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lqw7;->a()I

    move-result v0

    iget v2, p0, Lr4;->l:I

    iget v3, p0, Lr4;->g:I

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, p0, Lr4;->e:Lfva;

    invoke-interface {v2, p1, v0}, Lfva;->d(Lqw7;I)V

    iget v2, p0, Lr4;->g:I

    add-int/2addr v2, v0

    iput v2, p0, Lr4;->g:I

    iget v7, p0, Lr4;->l:I

    if-ne v2, v7, :cond_0

    iget-wide v4, p0, Lr4;->m:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v2

    if-eqz v0, :cond_2

    iget-object v3, p0, Lr4;->e:Lfva;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x1

    invoke-interface/range {v3 .. v9}, Lfva;->e(JIIILfva$a;)V

    iget-wide v2, p0, Lr4;->m:J

    iget-wide v4, p0, Lr4;->j:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lr4;->m:J

    :cond_2
    iput v1, p0, Lr4;->f:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lr4;->b:Lqw7;

    invoke-virtual {v0}, Lqw7;->d()[B

    move-result-object v0

    const/16 v3, 0x10

    invoke-direct {p0, p1, v0, v3}, Lr4;->d(Lqw7;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lr4;->e()V

    iget-object v0, p0, Lr4;->b:Lqw7;

    invoke-virtual {v0, v1}, Lqw7;->O(I)V

    iget-object v0, p0, Lr4;->e:Lfva;

    iget-object v1, p0, Lr4;->b:Lqw7;

    invoke-interface {v0, v1, v3}, Lfva;->d(Lqw7;I)V

    iput v2, p0, Lr4;->f:I

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lr4;->f(Lqw7;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput v3, p0, Lr4;->f:I

    iget-object v0, p0, Lr4;->b:Lqw7;

    invoke-virtual {v0}, Lqw7;->d()[B

    move-result-object v0

    const/16 v4, -0x54

    aput-byte v4, v0, v1

    iget-object v0, p0, Lr4;->b:Lqw7;

    invoke-virtual {v0}, Lqw7;->d()[B

    move-result-object v0

    iget-boolean v1, p0, Lr4;->i:Z

    if-eqz v1, :cond_5

    const/16 v1, 0x41

    goto :goto_1

    :cond_5
    const/16 v1, 0x40

    :goto_1
    int-to-byte v1, v1

    aput-byte v1, v0, v3

    iput v2, p0, Lr4;->g:I

    goto/16 :goto_0

    :cond_6
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

    iput-object v0, p0, Lr4;->d:Ljava/lang/String;

    invoke-virtual {p2}, Lnab$d;->c()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lqk3;->track(II)Lfva;

    move-result-object p1

    iput-object p1, p0, Lr4;->e:Lfva;

    return-void
.end method

.method public packetStarted(JI)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    iput-wide p1, p0, Lr4;->m:J

    :cond_0
    return-void
.end method

.method public seek()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lr4;->f:I

    iput v0, p0, Lr4;->g:I

    iput-boolean v0, p0, Lr4;->h:Z

    iput-boolean v0, p0, Lr4;->i:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lr4;->m:J

    return-void
.end method
