.class public final Lzp/f;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "source.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final A(Lcom/transsion/search/fragment/result/ResultWrapData;Landroid/widget/ImageView;Lzp/f;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/search/fragment/result/ResultWrapData;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 2
    .line 3
    .line 4
    move-result-object p4

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v0, "getContext(...)"

    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "search_result"

    .line 15
    .line 16
    const-string v1, "searchresult"

    .line 17
    .line 18
    invoke-static {p4, v1, p1, v0}, Lcom/transsion/search/f;->d(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    instance-of p2, p1, Lcom/transsion/search/fragment/result/adapter/a;

    .line 26
    .line 27
    if-eqz p2, :cond_0

    .line 28
    .line 29
    check-cast p1, Lcom/transsion/search/fragment/result/adapter/a;

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/transsion/search/fragment/result/ResultWrapData;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$a0;->getBindingAdapterPosition()I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    invoke-virtual {p1, p0, p2}, Lcom/transsion/search/fragment/result/adapter/a;->R1(Lcom/transsion/moviedetailapi/bean/Subject;I)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public static synthetic y(Lcom/transsion/search/fragment/result/ResultWrapData;Landroid/widget/ImageView;Lzp/f;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lzp/f;->A(Lcom/transsion/search/fragment/result/ResultWrapData;Landroid/widget/ImageView;Lzp/f;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/search/fragment/result/ResultWrapData;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lzp/f;->z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/search/fragment/result/ResultWrapData;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/search/fragment/result/ResultType;->SUBJECT:Lcom/transsion/search/fragment/result/ResultType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public m()I
    .locals 1

    .line 1
    sget v0, Lcom/transsion/search/R$layout;->provider_result_subject:I

    .line 2
    .line 3
    return v0
.end method

.method public z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/search/fragment/result/ResultWrapData;)V
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const-string v2, "helper"

    .line 6
    .line 7
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v2, "item"

    .line 11
    .line 12
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/search/fragment/result/ResultWrapData;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/high16 v3, 0x42a00000    # 80.0f

    .line 20
    .line 21
    const-string v4, "getResources(...)"

    .line 22
    .line 23
    const/4 v5, 0x1

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->isMusicType()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-ne v2, v5, :cond_1

    .line 31
    .line 32
    sget v2, Lcom/transsion/search/R$id;->search_result_provider_subject_cover:I

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Landroid/widget/ImageView;

    .line 39
    .line 40
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-static {v6}, Lcom/transsion/search/f;->e(Landroid/content/res/Resources;)Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_0

    .line 52
    .line 53
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    const/high16 v6, 0x43200000    # 160.0f

    .line 58
    .line 59
    invoke-static {v6}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 64
    .line 65
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    const/high16 v6, 0x42b40000    # 90.0f

    .line 70
    .line 71
    invoke-static {v6}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 87
    .line 88
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    const/high16 v6, 0x42340000    # 45.0f

    .line 93
    .line 94
    invoke-static {v6}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 99
    .line 100
    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    .line 106
    .line 107
    sget v2, Lcom/transsion/search/R$id;->search_result_provider_subject_title:I

    .line 108
    .line 109
    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    check-cast v2, Landroid/widget/TextView;

    .line 114
    .line 115
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-static {v2}, Lcom/transsion/search/f;->e(Landroid/content/res/Resources;)Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-eqz v2, :cond_2

    .line 135
    .line 136
    sget v2, Lcom/transsion/search/R$id;->search_result_provider_subject_cover:I

    .line 137
    .line 138
    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    check-cast v2, Landroid/widget/ImageView;

    .line 143
    .line 144
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    const/high16 v6, 0x42c80000    # 100.0f

    .line 149
    .line 150
    invoke-static {v6}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 151
    .line 152
    .line 153
    move-result v6

    .line 154
    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 155
    .line 156
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    const/high16 v6, 0x430c0000    # 140.0f

    .line 161
    .line 162
    invoke-static {v6}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 163
    .line 164
    .line 165
    move-result v6

    .line 166
    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 167
    .line 168
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_2
    sget v2, Lcom/transsion/search/R$id;->search_result_provider_subject_cover:I

    .line 177
    .line 178
    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    check-cast v2, Landroid/widget/ImageView;

    .line 183
    .line 184
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    const/high16 v6, 0x42480000    # 50.0f

    .line 189
    .line 190
    invoke-static {v6}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 191
    .line 192
    .line 193
    move-result v6

    .line 194
    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 195
    .line 196
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    const/high16 v6, 0x428c0000    # 70.0f

    .line 201
    .line 202
    invoke-static {v6}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 203
    .line 204
    .line 205
    move-result v6

    .line 206
    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 207
    .line 208
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    .line 214
    .line 215
    sget v2, Lcom/transsion/search/R$id;->search_result_provider_subject_title:I

    .line 216
    .line 217
    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    check-cast v2, Landroid/widget/TextView;

    .line 222
    .line 223
    const/4 v4, 0x2

    .line 224
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 225
    .line 226
    .line 227
    :goto_1
    sget-object v2, Lni/f;->a:Lni/f$a;

    .line 228
    .line 229
    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    invoke-virtual {v2, v4}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/search/fragment/result/ResultWrapData;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 238
    .line 239
    .line 240
    move-result-object v4

    .line 241
    const-string v6, ""

    .line 242
    .line 243
    if-eqz v4, :cond_3

    .line 244
    .line 245
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 246
    .line 247
    .line 248
    move-result-object v4

    .line 249
    if-eqz v4, :cond_3

    .line 250
    .line 251
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    if-nez v4, :cond_4

    .line 256
    .line 257
    :cond_3
    move-object v4, v6

    .line 258
    :cond_4
    invoke-virtual {v2, v4}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 263
    .line 264
    .line 265
    move-result v3

    .line 266
    invoke-virtual {v2, v3}, Lni/f$b;->m(I)Lni/f$b;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/search/fragment/result/ResultWrapData;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    if-eqz v3, :cond_5

    .line 275
    .line 276
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    if-eqz v3, :cond_5

    .line 281
    .line 282
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    if-nez v3, :cond_6

    .line 287
    .line 288
    :cond_5
    move-object v3, v6

    .line 289
    :cond_6
    invoke-virtual {v2, v3}, Lni/f$b;->l(Ljava/lang/String;)Lni/f$b;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    sget v3, Lcom/transsion/search/R$id;->search_result_provider_subject_cover:I

    .line 294
    .line 295
    invoke-virtual {v0, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 296
    .line 297
    .line 298
    move-result-object v3

    .line 299
    check-cast v3, Landroid/widget/ImageView;

    .line 300
    .line 301
    invoke-virtual {v2, v3}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 302
    .line 303
    .line 304
    sget v2, Lcom/transsion/search/R$id;->search_result_provider_subject_corner:I

    .line 305
    .line 306
    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    check-cast v2, Landroid/widget/TextView;

    .line 311
    .line 312
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/search/fragment/result/ResultWrapData;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 313
    .line 314
    .line 315
    move-result-object v3

    .line 316
    const/4 v4, 0x0

    .line 317
    if-eqz v3, :cond_7

    .line 318
    .line 319
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Subject;->getCorner()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v3

    .line 323
    goto :goto_2

    .line 324
    :cond_7
    move-object v3, v4

    .line 325
    :goto_2
    if-eqz v3, :cond_a

    .line 326
    .line 327
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 328
    .line 329
    .line 330
    move-result v3

    .line 331
    if-nez v3, :cond_8

    .line 332
    .line 333
    goto :goto_4

    .line 334
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/search/fragment/result/ResultWrapData;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 335
    .line 336
    .line 337
    move-result-object v3

    .line 338
    if-eqz v3, :cond_9

    .line 339
    .line 340
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Subject;->getCorner()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v3

    .line 344
    goto :goto_3

    .line 345
    :cond_9
    move-object v3, v4

    .line 346
    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    .line 348
    .line 349
    invoke-static {v2}, Luf/c;->k(Landroid/view/View;)V

    .line 350
    .line 351
    .line 352
    goto :goto_5

    .line 353
    :cond_a
    :goto_4
    invoke-static {v2}, Luf/c;->h(Landroid/view/View;)V

    .line 354
    .line 355
    .line 356
    :goto_5
    sget v2, Lcom/transsion/search/R$id;->search_result_provider_subject_title:I

    .line 357
    .line 358
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/search/fragment/result/ResultWrapData;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 359
    .line 360
    .line 361
    move-result-object v3

    .line 362
    if-eqz v3, :cond_b

    .line 363
    .line 364
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v3

    .line 368
    goto :goto_6

    .line 369
    :cond_b
    move-object v3, v4

    .line 370
    :goto_6
    invoke-virtual {v0, v2, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 371
    .line 372
    .line 373
    sget v2, Lcom/transsion/search/R$id;->search_result_provider_subject_play:I

    .line 374
    .line 375
    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 376
    .line 377
    .line 378
    move-result-object v2

    .line 379
    check-cast v2, Landroid/widget/ImageView;

    .line 380
    .line 381
    new-instance v3, Lzp/e;

    .line 382
    .line 383
    move-object/from16 v7, p0

    .line 384
    .line 385
    invoke-direct {v3, v1, v2, v7, v0}, Lzp/e;-><init>(Lcom/transsion/search/fragment/result/ResultWrapData;Landroid/widget/ImageView;Lzp/f;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    .line 390
    .line 391
    sget-object v3, Lij/t;->a:Lij/t;

    .line 392
    .line 393
    invoke-virtual {v3}, Lij/t;->b()Z

    .line 394
    .line 395
    .line 396
    move-result v8

    .line 397
    const/4 v9, 0x4

    .line 398
    const/4 v10, 0x0

    .line 399
    if-eqz v8, :cond_c

    .line 400
    .line 401
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/search/fragment/result/ResultWrapData;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 402
    .line 403
    .line 404
    move-result-object v8

    .line 405
    if-eqz v8, :cond_c

    .line 406
    .line 407
    invoke-virtual {v8}, Lcom/transsion/moviedetailapi/bean/Subject;->isJumpBrowser()Z

    .line 408
    .line 409
    .line 410
    move-result v8

    .line 411
    if-ne v8, v5, :cond_c

    .line 412
    .line 413
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 414
    .line 415
    .line 416
    sget v3, Lcom/transsion/search/R$drawable;->ic_result_arrow:I

    .line 417
    .line 418
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 419
    .line 420
    .line 421
    goto :goto_7

    .line 422
    :cond_c
    invoke-virtual {v3}, Lij/t;->b()Z

    .line 423
    .line 424
    .line 425
    move-result v8

    .line 426
    if-nez v8, :cond_d

    .line 427
    .line 428
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/search/fragment/result/ResultWrapData;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 429
    .line 430
    .line 431
    move-result-object v8

    .line 432
    if-eqz v8, :cond_d

    .line 433
    .line 434
    invoke-virtual {v8}, Lcom/transsion/moviedetailapi/bean/Subject;->isJumpBrowser()Z

    .line 435
    .line 436
    .line 437
    move-result v8

    .line 438
    if-ne v8, v5, :cond_d

    .line 439
    .line 440
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 441
    .line 442
    .line 443
    goto :goto_7

    .line 444
    :cond_d
    invoke-virtual {v3}, Lij/t;->b()Z

    .line 445
    .line 446
    .line 447
    move-result v3

    .line 448
    if-eqz v3, :cond_e

    .line 449
    .line 450
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/search/fragment/result/ResultWrapData;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 451
    .line 452
    .line 453
    move-result-object v3

    .line 454
    if-eqz v3, :cond_e

    .line 455
    .line 456
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Subject;->isShortTV()Z

    .line 457
    .line 458
    .line 459
    move-result v3

    .line 460
    if-nez v3, :cond_e

    .line 461
    .line 462
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 463
    .line 464
    .line 465
    sget v3, Lcom/transsion/search/R$drawable;->ic_result_play:I

    .line 466
    .line 467
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 468
    .line 469
    .line 470
    goto :goto_7

    .line 471
    :cond_e
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 472
    .line 473
    .line 474
    sget v3, Lcom/transsion/search/R$drawable;->ic_result_download:I

    .line 475
    .line 476
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 477
    .line 478
    .line 479
    :goto_7
    new-instance v2, Landroid/text/SpannableStringBuilder;

    .line 480
    .line 481
    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 482
    .line 483
    .line 484
    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 485
    .line 486
    .line 487
    move-result-object v3

    .line 488
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/search/fragment/result/ResultWrapData;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 489
    .line 490
    .line 491
    move-result-object v8

    .line 492
    if-eqz v8, :cond_f

    .line 493
    .line 494
    invoke-virtual {v8}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 495
    .line 496
    .line 497
    move-result-object v8

    .line 498
    goto :goto_8

    .line 499
    :cond_f
    move-object v8, v4

    .line 500
    :goto_8
    invoke-static {v8}, Lcom/transsion/moviedetailapi/h;->a(Ljava/lang/Integer;)I

    .line 501
    .line 502
    .line 503
    move-result v8

    .line 504
    invoke-static {v3, v8}, Lcom/transsion/search/f;->a(Landroid/content/Context;I)Landroid/text/style/ImageSpan;

    .line 505
    .line 506
    .line 507
    move-result-object v3

    .line 508
    const-string v8, "\ufffc"

    .line 509
    .line 510
    invoke-virtual {v2, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 511
    .line 512
    .line 513
    const/16 v11, 0x21

    .line 514
    .line 515
    invoke-virtual {v2, v3, v10, v5, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {v2, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 519
    .line 520
    .line 521
    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 522
    .line 523
    .line 524
    move-result-object v3

    .line 525
    invoke-static {v3}, Lcom/transsion/search/f;->b(Landroid/content/Context;)Landroid/text/style/ImageSpan;

    .line 526
    .line 527
    .line 528
    move-result-object v3

    .line 529
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 530
    .line 531
    .line 532
    move-result v12

    .line 533
    sub-int/2addr v12, v5

    .line 534
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 535
    .line 536
    .line 537
    move-result v13

    .line 538
    invoke-virtual {v2, v3, v12, v13, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 539
    .line 540
    .line 541
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/search/fragment/result/ResultWrapData;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 542
    .line 543
    .line 544
    move-result-object v3

    .line 545
    if-eqz v3, :cond_10

    .line 546
    .line 547
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Subject;->getImdbRate()Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v3

    .line 551
    goto :goto_9

    .line 552
    :cond_10
    move-object v3, v4

    .line 553
    :goto_9
    if-eqz v3, :cond_12

    .line 554
    .line 555
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/search/fragment/result/ResultWrapData;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 556
    .line 557
    .line 558
    move-result-object v3

    .line 559
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Subject;->isMusicType()Z

    .line 560
    .line 561
    .line 562
    move-result v3

    .line 563
    if-nez v3, :cond_12

    .line 564
    .line 565
    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 566
    .line 567
    .line 568
    move-result-object v3

    .line 569
    sget v12, Lcom/transsion/search/R$drawable;->ic_search_result_star:I

    .line 570
    .line 571
    invoke-static {v3, v12}, Lcom/transsion/search/f;->a(Landroid/content/Context;I)Landroid/text/style/ImageSpan;

    .line 572
    .line 573
    .line 574
    move-result-object v3

    .line 575
    invoke-virtual {v2, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 576
    .line 577
    .line 578
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 579
    .line 580
    .line 581
    move-result v12

    .line 582
    sub-int/2addr v12, v5

    .line 583
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 584
    .line 585
    .line 586
    move-result v13

    .line 587
    invoke-virtual {v2, v3, v12, v13, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 588
    .line 589
    .line 590
    const-string v3, " "

    .line 591
    .line 592
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 593
    .line 594
    .line 595
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/search/fragment/result/ResultWrapData;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 596
    .line 597
    .line 598
    move-result-object v3

    .line 599
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Subject;->getImdbRate()Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object v3

    .line 603
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 604
    .line 605
    .line 606
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    .line 607
    .line 608
    sget v12, Lcom/tn/lib/widget/R$color;->yellow_60:I

    .line 609
    .line 610
    invoke-static {v12}, Lcom/blankj/utilcode/util/h;->a(I)I

    .line 611
    .line 612
    .line 613
    move-result v12

    .line 614
    invoke-direct {v3, v12}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 615
    .line 616
    .line 617
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/search/fragment/result/ResultWrapData;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 618
    .line 619
    .line 620
    move-result-object v12

    .line 621
    invoke-virtual {v12}, Lcom/transsion/moviedetailapi/bean/Subject;->getImdbRate()Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object v12

    .line 625
    if-eqz v12, :cond_11

    .line 626
    .line 627
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 628
    .line 629
    .line 630
    move-result v12

    .line 631
    goto :goto_a

    .line 632
    :cond_11
    move v12, v10

    .line 633
    :goto_a
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 634
    .line 635
    .line 636
    move-result v13

    .line 637
    sub-int/2addr v13, v12

    .line 638
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 639
    .line 640
    .line 641
    move-result v12

    .line 642
    invoke-virtual {v2, v3, v13, v12, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 643
    .line 644
    .line 645
    invoke-virtual {v2, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 646
    .line 647
    .line 648
    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 649
    .line 650
    .line 651
    move-result-object v3

    .line 652
    invoke-static {v3}, Lcom/transsion/search/f;->b(Landroid/content/Context;)Landroid/text/style/ImageSpan;

    .line 653
    .line 654
    .line 655
    move-result-object v3

    .line 656
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 657
    .line 658
    .line 659
    move-result v12

    .line 660
    sub-int/2addr v12, v5

    .line 661
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 662
    .line 663
    .line 664
    move-result v13

    .line 665
    invoke-virtual {v2, v3, v12, v13, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 666
    .line 667
    .line 668
    :cond_12
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/search/fragment/result/ResultWrapData;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 669
    .line 670
    .line 671
    move-result-object v3

    .line 672
    if-eqz v3, :cond_13

    .line 673
    .line 674
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Subject;->getReleaseDate()Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object v3

    .line 678
    goto :goto_b

    .line 679
    :cond_13
    move-object v3, v4

    .line 680
    :goto_b
    if-eqz v3, :cond_16

    .line 681
    .line 682
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/search/fragment/result/ResultWrapData;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 683
    .line 684
    .line 685
    move-result-object v3

    .line 686
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Subject;->getReleaseDate()Ljava/lang/String;

    .line 687
    .line 688
    .line 689
    move-result-object v3

    .line 690
    if-nez v3, :cond_14

    .line 691
    .line 692
    goto :goto_c

    .line 693
    :cond_14
    move-object v6, v3

    .line 694
    :goto_c
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 695
    .line 696
    .line 697
    move-result v3

    .line 698
    if-lt v3, v9, :cond_15

    .line 699
    .line 700
    invoke-virtual {v6, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 701
    .line 702
    .line 703
    move-result-object v6

    .line 704
    const-string v3, "substring(...)"

    .line 705
    .line 706
    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 707
    .line 708
    .line 709
    :cond_15
    invoke-virtual {v2, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 710
    .line 711
    .line 712
    invoke-virtual {v2, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 713
    .line 714
    .line 715
    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 716
    .line 717
    .line 718
    move-result-object v3

    .line 719
    invoke-static {v3}, Lcom/transsion/search/f;->b(Landroid/content/Context;)Landroid/text/style/ImageSpan;

    .line 720
    .line 721
    .line 722
    move-result-object v3

    .line 723
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 724
    .line 725
    .line 726
    move-result v6

    .line 727
    sub-int/2addr v6, v5

    .line 728
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 729
    .line 730
    .line 731
    move-result v9

    .line 732
    invoke-virtual {v2, v3, v6, v9, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 733
    .line 734
    .line 735
    :cond_16
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/search/fragment/result/ResultWrapData;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 736
    .line 737
    .line 738
    move-result-object v3

    .line 739
    if-eqz v3, :cond_17

    .line 740
    .line 741
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Subject;->getCountryName()Ljava/lang/String;

    .line 742
    .line 743
    .line 744
    move-result-object v3

    .line 745
    goto :goto_d

    .line 746
    :cond_17
    move-object v3, v4

    .line 747
    :goto_d
    if-eqz v3, :cond_18

    .line 748
    .line 749
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/search/fragment/result/ResultWrapData;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 750
    .line 751
    .line 752
    move-result-object v3

    .line 753
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Subject;->getCountryName()Ljava/lang/String;

    .line 754
    .line 755
    .line 756
    move-result-object v3

    .line 757
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 758
    .line 759
    .line 760
    invoke-virtual {v2, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 761
    .line 762
    .line 763
    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 764
    .line 765
    .line 766
    move-result-object v3

    .line 767
    invoke-static {v3}, Lcom/transsion/search/f;->b(Landroid/content/Context;)Landroid/text/style/ImageSpan;

    .line 768
    .line 769
    .line 770
    move-result-object v3

    .line 771
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 772
    .line 773
    .line 774
    move-result v6

    .line 775
    sub-int/2addr v6, v5

    .line 776
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 777
    .line 778
    .line 779
    move-result v8

    .line 780
    invoke-virtual {v2, v3, v6, v8, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 781
    .line 782
    .line 783
    :cond_18
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/search/fragment/result/ResultWrapData;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 784
    .line 785
    .line 786
    move-result-object v3

    .line 787
    if-eqz v3, :cond_19

    .line 788
    .line 789
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Subject;->getGenre()Ljava/lang/String;

    .line 790
    .line 791
    .line 792
    move-result-object v4

    .line 793
    :cond_19
    if-eqz v4, :cond_1c

    .line 794
    .line 795
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/search/fragment/result/ResultWrapData;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 796
    .line 797
    .line 798
    move-result-object v3

    .line 799
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Subject;->getGenre()Ljava/lang/String;

    .line 800
    .line 801
    .line 802
    move-result-object v11

    .line 803
    if-eqz v11, :cond_1a

    .line 804
    .line 805
    const-string v3, ","

    .line 806
    .line 807
    filled-new-array {v3}, [Ljava/lang/String;

    .line 808
    .line 809
    .line 810
    move-result-object v12

    .line 811
    const/4 v15, 0x6

    .line 812
    const/16 v16, 0x0

    .line 813
    .line 814
    const/4 v13, 0x0

    .line 815
    const/4 v14, 0x0

    .line 816
    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 817
    .line 818
    .line 819
    move-result-object v3

    .line 820
    if-nez v3, :cond_1b

    .line 821
    .line 822
    :cond_1a
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 823
    .line 824
    .line 825
    move-result-object v3

    .line 826
    :cond_1b
    move-object v4, v3

    .line 827
    check-cast v4, Ljava/util/Collection;

    .line 828
    .line 829
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 830
    .line 831
    .line 832
    move-result v4

    .line 833
    if-nez v4, :cond_1c

    .line 834
    .line 835
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 836
    .line 837
    .line 838
    move-result-object v3

    .line 839
    check-cast v3, Ljava/lang/CharSequence;

    .line 840
    .line 841
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 842
    .line 843
    .line 844
    :cond_1c
    sget v3, Lcom/transsion/search/R$id;->search_result_provider_subject_brief:I

    .line 845
    .line 846
    invoke-virtual {v0, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 847
    .line 848
    .line 849
    move-result-object v3

    .line 850
    check-cast v3, Landroid/widget/TextView;

    .line 851
    .line 852
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 853
    .line 854
    .line 855
    sget v2, Lcom/transsion/search/R$id;->search_result_provider_subject_website:I

    .line 856
    .line 857
    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 858
    .line 859
    .line 860
    move-result-object v0

    .line 861
    check-cast v0, Landroid/widget/TextView;

    .line 862
    .line 863
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/search/fragment/result/ResultWrapData;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 864
    .line 865
    .line 866
    move-result-object v1

    .line 867
    if-eqz v1, :cond_1d

    .line 868
    .line 869
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Subject;->isJumpBrowser()Z

    .line 870
    .line 871
    .line 872
    move-result v1

    .line 873
    if-ne v1, v5, :cond_1d

    .line 874
    .line 875
    goto :goto_e

    .line 876
    :cond_1d
    const/16 v10, 0x8

    .line 877
    .line 878
    :goto_e
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 879
    .line 880
    .line 881
    return-void
.end method
