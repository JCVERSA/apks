.class public final Liab;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Lpoa;

.field public final c:Lqw7;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:J

.field public h:J

.field public i:J


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Liab;->a:I

    new-instance p1, Lpoa;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Lpoa;-><init>(J)V

    iput-object p1, p0, Liab;->b:Lpoa;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Liab;->g:J

    iput-wide v0, p0, Liab;->h:J

    iput-wide v0, p0, Liab;->i:J

    new-instance p1, Lqw7;

    invoke-direct {p1}, Lqw7;-><init>()V

    iput-object p1, p0, Liab;->c:Lqw7;

    return-void
.end method


# virtual methods
.method public final a(Lpk3;)I
    .locals 2

    iget-object v0, p0, Liab;->c:Lqw7;

    sget-object v1, Lblb;->f:[B

    invoke-virtual {v0, v1}, Lqw7;->L([B)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Liab;->d:Z

    invoke-interface {p1}, Lpk3;->resetPeekPosition()V

    const/4 p0, 0x0

    return p0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Liab;->i:J

    return-wide v0
.end method

.method public c()Lpoa;
    .locals 0

    iget-object p0, p0, Liab;->b:Lpoa;

    return-object p0
.end method

.method public d()Z
    .locals 0

    iget-boolean p0, p0, Liab;->d:Z

    return p0
.end method

.method public e(Lpk3;Lid8;I)I
    .locals 6

    if-gtz p3, :cond_0

    invoke-virtual {p0, p1}, Liab;->a(Lpk3;)I

    move-result p0

    return p0

    :cond_0
    iget-boolean v0, p0, Liab;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Liab;->h(Lpk3;Lid8;I)I

    move-result p0

    return p0

    :cond_1
    iget-wide v0, p0, Liab;->h:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Liab;->a(Lpk3;)I

    move-result p0

    return p0

    :cond_2
    iget-boolean v0, p0, Liab;->e:Z

    if-nez v0, :cond_3

    invoke-virtual {p0, p1, p2, p3}, Liab;->f(Lpk3;Lid8;I)I

    move-result p0

    return p0

    :cond_3
    iget-wide p2, p0, Liab;->g:J

    cmp-long v0, p2, v2

    if-nez v0, :cond_4

    invoke-virtual {p0, p1}, Liab;->a(Lpk3;)I

    move-result p0

    return p0

    :cond_4
    iget-object v0, p0, Liab;->b:Lpoa;

    invoke-virtual {v0, p2, p3}, Lpoa;->b(J)J

    move-result-wide p2

    iget-object v0, p0, Liab;->b:Lpoa;

    iget-wide v4, p0, Liab;->h:J

    invoke-virtual {v0, v4, v5}, Lpoa;->b(J)J

    move-result-wide v0

    sub-long/2addr v0, p2

    iput-wide v0, p0, Liab;->i:J

    const-wide/16 p2, 0x0

    cmp-long p2, v0, p2

    if-gez p2, :cond_5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid duration: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Liab;->i:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, ". Using TIME_UNSET instead."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "TsDurationReader"

    invoke-static {p3, p2}, Lop5;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide v2, p0, Liab;->i:J

    :cond_5
    invoke-virtual {p0, p1}, Liab;->a(Lpk3;)I

    move-result p0

    return p0
.end method

.method public final f(Lpk3;Lid8;I)I
    .locals 6

    iget v0, p0, Liab;->a:I

    int-to-long v0, v0

    invoke-interface {p1}, Lpk3;->getLength()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-interface {p1}, Lpk3;->getPosition()J

    move-result-wide v1

    const/4 v3, 0x0

    int-to-long v4, v3

    cmp-long v1, v1, v4

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iput-wide v4, p2, Lid8;->a:J

    return v2

    :cond_0
    iget-object p2, p0, Liab;->c:Lqw7;

    invoke-virtual {p2, v0}, Lqw7;->K(I)V

    invoke-interface {p1}, Lpk3;->resetPeekPosition()V

    iget-object p2, p0, Liab;->c:Lqw7;

    invoke-virtual {p2}, Lqw7;->d()[B

    move-result-object p2

    invoke-interface {p1, p2, v3, v0}, Lpk3;->peekFully([BII)V

    iget-object p1, p0, Liab;->c:Lqw7;

    invoke-virtual {p0, p1, p3}, Liab;->g(Lqw7;I)J

    move-result-wide p1

    iput-wide p1, p0, Liab;->g:J

    iput-boolean v2, p0, Liab;->e:Z

    return v3
.end method

.method public final g(Lqw7;I)J
    .locals 5

    invoke-virtual {p1}, Lqw7;->e()I

    move-result p0

    invoke-virtual {p1}, Lqw7;->f()I

    move-result v0

    :goto_0
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-ge p0, v0, :cond_2

    invoke-virtual {p1}, Lqw7;->d()[B

    move-result-object v3

    aget-byte v3, v3, p0

    const/16 v4, 0x47

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, p0, p2}, Loab;->c(Lqw7;II)J

    move-result-wide v3

    cmp-long v1, v3, v1

    if-eqz v1, :cond_1

    return-wide v3

    :cond_1
    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    return-wide v1
.end method

.method public final h(Lpk3;Lid8;I)I
    .locals 5

    invoke-interface {p1}, Lpk3;->getLength()J

    move-result-wide v0

    iget v2, p0, Liab;->a:I

    int-to-long v2, v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    int-to-long v3, v2

    sub-long/2addr v0, v3

    invoke-interface {p1}, Lpk3;->getPosition()J

    move-result-wide v3

    cmp-long v3, v3, v0

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    iput-wide v0, p2, Lid8;->a:J

    return v4

    :cond_0
    iget-object p2, p0, Liab;->c:Lqw7;

    invoke-virtual {p2, v2}, Lqw7;->K(I)V

    invoke-interface {p1}, Lpk3;->resetPeekPosition()V

    iget-object p2, p0, Liab;->c:Lqw7;

    invoke-virtual {p2}, Lqw7;->d()[B

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0, v2}, Lpk3;->peekFully([BII)V

    iget-object p1, p0, Liab;->c:Lqw7;

    invoke-virtual {p0, p1, p3}, Liab;->i(Lqw7;I)J

    move-result-wide p1

    iput-wide p1, p0, Liab;->h:J

    iput-boolean v4, p0, Liab;->f:Z

    return v0
.end method

.method public final i(Lqw7;I)J
    .locals 6

    invoke-virtual {p1}, Lqw7;->e()I

    move-result p0

    invoke-virtual {p1}, Lqw7;->f()I

    move-result v0

    add-int/lit16 v1, v0, -0xbc

    :goto_0
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-lt v1, p0, :cond_2

    invoke-virtual {p1}, Lqw7;->d()[B

    move-result-object v4

    invoke-static {v4, p0, v0, v1}, Loab;->b([BIII)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, v1, p2}, Loab;->c(Lqw7;II)J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-eqz v2, :cond_1

    return-wide v4

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-wide v2
.end method
