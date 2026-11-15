.class public final Lxs/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/player/orplayer/e;


# instance fields
.field private A:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private final a:Landroidx/fragment/app/Fragment;

.field private final b:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

.field private final c:Ljava/lang/String;

.field private d:Lcom/transsion/player/orplayer/f;

.field private e:J

.field private f:J

.field private g:J

.field private h:J

.field private i:J

.field private j:I

.field private k:J

.field private l:J

.field private m:J

.field private n:I

.field private o:J

.field private p:J

.field private q:J

.field private r:Lcom/transsion/player/orplayer/PlayError;

.field private s:I

.field private t:I

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Z

.field private x:Z

.field private y:Ljava/lang/String;

.field private z:I


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)V
    .locals 1

    .line 1
    const-string v0, "fragment"

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
    iput-object p1, p0, Lxs/c;->a:Landroidx/fragment/app/Fragment;

    .line 10
    .line 11
    iput-object p2, p0, Lxs/c;->b:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 12
    .line 13
    const-class p1, Lxs/c;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lxs/c;->c:Ljava/lang/String;

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lxs/c;->x:Z

    .line 23
    .line 24
    const-string p1, ""

    .line 25
    .line 26
    iput-object p1, p0, Lxs/c;->y:Ljava/lang/String;

    .line 27
    .line 28
    iput-object p1, p0, Lxs/c;->B:Ljava/lang/String;

    .line 29
    .line 30
    iput-object p1, p0, Lxs/c;->C:Ljava/lang/String;

    .line 31
    .line 32
    iput-object p1, p0, Lxs/c;->D:Ljava/lang/String;

    .line 33
    .line 34
    const-string p1, "postdetail"

    .line 35
    .line 36
    iput-object p1, p0, Lxs/c;->E:Ljava/lang/String;

    .line 37
    .line 38
    return-void
.end method

.method public static synthetic f(Lxs/c;ZILjava/lang/Object;)V
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
    invoke-virtual {p0, p1}, Lxs/c;->d(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final j(Z)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lxs/c;->e:J

    .line 4
    .line 5
    iput-wide v0, p0, Lxs/c;->f:J

    .line 6
    .line 7
    iput-wide v0, p0, Lxs/c;->g:J

    .line 8
    .line 9
    iput-wide v0, p0, Lxs/c;->h:J

    .line 10
    .line 11
    iput-wide v0, p0, Lxs/c;->i:J

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    iput v2, p0, Lxs/c;->j:I

    .line 15
    .line 16
    iput-wide v0, p0, Lxs/c;->k:J

    .line 17
    .line 18
    iput-wide v0, p0, Lxs/c;->l:J

    .line 19
    .line 20
    iput-wide v0, p0, Lxs/c;->m:J

    .line 21
    .line 22
    iput v2, p0, Lxs/c;->n:I

    .line 23
    .line 24
    iput-wide v0, p0, Lxs/c;->o:J

    .line 25
    .line 26
    iput-wide v0, p0, Lxs/c;->p:J

    .line 27
    .line 28
    iput-wide v0, p0, Lxs/c;->q:J

    .line 29
    .line 30
    iput v2, p0, Lxs/c;->z:I

    .line 31
    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    iput-boolean v2, p0, Lxs/c;->w:Z

    .line 35
    .line 36
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
    iput-wide v0, p0, Lxs/c;->f:J

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
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lxs/c;->c:Ljava/lang/String;

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
    const-string v2, "clickPause"

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v1, "module_name"

    .line 24
    .line 25
    const-string v2, "pause"

    .line 26
    .line 27
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    sget-object v1, Lqi/h;->a:Lqi/h;

    .line 31
    .line 32
    iget-object v2, p0, Lxs/c;->E:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v1, v2, v0}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final c()V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lxs/c;->c:Ljava/lang/String;

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
    const-string v2, "clickPlay"

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v1, "module_name"

    .line 24
    .line 25
    const-string v2, "play"

    .line 26
    .line 27
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    sget-object v1, Lqi/h;->a:Lqi/h;

    .line 31
    .line 32
    iget-object v2, p0, Lxs/c;->E:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v1, v2, v0}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public canNonSubscriberPlay(ZIILqn/d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/player/orplayer/e$a;->a(Lcom/transsion/player/orplayer/e;ZIILqn/d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final d(Z)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-wide v2, v0, Lxs/c;->e:J

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
    iget-boolean v2, v0, Lxs/c;->w:Z

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 20
    .line 21
    iget-object v7, v0, Lxs/c;->c:Ljava/lang/String;

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
    iget-boolean v2, v0, Lxs/c;->w:Z

    .line 36
    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 40
    .line 41
    iget-object v7, v0, Lxs/c;->c:Ljava/lang/String;

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
    iput-boolean v1, v0, Lxs/c;->w:Z

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
    const-string v3, "opt_type"

    .line 77
    .line 78
    iget-object v6, v0, Lxs/c;->C:Ljava/lang/String;

    .line 79
    .line 80
    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    iget-object v3, v0, Lxs/c;->A:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 84
    .line 85
    const-string v6, ""

    .line 86
    .line 87
    if-eqz v3, :cond_2

    .line 88
    .line 89
    invoke-virtual {v3}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getSubjectId()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    if-nez v3, :cond_3

    .line 94
    .line 95
    :cond_2
    move-object v3, v6

    .line 96
    :cond_3
    const-string v7, "refer_subject_id"

    .line 97
    .line 98
    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    const-string v3, "item_type"

    .line 102
    .line 103
    const-string v7, "7"

    .line 104
    .line 105
    invoke-interface {v2, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    const-string v3, "episode"

    .line 109
    .line 110
    iget-object v7, v0, Lxs/c;->D:Ljava/lang/String;

    .line 111
    .line 112
    invoke-interface {v2, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    iget-object v3, v0, Lxs/c;->y:Ljava/lang/String;

    .line 116
    .line 117
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    if-nez v7, :cond_4

    .line 122
    .line 123
    sget-object v3, Lqi/h;->a:Lqi/h;

    .line 124
    .line 125
    invoke-virtual {v3}, Lqi/h;->h()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    :cond_4
    const-string v7, "page_from"

    .line 130
    .line 131
    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    iget-object v3, v0, Lxs/c;->A:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 135
    .line 136
    if-eqz v3, :cond_5

    .line 137
    .line 138
    invoke-virtual {v3}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getOps()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    :cond_5
    iget-wide v7, v0, Lxs/c;->g:J

    .line 143
    .line 144
    cmp-long v3, v7, v4

    .line 145
    .line 146
    const-string v7, "1"

    .line 147
    .line 148
    const-string v8, "delay"

    .line 149
    .line 150
    const-string v9, "delay_v"

    .line 151
    .line 152
    const-string v10, "is_start"

    .line 153
    .line 154
    const-string v11, "0"

    .line 155
    .line 156
    if-gtz v3, :cond_9

    .line 157
    .line 158
    iget-boolean v3, v0, Lxs/c;->w:Z

    .line 159
    .line 160
    if-eqz v3, :cond_6

    .line 161
    .line 162
    iget-wide v12, v0, Lxs/c;->m:J

    .line 163
    .line 164
    cmp-long v3, v12, v4

    .line 165
    .line 166
    if-lez v3, :cond_6

    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_6
    invoke-interface {v2, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    iget-wide v12, v0, Lxs/c;->e:J

    .line 173
    .line 174
    cmp-long v3, v12, v4

    .line 175
    .line 176
    if-lez v3, :cond_7

    .line 177
    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 179
    .line 180
    .line 181
    move-result-wide v12

    .line 182
    iget-wide v14, v0, Lxs/c;->e:J

    .line 183
    .line 184
    sub-long/2addr v12, v14

    .line 185
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    goto :goto_0

    .line 190
    :cond_7
    move-object v3, v11

    .line 191
    :goto_0
    invoke-interface {v2, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    iget-wide v9, v0, Lxs/c;->f:J

    .line 195
    .line 196
    cmp-long v3, v9, v4

    .line 197
    .line 198
    if-lez v3, :cond_8

    .line 199
    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 201
    .line 202
    .line 203
    move-result-wide v9

    .line 204
    iget-wide v12, v0, Lxs/c;->f:J

    .line 205
    .line 206
    sub-long/2addr v9, v12

    .line 207
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    goto :goto_1

    .line 212
    :cond_8
    move-object v3, v11

    .line 213
    :goto_1
    invoke-interface {v2, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    goto/16 :goto_5

    .line 217
    .line 218
    :cond_9
    :goto_2
    invoke-interface {v2, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    iget-wide v12, v0, Lxs/c;->e:J

    .line 222
    .line 223
    cmp-long v3, v12, v4

    .line 224
    .line 225
    if-lez v3, :cond_a

    .line 226
    .line 227
    iget-wide v14, v0, Lxs/c;->g:J

    .line 228
    .line 229
    cmp-long v3, v14, v4

    .line 230
    .line 231
    if-lez v3, :cond_a

    .line 232
    .line 233
    sub-long/2addr v14, v12

    .line 234
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    goto :goto_3

    .line 239
    :cond_a
    move-object v3, v11

    .line 240
    :goto_3
    invoke-interface {v2, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    iget-wide v9, v0, Lxs/c;->f:J

    .line 244
    .line 245
    cmp-long v3, v9, v4

    .line 246
    .line 247
    if-lez v3, :cond_b

    .line 248
    .line 249
    iget-wide v12, v0, Lxs/c;->g:J

    .line 250
    .line 251
    cmp-long v3, v12, v4

    .line 252
    .line 253
    if-lez v3, :cond_b

    .line 254
    .line 255
    sub-long/2addr v12, v9

    .line 256
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    goto :goto_4

    .line 261
    :cond_b
    move-object v3, v11

    .line 262
    :goto_4
    invoke-interface {v2, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    iget-wide v8, v0, Lxs/c;->h:J

    .line 266
    .line 267
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    const-string v8, "buffer_time"

    .line 272
    .line 273
    invoke-interface {v2, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    iget v3, v0, Lxs/c;->j:I

    .line 277
    .line 278
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    const-string v8, "buffer_count"

    .line 283
    .line 284
    invoke-interface {v2, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    iget-wide v8, v0, Lxs/c;->k:J

    .line 288
    .line 289
    long-to-float v3, v8

    .line 290
    iget-wide v8, v0, Lxs/c;->q:J

    .line 291
    .line 292
    long-to-float v8, v8

    .line 293
    div-float/2addr v3, v8

    .line 294
    const/high16 v8, 0x42c80000    # 100.0f

    .line 295
    .line 296
    mul-float/2addr v3, v8

    .line 297
    iget v9, v0, Lxs/c;->n:I

    .line 298
    .line 299
    int-to-float v9, v9

    .line 300
    mul-float/2addr v9, v8

    .line 301
    add-float/2addr v3, v9

    .line 302
    const-string v8, "play_complete"

    .line 303
    .line 304
    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v3

    .line 308
    invoke-interface {v2, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    iget-wide v8, v0, Lxs/c;->m:J

    .line 312
    .line 313
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v3

    .line 317
    const-string v8, "play_duration"

    .line 318
    .line 319
    invoke-interface {v2, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    iget-wide v8, v0, Lxs/c;->p:J

    .line 323
    .line 324
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v3

    .line 328
    const-string v8, "pause_duration"

    .line 329
    .line 330
    invoke-interface {v2, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    :goto_5
    if-eqz v1, :cond_c

    .line 334
    .line 335
    goto :goto_6

    .line 336
    :cond_c
    move-object v7, v11

    .line 337
    :goto_6
    const-string v3, "app_to_background"

    .line 338
    .line 339
    invoke-interface {v2, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    iget-object v3, v0, Lxs/c;->A:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 343
    .line 344
    if-eqz v3, :cond_d

    .line 345
    .line 346
    invoke-virtual {v3}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getPlayUrl()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v3

    .line 350
    if-nez v3, :cond_e

    .line 351
    .line 352
    :cond_d
    move-object v3, v6

    .line 353
    :cond_e
    const-string v7, "url"

    .line 354
    .line 355
    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    iget v3, v0, Lxs/c;->z:I

    .line 359
    .line 360
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v3

    .line 364
    const-string v7, "seek_count"

    .line 365
    .line 366
    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    iget-object v3, v0, Lxs/c;->r:Lcom/transsion/player/orplayer/PlayError;

    .line 370
    .line 371
    if-eqz v3, :cond_f

    .line 372
    .line 373
    invoke-virtual {v3}, Lcom/transsion/player/orplayer/PlayError;->getErrorCode()Ljava/lang/Integer;

    .line 374
    .line 375
    .line 376
    move-result-object v7

    .line 377
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v7

    .line 381
    const-string v8, "player_error_code"

    .line 382
    .line 383
    invoke-interface {v2, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v3}, Lcom/transsion/player/orplayer/PlayError;->getErrorMessage()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v3

    .line 390
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v3

    .line 394
    const-string v7, "player_error_msg"

    .line 395
    .line 396
    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    :cond_f
    iget-boolean v3, v0, Lxs/c;->w:Z

    .line 400
    .line 401
    if-eqz v3, :cond_10

    .line 402
    .line 403
    iget-wide v7, v0, Lxs/c;->m:J

    .line 404
    .line 405
    cmp-long v3, v7, v4

    .line 406
    .line 407
    if-gtz v3, :cond_10

    .line 408
    .line 409
    iget-boolean v3, v0, Lxs/c;->x:Z

    .line 410
    .line 411
    if-nez v3, :cond_10

    .line 412
    .line 413
    return-void

    .line 414
    :cond_10
    if-eqz v1, :cond_11

    .line 415
    .line 416
    const/4 v3, 0x0

    .line 417
    iput-boolean v3, v0, Lxs/c;->x:Z

    .line 418
    .line 419
    :cond_11
    iget-object v3, v0, Lxs/c;->A:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 420
    .line 421
    if-eqz v3, :cond_12

    .line 422
    .line 423
    invoke-virtual {v3}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v3

    .line 427
    if-nez v3, :cond_13

    .line 428
    .line 429
    :cond_12
    move-object v3, v6

    .line 430
    :cond_13
    const-string v4, "content_id"

    .line 431
    .line 432
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    iget-object v3, v0, Lxs/c;->A:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 436
    .line 437
    if-eqz v3, :cond_14

    .line 438
    .line 439
    invoke-virtual {v3}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getBelongToCollection()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;

    .line 440
    .line 441
    .line 442
    move-result-object v3

    .line 443
    if-eqz v3, :cond_14

    .line 444
    .line 445
    invoke-virtual {v3}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;->getCollectionId()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v3

    .line 449
    if-nez v3, :cond_15

    .line 450
    .line 451
    :cond_14
    move-object v3, v6

    .line 452
    :cond_15
    const-string v4, "belong_to_collection_id"

    .line 453
    .line 454
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    const-string v3, "ops"

    .line 458
    .line 459
    iget-object v4, v0, Lxs/c;->B:Ljava/lang/String;

    .line 460
    .line 461
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    const-string v3, "content_type"

    .line 465
    .line 466
    const-string v4, "ugc_video"

    .line 467
    .line 468
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    iget v3, v0, Lxs/c;->s:I

    .line 472
    .line 473
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v3

    .line 477
    const-string v4, "video_bitrate"

    .line 478
    .line 479
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    iget v3, v0, Lxs/c;->t:I

    .line 483
    .line 484
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v3

    .line 488
    const-string v4, "audio_bitrate"

    .line 489
    .line 490
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    iget-object v3, v0, Lxs/c;->A:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 494
    .line 495
    if-eqz v3, :cond_17

    .line 496
    .line 497
    invoke-virtual {v3}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getStreams()Ljava/util/List;

    .line 498
    .line 499
    .line 500
    move-result-object v3

    .line 501
    if-eqz v3, :cond_17

    .line 502
    .line 503
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    move-result-object v3

    .line 507
    check-cast v3, Lcom/transsion/shorttv_pugc/ShorttvModel$StreamInfo;

    .line 508
    .line 509
    if-eqz v3, :cond_17

    .line 510
    .line 511
    invoke-virtual {v3}, Lcom/transsion/shorttv_pugc/ShorttvModel$StreamInfo;->getResolutions()Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v3

    .line 515
    if-nez v3, :cond_16

    .line 516
    .line 517
    goto :goto_7

    .line 518
    :cond_16
    move-object v6, v3

    .line 519
    :cond_17
    :goto_7
    const-string v3, "resolutions"

    .line 520
    .line 521
    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    .line 523
    .line 524
    sget-object v12, Lqi/h;->a:Lqi/h;

    .line 525
    .line 526
    iget-object v13, v0, Lxs/c;->E:Ljava/lang/String;

    .line 527
    .line 528
    const-string v14, "video_play"

    .line 529
    .line 530
    iget-wide v3, v0, Lxs/c;->m:J

    .line 531
    .line 532
    move-wide v15, v3

    .line 533
    move-object/from16 v17, v2

    .line 534
    .line 535
    invoke-virtual/range {v12 .. v17}, Lqi/h;->C(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    .line 536
    .line 537
    .line 538
    invoke-direct/range {p0 .. p1}, Lxs/c;->j(Z)V

    .line 539
    .line 540
    .line 541
    return-void
.end method

.method public final e(ZZ)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lxs/c;->d(Z)V

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0, p2}, Lxs/c;->j(Z)V

    .line 8
    .line 9
    .line 10
    :goto_0
    return-void
.end method

.method public final g()V
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lxs/c;->e:J

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lxs/c;->x:Z

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

.method public final h()V
    .locals 1

    .line 1
    iget v0, p0, Lxs/c;->z:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lxs/c;->z:I

    .line 6
    .line 7
    return-void
.end method

.method public final i()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-static {p0, v2, v0, v1}, Lxs/c;->f(Lxs/c;ZILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public initPlayer()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/orplayer/e$a;->b(Lcom/transsion/player/orplayer/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxs/c;->v:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxs/c;->u:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lxs/c;->D:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final n(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lxs/c;->B:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final o(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lxs/c;->C:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public onAliyunDecodeErrorChangeSoftwareDecoder(Lgn/e;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->c(Lcom/transsion/player/orplayer/e;Lgn/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onBufferedPosition(JLgn/e;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/player/orplayer/e$a;->d(Lcom/transsion/player/orplayer/e;JLgn/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onCompletion(Lgn/e;)V
    .locals 6

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->e(Lcom/transsion/player/orplayer/e;Lgn/e;)V

    .line 2
    .line 3
    .line 4
    iget-wide v1, p0, Lxs/c;->q:J

    .line 5
    .line 6
    const/4 v4, 0x2

    .line 7
    const/4 v5, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    move-object v0, p0

    .line 10
    invoke-static/range {v0 .. v5}, Lcom/transsion/player/orplayer/e$a;->z(Lcom/transsion/player/orplayer/e;JLgn/e;ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onFocusChange(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->g(Lcom/transsion/player/orplayer/e;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->h(Lcom/transsion/player/orplayer/e;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onLoadingBegin(Lgn/e;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lxs/c;->i:J

    .line 6
    .line 7
    return-void
.end method

.method public onLoadingEnd(Lgn/e;)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lxs/c;->i:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long p1, v0, v2

    .line 6
    .line 7
    if-lez p1, :cond_0

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-wide v4, p0, Lxs/c;->i:J

    .line 14
    .line 15
    sub-long/2addr v0, v4

    .line 16
    iget-wide v4, p0, Lxs/c;->h:J

    .line 17
    .line 18
    add-long/2addr v4, v0

    .line 19
    iput-wide v4, p0, Lxs/c;->h:J

    .line 20
    .line 21
    iget p1, p0, Lxs/c;->j:I

    .line 22
    .line 23
    add-int/lit8 p1, p1, 0x1

    .line 24
    .line 25
    iput p1, p0, Lxs/c;->j:I

    .line 26
    .line 27
    iput-wide v2, p0, Lxs/c;->i:J

    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public onLoadingProgress(IFLgn/e;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/player/orplayer/e$a;->m(Lcom/transsion/player/orplayer/e;IFLgn/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onLoopingStart()V
    .locals 2

    .line 1
    iget v0, p0, Lxs/c;->n:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lxs/c;->n:I

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lxs/c;->k:J

    .line 10
    .line 11
    return-void
.end method

.method public onMediaItemTransition(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->p(Lcom/transsion/player/orplayer/e;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onPlayError(Lcom/transsion/player/orplayer/PlayError;Lgn/e;)V
    .locals 0

    .line 1
    const-string p2, "errorInfo"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lxs/c;->r:Lcom/transsion/player/orplayer/PlayError;

    .line 7
    .line 8
    return-void
.end method

.method public onPlayerRelease(Lgn/e;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->t(Lcom/transsion/player/orplayer/e;Lgn/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onPlayerReset()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/orplayer/e$a;->v(Lcom/transsion/player/orplayer/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onPrepare(Lgn/e;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->w(Lcom/transsion/player/orplayer/e;Lgn/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onProgress(JLgn/e;)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lxs/c;->q:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long p3, v2, v0

    .line 6
    .line 7
    if-nez p3, :cond_1

    .line 8
    .line 9
    iget-object p3, p0, Lxs/c;->d:Lcom/transsion/player/orplayer/f;

    .line 10
    .line 11
    if-eqz p3, :cond_0

    .line 12
    .line 13
    invoke-interface {p3}, Lcom/transsion/player/orplayer/f;->getDuration()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    :cond_0
    iput-wide v2, p0, Lxs/c;->q:J

    .line 18
    .line 19
    :cond_1
    iget-wide v0, p0, Lxs/c;->l:J

    .line 20
    .line 21
    sub-long v2, p1, v0

    .line 22
    .line 23
    const-wide/16 v4, 0x1

    .line 24
    .line 25
    cmp-long p3, v4, v2

    .line 26
    .line 27
    if-gtz p3, :cond_2

    .line 28
    .line 29
    const-wide/16 v4, 0x3e8

    .line 30
    .line 31
    cmp-long p3, v2, v4

    .line 32
    .line 33
    if-gez p3, :cond_2

    .line 34
    .line 35
    iget-wide v2, p0, Lxs/c;->m:J

    .line 36
    .line 37
    sub-long v0, p1, v0

    .line 38
    .line 39
    add-long/2addr v2, v0

    .line 40
    iput-wide v2, p0, Lxs/c;->m:J

    .line 41
    .line 42
    :cond_2
    iput-wide p1, p0, Lxs/c;->l:J

    .line 43
    .line 44
    iget-wide v0, p0, Lxs/c;->k:J

    .line 45
    .line 46
    cmp-long p3, p1, v0

    .line 47
    .line 48
    if-lez p3, :cond_3

    .line 49
    .line 50
    iput-wide p1, p0, Lxs/c;->k:J

    .line 51
    .line 52
    :cond_3
    iget-object p1, p0, Lxs/c;->b:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 53
    .line 54
    if-eqz p1, :cond_4

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->Q()Lvs/a;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-eqz p1, :cond_4

    .line 61
    .line 62
    iget-wide p2, p0, Lxs/c;->m:J

    .line 63
    .line 64
    invoke-interface {p1, p2, p3}, Lvs/a;->a(J)V

    .line 65
    .line 66
    .line 67
    :cond_4
    return-void
.end method

.method public onRenderFirstFrame()V
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
    iput-wide v0, p0, Lxs/c;->g:J

    .line 18
    .line 19
    return-void
.end method

.method public onSetDataSource()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/orplayer/e$a;->B(Lcom/transsion/player/orplayer/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onTracksAudioBitrateChange(I)V
    .locals 0

    .line 1
    iput p1, p0, Lxs/c;->t:I

    .line 2
    .line 3
    return-void
.end method

.method public onTracksChange(Lqn/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->D(Lcom/transsion/player/orplayer/e;Lqn/c;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onTracksVideoBitrateChange(I)V
    .locals 0

    .line 1
    iput p1, p0, Lxs/c;->s:I

    .line 2
    .line 3
    return-void
.end method

.method public onVideoPause(Lgn/e;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lxs/c;->o:J

    .line 6
    .line 7
    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/player/orplayer/e$a;->H(Lcom/transsion/player/orplayer/e;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onVideoStart(Lgn/e;)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lxs/c;->o:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long p1, v0, v2

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-wide v4, p0, Lxs/c;->o:J

    .line 14
    .line 15
    sub-long/2addr v0, v4

    .line 16
    iget-wide v4, p0, Lxs/c;->p:J

    .line 17
    .line 18
    add-long/2addr v4, v0

    .line 19
    iput-wide v4, p0, Lxs/c;->p:J

    .line 20
    .line 21
    iput-wide v2, p0, Lxs/c;->o:J

    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final p(Lcom/transsion/player/orplayer/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxs/c;->d:Lcom/transsion/player/orplayer/f;

    .line 2
    .line 3
    return-void
.end method

.method public final q(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "pageFrom"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lxs/c;->y:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final r(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lxs/c;->E:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final s(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxs/c;->A:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 2
    .line 3
    return-void
.end method

.method public setOnSeekCompleteListener()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/orplayer/e$a;->K(Lcom/transsion/player/orplayer/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
