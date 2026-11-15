.class public final Lcom/transsion/startup/pref/consume/c;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/startup/pref/consume/c;

.field private static b:J

.field private static c:J

.field private static d:J

.field private static e:J

.field private static f:J

.field private static g:J

.field private static h:Z

.field private static i:Z

.field private static j:Z

.field private static k:Z

.field private static l:Z

.field private static m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/startup/pref/consume/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/startup/pref/consume/c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/startup/pref/consume/c;->a:Lcom/transsion/startup/pref/consume/c;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    sput-boolean v0, Lcom/transsion/startup/pref/consume/c;->h:Z

    .line 10
    .line 11
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

.method public static final synthetic a()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/transsion/startup/pref/consume/c;->f:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic b()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/transsion/startup/pref/consume/c;->b:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic c()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/transsion/startup/pref/consume/c;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic d(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/transsion/startup/pref/consume/c;->j:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic e(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/transsion/startup/pref/consume/c;->i:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic f(J)V
    .locals 0

    .line 1
    sput-wide p0, Lcom/transsion/startup/pref/consume/c;->f:J

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic g(J)V
    .locals 0

    .line 1
    sput-wide p0, Lcom/transsion/startup/pref/consume/c;->c:J

    .line 2
    .line 3
    return-void
.end method

.method private final n()V
    .locals 20

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    sget-wide v2, Lcom/transsion/startup/pref/consume/c;->c:J

    .line 4
    .line 5
    const-wide/16 v4, 0x0

    .line 6
    .line 7
    cmp-long v6, v2, v4

    .line 8
    .line 9
    if-lez v6, :cond_0

    .line 10
    .line 11
    sget-wide v6, Lcom/transsion/startup/pref/consume/c;->b:J

    .line 12
    .line 13
    sub-long/2addr v2, v6

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-wide v2, v4

    .line 16
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/startup/pref/consume/c;->h()J

    .line 17
    .line 18
    .line 19
    move-result-wide v6

    .line 20
    sget-wide v8, Lcom/transsion/startup/pref/consume/c;->f:J

    .line 21
    .line 22
    cmp-long v10, v8, v4

    .line 23
    .line 24
    if-lez v10, :cond_1

    .line 25
    .line 26
    sget-wide v10, Lcom/transsion/startup/pref/consume/c;->e:J

    .line 27
    .line 28
    cmp-long v12, v10, v4

    .line 29
    .line 30
    if-lez v12, :cond_1

    .line 31
    .line 32
    :goto_1
    sub-long v10, v8, v10

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_1
    cmp-long v10, v8, v4

    .line 36
    .line 37
    if-lez v10, :cond_2

    .line 38
    .line 39
    sget-wide v10, Lcom/transsion/startup/pref/consume/c;->c:J

    .line 40
    .line 41
    cmp-long v12, v10, v4

    .line 42
    .line 43
    if-lez v12, :cond_2

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    move-wide v10, v4

    .line 47
    :goto_2
    sget-wide v12, Lcom/transsion/startup/pref/consume/c;->g:J

    .line 48
    .line 49
    cmp-long v14, v12, v4

    .line 50
    .line 51
    if-lez v14, :cond_3

    .line 52
    .line 53
    cmp-long v14, v8, v4

    .line 54
    .line 55
    if-lez v14, :cond_3

    .line 56
    .line 57
    sub-long v4, v12, v8

    .line 58
    .line 59
    :cond_3
    sget-wide v8, Lcom/transsion/startup/pref/consume/c;->b:J

    .line 60
    .line 61
    sub-long/2addr v12, v8

    .line 62
    sub-long v8, v12, v6

    .line 63
    .line 64
    sget-boolean v14, Lcom/transsion/startup/pref/consume/c;->m:Z

    .line 65
    .line 66
    if-eqz v14, :cond_4

    .line 67
    .line 68
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    goto :goto_3

    .line 73
    :cond_4
    const-string v6, "\u65e0\u5e7f\u544a"

    .line 74
    .line 75
    :goto_3
    sget-object v14, Lwf/a;->a:Lwf/a$a;

    .line 76
    .line 77
    sget-object v7, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 78
    .line 79
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    new-array v3, v1, [Ljava/lang/Object;

    .line 84
    .line 85
    aput-object v2, v3, v0

    .line 86
    .line 87
    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    const-string v3, "%6d"

    .line 92
    .line 93
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    const-string v7, "format(...)"

    .line 98
    .line 99
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    new-array v15, v1, [Ljava/lang/Object;

    .line 103
    .line 104
    aput-object v6, v15, v0

    .line 105
    .line 106
    invoke-static {v15, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    const-string v15, "%6s"

    .line 111
    .line 112
    invoke-static {v15, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 120
    .line 121
    .line 122
    move-result-object v10

    .line 123
    new-array v11, v1, [Ljava/lang/Object;

    .line 124
    .line 125
    aput-object v10, v11, v0

    .line 126
    .line 127
    invoke-static {v11, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v10

    .line 131
    invoke-static {v3, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v10

    .line 135
    invoke-static {v10, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    new-array v5, v1, [Ljava/lang/Object;

    .line 143
    .line 144
    aput-object v4, v5, v0

    .line 145
    .line 146
    invoke-static {v5, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    new-array v11, v1, [Ljava/lang/Object;

    .line 162
    .line 163
    aput-object v5, v11, v0

    .line 164
    .line 165
    invoke-static {v11, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 177
    .line 178
    .line 179
    move-result-object v8

    .line 180
    new-array v9, v1, [Ljava/lang/Object;

    .line 181
    .line 182
    aput-object v8, v9, v0

    .line 183
    .line 184
    invoke-static {v9, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    new-instance v3, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .line 199
    .line 200
    const-string v7, "\n            |\n            |\u2554\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2557\n            |\u2551                    \ud83d\ude80 \u542f\u52a8\u6027\u80fd\u5206\u6790\u62a5\u544a                        \u2551\n            |\u2560\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2563\n            |\u2551 \u9636\u6bb5\u5206\u89e3\uff1a                                                    \u2551\n            |\u2551   [1] \u8fdb\u7a0b\u542f\u52a8 \u2192 Splash\u9996\u5e27:        "

    .line 201
    .line 202
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    const-string v2, "ms              \u2551\n            |\u2551   [2] \u5e7f\u544a\u7b49\u5f85\u65f6\u957f:                 "

    .line 209
    .line 210
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    const-string v2, "ms  (\u5df2\u6392\u9664)    \u2551\n            |\u2551   [3] \u5e7f\u544a\u7ed3\u675f \u2192 MainActivity\u9996\u5e27:  "

    .line 217
    .line 218
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    const-string v2, "ms              \u2551\n            |\u2551   [4] MainActivity\u9996\u5e27 \u2192 \u6570\u636e\u52a0\u8f7d:  "

    .line 225
    .line 226
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    const-string v2, "ms              \u2551\n            |\u2560\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2563\n            |\u2551 \u6c47\u603b\uff1a                                                        \u2551\n            |\u2551   \u603b\u8017\u65f6 (\u542b\u5e7f\u544a\u7b49\u5f85):             "

    .line 233
    .line 234
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    const-string v2, "ms              \u2551\n            |\u2551   \u771f\u5b9e\u542f\u52a8\u65f6\u95f4 (TTFD):             "

    .line 241
    .line 242
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    const-string v0, "ms              \u2551\n            |\u255a\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u255d\n        "

    .line 249
    .line 250
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    const/4 v2, 0x0

    .line 258
    invoke-static {v0, v2, v1, v2}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v16

    .line 262
    const/16 v18, 0x4

    .line 263
    .line 264
    const/16 v19, 0x0

    .line 265
    .line 266
    const-string v15, "AppStartup"

    .line 267
    .line 268
    const/16 v17, 0x0

    .line 269
    .line 270
    invoke-static/range {v14 .. v19}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 271
    .line 272
    .line 273
    return-void
.end method

.method private final p()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    sput-wide v0, Lcom/transsion/startup/pref/consume/c;->c:J

    .line 4
    .line 5
    sput-wide v0, Lcom/transsion/startup/pref/consume/c;->d:J

    .line 6
    .line 7
    sput-wide v0, Lcom/transsion/startup/pref/consume/c;->e:J

    .line 8
    .line 9
    sput-wide v0, Lcom/transsion/startup/pref/consume/c;->f:J

    .line 10
    .line 11
    sput-wide v0, Lcom/transsion/startup/pref/consume/c;->g:J

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    sput-boolean v0, Lcom/transsion/startup/pref/consume/c;->h:Z

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    sput-boolean v0, Lcom/transsion/startup/pref/consume/c;->i:Z

    .line 18
    .line 19
    sput-boolean v0, Lcom/transsion/startup/pref/consume/c;->j:Z

    .line 20
    .line 21
    sput-boolean v0, Lcom/transsion/startup/pref/consume/c;->k:Z

    .line 22
    .line 23
    sput-boolean v0, Lcom/transsion/startup/pref/consume/c;->l:Z

    .line 24
    .line 25
    sput-boolean v0, Lcom/transsion/startup/pref/consume/c;->m:Z

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final h()J
    .locals 6

    .line 1
    sget-boolean v0, Lcom/transsion/startup/pref/consume/c;->m:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-wide v1, Lcom/transsion/startup/pref/consume/c;->e:J

    .line 6
    .line 7
    sget-wide v3, Lcom/transsion/startup/pref/consume/c;->d:J

    .line 8
    .line 9
    cmp-long v5, v1, v3

    .line 10
    .line 11
    if-lez v5, :cond_0

    .line 12
    .line 13
    sub-long/2addr v1, v3

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    if-eqz v0, :cond_1

    .line 16
    .line 17
    sget-boolean v0, Lcom/transsion/startup/pref/consume/c;->l:Z

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    sget-wide v2, Lcom/transsion/startup/pref/consume/c;->d:J

    .line 26
    .line 27
    sub-long v1, v0, v2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const-wide/16 v1, 0x0

    .line 31
    .line 32
    :goto_0
    return-wide v1
.end method

.method public final i()Lcom/transsion/startup/pref/consume/b;
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/transsion/startup/pref/consume/c;->h()J

    .line 2
    .line 3
    .line 4
    move-result-wide v3

    .line 5
    sget-wide v0, Lcom/transsion/startup/pref/consume/c;->g:J

    .line 6
    .line 7
    const-wide/16 v5, 0x0

    .line 8
    .line 9
    cmp-long v2, v0, v5

    .line 10
    .line 11
    if-lez v2, :cond_0

    .line 12
    .line 13
    sget-wide v7, Lcom/transsion/startup/pref/consume/c;->b:J

    .line 14
    .line 15
    sub-long/2addr v0, v7

    .line 16
    move-wide v7, v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-wide v7, v5

    .line 19
    :goto_0
    new-instance v12, Lcom/transsion/startup/pref/consume/b;

    .line 20
    .line 21
    sget-wide v0, Lcom/transsion/startup/pref/consume/c;->c:J

    .line 22
    .line 23
    cmp-long v2, v0, v5

    .line 24
    .line 25
    if-lez v2, :cond_1

    .line 26
    .line 27
    sget-wide v9, Lcom/transsion/startup/pref/consume/c;->b:J

    .line 28
    .line 29
    sub-long/2addr v0, v9

    .line 30
    move-wide v1, v0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move-wide v1, v5

    .line 33
    :goto_1
    sget-wide v9, Lcom/transsion/startup/pref/consume/c;->f:J

    .line 34
    .line 35
    cmp-long v0, v9, v5

    .line 36
    .line 37
    if-lez v0, :cond_2

    .line 38
    .line 39
    sget-wide v5, Lcom/transsion/startup/pref/consume/c;->b:J

    .line 40
    .line 41
    sub-long/2addr v9, v5

    .line 42
    sub-long/2addr v9, v3

    .line 43
    move-wide v5, v9

    .line 44
    :cond_2
    sub-long v9, v7, v3

    .line 45
    .line 46
    sget-boolean v11, Lcom/transsion/startup/pref/consume/c;->m:Z

    .line 47
    .line 48
    move-object v0, v12

    .line 49
    invoke-direct/range {v0 .. v11}, Lcom/transsion/startup/pref/consume/b;-><init>(JJJJJZ)V

    .line 50
    .line 51
    .line 52
    return-object v12
.end method

.method public final j()V
    .locals 8

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/google/firebase/perf/metrics/a;->a()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    :goto_0
    sput-wide v0, Lcom/transsion/startup/pref/consume/c;->b:J

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/transsion/startup/pref/consume/c;->p()V

    .line 19
    .line 20
    .line 21
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 22
    .line 23
    sget-wide v0, Lcom/transsion/startup/pref/consume/c;->b:J

    .line 24
    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v4, "\ud83d\udccd [Phase 0] App Process Started at: "

    .line 31
    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    const/4 v6, 0x4

    .line 43
    const/4 v7, 0x0

    .line 44
    const-string v3, "AppStartup"

    .line 45
    .line 46
    const/4 v5, 0x0

    .line 47
    invoke-static/range {v2 .. v7}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final k(Landroid/app/Activity;)V
    .locals 2

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-boolean v0, Lcom/transsion/startup/pref/consume/c;->h:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    sget-boolean v0, Lcom/transsion/startup/pref/consume/c;->j:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const v0, 0x1020002

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    new-instance v1, Lcom/transsion/startup/pref/consume/c$a;

    .line 31
    .line 32
    invoke-direct {v1, p1}, Lcom/transsion/startup/pref/consume/c$a;-><init>(Landroid/view/View;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    return-void
.end method

.method public final l(Landroid/app/Activity;)V
    .locals 2

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-boolean v0, Lcom/transsion/startup/pref/consume/c;->h:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    sget-boolean v0, Lcom/transsion/startup/pref/consume/c;->i:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const v0, 0x1020002

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    new-instance v1, Lcom/transsion/startup/pref/consume/c$b;

    .line 31
    .line 32
    invoke-direct {v1, p1}, Lcom/transsion/startup/pref/consume/c$b;-><init>(Landroid/view/View;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    return-void
.end method

.method public final m()V
    .locals 8

    .line 1
    sget-boolean v0, Lcom/transsion/startup/pref/consume/c;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    sget-boolean v0, Lcom/transsion/startup/pref/consume/c;->l:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    sput-wide v0, Lcom/transsion/startup/pref/consume/c;->d:J

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    sput-boolean v2, Lcom/transsion/startup/pref/consume/c;->l:Z

    .line 18
    .line 19
    sput-boolean v2, Lcom/transsion/startup/pref/consume/c;->m:Z

    .line 20
    .line 21
    sget-wide v2, Lcom/transsion/startup/pref/consume/c;->b:J

    .line 22
    .line 23
    sub-long/2addr v0, v2

    .line 24
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 25
    .line 26
    sget-wide v3, Lcom/transsion/startup/pref/consume/c;->d:J

    .line 27
    .line 28
    new-instance v5, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v6, "\u23f8\ufe0f [Phase 2] Paused for Ad at: "

    .line 34
    .line 35
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v3, " (\u5df2\u8fd0\u884c "

    .line 42
    .line 43
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v0, "ms)"

    .line 50
    .line 51
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    const/4 v6, 0x4

    .line 59
    const/4 v7, 0x0

    .line 60
    const-string v3, "AppStartup"

    .line 61
    .line 62
    const/4 v5, 0x0

    .line 63
    invoke-static/range {v2 .. v7}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    :goto_0
    return-void
.end method

.method public final o(Landroid/app/Activity;)V
    .locals 14

    .line 1
    const/4 p1, 0x1

    .line 2
    const/4 v0, 0x0

    .line 3
    sget-boolean v1, Lcom/transsion/startup/pref/consume/c;->h:Z

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    sget-boolean v1, Lcom/transsion/startup/pref/consume/c;->k:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_0

    .line 12
    .line 13
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    sput-wide v1, Lcom/transsion/startup/pref/consume/c;->g:J

    .line 18
    .line 19
    sget-wide v3, Lcom/transsion/startup/pref/consume/c;->b:J

    .line 20
    .line 21
    sub-long/2addr v1, v3

    .line 22
    invoke-virtual {p0}, Lcom/transsion/startup/pref/consume/c;->h()J

    .line 23
    .line 24
    .line 25
    move-result-wide v3

    .line 26
    sub-long v5, v1, v3

    .line 27
    .line 28
    sget-object v13, Lwf/a;->a:Lwf/a$a;

    .line 29
    .line 30
    const/4 v11, 0x4

    .line 31
    const/4 v12, 0x0

    .line 32
    const-string v8, "AppStartup"

    .line 33
    .line 34
    const-string v9, "\u2705 [Phase 4] TTFD (Full Display):"

    .line 35
    .line 36
    const/4 v10, 0x0

    .line 37
    move-object v7, v13

    .line 38
    invoke-static/range {v7 .. v12}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    new-instance v7, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v8, "   \u251c\u2500 \u603b\u8017\u65f6 (\u542b\u5e7f\u544a\u7b49\u5f85): "

    .line 47
    .line 48
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, "ms"

    .line 55
    .line 56
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    const-string v8, "AppStartup"

    .line 64
    .line 65
    move-object v7, v13

    .line 66
    invoke-static/range {v7 .. v12}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string v7, "   \u251c\u2500 \u5e7f\u544a\u7b49\u5f85\u65f6\u957f: "

    .line 75
    .line 76
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v9

    .line 89
    const-string v8, "AppStartup"

    .line 90
    .line 91
    move-object v7, v13

    .line 92
    invoke-static/range {v7 .. v12}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    const-string v3, "   \u2514\u2500 \u771f\u5b9e\u542f\u52a8\u65f6\u95f4 (TTFD): "

    .line 101
    .line 102
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v9

    .line 115
    const-string v8, "AppStartup"

    .line 116
    .line 117
    invoke-static/range {v7 .. v12}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    invoke-direct {p0}, Lcom/transsion/startup/pref/consume/c;->n()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/transsion/startup/pref/consume/c;->i()Lcom/transsion/startup/pref/consume/b;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v1}, Lcom/transsion/startup/pref/consume/b;->e()J

    .line 128
    .line 129
    .line 130
    move-result-wide v2

    .line 131
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    const-string v3, "splash_ttid"

    .line 136
    .line 137
    invoke-static {v3, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-virtual {v1}, Lcom/transsion/startup/pref/consume/b;->a()J

    .line 142
    .line 143
    .line 144
    move-result-wide v3

    .line 145
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    const-string v4, "ad_wait_duration"

    .line 150
    .line 151
    invoke-static {v4, v3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    invoke-virtual {v1}, Lcom/transsion/startup/pref/consume/b;->c()J

    .line 156
    .line 157
    .line 158
    move-result-wide v4

    .line 159
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    const-string v5, "main_activity_ttid"

    .line 164
    .line 165
    invoke-static {v5, v4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    invoke-virtual {v1}, Lcom/transsion/startup/pref/consume/b;->f()J

    .line 170
    .line 171
    .line 172
    move-result-wide v5

    .line 173
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    const-string v6, "total_ttfd"

    .line 178
    .line 179
    invoke-static {v6, v5}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    invoke-virtual {v1}, Lcom/transsion/startup/pref/consume/b;->d()J

    .line 184
    .line 185
    .line 186
    move-result-wide v6

    .line 187
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    const-string v7, "real_ttfd"

    .line 192
    .line 193
    invoke-static {v7, v6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 194
    .line 195
    .line 196
    move-result-object v6

    .line 197
    invoke-virtual {v1}, Lcom/transsion/startup/pref/consume/b;->b()Z

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    const-string v7, "has_ad"

    .line 206
    .line 207
    invoke-static {v7, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    const/4 v7, 0x6

    .line 212
    new-array v7, v7, [Lkotlin/Pair;

    .line 213
    .line 214
    aput-object v2, v7, v0

    .line 215
    .line 216
    aput-object v3, v7, p1

    .line 217
    .line 218
    const/4 v2, 0x2

    .line 219
    aput-object v4, v7, v2

    .line 220
    .line 221
    const/4 v2, 0x3

    .line 222
    aput-object v5, v7, v2

    .line 223
    .line 224
    const/4 v2, 0x4

    .line 225
    aput-object v6, v7, v2

    .line 226
    .line 227
    const/4 v2, 0x5

    .line 228
    aput-object v1, v7, v2

    .line 229
    .line 230
    invoke-static {v7}, Lkotlin/collections/MapsKt;->l([Lkotlin/Pair;)Ljava/util/Map;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    sget-object v2, Lqi/h;->a:Lqi/h;

    .line 235
    .line 236
    const-string v3, "app_startup_stat_ab_new"

    .line 237
    .line 238
    const-string v4, "app_perf"

    .line 239
    .line 240
    invoke-virtual {v2, v3, v4, v1}, Lqi/h;->q(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 241
    .line 242
    .line 243
    sput-boolean p1, Lcom/transsion/startup/pref/consume/c;->k:Z

    .line 244
    .line 245
    sput-boolean v0, Lcom/transsion/startup/pref/consume/c;->h:Z

    .line 246
    .line 247
    :cond_1
    :goto_0
    return-void
.end method

.method public final q()V
    .locals 8

    .line 1
    sget-boolean v0, Lcom/transsion/startup/pref/consume/c;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    sget-boolean v0, Lcom/transsion/startup/pref/consume/c;->l:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    sput-wide v0, Lcom/transsion/startup/pref/consume/c;->e:J

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    sput-boolean v0, Lcom/transsion/startup/pref/consume/c;->l:Z

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/transsion/startup/pref/consume/c;->h()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 24
    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v4, "\u25b6\ufe0f [Phase 2] Resumed after Ad, Wait Duration: "

    .line 31
    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v0, "ms (\u5e7f\u544a\u7b49\u5f85\u65f6\u95f4\uff0c\u5df2\u4ece\u7edf\u8ba1\u4e2d\u6392\u9664)"

    .line 39
    .line 40
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    const/4 v6, 0x4

    .line 48
    const/4 v7, 0x0

    .line 49
    const-string v3, "AppStartup"

    .line 50
    .line 51
    const/4 v5, 0x0

    .line 52
    invoke-static/range {v2 .. v7}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_0
    return-void
.end method

.method public final r()V
    .locals 7

    .line 1
    sget-boolean v0, Lcom/transsion/startup/pref/consume/c;->h:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-boolean v0, Lcom/transsion/startup/pref/consume/c;->l:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 11
    .line 12
    const/4 v5, 0x4

    .line 13
    const/4 v6, 0x0

    .line 14
    const-string v2, "AppStartup"

    .line 15
    .line 16
    const-string v3, "\u23ed\ufe0f [Phase 2] Ad Skipped - No ad shown, resuming timer"

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-static/range {v1 .. v6}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    sput-boolean v0, Lcom/transsion/startup/pref/consume/c;->l:Z

    .line 24
    .line 25
    sput-boolean v0, Lcom/transsion/startup/pref/consume/c;->m:Z

    .line 26
    .line 27
    const-wide/16 v0, 0x0

    .line 28
    .line 29
    sput-wide v0, Lcom/transsion/startup/pref/consume/c;->d:J

    .line 30
    .line 31
    sput-wide v0, Lcom/transsion/startup/pref/consume/c;->e:J

    .line 32
    .line 33
    return-void
.end method
