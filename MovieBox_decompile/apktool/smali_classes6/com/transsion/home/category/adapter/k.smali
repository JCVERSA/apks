.class public final Lcom/transsion/home/category/adapter/k;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "source.java"


# instance fields
.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V
    .locals 3

    .line 1
    sget v0, Lcom/transsion/home/R$id;->iv_tag:I

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
    if-eqz v0, :cond_7

    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/transsion/home/category/adapter/k;->e:Z

    .line 12
    .line 13
    if-eqz v1, :cond_5

    .line 14
    .line 15
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    if-eq p2, v1, :cond_4

    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    if-eq p2, v2, :cond_3

    .line 23
    .line 24
    const/4 v2, 0x3

    .line 25
    if-eq p2, v2, :cond_2

    .line 26
    .line 27
    sget v2, Lcom/transsion/home/R$mipmap;->ic_rank_defalut:I

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-ne v2, v1, :cond_0

    .line 41
    .line 42
    const/high16 v1, 0x43340000    # 180.0f

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 v1, 0x0

    .line 46
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setRotationY(F)V

    .line 47
    .line 48
    .line 49
    sget v0, Lcom/transsion/home/R$id;->tv_rank:I

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 56
    .line 57
    if-eqz p1, :cond_7

    .line 58
    .line 59
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 63
    .line 64
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const/16 v1, 0xa

    .line 71
    .line 72
    if-ge p2, v1, :cond_1

    .line 73
    .line 74
    const-string v1, "0"

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_2
    sget p2, Lcom/transsion/home/R$mipmap;->ic_rank_03:I

    .line 91
    .line 92
    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 93
    .line 94
    .line 95
    sget p2, Lcom/transsion/home/R$id;->tv_rank:I

    .line 96
    .line 97
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 102
    .line 103
    if-eqz p1, :cond_7

    .line 104
    .line 105
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_3
    sget p2, Lcom/transsion/home/R$mipmap;->ic_rank_02:I

    .line 110
    .line 111
    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 112
    .line 113
    .line 114
    sget p2, Lcom/transsion/home/R$id;->tv_rank:I

    .line 115
    .line 116
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 121
    .line 122
    if-eqz p1, :cond_7

    .line 123
    .line 124
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_4
    sget p2, Lcom/transsion/home/R$mipmap;->ic_rank_01:I

    .line 129
    .line 130
    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 131
    .line 132
    .line 133
    sget p2, Lcom/transsion/home/R$id;->tv_rank:I

    .line 134
    .line 135
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 140
    .line 141
    if-eqz p1, :cond_7

    .line 142
    .line 143
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 144
    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_5
    sget p2, Lcom/transsion/home/R$id;->tv_rank:I

    .line 148
    .line 149
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 154
    .line 155
    if-eqz p1, :cond_6

    .line 156
    .line 157
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 158
    .line 159
    .line 160
    :cond_6
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 161
    .line 162
    .line 163
    :cond_7
    :goto_2
    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/moviedetailapi/bean/Subject;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/category/adapter/k;->y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/Subject;)V

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
    sget v0, Lcom/transsion/home/R$layout;->adapter_play_list:I

    .line 2
    .line 3
    return v0
.end method

.method public y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 12

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
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->g0(Ljava/lang/Object;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v0, v1

    .line 24
    :goto_0
    sget v2, Lcom/transsion/home/R$id;->tv_title:I

    .line 25
    .line 26
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Landroidx/appcompat/widget/AppCompatTextView;

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    sget v2, Lcom/transsion/home/R$id;->iv_cover:I

    .line 42
    .line 43
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 48
    .line 49
    if-eqz v2, :cond_6

    .line 50
    .line 51
    sget-object v3, Lni/f;->a:Lni/f$a;

    .line 52
    .line 53
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    const-string v5, "getContext(...)"

    .line 58
    .line 59
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v4}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    const-string v6, ""

    .line 71
    .line 72
    if-eqz v4, :cond_2

    .line 73
    .line 74
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    if-nez v4, :cond_3

    .line 79
    .line 80
    :cond_2
    move-object v4, v6

    .line 81
    :cond_3
    invoke-virtual {v3, v4}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    sget-object v4, Lzg/h;->a:Lzg/h;

    .line 86
    .line 87
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4, v7}, Lzg/h;->e(Landroid/content/Context;)I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    invoke-virtual {v3, v4}, Lni/f$b;->m(I)Lni/f$b;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    invoke-virtual {v3, v4}, Lni/f$b;->c(I)Lni/f$b;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    if-eqz v4, :cond_5

    .line 115
    .line 116
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    if-nez v4, :cond_4

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_4
    move-object v6, v4

    .line 124
    :cond_5
    :goto_1
    invoke-virtual {v3, v6}, Lni/f$b;->l(Ljava/lang/String;)Lni/f$b;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-virtual {v3, v2}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 129
    .line 130
    .line 131
    :cond_6
    sget v2, Lcom/transsion/home/R$id;->tv_desc:I

    .line 132
    .line 133
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    check-cast v2, Landroidx/appcompat/widget/AppCompatTextView;

    .line 138
    .line 139
    if-eqz v2, :cond_7

    .line 140
    .line 141
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getDescription()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    .line 147
    .line 148
    :cond_7
    sget v2, Lcom/transsion/home/R$id;->tv_score:I

    .line 149
    .line 150
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    check-cast v2, Landroidx/appcompat/widget/AppCompatTextView;

    .line 155
    .line 156
    if-eqz v2, :cond_8

    .line 157
    .line 158
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getImdbRate()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    .line 164
    .line 165
    :cond_8
    sget v2, Lcom/transsion/home/R$id;->ll_download:I

    .line 166
    .line 167
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    move-object v3, v2

    .line 172
    check-cast v3, Lcom/transsnet/downloader/widget/DownloadView;

    .line 173
    .line 174
    const/4 v2, 0x1

    .line 175
    if-eqz v3, :cond_f

    .line 176
    .line 177
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    sget-object v5, Lcom/transsion/moviedetailapi/SubjectType;->SHORT_TV:Lcom/transsion/moviedetailapi/SubjectType;

    .line 182
    .line 183
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 184
    .line 185
    .line 186
    move-result v5

    .line 187
    if-nez v4, :cond_9

    .line 188
    .line 189
    goto :goto_2

    .line 190
    :cond_9
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    if-ne v4, v5, :cond_a

    .line 195
    .line 196
    invoke-static {v3}, Luf/c;->k(Landroid/view/View;)V

    .line 197
    .line 198
    .line 199
    goto :goto_5

    .line 200
    :cond_a
    :goto_2
    sget-object v4, Lij/t;->a:Lij/t;

    .line 201
    .line 202
    invoke-virtual {v4}, Lij/t;->b()Z

    .line 203
    .line 204
    .line 205
    move-result v4

    .line 206
    if-eqz v4, :cond_b

    .line 207
    .line 208
    invoke-static {v3}, Luf/c;->k(Landroid/view/View;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v3}, Lcom/transsnet/downloader/widget/DownloadView;->setShowPlayType()V

    .line 212
    .line 213
    .line 214
    goto :goto_5

    .line 215
    :cond_b
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getHasResource()Ljava/lang/Boolean;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 220
    .line 221
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v4

    .line 225
    if-eqz v4, :cond_e

    .line 226
    .line 227
    invoke-static {v3}, Luf/c;->k(Landroid/view/View;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    if-eqz v4, :cond_f

    .line 235
    .line 236
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v5

    .line 240
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getResourceId()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v6

    .line 244
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getType()Ljava/lang/Integer;

    .line 245
    .line 246
    .line 247
    move-result-object v4

    .line 248
    if-nez v4, :cond_c

    .line 249
    .line 250
    goto :goto_3

    .line 251
    :cond_c
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 252
    .line 253
    .line 254
    move-result v4

    .line 255
    if-ne v4, v2, :cond_d

    .line 256
    .line 257
    move v4, v2

    .line 258
    goto :goto_4

    .line 259
    :cond_d
    :goto_3
    move v4, v1

    .line 260
    :goto_4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 261
    .line 262
    .line 263
    move-result-object v7

    .line 264
    const/16 v9, 0x18

    .line 265
    .line 266
    const/4 v10, 0x0

    .line 267
    const/4 v8, 0x0

    .line 268
    const/4 v11, 0x0

    .line 269
    move-object v4, v5

    .line 270
    move-object v5, v6

    .line 271
    move-object v6, v7

    .line 272
    move v7, v8

    .line 273
    move v8, v11

    .line 274
    invoke-static/range {v3 .. v10}, Lcom/transsnet/downloader/widget/DownloadView;->setShowType$default(Lcom/transsnet/downloader/widget/DownloadView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ZIILjava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    goto :goto_5

    .line 278
    :cond_e
    sget v3, Lcom/transsion/home/R$id;->ll_download:I

    .line 279
    .line 280
    invoke-virtual {p1, v3, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 281
    .line 282
    .line 283
    :cond_f
    :goto_5
    if-nez v0, :cond_12

    .line 284
    .line 285
    sget v3, Lcom/transsion/home/R$id;->divider:I

    .line 286
    .line 287
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 288
    .line 289
    .line 290
    move-result-object v3

    .line 291
    if-eqz v3, :cond_10

    .line 292
    .line 293
    invoke-static {v3}, Luf/c;->k(Landroid/view/View;)V

    .line 294
    .line 295
    .line 296
    :cond_10
    sget v3, Lcom/transsion/home/R$id;->bg_gradient:I

    .line 297
    .line 298
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    if-eqz v3, :cond_11

    .line 303
    .line 304
    invoke-static {v3}, Luf/c;->k(Landroid/view/View;)V

    .line 305
    .line 306
    .line 307
    :cond_11
    sget v3, Lcom/transsion/home/R$id;->item_root:I

    .line 308
    .line 309
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 310
    .line 311
    .line 312
    move-result-object v3

    .line 313
    if-eqz v3, :cond_15

    .line 314
    .line 315
    sget v4, Lcom/transsion/home/R$drawable;->bg_category_first_item:I

    .line 316
    .line 317
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 318
    .line 319
    .line 320
    goto :goto_6

    .line 321
    :cond_12
    sget v3, Lcom/transsion/home/R$id;->divider:I

    .line 322
    .line 323
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 324
    .line 325
    .line 326
    move-result-object v3

    .line 327
    if-eqz v3, :cond_13

    .line 328
    .line 329
    invoke-static {v3}, Luf/c;->g(Landroid/view/View;)V

    .line 330
    .line 331
    .line 332
    :cond_13
    sget v3, Lcom/transsion/home/R$id;->bg_gradient:I

    .line 333
    .line 334
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 335
    .line 336
    .line 337
    move-result-object v3

    .line 338
    if-eqz v3, :cond_14

    .line 339
    .line 340
    invoke-static {v3}, Luf/c;->g(Landroid/view/View;)V

    .line 341
    .line 342
    .line 343
    :cond_14
    sget v3, Lcom/transsion/home/R$id;->item_root:I

    .line 344
    .line 345
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 346
    .line 347
    .line 348
    move-result-object v3

    .line 349
    if-eqz v3, :cond_15

    .line 350
    .line 351
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 352
    .line 353
    .line 354
    move-result-object v4

    .line 355
    sget v5, Lcom/tn/lib/widget/R$color;->bg_01:I

    .line 356
    .line 357
    invoke-static {v4, v5}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 358
    .line 359
    .line 360
    move-result v4

    .line 361
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 362
    .line 363
    .line 364
    :cond_15
    :goto_6
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    .line 365
    .line 366
    .line 367
    move-result-object v3

    .line 368
    if-eqz v3, :cond_18

    .line 369
    .line 370
    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 371
    .line 372
    .line 373
    move-result-object v3

    .line 374
    if-eqz v3, :cond_18

    .line 375
    .line 376
    check-cast v3, Ljava/lang/Iterable;

    .line 377
    .line 378
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 379
    .line 380
    .line 381
    move-result-object v3

    .line 382
    move v4, v1

    .line 383
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 384
    .line 385
    .line 386
    move-result v5

    .line 387
    if-eqz v5, :cond_18

    .line 388
    .line 389
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v5

    .line 393
    add-int/lit8 v6, v4, 0x1

    .line 394
    .line 395
    if-gez v4, :cond_16

    .line 396
    .line 397
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 398
    .line 399
    .line 400
    :cond_16
    check-cast v5, Lcom/transsion/moviedetailapi/bean/Subject;

    .line 401
    .line 402
    if-ge v4, v0, :cond_17

    .line 403
    .line 404
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Subject;->getNonAdDelegate()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 405
    .line 406
    .line 407
    move-result-object v4

    .line 408
    if-eqz v4, :cond_17

    .line 409
    .line 410
    add-int/lit8 v1, v1, 0x1

    .line 411
    .line 412
    :cond_17
    move v4, v6

    .line 413
    goto :goto_7

    .line 414
    :cond_18
    add-int/2addr v0, v2

    .line 415
    sub-int/2addr v0, v1

    .line 416
    invoke-direct {p0, p1, v0}, Lcom/transsion/home/category/adapter/k;->A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V

    .line 417
    .line 418
    .line 419
    sget v0, Lcom/transsion/home/R$id;->iv_playlist_page_corner:I

    .line 420
    .line 421
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 422
    .line 423
    .line 424
    move-result-object p1

    .line 425
    check-cast p1, Lcom/tn/lib/view/CornerTextView;

    .line 426
    .line 427
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCorner()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 432
    .line 433
    .line 434
    move-result-object p2

    .line 435
    invoke-virtual {p1, v0, p2}, Lcom/tn/lib/view/CornerTextView;->setTextWithType(Ljava/lang/CharSequence;Ljava/lang/Integer;)V

    .line 436
    .line 437
    .line 438
    return-void
.end method

.method public final z(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/home/category/adapter/k;->e:Z

    .line 2
    .line 3
    return-void
.end method
