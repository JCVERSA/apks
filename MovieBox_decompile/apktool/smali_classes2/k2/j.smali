.class public final Lk2/j;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lk2/s;


# instance fields
.field private final a:[B

.field private final b:Landroidx/media3/common/j;

.field private final c:J

.field private d:J

.field private e:[B

.field private f:I

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "media3.extractor"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/u;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/j;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lk2/j;->b:Landroidx/media3/common/j;

    .line 5
    .line 6
    iput-wide p2, p0, Lk2/j;->d:J

    .line 7
    .line 8
    iput-wide p4, p0, Lk2/j;->c:J

    .line 9
    .line 10
    const/high16 p1, 0x10000

    .line 11
    .line 12
    new-array p1, p1, [B

    .line 13
    .line 14
    iput-object p1, p0, Lk2/j;->e:[B

    .line 15
    .line 16
    const/16 p1, 0x1000

    .line 17
    .line 18
    new-array p1, p1, [B

    .line 19
    .line 20
    iput-object p1, p0, Lk2/j;->a:[B

    .line 21
    .line 22
    return-void
.end method

.method private d(I)V
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    iget-wide v0, p0, Lk2/j;->d:J

    .line 5
    .line 6
    int-to-long v2, p1

    .line 7
    add-long/2addr v0, v2

    .line 8
    iput-wide v0, p0, Lk2/j;->d:J

    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private e(I)V
    .locals 3

    .line 1
    iget v0, p0, Lk2/j;->f:I

    .line 2
    .line 3
    add-int/2addr v0, p1

    .line 4
    iget-object p1, p0, Lk2/j;->e:[B

    .line 5
    .line 6
    array-length v1, p1

    .line 7
    if-le v0, v1, :cond_0

    .line 8
    .line 9
    array-length p1, p1

    .line 10
    mul-int/lit8 p1, p1, 0x2

    .line 11
    .line 12
    const/high16 v1, 0x10000

    .line 13
    .line 14
    add-int/2addr v1, v0

    .line 15
    const/high16 v2, 0x80000

    .line 16
    .line 17
    add-int/2addr v0, v2

    .line 18
    invoke-static {p1, v1, v0}, Landroidx/media3/common/util/a1;->p(III)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iget-object v0, p0, Lk2/j;->e:[B

    .line 23
    .line 24
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lk2/j;->e:[B

    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method private f([BII)I
    .locals 2

    .line 1
    iget v0, p0, Lk2/j;->g:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    iget-object v0, p0, Lk2/j;->e:[B

    .line 12
    .line 13
    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p3}, Lk2/j;->j(I)V

    .line 17
    .line 18
    .line 19
    return p3
.end method

.method private g([BIIIZ)I
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lk2/j;->b:Landroidx/media3/common/j;

    .line 8
    .line 9
    add-int/2addr p2, p4

    .line 10
    sub-int/2addr p3, p4

    .line 11
    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/common/j;->read([BII)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 p2, -0x1

    .line 16
    if-ne p1, p2, :cond_1

    .line 17
    .line 18
    if-nez p4, :cond_0

    .line 19
    .line 20
    if-eqz p5, :cond_0

    .line 21
    .line 22
    return p2

    .line 23
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :cond_1
    add-int/2addr p4, p1

    .line 30
    return p4

    .line 31
    :cond_2
    new-instance p1, Ljava/io/InterruptedIOException;

    .line 32
    .line 33
    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    .line 34
    .line 35
    .line 36
    throw p1
.end method

.method private h(I)I
    .locals 1

    .line 1
    iget v0, p0, Lk2/j;->g:I

    .line 2
    .line 3
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-direct {p0, p1}, Lk2/j;->j(I)V

    .line 8
    .line 9
    .line 10
    return p1
.end method

.method private j(I)V
    .locals 5

    .line 1
    iget v0, p0, Lk2/j;->g:I

    .line 2
    .line 3
    sub-int/2addr v0, p1

    .line 4
    iput v0, p0, Lk2/j;->g:I

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput v1, p0, Lk2/j;->f:I

    .line 8
    .line 9
    iget-object v2, p0, Lk2/j;->e:[B

    .line 10
    .line 11
    array-length v3, v2

    .line 12
    const/high16 v4, 0x80000

    .line 13
    .line 14
    sub-int/2addr v3, v4

    .line 15
    if-ge v0, v3, :cond_0

    .line 16
    .line 17
    const/high16 v3, 0x10000

    .line 18
    .line 19
    add-int/2addr v3, v0

    .line 20
    new-array v3, v3, [B

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v3, v2

    .line 24
    :goto_0
    invoke-static {v2, p1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    .line 26
    .line 27
    iput-object v3, p0, Lk2/j;->e:[B

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public advancePeekPosition(I)V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0}, Lk2/j;->advancePeekPosition(IZ)Z

    return-void
.end method

.method public advancePeekPosition(IZ)Z
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lk2/j;->e(I)V

    .line 2
    iget v0, p0, Lk2/j;->g:I

    iget v1, p0, Lk2/j;->f:I

    sub-int/2addr v0, v1

    move v5, v0

    :goto_0
    if-ge v5, p1, :cond_1

    .line 3
    iget-object v2, p0, Lk2/j;->e:[B

    iget v3, p0, Lk2/j;->f:I

    move-object v1, p0

    move v4, p1

    move v6, p2

    .line 4
    invoke-direct/range {v1 .. v6}, Lk2/j;->g([BIIIZ)I

    move-result v5

    const/4 v0, -0x1

    if-ne v5, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_0
    iget v0, p0, Lk2/j;->f:I

    add-int/2addr v0, v5

    iput v0, p0, Lk2/j;->g:I

    goto :goto_0

    .line 6
    :cond_1
    iget p2, p0, Lk2/j;->f:I

    add-int/2addr p2, p1

    iput p2, p0, Lk2/j;->f:I

    const/4 p1, 0x1

    return p1
.end method

.method public b([BII)I
    .locals 7

    .line 1
    invoke-direct {p0, p3}, Lk2/j;->e(I)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lk2/j;->g:I

    .line 5
    .line 6
    iget v3, p0, Lk2/j;->f:I

    .line 7
    .line 8
    sub-int/2addr v0, v3

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v2, p0, Lk2/j;->e:[B

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x1

    .line 15
    move-object v1, p0

    .line 16
    move v4, p3

    .line 17
    invoke-direct/range {v1 .. v6}, Lk2/j;->g([BIIIZ)I

    .line 18
    .line 19
    .line 20
    move-result p3

    .line 21
    const/4 v0, -0x1

    .line 22
    if-ne p3, v0, :cond_0

    .line 23
    .line 24
    return v0

    .line 25
    :cond_0
    iget v0, p0, Lk2/j;->g:I

    .line 26
    .line 27
    add-int/2addr v0, p3

    .line 28
    iput v0, p0, Lk2/j;->g:I

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    :goto_0
    iget-object v0, p0, Lk2/j;->e:[B

    .line 36
    .line 37
    iget v1, p0, Lk2/j;->f:I

    .line 38
    .line 39
    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    .line 41
    .line 42
    iget p1, p0, Lk2/j;->f:I

    .line 43
    .line 44
    add-int/2addr p1, p3

    .line 45
    iput p1, p0, Lk2/j;->f:I

    .line 46
    .line 47
    return p3
.end method

.method public getLength()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lk2/j;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getPeekPosition()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lk2/j;->d:J

    .line 2
    .line 3
    iget v2, p0, Lk2/j;->f:I

    .line 4
    .line 5
    int-to-long v2, v2

    .line 6
    add-long/2addr v0, v2

    .line 7
    return-wide v0
.end method

.method public getPosition()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lk2/j;->d:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public i(IZ)Z
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lk2/j;->h(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    move v5, v0

    .line 6
    :goto_0
    const/4 v0, -0x1

    .line 7
    if-ge v5, p1, :cond_0

    .line 8
    .line 9
    if-eq v5, v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lk2/j;->a:[B

    .line 12
    .line 13
    array-length v0, v0

    .line 14
    add-int/2addr v0, v5

    .line 15
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    iget-object v2, p0, Lk2/j;->a:[B

    .line 20
    .line 21
    neg-int v3, v5

    .line 22
    move-object v1, p0

    .line 23
    move v6, p2

    .line 24
    invoke-direct/range {v1 .. v6}, Lk2/j;->g([BIIIZ)I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-direct {p0, v5}, Lk2/j;->d(I)V

    .line 30
    .line 31
    .line 32
    if-eq v5, v0, :cond_1

    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/4 p1, 0x0

    .line 37
    :goto_1
    return p1
.end method

.method public peekFully([BII)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Lk2/j;->peekFully([BIIZ)Z

    return-void
.end method

.method public peekFully([BIIZ)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p3, p4}, Lk2/j;->advancePeekPosition(IZ)Z

    move-result p4

    if-nez p4, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object p4, p0, Lk2/j;->e:[B

    iget v0, p0, Lk2/j;->f:I

    sub-int/2addr v0, p3

    invoke-static {p4, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x1

    return p1
.end method

.method public read([BII)I
    .locals 7

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lk2/j;->f([BII)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v5, 0x0

    .line 8
    const/4 v6, 0x1

    .line 9
    move-object v1, p0

    .line 10
    move-object v2, p1

    .line 11
    move v3, p2

    .line 12
    move v4, p3

    .line 13
    invoke-direct/range {v1 .. v6}, Lk2/j;->g([BIIIZ)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    :cond_0
    invoke-direct {p0, v0}, Lk2/j;->d(I)V

    .line 18
    .line 19
    .line 20
    return v0
.end method

.method public readFully([BII)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, p2, p3, v0}, Lk2/j;->readFully([BIIZ)Z

    return-void
.end method

.method public readFully([BIIZ)Z
    .locals 7

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lk2/j;->f([BII)I

    move-result v0

    move v5, v0

    :goto_0
    const/4 v0, -0x1

    if-ge v5, p3, :cond_0

    if-eq v5, v0, :cond_0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v6, p4

    .line 2
    invoke-direct/range {v1 .. v6}, Lk2/j;->g([BIIIZ)I

    move-result v5

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, v5}, Lk2/j;->d(I)V

    if-eq v5, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public resetPeekPosition()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk2/j;->f:I

    .line 3
    .line 4
    return-void
.end method

.method public skip(I)I
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lk2/j;->h(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v2, p0, Lk2/j;->a:[B

    .line 8
    .line 9
    array-length v0, v2

    .line 10
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v6, 0x1

    .line 16
    const/4 v3, 0x0

    .line 17
    move-object v1, p0

    .line 18
    invoke-direct/range {v1 .. v6}, Lk2/j;->g([BIIIZ)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    :cond_0
    invoke-direct {p0, v0}, Lk2/j;->d(I)V

    .line 23
    .line 24
    .line 25
    return v0
.end method

.method public skipFully(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lk2/j;->i(IZ)Z

    .line 3
    .line 4
    .line 5
    return-void
.end method
