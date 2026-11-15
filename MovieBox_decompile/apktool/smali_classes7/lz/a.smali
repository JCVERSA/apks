.class public Llz/a;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "os.name"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Llz/a;->a:Ljava/lang/String;

    .line 14
    .line 15
    const-string v0, "os.arch"

    .line 16
    .line 17
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Llz/a;->b:Ljava/lang/String;

    .line 26
    .line 27
    const-string v0, "os.version"

    .line 28
    .line 29
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Llz/a;->c:Ljava/lang/String;

    .line 38
    .line 39
    const-string v0, "path.separator"

    .line 40
    .line 41
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Llz/a;->d:Ljava/lang/String;

    .line 46
    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0, v0, v0}, Llz/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p0, v0, v0}, Llz/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    if-eqz p3, :cond_16

    .line 9
    .line 10
    :cond_0
    const/4 v1, 0x1

    .line 11
    if-eqz p0, :cond_12

    .line 12
    .line 13
    sget-object v2, Llz/a;->a:Ljava/lang/String;

    .line 14
    .line 15
    const-string v3, "windows"

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    const/4 v5, -0x1

    .line 22
    if-le v4, v5, :cond_1

    .line 23
    .line 24
    move v4, v1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move v4, v0

    .line 27
    :goto_0
    if-eqz v4, :cond_4

    .line 28
    .line 29
    const-string v6, "95"

    .line 30
    .line 31
    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    if-gez v6, :cond_3

    .line 36
    .line 37
    const-string v6, "98"

    .line 38
    .line 39
    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    if-gez v6, :cond_3

    .line 44
    .line 45
    const-string v6, "me"

    .line 46
    .line 47
    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-gez v6, :cond_3

    .line 52
    .line 53
    const-string v6, "ce"

    .line 54
    .line 55
    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-ltz v6, :cond_2

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    move v6, v0

    .line 63
    goto :goto_2

    .line 64
    :cond_3
    :goto_1
    move v6, v1

    .line 65
    :goto_2
    xor-int/lit8 v7, v6, 0x1

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_4
    move v6, v0

    .line 69
    move v7, v6

    .line 70
    :goto_3
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_5

    .line 75
    .line 76
    goto/16 :goto_5

    .line 77
    .line 78
    :cond_5
    const-string v3, "win9x"

    .line 79
    .line 80
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-eqz v3, :cond_7

    .line 85
    .line 86
    if-eqz v4, :cond_6

    .line 87
    .line 88
    if-eqz v6, :cond_6

    .line 89
    .line 90
    goto/16 :goto_4

    .line 91
    .line 92
    :cond_6
    move v4, v0

    .line 93
    goto/16 :goto_5

    .line 94
    .line 95
    :cond_7
    const-string v3, "winnt"

    .line 96
    .line 97
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-eqz v3, :cond_8

    .line 102
    .line 103
    if-eqz v4, :cond_6

    .line 104
    .line 105
    if-eqz v7, :cond_6

    .line 106
    .line 107
    goto/16 :goto_4

    .line 108
    .line 109
    :cond_8
    const-string v3, "os/2"

    .line 110
    .line 111
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    if-eqz v4, :cond_9

    .line 116
    .line 117
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    move-result p0

    .line 121
    if-le p0, v5, :cond_6

    .line 122
    .line 123
    goto/16 :goto_4

    .line 124
    .line 125
    :cond_9
    const-string v3, "netware"

    .line 126
    .line 127
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    if-eqz v4, :cond_a

    .line 132
    .line 133
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    move-result p0

    .line 137
    if-le p0, v5, :cond_6

    .line 138
    .line 139
    goto/16 :goto_4

    .line 140
    .line 141
    :cond_a
    const-string v4, "dos"

    .line 142
    .line 143
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    if-eqz v4, :cond_b

    .line 148
    .line 149
    sget-object p0, Llz/a;->d:Ljava/lang/String;

    .line 150
    .line 151
    const-string v2, ";"

    .line 152
    .line 153
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result p0

    .line 157
    if-eqz p0, :cond_6

    .line 158
    .line 159
    invoke-static {v3}, Llz/a;->a(Ljava/lang/String;)Z

    .line 160
    .line 161
    .line 162
    move-result p0

    .line 163
    if-nez p0, :cond_6

    .line 164
    .line 165
    goto/16 :goto_4

    .line 166
    .line 167
    :cond_b
    const-string v3, "mac"

    .line 168
    .line 169
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v4

    .line 173
    if-eqz v4, :cond_c

    .line 174
    .line 175
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    move-result p0

    .line 179
    if-le p0, v5, :cond_6

    .line 180
    .line 181
    goto/16 :goto_4

    .line 182
    .line 183
    :cond_c
    const-string v4, "tandem"

    .line 184
    .line 185
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v4

    .line 189
    if-eqz v4, :cond_d

    .line 190
    .line 191
    const-string p0, "nonstop_kernel"

    .line 192
    .line 193
    invoke-virtual {v2, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    move-result p0

    .line 197
    if-le p0, v5, :cond_6

    .line 198
    .line 199
    goto/16 :goto_4

    .line 200
    .line 201
    :cond_d
    const-string v4, "unix"

    .line 202
    .line 203
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v4

    .line 207
    const-string v6, "openvms"

    .line 208
    .line 209
    if-eqz v4, :cond_e

    .line 210
    .line 211
    sget-object p0, Llz/a;->d:Ljava/lang/String;

    .line 212
    .line 213
    const-string v4, ":"

    .line 214
    .line 215
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result p0

    .line 219
    if-eqz p0, :cond_6

    .line 220
    .line 221
    invoke-static {v6}, Llz/a;->a(Ljava/lang/String;)Z

    .line 222
    .line 223
    .line 224
    move-result p0

    .line 225
    if-nez p0, :cond_6

    .line 226
    .line 227
    invoke-static {v3}, Llz/a;->a(Ljava/lang/String;)Z

    .line 228
    .line 229
    .line 230
    move-result p0

    .line 231
    if-eqz p0, :cond_12

    .line 232
    .line 233
    const-string p0, "x"

    .line 234
    .line 235
    invoke-virtual {v2, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 236
    .line 237
    .line 238
    move-result p0

    .line 239
    if-eqz p0, :cond_6

    .line 240
    .line 241
    goto :goto_4

    .line 242
    :cond_e
    const-string v3, "z/os"

    .line 243
    .line 244
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v4

    .line 248
    if-eqz v4, :cond_f

    .line 249
    .line 250
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 251
    .line 252
    .line 253
    move-result p0

    .line 254
    if-gt p0, v5, :cond_12

    .line 255
    .line 256
    const-string p0, "os/390"

    .line 257
    .line 258
    invoke-virtual {v2, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 259
    .line 260
    .line 261
    move-result p0

    .line 262
    if-le p0, v5, :cond_6

    .line 263
    .line 264
    goto :goto_4

    .line 265
    :cond_f
    const-string v3, "os/400"

    .line 266
    .line 267
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result v4

    .line 271
    if-eqz v4, :cond_10

    .line 272
    .line 273
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 274
    .line 275
    .line 276
    move-result p0

    .line 277
    if-le p0, v5, :cond_6

    .line 278
    .line 279
    goto :goto_4

    .line 280
    :cond_10
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v3

    .line 284
    if-eqz v3, :cond_11

    .line 285
    .line 286
    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 287
    .line 288
    .line 289
    move-result p0

    .line 290
    if-le p0, v5, :cond_6

    .line 291
    .line 292
    goto :goto_4

    .line 293
    :cond_11
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    .line 294
    .line 295
    new-instance p2, Ljava/lang/StringBuffer;

    .line 296
    .line 297
    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    .line 298
    .line 299
    .line 300
    const-string p3, "Don\'t know how to detect os family \""

    .line 301
    .line 302
    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 303
    .line 304
    .line 305
    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 306
    .line 307
    .line 308
    const-string p0, "\""

    .line 309
    .line 310
    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 311
    .line 312
    .line 313
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object p0

    .line 317
    invoke-direct {p1, p0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    throw p1

    .line 321
    :cond_12
    :goto_4
    move v4, v1

    .line 322
    :goto_5
    if-eqz p1, :cond_13

    .line 323
    .line 324
    sget-object p0, Llz/a;->a:Ljava/lang/String;

    .line 325
    .line 326
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    move-result p0

    .line 330
    goto :goto_6

    .line 331
    :cond_13
    move p0, v1

    .line 332
    :goto_6
    if-eqz p2, :cond_14

    .line 333
    .line 334
    sget-object p1, Llz/a;->b:Ljava/lang/String;

    .line 335
    .line 336
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    move-result p1

    .line 340
    goto :goto_7

    .line 341
    :cond_14
    move p1, v1

    .line 342
    :goto_7
    if-eqz p3, :cond_15

    .line 343
    .line 344
    sget-object p2, Llz/a;->c:Ljava/lang/String;

    .line 345
    .line 346
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    move-result p2

    .line 350
    goto :goto_8

    .line 351
    :cond_15
    move p2, v1

    .line 352
    :goto_8
    if-eqz v4, :cond_16

    .line 353
    .line 354
    if-eqz p0, :cond_16

    .line 355
    .line 356
    if-eqz p1, :cond_16

    .line 357
    .line 358
    if-eqz p2, :cond_16

    .line 359
    .line 360
    move v0, v1

    .line 361
    :cond_16
    return v0
.end method
