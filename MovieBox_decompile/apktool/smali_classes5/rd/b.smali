.class abstract Lrd/b;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:[B

.field private static final b:[B

.field private static final c:[B

.field private static final d:[B

.field private static final e:[[B

.field private static final f:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v1, Lrd/b;->a:[B

    .line 9
    .line 10
    new-array v0, v0, [B

    .line 11
    .line 12
    fill-array-data v0, :array_1

    .line 13
    .line 14
    .line 15
    sput-object v0, Lrd/b;->b:[B

    .line 16
    .line 17
    const/4 v0, 0x6

    .line 18
    new-array v1, v0, [B

    .line 19
    .line 20
    fill-array-data v1, :array_2

    .line 21
    .line 22
    .line 23
    sput-object v1, Lrd/b;->c:[B

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    const/4 v2, 0x2

    .line 27
    const/16 v3, 0x1e

    .line 28
    .line 29
    new-array v3, v3, [B

    .line 30
    .line 31
    fill-array-data v3, :array_3

    .line 32
    .line 33
    .line 34
    sput-object v3, Lrd/b;->d:[B

    .line 35
    .line 36
    new-array v3, v0, [B

    .line 37
    .line 38
    fill-array-data v3, :array_4

    .line 39
    .line 40
    .line 41
    new-array v4, v0, [B

    .line 42
    .line 43
    fill-array-data v4, :array_5

    .line 44
    .line 45
    .line 46
    new-array v5, v0, [B

    .line 47
    .line 48
    fill-array-data v5, :array_6

    .line 49
    .line 50
    .line 51
    new-array v6, v0, [B

    .line 52
    .line 53
    fill-array-data v6, :array_7

    .line 54
    .line 55
    .line 56
    new-array v7, v0, [B

    .line 57
    .line 58
    fill-array-data v7, :array_8

    .line 59
    .line 60
    .line 61
    new-array v8, v0, [B

    .line 62
    .line 63
    fill-array-data v8, :array_9

    .line 64
    .line 65
    .line 66
    new-array v0, v0, [[B

    .line 67
    .line 68
    const/4 v9, 0x0

    .line 69
    aput-object v3, v0, v9

    .line 70
    .line 71
    aput-object v4, v0, v1

    .line 72
    .line 73
    aput-object v5, v0, v2

    .line 74
    .line 75
    const/4 v1, 0x3

    .line 76
    aput-object v6, v0, v1

    .line 77
    .line 78
    const/4 v1, 0x4

    .line 79
    aput-object v7, v0, v1

    .line 80
    .line 81
    const/4 v1, 0x5

    .line 82
    aput-object v8, v0, v1

    .line 83
    .line 84
    sput-object v0, Lrd/b;->e:[[B

    .line 85
    .line 86
    const-string v0, "\u00e0\u00e1\u00e2\u00e3\u00e4\u00e5\u00e6\u00e7\u00e8\u00e9\u00ea\u00eb\u00ec\u00ed\u00ee\u00ef\u00f0\u00f1\u00f2\u00f3\u00f4\u00f5\u00f6\u00f7\u00f8\u00f9\u00fa\ufffa\u001c\u001d\u001e\ufffb\u00fb\u00fc\u00fd\u00fe\u00ff\u00a1\u00a8\u00ab\u00af\u00b0\u00b4\u00b7\u00b8\u00bb\u00bf\u008a\u008b\u008c\u008d\u008e\u008f\u0090\u0091\u0092\u0093\u0094\ufff7 \ufff2\ufff9\ufff4\ufff8"

    .line 87
    .line 88
    const-string v1, "\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\ufffa\ufffc\ufffc\u001b\ufffb\u001c\u001d\u001e\u001f\u009f\u00a0\u00a2\u00a3\u00a4\u00a5\u00a6\u00a7\u00a9\u00ad\u00ae\u00b6\u0095\u0096\u0097\u0098\u0099\u009a\u009b\u009c\u009d\u009e\ufff7 \ufff2\ufff3\ufff9\ufff8"

    .line 89
    .line 90
    const-string v2, "\rABCDEFGHIJKLMNOPQRSTUVWXYZ\ufffa\u001c\u001d\u001e\ufffb \ufffc\"#$%&\'()*+,-./0123456789:\ufff1\ufff2\ufff3\ufff4\ufff8"

    .line 91
    .line 92
    const-string v3, "`abcdefghijklmnopqrstuvwxyz\ufffa\u001c\u001d\u001e\ufffb{\ufffc}~\u007f;<=>?[\\]^_ ,./:@!|\ufffc\ufff5\ufff6\ufffc\ufff0\ufff2\ufff3\ufff4\ufff7"

    .line 93
    .line 94
    const-string v4, "\u00c0\u00c1\u00c2\u00c3\u00c4\u00c5\u00c6\u00c7\u00c8\u00c9\u00ca\u00cb\u00cc\u00cd\u00ce\u00cf\u00d0\u00d1\u00d2\u00d3\u00d4\u00d5\u00d6\u00d7\u00d8\u00d9\u00da\ufffa\u001c\u001d\u001e\ufffb\u00db\u00dc\u00dd\u00de\u00df\u00aa\u00ac\u00b1\u00b2\u00b3\u00b5\u00b9\u00ba\u00bc\u00bd\u00be\u0080\u0081\u0082\u0083\u0084\u0085\u0086\u0087\u0088\u0089\ufff7 \ufff9\ufff3\ufff4\ufff8"

    .line 95
    .line 96
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    sput-object v0, Lrd/b;->f:[Ljava/lang/String;

    .line 101
    .line 102
    return-void

    .line 103
    :array_0
    .array-data 1
        0x35t
        0x36t
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x25t
        0x26t
    .end array-data

    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    nop

    .line 113
    :array_1
    .array-data 1
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x31t
        0x32t
        0x33t
        0x34t
    .end array-data

    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    nop

    .line 123
    :array_2
    .array-data 1
        0x27t
        0x28t
        0x29t
        0x2at
        0x1ft
        0x20t
    .end array-data

    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    nop

    .line 131
    :array_3
    .array-data 1
        0x21t
        0x22t
        0x23t
        0x24t
        0x19t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0x1t
        0x2t
    .end array-data

    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    nop

    .line 151
    :array_4
    .array-data 1
        0x27t
        0x28t
        0x29t
        0x2at
        0x1ft
        0x20t
    .end array-data

    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    nop

    .line 159
    :array_5
    .array-data 1
        0x21t
        0x22t
        0x23t
        0x24t
        0x19t
        0x1at
    .end array-data

    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    nop

    .line 167
    :array_6
    .array-data 1
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x13t
        0x14t
    .end array-data

    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    nop

    .line 175
    :array_7
    .array-data 1
        0x15t
        0x16t
        0x17t
        0x18t
        0xdt
        0xet
    .end array-data

    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    nop

    .line 183
    :array_8
    .array-data 1
        0xft
        0x10t
        0x11t
        0x12t
        0x7t
        0x8t
    .end array-data

    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    nop

    .line 191
    :array_9
    .array-data 1
        0x9t
        0xat
        0xbt
        0xct
        0x1t
        0x2t
    .end array-data
.end method

.method static a([BI)Lkd/d;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x90

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq p1, v1, :cond_2

    .line 10
    .line 11
    const/4 v2, 0x3

    .line 12
    if-eq p1, v2, :cond_2

    .line 13
    .line 14
    const/4 v1, 0x4

    .line 15
    const/4 v2, 0x1

    .line 16
    if-eq p1, v1, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x5

    .line 19
    if-eq p1, v1, :cond_0

    .line 20
    .line 21
    goto/16 :goto_1

    .line 22
    .line 23
    :cond_0
    const/16 v1, 0x4d

    .line 24
    .line 25
    invoke-static {p0, v2, v1}, Lrd/b;->e([BII)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    goto/16 :goto_1

    .line 33
    .line 34
    :cond_1
    const/16 v1, 0x5d

    .line 35
    .line 36
    invoke-static {p0, v2, v1}, Lrd/b;->e([BII)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    goto/16 :goto_1

    .line 44
    .line 45
    :cond_2
    const/4 v2, 0x0

    .line 46
    const/16 v3, 0xa

    .line 47
    .line 48
    if-ne p1, v1, :cond_4

    .line 49
    .line 50
    invoke-static {p0}, Lrd/b;->f([B)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-static {p0}, Lrd/b;->g([B)I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-gt v4, v3, :cond_3

    .line 59
    .line 60
    new-instance v5, Ljava/text/DecimalFormat;

    .line 61
    .line 62
    const-string v6, "0000000000"

    .line 63
    .line 64
    invoke-virtual {v6, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-direct {v5, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    int-to-long v6, v1

    .line 72
    invoke-virtual {v5, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    goto :goto_0

    .line 77
    :cond_3
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    throw p0

    .line 82
    :cond_4
    invoke-static {p0}, Lrd/b;->h([B)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    :goto_0
    new-instance v4, Ljava/text/DecimalFormat;

    .line 87
    .line 88
    const-string v5, "000"

    .line 89
    .line 90
    invoke-direct {v4, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-static {p0}, Lrd/b;->c([B)I

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    int-to-long v5, v5

    .line 98
    invoke-virtual {v4, v5, v6}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    invoke-static {p0}, Lrd/b;->i([B)I

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    int-to-long v6, v6

    .line 107
    invoke-virtual {v4, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    const/16 v6, 0x54

    .line 112
    .line 113
    invoke-static {p0, v3, v6}, Lrd/b;->e([BII)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    const-string v6, "[)>\u001e01\u001d"

    .line 125
    .line 126
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    const/16 v6, 0x1d

    .line 131
    .line 132
    if-eqz v3, :cond_5

    .line 133
    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    const/16 v2, 0x9

    .line 162
    .line 163
    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    :goto_1
    new-instance v1, Lkd/d;

    .line 198
    .line 199
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    const/4 v2, 0x0

    .line 204
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    invoke-direct {v1, p0, v0, v2, p1}, Lkd/d;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    return-object v1
.end method

.method private static b(I[B)I
    .locals 1

    .line 1
    add-int/lit8 p0, p0, -0x1

    .line 2
    .line 3
    div-int/lit8 v0, p0, 0x6

    .line 4
    .line 5
    aget-byte p1, p1, v0

    .line 6
    .line 7
    rem-int/lit8 p0, p0, 0x6

    .line 8
    .line 9
    rsub-int/lit8 p0, p0, 0x5

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    shl-int p0, v0, p0

    .line 13
    .line 14
    and-int/2addr p0, p1

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    :cond_0
    return v0
.end method

.method private static c([B)I
    .locals 1

    .line 1
    sget-object v0, Lrd/b;->a:[B

    .line 2
    .line 3
    invoke-static {p0, v0}, Lrd/b;->d([B[B)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method private static d([B[B)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    array-length v2, p1

    .line 4
    if-ge v0, v2, :cond_0

    .line 5
    .line 6
    aget-byte v2, p1, v0

    .line 7
    .line 8
    invoke-static {v2, p0}, Lrd/b;->b(I[B)I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    array-length v3, p1

    .line 13
    sub-int/2addr v3, v0

    .line 14
    add-int/lit8 v3, v3, -0x1

    .line 15
    .line 16
    shl-int/2addr v2, v3

    .line 17
    add-int/2addr v1, v2

    .line 18
    add-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return v1
.end method

.method private static e([BII)Ljava/lang/String;
    .locals 12

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, p1

    .line 9
    move v5, v1

    .line 10
    move v4, v2

    .line 11
    move v6, v4

    .line 12
    :goto_0
    add-int v7, p1, p2

    .line 13
    .line 14
    const/4 v8, 0x1

    .line 15
    if-ge v3, v7, :cond_1

    .line 16
    .line 17
    sget-object v7, Lrd/b;->f:[Ljava/lang/String;

    .line 18
    .line 19
    aget-object v7, v7, v4

    .line 20
    .line 21
    aget-byte v9, p0, v3

    .line 22
    .line 23
    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    packed-switch v7, :pswitch_data_0

    .line 28
    .line 29
    .line 30
    :pswitch_0
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    goto :goto_3

    .line 34
    :pswitch_1
    add-int/lit8 v7, v3, 0x1

    .line 35
    .line 36
    aget-byte v7, p0, v7

    .line 37
    .line 38
    shl-int/lit8 v7, v7, 0x18

    .line 39
    .line 40
    add-int/lit8 v9, v3, 0x2

    .line 41
    .line 42
    aget-byte v9, p0, v9

    .line 43
    .line 44
    shl-int/lit8 v9, v9, 0x12

    .line 45
    .line 46
    add-int/2addr v7, v9

    .line 47
    add-int/lit8 v9, v3, 0x3

    .line 48
    .line 49
    aget-byte v9, p0, v9

    .line 50
    .line 51
    shl-int/lit8 v9, v9, 0xc

    .line 52
    .line 53
    add-int/2addr v7, v9

    .line 54
    add-int/lit8 v9, v3, 0x4

    .line 55
    .line 56
    aget-byte v9, p0, v9

    .line 57
    .line 58
    shl-int/lit8 v9, v9, 0x6

    .line 59
    .line 60
    add-int/2addr v7, v9

    .line 61
    add-int/lit8 v3, v3, 0x5

    .line 62
    .line 63
    aget-byte v9, p0, v3

    .line 64
    .line 65
    add-int/2addr v7, v9

    .line 66
    new-instance v9, Ljava/text/DecimalFormat;

    .line 67
    .line 68
    const-string v10, "000000000"

    .line 69
    .line 70
    invoke-direct {v9, v10}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    int-to-long v10, v7

    .line 74
    invoke-virtual {v9, v10, v11}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    goto :goto_3

    .line 82
    :pswitch_2
    move v5, v1

    .line 83
    goto :goto_3

    .line 84
    :pswitch_3
    move v5, v1

    .line 85
    move v4, v8

    .line 86
    goto :goto_3

    .line 87
    :pswitch_4
    move v5, v1

    .line 88
    :goto_1
    move v4, v2

    .line 89
    goto :goto_3

    .line 90
    :pswitch_5
    const/4 v5, 0x3

    .line 91
    :goto_2
    move v6, v4

    .line 92
    goto :goto_1

    .line 93
    :pswitch_6
    const/4 v5, 0x2

    .line 94
    goto :goto_2

    .line 95
    :pswitch_7
    const v5, 0xfff0

    .line 96
    .line 97
    .line 98
    sub-int/2addr v7, v5

    .line 99
    move v6, v4

    .line 100
    move v4, v7

    .line 101
    move v5, v8

    .line 102
    :goto_3
    add-int/lit8 v7, v5, -0x1

    .line 103
    .line 104
    if-nez v5, :cond_0

    .line 105
    .line 106
    move v4, v6

    .line 107
    :cond_0
    add-int/2addr v3, v8

    .line 108
    move v5, v7

    .line 109
    goto :goto_0

    .line 110
    :cond_1
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 111
    .line 112
    .line 113
    move-result p0

    .line 114
    if-lez p0, :cond_2

    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 117
    .line 118
    .line 119
    move-result p0

    .line 120
    sub-int/2addr p0, v8

    .line 121
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 122
    .line 123
    .line 124
    move-result p0

    .line 125
    const p1, 0xfffc

    .line 126
    .line 127
    .line 128
    if-ne p0, p1, :cond_2

    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 131
    .line 132
    .line 133
    move-result p0

    .line 134
    sub-int/2addr p0, v8

    .line 135
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 136
    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    return-object p0

    .line 144
    nop

    .line 145
    :pswitch_data_0
    .packed-switch 0xfff0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static f([B)I
    .locals 1

    .line 1
    sget-object v0, Lrd/b;->d:[B

    .line 2
    .line 3
    invoke-static {p0, v0}, Lrd/b;->d([B[B)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method private static g([B)I
    .locals 1

    .line 1
    sget-object v0, Lrd/b;->c:[B

    .line 2
    .line 3
    invoke-static {p0, v0}, Lrd/b;->d([B[B)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method private static h([B)Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    sget-object v1, Lrd/b;->e:[[B

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7
    .line 8
    .line 9
    array-length v2, v1

    .line 10
    const/4 v3, 0x0

    .line 11
    move v4, v3

    .line 12
    :goto_0
    if-ge v4, v2, :cond_0

    .line 13
    .line 14
    aget-object v5, v1, v4

    .line 15
    .line 16
    sget-object v6, Lrd/b;->f:[Ljava/lang/String;

    .line 17
    .line 18
    aget-object v6, v6, v3

    .line 19
    .line 20
    invoke-static {p0, v5}, Lrd/b;->d([B[B)I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    add-int/lit8 v4, v4, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method

.method private static i([B)I
    .locals 1

    .line 1
    sget-object v0, Lrd/b;->b:[B

    .line 2
    .line 3
    invoke-static {p0, v0}, Lrd/b;->d([B[B)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
