.class public final Lvq/b;
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


# virtual methods
.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/shorttv/bean/Staff;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lvq/b;->y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv/bean/Staff;)V

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
    sget v0, Lcom/transsion/shorttv/R$layout;->short_tv_item_cast:I

    .line 2
    .line 3
    return v0
.end method

.method public y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv/bean/Staff;)V
    .locals 7

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
    sget v2, Lcom/transsion/shorttv/R$id;->iv_cover:I

    .line 14
    .line 15
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 20
    .line 21
    if-eqz v2, :cond_3

    .line 22
    .line 23
    sget v3, Lcom/transsion/shorttv/R$mipmap;->short_tv_movie_staff_default_avatar:I

    .line 24
    .line 25
    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Staff;->getAvatarUrl()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    if-eqz v4, :cond_2

    .line 30
    .line 31
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-nez v4, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    sget-object v4, Lni/f;->a:Lni/f$a;

    .line 39
    .line 40
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    const-string v6, "getContext(...)"

    .line 45
    .line 46
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, v5}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Staff;->getAvatarUrl()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    if-nez v5, :cond_1

    .line 58
    .line 59
    const-string v5, ""

    .line 60
    .line 61
    :cond_1
    invoke-virtual {v4, v5}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v4, v3}, Lni/f$b;->i(I)Lni/f$b;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v3, v2}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    :goto_0
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 74
    .line 75
    .line 76
    :cond_3
    :goto_1
    sget v2, Lcom/transsion/shorttv/R$id;->tv_title:I

    .line 77
    .line 78
    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Staff;->getName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {p1, v2, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 83
    .line 84
    .line 85
    sget v2, Lcom/transsion/shorttv/R$id;->tv_subject_num:I

    .line 86
    .line 87
    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    sget v4, Lcom/transsion/shorttv/R$string;->short_tv_subject_num:I

    .line 94
    .line 95
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    const-string v4, "getString(...)"

    .line 100
    .line 101
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Staff;->getSubjectNum()Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    new-array v5, v1, [Ljava/lang/Object;

    .line 109
    .line 110
    aput-object v4, v5, v0

    .line 111
    .line 112
    invoke-static {v5, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    const-string v4, "format(...)"

    .line 121
    .line 122
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v2, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 126
    .line 127
    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Staff;->getStaffTypes()Ljava/util/List;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    if-eqz v3, :cond_4

    .line 138
    .line 139
    check-cast v3, Ljava/lang/Iterable;

    .line 140
    .line 141
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    if-eqz v4, :cond_4

    .line 150
    .line 151
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    check-cast v4, Lcom/transsion/shorttv/bean/StaffType;

    .line 156
    .line 157
    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/StaffType;->getName()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string v4, "\u2022"

    .line 165
    .line 166
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_4
    new-array v1, v1, [C

    .line 171
    .line 172
    const/16 v3, 0x2022

    .line 173
    .line 174
    aput-char v3, v1, v0

    .line 175
    .line 176
    invoke-static {v2, v1}, Lkotlin/text/StringsKt;->q1(Ljava/lang/CharSequence;[C)Ljava/lang/CharSequence;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    sget v1, Lcom/transsion/shorttv/R$id;->tv_desc:I

    .line 181
    .line 182
    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    if-eqz v0, :cond_5

    .line 190
    .line 191
    invoke-virtual {v0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->g0(Ljava/lang/Object;)I

    .line 192
    .line 193
    .line 194
    move-result p2

    .line 195
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 196
    .line 197
    .line 198
    move-result-object p2

    .line 199
    goto :goto_3

    .line 200
    :cond_5
    const/4 p2, 0x0

    .line 201
    :goto_3
    if-nez p2, :cond_6

    .line 202
    .line 203
    goto :goto_4

    .line 204
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 205
    .line 206
    .line 207
    move-result p2

    .line 208
    if-nez p2, :cond_9

    .line 209
    .line 210
    sget p2, Lcom/transsion/shorttv/R$id;->divider:I

    .line 211
    .line 212
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 213
    .line 214
    .line 215
    move-result-object p2

    .line 216
    if-eqz p2, :cond_7

    .line 217
    .line 218
    invoke-static {p2}, Lcr/b;->e(Landroid/view/View;)V

    .line 219
    .line 220
    .line 221
    :cond_7
    sget p2, Lcom/transsion/shorttv/R$id;->bg_gradient:I

    .line 222
    .line 223
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 224
    .line 225
    .line 226
    move-result-object p2

    .line 227
    if-eqz p2, :cond_8

    .line 228
    .line 229
    invoke-static {p2}, Lcr/b;->e(Landroid/view/View;)V

    .line 230
    .line 231
    .line 232
    :cond_8
    sget p2, Lcom/transsion/shorttv/R$id;->item_root:I

    .line 233
    .line 234
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    if-eqz p1, :cond_c

    .line 239
    .line 240
    sget p2, Lcom/transsion/shorttv/R$drawable;->short_tv_bg_category_first_item:I

    .line 241
    .line 242
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 243
    .line 244
    .line 245
    goto :goto_5

    .line 246
    :cond_9
    :goto_4
    sget p2, Lcom/transsion/shorttv/R$id;->divider:I

    .line 247
    .line 248
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 249
    .line 250
    .line 251
    move-result-object p2

    .line 252
    if-eqz p2, :cond_a

    .line 253
    .line 254
    invoke-static {p2}, Lcr/b;->b(Landroid/view/View;)V

    .line 255
    .line 256
    .line 257
    :cond_a
    sget p2, Lcom/transsion/shorttv/R$id;->bg_gradient:I

    .line 258
    .line 259
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 260
    .line 261
    .line 262
    move-result-object p2

    .line 263
    if-eqz p2, :cond_b

    .line 264
    .line 265
    invoke-static {p2}, Lcr/b;->b(Landroid/view/View;)V

    .line 266
    .line 267
    .line 268
    :cond_b
    sget p2, Lcom/transsion/shorttv/R$id;->item_root:I

    .line 269
    .line 270
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    if-eqz p1, :cond_c

    .line 275
    .line 276
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 277
    .line 278
    .line 279
    move-result-object p2

    .line 280
    sget v0, Lcom/transsion/shorttv/R$color;->short_tv_white:I

    .line 281
    .line 282
    invoke-static {p2, v0}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 283
    .line 284
    .line 285
    move-result p2

    .line 286
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 287
    .line 288
    .line 289
    :cond_c
    :goto_5
    return-void
.end method
