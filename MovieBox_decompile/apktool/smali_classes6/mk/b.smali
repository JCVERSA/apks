.class public final Lmk/b;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmk/b$a;
    }
.end annotation


# static fields
.field public static final k:Lmk/b$a;

.field public static final l:I


# instance fields
.field private final e:Lrk/b;

.field private f:Lcom/transsion/home/bean/LayoutStyle;

.field private final g:I

.field private h:Z

.field private final i:I

.field private final j:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lmk/b$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lmk/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lmk/b;->k:Lmk/b$a;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Lmk/b;->l:I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lrk/b;Lcom/transsion/home/bean/LayoutStyle;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lmk/b;->e:Lrk/b;

    .line 5
    .line 6
    iput-object p2, p0, Lmk/b;->f:Lcom/transsion/home/bean/LayoutStyle;

    .line 7
    .line 8
    iput p3, p0, Lmk/b;->g:I

    .line 9
    .line 10
    iput-boolean p4, p0, Lmk/b;->h:Z

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    iput p1, p0, Lmk/b;->i:I

    .line 14
    .line 15
    sget p1, Lcom/transsion/home/R$layout;->ugc_item_filter_source:I

    .line 16
    .line 17
    iput p1, p0, Lmk/b;->j:I

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/home/bean/UGCFilterVideoItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lmk/b;->y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/UGCFilterVideoItem;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    iget v0, p0, Lmk/b;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public m()I
    .locals 1

    .line 1
    iget v0, p0, Lmk/b;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public v(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V
    .locals 1

    .line 1
    const-string v0, "viewHolder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->v(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/UGCFilterVideoItem;)V
    .locals 10

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "item"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget v0, Lcom/transsion/home/R$id;->nativeView:I

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/FrameLayout;

    .line 18
    .line 19
    const/16 v1, 0x8

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    sget v0, Lcom/transsion/home/R$id;->group:I

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroidx/constraintlayout/widget/Group;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Lcom/transsion/home/bean/UGCFilterVideoItem;->getContent()Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    if-nez p2, :cond_0

    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCategory()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sget v3, Lcom/transsion/home/R$id;->iv_cover:I

    .line 52
    .line 53
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 58
    .line 59
    sget v4, Lcom/transsion/home/R$id;->cover_container:I

    .line 60
    .line 61
    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    sget-object v5, Lzk/l;->a:Lzk/l;

    .line 66
    .line 67
    iget v6, p0, Lmk/b;->g:I

    .line 68
    .line 69
    iget-object v7, p0, Lmk/b;->f:Lcom/transsion/home/bean/LayoutStyle;

    .line 70
    .line 71
    invoke-virtual {v5, v6, v7, v0}, Lzk/l;->a(ILcom/transsion/home/bean/LayoutStyle;Ljava/lang/String;)Lzk/k;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    const-string v6, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    .line 80
    .line 81
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 85
    .line 86
    invoke-virtual {v0}, Lzk/k;->a()I

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    iput v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 91
    .line 92
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    .line 94
    .line 95
    sget-object v4, Lni/f;->a:Lni/f$a;

    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    invoke-virtual {v4, v5}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    const-string v7, ""

    .line 110
    .line 111
    if-eqz v6, :cond_1

    .line 112
    .line 113
    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    if-nez v6, :cond_2

    .line 118
    .line 119
    :cond_1
    move-object v6, v7

    .line 120
    :cond_2
    invoke-virtual {v5, v6}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    sget v6, Lcom/tn/lib/widget/R$color;->cl37:I

    .line 125
    .line 126
    invoke-virtual {v5, v6}, Lni/f$b;->i(I)Lni/f$b;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    invoke-virtual {v0}, Lzk/k;->b()I

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    invoke-virtual {v5, v6}, Lni/f$b;->m(I)Lni/f$b;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    invoke-virtual {v0}, Lzk/k;->a()I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    invoke-virtual {v5, v0}, Lni/f$b;->c(I)Lni/f$b;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    if-eqz v5, :cond_3

    .line 151
    .line 152
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    if-nez v5, :cond_4

    .line 157
    .line 158
    :cond_3
    move-object v5, v7

    .line 159
    :cond_4
    invoke-virtual {v0, v5}, Lni/f$b;->l(Ljava/lang/String;)Lni/f$b;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {v0, v3}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 164
    .line 165
    .line 166
    sget v0, Lcom/transsion/home/R$id;->tv_title:I

    .line 167
    .line 168
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getTitle()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    if-nez v3, :cond_5

    .line 173
    .line 174
    move-object v3, v7

    .line 175
    :cond_5
    invoke-virtual {p1, v0, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getWatchNum()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-static {v0, v3}, Lcom/transsion/baseui/util/j;->c(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    sget v3, Lcom/transsion/home/R$id;->tv_views:I

    .line 191
    .line 192
    invoke-virtual {p1, v3, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 193
    .line 194
    .line 195
    iget-boolean v0, p0, Lmk/b;->h:Z

    .line 196
    .line 197
    const/4 v3, 0x1

    .line 198
    if-eqz v0, :cond_a

    .line 199
    .line 200
    sget-object v0, Lij/o;->a:Lij/o;

    .line 201
    .line 202
    invoke-virtual {v0}, Lij/o;->i()Z

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    if-nez v0, :cond_a

    .line 207
    .line 208
    sget v0, Lcom/transsion/home/R$id;->iv_res_post_type:I

    .line 209
    .line 210
    invoke-virtual {p1, v0, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 211
    .line 212
    .line 213
    sget v0, Lcom/transsion/home/R$id;->iv_upload_user_icon:I

    .line 214
    .line 215
    invoke-virtual {p1, v0, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-virtual {v4, v0}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCreator()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;

    .line 227
    .line 228
    .line 229
    move-result-object v4

    .line 230
    if-eqz v4, :cond_6

    .line 231
    .line 232
    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;->getAvatar()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v4

    .line 236
    if-nez v4, :cond_7

    .line 237
    .line 238
    :cond_6
    move-object v4, v7

    .line 239
    :cond_7
    invoke-virtual {v0, v4}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    sget v4, Lcom/transsion/home/R$drawable;->icon_ugc_user_upload:I

    .line 244
    .line 245
    invoke-virtual {v0, v4}, Lni/f$b;->i(I)Lni/f$b;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    sget v4, Lcom/transsion/home/R$id;->iv_upload_user_icon:I

    .line 250
    .line 251
    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    check-cast v4, Landroid/widget/ImageView;

    .line 256
    .line 257
    invoke-virtual {v0, v4}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 258
    .line 259
    .line 260
    sget v0, Lcom/transsion/home/R$id;->tv_type:I

    .line 261
    .line 262
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCreator()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;

    .line 263
    .line 264
    .line 265
    move-result-object v4

    .line 266
    if-eqz v4, :cond_8

    .line 267
    .line 268
    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;->getNickname()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v4

    .line 272
    if-nez v4, :cond_9

    .line 273
    .line 274
    :cond_8
    move-object v4, v7

    .line 275
    :cond_9
    invoke-virtual {p1, v0, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 276
    .line 277
    .line 278
    sget v0, Lcom/transsion/home/R$id;->separator:I

    .line 279
    .line 280
    invoke-virtual {p1, v0, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 281
    .line 282
    .line 283
    goto :goto_3

    .line 284
    :cond_a
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getPublishTime()Ljava/lang/Long;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    const-wide/16 v4, 0x0

    .line 289
    .line 290
    if-eqz v0, :cond_b

    .line 291
    .line 292
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 293
    .line 294
    .line 295
    move-result-wide v8

    .line 296
    goto :goto_0

    .line 297
    :cond_b
    move-wide v8, v4

    .line 298
    :goto_0
    cmp-long v0, v8, v4

    .line 299
    .line 300
    if-lez v0, :cond_c

    .line 301
    .line 302
    invoke-static {v8, v9}, Lcom/transsion/baseui/util/TimeUtilKt;->j(J)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    goto :goto_1

    .line 307
    :cond_c
    move-object v0, v7

    .line 308
    :goto_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 309
    .line 310
    .line 311
    move-result v4

    .line 312
    if-nez v4, :cond_d

    .line 313
    .line 314
    sget v0, Lcom/transsion/home/R$id;->separator:I

    .line 315
    .line 316
    invoke-virtual {p1, v0, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 317
    .line 318
    .line 319
    sget v0, Lcom/transsion/home/R$id;->tv_type:I

    .line 320
    .line 321
    invoke-virtual {p1, v0, v7}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 322
    .line 323
    .line 324
    goto :goto_2

    .line 325
    :cond_d
    sget v4, Lcom/transsion/home/R$id;->separator:I

    .line 326
    .line 327
    invoke-virtual {p1, v4, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 328
    .line 329
    .line 330
    sget v4, Lcom/transsion/home/R$id;->tv_type:I

    .line 331
    .line 332
    invoke-virtual {p1, v4, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 333
    .line 334
    .line 335
    :goto_2
    sget v0, Lcom/transsion/home/R$id;->iv_res_post_type:I

    .line 336
    .line 337
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 342
    .line 343
    .line 344
    sget v0, Lcom/transsion/home/R$id;->iv_res_post_type:I

    .line 345
    .line 346
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    check-cast v0, Landroid/widget/ImageView;

    .line 351
    .line 352
    const/4 v4, 0x4

    .line 353
    const/4 v5, 0x0

    .line 354
    invoke-static {v0, p2, v5, v4, v5}, Lcom/transsion/ugcvideodetail/api/UGCVideoTypeKt;->i(Landroid/widget/ImageView;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 355
    .line 356
    .line 357
    sget v0, Lcom/transsion/home/R$id;->iv_upload_user_icon:I

    .line 358
    .line 359
    invoke-virtual {p1, v0, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 360
    .line 361
    .line 362
    :goto_3
    sget v0, Lcom/transsion/home/R$id;->tv_duration:I

    .line 363
    .line 364
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 365
    .line 366
    .line 367
    move-result-object v4

    .line 368
    invoke-virtual {p2, v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getTimeOrCount(Landroid/content/Context;)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v4

    .line 372
    invoke-virtual {p1, v0, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCorner()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    sget v4, Lcom/transsion/home/R$id;->tag_audio:I

    .line 380
    .line 381
    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 382
    .line 383
    .line 384
    move-result-object v4

    .line 385
    sget v5, Lcom/transsion/home/R$id;->tv_audio_tag:I

    .line 386
    .line 387
    invoke-virtual {p1, v5}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 388
    .line 389
    .line 390
    move-result-object p1

    .line 391
    check-cast p1, Landroid/widget/TextView;

    .line 392
    .line 393
    if-eqz v0, :cond_f

    .line 394
    .line 395
    invoke-static {v0}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    .line 396
    .line 397
    .line 398
    move-result v0

    .line 399
    if-eqz v0, :cond_e

    .line 400
    .line 401
    goto :goto_4

    .line 402
    :cond_e
    move v3, v2

    .line 403
    :cond_f
    :goto_4
    if-nez v3, :cond_10

    .line 404
    .line 405
    move v1, v2

    .line 406
    :cond_10
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCorner()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object p2

    .line 413
    if-eqz p2, :cond_11

    .line 414
    .line 415
    move-object v7, p2

    .line 416
    :cond_11
    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    .line 418
    .line 419
    return-void
.end method

.method public final z(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lmk/b;->h:Z

    .line 2
    .line 3
    return-void
.end method
