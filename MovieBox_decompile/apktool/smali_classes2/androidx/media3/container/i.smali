.class public final Landroidx/media3/container/i;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/container/i$b;,
        Landroidx/media3/container/i$a;
    }
.end annotation


# instance fields
.field private final a:Landroidx/media3/container/i$b;

.field private final b:Ljava/util/ArrayDeque;

.field private final c:Ljava/util/ArrayDeque;

.field private final d:Ljava/util/PriorityQueue;

.field private e:I

.field private f:Landroidx/media3/container/i$a;


# direct methods
.method public constructor <init>(Landroidx/media3/container/i$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/container/i;->a:Landroidx/media3/container/i$b;

    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayDeque;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroidx/media3/container/i;->b:Ljava/util/ArrayDeque;

    .line 12
    .line 13
    new-instance p1, Ljava/util/ArrayDeque;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Landroidx/media3/container/i;->c:Ljava/util/ArrayDeque;

    .line 19
    .line 20
    new-instance p1, Ljava/util/PriorityQueue;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/util/PriorityQueue;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Landroidx/media3/container/i;->d:Ljava/util/PriorityQueue;

    .line 26
    .line 27
    const/4 p1, -0x1

    .line 28
    iput p1, p0, Landroidx/media3/container/i;->e:I

    .line 29
    .line 30
    return-void
.end method

.method private c(Landroidx/media3/common/util/j0;)Landroidx/media3/common/util/j0;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/container/i;->b:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Landroidx/media3/common/util/j0;

    .line 10
    .line 11
    invoke-direct {v0}, Landroidx/media3/common/util/j0;-><init>()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Landroidx/media3/container/i;->b:Ljava/util/ArrayDeque;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroidx/media3/common/util/j0;

    .line 22
    .line 23
    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->a()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/j0;->S(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->e()[B

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->f()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->e()[B

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const/4 v3, 0x0

    .line 43
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->a()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    invoke-static {v1, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    .line 49
    .line 50
    return-object v0
.end method

.method private e(I)V
    .locals 6

    .line 1
    :goto_0
    iget-object v0, p0, Landroidx/media3/container/i;->d:Ljava/util/PriorityQueue;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-le v0, p1, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/media3/container/i;->d:Ljava/util/PriorityQueue;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroidx/media3/container/i$a;

    .line 16
    .line 17
    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroidx/media3/container/i$a;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    :goto_1
    iget-object v2, v0, Landroidx/media3/container/i$a;->a:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-ge v1, v2, :cond_0

    .line 31
    .line 32
    iget-object v2, p0, Landroidx/media3/container/i;->a:Landroidx/media3/container/i$b;

    .line 33
    .line 34
    iget-wide v3, v0, Landroidx/media3/container/i$a;->b:J

    .line 35
    .line 36
    iget-object v5, v0, Landroidx/media3/container/i$a;->a:Ljava/util/List;

    .line 37
    .line 38
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    check-cast v5, Landroidx/media3/common/util/j0;

    .line 43
    .line 44
    invoke-interface {v2, v3, v4, v5}, Landroidx/media3/container/i$b;->a(JLandroidx/media3/common/util/j0;)V

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Landroidx/media3/container/i;->b:Ljava/util/ArrayDeque;

    .line 48
    .line 49
    iget-object v3, v0, Landroidx/media3/container/i$a;->a:Ljava/util/List;

    .line 50
    .line 51
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Landroidx/media3/common/util/j0;

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    add-int/lit8 v1, v1, 0x1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_0
    iget-object v1, v0, Landroidx/media3/container/i$a;->a:Ljava/util/List;

    .line 64
    .line 65
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Landroidx/media3/container/i;->f:Landroidx/media3/container/i$a;

    .line 69
    .line 70
    if-eqz v1, :cond_1

    .line 71
    .line 72
    iget-wide v1, v1, Landroidx/media3/container/i$a;->b:J

    .line 73
    .line 74
    iget-wide v3, v0, Landroidx/media3/container/i$a;->b:J

    .line 75
    .line 76
    cmp-long v1, v1, v3

    .line 77
    .line 78
    if-nez v1, :cond_1

    .line 79
    .line 80
    const/4 v1, 0x0

    .line 81
    iput-object v1, p0, Landroidx/media3/container/i;->f:Landroidx/media3/container/i$a;

    .line 82
    .line 83
    :cond_1
    iget-object v1, p0, Landroidx/media3/container/i;->c:Ljava/util/ArrayDeque;

    .line 84
    .line 85
    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    return-void
.end method


# virtual methods
.method public a(JLandroidx/media3/common/util/j0;)V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/media3/container/i;->e:I

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    const/4 v1, -0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/media3/container/i;->d:Ljava/util/PriorityQueue;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget v2, p0, Landroidx/media3/container/i;->e:I

    .line 15
    .line 16
    if-lt v0, v2, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/media3/container/i;->d:Ljava/util/PriorityQueue;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroidx/media3/container/i$a;

    .line 25
    .line 26
    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroidx/media3/container/i$a;

    .line 31
    .line 32
    iget-wide v2, v0, Landroidx/media3/container/i$a;->b:J

    .line 33
    .line 34
    cmp-long v0, p1, v2

    .line 35
    .line 36
    if-gez v0, :cond_0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    invoke-direct {p0, p3}, Landroidx/media3/container/i;->c(Landroidx/media3/common/util/j0;)Landroidx/media3/common/util/j0;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    iget-object v0, p0, Landroidx/media3/container/i;->f:Landroidx/media3/container/i$a;

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    iget-wide v2, v0, Landroidx/media3/container/i$a;->b:J

    .line 48
    .line 49
    cmp-long v2, p1, v2

    .line 50
    .line 51
    if-nez v2, :cond_1

    .line 52
    .line 53
    iget-object p1, v0, Landroidx/media3/container/i$a;->a:Ljava/util/List;

    .line 54
    .line 55
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_1
    iget-object v0, p0, Landroidx/media3/container/i;->c:Ljava/util/ArrayDeque;

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    new-instance v0, Landroidx/media3/container/i$a;

    .line 68
    .line 69
    invoke-direct {v0}, Landroidx/media3/container/i$a;-><init>()V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    iget-object v0, p0, Landroidx/media3/container/i;->c:Ljava/util/ArrayDeque;

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Landroidx/media3/container/i$a;

    .line 80
    .line 81
    :goto_0
    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/container/i$a;->b(JLandroidx/media3/common/util/j0;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Landroidx/media3/container/i;->d:Ljava/util/PriorityQueue;

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    iput-object v0, p0, Landroidx/media3/container/i;->f:Landroidx/media3/container/i$a;

    .line 90
    .line 91
    iget p1, p0, Landroidx/media3/container/i;->e:I

    .line 92
    .line 93
    if-eq p1, v1, :cond_3

    .line 94
    .line 95
    invoke-direct {p0, p1}, Landroidx/media3/container/i;->e(I)V

    .line 96
    .line 97
    .line 98
    :cond_3
    return-void

    .line 99
    :cond_4
    :goto_1
    iget-object v0, p0, Landroidx/media3/container/i;->a:Landroidx/media3/container/i$b;

    .line 100
    .line 101
    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/container/i$b;->a(JLandroidx/media3/common/util/j0;)V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/container/i;->d:Ljava/util/PriorityQueue;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroidx/media3/container/i;->e(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/container/i;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public g(I)V
    .locals 1

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    .line 7
    .line 8
    .line 9
    iput p1, p0, Landroidx/media3/container/i;->e:I

    .line 10
    .line 11
    invoke-direct {p0, p1}, Landroidx/media3/container/i;->e(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
