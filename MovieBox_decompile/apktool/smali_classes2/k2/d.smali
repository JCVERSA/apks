.class public final Lk2/d;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:F

.field public final l:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/util/List;IIIIIIIIIFLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lk2/d;->a:Ljava/util/List;

    .line 5
    .line 6
    iput p2, p0, Lk2/d;->b:I

    .line 7
    .line 8
    iput p3, p0, Lk2/d;->c:I

    .line 9
    .line 10
    iput p4, p0, Lk2/d;->d:I

    .line 11
    .line 12
    iput p5, p0, Lk2/d;->e:I

    .line 13
    .line 14
    iput p6, p0, Lk2/d;->f:I

    .line 15
    .line 16
    iput p7, p0, Lk2/d;->g:I

    .line 17
    .line 18
    iput p8, p0, Lk2/d;->h:I

    .line 19
    .line 20
    iput p9, p0, Lk2/d;->i:I

    .line 21
    .line 22
    iput p10, p0, Lk2/d;->j:I

    .line 23
    .line 24
    iput p11, p0, Lk2/d;->k:F

    .line 25
    .line 26
    iput-object p12, p0, Lk2/d;->l:Ljava/lang/String;

    .line 27
    .line 28
    return-void
.end method

.method private static a(Landroidx/media3/common/util/j0;)[B
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->P()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->f()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->X(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->e()[B

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0, v1, v0}, Landroidx/media3/common/util/j;->g([BII)[B

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static b(Landroidx/media3/common/util/j0;)Lk2/d;
    .locals 15

    .line 1
    const/4 v0, 0x4

    .line 2
    :try_start_0
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->X(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->H()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x3

    .line 10
    and-int/2addr v0, v1

    .line 11
    add-int/lit8 v4, v0, 0x1

    .line 12
    .line 13
    if-eq v4, v1, :cond_3

    .line 14
    .line 15
    new-instance v3, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->H()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    and-int/lit8 v0, v0, 0x1f

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    move v2, v1

    .line 28
    :goto_0
    if-ge v2, v0, :cond_0

    .line 29
    .line 30
    invoke-static {p0}, Lk2/d;->a(Landroidx/media3/common/util/j0;)[B

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    goto/16 :goto_3

    .line 42
    .line 43
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->H()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    move v5, v1

    .line 48
    :goto_1
    if-ge v5, v2, :cond_1

    .line 49
    .line 50
    invoke-static {p0}, Lk2/d;->a(Landroidx/media3/common/util/j0;)[B

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    add-int/lit8 v5, v5, 0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    if-lez v0, :cond_2

    .line 61
    .line 62
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    check-cast p0, [B

    .line 67
    .line 68
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, [B

    .line 73
    .line 74
    sget-object v1, Landroidx/media3/container/g;->a:[B

    .line 75
    .line 76
    array-length v1, v1

    .line 77
    array-length p0, p0

    .line 78
    invoke-static {v0, v1, p0}, Landroidx/media3/container/g;->C([BII)Landroidx/media3/container/g$m;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    iget v0, p0, Landroidx/media3/container/g$m;->f:I

    .line 83
    .line 84
    iget v1, p0, Landroidx/media3/container/g$m;->g:I

    .line 85
    .line 86
    iget v2, p0, Landroidx/media3/container/g$m;->i:I

    .line 87
    .line 88
    add-int/lit8 v2, v2, 0x8

    .line 89
    .line 90
    iget v5, p0, Landroidx/media3/container/g$m;->j:I

    .line 91
    .line 92
    add-int/lit8 v5, v5, 0x8

    .line 93
    .line 94
    iget v6, p0, Landroidx/media3/container/g$m;->q:I

    .line 95
    .line 96
    iget v7, p0, Landroidx/media3/container/g$m;->r:I

    .line 97
    .line 98
    iget v8, p0, Landroidx/media3/container/g$m;->s:I

    .line 99
    .line 100
    iget v9, p0, Landroidx/media3/container/g$m;->t:I

    .line 101
    .line 102
    iget v10, p0, Landroidx/media3/container/g$m;->h:F

    .line 103
    .line 104
    iget v11, p0, Landroidx/media3/container/g$m;->a:I

    .line 105
    .line 106
    iget v12, p0, Landroidx/media3/container/g$m;->b:I

    .line 107
    .line 108
    iget p0, p0, Landroidx/media3/container/g$m;->c:I

    .line 109
    .line 110
    invoke-static {v11, v12, p0}, Landroidx/media3/common/util/j;->d(III)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    move-object v14, p0

    .line 115
    move v11, v8

    .line 116
    move v12, v9

    .line 117
    move v13, v10

    .line 118
    move v8, v5

    .line 119
    move v9, v6

    .line 120
    move v10, v7

    .line 121
    move v5, v0

    .line 122
    move v6, v1

    .line 123
    move v7, v2

    .line 124
    goto :goto_2

    .line 125
    :cond_2
    const/4 p0, -0x1

    .line 126
    const/high16 v0, 0x3f800000    # 1.0f

    .line 127
    .line 128
    const/4 v1, 0x0

    .line 129
    const/16 v2, 0x10

    .line 130
    .line 131
    move v5, p0

    .line 132
    move v6, v5

    .line 133
    move v7, v6

    .line 134
    move v8, v7

    .line 135
    move v9, v8

    .line 136
    move v10, v9

    .line 137
    move v11, v10

    .line 138
    move v13, v0

    .line 139
    move-object v14, v1

    .line 140
    move v12, v2

    .line 141
    :goto_2
    new-instance p0, Lk2/d;

    .line 142
    .line 143
    move-object v2, p0

    .line 144
    invoke-direct/range {v2 .. v14}, Lk2/d;-><init>(Ljava/util/List;IIIIIIIIIFLjava/lang/String;)V

    .line 145
    .line 146
    .line 147
    return-object p0

    .line 148
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 149
    .line 150
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 151
    .line 152
    .line 153
    throw p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_3
    const-string v0, "Error parsing AVC config"

    .line 155
    .line 156
    invoke-static {v0, p0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    throw p0
.end method
