.class public final Lsp/d;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "source.java"


# instance fields
.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    .line 7
    .line 8
    .line 9
    const/high16 v0, 0x42d00000    # 104.0f

    .line 10
    .line 11
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput v0, p0, Lsp/d;->e:I

    .line 16
    .line 17
    const/high16 v1, 0x43150000    # 149.0f

    .line 18
    .line 19
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iput v1, p0, Lsp/d;->f:I

    .line 24
    .line 25
    const/high16 v2, 0x42400000    # 48.0f

    .line 26
    .line 27
    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    iput v2, p0, Lsp/d;->g:I

    .line 32
    .line 33
    sget-object v3, Lzg/h;->a:Lzg/h;

    .line 34
    .line 35
    invoke-virtual {v3, p1}, Lzg/h;->e(Landroid/content/Context;)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    iput p1, p0, Lsp/d;->h:I

    .line 40
    .line 41
    sub-int/2addr p1, v2

    .line 42
    div-int/lit8 p1, p1, 0x3

    .line 43
    .line 44
    iput p1, p0, Lsp/d;->i:I

    .line 45
    .line 46
    int-to-float p1, p1

    .line 47
    int-to-float v1, v1

    .line 48
    const/high16 v2, 0x3f800000    # 1.0f

    .line 49
    .line 50
    mul-float/2addr v1, v2

    .line 51
    int-to-float v0, v0

    .line 52
    div-float/2addr v1, v0

    .line 53
    mul-float/2addr p1, v1

    .line 54
    float-to-int p1, p1

    .line 55
    iput p1, p0, Lsp/d;->j:I

    .line 56
    .line 57
    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/search/bean/SearchSubject;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lsp/d;->y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/search/bean/SearchSubject;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public m()I
    .locals 1

    .line 1
    sget v0, Lcom/transsion/search/R$layout;->item_works_layout_vertical:I

    .line 2
    .line 3
    return v0
.end method

.method public y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/search/bean/SearchSubject;)V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "helper"

    .line 4
    .line 5
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v2, "item"

    .line 9
    .line 10
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 20
    .line 21
    sget v4, Lcom/transsion/search/R$id;->ivCover:I

    .line 22
    .line 23
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Landroid/widget/ImageView;

    .line 28
    .line 29
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    const-string v5, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    .line 34
    .line 35
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 39
    .line 40
    iget v5, p0, Lsp/d;->j:I

    .line 41
    .line 42
    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 43
    .line 44
    iget v5, p0, Lsp/d;->i:I

    .line 45
    .line 46
    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 47
    .line 48
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    if-eqz v4, :cond_2

    .line 53
    .line 54
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    if-eqz v4, :cond_2

    .line 59
    .line 60
    sget-object v5, Lni/f;->a:Lni/f$a;

    .line 61
    .line 62
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5, v2}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-virtual {v5, v4}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    iget v5, p0, Lsp/d;->i:I

    .line 74
    .line 75
    invoke-virtual {v4, v5}, Lni/f$b;->m(I)Lni/f$b;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    iget v5, p0, Lsp/d;->j:I

    .line 80
    .line 81
    invoke-virtual {v4, v5}, Lni/f$b;->c(I)Lni/f$b;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    if-eqz v5, :cond_0

    .line 90
    .line 91
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    if-nez v5, :cond_1

    .line 96
    .line 97
    :cond_0
    const-string v5, ""

    .line 98
    .line 99
    :cond_1
    invoke-virtual {v4, v5}, Lni/f$b;->l(Ljava/lang/String;)Lni/f$b;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4, v3}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 107
    .line 108
    .line 109
    :cond_2
    sget v3, Lcom/transsion/search/R$id;->tvSubject:I

    .line 110
    .line 111
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    invoke-virtual {p1, v3, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 116
    .line 117
    .line 118
    sget v3, Lcom/transsion/search/R$id;->tvSubjectYear:I

    .line 119
    .line 120
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    check-cast v3, Landroidx/appcompat/widget/AppCompatTextView;

    .line 125
    .line 126
    const/4 v4, 0x2

    .line 127
    if-eqz v3, :cond_9

    .line 128
    .line 129
    new-instance v5, Landroid/text/SpannableStringBuilder;

    .line 130
    .line 131
    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    const-string v6, "  "

    .line 135
    .line 136
    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getReleaseDate()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v6

    .line 143
    if-eqz v6, :cond_4

    .line 144
    .line 145
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    if-nez v6, :cond_3

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_3
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getReleaseDate()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    const-string v7, "yyyy-MM-dd"

    .line 157
    .line 158
    invoke-static {v6, v7}, Lcom/blankj/utilcode/util/c0;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 163
    .line 164
    .line 165
    move-result-object v7

    .line 166
    invoke-virtual {v7, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v7, v1}, Ljava/util/Calendar;->get(I)I

    .line 170
    .line 171
    .line 172
    move-result v6

    .line 173
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 178
    .line 179
    .line 180
    :cond_4
    :goto_0
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getGenre()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v6

    .line 184
    const-string v7, ","

    .line 185
    .line 186
    invoke-static {v6, v7}, Lcom/blankj/utilcode/util/u;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v6

    .line 190
    const-string v7, " / "

    .line 191
    .line 192
    if-eqz v6, :cond_5

    .line 193
    .line 194
    array-length v8, v6

    .line 195
    move v9, v0

    .line 196
    :goto_1
    if-ge v9, v8, :cond_5

    .line 197
    .line 198
    aget-object v10, v6, v9

    .line 199
    .line 200
    invoke-virtual {v5, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 201
    .line 202
    .line 203
    move-result-object v11

    .line 204
    invoke-virtual {v11, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 205
    .line 206
    .line 207
    add-int/2addr v9, v1

    .line 208
    goto :goto_1

    .line 209
    :cond_5
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCountryName()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v6

    .line 213
    if-eqz v6, :cond_7

    .line 214
    .line 215
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 216
    .line 217
    .line 218
    move-result v6

    .line 219
    if-nez v6, :cond_6

    .line 220
    .line 221
    goto :goto_2

    .line 222
    :cond_6
    invoke-virtual {v5, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 223
    .line 224
    .line 225
    move-result-object v6

    .line 226
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCountryName()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v7

    .line 230
    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 231
    .line 232
    .line 233
    :cond_7
    :goto_2
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 234
    .line 235
    .line 236
    move-result-object v6

    .line 237
    invoke-static {v6}, Lcom/transsion/moviedetailapi/h;->a(Ljava/lang/Integer;)I

    .line 238
    .line 239
    .line 240
    move-result v6

    .line 241
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 242
    .line 243
    const/16 v8, 0x1d

    .line 244
    .line 245
    if-lt v7, v8, :cond_8

    .line 246
    .line 247
    new-instance v7, Landroid/text/style/ImageSpan;

    .line 248
    .line 249
    invoke-direct {v7, v2, v6, v4}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    .line 250
    .line 251
    .line 252
    goto :goto_3

    .line 253
    :cond_8
    new-instance v7, Landroid/text/style/ImageSpan;

    .line 254
    .line 255
    invoke-direct {v7, v2, v6, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    .line 256
    .line 257
    .line 258
    :goto_3
    const/16 v6, 0x22

    .line 259
    .line 260
    invoke-virtual {v5, v7, v0, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    .line 265
    .line 266
    :cond_9
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSeNum()Ljava/lang/Integer;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    if-eqz v3, :cond_a

    .line 271
    .line 272
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 273
    .line 274
    .line 275
    move-result v3

    .line 276
    goto :goto_4

    .line 277
    :cond_a
    move v3, v0

    .line 278
    :goto_4
    sget v5, Lcom/transsion/search/R$id;->tvSeasons:I

    .line 279
    .line 280
    if-ge v3, v4, :cond_b

    .line 281
    .line 282
    move v4, v1

    .line 283
    goto :goto_5

    .line 284
    :cond_b
    move v4, v0

    .line 285
    :goto_5
    invoke-virtual {p1, v5, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 286
    .line 287
    .line 288
    sget v4, Lcom/transsion/search/R$id;->tvSeasons:I

    .line 289
    .line 290
    sget v5, Lcom/transsion/search/R$string;->seasons:I

    .line 291
    .line 292
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    new-array v1, v1, [Ljava/lang/Object;

    .line 297
    .line 298
    aput-object v3, v1, v0

    .line 299
    .line 300
    invoke-virtual {v2, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    invoke-virtual {p1, v4, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 305
    .line 306
    .line 307
    sget v0, Lcom/transsion/search/R$id;->ivSearchCorner:I

    .line 308
    .line 309
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 310
    .line 311
    .line 312
    move-result-object p1

    .line 313
    check-cast p1, Lcom/tn/lib/view/CornerTextView;

    .line 314
    .line 315
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCorner()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 320
    .line 321
    .line 322
    move-result-object p2

    .line 323
    invoke-virtual {p1, v0, p2}, Lcom/tn/lib/view/CornerTextView;->setTextWithType(Ljava/lang/CharSequence;Ljava/lang/Integer;)V

    .line 324
    .line 325
    .line 326
    return-void
.end method
