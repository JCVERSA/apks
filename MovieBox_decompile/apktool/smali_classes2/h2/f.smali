.class final Lh2/f;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lh2/a;


# instance fields
.field private final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lh2/f;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    return-void
.end method

.method private f(J)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lh2/f;->a:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lh2/f;->a:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lh3/e;

    .line 17
    .line 18
    iget-wide v1, v1, Lh3/e;->b:J

    .line 19
    .line 20
    cmp-long v1, p1, v1

    .line 21
    .line 22
    if-gez v1, :cond_0

    .line 23
    .line 24
    return v0

    .line 25
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object p1, p0, Lh2/f;->a:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    return p1
.end method


# virtual methods
.method public a(J)Lcom/google/common/collect/ImmutableList;
    .locals 5

    .line 1
    invoke-direct {p0, p1, p2}, Lh2/f;->f(J)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    iget-object v1, p0, Lh2/f;->a:Ljava/util/ArrayList;

    .line 13
    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lh3/e;

    .line 21
    .line 22
    iget-wide v1, v0, Lh3/e;->d:J

    .line 23
    .line 24
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    cmp-long v3, v1, v3

    .line 30
    .line 31
    if-eqz v3, :cond_2

    .line 32
    .line 33
    cmp-long p1, p1, v1

    .line 34
    .line 35
    if-gez p1, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    :goto_0
    iget-object p1, v0, Lh3/e;->a:Lcom/google/common/collect/ImmutableList;

    .line 44
    .line 45
    :goto_1
    return-object p1
.end method

.method public b(J)J
    .locals 7

    .line 1
    iget-object v0, p0, Lh2/f;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    if-nez v0, :cond_7

    .line 13
    .line 14
    iget-object v0, p0, Lh2/f;->a:Ljava/util/ArrayList;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lh3/e;

    .line 22
    .line 23
    iget-wide v3, v0, Lh3/e;->b:J

    .line 24
    .line 25
    cmp-long v0, p1, v3

    .line 26
    .line 27
    if-gez v0, :cond_0

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_0
    const/4 v0, 0x1

    .line 31
    move v3, v0

    .line 32
    :goto_0
    iget-object v4, p0, Lh2/f;->a:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-ge v3, v4, :cond_4

    .line 39
    .line 40
    iget-object v4, p0, Lh2/f;->a:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Lh3/e;

    .line 47
    .line 48
    iget-wide v4, v4, Lh3/e;->b:J

    .line 49
    .line 50
    cmp-long v6, p1, v4

    .line 51
    .line 52
    if-nez v6, :cond_1

    .line 53
    .line 54
    return-wide v4

    .line 55
    :cond_1
    if-gez v6, :cond_3

    .line 56
    .line 57
    iget-object v4, p0, Lh2/f;->a:Ljava/util/ArrayList;

    .line 58
    .line 59
    sub-int/2addr v3, v0

    .line 60
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lh3/e;

    .line 65
    .line 66
    iget-wide v3, v0, Lh3/e;->d:J

    .line 67
    .line 68
    cmp-long v1, v3, v1

    .line 69
    .line 70
    if-eqz v1, :cond_2

    .line 71
    .line 72
    cmp-long p1, v3, p1

    .line 73
    .line 74
    if-gtz p1, :cond_2

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    iget-wide v3, v0, Lh3/e;->b:J

    .line 78
    .line 79
    :goto_1
    return-wide v3

    .line 80
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_4
    iget-object v0, p0, Lh2/f;->a:Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-static {v0}, Lcom/google/common/collect/g3;->g(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Lh3/e;

    .line 90
    .line 91
    iget-wide v3, v0, Lh3/e;->d:J

    .line 92
    .line 93
    cmp-long v1, v3, v1

    .line 94
    .line 95
    if-eqz v1, :cond_5

    .line 96
    .line 97
    cmp-long p1, p1, v3

    .line 98
    .line 99
    if-gez p1, :cond_6

    .line 100
    .line 101
    :cond_5
    iget-wide v3, v0, Lh3/e;->b:J

    .line 102
    .line 103
    :cond_6
    return-wide v3

    .line 104
    :cond_7
    :goto_2
    return-wide v1
.end method

.method public c(J)J
    .locals 9

    .line 1
    iget-object v0, p0, Lh2/f;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-wide/high16 v1, -0x8000000000000000L

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-wide v1

    .line 12
    :cond_0
    iget-object v0, p0, Lh2/f;->a:Ljava/util/ArrayList;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lh3/e;

    .line 20
    .line 21
    iget-wide v4, v0, Lh3/e;->b:J

    .line 22
    .line 23
    cmp-long v0, p1, v4

    .line 24
    .line 25
    if-gez v0, :cond_1

    .line 26
    .line 27
    iget-object p1, p0, Lh2/f;->a:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lh3/e;

    .line 34
    .line 35
    iget-wide p1, p1, Lh3/e;->b:J

    .line 36
    .line 37
    return-wide p1

    .line 38
    :cond_1
    const/4 v0, 0x1

    .line 39
    move v3, v0

    .line 40
    :goto_0
    iget-object v4, p0, Lh2/f;->a:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    if-ge v3, v4, :cond_4

    .line 52
    .line 53
    iget-object v4, p0, Lh2/f;->a:Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    check-cast v4, Lh3/e;

    .line 60
    .line 61
    iget-wide v7, v4, Lh3/e;->b:J

    .line 62
    .line 63
    cmp-long v7, p1, v7

    .line 64
    .line 65
    if-gez v7, :cond_3

    .line 66
    .line 67
    iget-object v1, p0, Lh2/f;->a:Ljava/util/ArrayList;

    .line 68
    .line 69
    sub-int/2addr v3, v0

    .line 70
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Lh3/e;

    .line 75
    .line 76
    iget-wide v0, v0, Lh3/e;->d:J

    .line 77
    .line 78
    cmp-long v2, v0, v5

    .line 79
    .line 80
    if-eqz v2, :cond_2

    .line 81
    .line 82
    cmp-long p1, v0, p1

    .line 83
    .line 84
    if-lez p1, :cond_2

    .line 85
    .line 86
    iget-wide p1, v4, Lh3/e;->b:J

    .line 87
    .line 88
    cmp-long p1, v0, p1

    .line 89
    .line 90
    if-gez p1, :cond_2

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_2
    iget-wide v0, v4, Lh3/e;->b:J

    .line 94
    .line 95
    :goto_1
    return-wide v0

    .line 96
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_4
    iget-object v0, p0, Lh2/f;->a:Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-static {v0}, Lcom/google/common/collect/g3;->g(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    check-cast v0, Lh3/e;

    .line 106
    .line 107
    iget-wide v3, v0, Lh3/e;->d:J

    .line 108
    .line 109
    cmp-long v0, v3, v5

    .line 110
    .line 111
    if-eqz v0, :cond_5

    .line 112
    .line 113
    cmp-long p1, p1, v3

    .line 114
    .line 115
    if-gez p1, :cond_5

    .line 116
    .line 117
    move-wide v1, v3

    .line 118
    :cond_5
    return-wide v1
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lh2/f;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d(Lh3/e;J)Z
    .locals 9

    .line 1
    iget-wide v0, p1, Lh3/e;->b:J

    .line 2
    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v0, v0, v2

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v4, 0x1

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    move v0, v4

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v0, v1

    .line 17
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/a;->a(Z)V

    .line 18
    .line 19
    .line 20
    iget-wide v5, p1, Lh3/e;->b:J

    .line 21
    .line 22
    cmp-long v0, v5, p2

    .line 23
    .line 24
    if-gtz v0, :cond_2

    .line 25
    .line 26
    iget-wide v5, p1, Lh3/e;->d:J

    .line 27
    .line 28
    cmp-long v0, v5, v2

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    cmp-long v0, p2, v5

    .line 33
    .line 34
    if-gez v0, :cond_2

    .line 35
    .line 36
    :cond_1
    move v0, v4

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    move v0, v1

    .line 39
    :goto_1
    iget-object v2, p0, Lh2/f;->a:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    sub-int/2addr v2, v4

    .line 46
    :goto_2
    if-ltz v2, :cond_5

    .line 47
    .line 48
    iget-wide v5, p1, Lh3/e;->b:J

    .line 49
    .line 50
    iget-object v3, p0, Lh2/f;->a:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Lh3/e;

    .line 57
    .line 58
    iget-wide v7, v3, Lh3/e;->b:J

    .line 59
    .line 60
    cmp-long v3, v5, v7

    .line 61
    .line 62
    if-ltz v3, :cond_3

    .line 63
    .line 64
    iget-object p2, p0, Lh2/f;->a:Ljava/util/ArrayList;

    .line 65
    .line 66
    add-int/2addr v2, v4

    .line 67
    invoke-virtual {p2, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    return v0

    .line 71
    :cond_3
    iget-object v3, p0, Lh2/f;->a:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    check-cast v3, Lh3/e;

    .line 78
    .line 79
    iget-wide v5, v3, Lh3/e;->b:J

    .line 80
    .line 81
    cmp-long v3, v5, p2

    .line 82
    .line 83
    if-gtz v3, :cond_4

    .line 84
    .line 85
    move v0, v1

    .line 86
    :cond_4
    add-int/lit8 v2, v2, -0x1

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_5
    iget-object p2, p0, Lh2/f;->a:Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-virtual {p2, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    return v0
.end method

.method public e(J)V
    .locals 5

    .line 1
    invoke-direct {p0, p1, p2}, Lh2/f;->f(J)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, p0, Lh2/f;->a:Ljava/util/ArrayList;

    .line 9
    .line 10
    add-int/lit8 v2, v0, -0x1

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lh3/e;

    .line 17
    .line 18
    iget-wide v1, v1, Lh3/e;->d:J

    .line 19
    .line 20
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    cmp-long v3, v1, v3

    .line 26
    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    cmp-long p1, v1, p1

    .line 30
    .line 31
    if-ltz p1, :cond_2

    .line 32
    .line 33
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 34
    .line 35
    :cond_2
    iget-object p1, p0, Lh2/f;->a:Ljava/util/ArrayList;

    .line 36
    .line 37
    const/4 p2, 0x0

    .line 38
    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 43
    .line 44
    .line 45
    return-void
.end method
