.class public final Lho/e;
.super Landroidx/recyclerview/widget/RecyclerView$r;
.source "source.java"

# interfaces
.implements Lho/a;
.implements Lcom/transsion/player/orplayer/e;
.implements Lcom/transsion/baselib/report/k$a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroidx/fragment/app/Fragment;

.field private final c:Landroidx/recyclerview/widget/RecyclerView;

.field private final d:Lcom/transsion/postdetail/ui/adapter/f;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Z

.field private h:Ljava/lang/Boolean;

.field private final i:I

.field private final j:I

.field private k:Lcom/transsion/player/orplayer/f;

.field private l:Lcom/transsion/postdetail/video/PostFeedVideoView;

.field private m:Lcom/transsion/postdetail/layer/b;

.field private n:I

.field private o:Ljava/lang/String;

.field private p:I

.field private q:J

.field private r:Z

.field private s:Lwn/b0;

.field private t:I

.field private u:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/postdetail/ui/adapter/f;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "fragment"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "pageName"

    .line 12
    .line 13
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "subpageName"

    .line 17
    .line 18
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$r;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lho/e;->a:Landroid/content/Context;

    .line 25
    .line 26
    iput-object p2, p0, Lho/e;->b:Landroidx/fragment/app/Fragment;

    .line 27
    .line 28
    iput-object p3, p0, Lho/e;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 29
    .line 30
    iput-object p4, p0, Lho/e;->d:Lcom/transsion/postdetail/ui/adapter/f;

    .line 31
    .line 32
    iput-object p5, p0, Lho/e;->e:Ljava/lang/String;

    .line 33
    .line 34
    iput-object p6, p0, Lho/e;->f:Ljava/lang/String;

    .line 35
    .line 36
    iput-boolean p7, p0, Lho/e;->g:Z

    .line 37
    .line 38
    const/16 p1, 0x52

    .line 39
    .line 40
    invoke-static {p1}, Llj/a;->b(I)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    iput p1, p0, Lho/e;->i:I

    .line 45
    .line 46
    const/16 p1, 0x38

    .line 47
    .line 48
    invoke-static {p1}, Llj/a;->b(I)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    iput p1, p0, Lho/e;->j:I

    .line 53
    .line 54
    const/4 p1, -0x1

    .line 55
    iput p1, p0, Lho/e;->n:I

    .line 56
    .line 57
    invoke-static {}, Lcom/blankj/utilcode/util/y;->a()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    iput p1, p0, Lho/e;->p:I

    .line 62
    .line 63
    const/4 p1, 0x1

    .line 64
    iput-boolean p1, p0, Lho/e;->r:Z

    .line 65
    .line 66
    const/high16 p1, 0x3f800000    # 1.0f

    .line 67
    .line 68
    iput p1, p0, Lho/e;->u:F

    .line 69
    .line 70
    if-eqz p3, :cond_0

    .line 71
    .line 72
    invoke-virtual {p3, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    .line 73
    .line 74
    .line 75
    :cond_0
    sget-object p1, Lcom/transsion/baselib/report/k;->a:Lcom/transsion/baselib/report/k;

    .line 76
    .line 77
    invoke-virtual {p1, p0}, Lcom/transsion/baselib/report/k;->g(Lcom/transsion/baselib/report/k$a;)Z

    .line 78
    .line 79
    .line 80
    invoke-direct {p0}, Lho/e;->o()V

    .line 81
    .line 82
    .line 83
    if-eqz p3, :cond_1

    .line 84
    .line 85
    new-instance p1, Lho/b;

    .line 86
    .line 87
    invoke-direct {p1, p0}, Lho/b;-><init>(Lho/e;)V

    .line 88
    .line 89
    .line 90
    const-wide/16 p4, 0x1f4

    .line 91
    .line 92
    invoke-virtual {p3, p1, p4, p5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 93
    .line 94
    .line 95
    :cond_1
    return-void
.end method

.method public static synthetic d(Lho/e;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lho/e;->g(Lho/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lho/e;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lho/e;->l(Lho/e;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Lho/e;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lho/e;->k(Lho/e;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final g(Lho/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lho/e;->h()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final h()V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lho/e;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    instance-of v3, v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 14
    .line 15
    if-eqz v3, :cond_1

    .line 16
    .line 17
    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    const/4 v1, 0x0

    .line 21
    :goto_1
    if-nez v1, :cond_2

    .line 22
    .line 23
    return-void

    .line 24
    :cond_2
    sget-object v3, Lyg/l;->a:Lyg/l;

    .line 25
    .line 26
    invoke-virtual {v3}, Lyg/l;->e()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_3

    .line 31
    .line 32
    return-void

    .line 33
    :cond_3
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    iget v5, v0, Lho/e;->t:I

    .line 42
    .line 43
    if-lez v5, :cond_4

    .line 44
    .line 45
    invoke-static {v4, v3}, Lkotlin/ranges/RangesKt;->o(II)Lkotlin/ranges/IntProgression;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    goto :goto_2

    .line 50
    :cond_4
    new-instance v5, Lkotlin/ranges/IntRange;

    .line 51
    .line 52
    invoke-direct {v5, v3, v4}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 53
    .line 54
    .line 55
    move-object v3, v5

    .line 56
    :goto_2
    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->f()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->i()I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->l()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-lez v3, :cond_5

    .line 69
    .line 70
    if-le v4, v5, :cond_6

    .line 71
    .line 72
    :cond_5
    if-gez v3, :cond_10

    .line 73
    .line 74
    if-gt v5, v4, :cond_10

    .line 75
    .line 76
    :cond_6
    :goto_3
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    if-nez v6, :cond_7

    .line 81
    .line 82
    goto/16 :goto_6

    .line 83
    .line 84
    :cond_7
    new-instance v7, Landroid/graphics/Rect;

    .line 85
    .line 86
    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v6, v7}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 90
    .line 91
    .line 92
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    iget v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 97
    .line 98
    div-int/lit8 v9, v6, 0x2

    .line 99
    .line 100
    sub-int/2addr v8, v9

    .line 101
    iget v9, v7, Landroid/graphics/Rect;->top:I

    .line 102
    .line 103
    invoke-static {v8, v9}, Lkotlin/ranges/RangesKt;->e(II)I

    .line 104
    .line 105
    .line 106
    move-result v8

    .line 107
    iget v9, v0, Lho/e;->p:I

    .line 108
    .line 109
    iget v10, v0, Lho/e;->i:I

    .line 110
    .line 111
    sub-int/2addr v9, v10

    .line 112
    div-int/lit8 v9, v9, 0x2

    .line 113
    .line 114
    const/16 v10, 0xc8

    .line 115
    .line 116
    invoke-static {v10}, Llj/a;->b(I)I

    .line 117
    .line 118
    .line 119
    move-result v10

    .line 120
    sub-int v10, v9, v10

    .line 121
    .line 122
    const/16 v11, 0xfa

    .line 123
    .line 124
    invoke-static {v11}, Llj/a;->b(I)I

    .line 125
    .line 126
    .line 127
    move-result v11

    .line 128
    add-int/2addr v11, v9

    .line 129
    iget-object v12, v0, Lho/e;->d:Lcom/transsion/postdetail/ui/adapter/f;

    .line 130
    .line 131
    if-eqz v12, :cond_8

    .line 132
    .line 133
    invoke-virtual {v12}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 134
    .line 135
    .line 136
    move-result-object v12

    .line 137
    if-eqz v12, :cond_8

    .line 138
    .line 139
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 140
    .line 141
    .line 142
    move-result v12

    .line 143
    goto :goto_4

    .line 144
    :cond_8
    const/4 v12, 0x0

    .line 145
    :goto_4
    if-lt v4, v12, :cond_9

    .line 146
    .line 147
    goto/16 :goto_7

    .line 148
    .line 149
    :cond_9
    iget-object v12, v0, Lho/e;->d:Lcom/transsion/postdetail/ui/adapter/f;

    .line 150
    .line 151
    if-eqz v12, :cond_f

    .line 152
    .line 153
    invoke-virtual {v12, v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v12

    .line 157
    check-cast v12, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 158
    .line 159
    if-nez v12, :cond_a

    .line 160
    .line 161
    goto/16 :goto_6

    .line 162
    .line 163
    :cond_a
    iget-object v13, v0, Lho/e;->o:Ljava/lang/String;

    .line 164
    .line 165
    invoke-virtual {v12}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v14

    .line 169
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v13

    .line 173
    if-eqz v13, :cond_b

    .line 174
    .line 175
    sget-object v14, Lwf/a;->a:Lwf/a$a;

    .line 176
    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .line 181
    .line 182
    const-string v2, "triggerVideoPlay position:"

    .line 183
    .line 184
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    const-string v2, " same ~ return"

    .line 191
    .line 192
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v16

    .line 199
    const/16 v18, 0x4

    .line 200
    .line 201
    const/16 v19, 0x0

    .line 202
    .line 203
    const-string v15, "PostFeedVideo"

    .line 204
    .line 205
    const/16 v17, 0x0

    .line 206
    .line 207
    invoke-static/range {v14 .. v19}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    return-void

    .line 211
    :cond_b
    invoke-virtual {v12}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isVideo()Z

    .line 212
    .line 213
    .line 214
    move-result v13

    .line 215
    if-nez v13, :cond_c

    .line 216
    .line 217
    goto/16 :goto_6

    .line 218
    .line 219
    :cond_c
    iget-object v13, v0, Lho/e;->d:Lcom/transsion/postdetail/ui/adapter/f;

    .line 220
    .line 221
    sget v14, Lcom/transsion/postdetail/R$id;->layout_content_video:I

    .line 222
    .line 223
    invoke-virtual {v13, v4, v14}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->p0(II)Landroid/view/View;

    .line 224
    .line 225
    .line 226
    move-result-object v13

    .line 227
    instance-of v14, v13, Landroid/widget/FrameLayout;

    .line 228
    .line 229
    if-eqz v14, :cond_d

    .line 230
    .line 231
    check-cast v13, Landroid/widget/FrameLayout;

    .line 232
    .line 233
    goto :goto_5

    .line 234
    :cond_d
    const/4 v13, 0x0

    .line 235
    :goto_5
    if-nez v13, :cond_e

    .line 236
    .line 237
    sget-object v14, Lwf/a;->a:Lwf/a$a;

    .line 238
    .line 239
    const/16 v18, 0x4

    .line 240
    .line 241
    const/16 v19, 0x0

    .line 242
    .line 243
    const-string v15, "PostFeedVideo"

    .line 244
    .line 245
    const-string v16, "triggerVideoPlay itemVideoContainer is null"

    .line 246
    .line 247
    const/16 v17, 0x0

    .line 248
    .line 249
    invoke-static/range {v14 .. v19}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    goto :goto_6

    .line 253
    :cond_e
    sget-object v20, Lwf/a;->a:Lwf/a$a;

    .line 254
    .line 255
    iget v14, v7, Landroid/graphics/Rect;->top:I

    .line 256
    .line 257
    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    .line 258
    .line 259
    new-instance v15, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .line 263
    .line 264
    const-string v2, "\n                checkActiveItemPosition position:"

    .line 265
    .line 266
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    const-string v2, ",  \n                    top:"

    .line 273
    .line 274
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    const-string v2, ", bottom:"

    .line 281
    .line 282
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    const-string v2, "\n                    screenCenterTop\uff1a"

    .line 289
    .line 290
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    const-string v2, "   screenCenterBottom\uff1a"

    .line 297
    .line 298
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    const-string v2, "\n                    itemHeight:"

    .line 305
    .line 306
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    const-string v2, " viewCenter:"

    .line 313
    .line 314
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    const-string v2, ", screenCenter:"

    .line 321
    .line 322
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    const-string v2, "\n            "

    .line 329
    .line 330
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v2

    .line 337
    invoke-static {v2}, Lkotlin/text/StringsKt;->n(Ljava/lang/String;)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v2

    .line 341
    filled-new-array {v2}, [Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v22

    .line 345
    const/16 v24, 0x4

    .line 346
    .line 347
    const/16 v25, 0x0

    .line 348
    .line 349
    const-string v21, "PostFeedVideo"

    .line 350
    .line 351
    const/16 v23, 0x0

    .line 352
    .line 353
    invoke-static/range {v20 .. v25}, Lwf/a$a;->r(Lwf/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    .line 354
    .line 355
    .line 356
    sub-int/2addr v9, v8

    .line 357
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    .line 358
    .line 359
    .line 360
    move-result v2

    .line 361
    const/16 v6, 0xdc

    .line 362
    .line 363
    invoke-static {v6}, Llj/a;->b(I)I

    .line 364
    .line 365
    .line 366
    move-result v6

    .line 367
    if-ge v2, v6, :cond_f

    .line 368
    .line 369
    invoke-direct {v0, v4, v12, v13}, Lho/e;->p(ILcom/transsion/moviedetailapi/bean/PostSubjectItem;Landroid/widget/FrameLayout;)V

    .line 370
    .line 371
    .line 372
    goto :goto_7

    .line 373
    :cond_f
    :goto_6
    if-eq v4, v5, :cond_10

    .line 374
    .line 375
    add-int/2addr v4, v3

    .line 376
    goto/16 :goto_3

    .line 377
    .line 378
    :cond_10
    :goto_7
    return-void
.end method

.method private final i(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    if-nez p1, :cond_1

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-gt v0, v1, :cond_4

    .line 25
    .line 26
    :goto_1
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-nez v2, :cond_2

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_2
    new-instance v3, Landroid/graphics/Rect;

    .line 34
    .line 35
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 39
    .line 40
    .line 41
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 42
    .line 43
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 44
    .line 45
    sub-int/2addr v4, v3

    .line 46
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    int-to-float v3, v4

    .line 51
    int-to-float v2, v2

    .line 52
    const/high16 v4, 0x3f000000    # 0.5f

    .line 53
    .line 54
    mul-float/2addr v2, v4

    .line 55
    cmpg-float v2, v3, v2

    .line 56
    .line 57
    if-gtz v2, :cond_3

    .line 58
    .line 59
    invoke-direct {p0, v0}, Lho/e;->m(I)V

    .line 60
    .line 61
    .line 62
    :cond_3
    :goto_2
    if-eq v0, v1, :cond_4

    .line 63
    .line 64
    add-int/lit8 v0, v0, 0x1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_4
    return-void
.end method

.method private final j(Landroid/content/Context;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lho/e;->k:Lcom/transsion/player/orplayer/f;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Lcom/transsion/postdetail/video/PostFeedVideoView;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Lcom/transsion/postdetail/video/PostFeedVideoView;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iget-boolean p1, p0, Lho/e;->r:Z

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/video/PostFeedVideoView;->updateMute(Z)V

    .line 13
    .line 14
    .line 15
    new-instance p1, Lho/c;

    .line 16
    .line 17
    invoke-direct {p1, p0}, Lho/c;-><init>(Lho/e;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/video/PostFeedVideoView;->setMuteClickCallback(Lkotlin/jvm/functions/Function1;)V

    .line 21
    .line 22
    .line 23
    new-instance p1, Lho/d;

    .line 24
    .line 25
    invoke-direct {p1, p0}, Lho/d;-><init>(Lho/e;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/video/PostFeedVideoView;->setRemovePlayerCallback(Lkotlin/jvm/functions/Function0;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lho/e;->l:Lcom/transsion/postdetail/video/PostFeedVideoView;

    .line 32
    .line 33
    sget-object p1, Lon/e0;->a:Lon/e0;

    .line 34
    .line 35
    invoke-virtual {p1}, Lon/e0;->m()Lcom/transsion/player/orplayer/f;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 40
    .line 41
    const/4 v4, 0x4

    .line 42
    const/4 v5, 0x0

    .line 43
    const-string v1, "PostFeedVideo"

    .line 44
    .line 45
    const-string v2, "createPlayer----"

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {p1, p0}, Lcom/transsion/player/orplayer/f;->addPlayerListener(Lcom/transsion/player/orplayer/e;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lho/e;->l:Lcom/transsion/postdetail/video/PostFeedVideoView;

    .line 55
    .line 56
    if-eqz v0, :cond_0

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/transsion/postdetail/video/PostFeedVideoView;->getSurfaceView()Landroid/view/SurfaceView;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    const/4 v0, 0x0

    .line 64
    :goto_0
    invoke-interface {p1, v0}, Lcom/transsion/player/orplayer/f;->setSurfaceView(Landroid/view/SurfaceView;)V

    .line 65
    .line 66
    .line 67
    sget-object v0, Lcom/transsion/player/enum/ScaleMode;->SCALE_ASPECT_FILL:Lcom/transsion/player/enum/ScaleMode;

    .line 68
    .line 69
    invoke-interface {p1, v0}, Lcom/transsion/player/orplayer/f;->setScaleMode(Lcom/transsion/player/enum/ScaleMode;)V

    .line 70
    .line 71
    .line 72
    iput-object p1, p0, Lho/e;->k:Lcom/transsion/player/orplayer/f;

    .line 73
    .line 74
    :cond_1
    iget-object p1, p0, Lho/e;->m:Lcom/transsion/postdetail/layer/b;

    .line 75
    .line 76
    if-nez p1, :cond_2

    .line 77
    .line 78
    new-instance p1, Lcom/transsion/postdetail/layer/b;

    .line 79
    .line 80
    invoke-direct {p1}, Lcom/transsion/postdetail/layer/b;-><init>()V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lho/e;->k:Lcom/transsion/player/orplayer/f;

    .line 84
    .line 85
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v0}, Lcom/transsion/postdetail/layer/b;->v(Lcom/transsion/player/orplayer/f;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lho/e;->e:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Lcom/transsion/postdetail/layer/b;->u(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lho/e;->f:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Lcom/transsion/postdetail/layer/b;->z(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iput-object p1, p0, Lho/e;->m:Lcom/transsion/postdetail/layer/b;

    .line 102
    .line 103
    :cond_2
    return-void
.end method

.method private static final k(Lho/e;Z)Lkotlin/Unit;
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "volume click isMute:"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/4 v4, 0x4

    .line 21
    const/4 v5, 0x0

    .line 22
    const-string v1, "PostFeedVideo"

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iput-boolean p1, p0, Lho/e;->r:Z

    .line 29
    .line 30
    iget-object v0, p0, Lho/e;->k:Lcom/transsion/player/orplayer/f;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    const/4 p0, 0x0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget p0, p0, Lho/e;->u:F

    .line 39
    .line 40
    :goto_0
    invoke-interface {v0, p0}, Lcom/transsion/player/orplayer/f;->setVolume(F)V

    .line 41
    .line 42
    .line 43
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 44
    .line 45
    return-object p0
.end method

.method private static final l(Lho/e;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0}, Lho/e;->n()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private final m(I)V
    .locals 10

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 2
    .line 3
    iget-object v0, p0, Lho/e;->l:Lcom/transsion/postdetail/video/PostFeedVideoView;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto/16 :goto_3

    .line 15
    .line 16
    :cond_0
    move-object v0, v1

    .line 17
    :goto_0
    if-nez v0, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    iget v0, p0, Lho/e;->n:I

    .line 21
    .line 22
    if-eq v0, p1, :cond_2

    .line 23
    .line 24
    return-void

    .line 25
    :cond_2
    iget-object v0, p0, Lho/e;->d:Lcom/transsion/postdetail/ui/adapter/f;

    .line 26
    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    goto :goto_1

    .line 40
    :cond_3
    const/4 v0, 0x0

    .line 41
    :goto_1
    if-lt p1, v0, :cond_4

    .line 42
    .line 43
    return-void

    .line 44
    :cond_4
    iget-object v0, p0, Lho/e;->d:Lcom/transsion/postdetail/ui/adapter/f;

    .line 45
    .line 46
    if-eqz v0, :cond_5

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_5
    move-object v0, v1

    .line 56
    :goto_2
    if-eqz v0, :cond_7

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isVideo()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    const/4 v3, 0x1

    .line 63
    if-ne v2, v3, :cond_7

    .line 64
    .line 65
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 66
    .line 67
    const-string v5, "PostFeedVideo"

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    if-eqz v2, :cond_6

    .line 74
    .line 75
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Group;->getName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    :cond_6
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getContent()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string v3, "position\uff1a"

    .line 89
    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string p1, " --\u5df2\u9690\u85cf\u8d85\u8fc750%, \u79fb\u9664\u64ad\u653e\u5668, "

    .line 97
    .line 98
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string p1, ", "

    .line 105
    .line 106
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    const/4 v8, 0x4

    .line 117
    const/4 v9, 0x0

    .line 118
    const/4 v7, 0x0

    .line 119
    invoke-static/range {v4 .. v9}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    invoke-direct {p0}, Lho/e;->n()V

    .line 123
    .line 124
    .line 125
    :cond_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 126
    .line 127
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    .line 129
    .line 130
    goto :goto_4

    .line 131
    :goto_3
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 132
    .line 133
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    :goto_4
    return-void
.end method

.method private final n()V
    .locals 4

    .line 1
    iget-object v0, p0, Lho/e;->m:Lcom/transsion/postdetail/layer/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-static {v0, v2, v3, v1}, Lcom/transsion/postdetail/layer/b;->e(Lcom/transsion/postdetail/layer/b;ZILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lho/e;->s:Lwn/b0;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, v0, Lwn/b0;->d:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lho/e;->s:Lwn/b0;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    iget-object v0, v0, Lwn/b0;->f:Lcom/noober/background/view/BLTextView;

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    :cond_2
    iget-object v0, p0, Lho/e;->s:Lwn/b0;

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    iget-object v0, v0, Lwn/b0;->e:Landroidx/appcompat/widget/AppCompatImageView;

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 42
    .line 43
    .line 44
    :cond_3
    iput-object v1, p0, Lho/e;->s:Lwn/b0;

    .line 45
    .line 46
    iget-object v0, p0, Lho/e;->l:Lcom/transsion/postdetail/video/PostFeedVideoView;

    .line 47
    .line 48
    if-eqz v0, :cond_4

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    goto :goto_0

    .line 55
    :cond_4
    move-object v0, v1

    .line 56
    :goto_0
    instance-of v2, v0, Landroid/view/ViewGroup;

    .line 57
    .line 58
    if-eqz v2, :cond_5

    .line 59
    .line 60
    check-cast v0, Landroid/view/ViewGroup;

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_5
    move-object v0, v1

    .line 64
    :goto_1
    if-eqz v0, :cond_6

    .line 65
    .line 66
    iget-object v2, p0, Lho/e;->l:Lcom/transsion/postdetail/video/PostFeedVideoView;

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 69
    .line 70
    .line 71
    :cond_6
    iget-object v0, p0, Lho/e;->k:Lcom/transsion/player/orplayer/f;

    .line 72
    .line 73
    if-eqz v0, :cond_7

    .line 74
    .line 75
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->stop()V

    .line 76
    .line 77
    .line 78
    :cond_7
    iget-object v0, p0, Lho/e;->k:Lcom/transsion/player/orplayer/f;

    .line 79
    .line 80
    if-eqz v0, :cond_8

    .line 81
    .line 82
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->reset()V

    .line 83
    .line 84
    .line 85
    :cond_8
    iget-object v0, p0, Lho/e;->k:Lcom/transsion/player/orplayer/f;

    .line 86
    .line 87
    if-eqz v0, :cond_9

    .line 88
    .line 89
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->clearScreen()V

    .line 90
    .line 91
    .line 92
    :cond_9
    const/4 v0, -0x1

    .line 93
    iput v0, p0, Lho/e;->n:I

    .line 94
    .line 95
    iput-object v1, p0, Lho/e;->o:Ljava/lang/String;

    .line 96
    .line 97
    sget-object v0, Lio/d;->a:Lio/d;

    .line 98
    .line 99
    invoke-virtual {v0}, Lio/d;->a()V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method private final o()V
    .locals 9

    .line 1
    iget-object v0, p0, Lho/e;->h:Ljava/lang/Boolean;

    .line 2
    .line 3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-nez v0, :cond_4

    .line 12
    .line 13
    sget-object v0, Lcm/f;->c:Lcm/f$a;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcm/f$a;->a()Lcm/f;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v3, "sa_post_video_auto_play"

    .line 20
    .line 21
    invoke-virtual {v0, v3, v2}, Lcm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move-object v0, v1

    .line 33
    :goto_0
    if-eqz v0, :cond_3

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_1

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_1
    invoke-static {v0}, Lkotlin/text/StringsKt;->m1(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    const/4 v0, 0x0

    .line 54
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    goto :goto_3

    .line 59
    :cond_3
    :goto_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 60
    .line 61
    :goto_3
    iput-object v0, p0, Lho/e;->h:Ljava/lang/Boolean;

    .line 62
    .line 63
    :cond_4
    sget-object v0, Lcm/f;->c:Lcm/f$a;

    .line 64
    .line 65
    invoke-virtual {v0}, Lcm/f$a;->a()Lcm/f;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const-string v3, "room_home_video_play_mute"

    .line 70
    .line 71
    invoke-virtual {v0, v3, v2}, Lcm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    if-eqz v0, :cond_5

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    :cond_5
    if-eqz v1, :cond_7

    .line 82
    .line 83
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-nez v0, :cond_6

    .line 88
    .line 89
    goto :goto_4

    .line 90
    :cond_6
    invoke-static {v1}, Lkotlin/text/StringsKt;->m1(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    if-eqz v0, :cond_7

    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    :cond_7
    :goto_4
    iput-boolean v2, p0, Lho/e;->r:Z

    .line 101
    .line 102
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 103
    .line 104
    iget-object v0, p0, Lho/e;->h:Ljava/lang/Boolean;

    .line 105
    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    const-string v4, "----------------initConfig, isOpen:"

    .line 112
    .line 113
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v0, "+------+isVideoMute:"

    .line 120
    .line 121
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    const/4 v7, 0x4

    .line 132
    const/4 v8, 0x0

    .line 133
    const-string v4, "PostFeedVideo"

    .line 134
    .line 135
    const/4 v6, 0x0

    .line 136
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    return-void
.end method

.method private final p(ILcom/transsion/moviedetailapi/bean/PostSubjectItem;Landroid/widget/FrameLayout;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 6
    .line 7
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const/4 v8, 0x0

    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Group;->getName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v3, v8

    .line 20
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getContent()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    new-instance v5, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v6, "-------> triggerVideoPlay \u64ad\u653e\u89c6\u9891:"

    .line 30
    .line 31
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v6, ", roomName:"

    .line 38
    .line 39
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v3, ", "

    .line 46
    .line 47
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    filled-new-array {v3}, [Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    const/4 v6, 0x4

    .line 62
    const/4 v7, 0x0

    .line 63
    const-string v3, "PostFeedVideo"

    .line 64
    .line 65
    const/4 v5, 0x0

    .line 66
    invoke-static/range {v2 .. v7}, Lwf/a$a;->r(Lwf/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    invoke-direct/range {p0 .. p0}, Lho/e;->n()V

    .line 70
    .line 71
    .line 72
    iget-object v2, v0, Lho/e;->a:Landroid/content/Context;

    .line 73
    .line 74
    invoke-direct {v0, v2}, Lho/e;->j(Landroid/content/Context;)V

    .line 75
    .line 76
    .line 77
    invoke-static/range {p3 .. p3}, Lwn/b0;->a(Landroid/view/View;)Lwn/b0;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    iput-object v2, v0, Lho/e;->s:Lwn/b0;

    .line 82
    .line 83
    if-eqz v2, :cond_1

    .line 84
    .line 85
    iget-object v2, v2, Lwn/b0;->b:Landroid/widget/FrameLayout;

    .line 86
    .line 87
    if-eqz v2, :cond_1

    .line 88
    .line 89
    iget-object v3, v0, Lho/e;->l:Lcom/transsion/postdetail/video/PostFeedVideoView;

    .line 90
    .line 91
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 92
    .line 93
    .line 94
    :cond_1
    iget-object v2, v0, Lho/e;->s:Lwn/b0;

    .line 95
    .line 96
    if-eqz v2, :cond_2

    .line 97
    .line 98
    iget-object v2, v2, Lwn/b0;->e:Landroidx/appcompat/widget/AppCompatImageView;

    .line 99
    .line 100
    if-eqz v2, :cond_2

    .line 101
    .line 102
    invoke-static {v2}, Luf/c;->g(Landroid/view/View;)V

    .line 103
    .line 104
    .line 105
    :cond_2
    iput v1, v0, Lho/e;->n:I

    .line 106
    .line 107
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    iput-object v1, v0, Lho/e;->o:Ljava/lang/String;

    .line 112
    .line 113
    iget-object v1, v0, Lho/e;->m:Lcom/transsion/postdetail/layer/b;

    .line 114
    .line 115
    if-eqz v1, :cond_3

    .line 116
    .line 117
    invoke-virtual {v1}, Lcom/transsion/postdetail/layer/b;->g()V

    .line 118
    .line 119
    .line 120
    :cond_3
    iget-object v1, v0, Lho/e;->m:Lcom/transsion/postdetail/layer/b;

    .line 121
    .line 122
    const/4 v2, 0x0

    .line 123
    if-eqz v1, :cond_4

    .line 124
    .line 125
    invoke-virtual {v1, v2, v2}, Lcom/transsion/postdetail/layer/b;->a(II)V

    .line 126
    .line 127
    .line 128
    :cond_4
    iget-object v1, v0, Lho/e;->m:Lcom/transsion/postdetail/layer/b;

    .line 129
    .line 130
    if-eqz v1, :cond_5

    .line 131
    .line 132
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    move-object/from16 v4, p2

    .line 137
    .line 138
    invoke-virtual {v1, v3, v4}, Lcom/transsion/postdetail/layer/b;->x(Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_5
    move-object/from16 v4, p2

    .line 143
    .line 144
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    if-eqz v1, :cond_e

    .line 149
    .line 150
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Media;->getVideo()Ljava/util/List;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    if-eqz v1, :cond_e

    .line 155
    .line 156
    check-cast v1, Ljava/lang/Iterable;

    .line 157
    .line 158
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    if-eqz v3, :cond_9

    .line 167
    .line 168
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    move-object v4, v3

    .line 173
    check-cast v4, Lcom/transsion/moviedetailapi/bean/Video;

    .line 174
    .line 175
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Video;->getUrl()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    if-eqz v4, :cond_8

    .line 180
    .line 181
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 182
    .line 183
    .line 184
    move-result v4

    .line 185
    if-nez v4, :cond_7

    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_7
    move v4, v2

    .line 189
    goto :goto_3

    .line 190
    :cond_8
    :goto_2
    const/4 v4, 0x1

    .line 191
    :goto_3
    if-nez v4, :cond_6

    .line 192
    .line 193
    move-object v8, v3

    .line 194
    :cond_9
    check-cast v8, Lcom/transsion/moviedetailapi/bean/Video;

    .line 195
    .line 196
    if-eqz v8, :cond_e

    .line 197
    .line 198
    invoke-virtual {v8}, Lcom/transsion/moviedetailapi/bean/Video;->getDuration()Ljava/lang/Integer;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    if-eqz v1, :cond_a

    .line 203
    .line 204
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    iget-object v2, v0, Lho/e;->l:Lcom/transsion/postdetail/video/PostFeedVideoView;

    .line 209
    .line 210
    if-eqz v2, :cond_a

    .line 211
    .line 212
    int-to-long v3, v1

    .line 213
    const-wide/16 v5, 0x3e8

    .line 214
    .line 215
    mul-long/2addr v3, v5

    .line 216
    invoke-virtual {v2, v3, v4}, Lcom/transsion/postdetail/video/PostFeedVideoView;->setDurationTime(J)V

    .line 217
    .line 218
    .line 219
    :cond_a
    sget-object v9, Lwf/a;->a:Lwf/a$a;

    .line 220
    .line 221
    iget-boolean v1, v0, Lho/e;->r:Z

    .line 222
    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    .line 227
    .line 228
    const-string v3, "triggerVideoPlay updateMute:"

    .line 229
    .line 230
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v11

    .line 240
    const/4 v13, 0x4

    .line 241
    const/4 v14, 0x0

    .line 242
    const-string v10, "PostFeedVideo"

    .line 243
    .line 244
    const/4 v12, 0x0

    .line 245
    invoke-static/range {v9 .. v14}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    iget-object v1, v0, Lho/e;->l:Lcom/transsion/postdetail/video/PostFeedVideoView;

    .line 249
    .line 250
    if-eqz v1, :cond_b

    .line 251
    .line 252
    iget-boolean v2, v0, Lho/e;->r:Z

    .line 253
    .line 254
    invoke-virtual {v1, v2}, Lcom/transsion/postdetail/video/PostFeedVideoView;->updateMute(Z)V

    .line 255
    .line 256
    .line 257
    :cond_b
    invoke-virtual {v8}, Lcom/transsion/moviedetailapi/bean/Video;->getUrl()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v11

    .line 261
    if-eqz v11, :cond_e

    .line 262
    .line 263
    iget-object v1, v0, Lho/e;->m:Lcom/transsion/postdetail/layer/b;

    .line 264
    .line 265
    if-eqz v1, :cond_c

    .line 266
    .line 267
    invoke-virtual {v1, v11}, Lcom/transsion/postdetail/layer/b;->A(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    :cond_c
    iget-object v1, v0, Lho/e;->k:Lcom/transsion/player/orplayer/f;

    .line 271
    .line 272
    if-eqz v1, :cond_d

    .line 273
    .line 274
    new-instance v2, Lgn/e;

    .line 275
    .line 276
    const/16 v15, 0x1c

    .line 277
    .line 278
    const/16 v16, 0x0

    .line 279
    .line 280
    const/4 v12, 0x0

    .line 281
    const/4 v13, 0x0

    .line 282
    const/4 v14, 0x0

    .line 283
    move-object v9, v2

    .line 284
    move-object v10, v11

    .line 285
    invoke-direct/range {v9 .. v16}, Lgn/e;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/transsion/player/enum/PlayMimeType;Lcom/transsion/player/mediasession/MediaItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 286
    .line 287
    .line 288
    invoke-interface {v1, v2}, Lcom/transsion/player/orplayer/f;->setDataSource(Lgn/e;)V

    .line 289
    .line 290
    .line 291
    :cond_d
    iget-object v1, v0, Lho/e;->k:Lcom/transsion/player/orplayer/f;

    .line 292
    .line 293
    if-eqz v1, :cond_e

    .line 294
    .line 295
    invoke-interface {v1}, Lcom/transsion/player/orplayer/f;->prepare()V

    .line 296
    .line 297
    .line 298
    :cond_e
    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "PostFeedVideo"

    .line 6
    .line 7
    const-string v2, "onSetFirstData--checkActiveItemPosition"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lho/e;->h()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public b()V
    .locals 10

    .line 1
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "PostFeedVideo"

    .line 6
    .line 7
    const-string v2, "onPagePause--"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    move-object v0, v6

    .line 11
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lho/e;->k:Lcom/transsion/player/orplayer/f;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->pause()V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v7, p0, Lho/e;->o:Ljava/lang/String;

    .line 22
    .line 23
    if-eqz v7, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lho/e;->k:Lcom/transsion/player/orplayer/f;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->getCurrentPosition()J

    .line 30
    .line 31
    .line 32
    move-result-wide v8

    .line 33
    const-wide/16 v0, 0x0

    .line 34
    .line 35
    cmp-long v0, v8, v0

    .line 36
    .line 37
    if-lez v0, :cond_1

    .line 38
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v1, "==feedvideo savePlayProgress:"

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    const/4 v4, 0x4

    .line 57
    const/4 v5, 0x0

    .line 58
    const-string v1, "PostFeedVideo"

    .line 59
    .line 60
    const/4 v3, 0x0

    .line 61
    move-object v0, v6

    .line 62
    invoke-static/range {v0 .. v5}, Lwf/a$a;->v(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    sget-object v0, Lio/d;->a:Lio/d;

    .line 66
    .line 67
    invoke-virtual {v0, v7, v8, v9}, Lio/d;->c(Ljava/lang/String;J)V

    .line 68
    .line 69
    .line 70
    :cond_1
    return-void
.end method

.method public c()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lho/e;->o()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lho/e;->o:Ljava/lang/String;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object v1, Lio/d;->a:Lio/d;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Lio/d;->b(Ljava/lang/String;)Ljava/lang/Long;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    const-wide/16 v2, 0x0

    .line 21
    .line 22
    cmp-long v2, v0, v2

    .line 23
    .line 24
    if-lez v2, :cond_0

    .line 25
    .line 26
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 27
    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v4, "==onPageResume seekTo:"

    .line 34
    .line 35
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    const/4 v7, 0x4

    .line 46
    const/4 v8, 0x0

    .line 47
    const-string v4, "PostFeedVideo"

    .line 48
    .line 49
    const/4 v6, 0x0

    .line 50
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget-object v2, p0, Lho/e;->k:Lcom/transsion/player/orplayer/f;

    .line 54
    .line 55
    if-eqz v2, :cond_0

    .line 56
    .line 57
    invoke-interface {v2, v0, v1}, Lcom/transsion/player/orplayer/f;->seekTo(J)V

    .line 58
    .line 59
    .line 60
    :cond_0
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 61
    .line 62
    const/4 v7, 0x4

    .line 63
    const/4 v8, 0x0

    .line 64
    const-string v4, "PostFeedVideo"

    .line 65
    .line 66
    const-string v5, "onPageResume play"

    .line 67
    .line 68
    const/4 v6, 0x0

    .line 69
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lho/e;->k:Lcom/transsion/player/orplayer/f;

    .line 73
    .line 74
    if-eqz v0, :cond_1

    .line 75
    .line 76
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->play()V

    .line 77
    .line 78
    .line 79
    :cond_1
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

.method public initPlayer()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/orplayer/e$a;->b(Lcom/transsion/player/orplayer/e;)V

    .line 2
    .line 3
    .line 4
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

.method public onBackgroundStatusChange(Z)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lho/e;->m:Lcom/transsion/postdetail/layer/b;

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p1, v0}, Lcom/transsion/postdetail/layer/b;->d(Z)V

    .line 10
    .line 11
    .line 12
    :cond_1
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
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->e(Lcom/transsion/player/orplayer/e;Lgn/e;)V

    .line 2
    .line 3
    .line 4
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
    .locals 0

    .line 1
    iget-object p1, p0, Lho/e;->m:Lcom/transsion/postdetail/layer/b;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/b;->h()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onLoadingEnd(Lgn/e;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lho/e;->m:Lcom/transsion/postdetail/layer/b;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/b;->i()V

    .line 6
    .line 7
    .line 8
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
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/orplayer/e$a;->o(Lcom/transsion/player/orplayer/e;)V

    .line 2
    .line 3
    .line 4
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

.method public onPageDestroy()V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "PostFeedVideo"

    .line 6
    .line 7
    const-string v2, "onPageDestroy"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lho/e;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lho/e;->k:Lcom/transsion/player/orplayer/f;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-interface {v0, p0}, Lcom/transsion/player/orplayer/f;->removePlayerListener(Lcom/transsion/player/orplayer/e;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Lho/e;->k:Lcom/transsion/player/orplayer/f;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->stop()V

    .line 32
    .line 33
    .line 34
    :cond_2
    iget-object v0, p0, Lho/e;->k:Lcom/transsion/player/orplayer/f;

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->reset()V

    .line 39
    .line 40
    .line 41
    :cond_3
    iget-object v0, p0, Lho/e;->k:Lcom/transsion/player/orplayer/f;

    .line 42
    .line 43
    if-eqz v0, :cond_4

    .line 44
    .line 45
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->release()V

    .line 46
    .line 47
    .line 48
    :cond_4
    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lho/e;->k:Lcom/transsion/player/orplayer/f;

    .line 50
    .line 51
    iget-object v1, p0, Lho/e;->l:Lcom/transsion/postdetail/video/PostFeedVideoView;

    .line 52
    .line 53
    if-eqz v1, :cond_5

    .line 54
    .line 55
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    goto :goto_0

    .line 60
    :cond_5
    move-object v1, v0

    .line 61
    :goto_0
    instance-of v2, v1, Landroid/view/ViewGroup;

    .line 62
    .line 63
    if-eqz v2, :cond_6

    .line 64
    .line 65
    check-cast v1, Landroid/view/ViewGroup;

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_6
    move-object v1, v0

    .line 69
    :goto_1
    if-eqz v1, :cond_7

    .line 70
    .line 71
    iget-object v2, p0, Lho/e;->l:Lcom/transsion/postdetail/video/PostFeedVideoView;

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 74
    .line 75
    .line 76
    :cond_7
    iput-object v0, p0, Lho/e;->l:Lcom/transsion/postdetail/video/PostFeedVideoView;

    .line 77
    .line 78
    sget-object v0, Lio/d;->a:Lio/d;

    .line 79
    .line 80
    invoke-virtual {v0}, Lio/d;->a()V

    .line 81
    .line 82
    .line 83
    sget-object v0, Lcom/transsion/baselib/report/k;->a:Lcom/transsion/baselib/report/k;

    .line 84
    .line 85
    invoke-virtual {v0, p0}, Lcom/transsion/baselib/report/k;->t(Lcom/transsion/baselib/report/k$a;)Z

    .line 86
    .line 87
    .line 88
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
    iget-object p2, p0, Lho/e;->m:Lcom/transsion/postdetail/layer/b;

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p2, p1}, Lcom/transsion/postdetail/layer/b;->k(Lcom/transsion/player/orplayer/PlayError;)V

    .line 11
    .line 12
    .line 13
    :cond_0
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
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget p1, p0, Lho/e;->n:I

    .line 4
    .line 5
    iget-boolean v1, p0, Lho/e;->r:Z

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v3, "----------onPrepare Position:"

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p1, "\uff0c isVideoMute\uff1a"

    .line 21
    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const/4 v4, 0x4

    .line 33
    const/4 v5, 0x0

    .line 34
    const-string v1, "PostFeedVideo"

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-static/range {v0 .. v5}, Lwf/a$a;->v(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lho/e;->k:Lcom/transsion/player/orplayer/f;

    .line 41
    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    invoke-interface {p1, v0}, Lcom/transsion/player/orplayer/f;->setLooping(Z)V

    .line 46
    .line 47
    .line 48
    :cond_0
    iget-object p1, p0, Lho/e;->k:Lcom/transsion/player/orplayer/f;

    .line 49
    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    sget-object v0, Lcom/transsion/player/enum/ScaleMode;->SCALE_ASPECT_FILL:Lcom/transsion/player/enum/ScaleMode;

    .line 53
    .line 54
    invoke-interface {p1, v0}, Lcom/transsion/player/orplayer/f;->setScaleMode(Lcom/transsion/player/enum/ScaleMode;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    iget-object p1, p0, Lho/e;->l:Lcom/transsion/postdetail/video/PostFeedVideoView;

    .line 58
    .line 59
    if-eqz p1, :cond_3

    .line 60
    .line 61
    iget-object v0, p0, Lho/e;->k:Lcom/transsion/player/orplayer/f;

    .line 62
    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->getDuration()J

    .line 66
    .line 67
    .line 68
    move-result-wide v0

    .line 69
    long-to-int v0, v0

    .line 70
    goto :goto_0

    .line 71
    :cond_2
    const/16 v0, 0x64

    .line 72
    .line 73
    :goto_0
    invoke-virtual {p1, v0}, Lcom/transsion/postdetail/video/PostFeedVideoView;->setProgressMax(I)V

    .line 74
    .line 75
    .line 76
    :cond_3
    iget-object p1, p0, Lho/e;->b:Landroidx/fragment/app/Fragment;

    .line 77
    .line 78
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isResumed()Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_4

    .line 83
    .line 84
    iget-object p1, p0, Lho/e;->b:Landroidx/fragment/app/Fragment;

    .line 85
    .line 86
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-nez p1, :cond_4

    .line 91
    .line 92
    iget-object p1, p0, Lho/e;->k:Lcom/transsion/player/orplayer/f;

    .line 93
    .line 94
    if-eqz p1, :cond_5

    .line 95
    .line 96
    invoke-interface {p1}, Lcom/transsion/player/orplayer/f;->play()V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_4
    iget-object p1, p0, Lho/e;->k:Lcom/transsion/player/orplayer/f;

    .line 101
    .line 102
    if-eqz p1, :cond_5

    .line 103
    .line 104
    invoke-interface {p1}, Lcom/transsion/player/orplayer/f;->pause()V

    .line 105
    .line 106
    .line 107
    :cond_5
    :goto_1
    iget-boolean p1, p0, Lho/e;->r:Z

    .line 108
    .line 109
    const/high16 v0, 0x3f800000    # 1.0f

    .line 110
    .line 111
    if-nez p1, :cond_7

    .line 112
    .line 113
    iget-object p1, p0, Lho/e;->k:Lcom/transsion/player/orplayer/f;

    .line 114
    .line 115
    if-eqz p1, :cond_6

    .line 116
    .line 117
    invoke-interface {p1}, Lcom/transsion/player/orplayer/f;->getVolume()Ljava/lang/Float;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    if-eqz p1, :cond_6

    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    goto :goto_2

    .line 128
    :cond_6
    move p1, v0

    .line 129
    :goto_2
    iput p1, p0, Lho/e;->u:F

    .line 130
    .line 131
    :cond_7
    iget-object p1, p0, Lho/e;->k:Lcom/transsion/player/orplayer/f;

    .line 132
    .line 133
    if-eqz p1, :cond_9

    .line 134
    .line 135
    iget-boolean v1, p0, Lho/e;->r:Z

    .line 136
    .line 137
    if-eqz v1, :cond_8

    .line 138
    .line 139
    const/4 v0, 0x0

    .line 140
    :cond_8
    invoke-interface {p1, v0}, Lcom/transsion/player/orplayer/f;->setVolume(F)V

    .line 141
    .line 142
    .line 143
    :cond_9
    return-void
.end method

.method public onProgress(JLgn/e;)V
    .locals 1

    .line 1
    iget-object p3, p0, Lho/e;->l:Lcom/transsion/postdetail/video/PostFeedVideoView;

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    long-to-int v0, p1

    .line 6
    invoke-virtual {p3, v0}, Lcom/transsion/postdetail/video/PostFeedVideoView;->setProgress(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object p3, p0, Lho/e;->m:Lcom/transsion/postdetail/layer/b;

    .line 10
    .line 11
    if-eqz p3, :cond_1

    .line 12
    .line 13
    invoke-virtual {p3, p1, p2}, Lcom/transsion/postdetail/layer/b;->l(J)V

    .line 14
    .line 15
    .line 16
    :cond_1
    return-void
.end method

.method public onRenderFirstFrame()V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget v1, p0, Lho/e;->n:I

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v3, "-----onRenderFirstFrame Position:"

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/4 v4, 0x4

    .line 23
    const/4 v5, 0x0

    .line 24
    const-string v1, "PostFeedVideo"

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lho/e;->m:Lcom/transsion/postdetail/layer/b;

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/transsion/postdetail/layer/b;->m()V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object v0, p0, Lho/e;->l:Lcom/transsion/postdetail/video/PostFeedVideoView;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-virtual {v0, v1}, Lcom/transsion/postdetail/video/PostFeedVideoView;->setProgress(I)V

    .line 43
    .line 44
    .line 45
    :cond_1
    iget-object v0, p0, Lho/e;->s:Lwn/b0;

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    iget-object v0, v0, Lwn/b0;->d:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 54
    .line 55
    .line 56
    :cond_2
    iget-object v0, p0, Lho/e;->s:Lwn/b0;

    .line 57
    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    iget-object v0, v0, Lwn/b0;->f:Lcom/noober/background/view/BLTextView;

    .line 61
    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 65
    .line 66
    .line 67
    :cond_3
    return-void
.end method

.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    .line 1
    const-string v0, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$r;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lho/e;->h:Ljava/lang/Boolean;

    .line 10
    .line 11
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    if-nez p2, :cond_1

    .line 21
    .line 22
    invoke-direct {p0}, Lho/e;->h()V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 6

    .line 1
    const-string v0, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$r;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Lho/e;->h:Ljava/lang/Boolean;

    .line 10
    .line 11
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-nez p2, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    iget-wide v2, p0, Lho/e;->q:J

    .line 25
    .line 26
    sub-long v2, v0, v2

    .line 27
    .line 28
    const-wide/16 v4, 0x64

    .line 29
    .line 30
    cmp-long p2, v2, v4

    .line 31
    .line 32
    if-gez p2, :cond_1

    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    iput-wide v0, p0, Lho/e;->q:J

    .line 36
    .line 37
    invoke-direct {p0, p1}, Lho/e;->i(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 38
    .line 39
    .line 40
    iput p3, p0, Lho/e;->t:I

    .line 41
    .line 42
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
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->C(Lcom/transsion/player/orplayer/e;I)V

    .line 2
    .line 3
    .line 4
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
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->E(Lcom/transsion/player/orplayer/e;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onVideoPause(Lgn/e;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lho/e;->m:Lcom/transsion/postdetail/layer/b;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/b;->n()V

    .line 6
    .line 7
    .line 8
    :cond_0
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
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget p1, p0, Lho/e;->n:I

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "-----onVideoStart Position:"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/4 v4, 0x4

    .line 23
    const/4 v5, 0x0

    .line 24
    const-string v1, "PostFeedVideo"

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lho/e;->m:Lcom/transsion/postdetail/layer/b;

    .line 31
    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/b;->o()V

    .line 35
    .line 36
    .line 37
    :cond_0
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
