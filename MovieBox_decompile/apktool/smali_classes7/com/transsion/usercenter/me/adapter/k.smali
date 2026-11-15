.class public final Lcom/transsion/usercenter/me/adapter/k;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "source.java"


# instance fields
.field private final e:Lcom/transsion/usercenter/me/adapter/o;

.field private final f:Lkotlin/Lazy;

.field private final g:Lkotlin/Lazy;

.field private final h:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/transsion/usercenter/me/adapter/k;-><init>(Lcom/transsion/usercenter/me/adapter/o;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/usercenter/me/adapter/o;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/transsion/usercenter/me/adapter/k;->e:Lcom/transsion/usercenter/me/adapter/o;

    .line 5
    new-instance p1, Lcom/transsion/usercenter/me/adapter/f;

    invoke-direct {p1}, Lcom/transsion/usercenter/me/adapter/f;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/usercenter/me/adapter/k;->f:Lkotlin/Lazy;

    .line 6
    new-instance p1, Lcom/transsion/usercenter/me/adapter/g;

    invoke-direct {p1}, Lcom/transsion/usercenter/me/adapter/g;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/usercenter/me/adapter/k;->g:Lkotlin/Lazy;

    .line 7
    new-instance p1, Lcom/transsion/usercenter/me/adapter/h;

    invoke-direct {p1}, Lcom/transsion/usercenter/me/adapter/h;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/usercenter/me/adapter/k;->h:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/usercenter/me/adapter/o;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/usercenter/me/adapter/k;-><init>(Lcom/transsion/usercenter/me/adapter/o;)V

    return-void
.end method

.method public static synthetic A(Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/usercenter/me/adapter/k;->L(Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic B(Lcom/transsion/usercenter/profile/bean/IconItemInfo;Lcom/transsion/usercenter/me/adapter/k;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/profile/bean/MeItemInfo;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/usercenter/me/adapter/k;->E(Lcom/transsion/usercenter/profile/bean/IconItemInfo;Lcom/transsion/usercenter/me/adapter/k;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/profile/bean/MeItemInfo;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic C()Lep/d;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/usercenter/me/adapter/k;->H()Lep/d;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    return-object v0
.end method

.method private static final E(Lcom/transsion/usercenter/profile/bean/IconItemInfo;Lcom/transsion/usercenter/me/adapter/k;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/profile/bean/MeItemInfo;Landroid/view/View;)Lkotlin/Unit;
    .locals 6

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/transsion/usercenter/profile/bean/IconItemInfo;->getCheckLogin()Z

    .line 7
    .line 8
    .line 9
    move-result p4

    .line 10
    const/4 v0, 0x1

    .line 11
    if-eqz p4, :cond_2

    .line 12
    .line 13
    invoke-direct {p1}, Lcom/transsion/usercenter/me/adapter/k;->F()Lqx/a;

    .line 14
    .line 15
    .line 16
    move-result-object p4

    .line 17
    if-eqz p4, :cond_0

    .line 18
    .line 19
    invoke-interface {p4}, Lqx/a;->a()Z

    .line 20
    .line 21
    .line 22
    move-result p4

    .line 23
    if-ne p4, v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-direct {p1}, Lcom/transsion/usercenter/me/adapter/k;->F()Lqx/a;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    if-eqz p0, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-interface {p0, p1}, Lqx/a;->k(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/usercenter/profile/bean/IconItemInfo;->getModuleName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p4

    .line 46
    if-eqz p4, :cond_3

    .line 47
    .line 48
    sget-object v1, Lcom/transsion/usercenter/me/k;->a:Lcom/transsion/usercenter/me/k;

    .line 49
    .line 50
    invoke-virtual {v1, p4}, Lcom/transsion/usercenter/me/k;->b(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/usercenter/profile/bean/IconItemInfo;->getDeepLink()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p4

    .line 57
    const/4 v1, 0x0

    .line 58
    if-eqz p4, :cond_d

    .line 59
    .line 60
    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    const-string v3, "post_list_type"

    .line 65
    .line 66
    const/4 v4, 0x2

    .line 67
    sparse-switch v2, :sswitch_data_0

    .line 68
    .line 69
    .line 70
    goto/16 :goto_2

    .line 71
    .line 72
    :sswitch_0
    const-string v2, "like_list_type"

    .line 73
    .line 74
    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result p4

    .line 78
    if-nez p4, :cond_9

    .line 79
    .line 80
    goto/16 :goto_2

    .line 81
    .line 82
    :sswitch_1
    const-string p2, "study_mode_type"

    .line 83
    .line 84
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    if-nez p2, :cond_4

    .line 89
    .line 90
    goto/16 :goto_2

    .line 91
    .line 92
    :cond_4
    sget-object p0, Lcom/transsion/baselib/kids/KidsAccountManager;->a:Lcom/transsion/baselib/kids/KidsAccountManager;

    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/transsion/baselib/kids/KidsAccountManager;->e()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    if-eqz p0, :cond_6

    .line 99
    .line 100
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    if-nez p0, :cond_5

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_5
    sget-object p0, Lcom/transsion/usercenter/kids/AccountSwitchDialog;->g:Lcom/transsion/usercenter/kids/AccountSwitchDialog$a;

    .line 108
    .line 109
    const/4 p2, 0x0

    .line 110
    invoke-static {p0, p2, v0, v1}, Lcom/transsion/usercenter/kids/AccountSwitchDialog$a;->b(Lcom/transsion/usercenter/kids/AccountSwitchDialog$a;ZILjava/lang/Object;)Lcom/transsion/usercenter/kids/AccountSwitchDialog;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    const-string p4, "AccountSwitchDialog"

    .line 119
    .line 120
    invoke-virtual {p0, p2, p4}, Lcom/tn/lib/dialog/BaseDialog;->X(Landroid/content/Context;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    goto/16 :goto_3

    .line 124
    .line 125
    :cond_6
    :goto_1
    sget-object v0, Lcom/transsion/usercenter/kids/CreateKidsProfileDialog;->h:Lcom/transsion/usercenter/kids/CreateKidsProfileDialog$a;

    .line 126
    .line 127
    const/4 v4, 0x7

    .line 128
    const/4 v5, 0x0

    .line 129
    const/4 v1, 0x0

    .line 130
    const/4 v2, 0x0

    .line 131
    const/4 v3, 0x0

    .line 132
    invoke-static/range {v0 .. v5}, Lcom/transsion/usercenter/kids/CreateKidsProfileDialog$a;->b(Lcom/transsion/usercenter/kids/CreateKidsProfileDialog$a;ZZZILjava/lang/Object;)Lcom/transsion/usercenter/kids/CreateKidsProfileDialog;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    const-string p4, "CreateKidsProfileDialog"

    .line 141
    .line 142
    invoke-virtual {p0, p2, p4}, Lcom/tn/lib/dialog/BaseDialog;->X(Landroid/content/Context;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    goto/16 :goto_3

    .line 146
    .line 147
    :sswitch_2
    const-string p2, "parental_pin_type"

    .line 148
    .line 149
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result p2

    .line 153
    if-nez p2, :cond_7

    .line 154
    .line 155
    goto/16 :goto_2

    .line 156
    .line 157
    :cond_7
    invoke-direct {p1}, Lcom/transsion/usercenter/me/adapter/k;->K()V

    .line 158
    .line 159
    .line 160
    goto/16 :goto_3

    .line 161
    .line 162
    :sswitch_3
    const-string v2, "subscribe_list_type"

    .line 163
    .line 164
    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result p4

    .line 168
    if-nez p4, :cond_8

    .line 169
    .line 170
    goto/16 :goto_2

    .line 171
    .line 172
    :cond_8
    const-string p0, "/subscription/my_subscription"

    .line 173
    .line 174
    invoke-static {p0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 179
    .line 180
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    invoke-static {p0, p2, v1, v4, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    goto/16 :goto_3

    .line 188
    .line 189
    :sswitch_4
    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result p4

    .line 193
    if-nez p4, :cond_9

    .line 194
    .line 195
    goto/16 :goto_2

    .line 196
    .line 197
    :cond_9
    sget-object p4, Lij/g;->a:Lij/g;

    .line 198
    .line 199
    invoke-virtual {p4}, Lij/g;->b()Z

    .line 200
    .line 201
    .line 202
    move-result p4

    .line 203
    if-eqz p4, :cond_b

    .line 204
    .line 205
    invoke-virtual {p0}, Lcom/transsion/usercenter/profile/bean/IconItemInfo;->getDeepLink()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result p0

    .line 213
    if-eqz p0, :cond_a

    .line 214
    .line 215
    const-string p0, "/postdetail/favorite"

    .line 216
    .line 217
    invoke-static {p0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 218
    .line 219
    .line 220
    move-result-object p0

    .line 221
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 222
    .line 223
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 224
    .line 225
    .line 226
    move-result-object p2

    .line 227
    invoke-static {p0, p2, v1, v4, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    goto :goto_3

    .line 231
    :cond_a
    new-instance p0, Landroid/os/Bundle;

    .line 232
    .line 233
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 234
    .line 235
    .line 236
    const-string p0, "/ugc/likes"

    .line 237
    .line 238
    invoke-static {p0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 239
    .line 240
    .line 241
    move-result-object p0

    .line 242
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 243
    .line 244
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 245
    .line 246
    .line 247
    move-result-object p2

    .line 248
    invoke-static {p0, p2, v1, v4, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    goto :goto_3

    .line 252
    :cond_b
    new-instance p2, Landroid/os/Bundle;

    .line 253
    .line 254
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 255
    .line 256
    .line 257
    invoke-virtual {p0}, Lcom/transsion/usercenter/profile/bean/IconItemInfo;->getDeepLink()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p4

    .line 261
    invoke-static {p4, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result p4

    .line 265
    xor-int/2addr p4, v0

    .line 266
    const-string v0, "source"

    .line 267
    .line 268
    invoke-virtual {p2, v0, p4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 269
    .line 270
    .line 271
    invoke-direct {p1}, Lcom/transsion/usercenter/me/adapter/k;->F()Lqx/a;

    .line 272
    .line 273
    .line 274
    move-result-object p4

    .line 275
    if-eqz p4, :cond_c

    .line 276
    .line 277
    invoke-interface {p4}, Lqx/a;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    .line 278
    .line 279
    .line 280
    move-result-object p4

    .line 281
    if-eqz p4, :cond_c

    .line 282
    .line 283
    invoke-virtual {p4}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    :cond_c
    const-string p4, "userId"

    .line 288
    .line 289
    invoke-virtual {p2, p4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    invoke-direct {p1}, Lcom/transsion/usercenter/me/adapter/k;->G()Lcom/transsion/moviedetailapi/g;

    .line 293
    .line 294
    .line 295
    move-result-object p4

    .line 296
    if-eqz p4, :cond_e

    .line 297
    .line 298
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    const-class v1, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;

    .line 303
    .line 304
    invoke-virtual {p0}, Lcom/transsion/usercenter/profile/bean/IconItemInfo;->getTitle()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object p0

    .line 308
    invoke-interface {p4, v0, p2, v1, p0}, Lcom/transsion/moviedetailapi/g;->b(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Class;Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    goto :goto_3

    .line 312
    :cond_d
    :goto_2
    invoke-virtual {p0}, Lcom/transsion/usercenter/profile/bean/IconItemInfo;->getDeepLink()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object p0

    .line 316
    if-eqz p0, :cond_e

    .line 317
    .line 318
    invoke-static {p0, v1, v0, v1}, Lij/k;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 319
    .line 320
    .line 321
    :cond_e
    :goto_3
    iget-object p0, p1, Lcom/transsion/usercenter/me/adapter/k;->e:Lcom/transsion/usercenter/me/adapter/o;

    .line 322
    .line 323
    if-eqz p0, :cond_f

    .line 324
    .line 325
    invoke-virtual {p0}, Lcom/transsion/usercenter/me/adapter/o;->Q1()Lkotlin/jvm/functions/Function1;

    .line 326
    .line 327
    .line 328
    move-result-object p0

    .line 329
    if-eqz p0, :cond_f

    .line 330
    .line 331
    invoke-interface {p0, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    :cond_f
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 335
    .line 336
    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x796e6aa4 -> :sswitch_4
        -0x5959727a -> :sswitch_3
        0x40b8ba4e -> :sswitch_2
        0x482fbd60 -> :sswitch_1
        0x7114a393 -> :sswitch_0
    .end sparse-switch
.end method

.method private final F()Lqx/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/me/adapter/k;->h:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lqx/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private final G()Lcom/transsion/moviedetailapi/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/me/adapter/k;->f:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/moviedetailapi/g;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final H()Lep/d;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-class v1, Lep/d;

    .line 5
    .line 6
    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    return-object v0
.end method

.method private static final I()Lqx/a;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-class v1, Lqx/a;

    .line 5
    .line 6
    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lqx/a;

    .line 11
    .line 12
    return-object v0
.end method

.method private static final J()Lcom/transsion/moviedetailapi/g;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-class v1, Lcom/transsion/moviedetailapi/g;

    .line 5
    .line 6
    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/transsion/moviedetailapi/g;

    .line 11
    .line 12
    return-object v0
.end method

.method private final K()V
    .locals 9

    .line 1
    sget-object v0, Lcom/transsion/baselib/kids/KidsAccountManager;->a:Lcom/transsion/baselib/kids/KidsAccountManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/baselib/kids/KidsAccountManager;->e()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const-string v1, ""

    .line 10
    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/transsion/baselib/kids/KidsAccountManager;->i()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const-string v0, "/kids/pin_management"

    .line 18
    .line 19
    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v2, "arg_kids_id"

    .line 24
    .line 25
    invoke-virtual {v0, v2, v1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v1, 0x3

    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-static {v0, v2, v2, v1, v2}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    sget-object v3, Lcom/transsion/usercenter/kids/PinInputDialog;->o:Lcom/transsion/usercenter/kids/PinInputDialog$a;

    .line 36
    .line 37
    new-instance v5, Lcom/transsion/usercenter/me/adapter/j;

    .line 38
    .line 39
    invoke-direct {v5, v1}, Lcom/transsion/usercenter/me/adapter/j;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/4 v7, 0x5

    .line 43
    const/4 v8, 0x0

    .line 44
    const/4 v4, 0x0

    .line 45
    const/4 v6, 0x0

    .line 46
    invoke-static/range {v3 .. v8}, Lcom/transsion/usercenter/kids/PinInputDialog$a;->b(Lcom/transsion/usercenter/kids/PinInputDialog$a;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/transsion/usercenter/kids/PinInputDialog;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const-string v2, "PinInputDialog"

    .line 55
    .line 56
    invoke-virtual {v0, v1, v2}, Lcom/tn/lib/dialog/BaseDialog;->X(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void
.end method

.method private static final L(Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "pin"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsion/baselib/kids/KidsAccountManager;->a:Lcom/transsion/baselib/kids/KidsAccountManager;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/transsion/baselib/kids/KidsAccountManager;->p(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "/kids/pin_management"

    .line 12
    .line 13
    invoke-static {p1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v0, "arg_kids_id"

    .line 18
    .line 19
    invoke-virtual {p1, v0, p0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const/4 p1, 0x0

    .line 24
    const/4 v0, 0x3

    .line 25
    invoke-static {p0, p1, p1, v0, p1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 29
    .line 30
    return-object p0
.end method

.method public static synthetic y()Lcom/transsion/moviedetailapi/g;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/usercenter/me/adapter/k;->J()Lcom/transsion/moviedetailapi/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic z()Lqx/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/usercenter/me/adapter/k;->I()Lqx/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public D(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/profile/bean/MeItemInfo;)V
    .locals 9

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
    move-result-object v0

    .line 15
    instance-of v1, v0, Lcom/transsion/usercenter/profile/bean/IconItemInfo;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    check-cast v0, Lcom/transsion/usercenter/profile/bean/IconItemInfo;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v0, v2

    .line 24
    :goto_0
    if-nez v0, :cond_1

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 28
    .line 29
    const-string v1, "itemView"

    .line 30
    .line 31
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance v6, Lcom/transsion/usercenter/me/adapter/i;

    .line 35
    .line 36
    invoke-direct {v6, v0, p0, p1, p2}, Lcom/transsion/usercenter/me/adapter/i;-><init>(Lcom/transsion/usercenter/profile/bean/IconItemInfo;Lcom/transsion/usercenter/me/adapter/k;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/profile/bean/MeItemInfo;)V

    .line 37
    .line 38
    .line 39
    const/4 v7, 0x1

    .line 40
    const/4 v8, 0x0

    .line 41
    const-wide/16 v4, 0x0

    .line 42
    .line 43
    invoke-static/range {v3 .. v8}, Luf/c;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    sget p2, Lcom/transsion/usercenter/R$id;->titleTv:I

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    check-cast p2, Landroid/widget/TextView;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/bean/IconItemInfo;->getTitle()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    sget p2, Lcom/transsion/usercenter/R$id;->desTv:I

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    check-cast p2, Landroid/widget/TextView;

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/bean/IconItemInfo;->getDes()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    .line 76
    sget p2, Lcom/transsion/usercenter/R$id;->divider:I

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/bean/IconItemInfo;->getDivider()Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    const/16 v3, 0x8

    .line 87
    .line 88
    const/4 v4, 0x0

    .line 89
    if-eqz v1, :cond_2

    .line 90
    .line 91
    move v1, v4

    .line 92
    goto :goto_1

    .line 93
    :cond_2
    move v1, v3

    .line 94
    :goto_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 95
    .line 96
    .line 97
    sget p2, Lcom/transsion/usercenter/R$id;->bgView:I

    .line 98
    .line 99
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/bean/IconItemInfo;->getBgRes()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 108
    .line 109
    .line 110
    sget p2, Lcom/transsion/usercenter/R$id;->icIV:I

    .line 111
    .line 112
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    check-cast p2, Landroid/widget/ImageView;

    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/bean/IconItemInfo;->getIconRes()I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 123
    .line 124
    .line 125
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 126
    .line 127
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    instance-of v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 132
    .line 133
    if-eqz v1, :cond_3

    .line 134
    .line 135
    move-object v2, p2

    .line 136
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 137
    .line 138
    :cond_3
    if-eqz v2, :cond_4

    .line 139
    .line 140
    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/bean/IconItemInfo;->getTop()I

    .line 141
    .line 142
    .line 143
    move-result p2

    .line 144
    iput p2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 145
    .line 146
    :cond_4
    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/bean/IconItemInfo;->getModuleName()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    const-string v0, "setting"

    .line 151
    .line 152
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 153
    .line 154
    .line 155
    move-result p2

    .line 156
    if-eqz p2, :cond_9

    .line 157
    .line 158
    sget p2, Lcom/transsion/usercenter/R$id;->image_red_tips:I

    .line 159
    .line 160
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    sget v0, Lcom/transsion/usercenter/R$id;->setting_tv_tips:I

    .line 165
    .line 166
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    sget-object v0, Lij/o;->a:Lij/o;

    .line 171
    .line 172
    invoke-virtual {v0}, Lij/o;->j()Z

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    const/4 v1, 0x1

    .line 177
    if-nez v0, :cond_5

    .line 178
    .line 179
    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 180
    .line 181
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    const-string v2, "k_is_family_mode_badge"

    .line 186
    .line 187
    invoke-virtual {v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    if-eqz v0, :cond_5

    .line 192
    .line 193
    move v0, v1

    .line 194
    goto :goto_2

    .line 195
    :cond_5
    move v0, v4

    .line 196
    :goto_2
    sget-object v2, Lcom/transsion/version/update/UpdateManager;->f:Lcom/transsion/version/update/UpdateManager$a;

    .line 197
    .line 198
    invoke-virtual {v2}, Lcom/transsion/version/update/UpdateManager$a;->a()Lcom/transsion/version/update/UpdateManager;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    invoke-virtual {v2}, Lcom/transsion/version/update/UpdateManager;->g()Z

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    if-eqz v0, :cond_6

    .line 207
    .line 208
    move v5, v4

    .line 209
    goto :goto_3

    .line 210
    :cond_6
    move v5, v3

    .line 211
    :goto_3
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 212
    .line 213
    .line 214
    if-nez v0, :cond_7

    .line 215
    .line 216
    if-eqz v2, :cond_7

    .line 217
    .line 218
    goto :goto_4

    .line 219
    :cond_7
    move v1, v4

    .line 220
    :goto_4
    if-eqz v1, :cond_8

    .line 221
    .line 222
    move v3, v4

    .line 223
    :cond_8
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 224
    .line 225
    .line 226
    goto :goto_5

    .line 227
    :cond_9
    sget p2, Lcom/transsion/usercenter/R$id;->setting_tv_tips:I

    .line 228
    .line 229
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 230
    .line 231
    .line 232
    move-result-object p2

    .line 233
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 234
    .line 235
    .line 236
    sget p2, Lcom/transsion/usercenter/R$id;->image_red_tips:I

    .line 237
    .line 238
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 243
    .line 244
    .line 245
    :goto_5
    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/usercenter/me/adapter/k;->D(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/profile/bean/MeItemInfo;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    return v0
.end method

.method public m()I
    .locals 1

    .line 1
    sget v0, Lcom/transsion/usercenter/R$layout;->mine_item_icon_layout:I

    .line 2
    .line 3
    return v0
.end method
