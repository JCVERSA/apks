.class public final Lfo/v;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "source.java"


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Landroidx/recyclerview/widget/RecyclerView$s;

.field private final h:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$s;)V
    .locals 1

    .line 1
    const-string v0, "pool"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lfo/v;->e:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p2, p0, Lfo/v;->f:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p3, p0, Lfo/v;->g:Landroidx/recyclerview/widget/RecyclerView$s;

    .line 14
    .line 15
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/high16 p2, 0x40c00000    # 6.0f

    .line 20
    .line 21
    invoke-static {p2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    mul-int/lit8 p2, p2, 0x3

    .line 26
    .line 27
    sub-int/2addr p1, p2

    .line 28
    div-int/lit8 p1, p1, 0x2

    .line 29
    .line 30
    iput p1, p0, Lfo/v;->h:I

    .line 31
    .line 32
    return-void
.end method

.method private final A(III)I
    .locals 0

    .line 1
    int-to-float p1, p1

    .line 2
    int-to-float p2, p2

    .line 3
    div-float/2addr p1, p2

    .line 4
    const/high16 p2, 0x3f400000    # 0.75f

    .line 5
    .line 6
    cmpg-float p2, p1, p2

    .line 7
    .line 8
    if-gez p2, :cond_0

    .line 9
    .line 10
    mul-int/lit8 p3, p3, 0x4

    .line 11
    .line 12
    div-int/lit8 p3, p3, 0x3

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const p2, 0x3faaaaab

    .line 16
    .line 17
    .line 18
    cmpl-float p2, p1, p2

    .line 19
    .line 20
    if-lez p2, :cond_1

    .line 21
    .line 22
    mul-int/lit8 p3, p3, 0x3

    .line 23
    .line 24
    div-int/lit8 p3, p3, 0x4

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    int-to-float p2, p3

    .line 28
    div-float/2addr p2, p1

    .line 29
    float-to-int p3, p2

    .line 30
    :goto_0
    return p3
.end method

.method private final C(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Z)V
    .locals 1

    .line 1
    sget v0, Lcom/transsion/postdetail/R$id;->tv_staggered_post_like:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 8
    .line 9
    invoke-virtual {p0, p1, p3, p2}, Lfo/v;->B(Landroidx/appcompat/widget/AppCompatTextView;ZLcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final B(Landroidx/appcompat/widget/AppCompatTextView;ZLcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 4

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_4

    .line 7
    .line 8
    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getStat()Lcom/transsion/moviedetailapi/bean/Stat;

    .line 9
    .line 10
    .line 11
    move-result-object p3

    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/Stat;->getLikeCount()Ljava/lang/Long;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p3, 0x0

    .line 20
    :goto_0
    if-eqz p3, :cond_2

    .line 21
    .line 22
    const-wide/16 v0, 0x0

    .line 23
    .line 24
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    cmp-long v0, v2, v0

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    invoke-static {v0, v1}, Lcom/transsion/baseui/util/j;->a(J)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    goto :goto_2

    .line 42
    :cond_2
    :goto_1
    const-string p3, ""

    .line 43
    .line 44
    :goto_2
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    const/4 p3, 0x0

    .line 48
    if-eqz p2, :cond_3

    .line 49
    .line 50
    sget p2, Lcom/tn/lib/widget/R$drawable;->room_staggered_like_icon:I

    .line 51
    .line 52
    invoke-virtual {p1, p2, p3, p3, p3}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 53
    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_3
    sget p2, Lcom/tn/lib/widget/R$drawable;->room_staggered_unlike_icon:I

    .line 57
    .line 58
    invoke-virtual {p1, p2, p3, p3, p3}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 59
    .line 60
    .line 61
    :cond_4
    :goto_3
    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lfo/v;->y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic f(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lfo/v;->z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/moviedetailapi/bean/MediaType;->CONTENT_ALL:Lcom/transsion/moviedetailapi/bean/MediaType;

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
    sget v0, Lcom/transsion/postdetail/R$layout;->item_provider_post_staggered_layout:I

    .line 2
    .line 3
    return v0
.end method

.method public y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
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
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getContent()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, ""

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getContent()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    :goto_0
    move-object v0, v1

    .line 33
    goto :goto_2

    .line 34
    :cond_1
    :goto_1
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getTitle()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    :goto_2
    sget v2, Lcom/transsion/postdetail/R$id;->tvPicNum:I

    .line 42
    .line 43
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Landroidx/appcompat/widget/AppCompatTextView;

    .line 48
    .line 49
    sget v3, Lcom/transsion/postdetail/R$id;->ivPlaying:I

    .line 50
    .line 51
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Landroidx/appcompat/widget/AppCompatImageView;

    .line 56
    .line 57
    sget v4, Lcom/transsion/postdetail/R$id;->iv_cover:I

    .line 58
    .line 59
    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    check-cast v4, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 64
    .line 65
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    const/4 v6, 0x0

    .line 70
    if-eqz v5, :cond_3

    .line 71
    .line 72
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Media;->getMediaType()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    goto :goto_3

    .line 77
    :cond_3
    move-object v5, v6

    .line 78
    :goto_3
    sget-object v7, Lcom/transsion/moviedetailapi/bean/MediaType;->VIDEO:Lcom/transsion/moviedetailapi/bean/MediaType;

    .line 79
    .line 80
    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/bean/MediaType;->getValue()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    const-string v7, "getContext(...)"

    .line 89
    .line 90
    const/4 v8, 0x0

    .line 91
    if-eqz v5, :cond_b

    .line 92
    .line 93
    if-eqz v3, :cond_4

    .line 94
    .line 95
    invoke-static {v3}, Luf/c;->k(Landroid/view/View;)V

    .line 96
    .line 97
    .line 98
    :cond_4
    if-eqz v2, :cond_5

    .line 99
    .line 100
    invoke-static {v2}, Luf/c;->g(Landroid/view/View;)V

    .line 101
    .line 102
    .line 103
    :cond_5
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    if-eqz v2, :cond_6

    .line 108
    .line 109
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Media;->getFirstFrame()Lcom/transsion/moviedetailapi/bean/FirstFrame;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    goto :goto_4

    .line 114
    :cond_6
    move-object v2, v6

    .line 115
    :goto_4
    if-eqz v4, :cond_1a

    .line 116
    .line 117
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    if-eqz v2, :cond_7

    .line 122
    .line 123
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/FirstFrame;->getWidth()Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    if-eqz v5, :cond_7

    .line 128
    .line 129
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 130
    .line 131
    .line 132
    move-result v5

    .line 133
    goto :goto_5

    .line 134
    :cond_7
    move v5, v8

    .line 135
    :goto_5
    if-eqz v2, :cond_8

    .line 136
    .line 137
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/FirstFrame;->getHeight()Ljava/lang/Integer;

    .line 138
    .line 139
    .line 140
    move-result-object v9

    .line 141
    if-eqz v9, :cond_8

    .line 142
    .line 143
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 144
    .line 145
    .line 146
    move-result v9

    .line 147
    goto :goto_6

    .line 148
    :cond_8
    move v9, v8

    .line 149
    :goto_6
    iget v10, p0, Lfo/v;->h:I

    .line 150
    .line 151
    invoke-direct {p0, v5, v9, v10}, Lfo/v;->A(III)I

    .line 152
    .line 153
    .line 154
    move-result v5

    .line 155
    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 156
    .line 157
    sget-object v3, Lni/f;->a:Lni/f$a;

    .line 158
    .line 159
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3, v5}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    if-eqz v2, :cond_9

    .line 171
    .line 172
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/FirstFrame;->getUrl()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    if-nez v2, :cond_a

    .line 177
    .line 178
    :cond_9
    move-object v2, v1

    .line 179
    :cond_a
    invoke-virtual {v3, v2}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    invoke-virtual {v2, v4}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 184
    .line 185
    .line 186
    goto/16 :goto_c

    .line 187
    .line 188
    :cond_b
    if-eqz v3, :cond_c

    .line 189
    .line 190
    invoke-static {v3}, Luf/c;->g(Landroid/view/View;)V

    .line 191
    .line 192
    .line 193
    :cond_c
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    if-eqz v3, :cond_d

    .line 198
    .line 199
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Media;->getImage()Ljava/util/List;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    goto :goto_7

    .line 204
    :cond_d
    move-object v3, v6

    .line 205
    :goto_7
    check-cast v3, Ljava/util/Collection;

    .line 206
    .line 207
    if-eqz v3, :cond_1a

    .line 208
    .line 209
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 210
    .line 211
    .line 212
    move-result v3

    .line 213
    if-eqz v3, :cond_e

    .line 214
    .line 215
    goto/16 :goto_c

    .line 216
    .line 217
    :cond_e
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    if-eqz v3, :cond_f

    .line 222
    .line 223
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Media;->getImage()Ljava/util/List;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    if-eqz v3, :cond_f

    .line 228
    .line 229
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    check-cast v3, Lcom/transsion/moviedetailapi/bean/Image;

    .line 234
    .line 235
    goto :goto_8

    .line 236
    :cond_f
    move-object v3, v6

    .line 237
    :goto_8
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    if-eqz v5, :cond_10

    .line 242
    .line 243
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Media;->getImage()Ljava/util/List;

    .line 244
    .line 245
    .line 246
    move-result-object v5

    .line 247
    if-eqz v5, :cond_10

    .line 248
    .line 249
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 250
    .line 251
    .line 252
    move-result v5

    .line 253
    goto :goto_9

    .line 254
    :cond_10
    move v5, v8

    .line 255
    :goto_9
    if-eqz v4, :cond_17

    .line 256
    .line 257
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 258
    .line 259
    .line 260
    move-result-object v9

    .line 261
    if-eqz v3, :cond_11

    .line 262
    .line 263
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Image;->getWidth()Ljava/lang/Integer;

    .line 264
    .line 265
    .line 266
    move-result-object v10

    .line 267
    if-eqz v10, :cond_11

    .line 268
    .line 269
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 270
    .line 271
    .line 272
    move-result v10

    .line 273
    goto :goto_a

    .line 274
    :cond_11
    move v10, v8

    .line 275
    :goto_a
    if-eqz v3, :cond_12

    .line 276
    .line 277
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Image;->getHeight()Ljava/lang/Integer;

    .line 278
    .line 279
    .line 280
    move-result-object v11

    .line 281
    if-eqz v11, :cond_12

    .line 282
    .line 283
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 284
    .line 285
    .line 286
    move-result v11

    .line 287
    goto :goto_b

    .line 288
    :cond_12
    move v11, v8

    .line 289
    :goto_b
    iget v12, p0, Lfo/v;->h:I

    .line 290
    .line 291
    invoke-direct {p0, v10, v11, v12}, Lfo/v;->A(III)I

    .line 292
    .line 293
    .line 294
    move-result v10

    .line 295
    iput v10, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 296
    .line 297
    sget-object v9, Lni/f;->a:Lni/f$a;

    .line 298
    .line 299
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 300
    .line 301
    .line 302
    move-result-object v10

    .line 303
    invoke-static {v10, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v9, v10}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 307
    .line 308
    .line 309
    move-result-object v9

    .line 310
    if-eqz v3, :cond_13

    .line 311
    .line 312
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Image;->getUrl()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v10

    .line 316
    if-nez v10, :cond_14

    .line 317
    .line 318
    :cond_13
    move-object v10, v1

    .line 319
    :cond_14
    invoke-virtual {v9, v10}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 320
    .line 321
    .line 322
    move-result-object v9

    .line 323
    if-eqz v3, :cond_15

    .line 324
    .line 325
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Image;->getThumbnail()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    if-nez v3, :cond_16

    .line 330
    .line 331
    :cond_15
    move-object v3, v1

    .line 332
    :cond_16
    invoke-virtual {v9, v3}, Lni/f$b;->l(Ljava/lang/String;)Lni/f$b;

    .line 333
    .line 334
    .line 335
    move-result-object v3

    .line 336
    invoke-virtual {v3, v4}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 337
    .line 338
    .line 339
    :cond_17
    const/4 v3, 0x1

    .line 340
    if-le v5, v3, :cond_19

    .line 341
    .line 342
    if-eqz v2, :cond_18

    .line 343
    .line 344
    invoke-static {v2}, Luf/c;->k(Landroid/view/View;)V

    .line 345
    .line 346
    .line 347
    :cond_18
    if-eqz v2, :cond_1a

    .line 348
    .line 349
    new-instance v3, Ljava/lang/StringBuilder;

    .line 350
    .line 351
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    const-string v4, " pics"

    .line 358
    .line 359
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v3

    .line 366
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    .line 368
    .line 369
    goto :goto_c

    .line 370
    :cond_19
    if-eqz v2, :cond_1a

    .line 371
    .line 372
    invoke-static {v2}, Luf/c;->g(Landroid/view/View;)V

    .line 373
    .line 374
    .line 375
    :cond_1a
    :goto_c
    sget v2, Lcom/transsion/postdetail/R$id;->tv_title:I

    .line 376
    .line 377
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 378
    .line 379
    .line 380
    move-result-object v2

    .line 381
    check-cast v2, Landroidx/appcompat/widget/AppCompatTextView;

    .line 382
    .line 383
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 384
    .line 385
    .line 386
    move-result v3

    .line 387
    if-nez v3, :cond_1b

    .line 388
    .line 389
    if-eqz v2, :cond_1c

    .line 390
    .line 391
    invoke-static {v2}, Luf/c;->g(Landroid/view/View;)V

    .line 392
    .line 393
    .line 394
    goto :goto_d

    .line 395
    :cond_1b
    if-eqz v2, :cond_1c

    .line 396
    .line 397
    invoke-static {v2}, Luf/c;->k(Landroid/view/View;)V

    .line 398
    .line 399
    .line 400
    :cond_1c
    :goto_d
    if-eqz v2, :cond_1d

    .line 401
    .line 402
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    .line 404
    .line 405
    :cond_1d
    sget v0, Lcom/transsion/postdetail/R$id;->iv_user_avatar:I

    .line 406
    .line 407
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    check-cast v0, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 412
    .line 413
    if-eqz v0, :cond_20

    .line 414
    .line 415
    sget-object v2, Lni/f;->a:Lni/f$a;

    .line 416
    .line 417
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 418
    .line 419
    .line 420
    move-result-object v3

    .line 421
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v2, v3}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 425
    .line 426
    .line 427
    move-result-object v2

    .line 428
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getUser()Lcom/transsion/moviedetailapi/bean/User;

    .line 429
    .line 430
    .line 431
    move-result-object v3

    .line 432
    if-eqz v3, :cond_1e

    .line 433
    .line 434
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/User;->getAvatar()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v3

    .line 438
    if-nez v3, :cond_1f

    .line 439
    .line 440
    :cond_1e
    move-object v3, v1

    .line 441
    :cond_1f
    invoke-virtual {v2, v3}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 442
    .line 443
    .line 444
    move-result-object v2

    .line 445
    invoke-virtual {v2, v0}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 446
    .line 447
    .line 448
    :cond_20
    sget v0, Lcom/transsion/postdetail/R$id;->tv_user_name:I

    .line 449
    .line 450
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getUser()Lcom/transsion/moviedetailapi/bean/User;

    .line 451
    .line 452
    .line 453
    move-result-object v2

    .line 454
    if-eqz v2, :cond_21

    .line 455
    .line 456
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/User;->getNickname()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v2

    .line 460
    goto :goto_e

    .line 461
    :cond_21
    move-object v2, v6

    .line 462
    :goto_e
    invoke-virtual {p1, v0, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 463
    .line 464
    .line 465
    sget v0, Lcom/transsion/postdetail/R$id;->tv_staggered_post_like:I

    .line 466
    .line 467
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 468
    .line 469
    .line 470
    move-result-object p1

    .line 471
    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 472
    .line 473
    if-eqz p1, :cond_26

    .line 474
    .line 475
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getStat()Lcom/transsion/moviedetailapi/bean/Stat;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    if-eqz v0, :cond_22

    .line 480
    .line 481
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Stat;->getLikeCount()Ljava/lang/Long;

    .line 482
    .line 483
    .line 484
    move-result-object v6

    .line 485
    :cond_22
    if-eqz v6, :cond_24

    .line 486
    .line 487
    const-wide/16 v2, 0x0

    .line 488
    .line 489
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 490
    .line 491
    .line 492
    move-result-wide v4

    .line 493
    cmp-long v0, v4, v2

    .line 494
    .line 495
    if-nez v0, :cond_23

    .line 496
    .line 497
    goto :goto_f

    .line 498
    :cond_23
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 499
    .line 500
    .line 501
    move-result-wide v0

    .line 502
    invoke-static {v0, v1}, Lcom/transsion/baseui/util/j;->a(J)Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v1

    .line 506
    :cond_24
    :goto_f
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    .line 508
    .line 509
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getHasLike()Ljava/lang/Boolean;

    .line 510
    .line 511
    .line 512
    move-result-object p2

    .line 513
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 514
    .line 515
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 516
    .line 517
    .line 518
    move-result p2

    .line 519
    if-eqz p2, :cond_25

    .line 520
    .line 521
    sget p2, Lcom/tn/lib/widget/R$drawable;->room_staggered_like_icon:I

    .line 522
    .line 523
    invoke-virtual {p1, p2, v8, v8, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 524
    .line 525
    .line 526
    goto :goto_10

    .line 527
    :cond_25
    sget p2, Lcom/tn/lib/widget/R$drawable;->room_staggered_unlike_icon:I

    .line 528
    .line 529
    invoke-virtual {p1, p2, v8, v8, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 530
    .line 531
    .line 532
    :cond_26
    :goto_10
    return-void
.end method

.method public z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/util/List;)V
    .locals 2

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
    const-string v0, "payloads"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-super {p0, p1, p2, p3}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->f(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->v0(Ljava/util/List;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    instance-of p3, p2, Ljava/lang/Boolean;

    .line 31
    .line 32
    if-eqz p3, :cond_4

    .line 33
    .line 34
    :try_start_0
    sget-object p3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    if-eqz p3, :cond_3

    .line 41
    .line 42
    invoke-virtual {p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    if-eqz p3, :cond_3

    .line 47
    .line 48
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a0;->getAdapterPosition()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->a0()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p1

    .line 64
    goto :goto_2

    .line 65
    :cond_1
    const/4 v1, 0x0

    .line 66
    :goto_0
    add-int/2addr v0, v1

    .line 67
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p3

    .line 71
    check-cast p3, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 72
    .line 73
    if-nez p3, :cond_2

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    check-cast p2, Ljava/lang/Boolean;

    .line 77
    .line 78
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    invoke-direct {p0, p1, p3, p2}, Lfo/v;->C(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Z)V

    .line 83
    .line 84
    .line 85
    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 86
    .line 87
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .line 89
    .line 90
    goto :goto_3

    .line 91
    :goto_2
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 92
    .line 93
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    :cond_4
    :goto_3
    return-void
.end method
