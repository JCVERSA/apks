.class public final Lcom/transsion/postdetail/layer/b;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private A:Lgj/c;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:I

.field private E:Ljava/lang/String;

.field private final a:Ljava/lang/String;

.field private b:Lcom/transsion/player/orplayer/f;

.field private c:Ljava/lang/String;

.field private d:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

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

.field private u:Ljava/lang/String;

.field private v:Z

.field private w:Z

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/transsion/postdetail/layer/b;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/transsion/postdetail/layer/b;->a:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/transsion/postdetail/layer/b;->w:Z

    .line 14
    .line 15
    const-string v0, ""

    .line 16
    .line 17
    iput-object v0, p0, Lcom/transsion/postdetail/layer/b;->x:Ljava/lang/String;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/transsion/postdetail/layer/b;->y:Ljava/lang/String;

    .line 20
    .line 21
    const/4 v1, -0x1

    .line 22
    iput v1, p0, Lcom/transsion/postdetail/layer/b;->z:I

    .line 23
    .line 24
    iput-object v0, p0, Lcom/transsion/postdetail/layer/b;->B:Ljava/lang/String;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/transsion/postdetail/layer/b;->C:Ljava/lang/String;

    .line 27
    .line 28
    const-string v0, "postdetail"

    .line 29
    .line 30
    iput-object v0, p0, Lcom/transsion/postdetail/layer/b;->E:Ljava/lang/String;

    .line 31
    .line 32
    return-void
.end method

.method public static synthetic e(Lcom/transsion/postdetail/layer/b;ZILjava/lang/Object;)V
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
    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/layer/b;->d(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final f()Lgj/c;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/layer/b;->A:Lgj/c;

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
    iput-object v0, p0, Lcom/transsion/postdetail/layer/b;->A:Lgj/c;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/layer/b;->A:Lgj/c;

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
    iput-wide v0, p0, Lcom/transsion/postdetail/layer/b;->e:J

    .line 4
    .line 5
    iput-wide v0, p0, Lcom/transsion/postdetail/layer/b;->f:J

    .line 6
    .line 7
    iput-wide v0, p0, Lcom/transsion/postdetail/layer/b;->g:J

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/transsion/postdetail/layer/b;->h:J

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/transsion/postdetail/layer/b;->i:J

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    iput v2, p0, Lcom/transsion/postdetail/layer/b;->j:I

    .line 15
    .line 16
    iput-wide v0, p0, Lcom/transsion/postdetail/layer/b;->k:J

    .line 17
    .line 18
    iput-wide v0, p0, Lcom/transsion/postdetail/layer/b;->l:J

    .line 19
    .line 20
    iput-wide v0, p0, Lcom/transsion/postdetail/layer/b;->m:J

    .line 21
    .line 22
    iput v2, p0, Lcom/transsion/postdetail/layer/b;->n:I

    .line 23
    .line 24
    iput-wide v0, p0, Lcom/transsion/postdetail/layer/b;->o:J

    .line 25
    .line 26
    iput-wide v0, p0, Lcom/transsion/postdetail/layer/b;->p:J

    .line 27
    .line 28
    iput-wide v0, p0, Lcom/transsion/postdetail/layer/b;->q:J

    .line 29
    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    const/4 p1, -0x1

    .line 33
    iput p1, p0, Lcom/transsion/postdetail/layer/b;->z:I

    .line 34
    .line 35
    iput-boolean v2, p0, Lcom/transsion/postdetail/layer/b;->v:Z

    .line 36
    .line 37
    :cond_0
    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/postdetail/layer/b;->y:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final a(II)V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    iput-wide p1, p0, Lcom/transsion/postdetail/layer/b;->f:J

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
    iget-object v1, p0, Lcom/transsion/postdetail/layer/b;->a:Ljava/lang/String;

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
    const-string v1, "pause"

    .line 24
    .line 25
    const-string v2, "module_name"

    .line 26
    .line 27
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    sget-object v1, Lqi/h;->a:Lqi/h;

    .line 31
    .line 32
    iget-object v3, p0, Lcom/transsion/postdetail/layer/b;->E:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v1, v3, v2, v0}, Lqi/h;->q(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

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
    iget-object v1, p0, Lcom/transsion/postdetail/layer/b;->a:Ljava/lang/String;

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
    const-string v1, "play"

    .line 24
    .line 25
    const-string v2, "module_name"

    .line 26
    .line 27
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    sget-object v1, Lqi/h;->a:Lqi/h;

    .line 31
    .line 32
    iget-object v3, p0, Lcom/transsion/postdetail/layer/b;->E:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v1, v3, v2, v0}, Lqi/h;->q(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 35
    .line 36
    .line 37
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
    iget-wide v2, v0, Lcom/transsion/postdetail/layer/b;->e:J

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
    iget-boolean v2, v0, Lcom/transsion/postdetail/layer/b;->v:Z

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 20
    .line 21
    iget-object v7, v0, Lcom/transsion/postdetail/layer/b;->a:Ljava/lang/String;

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
    iget-boolean v2, v0, Lcom/transsion/postdetail/layer/b;->v:Z

    .line 36
    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 40
    .line 41
    iget-object v7, v0, Lcom/transsion/postdetail/layer/b;->a:Ljava/lang/String;

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
    iput-boolean v1, v0, Lcom/transsion/postdetail/layer/b;->v:Z

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
    iget-object v3, v0, Lcom/transsion/postdetail/layer/b;->d:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 77
    .line 78
    const-string v6, ""

    .line 79
    .line 80
    if-eqz v3, :cond_2

    .line 81
    .line 82
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    if-nez v3, :cond_3

    .line 87
    .line 88
    :cond_2
    move-object v3, v6

    .line 89
    :cond_3
    const-string v7, "post_id"

    .line 90
    .line 91
    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    const-string v3, "opt_type"

    .line 95
    .line 96
    iget-object v7, v0, Lcom/transsion/postdetail/layer/b;->B:Ljava/lang/String;

    .line 97
    .line 98
    invoke-interface {v2, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    iget-object v3, v0, Lcom/transsion/postdetail/layer/b;->d:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 102
    .line 103
    if-eqz v3, :cond_4

    .line 104
    .line 105
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    if-eqz v3, :cond_4

    .line 110
    .line 111
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    if-nez v3, :cond_5

    .line 116
    .line 117
    :cond_4
    move-object v3, v6

    .line 118
    :cond_5
    const-string v7, "subject_id"

    .line 119
    .line 120
    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    iget-object v3, v0, Lcom/transsion/postdetail/layer/b;->s:Ljava/lang/String;

    .line 124
    .line 125
    if-nez v3, :cond_6

    .line 126
    .line 127
    move-object v3, v6

    .line 128
    :cond_6
    const-string v7, "base_post_id"

    .line 129
    .line 130
    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    iget-object v3, v0, Lcom/transsion/postdetail/layer/b;->d:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 134
    .line 135
    if-eqz v3, :cond_7

    .line 136
    .line 137
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getItemType()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    if-nez v3, :cond_8

    .line 142
    .line 143
    :cond_7
    move-object v3, v6

    .line 144
    :cond_8
    const-string v7, "item_type"

    .line 145
    .line 146
    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    const-string v3, "ep"

    .line 150
    .line 151
    iget-object v7, v0, Lcom/transsion/postdetail/layer/b;->C:Ljava/lang/String;

    .line 152
    .line 153
    invoke-interface {v2, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    iget-object v3, v0, Lcom/transsion/postdetail/layer/b;->t:Ljava/lang/String;

    .line 157
    .line 158
    if-nez v3, :cond_9

    .line 159
    .line 160
    move-object v3, v6

    .line 161
    :cond_9
    const-string v7, "base_item_type"

    .line 162
    .line 163
    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    iget-object v3, v0, Lcom/transsion/postdetail/layer/b;->d:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 167
    .line 168
    const/4 v7, 0x0

    .line 169
    if-eqz v3, :cond_a

    .line 170
    .line 171
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    if-eqz v3, :cond_a

    .line 176
    .line 177
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Subject;->getHasResource()Ljava/lang/Boolean;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    goto :goto_0

    .line 182
    :cond_a
    move-object v3, v7

    .line 183
    :goto_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    const-string v8, "has_resource"

    .line 188
    .line 189
    invoke-interface {v2, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    iget-object v3, v0, Lcom/transsion/postdetail/layer/b;->x:Ljava/lang/String;

    .line 193
    .line 194
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 195
    .line 196
    .line 197
    move-result v8

    .line 198
    if-nez v8, :cond_b

    .line 199
    .line 200
    sget-object v3, Lqi/h;->a:Lqi/h;

    .line 201
    .line 202
    invoke-virtual {v3}, Lqi/h;->h()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    :cond_b
    const-string v8, "page_from"

    .line 207
    .line 208
    invoke-interface {v2, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    iget-object v3, v0, Lcom/transsion/postdetail/layer/b;->d:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 212
    .line 213
    if-eqz v3, :cond_c

    .line 214
    .line 215
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getRec_ops()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v7

    .line 219
    :cond_c
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 220
    .line 221
    .line 222
    move-result v3

    .line 223
    if-nez v3, :cond_f

    .line 224
    .line 225
    iget-object v3, v0, Lcom/transsion/postdetail/layer/b;->d:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 226
    .line 227
    if-eqz v3, :cond_d

    .line 228
    .line 229
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getRec_ops()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    if-nez v3, :cond_e

    .line 234
    .line 235
    :cond_d
    move-object v3, v6

    .line 236
    :cond_e
    const-string v7, "ops"

    .line 237
    .line 238
    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    :cond_f
    iget-object v3, v0, Lcom/transsion/postdetail/layer/b;->u:Ljava/lang/String;

    .line 242
    .line 243
    if-eqz v3, :cond_12

    .line 244
    .line 245
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    if-nez v3, :cond_10

    .line 250
    .line 251
    goto :goto_2

    .line 252
    :cond_10
    iget-object v3, v0, Lcom/transsion/postdetail/layer/b;->u:Ljava/lang/String;

    .line 253
    .line 254
    if-nez v3, :cond_11

    .line 255
    .line 256
    goto :goto_1

    .line 257
    :cond_11
    move-object v6, v3

    .line 258
    :goto_1
    const-string v3, "subpage_name"

    .line 259
    .line 260
    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    :cond_12
    :goto_2
    iget v3, v0, Lcom/transsion/postdetail/layer/b;->D:I

    .line 264
    .line 265
    if-lez v3, :cond_13

    .line 266
    .line 267
    const-string v6, "subject_type"

    .line 268
    .line 269
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    :cond_13
    iget-wide v6, v0, Lcom/transsion/postdetail/layer/b;->g:J

    .line 277
    .line 278
    cmp-long v3, v6, v4

    .line 279
    .line 280
    const-string v6, "delay"

    .line 281
    .line 282
    const-string v7, "delay_v"

    .line 283
    .line 284
    const-string v8, "is_start"

    .line 285
    .line 286
    const-string v9, "1"

    .line 287
    .line 288
    const-string v10, "0"

    .line 289
    .line 290
    if-gtz v3, :cond_17

    .line 291
    .line 292
    iget-boolean v3, v0, Lcom/transsion/postdetail/layer/b;->v:Z

    .line 293
    .line 294
    if-eqz v3, :cond_14

    .line 295
    .line 296
    iget-wide v11, v0, Lcom/transsion/postdetail/layer/b;->m:J

    .line 297
    .line 298
    cmp-long v3, v11, v4

    .line 299
    .line 300
    if-lez v3, :cond_14

    .line 301
    .line 302
    goto :goto_5

    .line 303
    :cond_14
    invoke-interface {v2, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    iget-wide v11, v0, Lcom/transsion/postdetail/layer/b;->e:J

    .line 307
    .line 308
    cmp-long v3, v11, v4

    .line 309
    .line 310
    if-lez v3, :cond_15

    .line 311
    .line 312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 313
    .line 314
    .line 315
    move-result-wide v11

    .line 316
    iget-wide v13, v0, Lcom/transsion/postdetail/layer/b;->e:J

    .line 317
    .line 318
    sub-long/2addr v11, v13

    .line 319
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v3

    .line 323
    goto :goto_3

    .line 324
    :cond_15
    move-object v3, v10

    .line 325
    :goto_3
    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    iget-wide v7, v0, Lcom/transsion/postdetail/layer/b;->f:J

    .line 329
    .line 330
    cmp-long v3, v7, v4

    .line 331
    .line 332
    if-lez v3, :cond_16

    .line 333
    .line 334
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 335
    .line 336
    .line 337
    move-result-wide v7

    .line 338
    iget-wide v11, v0, Lcom/transsion/postdetail/layer/b;->f:J

    .line 339
    .line 340
    sub-long/2addr v7, v11

    .line 341
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v3

    .line 345
    goto :goto_4

    .line 346
    :cond_16
    move-object v3, v10

    .line 347
    :goto_4
    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    goto/16 :goto_8

    .line 351
    .line 352
    :cond_17
    :goto_5
    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    iget-wide v11, v0, Lcom/transsion/postdetail/layer/b;->e:J

    .line 356
    .line 357
    cmp-long v3, v11, v4

    .line 358
    .line 359
    if-lez v3, :cond_18

    .line 360
    .line 361
    iget-wide v13, v0, Lcom/transsion/postdetail/layer/b;->g:J

    .line 362
    .line 363
    cmp-long v3, v13, v4

    .line 364
    .line 365
    if-lez v3, :cond_18

    .line 366
    .line 367
    sub-long/2addr v13, v11

    .line 368
    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v3

    .line 372
    goto :goto_6

    .line 373
    :cond_18
    move-object v3, v10

    .line 374
    :goto_6
    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    iget-wide v7, v0, Lcom/transsion/postdetail/layer/b;->f:J

    .line 378
    .line 379
    cmp-long v3, v7, v4

    .line 380
    .line 381
    if-lez v3, :cond_19

    .line 382
    .line 383
    iget-wide v11, v0, Lcom/transsion/postdetail/layer/b;->g:J

    .line 384
    .line 385
    cmp-long v3, v11, v4

    .line 386
    .line 387
    if-lez v3, :cond_19

    .line 388
    .line 389
    sub-long/2addr v11, v7

    .line 390
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v3

    .line 394
    goto :goto_7

    .line 395
    :cond_19
    move-object v3, v10

    .line 396
    :goto_7
    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    iget-wide v6, v0, Lcom/transsion/postdetail/layer/b;->h:J

    .line 400
    .line 401
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v3

    .line 405
    const-string v6, "buffer_time"

    .line 406
    .line 407
    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    iget v3, v0, Lcom/transsion/postdetail/layer/b;->j:I

    .line 411
    .line 412
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v3

    .line 416
    const-string v6, "buffer_count"

    .line 417
    .line 418
    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    iget-wide v6, v0, Lcom/transsion/postdetail/layer/b;->k:J

    .line 422
    .line 423
    long-to-float v3, v6

    .line 424
    iget-wide v6, v0, Lcom/transsion/postdetail/layer/b;->q:J

    .line 425
    .line 426
    long-to-float v6, v6

    .line 427
    div-float/2addr v3, v6

    .line 428
    const/high16 v6, 0x42c80000    # 100.0f

    .line 429
    .line 430
    mul-float/2addr v3, v6

    .line 431
    iget v7, v0, Lcom/transsion/postdetail/layer/b;->n:I

    .line 432
    .line 433
    int-to-float v7, v7

    .line 434
    mul-float/2addr v7, v6

    .line 435
    add-float/2addr v3, v7

    .line 436
    const-string v6, "play_complete"

    .line 437
    .line 438
    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v3

    .line 442
    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    iget-wide v6, v0, Lcom/transsion/postdetail/layer/b;->m:J

    .line 446
    .line 447
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v3

    .line 451
    const-string v6, "play_duration"

    .line 452
    .line 453
    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    iget-wide v6, v0, Lcom/transsion/postdetail/layer/b;->p:J

    .line 457
    .line 458
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v3

    .line 462
    const-string v6, "pause_duration"

    .line 463
    .line 464
    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    .line 466
    .line 467
    iget v3, v0, Lcom/transsion/postdetail/layer/b;->n:I

    .line 468
    .line 469
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v3

    .line 473
    const-string v6, "completeCount"

    .line 474
    .line 475
    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    :goto_8
    if-eqz v1, :cond_1a

    .line 479
    .line 480
    move-object v3, v9

    .line 481
    goto :goto_9

    .line 482
    :cond_1a
    move-object v3, v10

    .line 483
    :goto_9
    const-string v6, "app_to_background"

    .line 484
    .line 485
    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    sget-object v3, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->i:Lcom/transsion/player/orplayer/ORPlayerPreloadManager$a;

    .line 489
    .line 490
    invoke-virtual {v3}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager$a;->a()Lcom/transsion/player/orplayer/ORPlayerPreloadManager;

    .line 491
    .line 492
    .line 493
    move-result-object v3

    .line 494
    iget-object v6, v0, Lcom/transsion/postdetail/layer/b;->y:Ljava/lang/String;

    .line 495
    .line 496
    invoke-virtual {v3, v6}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->e(Ljava/lang/String;)Z

    .line 497
    .line 498
    .line 499
    move-result v3

    .line 500
    if-eqz v3, :cond_1b

    .line 501
    .line 502
    move-object v3, v9

    .line 503
    goto :goto_a

    .line 504
    :cond_1b
    move-object v3, v10

    .line 505
    :goto_a
    const-string v6, "is_preloaded"

    .line 506
    .line 507
    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    .line 509
    .line 510
    const-string v3, "url"

    .line 511
    .line 512
    iget-object v6, v0, Lcom/transsion/postdetail/layer/b;->y:Ljava/lang/String;

    .line 513
    .line 514
    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    iget-object v3, v0, Lcom/transsion/postdetail/layer/b;->d:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 518
    .line 519
    if-eqz v3, :cond_1c

    .line 520
    .line 521
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getBuiltIn()Z

    .line 522
    .line 523
    .line 524
    move-result v3

    .line 525
    const/4 v6, 0x1

    .line 526
    if-ne v3, v6, :cond_1c

    .line 527
    .line 528
    goto :goto_b

    .line 529
    :cond_1c
    move-object v9, v10

    .line 530
    :goto_b
    const-string v3, "builtin"

    .line 531
    .line 532
    invoke-interface {v2, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    .line 534
    .line 535
    iget-wide v6, v0, Lcom/transsion/postdetail/layer/b;->q:J

    .line 536
    .line 537
    cmp-long v3, v6, v4

    .line 538
    .line 539
    if-lez v3, :cond_1d

    .line 540
    .line 541
    const-string v3, "total_duration"

    .line 542
    .line 543
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v6

    .line 547
    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    .line 549
    .line 550
    :cond_1d
    iget v3, v0, Lcom/transsion/postdetail/layer/b;->z:I

    .line 551
    .line 552
    if-ltz v3, :cond_1e

    .line 553
    .line 554
    const-string v6, "position"

    .line 555
    .line 556
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v3

    .line 560
    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    .line 562
    .line 563
    :cond_1e
    iget-object v3, v0, Lcom/transsion/postdetail/layer/b;->r:Ljava/lang/Integer;

    .line 564
    .line 565
    if-eqz v3, :cond_1f

    .line 566
    .line 567
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object v3

    .line 571
    const-string v6, "error_code"

    .line 572
    .line 573
    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    .line 575
    .line 576
    :cond_1f
    iget-boolean v3, v0, Lcom/transsion/postdetail/layer/b;->v:Z

    .line 577
    .line 578
    if-eqz v3, :cond_20

    .line 579
    .line 580
    iget-wide v6, v0, Lcom/transsion/postdetail/layer/b;->m:J

    .line 581
    .line 582
    cmp-long v3, v6, v4

    .line 583
    .line 584
    if-gtz v3, :cond_20

    .line 585
    .line 586
    iget-boolean v3, v0, Lcom/transsion/postdetail/layer/b;->w:Z

    .line 587
    .line 588
    if-nez v3, :cond_20

    .line 589
    .line 590
    return-void

    .line 591
    :cond_20
    if-eqz v1, :cond_21

    .line 592
    .line 593
    const/4 v3, 0x0

    .line 594
    iput-boolean v3, v0, Lcom/transsion/postdetail/layer/b;->w:Z

    .line 595
    .line 596
    :cond_21
    invoke-direct/range {p0 .. p0}, Lcom/transsion/postdetail/layer/b;->f()Lgj/c;

    .line 597
    .line 598
    .line 599
    move-result-object v3

    .line 600
    if-eqz v3, :cond_22

    .line 601
    .line 602
    iget-wide v4, v0, Lcom/transsion/postdetail/layer/b;->m:J

    .line 603
    .line 604
    invoke-interface {v3, v4, v5}, Lgj/c;->b(J)V

    .line 605
    .line 606
    .line 607
    :cond_22
    sget-object v12, Lqi/h;->a:Lqi/h;

    .line 608
    .line 609
    iget-object v13, v0, Lcom/transsion/postdetail/layer/b;->E:Ljava/lang/String;

    .line 610
    .line 611
    const-string v14, "video_play"

    .line 612
    .line 613
    iget-wide v3, v0, Lcom/transsion/postdetail/layer/b;->m:J

    .line 614
    .line 615
    move-wide v15, v3

    .line 616
    move-object/from16 v17, v2

    .line 617
    .line 618
    invoke-virtual/range {v12 .. v17}, Lqi/h;->C(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    .line 619
    .line 620
    .line 621
    invoke-direct/range {p0 .. p1}, Lcom/transsion/postdetail/layer/b;->q(Z)V

    .line 622
    .line 623
    .line 624
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
    iput-wide v0, p0, Lcom/transsion/postdetail/layer/b;->e:J

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/transsion/postdetail/layer/b;->w:Z

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
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/transsion/postdetail/layer/b;->i:J

    .line 6
    .line 7
    return-void
.end method

.method public final i()V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/transsion/postdetail/layer/b;->i:J

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
    iget-wide v4, p0, Lcom/transsion/postdetail/layer/b;->i:J

    .line 14
    .line 15
    sub-long/2addr v0, v4

    .line 16
    iget-wide v4, p0, Lcom/transsion/postdetail/layer/b;->h:J

    .line 17
    .line 18
    add-long/2addr v4, v0

    .line 19
    iput-wide v4, p0, Lcom/transsion/postdetail/layer/b;->h:J

    .line 20
    .line 21
    iget v0, p0, Lcom/transsion/postdetail/layer/b;->j:I

    .line 22
    .line 23
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    iput v0, p0, Lcom/transsion/postdetail/layer/b;->j:I

    .line 26
    .line 27
    iput-wide v2, p0, Lcom/transsion/postdetail/layer/b;->i:J

    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final j()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/transsion/postdetail/layer/b;->n:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/transsion/postdetail/layer/b;->n:I

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/transsion/postdetail/layer/b;->k:J

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
    iput-object p1, p0, Lcom/transsion/postdetail/layer/b;->r:Ljava/lang/Integer;

    .line 11
    .line 12
    return-void
.end method

.method public final l(J)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/layer/b;->b:Lcom/transsion/player/orplayer/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->getDuration()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    :goto_0
    iput-wide v0, p0, Lcom/transsion/postdetail/layer/b;->q:J

    .line 13
    .line 14
    iget-wide v0, p0, Lcom/transsion/postdetail/layer/b;->l:J

    .line 15
    .line 16
    sub-long v2, p1, v0

    .line 17
    .line 18
    const-wide/16 v4, 0x1

    .line 19
    .line 20
    cmp-long v4, v4, v2

    .line 21
    .line 22
    if-gtz v4, :cond_1

    .line 23
    .line 24
    const-wide/16 v4, 0x3e8

    .line 25
    .line 26
    cmp-long v2, v2, v4

    .line 27
    .line 28
    if-gez v2, :cond_1

    .line 29
    .line 30
    iget-wide v2, p0, Lcom/transsion/postdetail/layer/b;->m:J

    .line 31
    .line 32
    sub-long v0, p1, v0

    .line 33
    .line 34
    add-long/2addr v2, v0

    .line 35
    iput-wide v2, p0, Lcom/transsion/postdetail/layer/b;->m:J

    .line 36
    .line 37
    :cond_1
    iput-wide p1, p0, Lcom/transsion/postdetail/layer/b;->l:J

    .line 38
    .line 39
    iget-wide v0, p0, Lcom/transsion/postdetail/layer/b;->k:J

    .line 40
    .line 41
    cmp-long v0, p1, v0

    .line 42
    .line 43
    if-lez v0, :cond_2

    .line 44
    .line 45
    iput-wide p1, p0, Lcom/transsion/postdetail/layer/b;->k:J

    .line 46
    .line 47
    :cond_2
    invoke-direct {p0}, Lcom/transsion/postdetail/layer/b;->f()Lgj/c;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    iget-wide v0, p0, Lcom/transsion/postdetail/layer/b;->m:J

    .line 54
    .line 55
    invoke-interface {p1, v0, v1}, Lgj/c;->a(J)V

    .line 56
    .line 57
    .line 58
    :cond_3
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
    iput-wide v0, p0, Lcom/transsion/postdetail/layer/b;->g:J

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
    iput-wide v0, p0, Lcom/transsion/postdetail/layer/b;->o:J

    .line 6
    .line 7
    return-void
.end method

.method public final o()V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/transsion/postdetail/layer/b;->o:J

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
    iget-wide v4, p0, Lcom/transsion/postdetail/layer/b;->o:J

    .line 14
    .line 15
    sub-long/2addr v0, v4

    .line 16
    iget-wide v4, p0, Lcom/transsion/postdetail/layer/b;->p:J

    .line 17
    .line 18
    add-long/2addr v4, v0

    .line 19
    iput-wide v4, p0, Lcom/transsion/postdetail/layer/b;->p:J

    .line 20
    .line 21
    iput-wide v2, p0, Lcom/transsion/postdetail/layer/b;->o:J

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
    invoke-static {p0, v2, v0, v1}, Lcom/transsion/postdetail/layer/b;->e(Lcom/transsion/postdetail/layer/b;ZILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final r(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/layer/b;->t:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final s(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/layer/b;->s:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final t(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "pageFrom"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/postdetail/layer/b;->x:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final u(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/postdetail/layer/b;->E:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final v(Lcom/transsion/player/orplayer/f;)V
    .locals 7

    .line 1
    const-string v0, "orPlayer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/transsion/postdetail/layer/b;->a:Ljava/lang/String;

    .line 9
    .line 10
    const-string v0, "TAG"

    .line 11
    .line 12
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 v5, 0x4

    .line 16
    const/4 v6, 0x0

    .line 17
    const-string v3, "setPlayer----->"

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/transsion/postdetail/layer/b;->b:Lcom/transsion/player/orplayer/f;

    .line 24
    .line 25
    return-void
.end method

.method public final w(Ljava/lang/Integer;)V
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
    iput p1, p0, Lcom/transsion/postdetail/layer/b;->z:I

    .line 10
    .line 11
    return-void
.end method

.method public final x(Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/postdetail/layer/b;->a:Ljava/lang/String;

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
    const-string v2, "setPostData----->"

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/transsion/postdetail/layer/b;->c:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/transsion/postdetail/layer/b;->d:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 21
    .line 22
    return-void
.end method

.method public final y(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/postdetail/layer/b;->D:I

    .line 2
    .line 3
    return-void
.end method

.method public final z(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "subpageName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/postdetail/layer/b;->u:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
