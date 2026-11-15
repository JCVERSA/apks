.class final Lf3/h;
.super Lf3/i;
.source "source.java"


# static fields
.field private static final o:[B

.field private static final p:[B


# instance fields
.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v1, Lf3/h;->o:[B

    .line 9
    .line 10
    new-array v0, v0, [B

    .line 11
    .line 12
    fill-array-data v0, :array_1

    .line 13
    .line 14
    .line 15
    sput-object v0, Lf3/h;->p:[B

    .line 16
    .line 17
    return-void

    .line 18
    nop

    :array_0
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x48t
        0x65t
        0x61t
        0x64t
    .end array-data

    :array_1
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x54t
        0x61t
        0x67t
        0x73t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf3/i;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static n(Landroidx/media3/common/util/j0;[B)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    array-length v1, p1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    .line 9
    return v2

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->f()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    array-length v1, p1

    .line 15
    new-array v1, v1, [B

    .line 16
    .line 17
    array-length v3, p1

    .line 18
    invoke-virtual {p0, v1, v2, v3}, Landroidx/media3/common/util/j0;->l([BII)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    .line 22
    .line 23
    .line 24
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    return p0
.end method

.method public static o(Landroidx/media3/common/util/j0;)Z
    .locals 1

    .line 1
    sget-object v0, Lf3/h;->o:[B

    .line 2
    .line 3
    invoke-static {p0, v0}, Lf3/h;->n(Landroidx/media3/common/util/j0;[B)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method


# virtual methods
.method protected f(Landroidx/media3/common/util/j0;)J
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->e()[B

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lk2/k0;->e([B)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-virtual {p0, v0, v1}, Lf3/i;->c(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method protected h(Landroidx/media3/common/util/j0;JLf3/i$b;)Z
    .locals 2

    .line 1
    sget-object p2, Lf3/h;->o:[B

    .line 2
    .line 3
    invoke-static {p1, p2}, Lf3/h;->n(Landroidx/media3/common/util/j0;[B)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    const/4 p3, 0x1

    .line 8
    if-eqz p2, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->e()[B

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->g()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Lk2/k0;->c([B)I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    invoke-static {p1}, Lk2/k0;->a([B)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object v0, p4, Lf3/i$b;->a:Landroidx/media3/common/r;

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    return p3

    .line 35
    :cond_0
    new-instance v0, Landroidx/media3/common/r$b;

    .line 36
    .line 37
    invoke-direct {v0}, Landroidx/media3/common/r$b;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v1, "audio/ogg"

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->U(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v1, "audio/opus"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0, p2}, Landroidx/media3/common/r$b;->R(I)Landroidx/media3/common/r$b;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    const v0, 0xbb80

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, v0}, Landroidx/media3/common/r$b;->v0(I)Landroidx/media3/common/r$b;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-virtual {p2, p1}, Landroidx/media3/common/r$b;->g0(Ljava/util/List;)Landroidx/media3/common/r$b;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iput-object p1, p4, Lf3/i$b;->a:Landroidx/media3/common/r;

    .line 72
    .line 73
    return p3

    .line 74
    :cond_1
    sget-object p2, Lf3/h;->p:[B

    .line 75
    .line 76
    invoke-static {p1, p2}, Lf3/h;->n(Landroidx/media3/common/util/j0;[B)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    const/4 v1, 0x0

    .line 81
    if-eqz v0, :cond_4

    .line 82
    .line 83
    iget-object v0, p4, Lf3/i$b;->a:Landroidx/media3/common/r;

    .line 84
    .line 85
    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    iget-boolean v0, p0, Lf3/h;->n:Z

    .line 89
    .line 90
    if-eqz v0, :cond_2

    .line 91
    .line 92
    return p3

    .line 93
    :cond_2
    iput-boolean p3, p0, Lf3/h;->n:Z

    .line 94
    .line 95
    array-length p2, p2

    .line 96
    invoke-virtual {p1, p2}, Landroidx/media3/common/util/j0;->X(I)V

    .line 97
    .line 98
    .line 99
    invoke-static {p1, v1, v1}, Lk2/v0;->k(Landroidx/media3/common/util/j0;ZZ)Lk2/v0$a;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    iget-object p1, p1, Lk2/v0$a;->b:[Ljava/lang/String;

    .line 104
    .line 105
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-static {p1}, Lk2/v0;->d(Ljava/util/List;)Landroidx/media3/common/x;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    if-nez p1, :cond_3

    .line 114
    .line 115
    return p3

    .line 116
    :cond_3
    iget-object p2, p4, Lf3/i$b;->a:Landroidx/media3/common/r;

    .line 117
    .line 118
    invoke-virtual {p2}, Landroidx/media3/common/r;->b()Landroidx/media3/common/r$b;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    iget-object v0, p4, Lf3/i$b;->a:Landroidx/media3/common/r;

    .line 123
    .line 124
    iget-object v0, v0, Landroidx/media3/common/r;->l:Landroidx/media3/common/x;

    .line 125
    .line 126
    invoke-virtual {p1, v0}, Landroidx/media3/common/x;->b(Landroidx/media3/common/x;)Landroidx/media3/common/x;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {p2, p1}, Landroidx/media3/common/r$b;->n0(Landroidx/media3/common/x;)Landroidx/media3/common/r$b;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {p1}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    iput-object p1, p4, Lf3/i$b;->a:Landroidx/media3/common/r;

    .line 139
    .line 140
    return p3

    .line 141
    :cond_4
    iget-object p1, p4, Lf3/i$b;->a:Landroidx/media3/common/r;

    .line 142
    .line 143
    invoke-static {p1}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    return v1
.end method

.method protected l(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lf3/i;->l(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lf3/h;->n:Z

    .line 8
    .line 9
    :cond_0
    return-void
.end method
