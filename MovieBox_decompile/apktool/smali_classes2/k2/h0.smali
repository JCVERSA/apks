.class public final Lk2/h0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lk2/m0;


# instance fields
.field private final a:Landroidx/media3/common/util/v;

.field private final b:Landroidx/media3/common/util/v;

.field private c:J


# direct methods
.method public constructor <init>([J[JJ)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    array-length v0, p1

    .line 5
    array-length v1, p2

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    move v0, v3

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v0, v2

    .line 13
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/a;->a(Z)V

    .line 14
    .line 15
    .line 16
    array-length v0, p2

    .line 17
    if-lez v0, :cond_1

    .line 18
    .line 19
    aget-wide v1, p2, v2

    .line 20
    .line 21
    const-wide/16 v4, 0x0

    .line 22
    .line 23
    cmp-long v1, v1, v4

    .line 24
    .line 25
    if-lez v1, :cond_1

    .line 26
    .line 27
    new-instance v1, Landroidx/media3/common/util/v;

    .line 28
    .line 29
    add-int/2addr v0, v3

    .line 30
    invoke-direct {v1, v0}, Landroidx/media3/common/util/v;-><init>(I)V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lk2/h0;->a:Landroidx/media3/common/util/v;

    .line 34
    .line 35
    new-instance v2, Landroidx/media3/common/util/v;

    .line 36
    .line 37
    invoke-direct {v2, v0}, Landroidx/media3/common/util/v;-><init>(I)V

    .line 38
    .line 39
    .line 40
    iput-object v2, p0, Lk2/h0;->b:Landroidx/media3/common/util/v;

    .line 41
    .line 42
    invoke-virtual {v1, v4, v5}, Landroidx/media3/common/util/v;->a(J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v4, v5}, Landroidx/media3/common/util/v;->a(J)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    new-instance v1, Landroidx/media3/common/util/v;

    .line 50
    .line 51
    invoke-direct {v1, v0}, Landroidx/media3/common/util/v;-><init>(I)V

    .line 52
    .line 53
    .line 54
    iput-object v1, p0, Lk2/h0;->a:Landroidx/media3/common/util/v;

    .line 55
    .line 56
    new-instance v1, Landroidx/media3/common/util/v;

    .line 57
    .line 58
    invoke-direct {v1, v0}, Landroidx/media3/common/util/v;-><init>(I)V

    .line 59
    .line 60
    .line 61
    iput-object v1, p0, Lk2/h0;->b:Landroidx/media3/common/util/v;

    .line 62
    .line 63
    :goto_1
    iget-object v0, p0, Lk2/h0;->a:Landroidx/media3/common/util/v;

    .line 64
    .line 65
    invoke-virtual {v0, p1}, Landroidx/media3/common/util/v;->b([J)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lk2/h0;->b:Landroidx/media3/common/util/v;

    .line 69
    .line 70
    invoke-virtual {p1, p2}, Landroidx/media3/common/util/v;->b([J)V

    .line 71
    .line 72
    .line 73
    iput-wide p3, p0, Lk2/h0;->c:J

    .line 74
    .line 75
    return-void
.end method


# virtual methods
.method public b(JJ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lk2/h0;->b:Landroidx/media3/common/util/v;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/common/util/v;->d()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    cmp-long v2, p1, v0

    .line 12
    .line 13
    if-lez v2, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Lk2/h0;->a:Landroidx/media3/common/util/v;

    .line 16
    .line 17
    invoke-virtual {v2, v0, v1}, Landroidx/media3/common/util/v;->a(J)V

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lk2/h0;->b:Landroidx/media3/common/util/v;

    .line 21
    .line 22
    invoke-virtual {v2, v0, v1}, Landroidx/media3/common/util/v;->a(J)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lk2/h0;->a:Landroidx/media3/common/util/v;

    .line 26
    .line 27
    invoke-virtual {v0, p3, p4}, Landroidx/media3/common/util/v;->a(J)V

    .line 28
    .line 29
    .line 30
    iget-object p3, p0, Lk2/h0;->b:Landroidx/media3/common/util/v;

    .line 31
    .line 32
    invoke-virtual {p3, p1, p2}, Landroidx/media3/common/util/v;->a(J)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public c(JJ)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lk2/h0;->b:Landroidx/media3/common/util/v;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/common/util/v;->d()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Lk2/h0;->b:Landroidx/media3/common/util/v;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/media3/common/util/v;->d()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x1

    .line 18
    sub-int/2addr v2, v3

    .line 19
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/v;->c(I)J

    .line 20
    .line 21
    .line 22
    move-result-wide v4

    .line 23
    sub-long/2addr p1, v4

    .line 24
    cmp-long p1, p1, p3

    .line 25
    .line 26
    if-gez p1, :cond_1

    .line 27
    .line 28
    move v1, v3

    .line 29
    :cond_1
    return v1
.end method

.method public d(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lk2/h0;->c:J

    .line 2
    .line 3
    return-void
.end method

.method public getDurationUs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lk2/h0;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getSeekPoints(J)Lk2/m0$a;
    .locals 7

    .line 1
    iget-object v0, p0, Lk2/h0;->b:Landroidx/media3/common/util/v;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/common/util/v;->d()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance p1, Lk2/m0$a;

    .line 10
    .line 11
    sget-object p2, Lk2/n0;->c:Lk2/n0;

    .line 12
    .line 13
    invoke-direct {p1, p2}, Lk2/m0$a;-><init>(Lk2/n0;)V

    .line 14
    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_0
    iget-object v0, p0, Lk2/h0;->b:Landroidx/media3/common/util/v;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-static {v0, p1, p2, v1, v1}, Landroidx/media3/common/util/a1;->e(Landroidx/media3/common/util/v;JZZ)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    new-instance v2, Lk2/n0;

    .line 25
    .line 26
    iget-object v3, p0, Lk2/h0;->b:Landroidx/media3/common/util/v;

    .line 27
    .line 28
    invoke-virtual {v3, v0}, Landroidx/media3/common/util/v;->c(I)J

    .line 29
    .line 30
    .line 31
    move-result-wide v3

    .line 32
    iget-object v5, p0, Lk2/h0;->a:Landroidx/media3/common/util/v;

    .line 33
    .line 34
    invoke-virtual {v5, v0}, Landroidx/media3/common/util/v;->c(I)J

    .line 35
    .line 36
    .line 37
    move-result-wide v5

    .line 38
    invoke-direct {v2, v3, v4, v5, v6}, Lk2/n0;-><init>(JJ)V

    .line 39
    .line 40
    .line 41
    iget-wide v3, v2, Lk2/n0;->a:J

    .line 42
    .line 43
    cmp-long p1, v3, p1

    .line 44
    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    iget-object p1, p0, Lk2/h0;->b:Landroidx/media3/common/util/v;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroidx/media3/common/util/v;->d()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    sub-int/2addr p1, v1

    .line 54
    if-ne v0, p1, :cond_1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    new-instance p1, Lk2/n0;

    .line 58
    .line 59
    iget-object p2, p0, Lk2/h0;->b:Landroidx/media3/common/util/v;

    .line 60
    .line 61
    add-int/2addr v0, v1

    .line 62
    invoke-virtual {p2, v0}, Landroidx/media3/common/util/v;->c(I)J

    .line 63
    .line 64
    .line 65
    move-result-wide v3

    .line 66
    iget-object p2, p0, Lk2/h0;->a:Landroidx/media3/common/util/v;

    .line 67
    .line 68
    invoke-virtual {p2, v0}, Landroidx/media3/common/util/v;->c(I)J

    .line 69
    .line 70
    .line 71
    move-result-wide v0

    .line 72
    invoke-direct {p1, v3, v4, v0, v1}, Lk2/n0;-><init>(JJ)V

    .line 73
    .line 74
    .line 75
    new-instance p2, Lk2/m0$a;

    .line 76
    .line 77
    invoke-direct {p2, v2, p1}, Lk2/m0$a;-><init>(Lk2/n0;Lk2/n0;)V

    .line 78
    .line 79
    .line 80
    return-object p2

    .line 81
    :cond_2
    :goto_0
    new-instance p1, Lk2/m0$a;

    .line 82
    .line 83
    invoke-direct {p1, v2}, Lk2/m0$a;-><init>(Lk2/n0;)V

    .line 84
    .line 85
    .line 86
    return-object p1
.end method

.method public getTimeUs(J)J
    .locals 2

    .line 1
    iget-object v0, p0, Lk2/h0;->b:Landroidx/media3/common/util/v;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/common/util/v;->d()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    return-wide p1

    .line 15
    :cond_0
    iget-object v0, p0, Lk2/h0;->a:Landroidx/media3/common/util/v;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-static {v0, p1, p2, v1, v1}, Landroidx/media3/common/util/a1;->e(Landroidx/media3/common/util/v;JZZ)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iget-object p2, p0, Lk2/h0;->b:Landroidx/media3/common/util/v;

    .line 23
    .line 24
    invoke-virtual {p2, p1}, Landroidx/media3/common/util/v;->c(I)J

    .line 25
    .line 26
    .line 27
    move-result-wide p1

    .line 28
    return-wide p1
.end method

.method public isSeekable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lk2/h0;->b:Landroidx/media3/common/util/v;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/common/util/v;->d()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method
