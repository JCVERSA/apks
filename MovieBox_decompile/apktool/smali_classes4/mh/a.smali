.class public final Lmh/a;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lmh/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lmh/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lmh/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lmh/a;->a:Lmh/a;

    .line 7
    .line 8
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


# virtual methods
.method public final a(ILjava/io/IOException;)I
    .locals 1

    .line 1
    const/16 v0, 0x1e0

    .line 2
    .line 3
    if-ne p1, v0, :cond_24

    .line 4
    .line 5
    instance-of p1, p2, Ljava/net/SocketTimeoutException;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/16 p1, 0x3f0

    .line 10
    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    :cond_0
    instance-of p1, p2, Ljava/net/UnknownHostException;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    const/16 p1, 0x3ed

    .line 18
    .line 19
    goto/16 :goto_1

    .line 20
    .line 21
    :cond_1
    instance-of p1, p2, Ljava/net/NoRouteToHostException;

    .line 22
    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    const/16 p1, 0x3ee

    .line 26
    .line 27
    goto/16 :goto_1

    .line 28
    .line 29
    :cond_2
    instance-of p1, p2, Ljava/net/ProtocolException;

    .line 30
    .line 31
    if-eqz p1, :cond_3

    .line 32
    .line 33
    const/16 p1, 0x3ef

    .line 34
    .line 35
    goto/16 :goto_1

    .line 36
    .line 37
    :cond_3
    instance-of p1, p2, Ljavax/net/ssl/SSLHandshakeException;

    .line 38
    .line 39
    if-eqz p1, :cond_4

    .line 40
    .line 41
    const/16 p1, 0x3f1

    .line 42
    .line 43
    goto/16 :goto_1

    .line 44
    .line 45
    :cond_4
    instance-of p1, p2, Ljava/net/ConnectException;

    .line 46
    .line 47
    if-eqz p1, :cond_5

    .line 48
    .line 49
    const/16 p1, 0x3f3

    .line 50
    .line 51
    goto/16 :goto_1

    .line 52
    .line 53
    :cond_5
    instance-of p1, p2, Ljava/net/BindException;

    .line 54
    .line 55
    if-eqz p1, :cond_6

    .line 56
    .line 57
    const/16 p1, 0x415

    .line 58
    .line 59
    goto/16 :goto_1

    .line 60
    .line 61
    :cond_6
    instance-of p1, p2, Ljava/net/PortUnreachableException;

    .line 62
    .line 63
    if-eqz p1, :cond_7

    .line 64
    .line 65
    const/16 p1, 0x3f4

    .line 66
    .line 67
    goto/16 :goto_1

    .line 68
    .line 69
    :cond_7
    instance-of p1, p2, Lorg/apache/http/conn/ConnectTimeoutException;

    .line 70
    .line 71
    if-eqz p1, :cond_8

    .line 72
    .line 73
    const/16 p1, 0x3f5

    .line 74
    .line 75
    goto/16 :goto_1

    .line 76
    .line 77
    :cond_8
    instance-of p1, p2, Ljavax/net/ssl/SSLKeyException;

    .line 78
    .line 79
    if-eqz p1, :cond_9

    .line 80
    .line 81
    const/16 p1, 0x3f6

    .line 82
    .line 83
    goto/16 :goto_1

    .line 84
    .line 85
    :cond_9
    instance-of p1, p2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    .line 86
    .line 87
    if-eqz p1, :cond_a

    .line 88
    .line 89
    const/16 p1, 0x3f7

    .line 90
    .line 91
    goto/16 :goto_1

    .line 92
    .line 93
    :cond_a
    instance-of p1, p2, Ljavax/net/ssl/SSLProtocolException;

    .line 94
    .line 95
    if-eqz p1, :cond_b

    .line 96
    .line 97
    const/16 p1, 0x3f8

    .line 98
    .line 99
    goto/16 :goto_1

    .line 100
    .line 101
    :cond_b
    instance-of p1, p2, Lkotlin/io/FileSystemException;

    .line 102
    .line 103
    if-eqz p1, :cond_c

    .line 104
    .line 105
    const/16 p1, 0x3f9

    .line 106
    .line 107
    goto/16 :goto_1

    .line 108
    .line 109
    :cond_c
    instance-of p1, p2, Ljava/io/ObjectStreamException;

    .line 110
    .line 111
    if-eqz p1, :cond_d

    .line 112
    .line 113
    const/16 p1, 0x3fa

    .line 114
    .line 115
    goto/16 :goto_1

    .line 116
    .line 117
    :cond_d
    instance-of p1, p2, Ljava/nio/channels/AsynchronousCloseException;

    .line 118
    .line 119
    if-eqz p1, :cond_e

    .line 120
    .line 121
    const/16 p1, 0x3fb

    .line 122
    .line 123
    goto/16 :goto_1

    .line 124
    .line 125
    :cond_e
    instance-of p1, p2, Ljava/nio/charset/MalformedInputException;

    .line 126
    .line 127
    if-eqz p1, :cond_f

    .line 128
    .line 129
    const/16 p1, 0x413

    .line 130
    .line 131
    goto/16 :goto_1

    .line 132
    .line 133
    :cond_f
    instance-of p1, p2, Ljava/nio/charset/UnmappableCharacterException;

    .line 134
    .line 135
    if-eqz p1, :cond_10

    .line 136
    .line 137
    const/16 p1, 0x414

    .line 138
    .line 139
    goto/16 :goto_1

    .line 140
    .line 141
    :cond_10
    instance-of p1, p2, Ljava/util/jar/JarException;

    .line 142
    .line 143
    if-eqz p1, :cond_11

    .line 144
    .line 145
    const/16 p1, 0x3fe

    .line 146
    .line 147
    goto/16 :goto_1

    .line 148
    .line 149
    :cond_11
    instance-of p1, p2, Ljava/io/CharConversionException;

    .line 150
    .line 151
    if-eqz p1, :cond_12

    .line 152
    .line 153
    const/16 p1, 0x3ff

    .line 154
    .line 155
    goto/16 :goto_1

    .line 156
    .line 157
    :cond_12
    instance-of p1, p2, Landroid/util/Base64DataException;

    .line 158
    .line 159
    if-eqz p1, :cond_13

    .line 160
    .line 161
    const/16 p1, 0x400

    .line 162
    .line 163
    goto/16 :goto_1

    .line 164
    .line 165
    :cond_13
    instance-of p1, p2, Lokhttp3/internal/http2/ConnectionShutdownException;

    .line 166
    .line 167
    if-eqz p1, :cond_14

    .line 168
    .line 169
    const/16 p1, 0x401

    .line 170
    .line 171
    goto/16 :goto_1

    .line 172
    .line 173
    :cond_14
    instance-of p1, p2, Ljava/io/EOFException;

    .line 174
    .line 175
    if-eqz p1, :cond_15

    .line 176
    .line 177
    const/16 p1, 0x403

    .line 178
    .line 179
    goto/16 :goto_1

    .line 180
    .line 181
    :cond_15
    instance-of p1, p2, Landroid/os/ParcelFileDescriptor$FileDescriptorDetachedException;

    .line 182
    .line 183
    if-eqz p1, :cond_16

    .line 184
    .line 185
    const/16 p1, 0x404

    .line 186
    .line 187
    goto/16 :goto_1

    .line 188
    .line 189
    :cond_16
    instance-of p1, p2, Ljava/nio/channels/FileLockInterruptionException;

    .line 190
    .line 191
    if-eqz p1, :cond_17

    .line 192
    .line 193
    const/16 p1, 0x405

    .line 194
    .line 195
    goto/16 :goto_1

    .line 196
    .line 197
    :cond_17
    instance-of p1, p2, Ljava/io/FileNotFoundException;

    .line 198
    .line 199
    if-eqz p1, :cond_18

    .line 200
    .line 201
    const/16 p1, 0x406

    .line 202
    .line 203
    goto :goto_1

    .line 204
    :cond_18
    instance-of p1, p2, Ljava/net/HttpRetryException;

    .line 205
    .line 206
    if-eqz p1, :cond_19

    .line 207
    .line 208
    const/16 p1, 0x407

    .line 209
    .line 210
    goto :goto_1

    .line 211
    :cond_19
    instance-of p1, p2, Ljava/util/InvalidPropertiesFormatException;

    .line 212
    .line 213
    if-eqz p1, :cond_1a

    .line 214
    .line 215
    const/16 p1, 0x409

    .line 216
    .line 217
    goto :goto_1

    .line 218
    :cond_1a
    instance-of p1, p2, Landroid/util/MalformedJsonException;

    .line 219
    .line 220
    if-eqz p1, :cond_1b

    .line 221
    .line 222
    const/16 p1, 0x40a

    .line 223
    .line 224
    goto :goto_1

    .line 225
    :cond_1b
    instance-of p1, p2, Ljava/net/MalformedURLException;

    .line 226
    .line 227
    if-eqz p1, :cond_1c

    .line 228
    .line 229
    const/16 p1, 0x40b

    .line 230
    .line 231
    goto :goto_1

    .line 232
    :cond_1c
    instance-of p1, p2, Lokhttp3/internal/http2/StreamResetException;

    .line 233
    .line 234
    if-eqz p1, :cond_1d

    .line 235
    .line 236
    const/16 p1, 0x40d

    .line 237
    .line 238
    goto :goto_1

    .line 239
    :cond_1d
    instance-of p1, p2, Ljava/io/SyncFailedException;

    .line 240
    .line 241
    if-eqz p1, :cond_1e

    .line 242
    .line 243
    const/16 p1, 0x40e

    .line 244
    .line 245
    goto :goto_1

    .line 246
    :cond_1e
    instance-of p1, p2, Ljava/io/UTFDataFormatException;

    .line 247
    .line 248
    if-eqz p1, :cond_1f

    .line 249
    .line 250
    const/16 p1, 0x40f

    .line 251
    .line 252
    goto :goto_1

    .line 253
    :cond_1f
    instance-of p1, p2, Ljava/net/UnknownServiceException;

    .line 254
    .line 255
    if-eqz p1, :cond_20

    .line 256
    .line 257
    const/16 p1, 0x410

    .line 258
    .line 259
    goto :goto_1

    .line 260
    :cond_20
    instance-of p1, p2, Ljava/io/UnsupportedEncodingException;

    .line 261
    .line 262
    if-eqz p1, :cond_21

    .line 263
    .line 264
    const/16 p1, 0x412

    .line 265
    .line 266
    goto :goto_1

    .line 267
    :cond_21
    if-eqz p2, :cond_22

    .line 268
    .line 269
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    goto :goto_0

    .line 274
    :cond_22
    const/4 p1, 0x0

    .line 275
    :goto_0
    const-string p2, "Canceled"

    .line 276
    .line 277
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result p1

    .line 281
    if-eqz p1, :cond_23

    .line 282
    .line 283
    const/16 p1, 0x41a

    .line 284
    .line 285
    goto :goto_1

    .line 286
    :cond_23
    move p1, v0

    .line 287
    :cond_24
    :goto_1
    return p1
.end method

.method public final b(ILorg/chromium/net/NetworkException;Z)I
    .locals 2

    .line 1
    const/16 v0, 0x1e0

    .line 2
    .line 3
    if-ne p1, v0, :cond_16

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Lorg/chromium/net/NetworkException;->getErrorCode()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    if-nez p1, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    const/4 v1, 0x1

    .line 25
    if-ne p2, v1, :cond_2

    .line 26
    .line 27
    const/16 p1, 0x3ed

    .line 28
    .line 29
    goto/16 :goto_b

    .line 30
    .line 31
    :cond_2
    :goto_1
    if-nez p1, :cond_3

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    const/4 v1, 0x2

    .line 39
    if-ne p2, v1, :cond_4

    .line 40
    .line 41
    const/16 p1, 0x3fc

    .line 42
    .line 43
    goto/16 :goto_b

    .line 44
    .line 45
    :cond_4
    :goto_2
    if-nez p1, :cond_5

    .line 46
    .line 47
    goto :goto_3

    .line 48
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    const/4 v1, 0x4

    .line 53
    if-ne p2, v1, :cond_6

    .line 54
    .line 55
    const/16 p1, 0x3f0

    .line 56
    .line 57
    goto/16 :goto_b

    .line 58
    .line 59
    :cond_6
    :goto_3
    if-nez p1, :cond_7

    .line 60
    .line 61
    goto :goto_4

    .line 62
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    const/4 v1, 0x6

    .line 67
    if-ne p2, v1, :cond_8

    .line 68
    .line 69
    const/16 p1, 0x3f5

    .line 70
    .line 71
    goto/16 :goto_b

    .line 72
    .line 73
    :cond_8
    :goto_4
    if-nez p1, :cond_9

    .line 74
    .line 75
    goto :goto_5

    .line 76
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    const/4 v1, 0x3

    .line 81
    if-ne p2, v1, :cond_a

    .line 82
    .line 83
    const/16 p1, 0x419

    .line 84
    .line 85
    goto :goto_b

    .line 86
    :cond_a
    :goto_5
    if-nez p1, :cond_b

    .line 87
    .line 88
    goto :goto_6

    .line 89
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 90
    .line 91
    .line 92
    move-result p2

    .line 93
    const/4 v1, 0x5

    .line 94
    if-ne p2, v1, :cond_c

    .line 95
    .line 96
    const/16 p1, 0x416

    .line 97
    .line 98
    goto :goto_b

    .line 99
    :cond_c
    :goto_6
    if-nez p1, :cond_d

    .line 100
    .line 101
    goto :goto_7

    .line 102
    :cond_d
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 103
    .line 104
    .line 105
    move-result p2

    .line 106
    const/4 v1, 0x7

    .line 107
    if-ne p2, v1, :cond_e

    .line 108
    .line 109
    const/16 p1, 0x417

    .line 110
    .line 111
    goto :goto_b

    .line 112
    :cond_e
    :goto_7
    if-nez p1, :cond_f

    .line 113
    .line 114
    goto :goto_8

    .line 115
    :cond_f
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 116
    .line 117
    .line 118
    move-result p2

    .line 119
    const/16 v1, 0x8

    .line 120
    .line 121
    if-ne p2, v1, :cond_10

    .line 122
    .line 123
    const/16 p1, 0x418

    .line 124
    .line 125
    goto :goto_b

    .line 126
    :cond_10
    :goto_8
    if-nez p1, :cond_11

    .line 127
    .line 128
    goto :goto_9

    .line 129
    :cond_11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 130
    .line 131
    .line 132
    move-result p2

    .line 133
    const/16 v1, 0x9

    .line 134
    .line 135
    if-ne p2, v1, :cond_12

    .line 136
    .line 137
    const/16 p1, 0x3ee

    .line 138
    .line 139
    goto :goto_b

    .line 140
    :cond_12
    :goto_9
    if-nez p1, :cond_13

    .line 141
    .line 142
    goto :goto_a

    .line 143
    :cond_13
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    const/16 p2, 0xa

    .line 148
    .line 149
    if-ne p1, p2, :cond_14

    .line 150
    .line 151
    const/16 p1, 0x3ef

    .line 152
    .line 153
    goto :goto_b

    .line 154
    :cond_14
    :goto_a
    if-eqz p3, :cond_15

    .line 155
    .line 156
    const/16 p1, 0x41a

    .line 157
    .line 158
    goto :goto_b

    .line 159
    :cond_15
    move p1, v0

    .line 160
    :cond_16
    :goto_b
    return p1
.end method
