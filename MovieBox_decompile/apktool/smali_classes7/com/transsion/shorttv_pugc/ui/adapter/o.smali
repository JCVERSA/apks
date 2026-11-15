.class public final Lcom/transsion/shorttv_pugc/ui/adapter/o;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "source.java"

# interfaces
.implements Lt6/i;
.implements Lt6/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lt6/i;",
        "Lt6/l;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u00042\u00020\u0005B\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001f\u0010\u000f\u001a\u00020\u000e2\u000e\u0010\r\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0001H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001f\u0010\u0012\u001a\u00020\u00112\u000e\u0010\r\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0001H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/transsion/shorttv_pugc/ui/adapter/o;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "Lt6/i;",
        "Lt6/l;",
        "<init>",
        "()V",
        "holder",
        "item",
        "",
        "B1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V",
        "baseQuickAdapter",
        "Lt6/f;",
        "b",
        "(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lt6/f;",
        "Lt6/g;",
        "f",
        "(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lt6/g;",
        "shortTvLib_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    sget v0, Lcom/transsion/shorttv/R$layout;->pugc_short_tv_item_episode:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    invoke-direct {p0, v0, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method protected B1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V
    .locals 19

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "holder"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "item"

    .line 9
    .line 10
    move-object/from16 v2, p2

    .line 11
    .line 12
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object v3, Lis/b;->a:Lis/b$a;

    .line 16
    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    sget v1, Lcom/transsion/shorttv/R$id;->iv_cover:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    move-object v5, v1

    .line 28
    check-cast v5, Landroid/widget/ImageView;

    .line 29
    .line 30
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getCover()Lcom/transsion/shorttv_pugc/bean/Cover;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v6, ""

    .line 35
    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/bean/Cover;->getUrl()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-nez v1, :cond_1

    .line 43
    .line 44
    :cond_0
    move-object v1, v6

    .line 45
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getCover()Lcom/transsion/shorttv_pugc/bean/Cover;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    if-eqz v7, :cond_3

    .line 50
    .line 51
    invoke-virtual {v7}, Lcom/transsion/shorttv_pugc/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    if-nez v7, :cond_2

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    move-object v10, v7

    .line 59
    goto :goto_1

    .line 60
    :cond_3
    :goto_0
    move-object v10, v6

    .line 61
    :goto_1
    const/16 v17, 0x1fb8

    .line 62
    .line 63
    const/16 v18, 0x0

    .line 64
    .line 65
    const/4 v7, 0x0

    .line 66
    const/4 v8, 0x0

    .line 67
    const/4 v9, 0x0

    .line 68
    const/4 v11, 0x0

    .line 69
    const/4 v12, 0x0

    .line 70
    const/4 v13, 0x0

    .line 71
    const/4 v14, 0x0

    .line 72
    const/4 v15, 0x0

    .line 73
    const/16 v16, 0x0

    .line 74
    .line 75
    move-object v6, v1

    .line 76
    invoke-static/range {v3 .. v18}, Lis/b$a;->m(Lis/b$a;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIZLjava/lang/String;ZZZZZIILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    sget v1, Lcom/transsion/shorttv/R$id;->tv_title:I

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Landroid/widget/TextView;

    .line 86
    .line 87
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getEpTitle()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    const/4 v4, 0x0

    .line 92
    if-eqz v3, :cond_5

    .line 93
    .line 94
    invoke-static {v3}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    if-nez v5, :cond_4

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_4
    move-object v3, v4

    .line 102
    :goto_2
    if-eqz v3, :cond_5

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getTitle()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    :goto_3
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    .line 111
    .line 112
    sget v1, Lcom/transsion/shorttv/R$id;->tv_duration:I

    .line 113
    .line 114
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getDuration()Ljava/lang/Long;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    if-eqz v3, :cond_6

    .line 119
    .line 120
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 121
    .line 122
    .line 123
    move-result-wide v5

    .line 124
    invoke-static {v5, v6}, Lcom/transsion/shorttv_pugc/utils/ShortTvExtKt;->p(J)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    goto :goto_4

    .line 129
    :cond_6
    move-object v3, v4

    .line 130
    :goto_4
    invoke-virtual {v0, v1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 131
    .line 132
    .line 133
    sget v1, Lcom/transsion/shorttv/R$id;->tv_language:I

    .line 134
    .line 135
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getCorner()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-virtual {v0, v1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 140
    .line 141
    .line 142
    new-instance v1, Landroid/text/SpannableStringBuilder;

    .line 143
    .line 144
    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getWatchNum()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    if-eqz v3, :cond_7

    .line 152
    .line 153
    invoke-static {v3}, Lcom/transsion/shorttv_pugc/utils/ShortTvExtKt;->t(Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    goto :goto_5

    .line 158
    :cond_7
    move-object v3, v4

    .line 159
    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string v3, " views"

    .line 168
    .line 169
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 177
    .line 178
    .line 179
    const-string v3, "\ufffc"

    .line 180
    .line 181
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    invoke-static {v3}, Lcom/transsion/shorttv_pugc/utils/ShortTvExtKt;->f(Landroid/content/Context;)Landroid/text/style/ImageSpan;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 193
    .line 194
    .line 195
    move-result v5

    .line 196
    const/4 v6, 0x1

    .line 197
    sub-int/2addr v5, v6

    .line 198
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 199
    .line 200
    .line 201
    move-result v7

    .line 202
    const/16 v8, 0x21

    .line 203
    .line 204
    invoke-virtual {v1, v3, v5, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 205
    .line 206
    .line 207
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getReleaseDate()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    if-eqz v3, :cond_8

    .line 212
    .line 213
    invoke-static {v3}, Lcom/transsion/shorttv_pugc/utils/ShortTvExtKt;->q(Ljava/lang/String;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    :cond_8
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 222
    .line 223
    .line 224
    sget v3, Lcom/transsion/shorttv/R$id;->tv_info:I

    .line 225
    .line 226
    invoke-virtual {v0, v3, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 227
    .line 228
    .line 229
    sget v1, Lcom/transsion/shorttv/R$id;->v_corner:I

    .line 230
    .line 231
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getCorner()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    if-eqz v3, :cond_a

    .line 236
    .line 237
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 238
    .line 239
    .line 240
    move-result v3

    .line 241
    if-nez v3, :cond_9

    .line 242
    .line 243
    goto :goto_6

    .line 244
    :cond_9
    const/4 v3, 0x0

    .line 245
    goto :goto_7

    .line 246
    :cond_a
    :goto_6
    move v3, v6

    .line 247
    :goto_7
    xor-int/2addr v3, v6

    .line 248
    invoke-virtual {v0, v1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 249
    .line 250
    .line 251
    sget v1, Lcom/transsion/shorttv/R$id;->tv_title:I

    .line 252
    .line 253
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    check-cast v0, Lcom/transsion/shorttv_pugc/base/widget/ShortTvGradientTextView;

    .line 258
    .line 259
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->isSelected()Z

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    if-eqz v1, :cond_b

    .line 264
    .line 265
    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    sget v2, Lcom/transsion/shorttv/R$color;->short_tv_main_gradient_start:I

    .line 270
    .line 271
    invoke-static {v1, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 272
    .line 273
    .line 274
    move-result v1

    .line 275
    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    sget v3, Lcom/transsion/shorttv/R$color;->short_tv_main_gradient_center:I

    .line 280
    .line 281
    invoke-static {v2, v3}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 282
    .line 283
    .line 284
    move-result v2

    .line 285
    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 286
    .line 287
    .line 288
    move-result-object v3

    .line 289
    sget v4, Lcom/transsion/shorttv/R$color;->short_tv_main_gradient_end:I

    .line 290
    .line 291
    invoke-static {v3, v4}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 292
    .line 293
    .line 294
    move-result v3

    .line 295
    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/shorttv_pugc/base/widget/ShortTvGradientTextView;->setGradientColors(III)V

    .line 296
    .line 297
    .line 298
    goto :goto_8

    .line 299
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    sget v2, Lcom/transsion/shorttv/R$color;->short_tv_white_80:I

    .line 304
    .line 305
    invoke-static {v1, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    sget v3, Lcom/transsion/shorttv/R$color;->short_tv_white_80:I

    .line 314
    .line 315
    invoke-static {v2, v3}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 316
    .line 317
    .line 318
    move-result v2

    .line 319
    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 320
    .line 321
    .line 322
    move-result-object v3

    .line 323
    sget v4, Lcom/transsion/shorttv/R$color;->short_tv_white_80:I

    .line 324
    .line 325
    invoke-static {v3, v4}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 326
    .line 327
    .line 328
    move-result v3

    .line 329
    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/shorttv_pugc/base/widget/ShortTvGradientTextView;->setGradientColors(III)V

    .line 330
    .line 331
    .line 332
    :goto_8
    return-void
.end method

.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv_pugc/ui/adapter/o;->B1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lt6/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
            ")",
            "Lt6/f;"
        }
    .end annotation

    .line 1
    const-string v0, "baseQuickAdapter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lt6/f;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lt6/f;-><init>(Lcom/chad/library/adapter/base/BaseQuickAdapter;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public f(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lt6/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
            ")",
            "Lt6/g;"
        }
    .end annotation

    .line 1
    const-string v0, "baseQuickAdapter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lt6/g;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lt6/g;-><init>(Lcom/chad/library/adapter/base/BaseQuickAdapter;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
