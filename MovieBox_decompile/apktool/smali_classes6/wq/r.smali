.class public final Lwq/r;
.super Landroid/app/Dialog;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwq/r$a;
    }
.end annotation


# instance fields
.field private a:Landroidx/recyclerview/widget/RecyclerView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Lwq/r$a;

.field private e:Lkotlin/jvm/functions/Function1;

.field private f:Lcom/transsion/shorttv/_channel/model/ShortTvItem;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x103000a

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static synthetic a(Lwq/r;Lcom/transsion/shorttv/_channel/model/ShortTvFilterVal;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lwq/r;->g(Lwq/r;Lcom/transsion/shorttv/_channel/model/ShortTvFilterVal;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lwq/r;Lkotlin/jvm/functions/Function1;Lcom/transsion/shorttv/_channel/model/ShortTvFilterVal;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lwq/r;->k(Lwq/r;Lkotlin/jvm/functions/Function1;Lcom/transsion/shorttv/_channel/model/ShortTvFilterVal;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Lwq/r;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lwq/r;->f(Lwq/r;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lwq/r;->h(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lwq/r;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lwq/r;->i(Lwq/r;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final f(Lwq/r;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lwq/r;->e:Lkotlin/jvm/functions/Function1;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private static final g(Lwq/r;Lcom/transsion/shorttv/_channel/model/ShortTvFilterVal;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "selected"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lwq/r;->e:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/transsion/shorttv/_channel/model/ShortTvFilterVal;->getId()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    return-object p0
.end method

.method private static final h(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method private static final i(Lwq/r;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lwq/r;->e:Lkotlin/jvm/functions/Function1;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private static final k(Lwq/r;Lkotlin/jvm/functions/Function1;Lcom/transsion/shorttv/_channel/model/ShortTvFilterVal;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "selected"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/transsion/shorttv/_channel/model/ShortTvFilterVal;->getId()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p0
.end method


# virtual methods
.method public final j(Lcom/transsion/shorttv/_channel/model/ShortTvItem;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 3

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lwq/r;->f:Lcom/transsion/shorttv/_channel/model/ShortTvItem;

    .line 12
    .line 13
    iput-object p2, p0, Lwq/r;->g:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p3, p0, Lwq/r;->e:Lkotlin/jvm/functions/Function1;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iget-object v0, p0, Lwq/r;->b:Landroid/widget/TextView;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    const-string v0, "mTitleTv"

    .line 29
    .line 30
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    move-object v0, v1

    .line 34
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/shorttv/_channel/model/ShortTvItem;->getTitle()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Lwq/r$a;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/transsion/shorttv/_channel/model/ShortTvItem;->getFilterValsV2()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    new-instance v2, Lwq/p;

    .line 48
    .line 49
    invoke-direct {v2, p0, p3}, Lwq/p;-><init>(Lwq/r;Lkotlin/jvm/functions/Function1;)V

    .line 50
    .line 51
    .line 52
    invoke-direct {v0, p0, p1, p2, v2}, Lwq/r$a;-><init>(Lwq/r;Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lwq/r;->d:Lwq/r$a;

    .line 56
    .line 57
    iget-object p1, p0, Lwq/r;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 58
    .line 59
    if-nez p1, :cond_1

    .line 60
    .line 61
    const-string p1, "mRecyclerView"

    .line 62
    .line 63
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    move-object v1, p1

    .line 68
    :goto_0
    iget-object p1, p0, Lwq/r;->d:Lwq/r$a;

    .line 69
    .line 70
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 75
    .line 76
    .line 77
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 v1, -0x1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    const/high16 v2, -0x80000000

    .line 36
    .line 37
    invoke-virtual {p1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 38
    .line 39
    .line 40
    :cond_2
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-eqz p1, :cond_3

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    sget v3, Lcom/transsion/shorttv/R$color;->short_tv_black_90:I

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-virtual {p1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 61
    .line 62
    .line 63
    :cond_3
    new-instance p1, Landroid/widget/LinearLayout;

    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-direct {p1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 70
    .line 71
    .line 72
    const/4 v2, 0x1

    .line 73
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    sget v4, Lcom/transsion/shorttv/R$color;->short_tv_black_90:I

    .line 85
    .line 86
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 91
    .line 92
    .line 93
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 94
    .line 95
    invoke-direct {v3, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    .line 100
    .line 101
    new-instance v3, Lwq/l;

    .line 102
    .line 103
    invoke-direct {v3, p0}, Lwq/l;-><init>(Lwq/r;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    .line 108
    .line 109
    new-instance v3, Landroid/widget/LinearLayout;

    .line 110
    .line 111
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 119
    .line 120
    .line 121
    const/16 v4, 0x10

    .line 122
    .line 123
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 124
    .line 125
    .line 126
    const/high16 v4, 0x41800000    # 16.0f

    .line 127
    .line 128
    invoke-static {v4}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    const/high16 v6, 0x41400000    # 12.0f

    .line 133
    .line 134
    invoke-static {v6}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 135
    .line 136
    .line 137
    move-result v7

    .line 138
    invoke-static {v4}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    invoke-static {v6}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    invoke-virtual {v3, v5, v7, v4, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 147
    .line 148
    .line 149
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 150
    .line 151
    const/4 v5, -0x2

    .line 152
    invoke-direct {v4, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v3, v2}, Landroid/view/View;->setClickable(Z)V

    .line 159
    .line 160
    .line 161
    new-instance v4, Lwq/m;

    .line 162
    .line 163
    invoke-direct {v4}, Lwq/m;-><init>()V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    .line 168
    .line 169
    new-instance v4, Landroid/widget/TextView;

    .line 170
    .line 171
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    invoke-direct {v4, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 176
    .line 177
    .line 178
    const/high16 v6, 0x41900000    # 18.0f

    .line 179
    .line 180
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 184
    .line 185
    .line 186
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 187
    .line 188
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 189
    .line 190
    .line 191
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 192
    .line 193
    const/high16 v7, 0x3f800000    # 1.0f

    .line 194
    .line 195
    invoke-direct {v6, v0, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v4, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    .line 200
    .line 201
    iput-object v4, p0, Lwq/r;->b:Landroid/widget/TextView;

    .line 202
    .line 203
    new-instance v4, Landroid/widget/ImageView;

    .line 204
    .line 205
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 206
    .line 207
    .line 208
    move-result-object v5

    .line 209
    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 210
    .line 211
    .line 212
    sget v5, Lcom/transsion/shorttv/R$drawable;->short_tv_music_iv_close:I

    .line 213
    .line 214
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 222
    .line 223
    .line 224
    move-result-object v5

    .line 225
    sget v6, Lcom/transsion/shorttv/R$color;->short_tv_white:I

    .line 226
    .line 227
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    .line 228
    .line 229
    .line 230
    move-result v5

    .line 231
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 232
    .line 233
    .line 234
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 235
    .line 236
    const/high16 v6, 0x41a80000    # 21.0f

    .line 237
    .line 238
    invoke-static {v6}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 239
    .line 240
    .line 241
    move-result v8

    .line 242
    invoke-static {v6}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 243
    .line 244
    .line 245
    move-result v6

    .line 246
    invoke-direct {v5, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    .line 251
    .line 252
    new-instance v5, Lwq/n;

    .line 253
    .line 254
    invoke-direct {v5, p0}, Lwq/n;-><init>(Lwq/r;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    .line 259
    .line 260
    iput-object v4, p0, Lwq/r;->c:Landroid/widget/ImageView;

    .line 261
    .line 262
    iget-object v4, p0, Lwq/r;->b:Landroid/widget/TextView;

    .line 263
    .line 264
    const-string v5, "mTitleTv"

    .line 265
    .line 266
    const/4 v6, 0x0

    .line 267
    if-nez v4, :cond_4

    .line 268
    .line 269
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    move-object v4, v6

    .line 273
    :cond_4
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 274
    .line 275
    .line 276
    iget-object v4, p0, Lwq/r;->c:Landroid/widget/ImageView;

    .line 277
    .line 278
    if-nez v4, :cond_5

    .line 279
    .line 280
    const-string v4, "mCloseBtn"

    .line 281
    .line 282
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    move-object v4, v6

    .line 286
    :cond_5
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 290
    .line 291
    .line 292
    new-instance v3, Landroid/view/View;

    .line 293
    .line 294
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 295
    .line 296
    .line 297
    move-result-object v4

    .line 298
    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 306
    .line 307
    .line 308
    move-result-object v4

    .line 309
    sget v8, Lcom/transsion/shorttv/R$color;->short_tv_white_10:I

    .line 310
    .line 311
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    .line 312
    .line 313
    .line 314
    move-result v4

    .line 315
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 316
    .line 317
    .line 318
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 319
    .line 320
    invoke-static {v7}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 321
    .line 322
    .line 323
    move-result v8

    .line 324
    invoke-direct {v4, v1, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 331
    .line 332
    .line 333
    new-instance v3, Landroidx/recyclerview/widget/RecyclerView;

    .line 334
    .line 335
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 336
    .line 337
    .line 338
    move-result-object v4

    .line 339
    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 340
    .line 341
    .line 342
    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 343
    .line 344
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 345
    .line 346
    .line 347
    move-result-object v8

    .line 348
    invoke-direct {v4, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 352
    .line 353
    .line 354
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 355
    .line 356
    invoke-direct {v4, v1, v0, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 360
    .line 361
    .line 362
    const/high16 v1, 0x41b80000    # 23.0f

    .line 363
    .line 364
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 365
    .line 366
    .line 367
    move-result v1

    .line 368
    const/high16 v4, 0x42200000    # 40.0f

    .line 369
    .line 370
    invoke-static {v4}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 371
    .line 372
    .line 373
    move-result v4

    .line 374
    invoke-virtual {v3, v0, v1, v0, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v3, v2}, Landroid/view/View;->setClickable(Z)V

    .line 381
    .line 382
    .line 383
    iput-object v3, p0, Lwq/r;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 384
    .line 385
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 389
    .line 390
    .line 391
    iget-object p1, p0, Lwq/r;->f:Lcom/transsion/shorttv/_channel/model/ShortTvItem;

    .line 392
    .line 393
    if-eqz p1, :cond_8

    .line 394
    .line 395
    iget-object v0, p0, Lwq/r;->b:Landroid/widget/TextView;

    .line 396
    .line 397
    if-nez v0, :cond_6

    .line 398
    .line 399
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    move-object v0, v6

    .line 403
    :cond_6
    invoke-virtual {p1}, Lcom/transsion/shorttv/_channel/model/ShortTvItem;->getTitle()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    .line 409
    .line 410
    new-instance v0, Lwq/r$a;

    .line 411
    .line 412
    invoke-virtual {p1}, Lcom/transsion/shorttv/_channel/model/ShortTvItem;->getFilterValsV2()Ljava/util/List;

    .line 413
    .line 414
    .line 415
    move-result-object p1

    .line 416
    iget-object v1, p0, Lwq/r;->g:Ljava/lang/String;

    .line 417
    .line 418
    new-instance v2, Lwq/o;

    .line 419
    .line 420
    invoke-direct {v2, p0}, Lwq/o;-><init>(Lwq/r;)V

    .line 421
    .line 422
    .line 423
    invoke-direct {v0, p0, p1, v1, v2}, Lwq/r$a;-><init>(Lwq/r;Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 424
    .line 425
    .line 426
    iput-object v0, p0, Lwq/r;->d:Lwq/r$a;

    .line 427
    .line 428
    iget-object p1, p0, Lwq/r;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 429
    .line 430
    if-nez p1, :cond_7

    .line 431
    .line 432
    const-string p1, "mRecyclerView"

    .line 433
    .line 434
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    goto :goto_0

    .line 438
    :cond_7
    move-object v6, p1

    .line 439
    :goto_0
    iget-object p1, p0, Lwq/r;->d:Lwq/r$a;

    .line 440
    .line 441
    invoke-virtual {v6, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 442
    .line 443
    .line 444
    :cond_8
    return-void
.end method
