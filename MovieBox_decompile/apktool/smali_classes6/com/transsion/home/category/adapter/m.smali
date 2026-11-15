.class public final Lcom/transsion/home/category/adapter/m;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "source.java"


# instance fields
.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "pageName"

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
    iput-object p1, p0, Lcom/transsion/home/category/adapter/m;->e:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method private final z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V
    .locals 3

    .line 1
    sget v0, Lcom/transsion/shorttv/R$id;->iv_tag:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 8
    .line 9
    if-eqz v0, :cond_5

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq p2, v1, :cond_4

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    if-eq p2, v2, :cond_3

    .line 16
    .line 17
    const/4 v2, 0x3

    .line 18
    if-eq p2, v2, :cond_2

    .line 19
    .line 20
    sget v2, Lcom/transsion/shorttv/R$mipmap;->short_tv_ic_rank_defalut:I

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-ne v2, v1, :cond_0

    .line 34
    .line 35
    const/high16 v1, 0x43340000    # 180.0f

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v1, 0x0

    .line 39
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setRotationY(F)V

    .line 40
    .line 41
    .line 42
    sget v0, Lcom/transsion/shorttv/R$id;->tv_rank:I

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 49
    .line 50
    if-eqz p1, :cond_5

    .line 51
    .line 52
    invoke-static {p1}, Lcr/b;->e(Landroid/view/View;)V

    .line 53
    .line 54
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const/16 v1, 0xa

    .line 61
    .line 62
    if-ge p2, v1, :cond_1

    .line 63
    .line 64
    const-string v1, "0"

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_2
    sget p2, Lcom/transsion/shorttv/R$mipmap;->short_tv_ic_rank_03:I

    .line 81
    .line 82
    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 83
    .line 84
    .line 85
    sget p2, Lcom/transsion/shorttv/R$id;->tv_rank:I

    .line 86
    .line 87
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 92
    .line 93
    if-eqz p1, :cond_5

    .line 94
    .line 95
    invoke-static {p1}, Lcr/b;->b(Landroid/view/View;)V

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_3
    sget p2, Lcom/transsion/shorttv/R$mipmap;->short_tv_ic_rank_02:I

    .line 100
    .line 101
    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 102
    .line 103
    .line 104
    sget p2, Lcom/transsion/shorttv/R$id;->tv_rank:I

    .line 105
    .line 106
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 111
    .line 112
    if-eqz p1, :cond_5

    .line 113
    .line 114
    invoke-static {p1}, Lcr/b;->b(Landroid/view/View;)V

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_4
    sget p2, Lcom/transsion/shorttv/R$mipmap;->short_tv_ic_rank_01:I

    .line 119
    .line 120
    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 121
    .line 122
    .line 123
    sget p2, Lcom/transsion/shorttv/R$id;->tv_rank:I

    .line 124
    .line 125
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 130
    .line 131
    if-eqz p1, :cond_5

    .line 132
    .line 133
    invoke-static {p1}, Lcr/b;->b(Landroid/view/View;)V

    .line 134
    .line 135
    .line 136
    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/shorttv/_channel/model/ShortTvCategoryItemBean;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/category/adapter/m;->y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv/_channel/model/ShortTvCategoryItemBean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public m()I
    .locals 1

    .line 1
    sget v0, Lcom/transsion/shorttv/R$layout;->short_tv_adapter_play_list:I

    .line 2
    .line 3
    return v0
.end method

.method public y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv/_channel/model/ShortTvCategoryItemBean;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const-string v3, "helper"

    .line 8
    .line 9
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v3, "item"

    .line 13
    .line 14
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/_channel/model/ShortTvCategoryItemBean;->getSubject()Lcom/transsion/shorttv/bean/Subject;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    if-eqz v3, :cond_1c

    .line 22
    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    const/4 v5, 0x0

    .line 28
    if-eqz v4, :cond_0

    .line 29
    .line 30
    invoke-virtual {v4, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->g0(Ljava/lang/Object;)I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v4, v5

    .line 36
    :goto_0
    sget v6, Lcom/transsion/shorttv/R$id;->tv_title:I

    .line 37
    .line 38
    invoke-virtual {v1, v6}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    check-cast v6, Landroidx/appcompat/widget/AppCompatTextView;

    .line 43
    .line 44
    if-eqz v6, :cond_1

    .line 45
    .line 46
    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/Subject;->getTitle()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    sget v6, Lcom/transsion/shorttv/R$id;->iv_cover:I

    .line 54
    .line 55
    invoke-virtual {v1, v6}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    check-cast v6, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 60
    .line 61
    if-eqz v6, :cond_6

    .line 62
    .line 63
    sget-object v7, Lni/f;->a:Lni/f$a;

    .line 64
    .line 65
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    const-string v9, "getContext(...)"

    .line 70
    .line 71
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v7, v8}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/Subject;->getCover()Lcom/transsion/shorttv/bean/Cover;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    const-string v9, ""

    .line 83
    .line 84
    if-eqz v8, :cond_2

    .line 85
    .line 86
    invoke-virtual {v8}, Lcom/transsion/shorttv/bean/Cover;->getUrl()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v8

    .line 90
    if-nez v8, :cond_3

    .line 91
    .line 92
    :cond_2
    move-object v8, v9

    .line 93
    :cond_3
    invoke-virtual {v7, v8}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/Subject;->getCover()Lcom/transsion/shorttv/bean/Cover;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    if-eqz v8, :cond_5

    .line 102
    .line 103
    invoke-virtual {v8}, Lcom/transsion/shorttv/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    if-nez v8, :cond_4

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_4
    move-object v9, v8

    .line 111
    :cond_5
    :goto_1
    invoke-virtual {v7, v9}, Lni/f$b;->l(Ljava/lang/String;)Lni/f$b;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    invoke-virtual {v7, v6}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 116
    .line 117
    .line 118
    :cond_6
    sget v6, Lcom/transsion/shorttv/R$id;->tv_desc:I

    .line 119
    .line 120
    invoke-virtual {v1, v6}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    check-cast v6, Landroidx/appcompat/widget/AppCompatTextView;

    .line 125
    .line 126
    const/4 v7, 0x0

    .line 127
    if-eqz v6, :cond_8

    .line 128
    .line 129
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/_channel/model/ShortTvCategoryItemBean;->getSubject()Lcom/transsion/shorttv/bean/Subject;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    if-eqz v8, :cond_7

    .line 134
    .line 135
    invoke-virtual {v8}, Lcom/transsion/shorttv/bean/Subject;->getDescription()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v8

    .line 139
    goto :goto_2

    .line 140
    :cond_7
    move-object v8, v7

    .line 141
    :goto_2
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    .line 143
    .line 144
    :cond_8
    sget v6, Lcom/transsion/shorttv/R$id;->tv_score:I

    .line 145
    .line 146
    invoke-virtual {v1, v6}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    check-cast v6, Landroidx/appcompat/widget/AppCompatTextView;

    .line 151
    .line 152
    if-eqz v6, :cond_9

    .line 153
    .line 154
    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/Subject;->getImdbRate()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v8

    .line 158
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    .line 160
    .line 161
    :cond_9
    sget v6, Lcom/transsion/shorttv/R$id;->ll_download:I

    .line 162
    .line 163
    invoke-virtual {v1, v6}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 164
    .line 165
    .line 166
    move-result-object v6

    .line 167
    check-cast v6, Lcom/transsion/shorttv/_channel/ui/widget/ShortTvDownloadView;

    .line 168
    .line 169
    const/4 v8, 0x1

    .line 170
    if-eqz v6, :cond_12

    .line 171
    .line 172
    iget-object v9, v0, Lcom/transsion/home/category/adapter/m;->e:Ljava/lang/String;

    .line 173
    .line 174
    invoke-virtual {v6, v9}, Lcom/transsion/shorttv/_channel/ui/widget/ShortTvDownloadView;->setPageFrom(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 178
    .line 179
    .line 180
    move-result-object v9

    .line 181
    sget-object v10, Lcom/transsion/shorttv/bean/SubjectType;->SHORT_TV:Lcom/transsion/shorttv/bean/SubjectType;

    .line 182
    .line 183
    invoke-virtual {v10}, Lcom/transsion/shorttv/bean/SubjectType;->getValue()I

    .line 184
    .line 185
    .line 186
    move-result v10

    .line 187
    if-nez v9, :cond_a

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_a
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 191
    .line 192
    .line 193
    move-result v9

    .line 194
    if-ne v9, v10, :cond_b

    .line 195
    .line 196
    invoke-static {v6}, Lcr/b;->e(Landroid/view/View;)V

    .line 197
    .line 198
    .line 199
    goto/16 :goto_7

    .line 200
    .line 201
    :cond_b
    :goto_3
    sget-object v9, Lxq/e;->a:Lxq/e;

    .line 202
    .line 203
    invoke-virtual {v9}, Lxq/e;->b()Z

    .line 204
    .line 205
    .line 206
    move-result v9

    .line 207
    if-eqz v9, :cond_c

    .line 208
    .line 209
    invoke-static {v6}, Lcr/b;->e(Landroid/view/View;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v6}, Lcom/transsion/shorttv/_channel/ui/widget/ShortTvDownloadView;->setShowPlayType()V

    .line 213
    .line 214
    .line 215
    goto :goto_7

    .line 216
    :cond_c
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/_channel/model/ShortTvCategoryItemBean;->getSubject()Lcom/transsion/shorttv/bean/Subject;

    .line 217
    .line 218
    .line 219
    move-result-object v6

    .line 220
    if-eqz v6, :cond_d

    .line 221
    .line 222
    invoke-virtual {v6}, Lcom/transsion/shorttv/bean/Subject;->getHasResource()Ljava/lang/Boolean;

    .line 223
    .line 224
    .line 225
    move-result-object v6

    .line 226
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 227
    .line 228
    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v6

    .line 232
    goto :goto_4

    .line 233
    :cond_d
    move v6, v5

    .line 234
    :goto_4
    if-eqz v6, :cond_11

    .line 235
    .line 236
    sget v6, Lcom/transsion/shorttv/R$id;->ll_download:I

    .line 237
    .line 238
    invoke-virtual {v1, v6}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 239
    .line 240
    .line 241
    move-result-object v6

    .line 242
    move-object v9, v6

    .line 243
    check-cast v9, Lcom/transsion/shorttv/_channel/ui/widget/ShortTvDownloadView;

    .line 244
    .line 245
    if-eqz v9, :cond_12

    .line 246
    .line 247
    invoke-static {v9}, Lcr/b;->e(Landroid/view/View;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/_channel/model/ShortTvCategoryItemBean;->getSubject()Lcom/transsion/shorttv/bean/Subject;

    .line 251
    .line 252
    .line 253
    move-result-object v6

    .line 254
    if-eqz v6, :cond_12

    .line 255
    .line 256
    invoke-virtual {v6}, Lcom/transsion/shorttv/bean/Subject;->getResourceDetector()Lcom/transsion/shorttv/bean/ResourceDetectors;

    .line 257
    .line 258
    .line 259
    move-result-object v6

    .line 260
    if-eqz v6, :cond_12

    .line 261
    .line 262
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/_channel/model/ShortTvCategoryItemBean;->getSubject()Lcom/transsion/shorttv/bean/Subject;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    if-eqz v2, :cond_e

    .line 267
    .line 268
    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v7

    .line 272
    :cond_e
    move-object v10, v7

    .line 273
    invoke-virtual {v6}, Lcom/transsion/shorttv/bean/ResourceDetectors;->getResourceId()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v11

    .line 277
    invoke-virtual {v6}, Lcom/transsion/shorttv/bean/ResourceDetectors;->getType()Ljava/lang/Integer;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    if-nez v2, :cond_f

    .line 282
    .line 283
    goto :goto_5

    .line 284
    :cond_f
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 285
    .line 286
    .line 287
    move-result v2

    .line 288
    if-ne v2, v8, :cond_10

    .line 289
    .line 290
    move v2, v8

    .line 291
    goto :goto_6

    .line 292
    :cond_10
    :goto_5
    move v2, v5

    .line 293
    :goto_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 294
    .line 295
    .line 296
    move-result-object v12

    .line 297
    const/16 v15, 0x18

    .line 298
    .line 299
    const/16 v16, 0x0

    .line 300
    .line 301
    const/4 v13, 0x0

    .line 302
    const/4 v14, 0x0

    .line 303
    invoke-static/range {v9 .. v16}, Lcom/transsion/shorttv/_channel/ui/widget/ShortTvDownloadView;->setShowType$default(Lcom/transsion/shorttv/_channel/ui/widget/ShortTvDownloadView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ZIILjava/lang/Object;)V

    .line 304
    .line 305
    .line 306
    goto :goto_7

    .line 307
    :cond_11
    sget v2, Lcom/transsion/shorttv/R$id;->ll_download:I

    .line 308
    .line 309
    invoke-virtual {v1, v2, v8}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 310
    .line 311
    .line 312
    :cond_12
    :goto_7
    if-nez v4, :cond_15

    .line 313
    .line 314
    sget v2, Lcom/transsion/shorttv/R$id;->divider:I

    .line 315
    .line 316
    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 317
    .line 318
    .line 319
    move-result-object v2

    .line 320
    if-eqz v2, :cond_13

    .line 321
    .line 322
    invoke-static {v2}, Lcr/b;->e(Landroid/view/View;)V

    .line 323
    .line 324
    .line 325
    :cond_13
    sget v2, Lcom/transsion/shorttv/R$id;->bg_gradient:I

    .line 326
    .line 327
    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 328
    .line 329
    .line 330
    move-result-object v2

    .line 331
    if-eqz v2, :cond_14

    .line 332
    .line 333
    invoke-static {v2}, Lcr/b;->e(Landroid/view/View;)V

    .line 334
    .line 335
    .line 336
    :cond_14
    sget v2, Lcom/transsion/shorttv/R$id;->item_root:I

    .line 337
    .line 338
    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    if-eqz v2, :cond_18

    .line 343
    .line 344
    sget v6, Lcom/transsion/shorttv/R$drawable;->short_tv_bg_category_first_item:I

    .line 345
    .line 346
    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 347
    .line 348
    .line 349
    goto :goto_8

    .line 350
    :cond_15
    sget v2, Lcom/transsion/shorttv/R$id;->divider:I

    .line 351
    .line 352
    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    if-eqz v2, :cond_16

    .line 357
    .line 358
    invoke-static {v2}, Lcr/b;->b(Landroid/view/View;)V

    .line 359
    .line 360
    .line 361
    :cond_16
    sget v2, Lcom/transsion/shorttv/R$id;->bg_gradient:I

    .line 362
    .line 363
    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    if-eqz v2, :cond_17

    .line 368
    .line 369
    invoke-static {v2}, Lcr/b;->b(Landroid/view/View;)V

    .line 370
    .line 371
    .line 372
    :cond_17
    sget v2, Lcom/transsion/shorttv/R$id;->item_root:I

    .line 373
    .line 374
    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 375
    .line 376
    .line 377
    move-result-object v2

    .line 378
    if-eqz v2, :cond_18

    .line 379
    .line 380
    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 381
    .line 382
    .line 383
    move-result-object v6

    .line 384
    sget v7, Lcom/transsion/shorttv/R$color;->short_tv_gray_light_00:I

    .line 385
    .line 386
    invoke-static {v6, v7}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 387
    .line 388
    .line 389
    move-result v6

    .line 390
    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 391
    .line 392
    .line 393
    :cond_18
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    .line 394
    .line 395
    .line 396
    move-result-object v2

    .line 397
    if-eqz v2, :cond_1b

    .line 398
    .line 399
    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 400
    .line 401
    .line 402
    move-result-object v2

    .line 403
    if-eqz v2, :cond_1b

    .line 404
    .line 405
    check-cast v2, Ljava/lang/Iterable;

    .line 406
    .line 407
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 408
    .line 409
    .line 410
    move-result-object v2

    .line 411
    move v6, v5

    .line 412
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 413
    .line 414
    .line 415
    move-result v7

    .line 416
    if-eqz v7, :cond_1b

    .line 417
    .line 418
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v7

    .line 422
    add-int/lit8 v9, v6, 0x1

    .line 423
    .line 424
    if-gez v6, :cond_19

    .line 425
    .line 426
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 427
    .line 428
    .line 429
    :cond_19
    check-cast v7, Lcom/transsion/shorttv/_channel/model/ShortTvCategoryItemBean;

    .line 430
    .line 431
    if-ge v6, v4, :cond_1a

    .line 432
    .line 433
    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/Subject;->getNonAdDelegate()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 434
    .line 435
    .line 436
    move-result-object v6

    .line 437
    if-eqz v6, :cond_1a

    .line 438
    .line 439
    add-int/lit8 v5, v5, 0x1

    .line 440
    .line 441
    :cond_1a
    move v6, v9

    .line 442
    goto :goto_9

    .line 443
    :cond_1b
    add-int/2addr v4, v8

    .line 444
    sub-int/2addr v4, v5

    .line 445
    invoke-direct {v0, v1, v4}, Lcom/transsion/home/category/adapter/m;->z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V

    .line 446
    .line 447
    .line 448
    sget v2, Lcom/transsion/shorttv/R$id;->iv_playlist_page_corner:I

    .line 449
    .line 450
    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 451
    .line 452
    .line 453
    move-result-object v1

    .line 454
    check-cast v1, Lcom/transsion/shorttv/base/widget/CornerTextView;

    .line 455
    .line 456
    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/Subject;->getCorner()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v2

    .line 460
    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 461
    .line 462
    .line 463
    move-result-object v3

    .line 464
    invoke-virtual {v1, v2, v3}, Lcom/transsion/shorttv/base/widget/CornerTextView;->setTextWithType(Ljava/lang/CharSequence;Ljava/lang/Integer;)V

    .line 465
    .line 466
    .line 467
    :cond_1c
    return-void
.end method
