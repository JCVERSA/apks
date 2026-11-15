.class public final Lcom/transsion/home/adapter/trending/provider/SubjectSingleImgItemProvider;
.super Lcom/transsion/home/adapter/trending/provider/b;
.source "source.java"


# instance fields
.field private final e:Z

.field private final f:I

.field private final g:D

.field private h:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/transsion/home/adapter/trending/provider/b;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/transsion/home/adapter/trending/provider/SubjectSingleImgItemProvider;->e:Z

    .line 5
    .line 6
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-static {}, Lcom/blankj/utilcode/util/y;->c()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iput p1, p0, Lcom/transsion/home/adapter/trending/provider/SubjectSingleImgItemProvider;->f:I

    .line 19
    .line 20
    int-to-double v0, p1

    .line 21
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 22
    .line 23
    mul-double/2addr v0, v2

    .line 24
    iput-wide v0, p0, Lcom/transsion/home/adapter/trending/provider/SubjectSingleImgItemProvider;->g:D

    .line 25
    .line 26
    return-void
.end method

.method public static synthetic D(Lcom/transsion/moviedetailapi/bean/Subject;ZZJ)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/home/adapter/trending/provider/SubjectSingleImgItemProvider;->F(Lcom/transsion/moviedetailapi/bean/Subject;ZZJ)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final F(Lcom/transsion/moviedetailapi/bean/Subject;ZZJ)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/moviedetailapi/bean/Subject;->setLoadCoverSuccess(Z)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p2}, Lcom/transsion/moviedetailapi/bean/Subject;->setCoverCache(Z)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p3, p4}, Lcom/transsion/moviedetailapi/bean/Subject;->setLoadCoverDuration(J)V

    .line 8
    .line 9
    .line 10
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method

.method private final G(I)Ljava/lang/String;
    .locals 5

    .line 1
    div-int/lit16 v0, p1, 0xe10

    .line 2
    .line 3
    rem-int/lit16 v1, p1, 0xe10

    .line 4
    .line 5
    div-int/lit8 v1, v1, 0x3c

    .line 6
    .line 7
    rem-int/lit8 p1, p1, 0x3c

    .line 8
    .line 9
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 10
    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 v2, 0x3

    .line 24
    new-array v3, v2, [Ljava/lang/Object;

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    aput-object v0, v3, v4

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    aput-object v1, v3, v0

    .line 31
    .line 32
    const/4 v0, 0x2

    .line 33
    aput-object p1, v3, v0

    .line 34
    .line 35
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string v0, "%02d:%02d:%02d"

    .line 40
    .line 41
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string v0, "format(...)"

    .line 46
    .line 47
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-object p1
.end method


# virtual methods
.method public E(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V
    .locals 13

    .line 1
    const-string v0, "helper"

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
    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getFeedsSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    if-eqz p2, :cond_1d

    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_1d

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    goto/16 :goto_d

    .line 30
    .line 31
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/home/adapter/trending/provider/SubjectSingleImgItemProvider;->e:Z

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    sget v0, Lcom/transsion/home/R$id;->cl_cover:I

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const/16 v2, 0x7a

    .line 50
    .line 51
    invoke-static {v2}, Llj/a;->b(I)I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 56
    .line 57
    iget-wide v2, p0, Lcom/transsion/home/adapter/trending/provider/SubjectSingleImgItemProvider;->g:D

    .line 58
    .line 59
    double-to-int v2, v2

    .line 60
    const/16 v3, 0x24

    .line 61
    .line 62
    invoke-static {v3}, Llj/a;->b(I)I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    sub-int/2addr v2, v3

    .line 67
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    sget v0, Lcom/transsion/home/R$id;->iv_cover:I

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 79
    .line 80
    const/4 v1, 0x0

    .line 81
    if-eqz v0, :cond_7

    .line 82
    .line 83
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getBuiltIn()Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-eqz v2, :cond_2

    .line 88
    .line 89
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-static {v2}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    new-instance v6, Lcom/transsion/home/adapter/trending/provider/SubjectSingleImgItemProvider$convert$2$1;

    .line 98
    .line 99
    invoke-direct {v6, p2, v0, v1}, Lcom/transsion/home/adapter/trending/provider/SubjectSingleImgItemProvider$convert$2$1;-><init>(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/google/android/material/imageview/ShapeableImageView;Lkotlin/coroutines/Continuation;)V

    .line 100
    .line 101
    .line 102
    const/4 v7, 0x3

    .line 103
    const/4 v8, 0x0

    .line 104
    const/4 v4, 0x0

    .line 105
    const/4 v5, 0x0

    .line 106
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_2
    sget-object v2, Lni/f;->a:Lni/f$a;

    .line 111
    .line 112
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    const-string v4, "getContext(...)"

    .line 117
    .line 118
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, v3}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    const-string v4, ""

    .line 130
    .line 131
    if-eqz v3, :cond_3

    .line 132
    .line 133
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    if-nez v3, :cond_4

    .line 138
    .line 139
    :cond_3
    move-object v3, v4

    .line 140
    :cond_4
    invoke-virtual {v2, v3}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    if-eqz v3, :cond_6

    .line 149
    .line 150
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    if-nez v3, :cond_5

    .line 155
    .line 156
    goto :goto_0

    .line 157
    :cond_5
    move-object v4, v3

    .line 158
    :cond_6
    :goto_0
    invoke-virtual {v2, v4}, Lni/f$b;->l(Ljava/lang/String;)Lni/f$b;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    sget v3, Lcom/tn/lib/widget/R$color;->skeleton:I

    .line 163
    .line 164
    invoke-virtual {v2, v3}, Lni/f$b;->i(I)Lni/f$b;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    iget v3, p0, Lcom/transsion/home/adapter/trending/provider/SubjectSingleImgItemProvider;->f:I

    .line 169
    .line 170
    invoke-virtual {v2, v3}, Lni/f$b;->m(I)Lni/f$b;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    new-instance v3, Lcom/transsion/home/adapter/trending/provider/k0;

    .line 175
    .line 176
    invoke-direct {v3, p2}, Lcom/transsion/home/adapter/trending/provider/k0;-><init>(Lcom/transsion/moviedetailapi/bean/Subject;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2, v3}, Lni/f$b;->b(Lkotlin/jvm/functions/Function3;)Lni/f$b;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    invoke-virtual {v2, v0}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 184
    .line 185
    .line 186
    :cond_7
    :goto_1
    sget v0, Lcom/transsion/home/R$id;->ic_player:I

    .line 187
    .line 188
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 193
    .line 194
    if-eqz v0, :cond_9

    .line 195
    .line 196
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getTrailer()Lcom/transsion/moviedetailapi/bean/Trailer;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    if-nez v2, :cond_8

    .line 201
    .line 202
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 203
    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_8
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 207
    .line 208
    .line 209
    :cond_9
    :goto_2
    sget v0, Lcom/transsion/home/R$id;->tv_subject:I

    .line 210
    .line 211
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    invoke-virtual {p1, v0, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    sget-object v2, Lcom/transsion/moviedetailapi/SubjectType;->MUSIC:Lcom/transsion/moviedetailapi/SubjectType;

    .line 223
    .line 224
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    const/4 v3, 0x0

    .line 229
    if-nez v0, :cond_a

    .line 230
    .line 231
    goto :goto_3

    .line 232
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    if-eq v0, v2, :cond_d

    .line 237
    .line 238
    :goto_3
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    sget-object v2, Lcom/transsion/moviedetailapi/SubjectType;->AUDIO:Lcom/transsion/moviedetailapi/SubjectType;

    .line 243
    .line 244
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    if-nez v0, :cond_b

    .line 249
    .line 250
    goto :goto_4

    .line 251
    :cond_b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    if-eq v0, v2, :cond_d

    .line 256
    .line 257
    :goto_4
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    sget-object v2, Lcom/transsion/moviedetailapi/SubjectType;->EDUCATION:Lcom/transsion/moviedetailapi/SubjectType;

    .line 262
    .line 263
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 264
    .line 265
    .line 266
    move-result v2

    .line 267
    if-nez v0, :cond_c

    .line 268
    .line 269
    goto :goto_6

    .line 270
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 271
    .line 272
    .line 273
    move-result v0

    .line 274
    if-ne v0, v2, :cond_f

    .line 275
    .line 276
    :cond_d
    sget v0, Lcom/transsion/home/R$id;->tv_score:I

    .line 277
    .line 278
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    invoke-static {v0}, Luf/c;->h(Landroid/view/View;)V

    .line 283
    .line 284
    .line 285
    sget v0, Lcom/transsion/home/R$id;->tv_duration:I

    .line 286
    .line 287
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    check-cast v0, Landroid/widget/TextView;

    .line 292
    .line 293
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getDurationSeconds()Ljava/lang/Integer;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    if-eqz v2, :cond_e

    .line 301
    .line 302
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 303
    .line 304
    .line 305
    move-result v2

    .line 306
    goto :goto_5

    .line 307
    :cond_e
    move v2, v3

    .line 308
    :goto_5
    invoke-direct {p0, v2}, Lcom/transsion/home/adapter/trending/provider/SubjectSingleImgItemProvider;->G(I)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    .line 314
    .line 315
    :cond_f
    :goto_6
    sget v0, Lcom/transsion/home/R$id;->tv_tips:I

    .line 316
    .line 317
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    check-cast v0, Lcom/tn/lib/view/CornerTextView;

    .line 322
    .line 323
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCorner()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 328
    .line 329
    .line 330
    move-result-object v4

    .line 331
    invoke-virtual {v0, v2, v4}, Lcom/tn/lib/view/CornerTextView;->setTextWithType(Ljava/lang/CharSequence;Ljava/lang/Integer;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getReleaseDate()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    const-string v2, "yyyy-MM-dd"

    .line 339
    .line 340
    invoke-static {v0, v2}, Lcom/blankj/utilcode/util/c0;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 345
    .line 346
    .line 347
    move-result-object v2

    .line 348
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 349
    .line 350
    .line 351
    sget v0, Lcom/transsion/home/R$id;->tv_subject_year:I

    .line 352
    .line 353
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    .line 358
    .line 359
    const/4 v4, 0x1

    .line 360
    if-eqz v0, :cond_16

    .line 361
    .line 362
    new-instance v5, Landroid/text/SpannableStringBuilder;

    .line 363
    .line 364
    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    .line 368
    .line 369
    .line 370
    move-result v2

    .line 371
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v2

    .line 375
    invoke-virtual {v5, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCountryName()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    const-string v6, " \u2022 "

    .line 383
    .line 384
    if-eqz v2, :cond_11

    .line 385
    .line 386
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 387
    .line 388
    .line 389
    move-result v2

    .line 390
    if-nez v2, :cond_10

    .line 391
    .line 392
    goto :goto_7

    .line 393
    :cond_10
    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 394
    .line 395
    .line 396
    move-result-object v2

    .line 397
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCountryName()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v7

    .line 401
    invoke-virtual {v2, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 402
    .line 403
    .line 404
    :cond_11
    :goto_7
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getGenre()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v2

    .line 408
    if-eqz v2, :cond_14

    .line 409
    .line 410
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 411
    .line 412
    .line 413
    move-result v2

    .line 414
    if-nez v2, :cond_12

    .line 415
    .line 416
    goto :goto_9

    .line 417
    :cond_12
    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 418
    .line 419
    .line 420
    move-result-object v2

    .line 421
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getGenre()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v6

    .line 425
    if-eqz v6, :cond_13

    .line 426
    .line 427
    const/4 v10, 0x4

    .line 428
    const/4 v11, 0x0

    .line 429
    const-string v7, "\uff0c"

    .line 430
    .line 431
    const-string v8, " \u2022 "

    .line 432
    .line 433
    const/4 v9, 0x0

    .line 434
    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v6

    .line 438
    goto :goto_8

    .line 439
    :cond_13
    move-object v6, v1

    .line 440
    :goto_8
    invoke-virtual {v2, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 441
    .line 442
    .line 443
    :cond_14
    :goto_9
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v2

    .line 447
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 451
    .line 452
    .line 453
    move-result-object v2

    .line 454
    invoke-static {v2}, Lcom/transsion/moviedetailapi/h;->a(Ljava/lang/Integer;)I

    .line 455
    .line 456
    .line 457
    move-result v2

    .line 458
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 459
    .line 460
    .line 461
    move-result-object v5

    .line 462
    invoke-static {v5, v2}, Landroidx/core/content/b;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 463
    .line 464
    .line 465
    move-result-object v2

    .line 466
    if-eqz v2, :cond_15

    .line 467
    .line 468
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 469
    .line 470
    .line 471
    move-result-object v5

    .line 472
    sget v6, Lcom/tn/lib/widget/R$color;->gray_40:I

    .line 473
    .line 474
    invoke-static {v5, v6}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 475
    .line 476
    .line 477
    move-result v5

    .line 478
    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 479
    .line 480
    .line 481
    :cond_15
    invoke-virtual {v0, v2, v1, v1, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 482
    .line 483
    .line 484
    :cond_16
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getHasResource()Ljava/lang/Boolean;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 489
    .line 490
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 491
    .line 492
    .line 493
    move-result v0

    .line 494
    if-eqz v0, :cond_1b

    .line 495
    .line 496
    sget v0, Lcom/transsion/home/R$id;->ll_download:I

    .line 497
    .line 498
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 499
    .line 500
    .line 501
    move-result-object v0

    .line 502
    move-object v5, v0

    .line 503
    check-cast v5, Lcom/transsnet/downloader/widget/DownloadView;

    .line 504
    .line 505
    if-eqz v5, :cond_1c

    .line 506
    .line 507
    invoke-static {v5}, Luf/c;->k(Landroid/view/View;)V

    .line 508
    .line 509
    .line 510
    sget-object v0, Lij/t;->a:Lij/t;

    .line 511
    .line 512
    invoke-virtual {v0}, Lij/t;->b()Z

    .line 513
    .line 514
    .line 515
    move-result v0

    .line 516
    if-eqz v0, :cond_18

    .line 517
    .line 518
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    sget-object v1, Lcom/transsion/moviedetailapi/SubjectType;->SHORT_TV:Lcom/transsion/moviedetailapi/SubjectType;

    .line 523
    .line 524
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 525
    .line 526
    .line 527
    move-result v1

    .line 528
    if-nez v0, :cond_17

    .line 529
    .line 530
    goto :goto_a

    .line 531
    :cond_17
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 532
    .line 533
    .line 534
    move-result v0

    .line 535
    if-eq v0, v1, :cond_18

    .line 536
    .line 537
    :goto_a
    invoke-virtual {v5}, Lcom/transsnet/downloader/widget/DownloadView;->setShowPlayType()V

    .line 538
    .line 539
    .line 540
    goto :goto_c

    .line 541
    :cond_18
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    .line 542
    .line 543
    .line 544
    move-result-object v0

    .line 545
    if-eqz v0, :cond_1c

    .line 546
    .line 547
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v6

    .line 551
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getResourceId()Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v7

    .line 555
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getType()Ljava/lang/Integer;

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    if-nez v0, :cond_19

    .line 560
    .line 561
    goto :goto_b

    .line 562
    :cond_19
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 563
    .line 564
    .line 565
    move-result v0

    .line 566
    if-ne v0, v4, :cond_1a

    .line 567
    .line 568
    move v3, v4

    .line 569
    :cond_1a
    :goto_b
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 570
    .line 571
    .line 572
    move-result-object v8

    .line 573
    const/16 v11, 0x18

    .line 574
    .line 575
    const/4 v12, 0x0

    .line 576
    const/4 v9, 0x0

    .line 577
    const/4 v10, 0x0

    .line 578
    invoke-static/range {v5 .. v12}, Lcom/transsnet/downloader/widget/DownloadView;->setShowType$default(Lcom/transsnet/downloader/widget/DownloadView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ZIILjava/lang/Object;)V

    .line 579
    .line 580
    .line 581
    goto :goto_c

    .line 582
    :cond_1b
    sget v0, Lcom/transsion/home/R$id;->ll_download:I

    .line 583
    .line 584
    invoke-virtual {p1, v0, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 585
    .line 586
    .line 587
    :cond_1c
    :goto_c
    iput-object p1, p0, Lcom/transsion/home/adapter/trending/provider/SubjectSingleImgItemProvider;->h:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 588
    .line 589
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/trending/provider/b;->A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/Subject;)V

    .line 590
    .line 591
    .line 592
    :cond_1d
    :goto_d
    return-void
.end method

.method public final H()Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/home/adapter/trending/provider/SubjectSingleImgItemProvider;->h:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget v1, Lcom/transsion/home/R$id;->ll_download:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/transsnet/downloader/widget/DownloadView;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return-object v0
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/home/bean/OperateItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/trending/provider/SubjectSingleImgItemProvider;->E(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/moviedetailapi/bean/PostItemType;->SINGLE_SUBJECT:Lcom/transsion/moviedetailapi/bean/PostItemType;

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
    sget v0, Lcom/transsion/home/R$layout;->post_list_item_subject_single_img:I

    .line 2
    .line 3
    return v0
.end method
