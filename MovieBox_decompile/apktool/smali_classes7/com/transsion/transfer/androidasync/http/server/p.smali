.class public Lcom/transsion/transfer/androidasync/http/server/p;
.super Lcom/transsion/transfer/androidasync/t;
.source "source.java"


# instance fields
.field private g:[B

.field h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/t;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lcom/transsion/transfer/androidasync/http/server/p;->h:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public C(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V
    .locals 9

    .line 1
    iget p1, p0, Lcom/transsion/transfer/androidasync/http/server/p;->h:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-lez p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/server/p;->g:[B

    .line 7
    .line 8
    array-length p1, p1

    .line 9
    invoke-static {p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->t(I)Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/server/p;->g:[B

    .line 14
    .line 15
    iget v2, p0, Lcom/transsion/transfer/androidasync/http/server/p;->h:I

    .line 16
    .line 17
    invoke-virtual {p1, v1, v0, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->c(Ljava/nio/ByteBuffer;)V

    .line 24
    .line 25
    .line 26
    iput v0, p0, Lcom/transsion/transfer/androidasync/http/server/p;->h:I

    .line 27
    .line 28
    :cond_0
    invoke-virtual {p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    new-array v1, p1, [B

    .line 33
    .line 34
    invoke-virtual {p2, v1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->h([B)V

    .line 35
    .line 36
    .line 37
    move p2, v0

    .line 38
    move v2, p2

    .line 39
    :goto_0
    if-ge p2, p1, :cond_f

    .line 40
    .line 41
    iget v3, p0, Lcom/transsion/transfer/androidasync/http/server/p;->h:I

    .line 42
    .line 43
    const/4 v4, -0x1

    .line 44
    if-ltz v3, :cond_2

    .line 45
    .line 46
    aget-byte v5, v1, p2

    .line 47
    .line 48
    iget-object v6, p0, Lcom/transsion/transfer/androidasync/http/server/p;->g:[B

    .line 49
    .line 50
    aget-byte v7, v6, v3

    .line 51
    .line 52
    if-ne v5, v7, :cond_1

    .line 53
    .line 54
    add-int/lit8 v3, v3, 0x1

    .line 55
    .line 56
    iput v3, p0, Lcom/transsion/transfer/androidasync/http/server/p;->h:I

    .line 57
    .line 58
    array-length v5, v6

    .line 59
    if-ne v3, v5, :cond_e

    .line 60
    .line 61
    iput v4, p0, Lcom/transsion/transfer/androidasync/http/server/p;->h:I

    .line 62
    .line 63
    goto/16 :goto_1

    .line 64
    .line 65
    :cond_1
    if-lez v3, :cond_e

    .line 66
    .line 67
    sub-int/2addr p2, v3

    .line 68
    iput v0, p0, Lcom/transsion/transfer/androidasync/http/server/p;->h:I

    .line 69
    .line 70
    goto/16 :goto_1

    .line 71
    .line 72
    :cond_2
    const/4 v5, -0x2

    .line 73
    const/16 v6, 0x2d

    .line 74
    .line 75
    const/16 v7, 0xd

    .line 76
    .line 77
    const/4 v8, -0x4

    .line 78
    if-ne v3, v4, :cond_7

    .line 79
    .line 80
    aget-byte v3, v1, p2

    .line 81
    .line 82
    if-ne v3, v7, :cond_5

    .line 83
    .line 84
    iput v8, p0, Lcom/transsion/transfer/androidasync/http/server/p;->h:I

    .line 85
    .line 86
    sub-int v3, p2, v2

    .line 87
    .line 88
    iget-object v4, p0, Lcom/transsion/transfer/androidasync/http/server/p;->g:[B

    .line 89
    .line 90
    array-length v4, v4

    .line 91
    sub-int/2addr v3, v4

    .line 92
    if-nez v2, :cond_3

    .line 93
    .line 94
    if-eqz v3, :cond_4

    .line 95
    .line 96
    :cond_3
    invoke-static {v3}, Lcom/transsion/transfer/androidasync/ByteBufferList;->t(I)Ljava/nio/ByteBuffer;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-virtual {v4, v1, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 105
    .line 106
    .line 107
    new-instance v4, Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 108
    .line 109
    invoke-direct {v4}, Lcom/transsion/transfer/androidasync/ByteBufferList;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4, v3}, Lcom/transsion/transfer/androidasync/ByteBufferList;->a(Ljava/nio/ByteBuffer;)Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 113
    .line 114
    .line 115
    invoke-super {p0, p0, v4}, Lcom/transsion/transfer/androidasync/t;->C(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    .line 116
    .line 117
    .line 118
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/server/p;->S()V

    .line 119
    .line 120
    .line 121
    goto/16 :goto_1

    .line 122
    .line 123
    :cond_5
    if-ne v3, v6, :cond_6

    .line 124
    .line 125
    iput v5, p0, Lcom/transsion/transfer/androidasync/http/server/p;->h:I

    .line 126
    .line 127
    goto/16 :goto_1

    .line 128
    .line 129
    :cond_6
    new-instance p1, Lcom/transsion/transfer/androidasync/http/server/MimeEncodingException;

    .line 130
    .line 131
    const-string p2, "Invalid multipart/form-data. Expected \r or -"

    .line 132
    .line 133
    invoke-direct {p1, p2}, Lcom/transsion/transfer/androidasync/http/server/MimeEncodingException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/q;->M(Ljava/lang/Exception;)V

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    :cond_7
    const/4 v4, -0x3

    .line 141
    if-ne v3, v5, :cond_9

    .line 142
    .line 143
    aget-byte v3, v1, p2

    .line 144
    .line 145
    if-ne v3, v6, :cond_8

    .line 146
    .line 147
    iput v4, p0, Lcom/transsion/transfer/androidasync/http/server/p;->h:I

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_8
    new-instance p1, Lcom/transsion/transfer/androidasync/http/server/MimeEncodingException;

    .line 151
    .line 152
    const-string p2, "Invalid multipart/form-data. Expected -"

    .line 153
    .line 154
    invoke-direct {p1, p2}, Lcom/transsion/transfer/androidasync/http/server/MimeEncodingException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/q;->M(Ljava/lang/Exception;)V

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :cond_9
    if-ne v3, v4, :cond_b

    .line 162
    .line 163
    aget-byte v3, v1, p2

    .line 164
    .line 165
    if-ne v3, v7, :cond_a

    .line 166
    .line 167
    iput v8, p0, Lcom/transsion/transfer/androidasync/http/server/p;->h:I

    .line 168
    .line 169
    sub-int v3, p2, v2

    .line 170
    .line 171
    iget-object v4, p0, Lcom/transsion/transfer/androidasync/http/server/p;->g:[B

    .line 172
    .line 173
    array-length v4, v4

    .line 174
    sub-int v4, v3, v4

    .line 175
    .line 176
    add-int/lit8 v4, v4, -0x2

    .line 177
    .line 178
    invoke-static {v4}, Lcom/transsion/transfer/androidasync/ByteBufferList;->t(I)Ljava/nio/ByteBuffer;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    iget-object v5, p0, Lcom/transsion/transfer/androidasync/http/server/p;->g:[B

    .line 183
    .line 184
    array-length v5, v5

    .line 185
    sub-int/2addr v3, v5

    .line 186
    add-int/lit8 v3, v3, -0x2

    .line 187
    .line 188
    invoke-virtual {v4, v1, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 193
    .line 194
    .line 195
    new-instance v4, Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 196
    .line 197
    invoke-direct {v4}, Lcom/transsion/transfer/androidasync/ByteBufferList;-><init>()V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v4, v3}, Lcom/transsion/transfer/androidasync/ByteBufferList;->a(Ljava/nio/ByteBuffer;)Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 201
    .line 202
    .line 203
    invoke-super {p0, p0, v4}, Lcom/transsion/transfer/androidasync/t;->C(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/server/p;->R()V

    .line 207
    .line 208
    .line 209
    goto :goto_1

    .line 210
    :cond_a
    new-instance p1, Lcom/transsion/transfer/androidasync/http/server/MimeEncodingException;

    .line 211
    .line 212
    const-string p2, "Invalid multipart/form-data. Expected \r"

    .line 213
    .line 214
    invoke-direct {p1, p2}, Lcom/transsion/transfer/androidasync/http/server/MimeEncodingException;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/q;->M(Ljava/lang/Exception;)V

    .line 218
    .line 219
    .line 220
    return-void

    .line 221
    :cond_b
    if-ne v3, v8, :cond_d

    .line 222
    .line 223
    aget-byte v3, v1, p2

    .line 224
    .line 225
    const/16 v4, 0xa

    .line 226
    .line 227
    if-ne v3, v4, :cond_c

    .line 228
    .line 229
    add-int/lit8 v2, p2, 0x1

    .line 230
    .line 231
    iput v0, p0, Lcom/transsion/transfer/androidasync/http/server/p;->h:I

    .line 232
    .line 233
    goto :goto_1

    .line 234
    :cond_c
    new-instance v3, Lcom/transsion/transfer/androidasync/http/server/MimeEncodingException;

    .line 235
    .line 236
    const-string v4, "Invalid multipart/form-data. Expected \n"

    .line 237
    .line 238
    invoke-direct {v3, v4}, Lcom/transsion/transfer/androidasync/http/server/MimeEncodingException;-><init>(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p0, v3}, Lcom/transsion/transfer/androidasync/q;->M(Ljava/lang/Exception;)V

    .line 242
    .line 243
    .line 244
    goto :goto_1

    .line 245
    :cond_d
    new-instance v3, Lcom/transsion/transfer/androidasync/http/server/MimeEncodingException;

    .line 246
    .line 247
    const-string v4, "Invalid multipart/form-data. Unknown state?"

    .line 248
    .line 249
    invoke-direct {v3, v4}, Lcom/transsion/transfer/androidasync/http/server/MimeEncodingException;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {p0, v3}, Lcom/transsion/transfer/androidasync/q;->M(Ljava/lang/Exception;)V

    .line 253
    .line 254
    .line 255
    :cond_e
    :goto_1
    add-int/lit8 p2, p2, 0x1

    .line 256
    .line 257
    goto/16 :goto_0

    .line 258
    .line 259
    :cond_f
    if-ge v2, p1, :cond_10

    .line 260
    .line 261
    iget p2, p0, Lcom/transsion/transfer/androidasync/http/server/p;->h:I

    .line 262
    .line 263
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    .line 264
    .line 265
    .line 266
    move-result p2

    .line 267
    sub-int/2addr p1, v2

    .line 268
    sub-int/2addr p1, p2

    .line 269
    invoke-static {p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->t(I)Ljava/nio/ByteBuffer;

    .line 270
    .line 271
    .line 272
    move-result-object p2

    .line 273
    invoke-virtual {p2, v1, v2, p1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 278
    .line 279
    .line 280
    new-instance p2, Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 281
    .line 282
    invoke-direct {p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;-><init>()V

    .line 283
    .line 284
    .line 285
    invoke-virtual {p2, p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->a(Ljava/nio/ByteBuffer;)Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 286
    .line 287
    .line 288
    invoke-super {p0, p0, p2}, Lcom/transsion/transfer/androidasync/t;->C(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    .line 289
    .line 290
    .line 291
    :cond_10
    return-void
.end method

.method public O()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/p;->g:[B

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    new-instance v1, Ljava/lang/String;

    .line 8
    .line 9
    array-length v2, v0

    .line 10
    const/4 v3, 0x4

    .line 11
    sub-int/2addr v2, v3

    .line 12
    invoke-direct {v1, v0, v3, v2}, Ljava/lang/String;-><init>([BII)V

    .line 13
    .line 14
    .line 15
    return-object v1
.end method

.method public P()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/server/p;->Q()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "--\r\n"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

.method public Q()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/server/p;->g:[B

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    const/4 v3, 0x2

    .line 7
    sub-int/2addr v2, v3

    .line 8
    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([BII)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method protected R()V
    .locals 0

    .line 1
    return-void
.end method

.method protected S()V
    .locals 0

    .line 1
    return-void
.end method

.method public T(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "\r\n--"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/server/p;->g:[B

    .line 23
    .line 24
    return-void
.end method
