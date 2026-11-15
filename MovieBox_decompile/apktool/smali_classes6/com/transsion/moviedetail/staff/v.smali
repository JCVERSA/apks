.class public final Lcom/transsion/moviedetail/staff/v;
.super Landroidx/recyclerview/widget/RecyclerView$r;
.source "source.java"


# instance fields
.field private final a:Lcom/transsion/moviedetail/staff/s;

.field private final b:Lkotlin/jvm/functions/Function2;

.field private c:Landroidx/recyclerview/widget/RecyclerView;

.field private final d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Lcom/transsion/moviedetail/staff/s;Lkotlin/jvm/functions/Function2;)V
    .locals 1

    .line 1
    const-string v0, "adapter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$r;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/transsion/moviedetail/staff/v;->a:Lcom/transsion/moviedetail/staff/s;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/transsion/moviedetail/staff/v;->b:Lkotlin/jvm/functions/Function2;

    .line 17
    .line 18
    const-string p1, "MovieStaffScroll"

    .line 19
    .line 20
    iput-object p1, p0, Lcom/transsion/moviedetail/staff/v;->d:Ljava/lang/String;

    .line 21
    .line 22
    const/4 p1, -0x1

    .line 23
    iput p1, p0, Lcom/transsion/moviedetail/staff/v;->g:I

    .line 24
    .line 25
    iput p1, p0, Lcom/transsion/moviedetail/staff/v;->h:I

    .line 26
    .line 27
    iput p1, p0, Lcom/transsion/moviedetail/staff/v;->i:I

    .line 28
    .line 29
    new-instance p1, Landroid/util/SparseArray;

    .line 30
    .line 31
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/transsion/moviedetail/staff/v;->j:Landroid/util/SparseArray;

    .line 35
    .line 36
    return-void
.end method

.method private final h(II)V
    .locals 8

    .line 1
    if-le p1, p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/transsion/moviedetail/staff/v;->a:Lcom/transsion/moviedetail/staff/s;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget v1, p0, Lcom/transsion/moviedetail/staff/v;->g:I

    .line 11
    .line 12
    if-ne v1, p1, :cond_1

    .line 13
    .line 14
    iget v1, p0, Lcom/transsion/moviedetail/staff/v;->h:I

    .line 15
    .line 16
    if-ne p2, v1, :cond_1

    .line 17
    .line 18
    iget v1, p0, Lcom/transsion/moviedetail/staff/v;->i:I

    .line 19
    .line 20
    if-ne v1, v0, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :catch_0
    move-exception p1

    .line 24
    goto/16 :goto_5

    .line 25
    .line 26
    :cond_1
    iput v0, p0, Lcom/transsion/moviedetail/staff/v;->i:I

    .line 27
    .line 28
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/transsion/moviedetail/staff/v;->d:Ljava/lang/String;

    .line 31
    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v3, "showChange firstPosition:"

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v3, "  lastPosition:"

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    const/4 v4, 0x4

    .line 58
    const/4 v5, 0x0

    .line 59
    const/4 v3, 0x0

    .line 60
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iget v0, p0, Lcom/transsion/moviedetail/staff/v;->g:I

    .line 64
    .line 65
    if-ltz v0, :cond_8

    .line 66
    .line 67
    iget v0, p0, Lcom/transsion/moviedetail/staff/v;->h:I

    .line 68
    .line 69
    if-gez v0, :cond_2

    .line 70
    .line 71
    goto/16 :goto_3

    .line 72
    .line 73
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lcom/transsion/moviedetail/staff/v;->j:Landroid/util/SparseArray;

    .line 79
    .line 80
    invoke-static {v1}, Landroidx/core/util/k;->a(Landroid/util/SparseArray;)Lkotlin/collections/IntIterator;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_5

    .line 89
    .line 90
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    check-cast v2, Ljava/lang/Number;

    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 97
    .line 98
    .line 99
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    const-string v3, "get(...)"

    .line 101
    .line 102
    if-gt p1, v2, :cond_4

    .line 103
    .line 104
    if-gt v2, p2, :cond_4

    .line 105
    .line 106
    if-ltz v2, :cond_3

    .line 107
    .line 108
    :try_start_1
    iget-object v4, p0, Lcom/transsion/moviedetail/staff/v;->a:Lcom/transsion/moviedetail/staff/s;

    .line 109
    .line 110
    invoke-virtual {v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    if-ge v2, v4, :cond_3

    .line 115
    .line 116
    iget-object v4, p0, Lcom/transsion/moviedetail/staff/v;->j:Landroid/util/SparseArray;

    .line 117
    .line 118
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    check-cast v4, Lkotlin/Pair;

    .line 123
    .line 124
    invoke-virtual {v4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    iget-object v5, p0, Lcom/transsion/moviedetail/staff/v;->a:Lcom/transsion/moviedetail/staff/s;

    .line 129
    .line 130
    invoke-virtual {v5, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    if-nez v4, :cond_3

    .line 139
    .line 140
    iget-object v4, p0, Lcom/transsion/moviedetail/staff/v;->b:Lkotlin/jvm/functions/Function2;

    .line 141
    .line 142
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    iget-object v6, p0, Lcom/transsion/moviedetail/staff/v;->j:Landroid/util/SparseArray;

    .line 147
    .line 148
    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-interface {v4, v5, v6}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    iget-object v3, p0, Lcom/transsion/moviedetail/staff/v;->j:Landroid/util/SparseArray;

    .line 159
    .line 160
    new-instance v4, Lkotlin/Pair;

    .line 161
    .line 162
    iget-object v5, p0, Lcom/transsion/moviedetail/staff/v;->a:Lcom/transsion/moviedetail/staff/s;

    .line 163
    .line 164
    invoke-virtual {v5, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 169
    .line 170
    .line 171
    move-result-wide v6

    .line 172
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 173
    .line 174
    .line 175
    move-result-object v6

    .line 176
    invoke-direct {v4, v5, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    goto :goto_0

    .line 183
    :cond_4
    iget-object v4, p0, Lcom/transsion/moviedetail/staff/v;->b:Lkotlin/jvm/functions/Function2;

    .line 184
    .line 185
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    iget-object v6, p0, Lcom/transsion/moviedetail/staff/v;->j:Landroid/util/SparseArray;

    .line 190
    .line 191
    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v6

    .line 195
    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-interface {v4, v5, v6}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    goto :goto_0

    .line 209
    :cond_5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    if-eqz v1, :cond_6

    .line 218
    .line 219
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    check-cast v1, Ljava/lang/Number;

    .line 224
    .line 225
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    iget-object v2, p0, Lcom/transsion/moviedetail/staff/v;->j:Landroid/util/SparseArray;

    .line 230
    .line 231
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 232
    .line 233
    .line 234
    goto :goto_1

    .line 235
    :cond_6
    if-gt p1, p2, :cond_9

    .line 236
    .line 237
    move v0, p1

    .line 238
    :goto_2
    iget-object v1, p0, Lcom/transsion/moviedetail/staff/v;->a:Lcom/transsion/moviedetail/staff/s;

    .line 239
    .line 240
    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    iget-object v2, p0, Lcom/transsion/moviedetail/staff/v;->j:Landroid/util/SparseArray;

    .line 245
    .line 246
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    if-nez v2, :cond_7

    .line 251
    .line 252
    iget-object v2, p0, Lcom/transsion/moviedetail/staff/v;->j:Landroid/util/SparseArray;

    .line 253
    .line 254
    new-instance v3, Lkotlin/Pair;

    .line 255
    .line 256
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 257
    .line 258
    .line 259
    move-result-wide v4

    .line 260
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 261
    .line 262
    .line 263
    move-result-object v4

    .line 264
    invoke-direct {v3, v1, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 268
    .line 269
    .line 270
    :cond_7
    if-eq v0, p2, :cond_9

    .line 271
    .line 272
    add-int/lit8 v0, v0, 0x1

    .line 273
    .line 274
    goto :goto_2

    .line 275
    :cond_8
    :goto_3
    if-gt p1, p2, :cond_9

    .line 276
    .line 277
    move v0, p1

    .line 278
    :goto_4
    iget-object v1, p0, Lcom/transsion/moviedetail/staff/v;->a:Lcom/transsion/moviedetail/staff/s;

    .line 279
    .line 280
    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    iget-object v2, p0, Lcom/transsion/moviedetail/staff/v;->j:Landroid/util/SparseArray;

    .line 285
    .line 286
    new-instance v3, Lkotlin/Pair;

    .line 287
    .line 288
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 289
    .line 290
    .line 291
    move-result-wide v4

    .line 292
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 293
    .line 294
    .line 295
    move-result-object v4

    .line 296
    invoke-direct {v3, v1, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 300
    .line 301
    .line 302
    if-eq v0, p2, :cond_9

    .line 303
    .line 304
    add-int/lit8 v0, v0, 0x1

    .line 305
    .line 306
    goto :goto_4

    .line 307
    :cond_9
    iput p1, p0, Lcom/transsion/moviedetail/staff/v;->g:I

    .line 308
    .line 309
    iput p2, p0, Lcom/transsion/moviedetail/staff/v;->h:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 310
    .line 311
    goto :goto_6

    .line 312
    :goto_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 313
    .line 314
    .line 315
    :goto_6
    return-void
.end method


# virtual methods
.method public final d(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p2

    .line 4
    .line 5
    const-string v2, "appBarLayout"

    .line 6
    .line 7
    move-object/from16 v3, p1

    .line 8
    .line 9
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 13
    .line 14
    iget-object v4, v1, Lcom/transsion/moviedetail/staff/v;->d:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v5, "appbarScroll  moveY:"

    .line 22
    .line 23
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    const/4 v7, 0x4

    .line 34
    const/4 v8, 0x0

    .line 35
    const/4 v6, 0x0

    .line 36
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :try_start_0
    iput v0, v1, Lcom/transsion/moviedetail/staff/v;->f:I

    .line 40
    .line 41
    invoke-static {}, Lcom/blankj/utilcode/util/y;->c()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-static {}, Lcom/blankj/utilcode/util/d;->a()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    iget-object v3, v1, Lcom/transsion/moviedetail/staff/v;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 50
    .line 51
    const/4 v4, 0x0

    .line 52
    if-eqz v3, :cond_0

    .line 53
    .line 54
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    goto/16 :goto_8

    .line 61
    .line 62
    :cond_0
    move v3, v4

    .line 63
    :goto_0
    sub-int/2addr v0, v2

    .line 64
    sub-int/2addr v0, v3

    .line 65
    iget-object v2, v1, Lcom/transsion/moviedetail/staff/v;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 66
    .line 67
    if-eqz v2, :cond_1

    .line 68
    .line 69
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    goto :goto_1

    .line 74
    :cond_1
    const/4 v2, 0x0

    .line 75
    :goto_1
    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 76
    .line 77
    if-nez v2, :cond_2

    .line 78
    .line 79
    return-void

    .line 80
    :cond_2
    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    const/4 v6, -0x1

    .line 89
    if-gt v3, v5, :cond_d

    .line 90
    .line 91
    move v8, v4

    .line 92
    move v7, v6

    .line 93
    :goto_2
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v9

    .line 97
    if-nez v9, :cond_3

    .line 98
    .line 99
    goto/16 :goto_6

    .line 100
    .line 101
    :cond_3
    sget-object v16, Lwf/a;->a:Lwf/a$a;

    .line 102
    .line 103
    iget-object v11, v1, Lcom/transsion/moviedetail/staff/v;->d:Ljava/lang/String;

    .line 104
    .line 105
    iget v10, v1, Lcom/transsion/moviedetail/staff/v;->e:I

    .line 106
    .line 107
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    .line 108
    .line 109
    .line 110
    move-result v12

    .line 111
    new-instance v13, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    const-string v14, "appbarScroll  *****  index:"

    .line 117
    .line 118
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v14, "  totalY:"

    .line 125
    .line 126
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v10, "    top:"

    .line 133
    .line 134
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v12

    .line 144
    const/4 v14, 0x4

    .line 145
    const/4 v15, 0x0

    .line 146
    const/4 v13, 0x0

    .line 147
    move-object/from16 v10, v16

    .line 148
    .line 149
    invoke-static/range {v10 .. v15}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    .line 153
    .line 154
    .line 155
    move-result v10

    .line 156
    if-gez v10, :cond_4

    .line 157
    .line 158
    return-void

    .line 159
    :cond_4
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    .line 160
    .line 161
    .line 162
    move-result v10

    .line 163
    int-to-float v10, v10

    .line 164
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    .line 165
    .line 166
    .line 167
    move-result v11

    .line 168
    int-to-float v11, v11

    .line 169
    const v12, 0x3f333333    # 0.7f

    .line 170
    .line 171
    .line 172
    mul-float/2addr v11, v12

    .line 173
    cmpg-float v10, v10, v11

    .line 174
    .line 175
    if-gez v10, :cond_5

    .line 176
    .line 177
    iget-object v11, v1, Lcom/transsion/moviedetail/staff/v;->d:Ljava/lang/String;

    .line 178
    .line 179
    new-instance v9, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .line 183
    .line 184
    const-string v10, "index:"

    .line 185
    .line 186
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    const-string v10, "  \u6807\u9898\u680f\u6863\u4f4f\u4e86\uff0c\u4e0d\u8ba1\u5165"

    .line 193
    .line 194
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v12

    .line 201
    const/4 v14, 0x4

    .line 202
    const/4 v15, 0x0

    .line 203
    const/4 v13, 0x0

    .line 204
    move-object/from16 v10, v16

    .line 205
    .line 206
    invoke-static/range {v10 .. v15}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    goto :goto_6

    .line 210
    :cond_5
    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager;->Y()Landroidx/recyclerview/widget/GridLayoutManager$c;

    .line 211
    .line 212
    .line 213
    move-result-object v10

    .line 214
    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager;->U()I

    .line 215
    .line 216
    .line 217
    move-result v11

    .line 218
    invoke-virtual {v10, v3, v11}, Landroidx/recyclerview/widget/GridLayoutManager$c;->e(II)I

    .line 219
    .line 220
    .line 221
    move-result v10

    .line 222
    if-nez v10, :cond_c

    .line 223
    .line 224
    if-ne v7, v6, :cond_6

    .line 225
    .line 226
    move v7, v3

    .line 227
    :cond_6
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    .line 228
    .line 229
    .line 230
    move-result v9

    .line 231
    add-int v10, v8, v9

    .line 232
    .line 233
    if-ge v10, v0, :cond_7

    .line 234
    .line 235
    move v8, v10

    .line 236
    goto :goto_6

    .line 237
    :cond_7
    sub-int/2addr v0, v8

    .line 238
    mul-int/lit8 v0, v0, 0x64

    .line 239
    .line 240
    div-int/2addr v0, v9

    .line 241
    const/16 v6, 0x46

    .line 242
    .line 243
    if-lt v0, v6, :cond_a

    .line 244
    .line 245
    add-int/lit8 v0, v3, 0x1

    .line 246
    .line 247
    if-gt v0, v5, :cond_9

    .line 248
    .line 249
    :goto_3
    move/from16 v17, v3

    .line 250
    .line 251
    move v3, v0

    .line 252
    move/from16 v0, v17

    .line 253
    .line 254
    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager;->Y()Landroidx/recyclerview/widget/GridLayoutManager$c;

    .line 255
    .line 256
    .line 257
    move-result-object v4

    .line 258
    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager;->U()I

    .line 259
    .line 260
    .line 261
    move-result v6

    .line 262
    invoke-virtual {v4, v3, v6}, Landroidx/recyclerview/widget/GridLayoutManager$c;->e(II)I

    .line 263
    .line 264
    .line 265
    move-result v4

    .line 266
    if-nez v4, :cond_8

    .line 267
    .line 268
    move v3, v0

    .line 269
    goto :goto_4

    .line 270
    :cond_8
    if-eq v3, v5, :cond_9

    .line 271
    .line 272
    add-int/lit8 v0, v3, 0x1

    .line 273
    .line 274
    goto :goto_3

    .line 275
    :cond_9
    :goto_4
    move v4, v3

    .line 276
    goto :goto_5

    .line 277
    :cond_a
    add-int/lit8 v3, v3, -0x1

    .line 278
    .line 279
    invoke-static {v3, v4}, Lkotlin/ranges/RangesKt;->e(II)I

    .line 280
    .line 281
    .line 282
    move-result v0

    .line 283
    move v4, v0

    .line 284
    :cond_b
    :goto_5
    move v6, v7

    .line 285
    goto :goto_7

    .line 286
    :cond_c
    :goto_6
    if-eq v3, v5, :cond_b

    .line 287
    .line 288
    add-int/lit8 v3, v3, 0x1

    .line 289
    .line 290
    goto/16 :goto_2

    .line 291
    .line 292
    :cond_d
    :goto_7
    sget-object v7, Lwf/a;->a:Lwf/a$a;

    .line 293
    .line 294
    iget-object v8, v1, Lcom/transsion/moviedetail/staff/v;->d:Ljava/lang/String;

    .line 295
    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    .line 297
    .line 298
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    .line 300
    .line 301
    const-string v2, "firstVisiblePosition:"

    .line 302
    .line 303
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    const-string v2, "   realLastVisiblePosition:"

    .line 310
    .line 311
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v9

    .line 321
    const/4 v11, 0x4

    .line 322
    const/4 v12, 0x0

    .line 323
    const/4 v10, 0x0

    .line 324
    invoke-static/range {v7 .. v12}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 325
    .line 326
    .line 327
    invoke-direct {v1, v6, v4}, Lcom/transsion/moviedetail/staff/v;->h(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    .line 329
    .line 330
    goto :goto_9

    .line 331
    :goto_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 332
    .line 333
    .line 334
    :goto_9
    return-void
.end method

.method public final e(II)V
    .locals 3

    .line 1
    :goto_0
    if-ge p1, p2, :cond_1

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/transsion/moviedetail/staff/v;->j:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lkotlin/Pair;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsion/moviedetail/staff/v;->b:Lkotlin/jvm/functions/Function2;

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-interface {v1, v2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/transsion/moviedetail/staff/v;->j:Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :catch_0
    move-exception p1

    .line 29
    goto :goto_2

    .line 30
    :cond_0
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method public final f()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/transsion/moviedetail/staff/v;->j:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/core/util/k;->a(Landroid/util/SparseArray;)Lkotlin/collections/IntIterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/Number;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iget-object v2, p0, Lcom/transsion/moviedetail/staff/v;->b:Lkotlin/jvm/functions/Function2;

    .line 24
    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    iget-object v4, p0, Lcom/transsion/moviedetail/staff/v;->j:Landroid/util/SparseArray;

    .line 30
    .line 31
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v4, "get(...)"

    .line 36
    .line 37
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {v2, v3, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/transsion/moviedetail/staff/v;->j:Landroid/util/SparseArray;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    .line 54
    .line 55
    :goto_2
    return-void
.end method

.method public final g()V
    .locals 3

    .line 1
    :try_start_0
    iget v0, p0, Lcom/transsion/moviedetail/staff/v;->g:I

    .line 2
    .line 3
    if-ltz v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Lcom/transsion/moviedetail/staff/v;->h:I

    .line 6
    .line 7
    const/4 v2, -0x1

    .line 8
    iput v2, p0, Lcom/transsion/moviedetail/staff/v;->g:I

    .line 9
    .line 10
    iput v2, p0, Lcom/transsion/moviedetail/staff/v;->h:I

    .line 11
    .line 12
    invoke-direct {p0, v0, v1}, Lcom/transsion/moviedetail/staff/v;->h(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    :cond_0
    :goto_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    const-string v3, "recyclerView"

    .line 8
    .line 9
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-super/range {p0 .. p3}, Landroidx/recyclerview/widget/RecyclerView$r;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 13
    .line 14
    .line 15
    iget v3, v0, Lcom/transsion/moviedetail/staff/v;->e:I

    .line 16
    .line 17
    add-int/2addr v3, v2

    .line 18
    iput v3, v0, Lcom/transsion/moviedetail/staff/v;->e:I

    .line 19
    .line 20
    iput-object v1, v0, Lcom/transsion/moviedetail/staff/v;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 21
    .line 22
    iget v3, v0, Lcom/transsion/moviedetail/staff/v;->f:I

    .line 23
    .line 24
    if-ltz v3, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const-string v4, "null cannot be cast to non-null type androidx.recyclerview.widget.GridLayoutManager"

    .line 32
    .line 33
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    check-cast v3, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 37
    .line 38
    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    move v6, v4

    .line 47
    :goto_0
    if-ge v6, v5, :cond_4

    .line 48
    .line 49
    invoke-virtual {v3, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    if-nez v8, :cond_1

    .line 54
    .line 55
    goto/16 :goto_1

    .line 56
    .line 57
    :cond_1
    new-instance v9, Landroid/graphics/Rect;

    .line 58
    .line 59
    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v8, v9}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 63
    .line 64
    .line 65
    sget-object v16, Lwf/a;->a:Lwf/a$a;

    .line 66
    .line 67
    iget-object v11, v0, Lcom/transsion/moviedetail/staff/v;->d:Ljava/lang/String;

    .line 68
    .line 69
    iget v10, v0, Lcom/transsion/moviedetail/staff/v;->e:I

    .line 70
    .line 71
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    .line 72
    .line 73
    .line 74
    move-result v12

    .line 75
    new-instance v13, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v15, "index:"

    .line 81
    .line 82
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v14, "  totalY:"

    .line 89
    .line 90
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v10, "    dy:"

    .line 97
    .line 98
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v10, " top:"

    .line 105
    .line 106
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v12

    .line 116
    const/4 v14, 0x4

    .line 117
    const/16 v17, 0x0

    .line 118
    .line 119
    const/4 v13, 0x0

    .line 120
    move-object/from16 v10, v16

    .line 121
    .line 122
    move-object v7, v15

    .line 123
    move-object/from16 v15, v17

    .line 124
    .line 125
    invoke-static/range {v10 .. v15}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    iget-object v11, v0, Lcom/transsion/moviedetail/staff/v;->d:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    .line 131
    .line 132
    .line 133
    move-result v10

    .line 134
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    .line 135
    .line 136
    .line 137
    move-result v12

    .line 138
    new-instance v13, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string v14, "  firstView top:"

    .line 150
    .line 151
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v10, "    bottom:"

    .line 158
    .line 159
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v12

    .line 169
    const/4 v14, 0x4

    .line 170
    const/4 v15, 0x0

    .line 171
    const/4 v13, 0x0

    .line 172
    move-object/from16 v10, v16

    .line 173
    .line 174
    invoke-static/range {v10 .. v15}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    .line 178
    .line 179
    .line 180
    move-result v10

    .line 181
    int-to-float v10, v10

    .line 182
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    .line 183
    .line 184
    .line 185
    move-result v11

    .line 186
    int-to-float v11, v11

    .line 187
    const v12, 0x3f333333    # 0.7f

    .line 188
    .line 189
    .line 190
    mul-float/2addr v11, v12

    .line 191
    cmpg-float v10, v10, v11

    .line 192
    .line 193
    if-gez v10, :cond_2

    .line 194
    .line 195
    iget-object v11, v0, Lcom/transsion/moviedetail/staff/v;->d:Ljava/lang/String;

    .line 196
    .line 197
    new-instance v8, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    const-string v7, "  \u6807\u9898\u680f\u6863\u4f4f\u4e86\uff0c\u4e0d\u8ba1\u5165"

    .line 209
    .line 210
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v12

    .line 217
    const/4 v14, 0x4

    .line 218
    const/4 v15, 0x0

    .line 219
    const/4 v13, 0x0

    .line 220
    move-object/from16 v10, v16

    .line 221
    .line 222
    invoke-static/range {v10 .. v15}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    goto :goto_1

    .line 226
    :cond_2
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 227
    .line 228
    .line 229
    move-result v7

    .line 230
    mul-int/lit8 v7, v7, 0x64

    .line 231
    .line 232
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    .line 233
    .line 234
    .line 235
    move-result v8

    .line 236
    div-int/2addr v7, v8

    .line 237
    const/16 v8, 0x46

    .line 238
    .line 239
    if-lt v7, v8, :cond_3

    .line 240
    .line 241
    move v4, v6

    .line 242
    goto :goto_2

    .line 243
    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 244
    .line 245
    goto/16 :goto_0

    .line 246
    .line 247
    :cond_4
    :goto_2
    if-gt v4, v5, :cond_7

    .line 248
    .line 249
    move v1, v5

    .line 250
    :goto_3
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    if-nez v2, :cond_5

    .line 255
    .line 256
    const/16 v2, 0x46

    .line 257
    .line 258
    goto :goto_4

    .line 259
    :cond_5
    new-instance v6, Landroid/graphics/Rect;

    .line 260
    .line 261
    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v2, v6}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 265
    .line 266
    .line 267
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 268
    .line 269
    .line 270
    move-result v6

    .line 271
    mul-int/lit8 v6, v6, 0x64

    .line 272
    .line 273
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 274
    .line 275
    .line 276
    move-result v2

    .line 277
    div-int/2addr v6, v2

    .line 278
    const/16 v2, 0x46

    .line 279
    .line 280
    if-lt v6, v2, :cond_6

    .line 281
    .line 282
    move v5, v1

    .line 283
    goto :goto_5

    .line 284
    :cond_6
    :goto_4
    if-eq v1, v4, :cond_7

    .line 285
    .line 286
    add-int/lit8 v1, v1, -0x1

    .line 287
    .line 288
    goto :goto_3

    .line 289
    :cond_7
    :goto_5
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 290
    .line 291
    iget-object v7, v0, Lcom/transsion/moviedetail/staff/v;->d:Ljava/lang/String;

    .line 292
    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    .line 294
    .line 295
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    .line 297
    .line 298
    const-string v2, "firstVisiblePosition:"

    .line 299
    .line 300
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    const-string v2, "   lastVisiblePosition:"

    .line 307
    .line 308
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v8

    .line 318
    const/4 v10, 0x4

    .line 319
    const/4 v11, 0x0

    .line 320
    const/4 v9, 0x0

    .line 321
    invoke-static/range {v6 .. v11}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 322
    .line 323
    .line 324
    invoke-direct {v0, v4, v5}, Lcom/transsion/moviedetail/staff/v;->h(II)V

    .line 325
    .line 326
    .line 327
    return-void
.end method
