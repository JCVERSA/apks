.class public final Lr3/g0;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Ljava/lang/String;

.field private final c:[Lk2/s0;

.field private final d:Landroidx/media3/container/i;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lr3/g0;->a:Ljava/util/List;

    .line 5
    .line 6
    iput-object p2, p0, Lr3/g0;->b:Ljava/lang/String;

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    new-array p1, p1, [Lk2/s0;

    .line 13
    .line 14
    iput-object p1, p0, Lr3/g0;->c:[Lk2/s0;

    .line 15
    .line 16
    new-instance p1, Landroidx/media3/container/i;

    .line 17
    .line 18
    new-instance p2, Lr3/f0;

    .line 19
    .line 20
    invoke-direct {p2, p0}, Lr3/f0;-><init>(Lr3/g0;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p1, p2}, Landroidx/media3/container/i;-><init>(Landroidx/media3/container/i$b;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lr3/g0;->d:Landroidx/media3/container/i;

    .line 27
    .line 28
    return-void
.end method

.method public static synthetic a(Lr3/g0;JLandroidx/media3/common/util/j0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lr3/g0;->f(JLandroidx/media3/common/util/j0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic f(JLandroidx/media3/common/util/j0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lr3/g0;->c:[Lk2/s0;

    .line 2
    .line 3
    invoke-static {p1, p2, p3, v0}, Lk2/g;->a(JLandroidx/media3/common/util/j0;[Lk2/s0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lr3/g0;->d:Landroidx/media3/container/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/container/i;->d()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c(JLandroidx/media3/common/util/j0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lr3/g0;->d:Landroidx/media3/container/i;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/container/i;->a(JLandroidx/media3/common/util/j0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d(Lk2/t;Lr3/l0$d;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lr3/g0;->c:[Lk2/s0;

    .line 4
    .line 5
    array-length v2, v2

    .line 6
    if-ge v1, v2, :cond_3

    .line 7
    .line 8
    invoke-virtual {p2}, Lr3/l0$d;->a()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lr3/l0$d;->c()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x3

    .line 16
    invoke-interface {p1, v2, v3}, Lk2/t;->track(II)Lk2/s0;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iget-object v3, p0, Lr3/g0;->a:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Landroidx/media3/common/r;

    .line 27
    .line 28
    iget-object v4, v3, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 29
    .line 30
    const-string v5, "application/cea-608"

    .line 31
    .line 32
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-nez v5, :cond_1

    .line 37
    .line 38
    const-string v5, "application/cea-708"

    .line 39
    .line 40
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-eqz v5, :cond_0

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_0
    move v5, v0

    .line 48
    goto :goto_2

    .line 49
    :cond_1
    :goto_1
    const/4 v5, 0x1

    .line 50
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v7, "Invalid closed caption MIME type provided: "

    .line 56
    .line 57
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-static {v5, v6}, Landroidx/media3/common/util/a;->b(ZLjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    iget-object v5, v3, Landroidx/media3/common/r;->a:Ljava/lang/String;

    .line 71
    .line 72
    if-eqz v5, :cond_2

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_2
    invoke-virtual {p2}, Lr3/l0$d;->b()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    :goto_3
    new-instance v6, Landroidx/media3/common/r$b;

    .line 80
    .line 81
    invoke-direct {v6}, Landroidx/media3/common/r$b;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v6, v5}, Landroidx/media3/common/r$b;->f0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    iget-object v6, p0, Lr3/g0;->b:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v5, v6}, Landroidx/media3/common/r$b;->U(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-virtual {v5, v4}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    iget v5, v3, Landroidx/media3/common/r;->e:I

    .line 99
    .line 100
    invoke-virtual {v4, v5}, Landroidx/media3/common/r$b;->w0(I)Landroidx/media3/common/r$b;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    iget-object v5, v3, Landroidx/media3/common/r;->d:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v4, v5}, Landroidx/media3/common/r$b;->j0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    iget v5, v3, Landroidx/media3/common/r;->J:I

    .line 111
    .line 112
    invoke-virtual {v4, v5}, Landroidx/media3/common/r$b;->O(I)Landroidx/media3/common/r$b;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    iget-object v3, v3, Landroidx/media3/common/r;->r:Ljava/util/List;

    .line 117
    .line 118
    invoke-virtual {v4, v3}, Landroidx/media3/common/r$b;->g0(Ljava/util/List;)Landroidx/media3/common/r$b;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-virtual {v3}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-interface {v2, v3}, Lk2/s0;->d(Landroidx/media3/common/r;)V

    .line 127
    .line 128
    .line 129
    iget-object v3, p0, Lr3/g0;->c:[Lk2/s0;

    .line 130
    .line 131
    aput-object v2, v3, v1

    .line 132
    .line 133
    add-int/lit8 v1, v1, 0x1

    .line 134
    .line 135
    goto/16 :goto_0

    .line 136
    .line 137
    :cond_3
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lr3/g0;->d:Landroidx/media3/container/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/container/i;->d()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public g(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lr3/g0;->d:Landroidx/media3/container/i;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/media3/container/i;->g(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
