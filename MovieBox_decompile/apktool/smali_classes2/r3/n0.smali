.class final Lr3/n0;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Ljava/lang/String;

.field private final c:[Lk2/s0;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lr3/n0;->a:Ljava/util/List;

    .line 5
    .line 6
    iput-object p2, p0, Lr3/n0;->b:Ljava/lang/String;

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
    iput-object p1, p0, Lr3/n0;->c:[Lk2/s0;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public a(JLandroidx/media3/common/util/j0;)V
    .locals 4

    .line 1
    invoke-virtual {p3}, Landroidx/media3/common/util/j0;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x9

    .line 6
    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p3}, Landroidx/media3/common/util/j0;->q()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p3}, Landroidx/media3/common/util/j0;->q()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {p3}, Landroidx/media3/common/util/j0;->H()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/16 v3, 0x1b2

    .line 23
    .line 24
    if-ne v0, v3, :cond_1

    .line 25
    .line 26
    const v0, 0x47413934

    .line 27
    .line 28
    .line 29
    if-ne v1, v0, :cond_1

    .line 30
    .line 31
    const/4 v0, 0x3

    .line 32
    if-ne v2, v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lr3/n0;->c:[Lk2/s0;

    .line 35
    .line 36
    invoke-static {p1, p2, p3, v0}, Lk2/g;->b(JLandroidx/media3/common/util/j0;[Lk2/s0;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public b(Lk2/t;Lr3/l0$d;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lr3/n0;->c:[Lk2/s0;

    .line 4
    .line 5
    array-length v2, v2

    .line 6
    if-ge v1, v2, :cond_2

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
    iget-object v3, p0, Lr3/n0;->a:Ljava/util/List;

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
    new-instance v5, Landroidx/media3/common/r$b;

    .line 71
    .line 72
    invoke-direct {v5}, Landroidx/media3/common/r$b;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2}, Lr3/l0$d;->b()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    invoke-virtual {v5, v6}, Landroidx/media3/common/r$b;->f0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    iget-object v6, p0, Lr3/n0;->b:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v5, v6}, Landroidx/media3/common/r$b;->U(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-virtual {v5, v4}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    iget v5, v3, Landroidx/media3/common/r;->e:I

    .line 94
    .line 95
    invoke-virtual {v4, v5}, Landroidx/media3/common/r$b;->w0(I)Landroidx/media3/common/r$b;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    iget-object v5, v3, Landroidx/media3/common/r;->d:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v4, v5}, Landroidx/media3/common/r$b;->j0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    iget v5, v3, Landroidx/media3/common/r;->J:I

    .line 106
    .line 107
    invoke-virtual {v4, v5}, Landroidx/media3/common/r$b;->O(I)Landroidx/media3/common/r$b;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    iget-object v3, v3, Landroidx/media3/common/r;->r:Ljava/util/List;

    .line 112
    .line 113
    invoke-virtual {v4, v3}, Landroidx/media3/common/r$b;->g0(Ljava/util/List;)Landroidx/media3/common/r$b;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-virtual {v3}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-interface {v2, v3}, Lk2/s0;->d(Landroidx/media3/common/r;)V

    .line 122
    .line 123
    .line 124
    iget-object v3, p0, Lr3/n0;->c:[Lk2/s0;

    .line 125
    .line 126
    aput-object v2, v3, v1

    .line 127
    .line 128
    add-int/lit8 v1, v1, 0x1

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_2
    return-void
.end method
