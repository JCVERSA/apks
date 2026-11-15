.class public final Lcom/transsion/videofloat/manager/d;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/videofloat/manager/d$a;
    }
.end annotation


# instance fields
.field private final a:Ldw/a;

.field private final b:Z

.field private c:J

.field private d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:I

.field private i:J

.field private j:J

.field private k:J

.field private l:I

.field private m:J

.field private n:J

.field private o:J

.field private p:Ljava/lang/Integer;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Lgj/c;


# direct methods
.method public constructor <init>(Ldw/a;Z)V
    .locals 1

    .line 1
    const-string v0, "floatBean"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/transsion/videofloat/manager/d;->a:Ldw/a;

    .line 10
    .line 11
    iput-boolean p2, p0, Lcom/transsion/videofloat/manager/d;->b:Z

    .line 12
    .line 13
    const-string v0, ""

    .line 14
    .line 15
    iput-object v0, p0, Lcom/transsion/videofloat/manager/d;->q:Ljava/lang/String;

    .line 16
    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Ldw/a;->f()Lcom/transsion/player/orplayer/f;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p1}, Lcom/transsion/player/orplayer/f;->getDuration()J

    .line 24
    .line 25
    .line 26
    move-result-wide p1

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/transsion/videofloat/manager/d;->q(J)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method private final c()Lgj/c;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/videofloat/manager/d;->t:Lgj/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lgj/a;->a:Lgj/a$a;

    .line 6
    .line 7
    const-class v1, Lgj/c;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lgj/a$a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lgj/c;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/transsion/videofloat/manager/d;->t:Lgj/c;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/transsion/videofloat/manager/d;->t:Lgj/c;

    .line 18
    .line 19
    return-object v0
.end method

.method private final o()V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/transsion/videofloat/manager/d;->c:J

    .line 4
    .line 5
    iput-wide v0, p0, Lcom/transsion/videofloat/manager/d;->d:J

    .line 6
    .line 7
    iput-wide v0, p0, Lcom/transsion/videofloat/manager/d;->e:J

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/transsion/videofloat/manager/d;->f:J

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/transsion/videofloat/manager/d;->g:J

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    iput v2, p0, Lcom/transsion/videofloat/manager/d;->h:I

    .line 15
    .line 16
    iput-wide v0, p0, Lcom/transsion/videofloat/manager/d;->i:J

    .line 17
    .line 18
    iput-wide v0, p0, Lcom/transsion/videofloat/manager/d;->j:J

    .line 19
    .line 20
    iput-wide v0, p0, Lcom/transsion/videofloat/manager/d;->k:J

    .line 21
    .line 22
    iput v2, p0, Lcom/transsion/videofloat/manager/d;->l:I

    .line 23
    .line 24
    iput-wide v0, p0, Lcom/transsion/videofloat/manager/d;->m:J

    .line 25
    .line 26
    iput-wide v0, p0, Lcom/transsion/videofloat/manager/d;->n:J

    .line 27
    .line 28
    iput-wide v0, p0, Lcom/transsion/videofloat/manager/d;->o:J

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/transsion/videofloat/manager/d;->r:Ljava/lang/String;

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/transsion/videofloat/manager/d;->d:J

    .line 6
    .line 7
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 8
    .line 9
    const/4 v6, 0x4

    .line 10
    const/4 v7, 0x0

    .line 11
    const-string v3, "video_play"

    .line 12
    .line 13
    const-string v4, "addSurface"

    .line 14
    .line 15
    const/4 v5, 0x0

    .line 16
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final b()V
    .locals 13

    .line 1
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/videofloat/manager/d;->a:Ldw/a;

    .line 7
    .line 8
    invoke-virtual {v0}, Ldw/a;->w()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "is_positive"

    .line 17
    .line 18
    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/transsion/videofloat/manager/d;->a:Ldw/a;

    .line 22
    .line 23
    invoke-virtual {v0}, Ldw/a;->m()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, ""

    .line 28
    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    move-object v0, v1

    .line 32
    :cond_0
    const-string v2, "post_id"

    .line 33
    .line 34
    invoke-interface {v5, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/transsion/videofloat/manager/d;->a:Ldw/a;

    .line 38
    .line 39
    invoke-virtual {v0}, Ldw/a;->r()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v2, "subject_id"

    .line 44
    .line 45
    invoke-interface {v5, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/transsion/videofloat/manager/d;->s:Ljava/lang/String;

    .line 49
    .line 50
    if-nez v0, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    move-object v1, v0

    .line 54
    :goto_0
    const-string v0, "play_type"

    .line 55
    .line 56
    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    const-string v0, "opt_type"

    .line 60
    .line 61
    const-string v1, "float"

    .line 62
    .line 63
    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/transsion/videofloat/manager/d;->a:Ldw/a;

    .line 67
    .line 68
    invoke-virtual {v0}, Ldw/a;->q()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-lez v0, :cond_2

    .line 73
    .line 74
    iget-object v0, p0, Lcom/transsion/videofloat/manager/d;->a:Ldw/a;

    .line 75
    .line 76
    invoke-virtual {v0}, Ldw/a;->q()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    const-string v1, "se"

    .line 85
    .line 86
    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    :cond_2
    iget-object v0, p0, Lcom/transsion/videofloat/manager/d;->a:Ldw/a;

    .line 90
    .line 91
    invoke-virtual {v0}, Ldw/a;->c()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-lez v0, :cond_3

    .line 96
    .line 97
    iget-object v0, p0, Lcom/transsion/videofloat/manager/d;->a:Ldw/a;

    .line 98
    .line 99
    invoke-virtual {v0}, Ldw/a;->c()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    const-string v1, "ep"

    .line 108
    .line 109
    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    :cond_3
    iget-object v0, p0, Lcom/transsion/videofloat/manager/d;->a:Ldw/a;

    .line 113
    .line 114
    invoke-virtual {v0}, Ldw/a;->g()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    if-eqz v0, :cond_5

    .line 119
    .line 120
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-nez v0, :cond_4

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_4
    iget-object v0, p0, Lcom/transsion/videofloat/manager/d;->a:Ldw/a;

    .line 128
    .line 129
    invoke-virtual {v0}, Ldw/a;->g()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    const-string v1, "page_from"

    .line 137
    .line 138
    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/transsion/videofloat/manager/d;->a:Ldw/a;

    .line 142
    .line 143
    invoke-virtual {v0}, Ldw/a;->e()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    if-eqz v0, :cond_7

    .line 148
    .line 149
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-nez v0, :cond_6

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_6
    iget-object v0, p0, Lcom/transsion/videofloat/manager/d;->a:Ldw/a;

    .line 157
    .line 158
    invoke-virtual {v0}, Ldw/a;->e()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    const-string v1, "ops"

    .line 166
    .line 167
    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/transsion/videofloat/manager/d;->a:Ldw/a;

    .line 171
    .line 172
    invoke-virtual {v0}, Ldw/a;->s()Ljava/lang/Integer;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    if-eqz v0, :cond_8

    .line 177
    .line 178
    iget-object v0, p0, Lcom/transsion/videofloat/manager/d;->a:Ldw/a;

    .line 179
    .line 180
    invoke-virtual {v0}, Ldw/a;->s()Ljava/lang/Integer;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    const-string v1, "subject_type"

    .line 189
    .line 190
    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    :cond_8
    iget-wide v0, p0, Lcom/transsion/videofloat/manager/d;->e:J

    .line 194
    .line 195
    const-wide/16 v2, 0x0

    .line 196
    .line 197
    cmp-long v0, v0, v2

    .line 198
    .line 199
    const-string v1, "delay"

    .line 200
    .line 201
    const-string v4, "delay_v"

    .line 202
    .line 203
    const-string v6, "is_start"

    .line 204
    .line 205
    const-string v7, "1"

    .line 206
    .line 207
    const-string v8, "0"

    .line 208
    .line 209
    if-gtz v0, :cond_c

    .line 210
    .line 211
    iget-boolean v0, p0, Lcom/transsion/videofloat/manager/d;->b:Z

    .line 212
    .line 213
    if-eqz v0, :cond_9

    .line 214
    .line 215
    goto :goto_5

    .line 216
    :cond_9
    invoke-interface {v5, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    iget-wide v9, p0, Lcom/transsion/videofloat/manager/d;->c:J

    .line 220
    .line 221
    cmp-long v0, v9, v2

    .line 222
    .line 223
    if-lez v0, :cond_a

    .line 224
    .line 225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 226
    .line 227
    .line 228
    move-result-wide v9

    .line 229
    iget-wide v11, p0, Lcom/transsion/videofloat/manager/d;->c:J

    .line 230
    .line 231
    sub-long/2addr v9, v11

    .line 232
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    goto :goto_3

    .line 237
    :cond_a
    move-object v0, v8

    .line 238
    :goto_3
    invoke-interface {v5, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    iget-wide v9, p0, Lcom/transsion/videofloat/manager/d;->d:J

    .line 242
    .line 243
    cmp-long v0, v9, v2

    .line 244
    .line 245
    if-lez v0, :cond_b

    .line 246
    .line 247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 248
    .line 249
    .line 250
    move-result-wide v9

    .line 251
    iget-wide v11, p0, Lcom/transsion/videofloat/manager/d;->d:J

    .line 252
    .line 253
    sub-long/2addr v9, v11

    .line 254
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    goto :goto_4

    .line 259
    :cond_b
    move-object v0, v8

    .line 260
    :goto_4
    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    goto/16 :goto_8

    .line 264
    .line 265
    :cond_c
    :goto_5
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    iget-wide v9, p0, Lcom/transsion/videofloat/manager/d;->e:J

    .line 269
    .line 270
    cmp-long v0, v9, v2

    .line 271
    .line 272
    if-lez v0, :cond_f

    .line 273
    .line 274
    iget-wide v11, p0, Lcom/transsion/videofloat/manager/d;->c:J

    .line 275
    .line 276
    cmp-long v0, v11, v2

    .line 277
    .line 278
    if-lez v0, :cond_d

    .line 279
    .line 280
    cmp-long v0, v9, v2

    .line 281
    .line 282
    if-lez v0, :cond_d

    .line 283
    .line 284
    sub-long/2addr v9, v11

    .line 285
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    goto :goto_6

    .line 290
    :cond_d
    move-object v0, v8

    .line 291
    :goto_6
    invoke-interface {v5, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    iget-wide v9, p0, Lcom/transsion/videofloat/manager/d;->d:J

    .line 295
    .line 296
    cmp-long v0, v9, v2

    .line 297
    .line 298
    if-lez v0, :cond_e

    .line 299
    .line 300
    iget-wide v11, p0, Lcom/transsion/videofloat/manager/d;->e:J

    .line 301
    .line 302
    cmp-long v0, v11, v2

    .line 303
    .line 304
    if-lez v0, :cond_e

    .line 305
    .line 306
    sub-long/2addr v11, v9

    .line 307
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    goto :goto_7

    .line 312
    :cond_e
    move-object v0, v8

    .line 313
    :goto_7
    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    :cond_f
    iget-wide v0, p0, Lcom/transsion/videofloat/manager/d;->f:J

    .line 317
    .line 318
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    const-string v1, "buffer_time"

    .line 323
    .line 324
    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    iget v0, p0, Lcom/transsion/videofloat/manager/d;->h:I

    .line 328
    .line 329
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    const-string v1, "buffer_count"

    .line 334
    .line 335
    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    iget-wide v0, p0, Lcom/transsion/videofloat/manager/d;->i:J

    .line 339
    .line 340
    long-to-float v0, v0

    .line 341
    iget-wide v9, p0, Lcom/transsion/videofloat/manager/d;->o:J

    .line 342
    .line 343
    long-to-float v1, v9

    .line 344
    div-float/2addr v0, v1

    .line 345
    const/high16 v1, 0x42c80000    # 100.0f

    .line 346
    .line 347
    mul-float/2addr v0, v1

    .line 348
    iget v4, p0, Lcom/transsion/videofloat/manager/d;->l:I

    .line 349
    .line 350
    int-to-float v4, v4

    .line 351
    mul-float/2addr v4, v1

    .line 352
    add-float/2addr v0, v4

    .line 353
    const-string v1, "play_complete"

    .line 354
    .line 355
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    iget-wide v0, p0, Lcom/transsion/videofloat/manager/d;->k:J

    .line 363
    .line 364
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    const-string v1, "play_duration"

    .line 369
    .line 370
    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    iget-wide v0, p0, Lcom/transsion/videofloat/manager/d;->n:J

    .line 374
    .line 375
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    const-string v1, "pause_duration"

    .line 380
    .line 381
    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    iget v0, p0, Lcom/transsion/videofloat/manager/d;->l:I

    .line 385
    .line 386
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    const-string v1, "completeCount"

    .line 391
    .line 392
    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    iget-wide v0, p0, Lcom/transsion/videofloat/manager/d;->k:J

    .line 396
    .line 397
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    const-string v1, "play_duration_float"

    .line 402
    .line 403
    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    :goto_8
    iget-object v0, p0, Lcom/transsion/videofloat/manager/d;->r:Ljava/lang/String;

    .line 407
    .line 408
    if-eqz v0, :cond_10

    .line 409
    .line 410
    const-string v1, "is_preloaded"

    .line 411
    .line 412
    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    :cond_10
    const-string v0, "url"

    .line 416
    .line 417
    iget-object v1, p0, Lcom/transsion/videofloat/manager/d;->q:Ljava/lang/String;

    .line 418
    .line 419
    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    iget-object v0, p0, Lcom/transsion/videofloat/manager/d;->a:Ldw/a;

    .line 423
    .line 424
    invoke-virtual {v0}, Ldw/a;->a()Z

    .line 425
    .line 426
    .line 427
    move-result v0

    .line 428
    if-eqz v0, :cond_11

    .line 429
    .line 430
    move-object v8, v7

    .line 431
    :cond_11
    const-string v0, "builtin"

    .line 432
    .line 433
    invoke-interface {v5, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    iget-wide v0, p0, Lcom/transsion/videofloat/manager/d;->o:J

    .line 437
    .line 438
    cmp-long v2, v0, v2

    .line 439
    .line 440
    if-lez v2, :cond_12

    .line 441
    .line 442
    const-string v2, "total_duration"

    .line 443
    .line 444
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    invoke-interface {v5, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    :cond_12
    const-string v0, "player_type"

    .line 452
    .line 453
    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    iget-object v0, p0, Lcom/transsion/videofloat/manager/d;->p:Ljava/lang/Integer;

    .line 457
    .line 458
    if-eqz v0, :cond_13

    .line 459
    .line 460
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v0

    .line 464
    const-string v1, "error_code"

    .line 465
    .line 466
    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    :cond_13
    invoke-direct {p0}, Lcom/transsion/videofloat/manager/d;->c()Lgj/c;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    if-eqz v0, :cond_14

    .line 474
    .line 475
    iget-wide v1, p0, Lcom/transsion/videofloat/manager/d;->k:J

    .line 476
    .line 477
    invoke-interface {v0, v1, v2}, Lgj/c;->b(J)V

    .line 478
    .line 479
    .line 480
    :cond_14
    iget-object v0, p0, Lcom/transsion/videofloat/manager/d;->a:Ldw/a;

    .line 481
    .line 482
    invoke-virtual {v0}, Ldw/a;->i()Lcom/transsion/videofloat/bean/FloatPlayType;

    .line 483
    .line 484
    .line 485
    move-result-object v0

    .line 486
    sget-object v1, Lcom/transsion/videofloat/manager/d$a;->a:[I

    .line 487
    .line 488
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 489
    .line 490
    .line 491
    move-result v0

    .line 492
    aget v0, v1, v0

    .line 493
    .line 494
    const/4 v1, 0x1

    .line 495
    if-eq v0, v1, :cond_17

    .line 496
    .line 497
    const/4 v1, 0x2

    .line 498
    const-string v2, "long_video_play"

    .line 499
    .line 500
    if-eq v0, v1, :cond_16

    .line 501
    .line 502
    const/4 v1, 0x3

    .line 503
    if-eq v0, v1, :cond_15

    .line 504
    .line 505
    return-void

    .line 506
    :cond_15
    const-string v0, "local_video_detail"

    .line 507
    .line 508
    :goto_9
    move-object v1, v0

    .line 509
    goto :goto_a

    .line 510
    :cond_16
    const-string v0, "stream_detail"

    .line 511
    .line 512
    goto :goto_9

    .line 513
    :cond_17
    const-string v0, "minitv_play"

    .line 514
    .line 515
    const-string v1, "video_play"

    .line 516
    .line 517
    move-object v2, v1

    .line 518
    goto :goto_9

    .line 519
    :goto_a
    sget-object v0, Lqi/h;->a:Lqi/h;

    .line 520
    .line 521
    iget-wide v3, p0, Lcom/transsion/videofloat/manager/d;->k:J

    .line 522
    .line 523
    invoke-virtual/range {v0 .. v5}, Lqi/h;->C(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    .line 524
    .line 525
    .line 526
    invoke-direct {p0}, Lcom/transsion/videofloat/manager/d;->o()V

    .line 527
    .line 528
    .line 529
    return-void
.end method

.method public final d()V
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/transsion/videofloat/manager/d;->c:J

    .line 6
    .line 7
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 8
    .line 9
    const/4 v6, 0x4

    .line 10
    const/4 v7, 0x0

    .line 11
    const-string v3, "video_play"

    .line 12
    .line 13
    const-string v4, "initView"

    .line 14
    .line 15
    const/4 v5, 0x0

    .line 16
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/videofloat/manager/d;->o:J

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/transsion/videofloat/manager/d;->h(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final f()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/transsion/videofloat/manager/d;->g:J

    .line 6
    .line 7
    return-void
.end method

.method public final g()V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/transsion/videofloat/manager/d;->g:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-wide v4, p0, Lcom/transsion/videofloat/manager/d;->g:J

    .line 14
    .line 15
    sub-long/2addr v0, v4

    .line 16
    iget-wide v4, p0, Lcom/transsion/videofloat/manager/d;->f:J

    .line 17
    .line 18
    add-long/2addr v4, v0

    .line 19
    iput-wide v4, p0, Lcom/transsion/videofloat/manager/d;->f:J

    .line 20
    .line 21
    iget v0, p0, Lcom/transsion/videofloat/manager/d;->h:I

    .line 22
    .line 23
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    iput v0, p0, Lcom/transsion/videofloat/manager/d;->h:I

    .line 26
    .line 27
    iput-wide v2, p0, Lcom/transsion/videofloat/manager/d;->g:J

    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final h(J)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/transsion/videofloat/manager/d;->j:J

    .line 2
    .line 3
    sub-long v2, p1, v0

    .line 4
    .line 5
    const-wide/16 v4, 0x1

    .line 6
    .line 7
    cmp-long v4, v4, v2

    .line 8
    .line 9
    if-gtz v4, :cond_0

    .line 10
    .line 11
    const-wide/16 v4, 0x3e8

    .line 12
    .line 13
    cmp-long v2, v2, v4

    .line 14
    .line 15
    if-gez v2, :cond_0

    .line 16
    .line 17
    iget-wide v2, p0, Lcom/transsion/videofloat/manager/d;->k:J

    .line 18
    .line 19
    sub-long v0, p1, v0

    .line 20
    .line 21
    add-long/2addr v2, v0

    .line 22
    iput-wide v2, p0, Lcom/transsion/videofloat/manager/d;->k:J

    .line 23
    .line 24
    :cond_0
    iput-wide p1, p0, Lcom/transsion/videofloat/manager/d;->j:J

    .line 25
    .line 26
    iget-wide v0, p0, Lcom/transsion/videofloat/manager/d;->i:J

    .line 27
    .line 28
    cmp-long v0, p1, v0

    .line 29
    .line 30
    if-lez v0, :cond_1

    .line 31
    .line 32
    iput-wide p1, p0, Lcom/transsion/videofloat/manager/d;->i:J

    .line 33
    .line 34
    :cond_1
    invoke-direct {p0}, Lcom/transsion/videofloat/manager/d;->c()Lgj/c;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    iget-wide v0, p0, Lcom/transsion/videofloat/manager/d;->k:J

    .line 41
    .line 42
    invoke-interface {p1, v0, v1}, Lgj/c;->a(J)V

    .line 43
    .line 44
    .line 45
    :cond_2
    return-void
.end method

.method public final i()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/transsion/videofloat/manager/d;->a:Ldw/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ldw/a;->f()Lcom/transsion/player/orplayer/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->getDuration()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-virtual {p0, v0, v1}, Lcom/transsion/videofloat/manager/d;->q(J)V

    .line 12
    .line 13
    .line 14
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 15
    .line 16
    const/4 v6, 0x4

    .line 17
    const/4 v7, 0x0

    .line 18
    const-string v3, "video_play"

    .line 19
    .line 20
    const-string v4, "onRenderFirstFrame"

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    iput-wide v0, p0, Lcom/transsion/videofloat/manager/d;->e:J

    .line 31
    .line 32
    return-void
.end method

.method public final j()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/transsion/videofloat/manager/d;->m:J

    .line 6
    .line 7
    return-void
.end method

.method public final k()V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/transsion/videofloat/manager/d;->m:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-wide v4, p0, Lcom/transsion/videofloat/manager/d;->m:J

    .line 14
    .line 15
    sub-long/2addr v0, v4

    .line 16
    iget-wide v4, p0, Lcom/transsion/videofloat/manager/d;->n:J

    .line 17
    .line 18
    add-long/2addr v4, v0

    .line 19
    iput-wide v4, p0, Lcom/transsion/videofloat/manager/d;->n:J

    .line 20
    .line 21
    iput-wide v2, p0, Lcom/transsion/videofloat/manager/d;->m:J

    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final l()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/transsion/videofloat/manager/d;->a:Ldw/a;

    .line 7
    .line 8
    invoke-virtual {v1}, Ldw/a;->r()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "subject_id"

    .line 13
    .line 14
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    const-string v1, "action"

    .line 18
    .line 19
    const-string v2, "float_back_to_detail"

    .line 20
    .line 21
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/transsion/videofloat/manager/d;->a:Ldw/a;

    .line 25
    .line 26
    invoke-virtual {v1}, Ldw/a;->e()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    const-string v1, ""

    .line 33
    .line 34
    :cond_0
    const-string v2, "ops"

    .line 35
    .line 36
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    sget-object v1, Lqi/h;->a:Lqi/h;

    .line 40
    .line 41
    iget-object v2, p0, Lcom/transsion/videofloat/manager/d;->a:Ldw/a;

    .line 42
    .line 43
    invoke-virtual {v2}, Ldw/a;->h()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v1, v2, v0}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final m()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/transsion/videofloat/manager/d;->a:Ldw/a;

    .line 7
    .line 8
    invoke-virtual {v1}, Ldw/a;->r()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "subject_id"

    .line 13
    .line 14
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    const-string v1, "action"

    .line 18
    .line 19
    const-string v2, "float_close"

    .line 20
    .line 21
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/transsion/videofloat/manager/d;->a:Ldw/a;

    .line 25
    .line 26
    invoke-virtual {v1}, Ldw/a;->e()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    const-string v1, ""

    .line 33
    .line 34
    :cond_0
    const-string v2, "ops"

    .line 35
    .line 36
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    sget-object v1, Lqi/h;->a:Lqi/h;

    .line 40
    .line 41
    iget-object v2, p0, Lcom/transsion/videofloat/manager/d;->a:Ldw/a;

    .line 42
    .line 43
    invoke-virtual {v2}, Ldw/a;->h()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v1, v2, v0}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final n()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/transsion/videofloat/manager/d;->a:Ldw/a;

    .line 7
    .line 8
    invoke-virtual {v1}, Ldw/a;->r()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "subject_id"

    .line 13
    .line 14
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    const-string v1, "action"

    .line 18
    .line 19
    const-string v2, "float_show"

    .line 20
    .line 21
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/transsion/videofloat/manager/d;->a:Ldw/a;

    .line 25
    .line 26
    invoke-virtual {v1}, Ldw/a;->w()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v2, "is_positive"

    .line 35
    .line 36
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/transsion/videofloat/manager/d;->a:Ldw/a;

    .line 40
    .line 41
    invoke-virtual {v1}, Ldw/a;->e()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-nez v1, :cond_0

    .line 46
    .line 47
    const-string v1, ""

    .line 48
    .line 49
    :cond_0
    const-string v2, "ops"

    .line 50
    .line 51
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    sget-object v1, Lqi/h;->a:Lqi/h;

    .line 55
    .line 56
    iget-object v2, p0, Lcom/transsion/videofloat/manager/d;->a:Ldw/a;

    .line 57
    .line 58
    invoke-virtual {v2}, Ldw/a;->h()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v1, v2, v0}, Lqi/h;->z(Ljava/lang/String;Ljava/util/Map;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final p(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/videofloat/manager/d;->s:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final q(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/videofloat/manager/d;->o:J

    .line 2
    .line 3
    return-void
.end method

.method public final r(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/videofloat/manager/d;->q:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
