.class public final Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field static final a:Lcom/mbridge/msdk/thrid/okio/f;

.field private static final b:[Ljava/lang/String;

.field static final c:[Ljava/lang/String;

.field static final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n"

    .line 3
    .line 4
    invoke-static {v1}, Lcom/mbridge/msdk/thrid/okio/f;->c(Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okio/f;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    sput-object v1, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->a:Lcom/mbridge/msdk/thrid/okio/f;

    .line 9
    .line 10
    const-string v10, "WINDOW_UPDATE"

    .line 11
    .line 12
    const-string v11, "CONTINUATION"

    .line 13
    .line 14
    const-string v2, "DATA"

    .line 15
    .line 16
    const-string v3, "HEADERS"

    .line 17
    .line 18
    const-string v4, "PRIORITY"

    .line 19
    .line 20
    const-string v5, "RST_STREAM"

    .line 21
    .line 22
    const-string v6, "SETTINGS"

    .line 23
    .line 24
    const-string v7, "PUSH_PROMISE"

    .line 25
    .line 26
    const-string v8, "PING"

    .line 27
    .line 28
    const-string v9, "GOAWAY"

    .line 29
    .line 30
    filled-new-array/range {v2 .. v11}, [Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    sput-object v1, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->b:[Ljava/lang/String;

    .line 35
    .line 36
    const/16 v1, 0x40

    .line 37
    .line 38
    new-array v1, v1, [Ljava/lang/String;

    .line 39
    .line 40
    sput-object v1, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->c:[Ljava/lang/String;

    .line 41
    .line 42
    const/16 v1, 0x100

    .line 43
    .line 44
    new-array v1, v1, [Ljava/lang/String;

    .line 45
    .line 46
    sput-object v1, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->d:[Ljava/lang/String;

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    move v2, v1

    .line 50
    :goto_0
    sget-object v3, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->d:[Ljava/lang/String;

    .line 51
    .line 52
    array-length v4, v3

    .line 53
    const/16 v5, 0x20

    .line 54
    .line 55
    if-ge v2, v4, :cond_0

    .line 56
    .line 57
    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    new-array v6, v0, [Ljava/lang/Object;

    .line 62
    .line 63
    aput-object v4, v6, v1

    .line 64
    .line 65
    const-string v4, "%8s"

    .line 66
    .line 67
    invoke-static {v4, v6}, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    const/16 v6, 0x30

    .line 72
    .line 73
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    aput-object v4, v3, v2

    .line 78
    .line 79
    add-int/2addr v2, v0

    .line 80
    goto :goto_0

    .line 81
    :cond_0
    sget-object v2, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->c:[Ljava/lang/String;

    .line 82
    .line 83
    const-string v3, ""

    .line 84
    .line 85
    aput-object v3, v2, v1

    .line 86
    .line 87
    const-string v3, "END_STREAM"

    .line 88
    .line 89
    aput-object v3, v2, v0

    .line 90
    .line 91
    filled-new-array {v0}, [I

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    const-string v4, "PADDED"

    .line 96
    .line 97
    const/16 v6, 0x8

    .line 98
    .line 99
    aput-object v4, v2, v6

    .line 100
    .line 101
    new-instance v4, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    aget-object v7, v2, v0

    .line 107
    .line 108
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v7, "|PADDED"

    .line 112
    .line 113
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    const/16 v8, 0x9

    .line 121
    .line 122
    aput-object v4, v2, v8

    .line 123
    .line 124
    const-string v4, "END_HEADERS"

    .line 125
    .line 126
    const/4 v8, 0x4

    .line 127
    aput-object v4, v2, v8

    .line 128
    .line 129
    const-string v4, "PRIORITY"

    .line 130
    .line 131
    aput-object v4, v2, v5

    .line 132
    .line 133
    const-string v4, "END_HEADERS|PRIORITY"

    .line 134
    .line 135
    const/16 v9, 0x24

    .line 136
    .line 137
    aput-object v4, v2, v9

    .line 138
    .line 139
    filled-new-array {v8, v5, v9}, [I

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    move v4, v1

    .line 144
    :goto_1
    const/4 v5, 0x3

    .line 145
    if-ge v4, v5, :cond_1

    .line 146
    .line 147
    aget v5, v2, v4

    .line 148
    .line 149
    aget v8, v3, v1

    .line 150
    .line 151
    sget-object v9, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->c:[Ljava/lang/String;

    .line 152
    .line 153
    or-int v10, v8, v5

    .line 154
    .line 155
    new-instance v11, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    .line 160
    aget-object v12, v9, v8

    .line 161
    .line 162
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    const/16 v12, 0x7c

    .line 166
    .line 167
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    aget-object v13, v9, v5

    .line 171
    .line 172
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v11

    .line 179
    aput-object v11, v9, v10

    .line 180
    .line 181
    or-int/2addr v10, v6

    .line 182
    new-instance v11, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .line 186
    .line 187
    aget-object v8, v9, v8

    .line 188
    .line 189
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    aget-object v5, v9, v5

    .line 196
    .line 197
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    aput-object v5, v9, v10

    .line 208
    .line 209
    add-int/2addr v4, v0

    .line 210
    goto :goto_1

    .line 211
    :cond_1
    :goto_2
    sget-object v2, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->c:[Ljava/lang/String;

    .line 212
    .line 213
    array-length v3, v2

    .line 214
    if-ge v1, v3, :cond_3

    .line 215
    .line 216
    aget-object v3, v2, v1

    .line 217
    .line 218
    if-nez v3, :cond_2

    .line 219
    .line 220
    sget-object v3, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->d:[Ljava/lang/String;

    .line 221
    .line 222
    aget-object v3, v3, v1

    .line 223
    .line 224
    aput-object v3, v2, v1

    .line 225
    .line 226
    :cond_2
    add-int/2addr v1, v0

    .line 227
    goto :goto_2

    .line 228
    :cond_3
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static a(BB)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    .line 5
    const-string p0, ""

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-eq p0, v0, :cond_6

    const/4 v0, 0x3

    if-eq p0, v0, :cond_6

    const/4 v0, 0x4

    if-eq p0, v0, :cond_4

    const/4 v0, 0x6

    if-eq p0, v0, :cond_4

    const/4 v0, 0x7

    if-eq p0, v0, :cond_6

    const/16 v0, 0x8

    if-eq p0, v0, :cond_6

    .line 6
    sget-object v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->c:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_1

    aget-object v0, v0, p1

    goto :goto_0

    .line 7
    :cond_1
    sget-object v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->d:[Ljava/lang/String;

    aget-object v0, v0, p1

    :goto_0
    const/4 v1, 0x5

    if-ne p0, v1, :cond_2

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    .line 8
    const-string p0, "HEADERS"

    const-string p1, "PUSH_PROMISE"

    invoke-virtual {v0, p0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    if-nez p0, :cond_3

    and-int/lit8 p0, p1, 0x20

    if-eqz p0, :cond_3

    .line 9
    const-string p0, "PRIORITY"

    const-string p1, "COMPRESSED"

    invoke-virtual {v0, p0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v0

    :cond_4
    const/4 p0, 0x1

    if-ne p1, p0, :cond_5

    .line 10
    const-string p0, "ACK"

    goto :goto_1

    :cond_5
    sget-object p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->d:[Ljava/lang/String;

    aget-object p0, p0, p1

    :goto_1
    return-object p0

    .line 11
    :cond_6
    sget-object p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->d:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0
.end method

.method static a(ZIIBB)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    sget-object v2, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->b:[Ljava/lang/String;

    array-length v3, v2

    if-ge p3, v3, :cond_0

    aget-object v2, v2, p3

    goto :goto_0

    :cond_0
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v2, v3, v0

    const-string v2, "0x%02x"

    invoke-static {v2, v3}, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 3
    :goto_0
    invoke-static {p3, p4}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->a(BB)Ljava/lang/String;

    move-result-object p3

    if-eqz p0, :cond_1

    .line 4
    const-string p0, "<<"

    goto :goto_1

    :cond_1
    const-string p0, ">>"

    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p4, 0x5

    new-array p4, p4, [Ljava/lang/Object;

    aput-object p0, p4, v0

    aput-object p1, p4, v1

    const/4 p0, 0x2

    aput-object p2, p4, p0

    const/4 p0, 0x3

    aput-object v2, p4, p0

    const/4 p0, 0x4

    aput-object p3, p4, p0

    const-string p0, "%s 0x%08x %5d %-13s %s"

    invoke-static {p0, p4}, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static varargs b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/IOException;

    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    throw v0
.end method
