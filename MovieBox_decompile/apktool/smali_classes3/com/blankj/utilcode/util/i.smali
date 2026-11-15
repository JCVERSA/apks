.class public abstract Lcom/blankj/utilcode/util/i;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:[C

.field private static final b:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v1, v0, [C

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v1, Lcom/blankj/utilcode/util/i;->a:[C

    .line 9
    .line 10
    new-array v0, v0, [C

    .line 11
    .line 12
    fill-array-data v0, :array_1

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/blankj/utilcode/util/i;->b:[C

    .line 16
    .line 17
    return-void

    .line 18
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data

    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static a(J)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/i;->b(JI)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static b(JI)Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ltz p2, :cond_4

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v2, p0, v2

    .line 8
    .line 9
    if-ltz v2, :cond_3

    .line 10
    .line 11
    const-wide/16 v2, 0x400

    .line 12
    .line 13
    cmp-long v2, p0, v2

    .line 14
    .line 15
    const-string v3, "%."

    .line 16
    .line 17
    if-gez v2, :cond_0

    .line 18
    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p2, "fB"

    .line 31
    .line 32
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    long-to-double p0, p0

    .line 40
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    new-array p1, v1, [Ljava/lang/Object;

    .line 45
    .line 46
    aput-object p0, p1, v0

    .line 47
    .line 48
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :cond_0
    const-wide/32 v4, 0x100000

    .line 54
    .line 55
    .line 56
    cmp-long v2, p0, v4

    .line 57
    .line 58
    if-gez v2, :cond_1

    .line 59
    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string p2, "fKB"

    .line 72
    .line 73
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    long-to-double p0, p0

    .line 81
    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    .line 82
    .line 83
    div-double/2addr p0, v2

    .line 84
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    new-array p1, v1, [Ljava/lang/Object;

    .line 89
    .line 90
    aput-object p0, p1, v0

    .line 91
    .line 92
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    return-object p0

    .line 97
    :cond_1
    const-wide/32 v4, 0x40000000

    .line 98
    .line 99
    .line 100
    cmp-long v2, p0, v4

    .line 101
    .line 102
    if-gez v2, :cond_2

    .line 103
    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string p2, "fMB"

    .line 116
    .line 117
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    long-to-double p0, p0

    .line 125
    const-wide/high16 v2, 0x4130000000000000L    # 1048576.0

    .line 126
    .line 127
    div-double/2addr p0, v2

    .line 128
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    new-array p1, v1, [Ljava/lang/Object;

    .line 133
    .line 134
    aput-object p0, p1, v0

    .line 135
    .line 136
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    return-object p0

    .line 141
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string p2, "fGB"

    .line 153
    .line 154
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    long-to-double p0, p0

    .line 162
    const-wide/high16 v2, 0x41d0000000000000L    # 1.073741824E9

    .line 163
    .line 164
    div-double/2addr p0, v2

    .line 165
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    new-array p1, v1, [Ljava/lang/Object;

    .line 170
    .line 171
    aput-object p0, p1, v0

    .line 172
    .line 173
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    return-object p0

    .line 178
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 179
    .line 180
    const-string p1, "byteSize shouldn\'t be less than zero!"

    .line 181
    .line 182
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    throw p0

    .line 186
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 187
    .line 188
    const-string p1, "precision shouldn\'t be less than zero!"

    .line 189
    .line 190
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    throw p0
.end method

.method public static c([B)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/i;->d([BZ)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static d([BZ)Ljava/lang/String;
    .locals 7

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    sget-object p1, Lcom/blankj/utilcode/util/i;->a:[C

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    sget-object p1, Lcom/blankj/utilcode/util/i;->b:[C

    .line 12
    .line 13
    :goto_0
    array-length v1, p0

    .line 14
    if-gtz v1, :cond_2

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_2
    shl-int/lit8 v0, v1, 0x1

    .line 18
    .line 19
    new-array v0, v0, [C

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    move v3, v2

    .line 23
    :goto_1
    if-ge v2, v1, :cond_3

    .line 24
    .line 25
    add-int/lit8 v4, v3, 0x1

    .line 26
    .line 27
    aget-byte v5, p0, v2

    .line 28
    .line 29
    shr-int/lit8 v6, v5, 0x4

    .line 30
    .line 31
    and-int/lit8 v6, v6, 0xf

    .line 32
    .line 33
    aget-char v6, p1, v6

    .line 34
    .line 35
    aput-char v6, v0, v3

    .line 36
    .line 37
    add-int/lit8 v3, v3, 0x2

    .line 38
    .line 39
    and-int/lit8 v5, v5, 0xf

    .line 40
    .line 41
    aget-char v5, p1, v5

    .line 42
    .line 43
    aput-char v5, v0, v4

    .line 44
    .line 45
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_3
    new-instance p0, Ljava/lang/String;

    .line 49
    .line 50
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    .line 51
    .line 52
    .line 53
    return-object p0
.end method

.method public static e(F)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/blankj/utilcode/util/e0;->d(F)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static f(JI)J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p0, v0

    .line 4
    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    const-wide/16 p0, -0x1

    .line 8
    .line 9
    return-wide p0

    .line 10
    :cond_0
    int-to-long v0, p2

    .line 11
    mul-long/2addr p0, v0

    .line 12
    return-wide p0
.end method
