.class public final Lcom/transsion/base/report/athena/sampler/c;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/base/report/athena/sampler/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/base/report/athena/sampler/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/base/report/athena/sampler/c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/base/report/athena/sampler/c;->a:Lcom/transsion/base/report/athena/sampler/c;

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
.method public final a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-object v0
.end method

.method public final b(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const-string v2, "event"

    .line 6
    .line 7
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v2, "bundle"

    .line 11
    .line 12
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v2, "deviceId"

    .line 16
    .line 17
    move-object/from16 v6, p3

    .line 18
    .line 19
    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 23
    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v4, "ReportInterception --> intercept() --> \u5f00\u59cb\u5904\u7406\u57cb\u70b9\u62e6\u622a\u903b\u8f91 --> event = "

    .line 30
    .line 31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v9

    .line 41
    const/4 v11, 0x4

    .line 42
    const/4 v12, 0x0

    .line 43
    const-string v8, "sampler"

    .line 44
    .line 45
    const/4 v10, 0x0

    .line 46
    move-object v7, v2

    .line 47
    invoke-static/range {v7 .. v12}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    sget-object v3, Lcom/transsion/base/report/athena/sampler/a;->a:Lcom/transsion/base/report/athena/sampler/a;

    .line 51
    .line 52
    move-object/from16 v13, p0

    .line 53
    .line 54
    invoke-virtual {v13, v1}, Lcom/transsion/base/report/athena/sampler/c;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v3, v0, v4}, Lcom/transsion/base/report/athena/sampler/a;->a(Ljava/lang/String;Landroid/os/Bundle;)Lkotlin/Triple;

    .line 59
    .line 60
    .line 61
    move-result-object v14

    .line 62
    invoke-virtual {v14}, Lkotlin/Triple;->getFirst()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 67
    .line 68
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    const/4 v15, 0x0

    .line 73
    if-eqz v3, :cond_5

    .line 74
    .line 75
    const/4 v11, 0x4

    .line 76
    const/4 v12, 0x0

    .line 77
    const-string v8, "sampler"

    .line 78
    .line 79
    const-string v9, "ReportInterception --> intercept() --> \u4e8b\u4ef6\u8868\u8fbe\u5f0f \u547d\u4e2d --> \u4e0b\u4e00\u6b65\u91c7\u6837\u7387\u5224\u65ad"

    .line 80
    .line 81
    const/4 v10, 0x0

    .line 82
    move-object v7, v2

    .line 83
    invoke-static/range {v7 .. v12}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    sget-object v3, Lcom/transsion/base/report/athena/sampler/b;->a:Lcom/transsion/base/report/athena/sampler/b;

    .line 87
    .line 88
    invoke-virtual {v14}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    check-cast v4, Ljava/lang/Integer;

    .line 93
    .line 94
    if-eqz v4, :cond_0

    .line 95
    .line 96
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    int-to-double v4, v4

    .line 101
    goto :goto_0

    .line 102
    :cond_0
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    .line 103
    .line 104
    :goto_0
    invoke-virtual {v14}, Lkotlin/Triple;->getThird()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    check-cast v7, Ljava/lang/String;

    .line 109
    .line 110
    if-nez v7, :cond_1

    .line 111
    .line 112
    const-string v7, ""

    .line 113
    .line 114
    :cond_1
    const/16 v8, 0x64

    .line 115
    .line 116
    move-object/from16 v6, p3

    .line 117
    .line 118
    invoke-virtual/range {v3 .. v8}, Lcom/transsion/base/report/athena/sampler/b;->a(DLjava/lang/String;Ljava/lang/String;I)Z

    .line 119
    .line 120
    .line 121
    move-result v9

    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    const-string v4, "ReportInterception --> intercept() --> \u91c7\u6837\u7387\u547d\u4e2d = "

    .line 128
    .line 129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    const/4 v7, 0x4

    .line 140
    const/4 v8, 0x0

    .line 141
    const-string v4, "sampler"

    .line 142
    .line 143
    const/4 v6, 0x0

    .line 144
    move-object v3, v2

    .line 145
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    if-eqz v9, :cond_2

    .line 149
    .line 150
    invoke-virtual {v14}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    const-string v4, "sampling_rate"

    .line 159
    .line 160
    invoke-virtual {v1, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    sget-object v3, Lcom/transsion/base/report/athena/sampler/EventConfig;->a:Lcom/transsion/base/report/athena/sampler/EventConfig;

    .line 164
    .line 165
    invoke-virtual {v3, v0}, Lcom/transsion/base/report/athena/sampler/EventConfig;->i(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v3, v0}, Lcom/transsion/base/report/athena/sampler/EventConfig;->h(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_2
    invoke-virtual {v14}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    check-cast v3, Ljava/lang/Integer;

    .line 177
    .line 178
    if-eqz v3, :cond_3

    .line 179
    .line 180
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    int-to-double v3, v3

    .line 185
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    goto :goto_1

    .line 190
    :cond_3
    const/4 v3, 0x0

    .line 191
    :goto_1
    const-wide/16 v4, 0x0

    .line 192
    .line 193
    invoke-static {v3, v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Double;D)Z

    .line 194
    .line 195
    .line 196
    move-result v3

    .line 197
    if-eqz v3, :cond_4

    .line 198
    .line 199
    sget-object v3, Lcom/transsion/base/report/athena/sampler/EventConfig;->a:Lcom/transsion/base/report/athena/sampler/EventConfig;

    .line 200
    .line 201
    invoke-virtual {v3, v0}, Lcom/transsion/base/report/athena/sampler/EventConfig;->a(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    goto :goto_2

    .line 205
    :cond_4
    sget-object v3, Lcom/transsion/base/report/athena/sampler/EventConfig;->a:Lcom/transsion/base/report/athena/sampler/EventConfig;

    .line 206
    .line 207
    invoke-virtual {v3, v0}, Lcom/transsion/base/report/athena/sampler/EventConfig;->b(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    :goto_2
    if-nez v9, :cond_6

    .line 211
    .line 212
    const/4 v15, 0x1

    .line 213
    goto :goto_3

    .line 214
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .line 218
    .line 219
    const-string v4, "ReportInterception --> intercept() --> \u4e8b\u4ef6\u8868\u8fbe\u5f0f \u6ca1\u6709\u547d\u4e2d --> \u4e0d\u9700\u8981\u5904\u7406\u91c7\u6837\u7387 --> \u76f4\u63a5\u4e0a\u62a5\u57cb\u70b9 --> event = "

    .line 220
    .line 221
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    const/4 v7, 0x4

    .line 232
    const/4 v8, 0x0

    .line 233
    const-string v4, "sampler"

    .line 234
    .line 235
    const/4 v6, 0x0

    .line 236
    move-object v3, v2

    .line 237
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    :cond_6
    :goto_3
    if-eqz v15, :cond_7

    .line 241
    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    .line 243
    .line 244
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    .line 246
    .line 247
    const-string v3, "\u57cb\u70b9\u62d2\u7edd\u4e0a\u62a5 --> event = "

    .line 248
    .line 249
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v5

    .line 259
    const/4 v7, 0x4

    .line 260
    const/4 v8, 0x0

    .line 261
    const-string v4, "sampler"

    .line 262
    .line 263
    const/4 v6, 0x0

    .line 264
    move-object v3, v2

    .line 265
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    goto :goto_4

    .line 269
    :cond_7
    sget-object v0, Lcom/transsion/base/report/athena/sampler/EventConfig;->a:Lcom/transsion/base/report/athena/sampler/EventConfig;

    .line 270
    .line 271
    invoke-virtual {v0}, Lcom/transsion/base/report/athena/sampler/EventConfig;->c()Ljava/util/Set;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    const-string v4, "close_event"

    .line 280
    .line 281
    invoke-virtual {v1, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v0}, Lcom/transsion/base/report/athena/sampler/EventConfig;->d()Ljava/util/Set;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    const-string v3, "miss_event"

    .line 293
    .line 294
    invoke-virtual {v1, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    .line 298
    .line 299
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    .line 301
    .line 302
    const-string v3, "track: \u65e5\u5fd7\u4e0a\u62a5 --> bundle = "

    .line 303
    .line 304
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v5

    .line 314
    const/4 v7, 0x4

    .line 315
    const/4 v8, 0x0

    .line 316
    const-string v4, "sampler"

    .line 317
    .line 318
    const/4 v6, 0x0

    .line 319
    move-object v3, v2

    .line 320
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 321
    .line 322
    .line 323
    :goto_4
    return v15
.end method
