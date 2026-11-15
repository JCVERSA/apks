.class public final Landroidx/media3/common/util/j0;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final d:[C

.field private static final e:[C

.field private static final f:Lcom/google/common/collect/ImmutableSet;


# instance fields
.field private a:[B

.field private b:I

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [C

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/media3/common/util/j0;->d:[C

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    new-array v0, v0, [C

    .line 11
    .line 12
    const/16 v1, 0xa

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    aput-char v1, v0, v2

    .line 16
    .line 17
    sput-object v0, Landroidx/media3/common/util/j0;->e:[C

    .line 18
    .line 19
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 20
    .line 21
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 22
    .line 23
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    .line 24
    .line 25
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    .line 26
    .line 27
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 28
    .line 29
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Landroidx/media3/common/util/j0;->f:Lcom/google/common/collect/ImmutableSet;

    .line 34
    .line 35
    return-void

    .line 36
    nop

    .line 37
    :array_0
    .array-data 2
        0xds
        0xas
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Landroidx/media3/common/util/a1;->f:[B

    iput-object v0, p0, Landroidx/media3/common/util/j0;->a:[B

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-array v0, p1, [B

    iput-object v0, p0, Landroidx/media3/common/util/j0;->a:[B

    .line 5
    iput p1, p0, Landroidx/media3/common/util/j0;->c:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Landroidx/media3/common/util/j0;->a:[B

    .line 8
    array-length p1, p1

    iput p1, p0, Landroidx/media3/common/util/j0;->c:I

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Landroidx/media3/common/util/j0;->a:[B

    .line 11
    iput p2, p0, Landroidx/media3/common/util/j0;->c:I

    return-void
.end method

.method private Y(Ljava/nio/charset/Charset;)V
    .locals 2

    .line 1
    sget-object v0, Landroidx/media3/common/util/j0;->d:[C

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Landroidx/media3/common/util/j0;->m(Ljava/nio/charset/Charset;[C)C

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0xd

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    sget-object v0, Landroidx/media3/common/util/j0;->e:[C

    .line 12
    .line 13
    invoke-direct {p0, p1, v0}, Landroidx/media3/common/util/j0;->m(Ljava/nio/charset/Charset;[C)C

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private d(Ljava/nio/charset/Charset;)I
    .locals 4

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 44
    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v2, "Unsupported charset: "

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v0

    .line 66
    :cond_2
    :goto_0
    const/4 v0, 0x2

    .line 67
    goto :goto_2

    .line 68
    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 69
    :goto_2
    iget v1, p0, Landroidx/media3/common/util/j0;->b:I

    .line 70
    .line 71
    :goto_3
    iget v2, p0, Landroidx/media3/common/util/j0;->c:I

    .line 72
    .line 73
    add-int/lit8 v3, v0, -0x1

    .line 74
    .line 75
    sub-int v3, v2, v3

    .line 76
    .line 77
    if-ge v1, v3, :cond_9

    .line 78
    .line 79
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 80
    .line 81
    invoke-virtual {p1, v2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-nez v2, :cond_4

    .line 86
    .line 87
    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 88
    .line 89
    invoke-virtual {p1, v2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_5

    .line 94
    .line 95
    :cond_4
    iget-object v2, p0, Landroidx/media3/common/util/j0;->a:[B

    .line 96
    .line 97
    aget-byte v2, v2, v1

    .line 98
    .line 99
    invoke-static {v2}, Landroidx/media3/common/util/a1;->I0(I)Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-eqz v2, :cond_5

    .line 104
    .line 105
    return v1

    .line 106
    :cond_5
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    .line 107
    .line 108
    invoke-virtual {p1, v2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-nez v2, :cond_6

    .line 113
    .line 114
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    .line 115
    .line 116
    invoke-virtual {p1, v2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-eqz v2, :cond_7

    .line 121
    .line 122
    :cond_6
    iget-object v2, p0, Landroidx/media3/common/util/j0;->a:[B

    .line 123
    .line 124
    aget-byte v3, v2, v1

    .line 125
    .line 126
    if-nez v3, :cond_7

    .line 127
    .line 128
    add-int/lit8 v3, v1, 0x1

    .line 129
    .line 130
    aget-byte v2, v2, v3

    .line 131
    .line 132
    invoke-static {v2}, Landroidx/media3/common/util/a1;->I0(I)Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-eqz v2, :cond_7

    .line 137
    .line 138
    return v1

    .line 139
    :cond_7
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 140
    .line 141
    invoke-virtual {p1, v2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    if-eqz v2, :cond_8

    .line 146
    .line 147
    iget-object v2, p0, Landroidx/media3/common/util/j0;->a:[B

    .line 148
    .line 149
    add-int/lit8 v3, v1, 0x1

    .line 150
    .line 151
    aget-byte v3, v2, v3

    .line 152
    .line 153
    if-nez v3, :cond_8

    .line 154
    .line 155
    aget-byte v2, v2, v1

    .line 156
    .line 157
    invoke-static {v2}, Landroidx/media3/common/util/a1;->I0(I)Z

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    if-eqz v2, :cond_8

    .line 162
    .line 163
    return v1

    .line 164
    :cond_8
    add-int/2addr v1, v0

    .line 165
    goto :goto_3

    .line 166
    :cond_9
    return v2
.end method

.method private i(Ljava/nio/charset/Charset;)I
    .locals 5

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->a()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-lt v0, v2, :cond_1

    .line 24
    .line 25
    iget-object p1, p0, Landroidx/media3/common/util/j0;->a:[B

    .line 26
    .line 27
    iget v0, p0, Landroidx/media3/common/util/j0;->b:I

    .line 28
    .line 29
    aget-byte p1, p1, v0

    .line 30
    .line 31
    move v4, v1

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/4 v3, 0x2

    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    :cond_2
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->a()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-lt v0, v3, :cond_3

    .line 55
    .line 56
    iget-object p1, p0, Landroidx/media3/common/util/j0;->a:[B

    .line 57
    .line 58
    iget v0, p0, Landroidx/media3/common/util/j0;->b:I

    .line 59
    .line 60
    aget-byte v4, p1, v0

    .line 61
    .line 62
    add-int/2addr v0, v2

    .line 63
    aget-byte p1, p1, v0

    .line 64
    .line 65
    :goto_0
    move v2, v3

    .line 66
    goto :goto_1

    .line 67
    :cond_3
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_4

    .line 74
    .line 75
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->a()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-lt p1, v3, :cond_4

    .line 80
    .line 81
    iget-object p1, p0, Landroidx/media3/common/util/j0;->a:[B

    .line 82
    .line 83
    iget v0, p0, Landroidx/media3/common/util/j0;->b:I

    .line 84
    .line 85
    add-int/lit8 v2, v0, 0x1

    .line 86
    .line 87
    aget-byte v4, p1, v2

    .line 88
    .line 89
    aget-byte p1, p1, v0

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :goto_1
    invoke-static {v4, p1, v1, v2}, Lcom/google/common/primitives/Ints;->h(BBBB)I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    return p1

    .line 97
    :cond_4
    return v1
.end method

.method private m(Ljava/nio/charset/Charset;[C)C
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/common/util/j0;->i(Ljava/nio/charset/Charset;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    shr-int/lit8 v0, p1, 0x10

    .line 8
    .line 9
    int-to-char v0, v0

    .line 10
    invoke-static {p2, v0}, Lcom/google/common/primitives/Chars;->a([CC)Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    iget p2, p0, Landroidx/media3/common/util/j0;->b:I

    .line 17
    .line 18
    const v1, 0xffff

    .line 19
    .line 20
    .line 21
    and-int/2addr p1, v1

    .line 22
    add-int/2addr p2, p1

    .line 23
    iput p2, p0, Landroidx/media3/common/util/j0;->b:I

    .line 24
    .line 25
    return v0

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    return p1
.end method


# virtual methods
.method public A()J
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/media3/common/util/j0;->a:[B

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/common/util/j0;->b:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Landroidx/media3/common/util/j0;->b:I

    .line 8
    .line 9
    aget-byte v3, v0, v1

    .line 10
    .line 11
    int-to-long v3, v3

    .line 12
    const-wide/16 v5, 0xff

    .line 13
    .line 14
    and-long/2addr v3, v5

    .line 15
    const/16 v7, 0x38

    .line 16
    .line 17
    shl-long/2addr v3, v7

    .line 18
    add-int/lit8 v7, v1, 0x2

    .line 19
    .line 20
    iput v7, p0, Landroidx/media3/common/util/j0;->b:I

    .line 21
    .line 22
    aget-byte v2, v0, v2

    .line 23
    .line 24
    int-to-long v8, v2

    .line 25
    and-long/2addr v8, v5

    .line 26
    const/16 v2, 0x30

    .line 27
    .line 28
    shl-long/2addr v8, v2

    .line 29
    or-long v2, v3, v8

    .line 30
    .line 31
    add-int/lit8 v4, v1, 0x3

    .line 32
    .line 33
    iput v4, p0, Landroidx/media3/common/util/j0;->b:I

    .line 34
    .line 35
    aget-byte v7, v0, v7

    .line 36
    .line 37
    int-to-long v7, v7

    .line 38
    and-long/2addr v7, v5

    .line 39
    const/16 v9, 0x28

    .line 40
    .line 41
    shl-long/2addr v7, v9

    .line 42
    or-long/2addr v2, v7

    .line 43
    add-int/lit8 v7, v1, 0x4

    .line 44
    .line 45
    iput v7, p0, Landroidx/media3/common/util/j0;->b:I

    .line 46
    .line 47
    aget-byte v4, v0, v4

    .line 48
    .line 49
    int-to-long v8, v4

    .line 50
    and-long/2addr v8, v5

    .line 51
    const/16 v4, 0x20

    .line 52
    .line 53
    shl-long/2addr v8, v4

    .line 54
    or-long/2addr v2, v8

    .line 55
    add-int/lit8 v4, v1, 0x5

    .line 56
    .line 57
    iput v4, p0, Landroidx/media3/common/util/j0;->b:I

    .line 58
    .line 59
    aget-byte v7, v0, v7

    .line 60
    .line 61
    int-to-long v7, v7

    .line 62
    and-long/2addr v7, v5

    .line 63
    const/16 v9, 0x18

    .line 64
    .line 65
    shl-long/2addr v7, v9

    .line 66
    or-long/2addr v2, v7

    .line 67
    add-int/lit8 v7, v1, 0x6

    .line 68
    .line 69
    iput v7, p0, Landroidx/media3/common/util/j0;->b:I

    .line 70
    .line 71
    aget-byte v4, v0, v4

    .line 72
    .line 73
    int-to-long v8, v4

    .line 74
    and-long/2addr v8, v5

    .line 75
    const/16 v4, 0x10

    .line 76
    .line 77
    shl-long/2addr v8, v4

    .line 78
    or-long/2addr v2, v8

    .line 79
    add-int/lit8 v4, v1, 0x7

    .line 80
    .line 81
    iput v4, p0, Landroidx/media3/common/util/j0;->b:I

    .line 82
    .line 83
    aget-byte v7, v0, v7

    .line 84
    .line 85
    int-to-long v7, v7

    .line 86
    and-long/2addr v7, v5

    .line 87
    const/16 v9, 0x8

    .line 88
    .line 89
    shl-long/2addr v7, v9

    .line 90
    or-long/2addr v2, v7

    .line 91
    add-int/2addr v1, v9

    .line 92
    iput v1, p0, Landroidx/media3/common/util/j0;->b:I

    .line 93
    .line 94
    aget-byte v0, v0, v4

    .line 95
    .line 96
    int-to-long v0, v0

    .line 97
    and-long/2addr v0, v5

    .line 98
    or-long/2addr v0, v2

    .line 99
    return-wide v0
.end method

.method public B()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->n(C)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method public C(I)Ljava/lang/String;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, ""

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    iget v0, p0, Landroidx/media3/common/util/j0;->b:I

    .line 7
    .line 8
    add-int v1, v0, p1

    .line 9
    .line 10
    add-int/lit8 v1, v1, -0x1

    .line 11
    .line 12
    iget v2, p0, Landroidx/media3/common/util/j0;->c:I

    .line 13
    .line 14
    if-ge v1, v2, :cond_1

    .line 15
    .line 16
    iget-object v2, p0, Landroidx/media3/common/util/j0;->a:[B

    .line 17
    .line 18
    aget-byte v1, v2, v1

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    add-int/lit8 v1, p1, -0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move v1, p1

    .line 26
    :goto_0
    iget-object v2, p0, Landroidx/media3/common/util/j0;->a:[B

    .line 27
    .line 28
    invoke-static {v2, v0, v1}, Landroidx/media3/common/util/a1;->I([BII)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget v1, p0, Landroidx/media3/common/util/j0;->b:I

    .line 33
    .line 34
    add-int/2addr v1, p1

    .line 35
    iput v1, p0, Landroidx/media3/common/util/j0;->b:I

    .line 36
    .line 37
    return-object v0
.end method

.method public D()S
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/common/util/j0;->a:[B

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/common/util/j0;->b:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Landroidx/media3/common/util/j0;->b:I

    .line 8
    .line 9
    aget-byte v3, v0, v1

    .line 10
    .line 11
    and-int/lit16 v3, v3, 0xff

    .line 12
    .line 13
    shl-int/lit8 v3, v3, 0x8

    .line 14
    .line 15
    add-int/lit8 v1, v1, 0x2

    .line 16
    .line 17
    iput v1, p0, Landroidx/media3/common/util/j0;->b:I

    .line 18
    .line 19
    aget-byte v0, v0, v2

    .line 20
    .line 21
    and-int/lit16 v0, v0, 0xff

    .line 22
    .line 23
    or-int/2addr v0, v3

    .line 24
    int-to-short v0, v0

    .line 25
    return v0
.end method

.method public E(I)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/util/j0;->F(ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public F(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/common/util/j0;->a:[B

    .line 4
    .line 5
    iget v2, p0, Landroidx/media3/common/util/j0;->b:I

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p1, p2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 8
    .line 9
    .line 10
    iget p2, p0, Landroidx/media3/common/util/j0;->b:I

    .line 11
    .line 12
    add-int/2addr p2, p1

    .line 13
    iput p2, p0, Landroidx/media3/common/util/j0;->b:I

    .line 14
    .line 15
    return-object v0
.end method

.method public G()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->H()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->H()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->H()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->H()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    shl-int/lit8 v0, v0, 0x15

    .line 18
    .line 19
    shl-int/lit8 v1, v1, 0xe

    .line 20
    .line 21
    or-int/2addr v0, v1

    .line 22
    shl-int/lit8 v1, v2, 0x7

    .line 23
    .line 24
    or-int/2addr v0, v1

    .line 25
    or-int/2addr v0, v3

    .line 26
    return v0
.end method

.method public H()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/common/util/j0;->a:[B

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/common/util/j0;->b:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Landroidx/media3/common/util/j0;->b:I

    .line 8
    .line 9
    aget-byte v0, v0, v1

    .line 10
    .line 11
    and-int/lit16 v0, v0, 0xff

    .line 12
    .line 13
    return v0
.end method

.method public I()I
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/common/util/j0;->a:[B

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/common/util/j0;->b:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Landroidx/media3/common/util/j0;->b:I

    .line 8
    .line 9
    aget-byte v3, v0, v1

    .line 10
    .line 11
    and-int/lit16 v3, v3, 0xff

    .line 12
    .line 13
    shl-int/lit8 v3, v3, 0x8

    .line 14
    .line 15
    add-int/lit8 v4, v1, 0x2

    .line 16
    .line 17
    iput v4, p0, Landroidx/media3/common/util/j0;->b:I

    .line 18
    .line 19
    aget-byte v0, v0, v2

    .line 20
    .line 21
    and-int/lit16 v0, v0, 0xff

    .line 22
    .line 23
    or-int/2addr v0, v3

    .line 24
    add-int/lit8 v1, v1, 0x4

    .line 25
    .line 26
    iput v1, p0, Landroidx/media3/common/util/j0;->b:I

    .line 27
    .line 28
    return v0
.end method

.method public J()J
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/media3/common/util/j0;->a:[B

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/common/util/j0;->b:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Landroidx/media3/common/util/j0;->b:I

    .line 8
    .line 9
    aget-byte v3, v0, v1

    .line 10
    .line 11
    int-to-long v3, v3

    .line 12
    const-wide/16 v5, 0xff

    .line 13
    .line 14
    and-long/2addr v3, v5

    .line 15
    const/16 v7, 0x18

    .line 16
    .line 17
    shl-long/2addr v3, v7

    .line 18
    add-int/lit8 v7, v1, 0x2

    .line 19
    .line 20
    iput v7, p0, Landroidx/media3/common/util/j0;->b:I

    .line 21
    .line 22
    aget-byte v2, v0, v2

    .line 23
    .line 24
    int-to-long v8, v2

    .line 25
    and-long/2addr v8, v5

    .line 26
    const/16 v2, 0x10

    .line 27
    .line 28
    shl-long/2addr v8, v2

    .line 29
    or-long v2, v3, v8

    .line 30
    .line 31
    add-int/lit8 v4, v1, 0x3

    .line 32
    .line 33
    iput v4, p0, Landroidx/media3/common/util/j0;->b:I

    .line 34
    .line 35
    aget-byte v7, v0, v7

    .line 36
    .line 37
    int-to-long v7, v7

    .line 38
    and-long/2addr v7, v5

    .line 39
    const/16 v9, 0x8

    .line 40
    .line 41
    shl-long/2addr v7, v9

    .line 42
    or-long/2addr v2, v7

    .line 43
    add-int/lit8 v1, v1, 0x4

    .line 44
    .line 45
    iput v1, p0, Landroidx/media3/common/util/j0;->b:I

    .line 46
    .line 47
    aget-byte v0, v0, v4

    .line 48
    .line 49
    int-to-long v0, v0

    .line 50
    and-long/2addr v0, v5

    .line 51
    or-long/2addr v0, v2

    .line 52
    return-wide v0
.end method

.method public K()I
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/common/util/j0;->a:[B

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/common/util/j0;->b:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Landroidx/media3/common/util/j0;->b:I

    .line 8
    .line 9
    aget-byte v3, v0, v1

    .line 10
    .line 11
    and-int/lit16 v3, v3, 0xff

    .line 12
    .line 13
    shl-int/lit8 v3, v3, 0x10

    .line 14
    .line 15
    add-int/lit8 v4, v1, 0x2

    .line 16
    .line 17
    iput v4, p0, Landroidx/media3/common/util/j0;->b:I

    .line 18
    .line 19
    aget-byte v2, v0, v2

    .line 20
    .line 21
    and-int/lit16 v2, v2, 0xff

    .line 22
    .line 23
    shl-int/lit8 v2, v2, 0x8

    .line 24
    .line 25
    or-int/2addr v2, v3

    .line 26
    add-int/lit8 v1, v1, 0x3

    .line 27
    .line 28
    iput v1, p0, Landroidx/media3/common/util/j0;->b:I

    .line 29
    .line 30
    aget-byte v0, v0, v4

    .line 31
    .line 32
    and-int/lit16 v0, v0, 0xff

    .line 33
    .line 34
    or-int/2addr v0, v2

    .line 35
    return v0
.end method

.method public L()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v3, "Top bit not zero: "

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw v1
.end method

.method public M()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->N()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->d(J)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public N()J
    .locals 10

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    move-wide v3, v0

    .line 5
    :goto_0
    const/16 v5, 0x9

    .line 6
    .line 7
    if-ge v2, v5, :cond_2

    .line 8
    .line 9
    iget v5, p0, Landroidx/media3/common/util/j0;->b:I

    .line 10
    .line 11
    iget v6, p0, Landroidx/media3/common/util/j0;->c:I

    .line 12
    .line 13
    if-eq v5, v6, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->H()I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    int-to-long v5, v5

    .line 20
    const-wide/16 v7, 0x7f

    .line 21
    .line 22
    and-long/2addr v7, v5

    .line 23
    mul-int/lit8 v9, v2, 0x7

    .line 24
    .line 25
    shl-long/2addr v7, v9

    .line 26
    or-long/2addr v3, v7

    .line 27
    const-wide/16 v7, 0x80

    .line 28
    .line 29
    and-long/2addr v5, v7

    .line 30
    cmp-long v5, v5, v0

    .line 31
    .line 32
    if-nez v5, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 39
    .line 40
    const-string v1, "Attempting to read a byte over the limit."

    .line 41
    .line 42
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v0

    .line 46
    :cond_2
    :goto_1
    return-wide v3
.end method

.method public O()J
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->A()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v2, v0, v2

    .line 8
    .line 9
    if-ltz v2, :cond_0

    .line 10
    .line 11
    return-wide v0

    .line 12
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v4, "Top bit not zero: "

    .line 20
    .line 21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v2
.end method

.method public P()I
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/common/util/j0;->a:[B

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/common/util/j0;->b:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Landroidx/media3/common/util/j0;->b:I

    .line 8
    .line 9
    aget-byte v3, v0, v1

    .line 10
    .line 11
    and-int/lit16 v3, v3, 0xff

    .line 12
    .line 13
    shl-int/lit8 v3, v3, 0x8

    .line 14
    .line 15
    add-int/lit8 v1, v1, 0x2

    .line 16
    .line 17
    iput v1, p0, Landroidx/media3/common/util/j0;->b:I

    .line 18
    .line 19
    aget-byte v0, v0, v2

    .line 20
    .line 21
    and-int/lit16 v0, v0, 0xff

    .line 22
    .line 23
    or-int/2addr v0, v3

    .line 24
    return v0
.end method

.method public Q()J
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/media3/common/util/j0;->a:[B

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/common/util/j0;->b:I

    .line 4
    .line 5
    aget-byte v0, v0, v1

    .line 6
    .line 7
    int-to-long v0, v0

    .line 8
    const/4 v2, 0x7

    .line 9
    move v3, v2

    .line 10
    :goto_0
    const/4 v4, 0x6

    .line 11
    const/4 v5, 0x1

    .line 12
    if-ltz v3, :cond_2

    .line 13
    .line 14
    shl-int v6, v5, v3

    .line 15
    .line 16
    int-to-long v7, v6

    .line 17
    and-long/2addr v7, v0

    .line 18
    const-wide/16 v9, 0x0

    .line 19
    .line 20
    cmp-long v7, v7, v9

    .line 21
    .line 22
    if-nez v7, :cond_1

    .line 23
    .line 24
    if-ge v3, v4, :cond_0

    .line 25
    .line 26
    sub-int/2addr v6, v5

    .line 27
    int-to-long v6, v6

    .line 28
    and-long/2addr v0, v6

    .line 29
    sub-int/2addr v2, v3

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    if-ne v3, v2, :cond_2

    .line 32
    .line 33
    move v2, v5

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    add-int/lit8 v3, v3, -0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const/4 v2, 0x0

    .line 39
    :goto_1
    if-eqz v2, :cond_5

    .line 40
    .line 41
    :goto_2
    if-ge v5, v2, :cond_4

    .line 42
    .line 43
    iget-object v3, p0, Landroidx/media3/common/util/j0;->a:[B

    .line 44
    .line 45
    iget v6, p0, Landroidx/media3/common/util/j0;->b:I

    .line 46
    .line 47
    add-int/2addr v6, v5

    .line 48
    aget-byte v3, v3, v6

    .line 49
    .line 50
    and-int/lit16 v6, v3, 0xc0

    .line 51
    .line 52
    const/16 v7, 0x80

    .line 53
    .line 54
    if-ne v6, v7, :cond_3

    .line 55
    .line 56
    shl-long/2addr v0, v4

    .line 57
    and-int/lit8 v3, v3, 0x3f

    .line 58
    .line 59
    int-to-long v6, v3

    .line 60
    or-long/2addr v0, v6

    .line 61
    add-int/lit8 v5, v5, 0x1

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_3
    new-instance v2, Ljava/lang/NumberFormatException;

    .line 65
    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v4, "Invalid UTF-8 sequence continuation byte: "

    .line 72
    .line 73
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-direct {v2, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw v2

    .line 87
    :cond_4
    iget v3, p0, Landroidx/media3/common/util/j0;->b:I

    .line 88
    .line 89
    add-int/2addr v3, v2

    .line 90
    iput v3, p0, Landroidx/media3/common/util/j0;->b:I

    .line 91
    .line 92
    return-wide v0

    .line 93
    :cond_5
    new-instance v2, Ljava/lang/NumberFormatException;

    .line 94
    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    const-string v4, "Invalid UTF-8 sequence first byte: "

    .line 101
    .line 102
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-direct {v2, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw v2
.end method

.method public R()Ljava/nio/charset/Charset;
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/media3/common/util/j0;->a:[B

    .line 9
    .line 10
    iget v2, p0, Landroidx/media3/common/util/j0;->b:I

    .line 11
    .line 12
    aget-byte v3, v0, v2

    .line 13
    .line 14
    const/16 v4, -0x11

    .line 15
    .line 16
    if-ne v3, v4, :cond_0

    .line 17
    .line 18
    add-int/lit8 v3, v2, 0x1

    .line 19
    .line 20
    aget-byte v3, v0, v3

    .line 21
    .line 22
    const/16 v4, -0x45

    .line 23
    .line 24
    if-ne v3, v4, :cond_0

    .line 25
    .line 26
    add-int/lit8 v3, v2, 0x2

    .line 27
    .line 28
    aget-byte v0, v0, v3

    .line 29
    .line 30
    const/16 v3, -0x41

    .line 31
    .line 32
    if-ne v0, v3, :cond_0

    .line 33
    .line 34
    add-int/2addr v2, v1

    .line 35
    iput v2, p0, Landroidx/media3/common/util/j0;->b:I

    .line 36
    .line 37
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 38
    .line 39
    return-object v0

    .line 40
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->a()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const/4 v1, 0x2

    .line 45
    if-lt v0, v1, :cond_2

    .line 46
    .line 47
    iget-object v0, p0, Landroidx/media3/common/util/j0;->a:[B

    .line 48
    .line 49
    iget v2, p0, Landroidx/media3/common/util/j0;->b:I

    .line 50
    .line 51
    aget-byte v3, v0, v2

    .line 52
    .line 53
    const/4 v4, -0x1

    .line 54
    const/4 v5, -0x2

    .line 55
    if-ne v3, v5, :cond_1

    .line 56
    .line 57
    add-int/lit8 v6, v2, 0x1

    .line 58
    .line 59
    aget-byte v6, v0, v6

    .line 60
    .line 61
    if-ne v6, v4, :cond_1

    .line 62
    .line 63
    add-int/2addr v2, v1

    .line 64
    iput v2, p0, Landroidx/media3/common/util/j0;->b:I

    .line 65
    .line 66
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    .line 67
    .line 68
    return-object v0

    .line 69
    :cond_1
    if-ne v3, v4, :cond_2

    .line 70
    .line 71
    add-int/lit8 v3, v2, 0x1

    .line 72
    .line 73
    aget-byte v0, v0, v3

    .line 74
    .line 75
    if-ne v0, v5, :cond_2

    .line 76
    .line 77
    add-int/2addr v2, v1

    .line 78
    iput v2, p0, Landroidx/media3/common/util/j0;->b:I

    .line 79
    .line 80
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 81
    .line 82
    return-object v0

    .line 83
    :cond_2
    const/4 v0, 0x0

    .line 84
    return-object v0
.end method

.method public S(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->b()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ge v0, p1, :cond_0

    .line 6
    .line 7
    new-array v0, p1, [B

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/media3/common/util/j0;->a:[B

    .line 11
    .line 12
    :goto_0
    invoke-virtual {p0, v0, p1}, Landroidx/media3/common/util/j0;->U([BI)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public T([B)V
    .locals 1

    .line 1
    array-length v0, p1

    .line 2
    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/util/j0;->U([BI)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public U([BI)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/common/util/j0;->a:[B

    .line 2
    .line 3
    iput p2, p0, Landroidx/media3/common/util/j0;->c:I

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    iput p1, p0, Landroidx/media3/common/util/j0;->b:I

    .line 7
    .line 8
    return-void
.end method

.method public V(I)V
    .locals 1

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/media3/common/util/j0;->a:[B

    .line 4
    .line 5
    array-length v0, v0

    .line 6
    if-gt p1, v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/a;->a(Z)V

    .line 12
    .line 13
    .line 14
    iput p1, p0, Landroidx/media3/common/util/j0;->c:I

    .line 15
    .line 16
    return-void
.end method

.method public W(I)V
    .locals 1

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget v0, p0, Landroidx/media3/common/util/j0;->c:I

    .line 4
    .line 5
    if-gt p1, v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/a;->a(Z)V

    .line 11
    .line 12
    .line 13
    iput p1, p0, Landroidx/media3/common/util/j0;->b:I

    .line 14
    .line 15
    return-void
.end method

.method public X(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/common/util/j0;->b:I

    .line 2
    .line 3
    add-int/2addr v0, p1

    .line 4
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public a()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/common/util/j0;->c:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/common/util/j0;->b:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/common/util/j0;->a:[B

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method

.method public c(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->b()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-le p1, v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/common/util/j0;->a:[B

    .line 8
    .line 9
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Landroidx/media3/common/util/j0;->a:[B

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public e()[B
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/common/util/j0;->a:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/common/util/j0;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/common/util/j0;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public h(Ljava/nio/charset/Charset;)C
    .locals 3

    .line 1
    sget-object v0, Landroidx/media3/common/util/j0;->f:Lcom/google/common/collect/ImmutableSet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "Unsupported charset: "

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Landroidx/media3/common/util/a;->b(ZLjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, p1}, Landroidx/media3/common/util/j0;->i(Ljava/nio/charset/Charset;)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    shr-int/lit8 p1, p1, 0x10

    .line 32
    .line 33
    int-to-char p1, p1

    .line 34
    return p1
.end method

.method public j()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/common/util/j0;->a:[B

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/common/util/j0;->b:I

    .line 4
    .line 5
    aget-byte v0, v0, v1

    .line 6
    .line 7
    and-int/lit16 v0, v0, 0xff

    .line 8
    .line 9
    return v0
.end method

.method public k(Landroidx/media3/common/util/i0;I)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroidx/media3/common/util/i0;->a:[B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1, p2}, Landroidx/media3/common/util/j0;->l([BII)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v1}, Landroidx/media3/common/util/i0;->p(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public l([BII)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/common/util/j0;->a:[B

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/common/util/j0;->b:I

    .line 4
    .line 5
    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    .line 7
    .line 8
    iget p1, p0, Landroidx/media3/common/util/j0;->b:I

    .line 9
    .line 10
    add-int/2addr p1, p3

    .line 11
    iput p1, p0, Landroidx/media3/common/util/j0;->b:I

    .line 12
    .line 13
    return-void
.end method

.method public n(C)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    iget v0, p0, Landroidx/media3/common/util/j0;->b:I

    .line 10
    .line 11
    :goto_0
    iget v1, p0, Landroidx/media3/common/util/j0;->c:I

    .line 12
    .line 13
    if-ge v0, v1, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/media3/common/util/j0;->a:[B

    .line 16
    .line 17
    aget-byte v1, v1, v0

    .line 18
    .line 19
    if-eq v1, p1, :cond_1

    .line 20
    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object p1, p0, Landroidx/media3/common/util/j0;->a:[B

    .line 25
    .line 26
    iget v1, p0, Landroidx/media3/common/util/j0;->b:I

    .line 27
    .line 28
    sub-int v2, v0, v1

    .line 29
    .line 30
    invoke-static {p1, v1, v2}, Landroidx/media3/common/util/a1;->I([BII)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput v0, p0, Landroidx/media3/common/util/j0;->b:I

    .line 35
    .line 36
    iget v1, p0, Landroidx/media3/common/util/j0;->c:I

    .line 37
    .line 38
    if-ge v0, v1, :cond_2

    .line 39
    .line 40
    add-int/lit8 v0, v0, 0x1

    .line 41
    .line 42
    iput v0, p0, Landroidx/media3/common/util/j0;->b:I

    .line 43
    .line 44
    :cond_2
    return-object p1
.end method

.method public o()D
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->A()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public p()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public q()I
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/common/util/j0;->a:[B

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/common/util/j0;->b:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Landroidx/media3/common/util/j0;->b:I

    .line 8
    .line 9
    aget-byte v3, v0, v1

    .line 10
    .line 11
    and-int/lit16 v3, v3, 0xff

    .line 12
    .line 13
    shl-int/lit8 v3, v3, 0x18

    .line 14
    .line 15
    add-int/lit8 v4, v1, 0x2

    .line 16
    .line 17
    iput v4, p0, Landroidx/media3/common/util/j0;->b:I

    .line 18
    .line 19
    aget-byte v2, v0, v2

    .line 20
    .line 21
    and-int/lit16 v2, v2, 0xff

    .line 22
    .line 23
    shl-int/lit8 v2, v2, 0x10

    .line 24
    .line 25
    or-int/2addr v2, v3

    .line 26
    add-int/lit8 v3, v1, 0x3

    .line 27
    .line 28
    iput v3, p0, Landroidx/media3/common/util/j0;->b:I

    .line 29
    .line 30
    aget-byte v4, v0, v4

    .line 31
    .line 32
    and-int/lit16 v4, v4, 0xff

    .line 33
    .line 34
    shl-int/lit8 v4, v4, 0x8

    .line 35
    .line 36
    or-int/2addr v2, v4

    .line 37
    add-int/lit8 v1, v1, 0x4

    .line 38
    .line 39
    iput v1, p0, Landroidx/media3/common/util/j0;->b:I

    .line 40
    .line 41
    aget-byte v0, v0, v3

    .line 42
    .line 43
    and-int/lit16 v0, v0, 0xff

    .line 44
    .line 45
    or-int/2addr v0, v2

    .line 46
    return v0
.end method

.method public r()I
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/common/util/j0;->a:[B

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/common/util/j0;->b:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Landroidx/media3/common/util/j0;->b:I

    .line 8
    .line 9
    aget-byte v3, v0, v1

    .line 10
    .line 11
    and-int/lit16 v3, v3, 0xff

    .line 12
    .line 13
    shl-int/lit8 v3, v3, 0x18

    .line 14
    .line 15
    shr-int/lit8 v3, v3, 0x8

    .line 16
    .line 17
    add-int/lit8 v4, v1, 0x2

    .line 18
    .line 19
    iput v4, p0, Landroidx/media3/common/util/j0;->b:I

    .line 20
    .line 21
    aget-byte v2, v0, v2

    .line 22
    .line 23
    and-int/lit16 v2, v2, 0xff

    .line 24
    .line 25
    shl-int/lit8 v2, v2, 0x8

    .line 26
    .line 27
    or-int/2addr v2, v3

    .line 28
    add-int/lit8 v1, v1, 0x3

    .line 29
    .line 30
    iput v1, p0, Landroidx/media3/common/util/j0;->b:I

    .line 31
    .line 32
    aget-byte v0, v0, v4

    .line 33
    .line 34
    and-int/lit16 v0, v0, 0xff

    .line 35
    .line 36
    or-int/2addr v0, v2

    .line 37
    return v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->t(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public t(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Landroidx/media3/common/util/j0;->f:Lcom/google/common/collect/ImmutableSet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "Unsupported charset: "

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Landroidx/media3/common/util/a;->b(ZLjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->a()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    return-object p1

    .line 35
    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->R()Ljava/nio/charset/Charset;

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-direct {p0, p1}, Landroidx/media3/common/util/j0;->d(Ljava/nio/charset/Charset;)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iget v1, p0, Landroidx/media3/common/util/j0;->b:I

    .line 51
    .line 52
    sub-int/2addr v0, v1

    .line 53
    invoke-virtual {p0, v0, p1}, Landroidx/media3/common/util/j0;->F(ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget v1, p0, Landroidx/media3/common/util/j0;->b:I

    .line 58
    .line 59
    iget v2, p0, Landroidx/media3/common/util/j0;->c:I

    .line 60
    .line 61
    if-ne v1, v2, :cond_2

    .line 62
    .line 63
    return-object v0

    .line 64
    :cond_2
    invoke-direct {p0, p1}, Landroidx/media3/common/util/j0;->Y(Ljava/nio/charset/Charset;)V

    .line 65
    .line 66
    .line 67
    return-object v0
.end method

.method public u()I
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/common/util/j0;->a:[B

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/common/util/j0;->b:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Landroidx/media3/common/util/j0;->b:I

    .line 8
    .line 9
    aget-byte v3, v0, v1

    .line 10
    .line 11
    and-int/lit16 v3, v3, 0xff

    .line 12
    .line 13
    add-int/lit8 v4, v1, 0x2

    .line 14
    .line 15
    iput v4, p0, Landroidx/media3/common/util/j0;->b:I

    .line 16
    .line 17
    aget-byte v2, v0, v2

    .line 18
    .line 19
    and-int/lit16 v2, v2, 0xff

    .line 20
    .line 21
    shl-int/lit8 v2, v2, 0x8

    .line 22
    .line 23
    or-int/2addr v2, v3

    .line 24
    add-int/lit8 v3, v1, 0x3

    .line 25
    .line 26
    iput v3, p0, Landroidx/media3/common/util/j0;->b:I

    .line 27
    .line 28
    aget-byte v4, v0, v4

    .line 29
    .line 30
    and-int/lit16 v4, v4, 0xff

    .line 31
    .line 32
    shl-int/lit8 v4, v4, 0x10

    .line 33
    .line 34
    or-int/2addr v2, v4

    .line 35
    add-int/lit8 v1, v1, 0x4

    .line 36
    .line 37
    iput v1, p0, Landroidx/media3/common/util/j0;->b:I

    .line 38
    .line 39
    aget-byte v0, v0, v3

    .line 40
    .line 41
    and-int/lit16 v0, v0, 0xff

    .line 42
    .line 43
    shl-int/lit8 v0, v0, 0x18

    .line 44
    .line 45
    or-int/2addr v0, v2

    .line 46
    return v0
.end method

.method public v()J
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/media3/common/util/j0;->a:[B

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/common/util/j0;->b:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Landroidx/media3/common/util/j0;->b:I

    .line 8
    .line 9
    aget-byte v3, v0, v1

    .line 10
    .line 11
    int-to-long v3, v3

    .line 12
    const-wide/16 v5, 0xff

    .line 13
    .line 14
    and-long/2addr v3, v5

    .line 15
    add-int/lit8 v7, v1, 0x2

    .line 16
    .line 17
    iput v7, p0, Landroidx/media3/common/util/j0;->b:I

    .line 18
    .line 19
    aget-byte v2, v0, v2

    .line 20
    .line 21
    int-to-long v8, v2

    .line 22
    and-long/2addr v8, v5

    .line 23
    const/16 v2, 0x8

    .line 24
    .line 25
    shl-long/2addr v8, v2

    .line 26
    or-long/2addr v3, v8

    .line 27
    add-int/lit8 v8, v1, 0x3

    .line 28
    .line 29
    iput v8, p0, Landroidx/media3/common/util/j0;->b:I

    .line 30
    .line 31
    aget-byte v7, v0, v7

    .line 32
    .line 33
    int-to-long v9, v7

    .line 34
    and-long/2addr v9, v5

    .line 35
    const/16 v7, 0x10

    .line 36
    .line 37
    shl-long/2addr v9, v7

    .line 38
    or-long/2addr v3, v9

    .line 39
    add-int/lit8 v7, v1, 0x4

    .line 40
    .line 41
    iput v7, p0, Landroidx/media3/common/util/j0;->b:I

    .line 42
    .line 43
    aget-byte v8, v0, v8

    .line 44
    .line 45
    int-to-long v8, v8

    .line 46
    and-long/2addr v8, v5

    .line 47
    const/16 v10, 0x18

    .line 48
    .line 49
    shl-long/2addr v8, v10

    .line 50
    or-long/2addr v3, v8

    .line 51
    add-int/lit8 v8, v1, 0x5

    .line 52
    .line 53
    iput v8, p0, Landroidx/media3/common/util/j0;->b:I

    .line 54
    .line 55
    aget-byte v7, v0, v7

    .line 56
    .line 57
    int-to-long v9, v7

    .line 58
    and-long/2addr v9, v5

    .line 59
    const/16 v7, 0x20

    .line 60
    .line 61
    shl-long/2addr v9, v7

    .line 62
    or-long/2addr v3, v9

    .line 63
    add-int/lit8 v7, v1, 0x6

    .line 64
    .line 65
    iput v7, p0, Landroidx/media3/common/util/j0;->b:I

    .line 66
    .line 67
    aget-byte v8, v0, v8

    .line 68
    .line 69
    int-to-long v8, v8

    .line 70
    and-long/2addr v8, v5

    .line 71
    const/16 v10, 0x28

    .line 72
    .line 73
    shl-long/2addr v8, v10

    .line 74
    or-long/2addr v3, v8

    .line 75
    add-int/lit8 v8, v1, 0x7

    .line 76
    .line 77
    iput v8, p0, Landroidx/media3/common/util/j0;->b:I

    .line 78
    .line 79
    aget-byte v7, v0, v7

    .line 80
    .line 81
    int-to-long v9, v7

    .line 82
    and-long/2addr v9, v5

    .line 83
    const/16 v7, 0x30

    .line 84
    .line 85
    shl-long/2addr v9, v7

    .line 86
    or-long/2addr v3, v9

    .line 87
    add-int/2addr v1, v2

    .line 88
    iput v1, p0, Landroidx/media3/common/util/j0;->b:I

    .line 89
    .line 90
    aget-byte v0, v0, v8

    .line 91
    .line 92
    int-to-long v0, v0

    .line 93
    and-long/2addr v0, v5

    .line 94
    const/16 v2, 0x38

    .line 95
    .line 96
    shl-long/2addr v0, v2

    .line 97
    or-long/2addr v0, v3

    .line 98
    return-wide v0
.end method

.method public w()S
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/common/util/j0;->a:[B

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/common/util/j0;->b:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Landroidx/media3/common/util/j0;->b:I

    .line 8
    .line 9
    aget-byte v3, v0, v1

    .line 10
    .line 11
    and-int/lit16 v3, v3, 0xff

    .line 12
    .line 13
    add-int/lit8 v1, v1, 0x2

    .line 14
    .line 15
    iput v1, p0, Landroidx/media3/common/util/j0;->b:I

    .line 16
    .line 17
    aget-byte v0, v0, v2

    .line 18
    .line 19
    and-int/lit16 v0, v0, 0xff

    .line 20
    .line 21
    shl-int/lit8 v0, v0, 0x8

    .line 22
    .line 23
    or-int/2addr v0, v3

    .line 24
    int-to-short v0, v0

    .line 25
    return v0
.end method

.method public x()J
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/media3/common/util/j0;->a:[B

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/common/util/j0;->b:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Landroidx/media3/common/util/j0;->b:I

    .line 8
    .line 9
    aget-byte v3, v0, v1

    .line 10
    .line 11
    int-to-long v3, v3

    .line 12
    const-wide/16 v5, 0xff

    .line 13
    .line 14
    and-long/2addr v3, v5

    .line 15
    add-int/lit8 v7, v1, 0x2

    .line 16
    .line 17
    iput v7, p0, Landroidx/media3/common/util/j0;->b:I

    .line 18
    .line 19
    aget-byte v2, v0, v2

    .line 20
    .line 21
    int-to-long v8, v2

    .line 22
    and-long/2addr v8, v5

    .line 23
    const/16 v2, 0x8

    .line 24
    .line 25
    shl-long/2addr v8, v2

    .line 26
    or-long v2, v3, v8

    .line 27
    .line 28
    add-int/lit8 v4, v1, 0x3

    .line 29
    .line 30
    iput v4, p0, Landroidx/media3/common/util/j0;->b:I

    .line 31
    .line 32
    aget-byte v7, v0, v7

    .line 33
    .line 34
    int-to-long v7, v7

    .line 35
    and-long/2addr v7, v5

    .line 36
    const/16 v9, 0x10

    .line 37
    .line 38
    shl-long/2addr v7, v9

    .line 39
    or-long/2addr v2, v7

    .line 40
    add-int/lit8 v1, v1, 0x4

    .line 41
    .line 42
    iput v1, p0, Landroidx/media3/common/util/j0;->b:I

    .line 43
    .line 44
    aget-byte v0, v0, v4

    .line 45
    .line 46
    int-to-long v0, v0

    .line 47
    and-long/2addr v0, v5

    .line 48
    const/16 v4, 0x18

    .line 49
    .line 50
    shl-long/2addr v0, v4

    .line 51
    or-long/2addr v0, v2

    .line 52
    return-wide v0
.end method

.method public y()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->u()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v3, "Top bit not zero: "

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw v1
.end method

.method public z()I
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/common/util/j0;->a:[B

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/common/util/j0;->b:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Landroidx/media3/common/util/j0;->b:I

    .line 8
    .line 9
    aget-byte v3, v0, v1

    .line 10
    .line 11
    and-int/lit16 v3, v3, 0xff

    .line 12
    .line 13
    add-int/lit8 v1, v1, 0x2

    .line 14
    .line 15
    iput v1, p0, Landroidx/media3/common/util/j0;->b:I

    .line 16
    .line 17
    aget-byte v0, v0, v2

    .line 18
    .line 19
    and-int/lit16 v0, v0, 0xff

    .line 20
    .line 21
    shl-int/lit8 v0, v0, 0x8

    .line 22
    .line 23
    or-int/2addr v0, v3

    .line 24
    return v0
.end method
