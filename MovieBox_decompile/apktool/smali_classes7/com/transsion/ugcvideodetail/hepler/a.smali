.class public final Lcom/transsion/ugcvideodetail/hepler/a;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Lcom/transsion/player/orplayer/f;

.field private e:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

.field private f:J

.field private g:J

.field private h:J

.field private i:J

.field private j:J

.field private k:I

.field private l:J

.field private m:J

.field private n:J

.field private o:I

.field private p:J

.field private q:J

.field private r:J

.field private s:Ljava/lang/Integer;

.field private t:Z

.field private u:Z

.field private v:Ljava/lang/String;

.field private w:I

.field private x:Lgj/c;

.field private y:Ljava/lang/String;

.field private z:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "pageName"

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
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/a;->a:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/transsion/ugcvideodetail/hepler/a;->b:Ljava/lang/String;

    .line 12
    .line 13
    const-class p1, Lcom/transsion/ugcvideodetail/hepler/a;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/a;->c:Ljava/lang/String;

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lcom/transsion/ugcvideodetail/hepler/a;->u:Z

    .line 23
    .line 24
    const-string p1, ""

    .line 25
    .line 26
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/a;->v:Ljava/lang/String;

    .line 27
    .line 28
    const/4 p2, -0x1

    .line 29
    iput p2, p0, Lcom/transsion/ugcvideodetail/hepler/a;->w:I

    .line 30
    .line 31
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/a;->y:Ljava/lang/String;

    .line 32
    .line 33
    return-void
.end method

.method public static synthetic d(Lcom/transsion/ugcvideodetail/hepler/a;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/ugcvideodetail/hepler/a;->b(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final e()Lgj/c;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->x:Lgj/c;

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
    iput-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->x:Lgj/c;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->x:Lgj/c;

    .line 18
    .line 19
    return-object v0
.end method

.method private final q(Z)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->f:J

    .line 4
    .line 5
    iput-wide v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->g:J

    .line 6
    .line 7
    iput-wide v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->h:J

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->i:J

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->j:J

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    iput v2, p0, Lcom/transsion/ugcvideodetail/hepler/a;->k:I

    .line 15
    .line 16
    iput-wide v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->l:J

    .line 17
    .line 18
    iput-wide v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->m:J

    .line 19
    .line 20
    iput-wide v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->n:J

    .line 21
    .line 22
    iput v2, p0, Lcom/transsion/ugcvideodetail/hepler/a;->o:I

    .line 23
    .line 24
    iput-wide v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->p:J

    .line 25
    .line 26
    iput-wide v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->q:J

    .line 27
    .line 28
    iput-wide v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->r:J

    .line 29
    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    const/4 p1, -0x1

    .line 33
    iput p1, p0, Lcom/transsion/ugcvideodetail/hepler/a;->w:I

    .line 34
    .line 35
    iput-boolean v2, p0, Lcom/transsion/ugcvideodetail/hepler/a;->t:Z

    .line 36
    .line 37
    :cond_0
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
    iput-wide v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->g:J

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

.method public final b(Z)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-wide v2, v0, Lcom/transsion/ugcvideodetail/hepler/a;->f:J

    .line 6
    .line 7
    const-wide/16 v4, 0x0

    .line 8
    .line 9
    cmp-long v2, v2, v4

    .line 10
    .line 11
    const-string v3, "TAG"

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    iget-boolean v2, v0, Lcom/transsion/ugcvideodetail/hepler/a;->t:Z

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 20
    .line 21
    iget-object v7, v0, Lcom/transsion/ugcvideodetail/hepler/a;->c:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 v10, 0x4

    .line 27
    const/4 v11, 0x0

    .line 28
    const-string v8, "exitPlay, return"

    .line 29
    .line 30
    const/4 v9, 0x0

    .line 31
    invoke-static/range {v6 .. v11}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    iget-boolean v2, v0, Lcom/transsion/ugcvideodetail/hepler/a;->t:Z

    .line 36
    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 40
    .line 41
    iget-object v7, v0, Lcom/transsion/ugcvideodetail/hepler/a;->c:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v3, "curVideoIsApp2Background = "

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    const/4 v10, 0x4

    .line 64
    const/4 v11, 0x0

    .line 65
    const/4 v9, 0x0

    .line 66
    invoke-static/range {v6 .. v11}, Lwf/a$a;->v(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    iput-boolean v1, v0, Lcom/transsion/ugcvideodetail/hepler/a;->t:Z

    .line 70
    .line 71
    :cond_1
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 72
    .line 73
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v3, "ep"

    .line 77
    .line 78
    iget-object v6, v0, Lcom/transsion/ugcvideodetail/hepler/a;->y:Ljava/lang/String;

    .line 79
    .line 80
    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    iget-object v3, v0, Lcom/transsion/ugcvideodetail/hepler/a;->b:Ljava/lang/String;

    .line 84
    .line 85
    if-nez v3, :cond_2

    .line 86
    .line 87
    sget-object v3, Lqi/h;->a:Lqi/h;

    .line 88
    .line 89
    invoke-virtual {v3}, Lqi/h;->h()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    :cond_2
    const-string v6, "page_from"

    .line 94
    .line 95
    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    iget-object v3, v0, Lcom/transsion/ugcvideodetail/hepler/a;->e:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 99
    .line 100
    if-eqz v3, :cond_3

    .line 101
    .line 102
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getOps()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    if-nez v3, :cond_4

    .line 107
    .line 108
    :cond_3
    const-string v3, ""

    .line 109
    .line 110
    :cond_4
    const-string v6, "ops"

    .line 111
    .line 112
    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    iget v3, v0, Lcom/transsion/ugcvideodetail/hepler/a;->z:I

    .line 116
    .line 117
    if-lez v3, :cond_5

    .line 118
    .line 119
    const-string v6, "subject_type"

    .line 120
    .line 121
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    :cond_5
    iget-wide v6, v0, Lcom/transsion/ugcvideodetail/hepler/a;->h:J

    .line 129
    .line 130
    cmp-long v3, v6, v4

    .line 131
    .line 132
    const-string v6, "delay"

    .line 133
    .line 134
    const-string v7, "delay_v"

    .line 135
    .line 136
    const-string v8, "is_start"

    .line 137
    .line 138
    const-string v9, "1"

    .line 139
    .line 140
    const-string v10, "0"

    .line 141
    .line 142
    if-gtz v3, :cond_9

    .line 143
    .line 144
    iget-boolean v3, v0, Lcom/transsion/ugcvideodetail/hepler/a;->t:Z

    .line 145
    .line 146
    if-eqz v3, :cond_6

    .line 147
    .line 148
    iget-wide v11, v0, Lcom/transsion/ugcvideodetail/hepler/a;->n:J

    .line 149
    .line 150
    cmp-long v3, v11, v4

    .line 151
    .line 152
    if-lez v3, :cond_6

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_6
    invoke-interface {v2, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    iget-wide v11, v0, Lcom/transsion/ugcvideodetail/hepler/a;->f:J

    .line 159
    .line 160
    cmp-long v3, v11, v4

    .line 161
    .line 162
    if-lez v3, :cond_7

    .line 163
    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 165
    .line 166
    .line 167
    move-result-wide v11

    .line 168
    iget-wide v13, v0, Lcom/transsion/ugcvideodetail/hepler/a;->f:J

    .line 169
    .line 170
    sub-long/2addr v11, v13

    .line 171
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    goto :goto_0

    .line 176
    :cond_7
    move-object v3, v10

    .line 177
    :goto_0
    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    iget-wide v7, v0, Lcom/transsion/ugcvideodetail/hepler/a;->g:J

    .line 181
    .line 182
    cmp-long v3, v7, v4

    .line 183
    .line 184
    if-lez v3, :cond_8

    .line 185
    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 187
    .line 188
    .line 189
    move-result-wide v7

    .line 190
    iget-wide v11, v0, Lcom/transsion/ugcvideodetail/hepler/a;->g:J

    .line 191
    .line 192
    sub-long/2addr v7, v11

    .line 193
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    goto :goto_1

    .line 198
    :cond_8
    move-object v3, v10

    .line 199
    :goto_1
    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    goto/16 :goto_5

    .line 203
    .line 204
    :cond_9
    :goto_2
    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    iget-wide v11, v0, Lcom/transsion/ugcvideodetail/hepler/a;->f:J

    .line 208
    .line 209
    cmp-long v3, v11, v4

    .line 210
    .line 211
    if-lez v3, :cond_a

    .line 212
    .line 213
    iget-wide v13, v0, Lcom/transsion/ugcvideodetail/hepler/a;->h:J

    .line 214
    .line 215
    cmp-long v3, v13, v4

    .line 216
    .line 217
    if-lez v3, :cond_a

    .line 218
    .line 219
    sub-long/2addr v13, v11

    .line 220
    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    goto :goto_3

    .line 225
    :cond_a
    move-object v3, v10

    .line 226
    :goto_3
    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    iget-wide v7, v0, Lcom/transsion/ugcvideodetail/hepler/a;->g:J

    .line 230
    .line 231
    cmp-long v3, v7, v4

    .line 232
    .line 233
    if-lez v3, :cond_b

    .line 234
    .line 235
    iget-wide v11, v0, Lcom/transsion/ugcvideodetail/hepler/a;->h:J

    .line 236
    .line 237
    cmp-long v3, v11, v4

    .line 238
    .line 239
    if-lez v3, :cond_b

    .line 240
    .line 241
    sub-long/2addr v11, v7

    .line 242
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v3

    .line 246
    goto :goto_4

    .line 247
    :cond_b
    move-object v3, v10

    .line 248
    :goto_4
    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    iget-wide v6, v0, Lcom/transsion/ugcvideodetail/hepler/a;->i:J

    .line 252
    .line 253
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    const-string v6, "buffer_time"

    .line 258
    .line 259
    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    iget v3, v0, Lcom/transsion/ugcvideodetail/hepler/a;->k:I

    .line 263
    .line 264
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    const-string v6, "buffer_count"

    .line 269
    .line 270
    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    iget-wide v6, v0, Lcom/transsion/ugcvideodetail/hepler/a;->l:J

    .line 274
    .line 275
    long-to-float v3, v6

    .line 276
    iget-wide v6, v0, Lcom/transsion/ugcvideodetail/hepler/a;->r:J

    .line 277
    .line 278
    long-to-float v6, v6

    .line 279
    div-float/2addr v3, v6

    .line 280
    const/high16 v6, 0x42c80000    # 100.0f

    .line 281
    .line 282
    mul-float/2addr v3, v6

    .line 283
    iget v7, v0, Lcom/transsion/ugcvideodetail/hepler/a;->o:I

    .line 284
    .line 285
    int-to-float v7, v7

    .line 286
    mul-float/2addr v7, v6

    .line 287
    add-float/2addr v3, v7

    .line 288
    const-string v6, "play_complete"

    .line 289
    .line 290
    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v3

    .line 294
    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    iget-wide v6, v0, Lcom/transsion/ugcvideodetail/hepler/a;->n:J

    .line 298
    .line 299
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    const-string v6, "play_duration"

    .line 304
    .line 305
    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    iget-wide v6, v0, Lcom/transsion/ugcvideodetail/hepler/a;->q:J

    .line 309
    .line 310
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    const-string v6, "pause_duration"

    .line 315
    .line 316
    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    iget v3, v0, Lcom/transsion/ugcvideodetail/hepler/a;->o:I

    .line 320
    .line 321
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v3

    .line 325
    const-string v6, "completeCount"

    .line 326
    .line 327
    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    :goto_5
    if-eqz v1, :cond_c

    .line 331
    .line 332
    move-object v3, v9

    .line 333
    goto :goto_6

    .line 334
    :cond_c
    move-object v3, v10

    .line 335
    :goto_6
    const-string v6, "app_to_background"

    .line 336
    .line 337
    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    sget-object v3, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->i:Lcom/transsion/player/orplayer/ORPlayerPreloadManager$a;

    .line 341
    .line 342
    invoke-virtual {v3}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager$a;->a()Lcom/transsion/player/orplayer/ORPlayerPreloadManager;

    .line 343
    .line 344
    .line 345
    move-result-object v3

    .line 346
    iget-object v6, v0, Lcom/transsion/ugcvideodetail/hepler/a;->v:Ljava/lang/String;

    .line 347
    .line 348
    invoke-virtual {v3, v6}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->e(Ljava/lang/String;)Z

    .line 349
    .line 350
    .line 351
    move-result v3

    .line 352
    if-eqz v3, :cond_d

    .line 353
    .line 354
    goto :goto_7

    .line 355
    :cond_d
    move-object v9, v10

    .line 356
    :goto_7
    const-string v3, "is_preloaded"

    .line 357
    .line 358
    invoke-interface {v2, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    const-string v3, "url"

    .line 362
    .line 363
    iget-object v6, v0, Lcom/transsion/ugcvideodetail/hepler/a;->v:Ljava/lang/String;

    .line 364
    .line 365
    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    iget-wide v6, v0, Lcom/transsion/ugcvideodetail/hepler/a;->r:J

    .line 369
    .line 370
    cmp-long v3, v6, v4

    .line 371
    .line 372
    if-lez v3, :cond_e

    .line 373
    .line 374
    const-string v3, "total_duration"

    .line 375
    .line 376
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v6

    .line 380
    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    :cond_e
    iget v3, v0, Lcom/transsion/ugcvideodetail/hepler/a;->w:I

    .line 384
    .line 385
    if-ltz v3, :cond_f

    .line 386
    .line 387
    const-string v6, "position"

    .line 388
    .line 389
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v3

    .line 393
    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    :cond_f
    iget-object v3, v0, Lcom/transsion/ugcvideodetail/hepler/a;->s:Ljava/lang/Integer;

    .line 397
    .line 398
    if-eqz v3, :cond_10

    .line 399
    .line 400
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v3

    .line 404
    const-string v6, "error_code"

    .line 405
    .line 406
    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    :cond_10
    iget-boolean v3, v0, Lcom/transsion/ugcvideodetail/hepler/a;->t:Z

    .line 410
    .line 411
    if-eqz v3, :cond_11

    .line 412
    .line 413
    iget-wide v6, v0, Lcom/transsion/ugcvideodetail/hepler/a;->n:J

    .line 414
    .line 415
    cmp-long v3, v6, v4

    .line 416
    .line 417
    if-gtz v3, :cond_11

    .line 418
    .line 419
    iget-boolean v3, v0, Lcom/transsion/ugcvideodetail/hepler/a;->u:Z

    .line 420
    .line 421
    if-nez v3, :cond_11

    .line 422
    .line 423
    return-void

    .line 424
    :cond_11
    if-eqz v1, :cond_12

    .line 425
    .line 426
    const/4 v3, 0x0

    .line 427
    iput-boolean v3, v0, Lcom/transsion/ugcvideodetail/hepler/a;->u:Z

    .line 428
    .line 429
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/transsion/ugcvideodetail/hepler/a;->e()Lgj/c;

    .line 430
    .line 431
    .line 432
    move-result-object v3

    .line 433
    if-eqz v3, :cond_13

    .line 434
    .line 435
    iget-wide v4, v0, Lcom/transsion/ugcvideodetail/hepler/a;->n:J

    .line 436
    .line 437
    invoke-interface {v3, v4, v5}, Lgj/c;->b(J)V

    .line 438
    .line 439
    .line 440
    :cond_13
    sget-object v12, Lqi/h;->a:Lqi/h;

    .line 441
    .line 442
    iget-object v13, v0, Lcom/transsion/ugcvideodetail/hepler/a;->a:Ljava/lang/String;

    .line 443
    .line 444
    const-string v14, "video_play"

    .line 445
    .line 446
    iget-wide v3, v0, Lcom/transsion/ugcvideodetail/hepler/a;->n:J

    .line 447
    .line 448
    move-wide v15, v3

    .line 449
    move-object/from16 v17, v2

    .line 450
    .line 451
    invoke-virtual/range {v12 .. v17}, Lqi/h;->C(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    .line 452
    .line 453
    .line 454
    invoke-direct/range {p0 .. p1}, Lcom/transsion/ugcvideodetail/hepler/a;->q(Z)V

    .line 455
    .line 456
    .line 457
    return-void
.end method

.method public final c(ZZ)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/transsion/ugcvideodetail/hepler/a;->b(Z)V

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0, p2}, Lcom/transsion/ugcvideodetail/hepler/a;->q(Z)V

    .line 8
    .line 9
    .line 10
    :goto_0
    return-void
.end method

.method public final f()V
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->f:J

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->u:Z

    .line 9
    .line 10
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 11
    .line 12
    const/4 v5, 0x4

    .line 13
    const/4 v6, 0x0

    .line 14
    const-string v2, "video_play"

    .line 15
    .line 16
    const-string v3, "initView"

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->r:J

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/transsion/ugcvideodetail/hepler/a;->l(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final h()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->j:J

    .line 6
    .line 7
    return-void
.end method

.method public final i()V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->j:J

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
    iget-wide v4, p0, Lcom/transsion/ugcvideodetail/hepler/a;->j:J

    .line 14
    .line 15
    sub-long/2addr v0, v4

    .line 16
    iget-wide v4, p0, Lcom/transsion/ugcvideodetail/hepler/a;->i:J

    .line 17
    .line 18
    add-long/2addr v4, v0

    .line 19
    iput-wide v4, p0, Lcom/transsion/ugcvideodetail/hepler/a;->i:J

    .line 20
    .line 21
    iget v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->k:I

    .line 22
    .line 23
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    iput v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->k:I

    .line 26
    .line 27
    iput-wide v2, p0, Lcom/transsion/ugcvideodetail/hepler/a;->j:J

    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final j()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->o:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->o:I

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->l:J

    .line 10
    .line 11
    return-void
.end method

.method public final k(Lcom/transsion/player/orplayer/PlayError;)V
    .locals 1

    .line 1
    const-string v0, "errorInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsion/player/orplayer/PlayError;->getErrorCode()Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/a;->s:Ljava/lang/Integer;

    .line 11
    .line 12
    return-void
.end method

.method public final l(J)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->r:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-gtz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->d:Lcom/transsion/player/orplayer/f;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->getDuration()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    :cond_0
    iput-wide v2, p0, Lcom/transsion/ugcvideodetail/hepler/a;->r:J

    .line 18
    .line 19
    :cond_1
    iget-wide v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->m:J

    .line 20
    .line 21
    sub-long v2, p1, v0

    .line 22
    .line 23
    const-wide/16 v4, 0x1

    .line 24
    .line 25
    cmp-long v4, v4, v2

    .line 26
    .line 27
    if-gtz v4, :cond_2

    .line 28
    .line 29
    const-wide/16 v4, 0x3e8

    .line 30
    .line 31
    cmp-long v2, v2, v4

    .line 32
    .line 33
    if-gez v2, :cond_2

    .line 34
    .line 35
    iget-wide v2, p0, Lcom/transsion/ugcvideodetail/hepler/a;->n:J

    .line 36
    .line 37
    sub-long v0, p1, v0

    .line 38
    .line 39
    add-long/2addr v2, v0

    .line 40
    iput-wide v2, p0, Lcom/transsion/ugcvideodetail/hepler/a;->n:J

    .line 41
    .line 42
    :cond_2
    iput-wide p1, p0, Lcom/transsion/ugcvideodetail/hepler/a;->m:J

    .line 43
    .line 44
    iget-wide v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->l:J

    .line 45
    .line 46
    cmp-long v0, p1, v0

    .line 47
    .line 48
    if-lez v0, :cond_3

    .line 49
    .line 50
    iput-wide p1, p0, Lcom/transsion/ugcvideodetail/hepler/a;->l:J

    .line 51
    .line 52
    :cond_3
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/hepler/a;->e()Lgj/c;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-eqz p1, :cond_4

    .line 57
    .line 58
    iget-wide v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->n:J

    .line 59
    .line 60
    invoke-interface {p1, v0, v1}, Lgj/c;->a(J)V

    .line 61
    .line 62
    .line 63
    :cond_4
    return-void
.end method

.method public final m()V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "video_play"

    .line 6
    .line 7
    const-string v2, "onRenderFirstFrame"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iput-wide v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->h:J

    .line 18
    .line 19
    return-void
.end method

.method public final n()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->p:J

    .line 6
    .line 7
    return-void
.end method

.method public final o()V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/transsion/ugcvideodetail/hepler/a;->p:J

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
    iget-wide v4, p0, Lcom/transsion/ugcvideodetail/hepler/a;->p:J

    .line 14
    .line 15
    sub-long/2addr v0, v4

    .line 16
    iget-wide v4, p0, Lcom/transsion/ugcvideodetail/hepler/a;->q:J

    .line 17
    .line 18
    add-long/2addr v4, v0

    .line 19
    iput-wide v4, p0, Lcom/transsion/ugcvideodetail/hepler/a;->q:J

    .line 20
    .line 21
    iput-wide v2, p0, Lcom/transsion/ugcvideodetail/hepler/a;->p:J

    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final p()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-static {p0, v2, v0, v1}, Lcom/transsion/ugcvideodetail/hepler/a;->d(Lcom/transsion/ugcvideodetail/hepler/a;ZILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final r(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, -0x1

    .line 9
    :goto_0
    iput p1, p0, Lcom/transsion/ugcvideodetail/hepler/a;->w:I

    .line 10
    .line 11
    return-void
.end method

.method public final s(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/hepler/a;->c:Ljava/lang/String;

    .line 4
    .line 5
    const-string v2, "TAG"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v4, 0x4

    .line 11
    const/4 v5, 0x0

    .line 12
    const-string v2, "setData----->"

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/a;->e:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 19
    .line 20
    return-void
.end method

.method public final t(Lcom/transsion/player/orplayer/f;)V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/hepler/a;->c:Ljava/lang/String;

    .line 4
    .line 5
    const-string v2, "TAG"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v4, 0x4

    .line 11
    const/4 v5, 0x0

    .line 12
    const-string v2, "setPlayer----->"

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/a;->d:Lcom/transsion/player/orplayer/f;

    .line 19
    .line 20
    return-void
.end method

.method public final u(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/a;->v:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
