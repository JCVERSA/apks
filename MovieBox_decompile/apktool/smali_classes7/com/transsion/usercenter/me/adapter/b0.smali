.class public final Lcom/transsion/usercenter/me/adapter/b0;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "source.java"


# instance fields
.field private final e:Lcom/transsion/usercenter/me/adapter/o;

.field private f:Lcom/transsnet/loginapi/bean/UserInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/transsion/usercenter/me/adapter/b0;-><init>(Lcom/transsion/usercenter/me/adapter/o;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/usercenter/me/adapter/o;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/transsion/usercenter/me/adapter/b0;->e:Lcom/transsion/usercenter/me/adapter/o;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/usercenter/me/adapter/o;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/usercenter/me/adapter/b0;-><init>(Lcom/transsion/usercenter/me/adapter/o;)V

    return-void
.end method

.method public static synthetic A(Lcom/transsnet/loginapi/bean/UserInfo;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/usercenter/me/adapter/b0;->G(Lcom/transsnet/loginapi/bean/UserInfo;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final C()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/me/adapter/b0;->f:Lcom/transsnet/loginapi/bean/UserInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserType()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    return v0
.end method

.method private final D(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    sget-object v2, Lcom/transsion/baselib/kids/KidsAccountManager;->a:Lcom/transsion/baselib/kids/KidsAccountManager;

    .line 4
    .line 5
    invoke-virtual {v2}, Lcom/transsion/baselib/kids/KidsAccountManager;->f()Lcom/transsion/baselib/kids/KidsProfile;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    sget v3, Lcom/transsion/usercenter/R$id;->nameTv:I

    .line 10
    .line 11
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    check-cast v3, Landroid/widget/TextView;

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/transsion/baselib/kids/KidsProfile;->getName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v5, v4

    .line 26
    :goto_0
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 30
    .line 31
    .line 32
    sget v3, Lcom/transsion/usercenter/R$id;->safeKidsTv:I

    .line 33
    .line 34
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Lcom/transsion/baseui/widget/GradientBorderTagView;

    .line 39
    .line 40
    sget-object v5, Lij/o;->a:Lij/o;

    .line 41
    .line 42
    invoke-virtual {v5}, Lij/o;->j()Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    const/16 v6, 0x8

    .line 47
    .line 48
    if-eqz v5, :cond_1

    .line 49
    .line 50
    move v5, v1

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    move v5, v6

    .line 53
    :goto_1
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    sget v7, Lcom/transsion/usercenter/R$string;->user_switch_profile:I

    .line 65
    .line 66
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    const-string v7, "getString(...)"

    .line 71
    .line 72
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v5}, Lcom/transsion/baseui/widget/GradientBorderTagView;->setText(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    sget v3, Lcom/transsion/usercenter/R$id;->idTv:I

    .line 79
    .line 80
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    check-cast v3, Landroid/widget/TextView;

    .line 85
    .line 86
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    sget v7, Lcom/transsion/usercenter/R$string;->user_id_show:I

    .line 95
    .line 96
    if-eqz p2, :cond_2

    .line 97
    .line 98
    invoke-virtual {p2}, Lcom/transsnet/loginapi/bean/UserInfo;->getUsername()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    goto :goto_2

    .line 103
    :cond_2
    move-object p2, v4

    .line 104
    :goto_2
    new-array v8, v0, [Ljava/lang/Object;

    .line 105
    .line 106
    aput-object p2, v8, v1

    .line 107
    .line 108
    invoke-virtual {v5, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    .line 114
    .line 115
    sget p2, Lcom/transsion/usercenter/R$id;->genderTv:I

    .line 116
    .line 117
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    check-cast p2, Landroid/widget/TextView;

    .line 122
    .line 123
    if-eqz v2, :cond_3

    .line 124
    .line 125
    invoke-virtual {v2}, Lcom/transsion/baselib/kids/KidsProfile;->getGender()Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    goto :goto_3

    .line 130
    :cond_3
    move-object v3, v4

    .line 131
    :goto_3
    if-nez v3, :cond_4

    .line 132
    .line 133
    move v3, v1

    .line 134
    goto :goto_5

    .line 135
    :cond_4
    if-eqz v2, :cond_6

    .line 136
    .line 137
    invoke-virtual {v2}, Lcom/transsion/baselib/kids/KidsProfile;->getGender()Ljava/lang/Integer;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    if-nez v3, :cond_5

    .line 142
    .line 143
    goto :goto_4

    .line 144
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    if-ne v3, v0, :cond_6

    .line 149
    .line 150
    sget v3, Lcom/transsion/usercenter/R$mipmap;->profile_man:I

    .line 151
    .line 152
    goto :goto_5

    .line 153
    :cond_6
    :goto_4
    sget v3, Lcom/transsion/usercenter/R$mipmap;->profile_female:I

    .line 154
    .line 155
    :goto_5
    invoke-virtual {p2, v3, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 156
    .line 157
    .line 158
    if-eqz v2, :cond_7

    .line 159
    .line 160
    invoke-virtual {v2}, Lcom/transsion/baselib/kids/KidsProfile;->getAge()Ljava/lang/Integer;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    if-eqz v3, :cond_7

    .line 165
    .line 166
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    goto :goto_6

    .line 171
    :cond_7
    move v3, v1

    .line 172
    :goto_6
    const-string v5, ""

    .line 173
    .line 174
    if-gtz v3, :cond_8

    .line 175
    .line 176
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    .line 178
    .line 179
    goto :goto_8

    .line 180
    :cond_8
    new-instance v3, Landroid/text/SpannableStringBuilder;

    .line 181
    .line 182
    invoke-direct {v3, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 183
    .line 184
    .line 185
    sget-object v5, Lsm/e;->a:Lsm/e;

    .line 186
    .line 187
    invoke-virtual {v5, v3}, Lsm/e;->b(Landroid/text/SpannableStringBuilder;)V

    .line 188
    .line 189
    .line 190
    if-eqz v2, :cond_9

    .line 191
    .line 192
    invoke-virtual {v2}, Lcom/transsion/baselib/kids/KidsProfile;->getAge()Ljava/lang/Integer;

    .line 193
    .line 194
    .line 195
    move-result-object v5

    .line 196
    goto :goto_7

    .line 197
    :cond_9
    move-object v5, v4

    .line 198
    :goto_7
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    .line 207
    .line 208
    :goto_8
    if-eqz v2, :cond_a

    .line 209
    .line 210
    invoke-virtual {v2}, Lcom/transsion/baselib/kids/KidsProfile;->getGender()Ljava/lang/Integer;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    goto :goto_9

    .line 215
    :cond_a
    move-object v3, v4

    .line 216
    :goto_9
    if-nez v3, :cond_d

    .line 217
    .line 218
    if-eqz v2, :cond_b

    .line 219
    .line 220
    invoke-virtual {v2}, Lcom/transsion/baselib/kids/KidsProfile;->getAge()Ljava/lang/Integer;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    if-eqz v3, :cond_b

    .line 225
    .line 226
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 227
    .line 228
    .line 229
    move-result v3

    .line 230
    goto :goto_a

    .line 231
    :cond_b
    move v3, v1

    .line 232
    :goto_a
    if-lez v3, :cond_c

    .line 233
    .line 234
    goto :goto_b

    .line 235
    :cond_c
    move v3, v1

    .line 236
    goto :goto_c

    .line 237
    :cond_d
    :goto_b
    move v3, v0

    .line 238
    :goto_c
    if-eqz v3, :cond_e

    .line 239
    .line 240
    move v6, v1

    .line 241
    :cond_e
    invoke-virtual {p2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 242
    .line 243
    .line 244
    sget p2, Lcom/transsion/usercenter/R$id;->avatarIV:I

    .line 245
    .line 246
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    check-cast p1, Landroid/widget/ImageView;

    .line 251
    .line 252
    if-eqz v2, :cond_f

    .line 253
    .line 254
    invoke-virtual {v2}, Lcom/transsion/baselib/kids/KidsProfile;->getAvatarLocalPath()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v4

    .line 258
    :cond_f
    if-eqz v4, :cond_11

    .line 259
    .line 260
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 261
    .line 262
    .line 263
    move-result p2

    .line 264
    if-nez p2, :cond_10

    .line 265
    .line 266
    goto :goto_d

    .line 267
    :cond_10
    move v0, v1

    .line 268
    :cond_11
    :goto_d
    if-nez v0, :cond_12

    .line 269
    .line 270
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 271
    .line 272
    .line 273
    move-result-object p2

    .line 274
    invoke-static {p2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 275
    .line 276
    .line 277
    move-result-object p2

    .line 278
    new-instance v0, Ljava/io/File;

    .line 279
    .line 280
    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;

    .line 284
    .line 285
    .line 286
    move-result-object p2

    .line 287
    invoke-virtual {p2, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 288
    .line 289
    .line 290
    goto :goto_e

    .line 291
    :cond_12
    if-eqz p1, :cond_14

    .line 292
    .line 293
    if-eqz v2, :cond_13

    .line 294
    .line 295
    invoke-virtual {v2}, Lcom/transsion/baselib/kids/KidsProfile;->getAvatarResId()I

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    :cond_13
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 300
    .line 301
    .line 302
    :cond_14
    :goto_e
    return-void
.end method

.method private final E(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    sget v1, Lcom/transsion/usercenter/R$id;->loginTv:I

    .line 3
    .line 4
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const/16 v2, 0x8

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    sget v1, Lcom/transsion/usercenter/R$id;->avatarIV:I

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 24
    .line 25
    const-string v1, "itemView"

    .line 26
    .line 27
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    new-instance v7, Lcom/transsion/usercenter/me/adapter/y;

    .line 31
    .line 32
    invoke-direct {v7, p2, p0}, Lcom/transsion/usercenter/me/adapter/y;-><init>(Lcom/transsnet/loginapi/bean/UserInfo;Lcom/transsion/usercenter/me/adapter/b0;)V

    .line 33
    .line 34
    .line 35
    const/4 v8, 0x1

    .line 36
    const/4 v9, 0x0

    .line 37
    const-wide/16 v5, 0x0

    .line 38
    .line 39
    invoke-static/range {v4 .. v9}, Luf/c;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    if-nez p2, :cond_0

    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    sget-object v1, Lij/g;->a:Lij/g;

    .line 46
    .line 47
    invoke-virtual {v1}, Lij/g;->b()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    sget v1, Lcom/transsion/usercenter/R$id;->tvLoginMyChannel:I

    .line 54
    .line 55
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    sget-object v4, Lij/o;->a:Lij/o;

    .line 60
    .line 61
    invoke-virtual {v4}, Lij/o;->i()Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-nez v4, :cond_1

    .line 66
    .line 67
    move v4, v3

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    move v4, v2

    .line 70
    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    sget v1, Lcom/transsion/usercenter/R$id;->tvLoginMyChannel:I

    .line 74
    .line 75
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Landroid/widget/TextView;

    .line 80
    .line 81
    new-instance v4, Lcom/transsion/usercenter/me/adapter/z;

    .line 82
    .line 83
    invoke-direct {v4, p2, p1}, Lcom/transsion/usercenter/me/adapter/z;-><init>(Lcom/transsnet/loginapi/bean/UserInfo;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    .line 88
    .line 89
    :cond_2
    sget v1, Lcom/transsion/usercenter/R$id;->safeKidsGroup:I

    .line 90
    .line 91
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 96
    .line 97
    .line 98
    new-instance v1, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    .line 99
    .line 100
    invoke-direct {v1, v0, p2}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;-><init>(ILjava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    iget-object v4, p0, Lcom/transsion/usercenter/me/adapter/b0;->e:Lcom/transsion/usercenter/me/adapter/o;

    .line 104
    .line 105
    if-eqz v4, :cond_3

    .line 106
    .line 107
    invoke-virtual {v4}, Lcom/transsion/usercenter/me/adapter/o;->R1()Lkotlin/jvm/functions/Function1;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    if-eqz v4, :cond_3

    .line 112
    .line 113
    invoke-interface {v4, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    :cond_3
    sget v1, Lcom/transsion/usercenter/R$id;->safeKidsGroup:I

    .line 117
    .line 118
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 123
    .line 124
    .line 125
    new-instance v1, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    .line 126
    .line 127
    invoke-direct {v1, v0, p2}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;-><init>(ILjava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    iget-object v4, p0, Lcom/transsion/usercenter/me/adapter/b0;->e:Lcom/transsion/usercenter/me/adapter/o;

    .line 131
    .line 132
    if-eqz v4, :cond_4

    .line 133
    .line 134
    invoke-virtual {v4}, Lcom/transsion/usercenter/me/adapter/o;->R1()Lkotlin/jvm/functions/Function1;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    if-eqz v4, :cond_4

    .line 139
    .line 140
    invoke-interface {v4, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    :cond_4
    sget-object v1, Lij/o;->a:Lij/o;

    .line 144
    .line 145
    invoke-virtual {v1}, Lij/o;->i()Z

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    if-eqz v4, :cond_5

    .line 150
    .line 151
    invoke-direct {p0, p1, p2}, Lcom/transsion/usercenter/me/adapter/b0;->D(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsnet/loginapi/bean/UserInfo;)V

    .line 152
    .line 153
    .line 154
    return-void

    .line 155
    :cond_5
    sget v4, Lcom/transsion/usercenter/R$id;->nameTv:I

    .line 156
    .line 157
    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    check-cast v4, Landroid/widget/TextView;

    .line 162
    .line 163
    invoke-virtual {p2}, Lcom/transsnet/loginapi/bean/UserInfo;->getNickname()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    .line 169
    .line 170
    const/4 v5, 0x0

    .line 171
    invoke-virtual {v4, v5, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 172
    .line 173
    .line 174
    sget v4, Lcom/transsion/usercenter/R$id;->safeKidsTv:I

    .line 175
    .line 176
    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    check-cast v4, Lcom/transsion/baseui/widget/GradientBorderTagView;

    .line 181
    .line 182
    invoke-virtual {v1}, Lij/o;->j()Z

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    if-eqz v1, :cond_6

    .line 187
    .line 188
    move v1, v3

    .line 189
    goto :goto_1

    .line 190
    :cond_6
    move v1, v2

    .line 191
    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 192
    .line 193
    .line 194
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    sget v5, Lcom/transsion/usercenter/R$string;->user_safe_kids:I

    .line 203
    .line 204
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    const-string v5, "getString(...)"

    .line 209
    .line 210
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v4, v1}, Lcom/transsion/baseui/widget/GradientBorderTagView;->setText(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    sget v1, Lcom/transsion/usercenter/R$id;->idTv:I

    .line 217
    .line 218
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    check-cast v1, Landroid/widget/TextView;

    .line 223
    .line 224
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 225
    .line 226
    .line 227
    move-result-object v4

    .line 228
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 229
    .line 230
    .line 231
    move-result-object v4

    .line 232
    sget v5, Lcom/transsion/usercenter/R$string;->user_id_show:I

    .line 233
    .line 234
    invoke-virtual {p2}, Lcom/transsnet/loginapi/bean/UserInfo;->getUsername()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v6

    .line 238
    new-array v7, v0, [Ljava/lang/Object;

    .line 239
    .line 240
    aput-object v6, v7, v3

    .line 241
    .line 242
    invoke-virtual {v4, v5, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v4

    .line 246
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    .line 248
    .line 249
    sget v1, Lcom/transsion/usercenter/R$id;->genderTv:I

    .line 250
    .line 251
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    check-cast v1, Landroid/widget/TextView;

    .line 256
    .line 257
    invoke-virtual {p2}, Lcom/transsnet/loginapi/bean/UserInfo;->getGender()I

    .line 258
    .line 259
    .line 260
    move-result v4

    .line 261
    if-nez v4, :cond_7

    .line 262
    .line 263
    move v4, v3

    .line 264
    goto :goto_2

    .line 265
    :cond_7
    invoke-virtual {p2}, Lcom/transsnet/loginapi/bean/UserInfo;->getGender()I

    .line 266
    .line 267
    .line 268
    move-result v4

    .line 269
    if-ne v4, v0, :cond_8

    .line 270
    .line 271
    sget v4, Lcom/transsion/usercenter/R$mipmap;->profile_man:I

    .line 272
    .line 273
    goto :goto_2

    .line 274
    :cond_8
    sget v4, Lcom/transsion/usercenter/R$mipmap;->profile_female:I

    .line 275
    .line 276
    :goto_2
    invoke-virtual {v1, v4, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {p2}, Lcom/transsnet/loginapi/bean/UserInfo;->getAge()I

    .line 280
    .line 281
    .line 282
    move-result v4

    .line 283
    const-string v5, ""

    .line 284
    .line 285
    if-gtz v4, :cond_9

    .line 286
    .line 287
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    .line 289
    .line 290
    goto :goto_3

    .line 291
    :cond_9
    new-instance v4, Landroid/text/SpannableStringBuilder;

    .line 292
    .line 293
    invoke-direct {v4, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 294
    .line 295
    .line 296
    sget-object v5, Lsm/e;->a:Lsm/e;

    .line 297
    .line 298
    invoke-virtual {v5, v4}, Lsm/e;->b(Landroid/text/SpannableStringBuilder;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {p2}, Lcom/transsnet/loginapi/bean/UserInfo;->getAge()I

    .line 302
    .line 303
    .line 304
    move-result v5

    .line 305
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v5

    .line 309
    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    .line 314
    .line 315
    :goto_3
    invoke-virtual {p2}, Lcom/transsnet/loginapi/bean/UserInfo;->getGender()I

    .line 316
    .line 317
    .line 318
    move-result v4

    .line 319
    if-nez v4, :cond_b

    .line 320
    .line 321
    invoke-virtual {p2}, Lcom/transsnet/loginapi/bean/UserInfo;->getAge()I

    .line 322
    .line 323
    .line 324
    move-result v4

    .line 325
    if-lez v4, :cond_a

    .line 326
    .line 327
    goto :goto_4

    .line 328
    :cond_a
    move v0, v3

    .line 329
    :cond_b
    :goto_4
    if-eqz v0, :cond_c

    .line 330
    .line 331
    move v2, v3

    .line 332
    :cond_c
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 333
    .line 334
    .line 335
    sget v0, Lcom/transsion/usercenter/R$id;->avatarIV:I

    .line 336
    .line 337
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 338
    .line 339
    .line 340
    move-result-object p1

    .line 341
    check-cast p1, Landroid/widget/ImageView;

    .line 342
    .line 343
    sget-object v0, Lni/f;->a:Lni/f$a;

    .line 344
    .line 345
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    const-string v2, "getContext(...)"

    .line 350
    .line 351
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v0, v1}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    invoke-virtual {p2}, Lcom/transsnet/loginapi/bean/UserInfo;->getAvatar()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object p2

    .line 362
    invoke-virtual {v0, p2}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 363
    .line 364
    .line 365
    move-result-object p2

    .line 366
    sget v0, Lcom/tn/lib/widget/R$mipmap;->profile_default_avatar:I

    .line 367
    .line 368
    invoke-virtual {p2, v0}, Lni/f$b;->i(I)Lni/f$b;

    .line 369
    .line 370
    .line 371
    move-result-object p2

    .line 372
    invoke-virtual {p2, p1}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 373
    .line 374
    .line 375
    return-void
.end method

.method private static final F(Lcom/transsnet/loginapi/bean/UserInfo;Lcom/transsion/usercenter/me/adapter/b0;Landroid/view/View;)Lkotlin/Unit;
    .locals 3

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p2, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-direct {p2, v0, p0}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;-><init>(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    sget-object v1, Lij/o;->a:Lij/o;

    .line 13
    .line 14
    invoke-virtual {v1}, Lij/o;->j()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    sget-object p0, Lcom/transsion/usercenter/kids/AccountSwitchDialog;->g:Lcom/transsion/usercenter/kids/AccountSwitchDialog$a;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-static {p0, v1, v0, v2}, Lcom/transsion/usercenter/kids/AccountSwitchDialog$a;->b(Lcom/transsion/usercenter/kids/AccountSwitchDialog$a;ZILjava/lang/Object;)Lcom/transsion/usercenter/kids/AccountSwitchDialog;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "AccountSwitchDialog"

    .line 33
    .line 34
    invoke-virtual {p0, v0, v1}, Lcom/tn/lib/dialog/BaseDialog;->X(Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    sget-object v0, Lcom/transsion/usercenter/edit/ProfileEditCenterActivity;->b:Lcom/transsion/usercenter/edit/ProfileEditCenterActivity$a;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1, p0}, Lcom/transsion/usercenter/edit/ProfileEditCenterActivity$a;->a(Landroid/content/Context;Lcom/transsnet/loginapi/bean/UserInfo;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    iget-object p0, p1, Lcom/transsion/usercenter/me/adapter/b0;->e:Lcom/transsion/usercenter/me/adapter/o;

    .line 48
    .line 49
    if-eqz p0, :cond_1

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/transsion/usercenter/me/adapter/o;->Q1()Lkotlin/jvm/functions/Function1;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    if-eqz p0, :cond_1

    .line 56
    .line 57
    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 61
    .line 62
    return-object p0
.end method

.method private static final G(Lcom/transsnet/loginapi/bean/UserInfo;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V
    .locals 1

    .line 1
    const-string p2, "/profile/user_profile"

    .line 2
    .line 3
    invoke-static {p2}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const-string v0, "userId"

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p2, v0, p0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 p2, 0x0

    .line 24
    const/4 v0, 0x2

    .line 25
    invoke-static {p0, p1, p2, v0, p2}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method private final H(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 8

    .line 1
    sget v0, Lcom/transsion/usercenter/R$id;->genderTv:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    sget v0, Lcom/transsion/usercenter/R$id;->avatarIV:I

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    sget v0, Lcom/transsion/usercenter/R$id;->safeKidsGroup:I

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    sget v0, Lcom/transsion/usercenter/R$id;->loginTv:I

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    move-object v2, v0

    .line 37
    check-cast v2, Landroid/widget/TextView;

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    sget v3, Lcom/transsion/usercenter/R$string;->user_login:I

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 46
    .line 47
    .line 48
    new-instance v5, Lcom/transsion/usercenter/me/adapter/a0;

    .line 49
    .line 50
    invoke-direct {v5, p0}, Lcom/transsion/usercenter/me/adapter/a0;-><init>(Lcom/transsion/usercenter/me/adapter/b0;)V

    .line 51
    .line 52
    .line 53
    const/4 v6, 0x1

    .line 54
    const/4 v7, 0x0

    .line 55
    const-wide/16 v3, 0x0

    .line 56
    .line 57
    invoke-static/range {v2 .. v7}, Luf/c;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 61
    .line 62
    const/4 v3, 0x0

    .line 63
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    .line 65
    .line 66
    sget v2, Lcom/transsion/usercenter/R$id;->nameTv:I

    .line 67
    .line 68
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Landroid/widget/TextView;

    .line 73
    .line 74
    sget v4, Lcom/transsion/usercenter/R$string;->user_login_title:I

    .line 75
    .line 76
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 80
    .line 81
    .line 82
    sget v2, Lcom/transsion/usercenter/R$id;->idTv:I

    .line 83
    .line 84
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    check-cast v2, Landroid/widget/TextView;

    .line 89
    .line 90
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    sget v5, Lcom/transsion/usercenter/R$string;->user_id_show:I

    .line 99
    .line 100
    if-eqz p2, :cond_0

    .line 101
    .line 102
    invoke-virtual {p2}, Lcom/transsnet/loginapi/bean/UserInfo;->getUsername()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    :cond_0
    const/4 p2, 0x1

    .line 107
    new-array p2, p2, [Ljava/lang/Object;

    .line 108
    .line 109
    aput-object v3, p2, v0

    .line 110
    .line 111
    invoke-virtual {v4, v5, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    .line 117
    .line 118
    sget p2, Lcom/transsion/usercenter/R$id;->tvLoginMyChannel:I

    .line 119
    .line 120
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 125
    .line 126
    .line 127
    return-void
.end method

.method private static final I(Lcom/transsion/usercenter/me/adapter/b0;Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lcom/transsion/usercenter/me/k;->a:Lcom/transsion/usercenter/me/k;

    .line 7
    .line 8
    const-string v0, "login"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/transsion/usercenter/me/k;->b(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    new-array p1, p1, [Ljava/lang/Object;

    .line 15
    .line 16
    const-class v0, Lqx/a;

    .line 17
    .line 18
    invoke-static {v0, p1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lqx/a;

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-interface {p1, p0}, Lqx/a;->k(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 34
    .line 35
    return-object p0
.end method

.method public static synthetic y(Lcom/transsion/usercenter/me/adapter/b0;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/usercenter/me/adapter/b0;->I(Lcom/transsion/usercenter/me/adapter/b0;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic z(Lcom/transsnet/loginapi/bean/UserInfo;Lcom/transsion/usercenter/me/adapter/b0;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/usercenter/me/adapter/b0;->F(Lcom/transsnet/loginapi/bean/UserInfo;Lcom/transsion/usercenter/me/adapter/b0;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public B(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/profile/bean/MeItemInfo;)V
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
    invoke-virtual {p2}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;->getData()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    instance-of v0, p2, Lcom/transsnet/loginapi/bean/UserInfo;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    check-cast p2, Lcom/transsnet/loginapi/bean/UserInfo;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object p2, v1

    .line 24
    :goto_0
    iput-object p2, p0, Lcom/transsion/usercenter/me/adapter/b0;->f:Lcom/transsnet/loginapi/bean/UserInfo;

    .line 25
    .line 26
    sget-object v0, Lcom/transsion/usercenter/me/k;->a:Lcom/transsion/usercenter/me/k;

    .line 27
    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    invoke-virtual {p2}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    :cond_1
    invoke-virtual {v0, v1}, Lcom/transsion/usercenter/me/k;->d(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Lcom/transsion/usercenter/me/adapter/b0;->C()Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-eqz p2, :cond_2

    .line 42
    .line 43
    sget-object p2, Lij/o;->a:Lij/o;

    .line 44
    .line 45
    invoke-virtual {p2}, Lij/o;->i()Z

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    if-nez p2, :cond_2

    .line 50
    .line 51
    iget-object p2, p0, Lcom/transsion/usercenter/me/adapter/b0;->f:Lcom/transsnet/loginapi/bean/UserInfo;

    .line 52
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/transsion/usercenter/me/adapter/b0;->H(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsnet/loginapi/bean/UserInfo;)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    iget-object p2, p0, Lcom/transsion/usercenter/me/adapter/b0;->f:Lcom/transsnet/loginapi/bean/UserInfo;

    .line 58
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/transsion/usercenter/me/adapter/b0;->E(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsnet/loginapi/bean/UserInfo;)V

    .line 60
    .line 61
    .line 62
    :goto_1
    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/usercenter/me/adapter/b0;->B(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/profile/bean/MeItemInfo;)V

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
    sget v0, Lcom/transsion/usercenter/R$layout;->mine_item_header_layout:I

    .line 2
    .line 3
    return v0
.end method
