.class public final Lwr/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/player/orplayer/e;


# instance fields
.field private A:I

.field private B:Lcom/transsion/shorttv/bean/Subject;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:I

.field private F:I

.field private G:Z

.field private H:Ljava/lang/String;

.field private final a:Landroidx/fragment/app/Fragment;

.field private final b:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

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

.field private r:Ljava/lang/Integer;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Z

.field private v:Z

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)V
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
    iput-object p1, p0, Lwr/c;->a:Landroidx/fragment/app/Fragment;

    .line 10
    .line 11
    iput-object p2, p0, Lwr/c;->b:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 12
    .line 13
    const-class p1, Lwr/c;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lwr/c;->c:Ljava/lang/String;

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lwr/c;->v:Z

    .line 23
    .line 24
    const-string p1, ""

    .line 25
    .line 26
    iput-object p1, p0, Lwr/c;->w:Ljava/lang/String;

    .line 27
    .line 28
    iput-object p1, p0, Lwr/c;->x:Ljava/lang/String;

    .line 29
    .line 30
    const/4 p2, -0x1

    .line 31
    iput p2, p0, Lwr/c;->y:I

    .line 32
    .line 33
    iput-object p1, p0, Lwr/c;->C:Ljava/lang/String;

    .line 34
    .line 35
    iput-object p1, p0, Lwr/c;->D:Ljava/lang/String;

    .line 36
    .line 37
    const-string p1, "postdetail"

    .line 38
    .line 39
    iput-object p1, p0, Lwr/c;->H:Ljava/lang/String;

    .line 40
    .line 41
    return-void
.end method

.method public static synthetic f(Lwr/c;ZILjava/lang/Object;)V
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
    invoke-virtual {p0, p1}, Lwr/c;->d(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final i(Z)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lwr/c;->e:J

    .line 4
    .line 5
    iput-wide v0, p0, Lwr/c;->f:J

    .line 6
    .line 7
    iput-wide v0, p0, Lwr/c;->g:J

    .line 8
    .line 9
    iput-wide v0, p0, Lwr/c;->h:J

    .line 10
    .line 11
    iput-wide v0, p0, Lwr/c;->i:J

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    iput v2, p0, Lwr/c;->j:I

    .line 15
    .line 16
    iput-wide v0, p0, Lwr/c;->k:J

    .line 17
    .line 18
    iput-wide v0, p0, Lwr/c;->l:J

    .line 19
    .line 20
    iput-wide v0, p0, Lwr/c;->m:J

    .line 21
    .line 22
    iput v2, p0, Lwr/c;->n:I

    .line 23
    .line 24
    iput-wide v0, p0, Lwr/c;->o:J

    .line 25
    .line 26
    iput-wide v0, p0, Lwr/c;->p:J

    .line 27
    .line 28
    iput-wide v0, p0, Lwr/c;->q:J

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lwr/c;->r:Ljava/lang/Integer;

    .line 32
    .line 33
    iput-boolean v2, p0, Lwr/c;->G:Z

    .line 34
    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    const/4 p1, -0x1

    .line 38
    iput p1, p0, Lwr/c;->y:I

    .line 39
    .line 40
    iput-boolean v2, p0, Lwr/c;->u:Z

    .line 41
    .line 42
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    iput-wide p1, p0, Lwr/c;->f:J

    .line 6
    .line 7
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 8
    .line 9
    const/4 v4, 0x4

    .line 10
    const/4 v5, 0x0

    .line 11
    const-string v1, "video_play"

    .line 12
    .line 13
    const-string v2, "addSurface"

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

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
    iget-object v1, p0, Lwr/c;->c:Ljava/lang/String;

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
    const-string v1, "content_type"

    .line 31
    .line 32
    const-string v2, "ugc_video"

    .line 33
    .line 34
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    sget-object v1, Lqi/h;->a:Lqi/h;

    .line 38
    .line 39
    iget-object v2, p0, Lwr/c;->H:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v1, v2, v0}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final c()V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lwr/c;->c:Ljava/lang/String;

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
    const-string v1, "content_type"

    .line 31
    .line 32
    const-string v2, "ugc_video"

    .line 33
    .line 34
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    sget-object v1, Lqi/h;->a:Lqi/h;

    .line 38
    .line 39
    iget-object v2, p0, Lwr/c;->H:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v1, v2, v0}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 42
    .line 43
    .line 44
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
    iget-wide v2, v0, Lwr/c;->e:J

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
    iget-boolean v2, v0, Lwr/c;->u:Z

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 20
    .line 21
    iget-object v7, v0, Lwr/c;->c:Ljava/lang/String;

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
    iget-boolean v2, v0, Lwr/c;->u:Z

    .line 36
    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 40
    .line 41
    iget-object v7, v0, Lwr/c;->c:Ljava/lang/String;

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
    iput-boolean v1, v0, Lwr/c;->u:Z

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
    iget-object v6, v0, Lwr/c;->C:Ljava/lang/String;

    .line 79
    .line 80
    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    iget-object v3, v0, Lwr/c;->B:Lcom/transsion/shorttv/bean/Subject;

    .line 84
    .line 85
    const-string v6, ""

    .line 86
    .line 87
    if-eqz v3, :cond_2

    .line 88
    .line 89
    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/Subject;->getSubjectId()Ljava/lang/String;

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
    const-string v7, "subject_id"

    .line 97
    .line 98
    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    iget-object v3, v0, Lwr/c;->s:Ljava/lang/String;

    .line 102
    .line 103
    if-nez v3, :cond_4

    .line 104
    .line 105
    move-object v3, v6

    .line 106
    :cond_4
    const-string v7, "base_post_id"

    .line 107
    .line 108
    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    const-string v3, "item_type"

    .line 112
    .line 113
    const-string v7, "7"

    .line 114
    .line 115
    invoke-interface {v2, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    const-string v3, "ep"

    .line 119
    .line 120
    iget-object v7, v0, Lwr/c;->D:Ljava/lang/String;

    .line 121
    .line 122
    invoke-interface {v2, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    iget-object v3, v0, Lwr/c;->t:Ljava/lang/String;

    .line 126
    .line 127
    if-nez v3, :cond_5

    .line 128
    .line 129
    move-object v3, v6

    .line 130
    :cond_5
    const-string v7, "base_item_type"

    .line 131
    .line 132
    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    iget-object v3, v0, Lwr/c;->B:Lcom/transsion/shorttv/bean/Subject;

    .line 136
    .line 137
    const/4 v7, 0x0

    .line 138
    if-eqz v3, :cond_6

    .line 139
    .line 140
    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/Subject;->getHasResource()Ljava/lang/Boolean;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    goto :goto_0

    .line 145
    :cond_6
    move-object v3, v7

    .line 146
    :goto_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    const-string v8, "has_resource"

    .line 151
    .line 152
    invoke-interface {v2, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    iget-object v3, v0, Lwr/c;->w:Ljava/lang/String;

    .line 156
    .line 157
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 158
    .line 159
    .line 160
    move-result v8

    .line 161
    if-nez v8, :cond_7

    .line 162
    .line 163
    sget-object v3, Lqi/h;->a:Lqi/h;

    .line 164
    .line 165
    invoke-virtual {v3}, Lqi/h;->h()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    :cond_7
    const-string v8, "page_from"

    .line 170
    .line 171
    invoke-interface {v2, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    iget-object v3, v0, Lwr/c;->B:Lcom/transsion/shorttv/bean/Subject;

    .line 175
    .line 176
    if-eqz v3, :cond_8

    .line 177
    .line 178
    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/Subject;->getOps()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v7

    .line 182
    :cond_8
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    if-nez v3, :cond_b

    .line 187
    .line 188
    iget-object v3, v0, Lwr/c;->B:Lcom/transsion/shorttv/bean/Subject;

    .line 189
    .line 190
    if-eqz v3, :cond_a

    .line 191
    .line 192
    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/Subject;->getOps()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    if-nez v3, :cond_9

    .line 197
    .line 198
    goto :goto_1

    .line 199
    :cond_9
    move-object v6, v3

    .line 200
    :cond_a
    :goto_1
    const-string v3, "ops"

    .line 201
    .line 202
    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    :cond_b
    iget v3, v0, Lwr/c;->E:I

    .line 206
    .line 207
    if-lez v3, :cond_c

    .line 208
    .line 209
    const-string v6, "subject_type"

    .line 210
    .line 211
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    :cond_c
    iget-wide v6, v0, Lwr/c;->g:J

    .line 219
    .line 220
    cmp-long v3, v6, v4

    .line 221
    .line 222
    const-string v6, "delay"

    .line 223
    .line 224
    const-string v7, "delay_v"

    .line 225
    .line 226
    const-string v8, "is_start"

    .line 227
    .line 228
    const-string v9, "1"

    .line 229
    .line 230
    const-string v10, "0"

    .line 231
    .line 232
    if-gtz v3, :cond_10

    .line 233
    .line 234
    iget-boolean v3, v0, Lwr/c;->u:Z

    .line 235
    .line 236
    if-eqz v3, :cond_d

    .line 237
    .line 238
    iget-wide v11, v0, Lwr/c;->m:J

    .line 239
    .line 240
    cmp-long v3, v11, v4

    .line 241
    .line 242
    if-lez v3, :cond_d

    .line 243
    .line 244
    goto :goto_4

    .line 245
    :cond_d
    invoke-interface {v2, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    iget-wide v11, v0, Lwr/c;->e:J

    .line 249
    .line 250
    cmp-long v3, v11, v4

    .line 251
    .line 252
    if-lez v3, :cond_e

    .line 253
    .line 254
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 255
    .line 256
    .line 257
    move-result-wide v11

    .line 258
    iget-wide v13, v0, Lwr/c;->e:J

    .line 259
    .line 260
    sub-long/2addr v11, v13

    .line 261
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    goto :goto_2

    .line 266
    :cond_e
    move-object v3, v10

    .line 267
    :goto_2
    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    iget-wide v7, v0, Lwr/c;->f:J

    .line 271
    .line 272
    cmp-long v3, v7, v4

    .line 273
    .line 274
    if-lez v3, :cond_f

    .line 275
    .line 276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 277
    .line 278
    .line 279
    move-result-wide v7

    .line 280
    iget-wide v11, v0, Lwr/c;->f:J

    .line 281
    .line 282
    sub-long/2addr v7, v11

    .line 283
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v3

    .line 287
    goto :goto_3

    .line 288
    :cond_f
    move-object v3, v10

    .line 289
    :goto_3
    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    goto/16 :goto_7

    .line 293
    .line 294
    :cond_10
    :goto_4
    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    iget-wide v11, v0, Lwr/c;->e:J

    .line 298
    .line 299
    cmp-long v3, v11, v4

    .line 300
    .line 301
    if-lez v3, :cond_11

    .line 302
    .line 303
    iget-wide v13, v0, Lwr/c;->g:J

    .line 304
    .line 305
    cmp-long v3, v13, v4

    .line 306
    .line 307
    if-lez v3, :cond_11

    .line 308
    .line 309
    sub-long/2addr v13, v11

    .line 310
    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    goto :goto_5

    .line 315
    :cond_11
    move-object v3, v10

    .line 316
    :goto_5
    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    iget-wide v7, v0, Lwr/c;->f:J

    .line 320
    .line 321
    cmp-long v3, v7, v4

    .line 322
    .line 323
    if-lez v3, :cond_12

    .line 324
    .line 325
    iget-wide v11, v0, Lwr/c;->g:J

    .line 326
    .line 327
    cmp-long v3, v11, v4

    .line 328
    .line 329
    if-lez v3, :cond_12

    .line 330
    .line 331
    sub-long/2addr v11, v7

    .line 332
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v3

    .line 336
    goto :goto_6

    .line 337
    :cond_12
    move-object v3, v10

    .line 338
    :goto_6
    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    iget-wide v6, v0, Lwr/c;->h:J

    .line 342
    .line 343
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v3

    .line 347
    const-string v6, "buffer_time"

    .line 348
    .line 349
    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    iget v3, v0, Lwr/c;->j:I

    .line 353
    .line 354
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v3

    .line 358
    const-string v6, "buffer_count"

    .line 359
    .line 360
    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    iget-wide v6, v0, Lwr/c;->k:J

    .line 364
    .line 365
    long-to-float v3, v6

    .line 366
    iget-wide v6, v0, Lwr/c;->q:J

    .line 367
    .line 368
    long-to-float v6, v6

    .line 369
    div-float/2addr v3, v6

    .line 370
    const/high16 v6, 0x42c80000    # 100.0f

    .line 371
    .line 372
    mul-float/2addr v3, v6

    .line 373
    iget v7, v0, Lwr/c;->n:I

    .line 374
    .line 375
    int-to-float v7, v7

    .line 376
    mul-float/2addr v7, v6

    .line 377
    add-float/2addr v3, v7

    .line 378
    const-string v6, "play_complete"

    .line 379
    .line 380
    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v3

    .line 384
    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    iget-wide v6, v0, Lwr/c;->m:J

    .line 388
    .line 389
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v3

    .line 393
    const-string v6, "play_duration"

    .line 394
    .line 395
    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    iget-wide v6, v0, Lwr/c;->p:J

    .line 399
    .line 400
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v3

    .line 404
    const-string v6, "pause_duration"

    .line 405
    .line 406
    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    iget v3, v0, Lwr/c;->n:I

    .line 410
    .line 411
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v3

    .line 415
    const-string v6, "completeCount"

    .line 416
    .line 417
    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    :goto_7
    if-eqz v1, :cond_13

    .line 421
    .line 422
    move-object v3, v9

    .line 423
    goto :goto_8

    .line 424
    :cond_13
    move-object v3, v10

    .line 425
    :goto_8
    const-string v6, "app_to_background"

    .line 426
    .line 427
    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    const-string v3, "url"

    .line 431
    .line 432
    iget-object v6, v0, Lwr/c;->x:Ljava/lang/String;

    .line 433
    .line 434
    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    iget v3, v0, Lwr/c;->F:I

    .line 438
    .line 439
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v3

    .line 443
    const-string v6, "download_status"

    .line 444
    .line 445
    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    iget-wide v6, v0, Lwr/c;->q:J

    .line 449
    .line 450
    cmp-long v3, v6, v4

    .line 451
    .line 452
    if-lez v3, :cond_14

    .line 453
    .line 454
    const-string v3, "total_duration"

    .line 455
    .line 456
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v6

    .line 460
    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    :cond_14
    iget v3, v0, Lwr/c;->y:I

    .line 464
    .line 465
    if-ltz v3, :cond_15

    .line 466
    .line 467
    const-string v6, "position"

    .line 468
    .line 469
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v3

    .line 473
    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    :cond_15
    const-string v3, "player_type"

    .line 477
    .line 478
    invoke-interface {v2, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    iget-object v3, v0, Lwr/c;->r:Ljava/lang/Integer;

    .line 482
    .line 483
    if-eqz v3, :cond_16

    .line 484
    .line 485
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v3

    .line 489
    const-string v6, "error_code"

    .line 490
    .line 491
    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    :cond_16
    iget v3, v0, Lwr/c;->F:I

    .line 495
    .line 496
    if-nez v3, :cond_19

    .line 497
    .line 498
    iget-wide v6, v0, Lwr/c;->g:J

    .line 499
    .line 500
    cmp-long v3, v6, v4

    .line 501
    .line 502
    if-lez v3, :cond_17

    .line 503
    .line 504
    iget-wide v11, v0, Lwr/c;->e:J

    .line 505
    .line 506
    cmp-long v3, v11, v4

    .line 507
    .line 508
    if-lez v3, :cond_17

    .line 509
    .line 510
    sub-long/2addr v6, v11

    .line 511
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v3

    .line 515
    goto :goto_9

    .line 516
    :cond_17
    iget-wide v6, v0, Lwr/c;->e:J

    .line 517
    .line 518
    cmp-long v3, v6, v4

    .line 519
    .line 520
    if-lez v3, :cond_18

    .line 521
    .line 522
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 523
    .line 524
    .line 525
    move-result-wide v6

    .line 526
    iget-wide v11, v0, Lwr/c;->e:J

    .line 527
    .line 528
    sub-long/2addr v6, v11

    .line 529
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v3

    .line 533
    goto :goto_9

    .line 534
    :cond_18
    move-object v3, v10

    .line 535
    :goto_9
    const-string v6, "delay_net_source"

    .line 536
    .line 537
    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    .line 539
    .line 540
    :cond_19
    iget-boolean v3, v0, Lwr/c;->G:Z

    .line 541
    .line 542
    if-eqz v3, :cond_1a

    .line 543
    .line 544
    goto :goto_a

    .line 545
    :cond_1a
    move-object v9, v10

    .line 546
    :goto_a
    const-string v3, "is_first_play"

    .line 547
    .line 548
    invoke-interface {v2, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    .line 550
    .line 551
    iget-boolean v3, v0, Lwr/c;->u:Z

    .line 552
    .line 553
    if-eqz v3, :cond_1b

    .line 554
    .line 555
    iget-wide v6, v0, Lwr/c;->m:J

    .line 556
    .line 557
    cmp-long v3, v6, v4

    .line 558
    .line 559
    if-gtz v3, :cond_1b

    .line 560
    .line 561
    iget-boolean v3, v0, Lwr/c;->v:Z

    .line 562
    .line 563
    if-nez v3, :cond_1b

    .line 564
    .line 565
    return-void

    .line 566
    :cond_1b
    if-eqz v1, :cond_1c

    .line 567
    .line 568
    const/4 v3, 0x0

    .line 569
    iput-boolean v3, v0, Lwr/c;->v:Z

    .line 570
    .line 571
    :cond_1c
    iget-object v3, v0, Lwr/c;->b:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 572
    .line 573
    if-eqz v3, :cond_1d

    .line 574
    .line 575
    invoke-virtual {v3}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->D0()Lur/a;

    .line 576
    .line 577
    .line 578
    move-result-object v3

    .line 579
    if-eqz v3, :cond_1d

    .line 580
    .line 581
    iget-wide v4, v0, Lwr/c;->m:J

    .line 582
    .line 583
    invoke-interface {v3, v4, v5}, Lur/a;->b(J)V

    .line 584
    .line 585
    .line 586
    :cond_1d
    iget v3, v0, Lwr/c;->z:I

    .line 587
    .line 588
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v3

    .line 592
    const-string v4, "video_bitrate"

    .line 593
    .line 594
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    .line 596
    .line 597
    iget v3, v0, Lwr/c;->A:I

    .line 598
    .line 599
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object v3

    .line 603
    const-string v4, "audio_bitrate"

    .line 604
    .line 605
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    .line 607
    .line 608
    sget-object v12, Lqi/h;->a:Lqi/h;

    .line 609
    .line 610
    iget-object v13, v0, Lwr/c;->H:Ljava/lang/String;

    .line 611
    .line 612
    const-string v14, "video_play"

    .line 613
    .line 614
    iget-wide v3, v0, Lwr/c;->m:J

    .line 615
    .line 616
    move-wide v15, v3

    .line 617
    move-object/from16 v17, v2

    .line 618
    .line 619
    invoke-virtual/range {v12 .. v17}, Lqi/h;->C(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    .line 620
    .line 621
    .line 622
    invoke-direct/range {p0 .. p1}, Lwr/c;->i(Z)V

    .line 623
    .line 624
    .line 625
    return-void
.end method

.method public final e(ZZ)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lwr/c;->d(Z)V

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0, p2}, Lwr/c;->i(Z)V

    .line 8
    .line 9
    .line 10
    :goto_0
    return-void
.end method

.method public final g(Landroid/view/View;Z)V
    .locals 6

    .line 1
    const-string p2, "rootView"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide p1

    .line 10
    iput-wide p1, p0, Lwr/c;->e:J

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lwr/c;->v:Z

    .line 14
    .line 15
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 16
    .line 17
    const/4 v4, 0x4

    .line 18
    const/4 v5, 0x0

    .line 19
    const-string v1, "video_play"

    .line 20
    .line 21
    const-string v2, "initView"

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final h()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-static {p0, v2, v0, v1}, Lwr/c;->f(Lwr/c;ZILjava/lang/Object;)V

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

.method public final j(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwr/c;->t:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwr/c;->s:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final l(I)V
    .locals 0

    .line 1
    iput p1, p0, Lwr/c;->F:I

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
    iput-object p1, p0, Lwr/c;->D:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final n(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lwr/c;->G:Z

    .line 2
    .line 3
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
    iput-object p1, p0, Lwr/c;->C:Ljava/lang/String;

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
    iget-wide v1, p0, Lwr/c;->q:J

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
    iput-wide v0, p0, Lwr/c;->i:J

    .line 6
    .line 7
    return-void
.end method

.method public onLoadingEnd(Lgn/e;)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lwr/c;->i:J

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
    iget-wide v4, p0, Lwr/c;->i:J

    .line 14
    .line 15
    sub-long/2addr v0, v4

    .line 16
    iget-wide v4, p0, Lwr/c;->h:J

    .line 17
    .line 18
    add-long/2addr v4, v0

    .line 19
    iput-wide v4, p0, Lwr/c;->h:J

    .line 20
    .line 21
    iget p1, p0, Lwr/c;->j:I

    .line 22
    .line 23
    add-int/lit8 p1, p1, 0x1

    .line 24
    .line 25
    iput p1, p0, Lwr/c;->j:I

    .line 26
    .line 27
    iput-wide v2, p0, Lwr/c;->i:J

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
    iget v0, p0, Lwr/c;->n:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lwr/c;->n:I

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lwr/c;->k:J

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
    invoke-virtual {p1}, Lcom/transsion/player/orplayer/PlayError;->getErrorCode()Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lwr/c;->r:Ljava/lang/Integer;

    .line 11
    .line 12
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
    iget-wide v0, p0, Lwr/c;->q:J

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
    iget-object p3, p0, Lwr/c;->d:Lcom/transsion/player/orplayer/f;

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
    iput-wide v2, p0, Lwr/c;->q:J

    .line 18
    .line 19
    :cond_1
    iget-wide v0, p0, Lwr/c;->l:J

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
    iget-wide v2, p0, Lwr/c;->m:J

    .line 36
    .line 37
    sub-long v0, p1, v0

    .line 38
    .line 39
    add-long/2addr v2, v0

    .line 40
    iput-wide v2, p0, Lwr/c;->m:J

    .line 41
    .line 42
    :cond_2
    iput-wide p1, p0, Lwr/c;->l:J

    .line 43
    .line 44
    iget-wide v0, p0, Lwr/c;->k:J

    .line 45
    .line 46
    cmp-long p3, p1, v0

    .line 47
    .line 48
    if-lez p3, :cond_3

    .line 49
    .line 50
    iput-wide p1, p0, Lwr/c;->k:J

    .line 51
    .line 52
    :cond_3
    iget-object p1, p0, Lwr/c;->b:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 53
    .line 54
    if-eqz p1, :cond_4

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->D0()Lur/a;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-eqz p1, :cond_4

    .line 61
    .line 62
    iget-wide p2, p0, Lwr/c;->m:J

    .line 63
    .line 64
    invoke-interface {p1, p2, p3}, Lur/a;->a(J)V

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
    iput-wide v0, p0, Lwr/c;->g:J

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
    iput p1, p0, Lwr/c;->A:I

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
    iput p1, p0, Lwr/c;->z:I

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
    iput-wide v0, p0, Lwr/c;->o:J

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
    iget-wide v0, p0, Lwr/c;->o:J

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
    iget-wide v4, p0, Lwr/c;->o:J

    .line 14
    .line 15
    sub-long/2addr v0, v4

    .line 16
    iget-wide v4, p0, Lwr/c;->p:J

    .line 17
    .line 18
    add-long/2addr v4, v0

    .line 19
    iput-wide v4, p0, Lwr/c;->p:J

    .line 20
    .line 21
    iput-wide v2, p0, Lwr/c;->o:J

    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final p(Lcom/transsion/player/orplayer/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwr/c;->d:Lcom/transsion/player/orplayer/f;

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
    iput-object p1, p0, Lwr/c;->w:Ljava/lang/String;

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
    iput-object p1, p0, Lwr/c;->H:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final s(Ljava/lang/Integer;)V
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
    iput p1, p0, Lwr/c;->y:I

    .line 10
    .line 11
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

.method public final t(Lcom/transsion/shorttv/bean/Subject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwr/c;->B:Lcom/transsion/shorttv/bean/Subject;

    .line 2
    .line 3
    return-void
.end method

.method public final u(I)V
    .locals 0

    .line 1
    iput p1, p0, Lwr/c;->E:I

    .line 2
    .line 3
    return-void
.end method

.method public final v(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lwr/c;->x:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
