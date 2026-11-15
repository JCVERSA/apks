.class public final Lcom/transsion/postdetail/shorttv/factory/ShortTvHistoryProvider;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lur/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/shorttv/bean/Subject;Lcom/transsion/shorttv/bean/ShortTVItem;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 25

    .line 1
    move-object/from16 v0, p5

    .line 2
    .line 3
    instance-of v1, v0, Lcom/transsion/postdetail/shorttv/factory/ShortTvHistoryProvider$saveHistory$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/transsion/postdetail/shorttv/factory/ShortTvHistoryProvider$saveHistory$1;

    .line 9
    .line 10
    iget v2, v1, Lcom/transsion/postdetail/shorttv/factory/ShortTvHistoryProvider$saveHistory$1;->label:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lcom/transsion/postdetail/shorttv/factory/ShortTvHistoryProvider$saveHistory$1;->label:I

    .line 20
    .line 21
    move-object/from16 v2, p0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v1, Lcom/transsion/postdetail/shorttv/factory/ShortTvHistoryProvider$saveHistory$1;

    .line 25
    .line 26
    move-object/from16 v2, p0

    .line 27
    .line 28
    invoke-direct {v1, v2, v0}, Lcom/transsion/postdetail/shorttv/factory/ShortTvHistoryProvider$saveHistory$1;-><init>(Lcom/transsion/postdetail/shorttv/factory/ShortTvHistoryProvider;Lkotlin/coroutines/Continuation;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v0, v1, Lcom/transsion/postdetail/shorttv/factory/ShortTvHistoryProvider$saveHistory$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    iget v4, v1, Lcom/transsion/postdetail/shorttv/factory/ShortTvHistoryProvider$saveHistory$1;->label:I

    .line 38
    .line 39
    const/4 v5, 0x1

    .line 40
    if-eqz v4, :cond_2

    .line 41
    .line 42
    if-ne v4, v5, :cond_1

    .line 43
    .line 44
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto/16 :goto_6

    .line 48
    .line 49
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 52
    .line 53
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v0

    .line 57
    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    new-instance v0, Lcom/transsion/baselib/db/video/ShortTVPlayBean;

    .line 61
    .line 62
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    const-string v6, ""

    .line 67
    .line 68
    if-nez v4, :cond_3

    .line 69
    .line 70
    move-object v7, v6

    .line 71
    goto :goto_1

    .line 72
    :cond_3
    move-object v7, v4

    .line 73
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/bean/ShortTVItem;->getId()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    if-nez v4, :cond_4

    .line 78
    .line 79
    move-object v8, v6

    .line 80
    goto :goto_2

    .line 81
    :cond_4
    move-object v8, v4

    .line 82
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    .line 83
    .line 84
    .line 85
    move-result v9

    .line 86
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/bean/ShortTVItem;->getSe()I

    .line 87
    .line 88
    .line 89
    move-result v10

    .line 90
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/Subject;->getTotalEpisode()I

    .line 91
    .line 92
    .line 93
    move-result v11

    .line 94
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/Subject;->getTitle()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v14

    .line 98
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/Subject;->getDescription()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v15

    .line 102
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/Subject;->getCover()Lcom/transsion/shorttv/bean/Cover;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    const/4 v6, 0x0

    .line 107
    if-eqz v4, :cond_5

    .line 108
    .line 109
    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/Cover;->getUrl()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    move-object/from16 v16, v4

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_5
    move-object/from16 v16, v6

    .line 117
    .line 118
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/Subject;->getCover()Lcom/transsion/shorttv/bean/Cover;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    if-eqz v4, :cond_6

    .line 123
    .line 124
    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    move-object/from16 v17, v4

    .line 129
    .line 130
    goto :goto_4

    .line 131
    :cond_6
    move-object/from16 v17, v6

    .line 132
    .line 133
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/bean/ShortTVItem;->getVideoId()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v18

    .line 137
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/bean/ShortTVItem;->getVideo()Lcom/transsion/shorttv/bean/Media;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    if-eqz v4, :cond_7

    .line 142
    .line 143
    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/Media;->getVideoAddress()Lcom/transsion/shorttv/bean/Video;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    if-eqz v4, :cond_7

    .line 148
    .line 149
    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/Video;->getUrl()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    move-object/from16 v19, v4

    .line 154
    .line 155
    goto :goto_5

    .line 156
    :cond_7
    move-object/from16 v19, v6

    .line 157
    .line 158
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 159
    .line 160
    .line 161
    move-result-wide v20

    .line 162
    const/16 v23, 0x2000

    .line 163
    .line 164
    const/16 v24, 0x0

    .line 165
    .line 166
    const/16 v22, 0x0

    .line 167
    .line 168
    move-object v6, v0

    .line 169
    move-wide/from16 v12, p3

    .line 170
    .line 171
    invoke-direct/range {v6 .. v24}, Lcom/transsion/baselib/db/video/ShortTVPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;IIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 172
    .line 173
    .line 174
    sget-object v4, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$f1;

    .line 175
    .line 176
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 177
    .line 178
    .line 179
    move-result-object v6

    .line 180
    const-string v7, "getApp(...)"

    .line 181
    .line 182
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v4, v6}, Lcom/transsion/baselib/db/AppDatabase$f1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    invoke-virtual {v4}, Lcom/transsion/baselib/db/AppDatabase;->w1()Lcom/transsion/baselib/db/video/ShortTVPlayDao;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    iput v5, v1, Lcom/transsion/postdetail/shorttv/factory/ShortTvHistoryProvider$saveHistory$1;->label:I

    .line 194
    .line 195
    invoke-interface {v4, v0, v1}, Lcom/transsion/baselib/db/video/ShortTVPlayDao;->g(Lcom/transsion/baselib/db/video/ShortTVPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    if-ne v0, v3, :cond_8

    .line 200
    .line 201
    return-object v3

    .line 202
    :cond_8
    :goto_6
    new-instance v0, Lyw/e;

    .line 203
    .line 204
    const/4 v1, 0x0

    .line 205
    invoke-direct {v0, v5, v1}, Lyw/e;-><init>(ZZ)V

    .line 206
    .line 207
    .line 208
    sget-object v1, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 209
    .line 210
    const-class v3, Lcom/transsnet/flow/event/FlowEventBus;

    .line 211
    .line 212
    invoke-virtual {v1, v3}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    check-cast v1, Lcom/transsnet/flow/event/FlowEventBus;

    .line 217
    .line 218
    const-class v3, Lyw/e;

    .line 219
    .line 220
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    const-string v4, "getName(...)"

    .line 225
    .line 226
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    const-wide/16 v4, 0x0

    .line 230
    .line 231
    invoke-virtual {v1, v3, v0, v4, v5}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 232
    .line 233
    .line 234
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 235
    .line 236
    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$f1;

    .line 2
    .line 3
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "getApp(...)"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/AppDatabase$f1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->w1()Lcom/transsion/baselib/db/video/ShortTVPlayDao;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0, p1, p2, p3}, Lcom/transsion/baselib/db/video/ShortTVPlayDao;->b(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    if-ne p1, p2, :cond_0

    .line 29
    .line 30
    return-object p1

    .line 31
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 32
    .line 33
    return-object p1
.end method

.method public c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    instance-of v1, v0, Lcom/transsion/postdetail/shorttv/factory/ShortTvHistoryProvider$getHistory$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/transsion/postdetail/shorttv/factory/ShortTvHistoryProvider$getHistory$1;

    .line 9
    .line 10
    iget v2, v1, Lcom/transsion/postdetail/shorttv/factory/ShortTvHistoryProvider$getHistory$1;->label:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lcom/transsion/postdetail/shorttv/factory/ShortTvHistoryProvider$getHistory$1;->label:I

    .line 20
    .line 21
    move-object/from16 v2, p0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v1, Lcom/transsion/postdetail/shorttv/factory/ShortTvHistoryProvider$getHistory$1;

    .line 25
    .line 26
    move-object/from16 v2, p0

    .line 27
    .line 28
    invoke-direct {v1, v2, v0}, Lcom/transsion/postdetail/shorttv/factory/ShortTvHistoryProvider$getHistory$1;-><init>(Lcom/transsion/postdetail/shorttv/factory/ShortTvHistoryProvider;Lkotlin/coroutines/Continuation;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v0, v1, Lcom/transsion/postdetail/shorttv/factory/ShortTvHistoryProvider$getHistory$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    iget v4, v1, Lcom/transsion/postdetail/shorttv/factory/ShortTvHistoryProvider$getHistory$1;->label:I

    .line 38
    .line 39
    const/4 v5, 0x1

    .line 40
    if-eqz v4, :cond_2

    .line 41
    .line 42
    if-ne v4, v5, :cond_1

    .line 43
    .line 44
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v0

    .line 56
    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    sget-object v0, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$f1;

    .line 60
    .line 61
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    const-string v6, "getApp(...)"

    .line 66
    .line 67
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v4}, Lcom/transsion/baselib/db/AppDatabase$f1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->w1()Lcom/transsion/baselib/db/video/ShortTVPlayDao;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iput v5, v1, Lcom/transsion/postdetail/shorttv/factory/ShortTvHistoryProvider$getHistory$1;->label:I

    .line 79
    .line 80
    move-object/from16 v4, p1

    .line 81
    .line 82
    invoke-interface {v0, v4, v1}, Lcom/transsion/baselib/db/video/ShortTVPlayDao;->e(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    if-ne v0, v3, :cond_3

    .line 87
    .line 88
    return-object v3

    .line 89
    :cond_3
    :goto_1
    check-cast v0, Lcom/transsion/baselib/db/video/ShortTVPlayBean;

    .line 90
    .line 91
    if-nez v0, :cond_4

    .line 92
    .line 93
    const/4 v0, 0x0

    .line 94
    return-object v0

    .line 95
    :cond_4
    new-instance v1, Lcom/transsion/shorttv/bean/ShortTvInnerPlayBean;

    .line 96
    .line 97
    move-object v3, v1

    .line 98
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/ShortTVPlayBean;->getSubjectId()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/ShortTVPlayBean;->getId()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/ShortTVPlayBean;->getEp()I

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/ShortTVPlayBean;->getSe()I

    .line 111
    .line 112
    .line 113
    move-result v7

    .line 114
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/ShortTVPlayBean;->getTotalEp()I

    .line 115
    .line 116
    .line 117
    move-result v8

    .line 118
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/ShortTVPlayBean;->getProgress()J

    .line 119
    .line 120
    .line 121
    move-result-wide v9

    .line 122
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/ShortTVPlayBean;->getTitle()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v11

    .line 126
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/ShortTVPlayBean;->getDescription()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v12

    .line 130
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/ShortTVPlayBean;->getCoverUrl()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v13

    .line 134
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/ShortTVPlayBean;->getThumbnail()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v14

    .line 138
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/ShortTVPlayBean;->getVideoId()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v15

    .line 142
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/ShortTVPlayBean;->getVideoUrl()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v16

    .line 146
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/ShortTVPlayBean;->getTimeStamp()J

    .line 147
    .line 148
    .line 149
    move-result-wide v17

    .line 150
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/ShortTVPlayBean;->getSubtitleSelectId()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v19

    .line 154
    invoke-direct/range {v3 .. v19}, Lcom/transsion/shorttv/bean/ShortTvInnerPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;IIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 155
    .line 156
    .line 157
    return-object v1
.end method
