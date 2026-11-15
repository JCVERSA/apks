.class public final Ly2/h;
.super Lt2/c;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly2/h$a;,
        Ly2/h$b;
    }
.end annotation


# static fields
.field public static final b:Ly2/h$a;


# instance fields
.field private final a:Ly2/h$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ly2/g;

    .line 2
    .line 3
    invoke-direct {v0}, Ly2/g;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ly2/h;->b:Ly2/h$a;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Ly2/h;-><init>(Ly2/h$a;)V

    return-void
.end method

.method public constructor <init>(Ly2/h$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lt2/c;-><init>()V

    .line 3
    iput-object p1, p0, Ly2/h;->a:Ly2/h$a;

    return-void
.end method

.method private static synthetic A(IIIII)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method private static B(Landroidx/media3/common/util/j0;I)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->e()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->f()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    move v1, p0

    .line 10
    :goto_0
    add-int/lit8 v2, v1, 0x1

    .line 11
    .line 12
    add-int v3, p0, p1

    .line 13
    .line 14
    if-ge v2, v3, :cond_1

    .line 15
    .line 16
    aget-byte v3, v0, v1

    .line 17
    .line 18
    const/16 v4, 0xff

    .line 19
    .line 20
    and-int/2addr v3, v4

    .line 21
    if-ne v3, v4, :cond_0

    .line 22
    .line 23
    aget-byte v3, v0, v2

    .line 24
    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    sub-int v3, v1, p0

    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x2

    .line 30
    .line 31
    sub-int v3, p1, v3

    .line 32
    .line 33
    add-int/lit8 v3, v3, -0x2

    .line 34
    .line 35
    invoke-static {v0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    .line 37
    .line 38
    add-int/lit8 p1, p1, -0x1

    .line 39
    .line 40
    :cond_0
    move v1, v2

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    return p1
.end method

.method private static C(Landroidx/media3/common/util/j0;IIZ)Z
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->f()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    :goto_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->a()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/4 v4, 0x1

    .line 14
    move/from16 v5, p2

    .line 15
    .line 16
    if-lt v3, v5, :cond_c

    .line 17
    .line 18
    const/4 v3, 0x3

    .line 19
    const/4 v6, 0x0

    .line 20
    if-lt v0, v3, :cond_0

    .line 21
    .line 22
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->q()I

    .line 23
    .line 24
    .line 25
    move-result v7

    .line 26
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->J()J

    .line 27
    .line 28
    .line 29
    move-result-wide v8

    .line 30
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->P()I

    .line 31
    .line 32
    .line 33
    move-result v10

    .line 34
    goto :goto_1

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    goto/16 :goto_5

    .line 37
    .line 38
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->K()I

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->K()I

    .line 43
    .line 44
    .line 45
    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    int-to-long v8, v8

    .line 47
    move v10, v6

    .line 48
    :goto_1
    const-wide/16 v11, 0x0

    .line 49
    .line 50
    if-nez v7, :cond_1

    .line 51
    .line 52
    cmp-long v7, v8, v11

    .line 53
    .line 54
    if-nez v7, :cond_1

    .line 55
    .line 56
    if-nez v10, :cond_1

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Landroidx/media3/common/util/j0;->W(I)V

    .line 59
    .line 60
    .line 61
    return v4

    .line 62
    :cond_1
    const/4 v7, 0x4

    .line 63
    if-ne v0, v7, :cond_3

    .line 64
    .line 65
    if-nez p3, :cond_3

    .line 66
    .line 67
    const-wide/32 v13, 0x808080

    .line 68
    .line 69
    .line 70
    and-long/2addr v13, v8

    .line 71
    cmp-long v11, v13, v11

    .line 72
    .line 73
    if-eqz v11, :cond_2

    .line 74
    .line 75
    invoke-virtual {v1, v2}, Landroidx/media3/common/util/j0;->W(I)V

    .line 76
    .line 77
    .line 78
    return v6

    .line 79
    :cond_2
    const-wide/16 v11, 0xff

    .line 80
    .line 81
    and-long v13, v8, v11

    .line 82
    .line 83
    const/16 v15, 0x8

    .line 84
    .line 85
    shr-long v15, v8, v15

    .line 86
    .line 87
    and-long/2addr v15, v11

    .line 88
    const/16 v17, 0x7

    .line 89
    .line 90
    shl-long v15, v15, v17

    .line 91
    .line 92
    or-long/2addr v13, v15

    .line 93
    const/16 v15, 0x10

    .line 94
    .line 95
    shr-long v15, v8, v15

    .line 96
    .line 97
    and-long/2addr v15, v11

    .line 98
    const/16 v17, 0xe

    .line 99
    .line 100
    shl-long v15, v15, v17

    .line 101
    .line 102
    or-long/2addr v13, v15

    .line 103
    const/16 v15, 0x18

    .line 104
    .line 105
    shr-long/2addr v8, v15

    .line 106
    and-long/2addr v8, v11

    .line 107
    const/16 v11, 0x15

    .line 108
    .line 109
    shl-long/2addr v8, v11

    .line 110
    or-long/2addr v8, v13

    .line 111
    :cond_3
    if-ne v0, v7, :cond_6

    .line 112
    .line 113
    and-int/lit8 v3, v10, 0x40

    .line 114
    .line 115
    if-eqz v3, :cond_4

    .line 116
    .line 117
    move v3, v4

    .line 118
    goto :goto_2

    .line 119
    :cond_4
    move v3, v6

    .line 120
    :goto_2
    and-int/lit8 v7, v10, 0x1

    .line 121
    .line 122
    if-eqz v7, :cond_5

    .line 123
    .line 124
    goto :goto_4

    .line 125
    :cond_5
    move v4, v6

    .line 126
    goto :goto_4

    .line 127
    :cond_6
    if-ne v0, v3, :cond_8

    .line 128
    .line 129
    and-int/lit8 v3, v10, 0x20

    .line 130
    .line 131
    if-eqz v3, :cond_7

    .line 132
    .line 133
    move v3, v4

    .line 134
    goto :goto_3

    .line 135
    :cond_7
    move v3, v6

    .line 136
    :goto_3
    and-int/lit16 v7, v10, 0x80

    .line 137
    .line 138
    if-eqz v7, :cond_5

    .line 139
    .line 140
    goto :goto_4

    .line 141
    :cond_8
    move v3, v6

    .line 142
    move v4, v3

    .line 143
    :goto_4
    if-eqz v4, :cond_9

    .line 144
    .line 145
    add-int/lit8 v3, v3, 0x4

    .line 146
    .line 147
    :cond_9
    int-to-long v3, v3

    .line 148
    cmp-long v3, v8, v3

    .line 149
    .line 150
    if-gez v3, :cond_a

    .line 151
    .line 152
    invoke-virtual {v1, v2}, Landroidx/media3/common/util/j0;->W(I)V

    .line 153
    .line 154
    .line 155
    return v6

    .line 156
    :cond_a
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->a()I

    .line 157
    .line 158
    .line 159
    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    int-to-long v3, v3

    .line 161
    cmp-long v3, v3, v8

    .line 162
    .line 163
    if-gez v3, :cond_b

    .line 164
    .line 165
    invoke-virtual {v1, v2}, Landroidx/media3/common/util/j0;->W(I)V

    .line 166
    .line 167
    .line 168
    return v6

    .line 169
    :cond_b
    long-to-int v3, v8

    .line 170
    :try_start_2
    invoke-virtual {v1, v3}, Landroidx/media3/common/util/j0;->X(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 171
    .line 172
    .line 173
    goto/16 :goto_0

    .line 174
    .line 175
    :cond_c
    invoke-virtual {v1, v2}, Landroidx/media3/common/util/j0;->W(I)V

    .line 176
    .line 177
    .line 178
    return v4

    .line 179
    :goto_5
    invoke-virtual {v1, v2}, Landroidx/media3/common/util/j0;->W(I)V

    .line 180
    .line 181
    .line 182
    throw v0
.end method

.method public static synthetic c(IIIII)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Ly2/h;->A(IIIII)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static d([BII)[B
    .locals 0

    .line 1
    if-gt p2, p1, :cond_0

    .line 2
    .line 3
    sget-object p0, Landroidx/media3/common/util/a1;->f:[B

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private static f(Landroidx/media3/common/util/j0;II)Ly2/a;
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->H()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ly2/h;->w(I)Ljava/nio/charset/Charset;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    add-int/lit8 p1, p1, -0x1

    .line 10
    .line 11
    new-array v2, p1, [B

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {p0, v2, v3, p1}, Landroidx/media3/common/util/j0;->l([BII)V

    .line 15
    .line 16
    .line 17
    const-string p0, "image/"

    .line 18
    .line 19
    const/4 v4, 0x2

    .line 20
    if-ne p2, v4, :cond_1

    .line 21
    .line 22
    new-instance p2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    new-instance p0, Ljava/lang/String;

    .line 31
    .line 32
    const/4 v5, 0x3

    .line 33
    sget-object v6, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 34
    .line 35
    invoke-direct {p0, v2, v3, v5, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p0}, Lcom/google/common/base/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const-string p2, "image/jpg"

    .line 50
    .line 51
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    if-eqz p2, :cond_0

    .line 56
    .line 57
    const-string p0, "image/jpeg"

    .line 58
    .line 59
    :cond_0
    move p2, v4

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    invoke-static {v2, v3}, Ly2/h;->z([BI)I

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    new-instance v5, Ljava/lang/String;

    .line 66
    .line 67
    sget-object v6, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 68
    .line 69
    invoke-direct {v5, v2, v3, p2, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 70
    .line 71
    .line 72
    invoke-static {v5}, Lcom/google/common/base/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    const/16 v5, 0x2f

    .line 77
    .line 78
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    const/4 v6, -0x1

    .line 83
    if-ne v5, v6, :cond_2

    .line 84
    .line 85
    new-instance v5, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    goto :goto_0

    .line 101
    :cond_2
    move-object p0, v3

    .line 102
    :goto_0
    add-int/lit8 v3, p2, 0x1

    .line 103
    .line 104
    aget-byte v3, v2, v3

    .line 105
    .line 106
    and-int/lit16 v3, v3, 0xff

    .line 107
    .line 108
    add-int/2addr p2, v4

    .line 109
    invoke-static {v2, p2, v0}, Ly2/h;->y([BII)I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    new-instance v5, Ljava/lang/String;

    .line 114
    .line 115
    sub-int v6, v4, p2

    .line 116
    .line 117
    invoke-direct {v5, v2, p2, v6, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 118
    .line 119
    .line 120
    invoke-static {v0}, Ly2/h;->v(I)I

    .line 121
    .line 122
    .line 123
    move-result p2

    .line 124
    add-int/2addr v4, p2

    .line 125
    invoke-static {v2, v4, p1}, Ly2/h;->d([BII)[B

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    new-instance p2, Ly2/a;

    .line 130
    .line 131
    invoke-direct {p2, p0, v5, v3, p1}, Ly2/a;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    .line 132
    .line 133
    .line 134
    return-object p2
.end method

.method private static g(Landroidx/media3/common/util/j0;ILjava/lang/String;)Ly2/b;
    .locals 2

    .line 1
    new-array v0, p1, [B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1, p1}, Landroidx/media3/common/util/j0;->l([BII)V

    .line 5
    .line 6
    .line 7
    new-instance p0, Ly2/b;

    .line 8
    .line 9
    invoke-direct {p0, p2, v0}, Ly2/b;-><init>(Ljava/lang/String;[B)V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method private static h(Landroidx/media3/common/util/j0;IIZILy2/h$a;)Ly2/c;
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->f()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->e()[B

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-static {v2, v1}, Ly2/h;->z([BI)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    new-instance v4, Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->e()[B

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    sub-int v5, v2, v1

    .line 21
    .line 22
    sget-object v6, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 23
    .line 24
    invoke-direct {v4, v3, v1, v5, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 25
    .line 26
    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/j0;->W(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->J()J

    .line 41
    .line 42
    .line 43
    move-result-wide v2

    .line 44
    const-wide v7, 0xffffffffL

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    cmp-long v9, v2, v7

    .line 50
    .line 51
    const-wide/16 v10, -0x1

    .line 52
    .line 53
    if-nez v9, :cond_0

    .line 54
    .line 55
    move-wide v12, v10

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    move-wide v12, v2

    .line 58
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->J()J

    .line 59
    .line 60
    .line 61
    move-result-wide v2

    .line 62
    cmp-long v7, v2, v7

    .line 63
    .line 64
    if-nez v7, :cond_1

    .line 65
    .line 66
    move-wide v9, v10

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    move-wide v9, v2

    .line 69
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .line 73
    .line 74
    add-int v1, v1, p1

    .line 75
    .line 76
    :cond_2
    :goto_2
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->f()I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-ge v3, v1, :cond_3

    .line 81
    .line 82
    move/from16 v3, p2

    .line 83
    .line 84
    move/from16 v7, p3

    .line 85
    .line 86
    move/from16 v8, p4

    .line 87
    .line 88
    move-object/from16 v11, p5

    .line 89
    .line 90
    invoke-static {v3, p0, v7, v8, v11}, Ly2/h;->k(ILandroidx/media3/common/util/j0;ZILy2/h$a;)Ly2/i;

    .line 91
    .line 92
    .line 93
    move-result-object v14

    .line 94
    if-eqz v14, :cond_2

    .line 95
    .line 96
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_3
    const/4 v0, 0x0

    .line 101
    new-array v0, v0, [Ly2/i;

    .line 102
    .line 103
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    move-object v11, v0

    .line 108
    check-cast v11, [Ly2/i;

    .line 109
    .line 110
    new-instance v0, Ly2/c;

    .line 111
    .line 112
    move-object v3, v0

    .line 113
    move-wide v7, v12

    .line 114
    invoke-direct/range {v3 .. v11}, Ly2/c;-><init>(Ljava/lang/String;IIJJ[Ly2/i;)V

    .line 115
    .line 116
    .line 117
    return-object v0
.end method

.method private static i(Landroidx/media3/common/util/j0;IIZILy2/h$a;)Ly2/d;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->f()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->e()[B

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {v2, v1}, Ly2/h;->z([BI)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    new-instance v3, Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->e()[B

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    sub-int v5, v2, v1

    .line 22
    .line 23
    sget-object v6, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 24
    .line 25
    invoke-direct {v3, v4, v1, v5, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 26
    .line 27
    .line 28
    const/4 v4, 0x1

    .line 29
    add-int/2addr v2, v4

    .line 30
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/j0;->W(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->H()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    and-int/lit8 v5, v2, 0x2

    .line 38
    .line 39
    const/4 v6, 0x0

    .line 40
    if-eqz v5, :cond_0

    .line 41
    .line 42
    move v5, v4

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move v5, v6

    .line 45
    :goto_0
    and-int/2addr v2, v4

    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    move v2, v4

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    move v2, v6

    .line 51
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->H()I

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    new-array v8, v7, [Ljava/lang/String;

    .line 56
    .line 57
    move v9, v6

    .line 58
    :goto_2
    if-ge v9, v7, :cond_2

    .line 59
    .line 60
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->f()I

    .line 61
    .line 62
    .line 63
    move-result v10

    .line 64
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->e()[B

    .line 65
    .line 66
    .line 67
    move-result-object v11

    .line 68
    invoke-static {v11, v10}, Ly2/h;->z([BI)I

    .line 69
    .line 70
    .line 71
    move-result v11

    .line 72
    new-instance v12, Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->e()[B

    .line 75
    .line 76
    .line 77
    move-result-object v13

    .line 78
    sub-int v14, v11, v10

    .line 79
    .line 80
    sget-object v15, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 81
    .line 82
    invoke-direct {v12, v13, v10, v14, v15}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 83
    .line 84
    .line 85
    aput-object v12, v8, v9

    .line 86
    .line 87
    add-int/2addr v11, v4

    .line 88
    invoke-virtual {v0, v11}, Landroidx/media3/common/util/j0;->W(I)V

    .line 89
    .line 90
    .line 91
    add-int/lit8 v9, v9, 0x1

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .line 98
    .line 99
    add-int v1, v1, p1

    .line 100
    .line 101
    :cond_3
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->f()I

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    if-ge v7, v1, :cond_4

    .line 106
    .line 107
    move/from16 v7, p2

    .line 108
    .line 109
    move/from16 v9, p3

    .line 110
    .line 111
    move/from16 v10, p4

    .line 112
    .line 113
    move-object/from16 v11, p5

    .line 114
    .line 115
    invoke-static {v7, v0, v9, v10, v11}, Ly2/h;->k(ILandroidx/media3/common/util/j0;ZILy2/h$a;)Ly2/i;

    .line 116
    .line 117
    .line 118
    move-result-object v12

    .line 119
    if-eqz v12, :cond_3

    .line 120
    .line 121
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_4
    new-array v0, v6, [Ly2/i;

    .line 126
    .line 127
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    check-cast v0, [Ly2/i;

    .line 132
    .line 133
    new-instance v1, Ly2/d;

    .line 134
    .line 135
    move-object/from16 p0, v1

    .line 136
    .line 137
    move-object/from16 p1, v3

    .line 138
    .line 139
    move/from16 p2, v5

    .line 140
    .line 141
    move/from16 p3, v2

    .line 142
    .line 143
    move-object/from16 p4, v8

    .line 144
    .line 145
    move-object/from16 p5, v0

    .line 146
    .line 147
    invoke-direct/range {p0 .. p5}, Ly2/d;-><init>(Ljava/lang/String;ZZ[Ljava/lang/String;[Ly2/i;)V

    .line 148
    .line 149
    .line 150
    return-object v1
.end method

.method private static j(Landroidx/media3/common/util/j0;I)Ly2/e;
    .locals 7

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ge p1, v0, :cond_0

    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->H()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Ly2/h;->w(I)Ljava/nio/charset/Charset;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x3

    .line 15
    new-array v4, v3, [B

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    invoke-virtual {p0, v4, v5, v3}, Landroidx/media3/common/util/j0;->l([BII)V

    .line 19
    .line 20
    .line 21
    new-instance v6, Ljava/lang/String;

    .line 22
    .line 23
    invoke-direct {v6, v4, v5, v3}, Ljava/lang/String;-><init>([BII)V

    .line 24
    .line 25
    .line 26
    sub-int/2addr p1, v0

    .line 27
    new-array v0, p1, [B

    .line 28
    .line 29
    invoke-virtual {p0, v0, v5, p1}, Landroidx/media3/common/util/j0;->l([BII)V

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v5, v1}, Ly2/h;->y([BII)I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    new-instance p1, Ljava/lang/String;

    .line 37
    .line 38
    invoke-direct {p1, v0, v5, p0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v1}, Ly2/h;->v(I)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    add-int/2addr p0, v3

    .line 46
    invoke-static {v0, p0, v1}, Ly2/h;->y([BII)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-static {v0, p0, v1, v2}, Ly2/h;->p([BIILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    new-instance v0, Ly2/e;

    .line 55
    .line 56
    invoke-direct {v0, v6, p1, p0}, Ly2/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-object v0
.end method

.method private static k(ILandroidx/media3/common/util/j0;ZILy2/h$a;)Ly2/i;
    .locals 20

    .line 1
    move/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->H()I

    .line 6
    .line 7
    .line 8
    move-result v9

    .line 9
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->H()I

    .line 10
    .line 11
    .line 12
    move-result v10

    .line 13
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->H()I

    .line 14
    .line 15
    .line 16
    move-result v11

    .line 17
    const/4 v12, 0x3

    .line 18
    if-lt v7, v12, :cond_0

    .line 19
    .line 20
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->H()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    move v13, v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v13, 0x0

    .line 27
    :goto_0
    const/4 v14, 0x4

    .line 28
    if-ne v7, v14, :cond_2

    .line 29
    .line 30
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->L()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez p2, :cond_1

    .line 35
    .line 36
    and-int/lit16 v2, v1, 0xff

    .line 37
    .line 38
    shr-int/lit8 v3, v1, 0x8

    .line 39
    .line 40
    and-int/lit16 v3, v3, 0xff

    .line 41
    .line 42
    shl-int/lit8 v3, v3, 0x7

    .line 43
    .line 44
    or-int/2addr v2, v3

    .line 45
    shr-int/lit8 v3, v1, 0x10

    .line 46
    .line 47
    and-int/lit16 v3, v3, 0xff

    .line 48
    .line 49
    shl-int/lit8 v3, v3, 0xe

    .line 50
    .line 51
    or-int/2addr v2, v3

    .line 52
    shr-int/lit8 v1, v1, 0x18

    .line 53
    .line 54
    and-int/lit16 v1, v1, 0xff

    .line 55
    .line 56
    shl-int/lit8 v1, v1, 0x15

    .line 57
    .line 58
    or-int/2addr v1, v2

    .line 59
    :cond_1
    :goto_1
    move v15, v1

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    if-ne v7, v12, :cond_3

    .line 62
    .line 63
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->L()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    goto :goto_1

    .line 68
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->K()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    goto :goto_1

    .line 73
    :goto_2
    if-lt v7, v12, :cond_4

    .line 74
    .line 75
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->P()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    move v6, v1

    .line 80
    goto :goto_3

    .line 81
    :cond_4
    const/4 v6, 0x0

    .line 82
    :goto_3
    const/16 v16, 0x0

    .line 83
    .line 84
    if-nez v9, :cond_5

    .line 85
    .line 86
    if-nez v10, :cond_5

    .line 87
    .line 88
    if-nez v11, :cond_5

    .line 89
    .line 90
    if-nez v13, :cond_5

    .line 91
    .line 92
    if-nez v15, :cond_5

    .line 93
    .line 94
    if-nez v6, :cond_5

    .line 95
    .line 96
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->g()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    invoke-virtual {v8, v0}, Landroidx/media3/common/util/j0;->W(I)V

    .line 101
    .line 102
    .line 103
    return-object v16

    .line 104
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->f()I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    add-int v5, v1, v15

    .line 109
    .line 110
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->g()I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    const-string v4, "Id3Decoder"

    .line 115
    .line 116
    if-le v5, v1, :cond_6

    .line 117
    .line 118
    const-string v0, "Frame size exceeds remaining tag data"

    .line 119
    .line 120
    invoke-static {v4, v0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->g()I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    invoke-virtual {v8, v0}, Landroidx/media3/common/util/j0;->W(I)V

    .line 128
    .line 129
    .line 130
    return-object v16

    .line 131
    :cond_6
    if-eqz p4, :cond_7

    .line 132
    .line 133
    move-object/from16 v1, p4

    .line 134
    .line 135
    move/from16 v2, p0

    .line 136
    .line 137
    move v3, v9

    .line 138
    move-object/from16 v17, v4

    .line 139
    .line 140
    move v4, v10

    .line 141
    move v14, v5

    .line 142
    move v5, v11

    .line 143
    move v0, v6

    .line 144
    move v6, v13

    .line 145
    invoke-interface/range {v1 .. v6}, Ly2/h$a;->evaluate(IIIII)Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-nez v1, :cond_8

    .line 150
    .line 151
    invoke-virtual {v8, v14}, Landroidx/media3/common/util/j0;->W(I)V

    .line 152
    .line 153
    .line 154
    return-object v16

    .line 155
    :cond_7
    move-object/from16 v17, v4

    .line 156
    .line 157
    move v14, v5

    .line 158
    move v0, v6

    .line 159
    :cond_8
    const/4 v1, 0x1

    .line 160
    if-ne v7, v12, :cond_c

    .line 161
    .line 162
    and-int/lit16 v2, v0, 0x80

    .line 163
    .line 164
    if-eqz v2, :cond_9

    .line 165
    .line 166
    move v2, v1

    .line 167
    goto :goto_4

    .line 168
    :cond_9
    const/4 v2, 0x0

    .line 169
    :goto_4
    and-int/lit8 v3, v0, 0x40

    .line 170
    .line 171
    if-eqz v3, :cond_a

    .line 172
    .line 173
    move v3, v1

    .line 174
    goto :goto_5

    .line 175
    :cond_a
    const/4 v3, 0x0

    .line 176
    :goto_5
    and-int/lit8 v0, v0, 0x20

    .line 177
    .line 178
    if-eqz v0, :cond_b

    .line 179
    .line 180
    move v0, v1

    .line 181
    goto :goto_6

    .line 182
    :cond_b
    const/4 v0, 0x0

    .line 183
    :goto_6
    move/from16 v18, v2

    .line 184
    .line 185
    const/4 v5, 0x0

    .line 186
    move v2, v0

    .line 187
    move/from16 v0, v18

    .line 188
    .line 189
    goto :goto_c

    .line 190
    :cond_c
    const/4 v2, 0x4

    .line 191
    if-ne v7, v2, :cond_12

    .line 192
    .line 193
    and-int/lit8 v2, v0, 0x40

    .line 194
    .line 195
    if-eqz v2, :cond_d

    .line 196
    .line 197
    move v2, v1

    .line 198
    goto :goto_7

    .line 199
    :cond_d
    const/4 v2, 0x0

    .line 200
    :goto_7
    and-int/lit8 v3, v0, 0x8

    .line 201
    .line 202
    if-eqz v3, :cond_e

    .line 203
    .line 204
    move v3, v1

    .line 205
    goto :goto_8

    .line 206
    :cond_e
    const/4 v3, 0x0

    .line 207
    :goto_8
    and-int/lit8 v4, v0, 0x4

    .line 208
    .line 209
    if-eqz v4, :cond_f

    .line 210
    .line 211
    move v4, v1

    .line 212
    goto :goto_9

    .line 213
    :cond_f
    const/4 v4, 0x0

    .line 214
    :goto_9
    and-int/lit8 v5, v0, 0x2

    .line 215
    .line 216
    if-eqz v5, :cond_10

    .line 217
    .line 218
    move v5, v1

    .line 219
    goto :goto_a

    .line 220
    :cond_10
    const/4 v5, 0x0

    .line 221
    :goto_a
    and-int/2addr v0, v1

    .line 222
    if-eqz v0, :cond_11

    .line 223
    .line 224
    move v0, v1

    .line 225
    goto :goto_b

    .line 226
    :cond_11
    const/4 v0, 0x0

    .line 227
    :goto_b
    move/from16 v18, v0

    .line 228
    .line 229
    move v0, v3

    .line 230
    move v3, v4

    .line 231
    goto :goto_c

    .line 232
    :cond_12
    const/4 v0, 0x0

    .line 233
    const/4 v2, 0x0

    .line 234
    const/4 v3, 0x0

    .line 235
    const/4 v5, 0x0

    .line 236
    const/16 v18, 0x0

    .line 237
    .line 238
    :goto_c
    if-nez v0, :cond_13

    .line 239
    .line 240
    if-eqz v3, :cond_14

    .line 241
    .line 242
    :cond_13
    move-object/from16 v2, v17

    .line 243
    .line 244
    goto/16 :goto_12

    .line 245
    .line 246
    :cond_14
    if-eqz v2, :cond_15

    .line 247
    .line 248
    add-int/lit8 v15, v15, -0x1

    .line 249
    .line 250
    invoke-virtual {v8, v1}, Landroidx/media3/common/util/j0;->X(I)V

    .line 251
    .line 252
    .line 253
    :cond_15
    if-eqz v18, :cond_16

    .line 254
    .line 255
    add-int/lit8 v15, v15, -0x4

    .line 256
    .line 257
    const/4 v0, 0x4

    .line 258
    invoke-virtual {v8, v0}, Landroidx/media3/common/util/j0;->X(I)V

    .line 259
    .line 260
    .line 261
    :cond_16
    if-eqz v5, :cond_17

    .line 262
    .line 263
    invoke-static {v8, v15}, Ly2/h;->B(Landroidx/media3/common/util/j0;I)I

    .line 264
    .line 265
    .line 266
    move-result v15

    .line 267
    :cond_17
    const/16 v0, 0x54

    .line 268
    .line 269
    const/16 v1, 0x58

    .line 270
    .line 271
    const/4 v2, 0x2

    .line 272
    if-ne v9, v0, :cond_19

    .line 273
    .line 274
    if-ne v10, v1, :cond_19

    .line 275
    .line 276
    if-ne v11, v1, :cond_19

    .line 277
    .line 278
    if-eq v7, v2, :cond_18

    .line 279
    .line 280
    if-ne v13, v1, :cond_19

    .line 281
    .line 282
    :cond_18
    :try_start_0
    invoke-static {v8, v15}, Ly2/h;->s(Landroidx/media3/common/util/j0;I)Ly2/n;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    goto/16 :goto_e

    .line 287
    .line 288
    :catchall_0
    move-exception v0

    .line 289
    goto/16 :goto_f

    .line 290
    .line 291
    :catch_0
    move-exception v0

    .line 292
    goto/16 :goto_10

    .line 293
    .line 294
    :catch_1
    move-exception v0

    .line 295
    goto/16 :goto_10

    .line 296
    .line 297
    :cond_19
    if-ne v9, v0, :cond_1a

    .line 298
    .line 299
    invoke-static {v7, v9, v10, v11, v13}, Ly2/h;->x(IIIII)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    invoke-static {v8, v15, v0}, Ly2/h;->q(Landroidx/media3/common/util/j0;ILjava/lang/String;)Ly2/n;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    goto/16 :goto_e

    .line 308
    .line 309
    :cond_1a
    const/16 v3, 0x57

    .line 310
    .line 311
    if-ne v9, v3, :cond_1c

    .line 312
    .line 313
    if-ne v10, v1, :cond_1c

    .line 314
    .line 315
    if-ne v11, v1, :cond_1c

    .line 316
    .line 317
    if-eq v7, v2, :cond_1b

    .line 318
    .line 319
    if-ne v13, v1, :cond_1c

    .line 320
    .line 321
    :cond_1b
    invoke-static {v8, v15}, Ly2/h;->u(Landroidx/media3/common/util/j0;I)Ly2/o;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    goto/16 :goto_e

    .line 326
    .line 327
    :cond_1c
    if-ne v9, v3, :cond_1d

    .line 328
    .line 329
    invoke-static {v7, v9, v10, v11, v13}, Ly2/h;->x(IIIII)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    invoke-static {v8, v15, v0}, Ly2/h;->t(Landroidx/media3/common/util/j0;ILjava/lang/String;)Ly2/o;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    goto/16 :goto_e

    .line 338
    .line 339
    :cond_1d
    const/16 v1, 0x49

    .line 340
    .line 341
    const/16 v3, 0x50

    .line 342
    .line 343
    if-ne v9, v3, :cond_1e

    .line 344
    .line 345
    const/16 v4, 0x52

    .line 346
    .line 347
    if-ne v10, v4, :cond_1e

    .line 348
    .line 349
    if-ne v11, v1, :cond_1e

    .line 350
    .line 351
    const/16 v4, 0x56

    .line 352
    .line 353
    if-ne v13, v4, :cond_1e

    .line 354
    .line 355
    invoke-static {v8, v15}, Ly2/h;->o(Landroidx/media3/common/util/j0;I)Ly2/m;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    goto/16 :goto_e

    .line 360
    .line 361
    :cond_1e
    const/16 v4, 0x47

    .line 362
    .line 363
    const/16 v5, 0x4f

    .line 364
    .line 365
    if-ne v9, v4, :cond_20

    .line 366
    .line 367
    const/16 v4, 0x45

    .line 368
    .line 369
    if-ne v10, v4, :cond_20

    .line 370
    .line 371
    if-ne v11, v5, :cond_20

    .line 372
    .line 373
    const/16 v4, 0x42

    .line 374
    .line 375
    if-eq v13, v4, :cond_1f

    .line 376
    .line 377
    if-ne v7, v2, :cond_20

    .line 378
    .line 379
    :cond_1f
    invoke-static {v8, v15}, Ly2/h;->l(Landroidx/media3/common/util/j0;I)Ly2/f;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    goto/16 :goto_e

    .line 384
    .line 385
    :cond_20
    const/16 v4, 0x41

    .line 386
    .line 387
    const/16 v6, 0x43

    .line 388
    .line 389
    if-ne v7, v2, :cond_21

    .line 390
    .line 391
    if-ne v9, v3, :cond_22

    .line 392
    .line 393
    if-ne v10, v1, :cond_22

    .line 394
    .line 395
    if-ne v11, v6, :cond_22

    .line 396
    .line 397
    goto :goto_d

    .line 398
    :cond_21
    if-ne v9, v4, :cond_22

    .line 399
    .line 400
    if-ne v10, v3, :cond_22

    .line 401
    .line 402
    if-ne v11, v1, :cond_22

    .line 403
    .line 404
    if-ne v13, v6, :cond_22

    .line 405
    .line 406
    :goto_d
    invoke-static {v8, v15, v7}, Ly2/h;->f(Landroidx/media3/common/util/j0;II)Ly2/a;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    goto/16 :goto_e

    .line 411
    .line 412
    :cond_22
    const/16 v1, 0x4d

    .line 413
    .line 414
    if-ne v9, v6, :cond_24

    .line 415
    .line 416
    if-ne v10, v5, :cond_24

    .line 417
    .line 418
    if-ne v11, v1, :cond_24

    .line 419
    .line 420
    if-eq v13, v1, :cond_23

    .line 421
    .line 422
    if-ne v7, v2, :cond_24

    .line 423
    .line 424
    :cond_23
    invoke-static {v8, v15}, Ly2/h;->j(Landroidx/media3/common/util/j0;I)Ly2/e;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    goto :goto_e

    .line 429
    :cond_24
    if-ne v9, v6, :cond_25

    .line 430
    .line 431
    const/16 v2, 0x48

    .line 432
    .line 433
    if-ne v10, v2, :cond_25

    .line 434
    .line 435
    if-ne v11, v4, :cond_25

    .line 436
    .line 437
    if-ne v13, v3, :cond_25

    .line 438
    .line 439
    move-object/from16 v1, p1

    .line 440
    .line 441
    move v2, v15

    .line 442
    move/from16 v3, p0

    .line 443
    .line 444
    move/from16 v4, p2

    .line 445
    .line 446
    move/from16 v5, p3

    .line 447
    .line 448
    move-object/from16 v6, p4

    .line 449
    .line 450
    invoke-static/range {v1 .. v6}, Ly2/h;->h(Landroidx/media3/common/util/j0;IIZILy2/h$a;)Ly2/c;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    goto :goto_e

    .line 455
    :cond_25
    if-ne v9, v6, :cond_26

    .line 456
    .line 457
    if-ne v10, v0, :cond_26

    .line 458
    .line 459
    if-ne v11, v5, :cond_26

    .line 460
    .line 461
    if-ne v13, v6, :cond_26

    .line 462
    .line 463
    move-object/from16 v1, p1

    .line 464
    .line 465
    move v2, v15

    .line 466
    move/from16 v3, p0

    .line 467
    .line 468
    move/from16 v4, p2

    .line 469
    .line 470
    move/from16 v5, p3

    .line 471
    .line 472
    move-object/from16 v6, p4

    .line 473
    .line 474
    invoke-static/range {v1 .. v6}, Ly2/h;->i(Landroidx/media3/common/util/j0;IIZILy2/h$a;)Ly2/d;

    .line 475
    .line 476
    .line 477
    move-result-object v0

    .line 478
    goto :goto_e

    .line 479
    :cond_26
    if-ne v9, v1, :cond_27

    .line 480
    .line 481
    const/16 v1, 0x4c

    .line 482
    .line 483
    if-ne v10, v1, :cond_27

    .line 484
    .line 485
    if-ne v11, v1, :cond_27

    .line 486
    .line 487
    if-ne v13, v0, :cond_27

    .line 488
    .line 489
    invoke-static {v8, v15}, Ly2/h;->n(Landroidx/media3/common/util/j0;I)Ly2/l;

    .line 490
    .line 491
    .line 492
    move-result-object v0

    .line 493
    goto :goto_e

    .line 494
    :cond_27
    invoke-static {v7, v9, v10, v11, v13}, Ly2/h;->x(IIIII)Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    invoke-static {v8, v15, v0}, Ly2/h;->g(Landroidx/media3/common/util/j0;ILjava/lang/String;)Ly2/b;

    .line 499
    .line 500
    .line 501
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    :goto_e
    invoke-virtual {v8, v14}, Landroidx/media3/common/util/j0;->W(I)V

    .line 503
    .line 504
    .line 505
    move-object/from16 v19, v16

    .line 506
    .line 507
    move-object/from16 v16, v0

    .line 508
    .line 509
    move-object/from16 v0, v19

    .line 510
    .line 511
    goto :goto_11

    .line 512
    :goto_f
    invoke-virtual {v8, v14}, Landroidx/media3/common/util/j0;->W(I)V

    .line 513
    .line 514
    .line 515
    throw v0

    .line 516
    :goto_10
    invoke-virtual {v8, v14}, Landroidx/media3/common/util/j0;->W(I)V

    .line 517
    .line 518
    .line 519
    :goto_11
    if-nez v16, :cond_28

    .line 520
    .line 521
    new-instance v1, Ljava/lang/StringBuilder;

    .line 522
    .line 523
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 524
    .line 525
    .line 526
    const-string v2, "Failed to decode frame: id="

    .line 527
    .line 528
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    invoke-static {v7, v9, v10, v11, v13}, Ly2/h;->x(IIIII)Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v2

    .line 535
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    const-string v2, ", frameSize="

    .line 539
    .line 540
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v1

    .line 550
    move-object/from16 v2, v17

    .line 551
    .line 552
    invoke-static {v2, v1, v0}, Landroidx/media3/common/util/u;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 553
    .line 554
    .line 555
    :cond_28
    return-object v16

    .line 556
    :goto_12
    const-string v0, "Skipping unsupported compressed or encrypted frame"

    .line 557
    .line 558
    invoke-static {v2, v0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    invoke-virtual {v8, v14}, Landroidx/media3/common/util/j0;->W(I)V

    .line 562
    .line 563
    .line 564
    return-object v16
.end method

.method private static l(Landroidx/media3/common/util/j0;I)Ly2/f;
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->H()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ly2/h;->w(I)Ljava/nio/charset/Charset;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    add-int/lit8 p1, p1, -0x1

    .line 10
    .line 11
    new-array v2, p1, [B

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {p0, v2, v3, p1}, Landroidx/media3/common/util/j0;->l([BII)V

    .line 15
    .line 16
    .line 17
    invoke-static {v2, v3}, Ly2/h;->z([BI)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    new-instance v4, Ljava/lang/String;

    .line 22
    .line 23
    sget-object v5, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 24
    .line 25
    invoke-direct {v4, v2, v3, p0, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v4}, Landroidx/media3/common/y;->u(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    add-int/lit8 p0, p0, 0x1

    .line 33
    .line 34
    invoke-static {v2, p0, v0}, Ly2/h;->y([BII)I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    invoke-static {v2, p0, v4, v1}, Ly2/h;->p([BIILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {v0}, Ly2/h;->v(I)I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    add-int/2addr v4, v5

    .line 47
    invoke-static {v2, v4, v0}, Ly2/h;->y([BII)I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    invoke-static {v2, v4, v5, v1}, Ly2/h;->p([BIILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {v0}, Ly2/h;->v(I)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    add-int/2addr v5, v0

    .line 60
    invoke-static {v2, v5, p1}, Ly2/h;->d([BII)[B

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    new-instance v0, Ly2/f;

    .line 65
    .line 66
    invoke-direct {v0, v3, p0, v1, p1}, Ly2/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 67
    .line 68
    .line 69
    return-object v0
.end method

.method private static m(Landroidx/media3/common/util/j0;)Ly2/h$b;
    .locals 9

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->a()I

    .line 5
    .line 6
    .line 7
    move-result v3

    .line 8
    const/16 v4, 0xa

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    const-string v6, "Id3Decoder"

    .line 12
    .line 13
    if-ge v3, v4, :cond_0

    .line 14
    .line 15
    const-string p0, "Data too short to be an ID3 tag"

    .line 16
    .line 17
    invoke-static {v6, p0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-object v5

    .line 21
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->K()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    const v4, 0x494433

    .line 26
    .line 27
    .line 28
    if-eq v3, v4, :cond_1

    .line 29
    .line 30
    new-instance p0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v0, "Unexpected first three bytes of ID3 tag header: 0x"

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    new-array v2, v2, [Ljava/lang/Object;

    .line 45
    .line 46
    aput-object v0, v2, v1

    .line 47
    .line 48
    const-string v0, "%06X"

    .line 49
    .line 50
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-static {v6, p0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-object v5

    .line 65
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->H()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/j0;->X(I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->H()I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->G()I

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    const/4 v8, 0x2

    .line 81
    if-ne v3, v8, :cond_2

    .line 82
    .line 83
    and-int/lit8 p0, v4, 0x40

    .line 84
    .line 85
    if-eqz p0, :cond_5

    .line 86
    .line 87
    const-string p0, "Skipped ID3 tag with majorVersion=2 and undefined compression scheme"

    .line 88
    .line 89
    invoke-static {v6, p0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    return-object v5

    .line 93
    :cond_2
    const/4 v8, 0x3

    .line 94
    if-ne v3, v8, :cond_3

    .line 95
    .line 96
    and-int/lit8 v5, v4, 0x40

    .line 97
    .line 98
    if-eqz v5, :cond_5

    .line 99
    .line 100
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    invoke-virtual {p0, v5}, Landroidx/media3/common/util/j0;->X(I)V

    .line 105
    .line 106
    .line 107
    add-int/2addr v5, v0

    .line 108
    sub-int/2addr v7, v5

    .line 109
    goto :goto_0

    .line 110
    :cond_3
    if-ne v3, v0, :cond_7

    .line 111
    .line 112
    and-int/lit8 v5, v4, 0x40

    .line 113
    .line 114
    if-eqz v5, :cond_4

    .line 115
    .line 116
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->G()I

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    add-int/lit8 v6, v5, -0x4

    .line 121
    .line 122
    invoke-virtual {p0, v6}, Landroidx/media3/common/util/j0;->X(I)V

    .line 123
    .line 124
    .line 125
    sub-int/2addr v7, v5

    .line 126
    :cond_4
    and-int/lit8 p0, v4, 0x10

    .line 127
    .line 128
    if-eqz p0, :cond_5

    .line 129
    .line 130
    add-int/lit8 v7, v7, -0xa

    .line 131
    .line 132
    :cond_5
    :goto_0
    if-ge v3, v0, :cond_6

    .line 133
    .line 134
    and-int/lit16 p0, v4, 0x80

    .line 135
    .line 136
    if-eqz p0, :cond_6

    .line 137
    .line 138
    move v1, v2

    .line 139
    :cond_6
    new-instance p0, Ly2/h$b;

    .line 140
    .line 141
    invoke-direct {p0, v3, v1, v7}, Ly2/h$b;-><init>(IZI)V

    .line 142
    .line 143
    .line 144
    return-object p0

    .line 145
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    const-string v0, "Skipped ID3 tag with unsupported majorVersion="

    .line 151
    .line 152
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    invoke-static {v6, p0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    return-object v5
.end method

.method private static n(Landroidx/media3/common/util/j0;I)Ly2/l;
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->P()I

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->K()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->K()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->H()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->H()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    new-instance v5, Landroidx/media3/common/util/i0;

    .line 22
    .line 23
    invoke-direct {v5}, Landroidx/media3/common/util/i0;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v5, p0}, Landroidx/media3/common/util/i0;->m(Landroidx/media3/common/util/j0;)V

    .line 27
    .line 28
    .line 29
    add-int/lit8 p1, p1, -0xa

    .line 30
    .line 31
    mul-int/lit8 p1, p1, 0x8

    .line 32
    .line 33
    add-int p0, v0, v4

    .line 34
    .line 35
    div-int/2addr p1, p0

    .line 36
    new-array p0, p1, [I

    .line 37
    .line 38
    new-array v6, p1, [I

    .line 39
    .line 40
    const/4 v7, 0x0

    .line 41
    :goto_0
    if-ge v7, p1, :cond_0

    .line 42
    .line 43
    invoke-virtual {v5, v0}, Landroidx/media3/common/util/i0;->h(I)I

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    invoke-virtual {v5, v4}, Landroidx/media3/common/util/i0;->h(I)I

    .line 48
    .line 49
    .line 50
    move-result v9

    .line 51
    aput v8, p0, v7

    .line 52
    .line 53
    aput v9, v6, v7

    .line 54
    .line 55
    add-int/lit8 v7, v7, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    new-instance p1, Ly2/l;

    .line 59
    .line 60
    move-object v0, p1

    .line 61
    move-object v4, p0

    .line 62
    move-object v5, v6

    .line 63
    invoke-direct/range {v0 .. v5}, Ly2/l;-><init>(III[I[I)V

    .line 64
    .line 65
    .line 66
    return-object p1
.end method

.method private static o(Landroidx/media3/common/util/j0;I)Ly2/m;
    .locals 4

    .line 1
    new-array v0, p1, [B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1, p1}, Landroidx/media3/common/util/j0;->l([BII)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Ly2/h;->z([BI)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    new-instance v2, Ljava/lang/String;

    .line 12
    .line 13
    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 14
    .line 15
    invoke-direct {v2, v0, v1, p0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 16
    .line 17
    .line 18
    add-int/lit8 p0, p0, 0x1

    .line 19
    .line 20
    invoke-static {v0, p0, p1}, Ly2/h;->d([BII)[B

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    new-instance p1, Ly2/m;

    .line 25
    .line 26
    invoke-direct {p1, v2, p0}, Ly2/m;-><init>(Ljava/lang/String;[B)V

    .line 27
    .line 28
    .line 29
    return-object p1
.end method

.method private static p([BIILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    .line 1
    if-le p2, p1, :cond_1

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    if-le p2, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/String;

    .line 8
    .line 9
    sub-int/2addr p2, p1

    .line 10
    invoke-direct {v0, p0, p1, p2, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 11
    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_1
    :goto_0
    const-string p0, ""

    .line 15
    .line 16
    return-object p0
.end method

.method private static q(Landroidx/media3/common/util/j0;ILjava/lang/String;)Ly2/n;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ge p1, v1, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->H()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    sub-int/2addr p1, v1

    .line 11
    new-array v1, p1, [B

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {p0, v1, v3, p1}, Landroidx/media3/common/util/j0;->l([BII)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v2, v3}, Ly2/h;->r([BII)Lcom/google/common/collect/ImmutableList;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    new-instance p1, Ly2/n;

    .line 22
    .line 23
    invoke-direct {p1, p2, v0, p0}, Ly2/n;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 24
    .line 25
    .line 26
    return-object p1
.end method

.method private static r([BII)Lcom/google/common/collect/ImmutableList;
    .locals 6

    .line 1
    array-length v0, p0

    .line 2
    const-string v1, ""

    .line 3
    .line 4
    if-lt p2, v0, :cond_0

    .line 5
    .line 6
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {p0, p2, p1}, Ly2/h;->y([BII)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    :goto_0
    if-ge p2, v2, :cond_1

    .line 20
    .line 21
    new-instance v3, Ljava/lang/String;

    .line 22
    .line 23
    sub-int v4, v2, p2

    .line 24
    .line 25
    invoke-static {p1}, Ly2/h;->w(I)Ljava/nio/charset/Charset;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-direct {v3, p0, p2, v4, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Ly2/h;->v(I)I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    add-int/2addr p2, v2

    .line 40
    invoke-static {p0, p2, p1}, Ly2/h;->y([BII)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    :cond_2
    return-object p0
.end method

.method private static s(Landroidx/media3/common/util/j0;I)Ly2/n;
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ge p1, v0, :cond_0

    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->H()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    sub-int/2addr p1, v0

    .line 11
    new-array v0, p1, [B

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {p0, v0, v2, p1}, Landroidx/media3/common/util/j0;->l([BII)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v2, v1}, Ly2/h;->y([BII)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    new-instance p1, Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v1}, Ly2/h;->w(I)Ljava/nio/charset/Charset;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-direct {p1, v0, v2, p0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v1}, Ly2/h;->v(I)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    add-int/2addr p0, v2

    .line 35
    invoke-static {v0, v1, p0}, Ly2/h;->r([BII)Lcom/google/common/collect/ImmutableList;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    new-instance v0, Ly2/n;

    .line 40
    .line 41
    const-string v1, "TXXX"

    .line 42
    .line 43
    invoke-direct {v0, v1, p1, p0}, Ly2/n;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 44
    .line 45
    .line 46
    return-object v0
.end method

.method private static t(Landroidx/media3/common/util/j0;ILjava/lang/String;)Ly2/o;
    .locals 3

    .line 1
    new-array v0, p1, [B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1, p1}, Landroidx/media3/common/util/j0;->l([BII)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Ly2/h;->z([BI)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    new-instance p1, Ljava/lang/String;

    .line 12
    .line 13
    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 14
    .line 15
    invoke-direct {p1, v0, v1, p0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 16
    .line 17
    .line 18
    new-instance p0, Ly2/o;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p2, v0, p1}, Ly2/o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-object p0
.end method

.method private static u(Landroidx/media3/common/util/j0;I)Ly2/o;
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ge p1, v0, :cond_0

    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->H()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    sub-int/2addr p1, v0

    .line 11
    new-array v0, p1, [B

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {p0, v0, v2, p1}, Landroidx/media3/common/util/j0;->l([BII)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v2, v1}, Ly2/h;->y([BII)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    new-instance p1, Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v1}, Ly2/h;->w(I)Ljava/nio/charset/Charset;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-direct {p1, v0, v2, p0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v1}, Ly2/h;->v(I)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    add-int/2addr p0, v1

    .line 35
    invoke-static {v0, p0}, Ly2/h;->z([BI)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 40
    .line 41
    invoke-static {v0, p0, v1, v2}, Ly2/h;->p([BIILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    new-instance v0, Ly2/o;

    .line 46
    .line 47
    const-string v1, "WXXX"

    .line 48
    .line 49
    invoke-direct {v0, v1, p1, p0}, Ly2/o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-object v0
.end method

.method private static v(I)I
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x2

    .line 8
    goto :goto_1

    .line 9
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 10
    :goto_1
    return p0
.end method

.method private static w(I)Ljava/nio/charset/Charset;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_2

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p0, v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p0, v0, :cond_0

    .line 9
    .line 10
    sget-object p0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_1
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_2
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    .line 20
    .line 21
    return-object p0
.end method

.method private static x(IIIII)Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x3

    .line 4
    const/4 v3, 0x2

    .line 5
    if-ne p0, v3, :cond_0

    .line 6
    .line 7
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    new-array p4, v2, [Ljava/lang/Object;

    .line 22
    .line 23
    aput-object p1, p4, v1

    .line 24
    .line 25
    aput-object p2, p4, v0

    .line 26
    .line 27
    aput-object p3, p4, v3

    .line 28
    .line 29
    const-string p1, "%c%c%c"

    .line 30
    .line 31
    invoke-static {p0, p1, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 37
    .line 38
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object p4

    .line 54
    const/4 v4, 0x4

    .line 55
    new-array v4, v4, [Ljava/lang/Object;

    .line 56
    .line 57
    aput-object p1, v4, v1

    .line 58
    .line 59
    aput-object p2, v4, v0

    .line 60
    .line 61
    aput-object p3, v4, v3

    .line 62
    .line 63
    aput-object p4, v4, v2

    .line 64
    .line 65
    const-string p1, "%c%c%c%c"

    .line 66
    .line 67
    invoke-static {p0, p1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    :goto_0
    return-object p0
.end method

.method private static y([BII)I
    .locals 2

    .line 1
    invoke-static {p0, p1}, Ly2/h;->z([BI)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz p2, :cond_3

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    if-ne p2, v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    :goto_0
    array-length p2, p0

    .line 12
    add-int/lit8 p2, p2, -0x1

    .line 13
    .line 14
    if-ge v0, p2, :cond_2

    .line 15
    .line 16
    sub-int p2, v0, p1

    .line 17
    .line 18
    rem-int/lit8 p2, p2, 0x2

    .line 19
    .line 20
    if-nez p2, :cond_1

    .line 21
    .line 22
    add-int/lit8 p2, v0, 0x1

    .line 23
    .line 24
    aget-byte p2, p0, p2

    .line 25
    .line 26
    if-nez p2, :cond_1

    .line 27
    .line 28
    return v0

    .line 29
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    invoke-static {p0, v0}, Ly2/h;->z([BI)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    array-length p0, p0

    .line 37
    return p0

    .line 38
    :cond_3
    :goto_1
    return v0
.end method

.method private static z([BI)I
    .locals 1

    .line 1
    :goto_0
    array-length v0, p0

    .line 2
    if-ge p1, v0, :cond_1

    .line 3
    .line 4
    aget-byte v0, p0, p1

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return p1

    .line 9
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    array-length p0, p0

    .line 13
    return p0
.end method


# virtual methods
.method protected b(Lt2/b;Ljava/nio/ByteBuffer;)Landroidx/media3/common/x;
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    invoke-virtual {p0, p1, p2}, Ly2/h;->e([BI)Landroidx/media3/common/x;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public e([BI)Landroidx/media3/common/x;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroidx/media3/common/util/j0;

    .line 7
    .line 8
    invoke-direct {v1, p1, p2}, Landroidx/media3/common/util/j0;-><init>([BI)V

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Ly2/h;->m(Landroidx/media3/common/util/j0;)Ly2/h$b;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 p2, 0x0

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    return-object p2

    .line 19
    :cond_0
    invoke-virtual {v1}, Landroidx/media3/common/util/j0;->f()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-static {p1}, Ly2/h$b;->a(Ly2/h$b;)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const/4 v4, 0x2

    .line 28
    if-ne v3, v4, :cond_1

    .line 29
    .line 30
    const/4 v3, 0x6

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/16 v3, 0xa

    .line 33
    .line 34
    :goto_0
    invoke-static {p1}, Ly2/h$b;->b(Ly2/h$b;)I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    invoke-static {p1}, Ly2/h$b;->c(Ly2/h$b;)Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_2

    .line 43
    .line 44
    invoke-static {p1}, Ly2/h$b;->b(Ly2/h$b;)I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    invoke-static {v1, v4}, Ly2/h;->B(Landroidx/media3/common/util/j0;I)I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    :cond_2
    add-int/2addr v2, v4

    .line 53
    invoke-virtual {v1, v2}, Landroidx/media3/common/util/j0;->V(I)V

    .line 54
    .line 55
    .line 56
    invoke-static {p1}, Ly2/h$b;->a(Ly2/h$b;)I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    const/4 v4, 0x0

    .line 61
    invoke-static {v1, v2, v3, v4}, Ly2/h;->C(Landroidx/media3/common/util/j0;IIZ)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-nez v2, :cond_4

    .line 66
    .line 67
    invoke-static {p1}, Ly2/h$b;->a(Ly2/h$b;)I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    const/4 v4, 0x4

    .line 72
    if-ne v2, v4, :cond_3

    .line 73
    .line 74
    const/4 v2, 0x1

    .line 75
    invoke-static {v1, v4, v3, v2}, Ly2/h;->C(Landroidx/media3/common/util/j0;IIZ)Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-eqz v4, :cond_3

    .line 80
    .line 81
    move v4, v2

    .line 82
    goto :goto_1

    .line 83
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string v1, "Failed to validate ID3 tag with majorVersion="

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-static {p1}, Ly2/h$b;->a(Ly2/h$b;)I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    const-string v0, "Id3Decoder"

    .line 105
    .line 106
    invoke-static {v0, p1}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    return-object p2

    .line 110
    :cond_4
    :goto_1
    invoke-virtual {v1}, Landroidx/media3/common/util/j0;->a()I

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    if-lt p2, v3, :cond_5

    .line 115
    .line 116
    invoke-static {p1}, Ly2/h$b;->a(Ly2/h$b;)I

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    iget-object v2, p0, Ly2/h;->a:Ly2/h$a;

    .line 121
    .line 122
    invoke-static {p2, v1, v4, v3, v2}, Ly2/h;->k(ILandroidx/media3/common/util/j0;ZILy2/h$a;)Ly2/i;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    if-eqz p2, :cond_4

    .line 127
    .line 128
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_5
    new-instance p1, Landroidx/media3/common/x;

    .line 133
    .line 134
    invoke-direct {p1, v0}, Landroidx/media3/common/x;-><init>(Ljava/util/List;)V

    .line 135
    .line 136
    .line 137
    return-object p1
.end method
