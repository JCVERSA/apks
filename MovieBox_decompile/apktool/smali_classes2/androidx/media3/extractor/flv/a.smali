.class final Landroidx/media3/extractor/flv/a;
.super Landroidx/media3/extractor/flv/TagPayloadReader;
.source "source.java"


# static fields
.field private static final e:[I


# instance fields
.field private b:Z

.field private c:Z

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/16 v0, 0x5622

    .line 2
    .line 3
    const v1, 0xac44

    .line 4
    .line 5
    .line 6
    const/16 v2, 0x1588

    .line 7
    .line 8
    const/16 v3, 0x2b11

    .line 9
    .line 10
    filled-new-array {v2, v3, v0, v1}, [I

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Landroidx/media3/extractor/flv/a;->e:[I

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Lk2/s0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/extractor/flv/TagPayloadReader;-><init>(Lk2/s0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected b(Landroidx/media3/common/util/j0;)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/media3/extractor/flv/a;->b:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_5

    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->H()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    shr-int/lit8 v0, p1, 0x4

    .line 11
    .line 12
    and-int/lit8 v0, v0, 0xf

    .line 13
    .line 14
    iput v0, p0, Landroidx/media3/extractor/flv/a;->d:I

    .line 15
    .line 16
    const-string v2, "video/x-flv"

    .line 17
    .line 18
    const/4 v3, 0x2

    .line 19
    if-ne v0, v3, :cond_0

    .line 20
    .line 21
    shr-int/2addr p1, v3

    .line 22
    and-int/lit8 p1, p1, 0x3

    .line 23
    .line 24
    sget-object v0, Landroidx/media3/extractor/flv/a;->e:[I

    .line 25
    .line 26
    aget p1, v0, p1

    .line 27
    .line 28
    new-instance v0, Landroidx/media3/common/r$b;

    .line 29
    .line 30
    invoke-direct {v0}, Landroidx/media3/common/r$b;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v2}, Landroidx/media3/common/r$b;->U(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v2, "audio/mpeg"

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->R(I)Landroidx/media3/common/r$b;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0, p1}, Landroidx/media3/common/r$b;->v0(I)Landroidx/media3/common/r$b;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget-object v0, p0, Landroidx/media3/extractor/flv/TagPayloadReader;->a:Lk2/s0;

    .line 56
    .line 57
    invoke-interface {v0, p1}, Lk2/s0;->d(Landroidx/media3/common/r;)V

    .line 58
    .line 59
    .line 60
    iput-boolean v1, p0, Landroidx/media3/extractor/flv/a;->c:Z

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_0
    const/4 p1, 0x7

    .line 64
    if-eq v0, p1, :cond_3

    .line 65
    .line 66
    const/16 v3, 0x8

    .line 67
    .line 68
    if-ne v0, v3, :cond_1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    const/16 p1, 0xa

    .line 72
    .line 73
    if-ne v0, p1, :cond_2

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_2
    new-instance p1, Landroidx/media3/extractor/flv/TagPayloadReader$UnsupportedFormatException;

    .line 77
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v1, "Audio format not supported: "

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget v1, p0, Landroidx/media3/extractor/flv/a;->d:I

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-direct {p1, v0}, Landroidx/media3/extractor/flv/TagPayloadReader$UnsupportedFormatException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p1

    .line 101
    :cond_3
    :goto_0
    if-ne v0, p1, :cond_4

    .line 102
    .line 103
    const-string p1, "audio/g711-alaw"

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_4
    const-string p1, "audio/g711-mlaw"

    .line 107
    .line 108
    :goto_1
    new-instance v0, Landroidx/media3/common/r$b;

    .line 109
    .line 110
    invoke-direct {v0}, Landroidx/media3/common/r$b;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v2}, Landroidx/media3/common/r$b;->U(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v0, p1}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {p1, v1}, Landroidx/media3/common/r$b;->R(I)Landroidx/media3/common/r$b;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    const/16 v0, 0x1f40

    .line 126
    .line 127
    invoke-virtual {p1, v0}, Landroidx/media3/common/r$b;->v0(I)Landroidx/media3/common/r$b;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {p1}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    iget-object v0, p0, Landroidx/media3/extractor/flv/TagPayloadReader;->a:Lk2/s0;

    .line 136
    .line 137
    invoke-interface {v0, p1}, Lk2/s0;->d(Landroidx/media3/common/r;)V

    .line 138
    .line 139
    .line 140
    iput-boolean v1, p0, Landroidx/media3/extractor/flv/a;->c:Z

    .line 141
    .line 142
    :goto_2
    iput-boolean v1, p0, Landroidx/media3/extractor/flv/a;->b:Z

    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_5
    invoke-virtual {p1, v1}, Landroidx/media3/common/util/j0;->X(I)V

    .line 146
    .line 147
    .line 148
    :goto_3
    return v1
.end method

.method protected c(Landroidx/media3/common/util/j0;J)Z
    .locals 12

    .line 1
    iget v0, p0, Landroidx/media3/extractor/flv/a;->d:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->a()I

    .line 8
    .line 9
    .line 10
    move-result v7

    .line 11
    iget-object v0, p0, Landroidx/media3/extractor/flv/TagPayloadReader;->a:Lk2/s0;

    .line 12
    .line 13
    invoke-interface {v0, p1, v7}, Lk2/s0;->c(Landroidx/media3/common/util/j0;I)V

    .line 14
    .line 15
    .line 16
    iget-object v3, p0, Landroidx/media3/extractor/flv/TagPayloadReader;->a:Lk2/s0;

    .line 17
    .line 18
    const/4 v8, 0x0

    .line 19
    const/4 v9, 0x0

    .line 20
    const/4 v6, 0x1

    .line 21
    move-wide v4, p2

    .line 22
    invoke-interface/range {v3 .. v9}, Lk2/s0;->b(JIIILk2/s0$a;)V

    .line 23
    .line 24
    .line 25
    return v2

    .line 26
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->H()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v1, 0x0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    iget-boolean v3, p0, Landroidx/media3/extractor/flv/a;->c:Z

    .line 34
    .line 35
    if-nez v3, :cond_1

    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->a()I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    new-array p3, p2, [B

    .line 42
    .line 43
    invoke-virtual {p1, p3, v1, p2}, Landroidx/media3/common/util/j0;->l([BII)V

    .line 44
    .line 45
    .line 46
    invoke-static {p3}, Lk2/a;->e([B)Lk2/a$b;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    new-instance p2, Landroidx/media3/common/r$b;

    .line 51
    .line 52
    invoke-direct {p2}, Landroidx/media3/common/r$b;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v0, "video/x-flv"

    .line 56
    .line 57
    invoke-virtual {p2, v0}, Landroidx/media3/common/r$b;->U(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    const-string v0, "audio/mp4a-latm"

    .line 62
    .line 63
    invoke-virtual {p2, v0}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    iget-object v0, p1, Lk2/a$b;->c:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {p2, v0}, Landroidx/media3/common/r$b;->S(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    iget v0, p1, Lk2/a$b;->b:I

    .line 74
    .line 75
    invoke-virtual {p2, v0}, Landroidx/media3/common/r$b;->R(I)Landroidx/media3/common/r$b;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    iget p1, p1, Lk2/a$b;->a:I

    .line 80
    .line 81
    invoke-virtual {p2, p1}, Landroidx/media3/common/r$b;->v0(I)Landroidx/media3/common/r$b;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-virtual {p1, p2}, Landroidx/media3/common/r$b;->g0(Ljava/util/List;)Landroidx/media3/common/r$b;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p1}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iget-object p2, p0, Landroidx/media3/extractor/flv/TagPayloadReader;->a:Lk2/s0;

    .line 98
    .line 99
    invoke-interface {p2, p1}, Lk2/s0;->d(Landroidx/media3/common/r;)V

    .line 100
    .line 101
    .line 102
    iput-boolean v2, p0, Landroidx/media3/extractor/flv/a;->c:Z

    .line 103
    .line 104
    return v1

    .line 105
    :cond_1
    iget v3, p0, Landroidx/media3/extractor/flv/a;->d:I

    .line 106
    .line 107
    const/16 v4, 0xa

    .line 108
    .line 109
    if-ne v3, v4, :cond_3

    .line 110
    .line 111
    if-ne v0, v2, :cond_2

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_2
    return v1

    .line 115
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->a()I

    .line 116
    .line 117
    .line 118
    move-result v9

    .line 119
    iget-object v0, p0, Landroidx/media3/extractor/flv/TagPayloadReader;->a:Lk2/s0;

    .line 120
    .line 121
    invoke-interface {v0, p1, v9}, Lk2/s0;->c(Landroidx/media3/common/util/j0;I)V

    .line 122
    .line 123
    .line 124
    iget-object v5, p0, Landroidx/media3/extractor/flv/TagPayloadReader;->a:Lk2/s0;

    .line 125
    .line 126
    const/4 v10, 0x0

    .line 127
    const/4 v11, 0x0

    .line 128
    const/4 v8, 0x1

    .line 129
    move-wide v6, p2

    .line 130
    invoke-interface/range {v5 .. v11}, Lk2/s0;->b(JIIILk2/s0$a;)V

    .line 131
    .line 132
    .line 133
    return v2
.end method
