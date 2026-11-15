.class public final Lnx4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm83;


# instance fields
.field public final a:Lqw7;

.field public b:Lfva;

.field public c:Z

.field public d:J

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lqw7;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lqw7;-><init>(I)V

    iput-object v0, p0, Lnx4;->a:Lqw7;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lnx4;->d:J

    return-void
.end method


# virtual methods
.method public a(Lqw7;)V
    .locals 7

    iget-object v0, p0, Lnx4;->b:Lfva;

    invoke-static {v0}, Lzi;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lnx4;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lqw7;->a()I

    move-result v0

    iget v1, p0, Lnx4;->f:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_3

    rsub-int/lit8 v1, v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p1}, Lqw7;->d()[B

    move-result-object v3

    invoke-virtual {p1}, Lqw7;->e()I

    move-result v4

    iget-object v5, p0, Lnx4;->a:Lqw7;

    invoke-virtual {v5}, Lqw7;->d()[B

    move-result-object v5

    iget v6, p0, Lnx4;->f:I

    invoke-static {v3, v4, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lnx4;->f:I

    add-int/2addr v3, v1

    if-ne v3, v2, :cond_3

    iget-object v1, p0, Lnx4;->a:Lqw7;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lqw7;->O(I)V

    iget-object v1, p0, Lnx4;->a:Lqw7;

    invoke-virtual {v1}, Lqw7;->C()I

    move-result v1

    const/16 v4, 0x49

    if-ne v4, v1, :cond_2

    iget-object v1, p0, Lnx4;->a:Lqw7;

    invoke-virtual {v1}, Lqw7;->C()I

    move-result v1

    const/16 v4, 0x44

    if-ne v4, v1, :cond_2

    iget-object v1, p0, Lnx4;->a:Lqw7;

    invoke-virtual {v1}, Lqw7;->C()I

    move-result v1

    const/16 v4, 0x33

    if-eq v4, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lnx4;->a:Lqw7;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lqw7;->P(I)V

    iget-object v1, p0, Lnx4;->a:Lqw7;

    invoke-virtual {v1}, Lqw7;->B()I

    move-result v1

    add-int/2addr v1, v2

    iput v1, p0, Lnx4;->e:I

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "Id3Reader"

    const-string v0, "Discarding invalid ID3 tag"

    invoke-static {p1, v0}, Lop5;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lnx4;->c:Z

    return-void

    :cond_3
    :goto_1
    iget v1, p0, Lnx4;->e:I

    iget v2, p0, Lnx4;->f:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lnx4;->b:Lfva;

    invoke-interface {v1, p1, v0}, Lfva;->d(Lqw7;I)V

    iget p1, p0, Lnx4;->f:I

    add-int/2addr p1, v0

    iput p1, p0, Lnx4;->f:I

    return-void
.end method

.method public b()V
    .locals 8

    iget-object v0, p0, Lnx4;->b:Lfva;

    invoke-static {v0}, Lzi;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lnx4;->c:Z

    if-eqz v0, :cond_2

    iget v5, p0, Lnx4;->e:I

    if-eqz v5, :cond_2

    iget v0, p0, Lnx4;->f:I

    if-eq v0, v5, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lnx4;->d:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lnx4;->b:Lfva;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    invoke-interface/range {v1 .. v7}, Lfva;->e(JIIILfva$a;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnx4;->c:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public c(Lqk3;Lnab$d;)V
    .locals 2

    invoke-virtual {p2}, Lnab$d;->a()V

    invoke-virtual {p2}, Lnab$d;->c()I

    move-result v0

    const/4 v1, 0x5

    invoke-interface {p1, v0, v1}, Lqk3;->track(II)Lfva;

    move-result-object p1

    iput-object p1, p0, Lnx4;->b:Lfva;

    new-instance p0, Lcom/google/android/exoplayer2/k$b;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/k$b;-><init>()V

    invoke-virtual {p2}, Lnab$d;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/k$b;->S(Ljava/lang/String;)Lcom/google/android/exoplayer2/k$b;

    move-result-object p0

    const-string p2, "application/id3"

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/k$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/k$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k$b;->E()Lcom/google/android/exoplayer2/k;

    move-result-object p0

    invoke-interface {p1, p0}, Lfva;->b(Lcom/google/android/exoplayer2/k;)V

    return-void
.end method

.method public packetStarted(JI)V
    .locals 2

    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x1

    iput-boolean p3, p0, Lnx4;->c:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_1

    iput-wide p1, p0, Lnx4;->d:J

    :cond_1
    const/4 p1, 0x0

    iput p1, p0, Lnx4;->e:I

    iput p1, p0, Lnx4;->f:I

    return-void
.end method

.method public seek()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnx4;->c:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lnx4;->d:J

    return-void
.end method
