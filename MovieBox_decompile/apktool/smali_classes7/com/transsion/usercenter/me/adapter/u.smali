.class public final Lcom/transsion/usercenter/me/adapter/u;
.super Lcom/transsion/baseui/adapter/BaseItemBindingProvider;
.source "source.java"


# instance fields
.field private final g:Lcom/transsion/usercenter/me/adapter/o;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/transsion/usercenter/me/adapter/u;-><init>(Lcom/transsion/usercenter/me/adapter/o;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/usercenter/me/adapter/o;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/transsion/baseui/adapter/BaseItemBindingProvider;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/transsion/usercenter/me/adapter/u;->g:Lcom/transsion/usercenter/me/adapter/o;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/usercenter/me/adapter/o;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/usercenter/me/adapter/u;-><init>(Lcom/transsion/usercenter/me/adapter/o;)V

    return-void
.end method

.method public static synthetic A(Lcom/transsion/usercenter/profile/bean/MineNovelItem;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/usercenter/me/adapter/u;->D(Lcom/transsion/usercenter/profile/bean/MineNovelItem;ILandroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic B(Lcom/transsion/usercenter/profile/bean/MineNovel;Lcom/transsion/usercenter/me/adapter/u;Lcom/transsion/usercenter/profile/bean/MeItemInfo;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/usercenter/me/adapter/u;->G(Lcom/transsion/usercenter/profile/bean/MineNovel;Lcom/transsion/usercenter/me/adapter/u;Lcom/transsion/usercenter/profile/bean/MeItemInfo;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final C(Lxu/o0;Lcom/transsion/usercenter/profile/bean/MineNovelItem;I)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lxu/o0;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Landroid/widget/ImageView;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 15
    .line 16
    const/16 v3, 0x14

    .line 17
    .line 18
    invoke-static {v3}, Llj/a;->b(I)I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    invoke-static {v3}, Llj/a;->b(I)I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 27
    .line 28
    .line 29
    const/4 v4, 0x2

    .line 30
    const/4 v5, 0x1

    .line 31
    if-eq p3, v5, :cond_1

    .line 32
    .line 33
    if-eq p3, v4, :cond_0

    .line 34
    .line 35
    sget v6, Lcom/tn/lib/widget/R$mipmap;->ic_mine_novel_library:I

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    sget v6, Lcom/tn/lib/widget/R$mipmap;->ic_mine_novel_download:I

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    sget v6, Lcom/tn/lib/widget/R$mipmap;->ic_mine_novel_history:I

    .line 42
    .line 43
    :goto_0
    invoke-virtual {p2}, Lcom/transsion/usercenter/profile/bean/MineNovelItem;->getIcUrl()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    if-eqz v7, :cond_3

    .line 48
    .line 49
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    if-nez v7, :cond_2

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    sget-object v6, Lni/f;->a:Lni/f$a;

    .line 57
    .line 58
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v6, v0}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    invoke-virtual {p2}, Lcom/transsion/usercenter/profile/bean/MineNovelItem;->getIcUrl()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v6, v7}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    invoke-static {v3}, Llj/a;->b(I)I

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    invoke-virtual {v6, v7}, Lni/f$b;->m(I)Lni/f$b;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    invoke-static {v3}, Llj/a;->b(I)I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    invoke-virtual {v6, v3}, Lni/f$b;->c(I)Lni/f$b;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v3, v1}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_3
    :goto_1
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    .line 98
    .line 99
    :goto_2
    new-instance v3, Lcom/tn/lib/widget/TnTextView;

    .line 100
    .line 101
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    invoke-direct {v3, v0}, Lcom/tn/lib/widget/TnTextView;-><init>(Landroid/content/Context;)V

    .line 105
    .line 106
    .line 107
    invoke-static {v0}, Luf/a;->d(Landroid/content/Context;)Landroid/graphics/Typeface;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 112
    .line 113
    .line 114
    const/high16 v6, 0x41400000    # 12.0f

    .line 115
    .line 116
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 117
    .line 118
    .line 119
    sget v6, Lcom/tn/lib/widget/R$color;->white_80:I

    .line 120
    .line 121
    invoke-static {v0, v6}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 122
    .line 123
    .line 124
    move-result v6

    .line 125
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    .line 127
    .line 128
    if-eq p3, v5, :cond_5

    .line 129
    .line 130
    if-eq p3, v4, :cond_4

    .line 131
    .line 132
    sget v4, Lcom/transsion/baseui/R$string;->Library:I

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_4
    sget v4, Lcom/transsion/baseui/R$string;->Downloads:I

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_5
    sget v4, Lcom/transsion/baseui/R$string;->History:I

    .line 139
    .line 140
    :goto_3
    invoke-virtual {p2}, Lcom/transsion/usercenter/profile/bean/MineNovelItem;->getTitle()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    if-eqz v6, :cond_7

    .line 145
    .line 146
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 147
    .line 148
    .line 149
    move-result v6

    .line 150
    if-nez v6, :cond_6

    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_6
    invoke-virtual {p2}, Lcom/transsion/usercenter/profile/bean/MineNovelItem;->getTitle()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    .line 159
    .line 160
    goto :goto_5

    .line 161
    :cond_7
    :goto_4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 162
    .line 163
    .line 164
    move-result-object v6

    .line 165
    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    .line 171
    .line 172
    :goto_5
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 173
    .line 174
    const/4 v6, -0x2

    .line 175
    invoke-direct {v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 176
    .line 177
    .line 178
    const/4 v6, 0x4

    .line 179
    invoke-static {v6}, Llj/a;->b(I)I

    .line 180
    .line 181
    .line 182
    move-result v6

    .line 183
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 184
    .line 185
    new-instance v6, Landroid/widget/LinearLayout;

    .line 186
    .line 187
    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v6, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v6, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    .line 198
    .line 199
    const/16 v0, 0x11

    .line 200
    .line 201
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 202
    .line 203
    .line 204
    new-instance v0, Lcom/transsion/usercenter/me/adapter/t;

    .line 205
    .line 206
    invoke-direct {v0, p2, p3}, Lcom/transsion/usercenter/me/adapter/t;-><init>(Lcom/transsion/usercenter/profile/bean/MineNovelItem;I)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    .line 211
    .line 212
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 213
    .line 214
    const/4 p3, 0x0

    .line 215
    const/4 v0, -0x1

    .line 216
    invoke-direct {p2, p3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 217
    .line 218
    .line 219
    const/high16 p3, 0x3f800000    # 1.0f

    .line 220
    .line 221
    iput p3, p2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 222
    .line 223
    iget-object p1, p1, Lxu/o0;->e:Landroid/widget/LinearLayout;

    .line 224
    .line 225
    invoke-virtual {p1, v6, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    .line 227
    .line 228
    return-void
.end method

.method private static final D(Lcom/transsion/usercenter/profile/bean/MineNovelItem;ILandroid/view/View;)V
    .locals 3

    .line 1
    sget-object p2, Lcom/transsion/usercenter/me/k;->a:Lcom/transsion/usercenter/me/k;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsion/usercenter/profile/bean/MineNovelItem;->getTitle()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "novel_"

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p2, v0, p1}, Lcom/transsion/usercenter/me/k;->c(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/transsion/usercenter/profile/bean/MineNovelItem;->getDeeplink()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    const/4 p2, 0x0

    .line 35
    invoke-static {p0, p2, p1, p2}, Lij/k;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method private final E(Lxu/o0;Lcom/transsion/usercenter/profile/bean/MineNovel;)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Lcom/transsion/usercenter/profile/bean/MineNovel;->getSubItems()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/util/Collection;

    .line 6
    .line 7
    const-string v1, "llBottom"

    .line 8
    .line 9
    if-eqz v0, :cond_a

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto/16 :goto_5

    .line 18
    .line 19
    :cond_0
    iget-object v0, p1, Lxu/o0;->e:Landroid/widget/LinearLayout;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p1, Lxu/o0;->e:Landroid/widget/LinearLayout;

    .line 25
    .line 26
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/transsion/usercenter/profile/bean/MineNovel;->getSubItems()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    const/4 v0, 0x0

    .line 37
    const/4 v2, 0x1

    .line 38
    if-eqz p2, :cond_4

    .line 39
    .line 40
    check-cast p2, Ljava/lang/Iterable;

    .line 41
    .line 42
    new-instance v3, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_5

    .line 56
    .line 57
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    move-object v5, v4

    .line 62
    check-cast v5, Lcom/transsion/usercenter/profile/bean/MineNovelItem;

    .line 63
    .line 64
    invoke-virtual {v5}, Lcom/transsion/usercenter/profile/bean/MineNovelItem;->getDeeplink()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    if-eqz v5, :cond_3

    .line 69
    .line 70
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-nez v5, :cond_2

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    move v5, v0

    .line 78
    goto :goto_2

    .line 79
    :cond_3
    :goto_1
    move v5, v2

    .line 80
    :goto_2
    if-nez v5, :cond_1

    .line 81
    .line 82
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_4
    const/4 v3, 0x0

    .line 87
    :cond_5
    if-eqz v3, :cond_9

    .line 88
    .line 89
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 90
    .line 91
    .line 92
    move-result p2

    .line 93
    if-eqz p2, :cond_6

    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_6
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    :goto_3
    if-ge v0, p2, :cond_8

    .line 101
    .line 102
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    check-cast v1, Lcom/transsion/usercenter/profile/bean/MineNovelItem;

    .line 107
    .line 108
    invoke-direct {p0, p1, v1, v0}, Lcom/transsion/usercenter/me/adapter/u;->C(Lxu/o0;Lcom/transsion/usercenter/profile/bean/MineNovelItem;I)V

    .line 109
    .line 110
    .line 111
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    sub-int/2addr v1, v2

    .line 116
    if-ge v0, v1, :cond_7

    .line 117
    .line 118
    iget-object v1, p1, Lxu/o0;->e:Landroid/widget/LinearLayout;

    .line 119
    .line 120
    new-instance v4, Landroid/view/View;

    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 127
    .line 128
    .line 129
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 130
    .line 131
    const/16 v6, 0x8

    .line 132
    .line 133
    invoke-static {v6}, Llj/a;->b(I)I

    .line 134
    .line 135
    .line 136
    move-result v6

    .line 137
    const/4 v7, -0x1

    .line 138
    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    .line 143
    .line 144
    :cond_7
    add-int/lit8 v0, v0, 0x1

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_8
    return-void

    .line 148
    :cond_9
    :goto_4
    iget-object p1, p1, Lxu/o0;->e:Landroid/widget/LinearLayout;

    .line 149
    .line 150
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :cond_a
    :goto_5
    iget-object p1, p1, Lxu/o0;->e:Landroid/widget/LinearLayout;

    .line 158
    .line 159
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 163
    .line 164
    .line 165
    return-void
.end method

.method private static final G(Lcom/transsion/usercenter/profile/bean/MineNovel;Lcom/transsion/usercenter/me/adapter/u;Lcom/transsion/usercenter/profile/bean/MeItemInfo;Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p3, Lcom/transsion/usercenter/me/k;->a:Lcom/transsion/usercenter/me/k;

    .line 7
    .line 8
    const-string v0, "novel"

    .line 9
    .line 10
    invoke-virtual {p3, v0}, Lcom/transsion/usercenter/me/k;->b(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/transsion/usercenter/profile/bean/MineNovel;->getDeeplink()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    const/4 p3, 0x1

    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-static {p0, v0, p3, v0}, Lij/k;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object p0, p1, Lcom/transsion/usercenter/me/adapter/u;->g:Lcom/transsion/usercenter/me/adapter/o;

    .line 25
    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/transsion/usercenter/me/adapter/o;->Q1()Lkotlin/jvm/functions/Function1;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 38
    .line 39
    return-object p0
.end method


# virtual methods
.method public F(Lxu/o0;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/profile/bean/MeItemInfo;)V
    .locals 9

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "helper"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "item"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p3}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;->getData()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    instance-of v1, v0, Lcom/transsion/usercenter/profile/bean/MineNovel;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    check-cast v0, Lcom/transsion/usercenter/profile/bean/MineNovel;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    if-nez v0, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    sget-object v1, Lcom/transsion/usercenter/me/k;->a:Lcom/transsion/usercenter/me/k;

    .line 32
    .line 33
    const-string v2, "novel"

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Lcom/transsion/usercenter/me/k;->a(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v3, p2, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 39
    .line 40
    const-string p2, "itemView"

    .line 41
    .line 42
    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-instance v6, Lcom/transsion/usercenter/me/adapter/s;

    .line 46
    .line 47
    invoke-direct {v6, v0, p0, p3}, Lcom/transsion/usercenter/me/adapter/s;-><init>(Lcom/transsion/usercenter/profile/bean/MineNovel;Lcom/transsion/usercenter/me/adapter/u;Lcom/transsion/usercenter/profile/bean/MeItemInfo;)V

    .line 48
    .line 49
    .line 50
    const/4 v7, 0x1

    .line 51
    const/4 v8, 0x0

    .line 52
    const-wide/16 v4, 0x0

    .line 53
    .line 54
    invoke-static/range {v3 .. v8}, Luf/c;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    iget-object p2, p1, Lxu/o0;->f:Lcom/tn/lib/widget/TnTextView;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/bean/MineNovel;->getTitle()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    iget-object p2, p1, Lxu/o0;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 67
    .line 68
    const-string p3, "desTv"

    .line 69
    .line 70
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/bean/MineNovel;->getDes()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    const/4 v1, 0x0

    .line 78
    if-eqz p3, :cond_3

    .line 79
    .line 80
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 81
    .line 82
    .line 83
    move-result p3

    .line 84
    if-nez p3, :cond_2

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_2
    move p3, v1

    .line 88
    goto :goto_2

    .line 89
    :cond_3
    :goto_1
    const/4 p3, 0x1

    .line 90
    :goto_2
    if-nez p3, :cond_4

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_4
    const/16 v1, 0x8

    .line 94
    .line 95
    :goto_3
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 96
    .line 97
    .line 98
    iget-object p2, p1, Lxu/o0;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/bean/MineNovel;->getDes()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p3

    .line 104
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/bean/MineNovel;->getButtonText()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    if-eqz p2, :cond_6

    .line 112
    .line 113
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 114
    .line 115
    .line 116
    move-result p2

    .line 117
    if-nez p2, :cond_5

    .line 118
    .line 119
    goto :goto_4

    .line 120
    :cond_5
    iget-object p2, p1, Lxu/o0;->b:Lcom/tn/lib/widget/TnTextView;

    .line 121
    .line 122
    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/bean/MineNovel;->getButtonText()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p3

    .line 126
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    .line 128
    .line 129
    :cond_6
    :goto_4
    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/bean/MineNovel;->getIcUrl()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    if-eqz p2, :cond_8

    .line 134
    .line 135
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 136
    .line 137
    .line 138
    move-result p2

    .line 139
    if-nez p2, :cond_7

    .line 140
    .line 141
    goto :goto_5

    .line 142
    :cond_7
    sget-object p2, Lni/f;->a:Lni/f$a;

    .line 143
    .line 144
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 145
    .line 146
    .line 147
    move-result-object p3

    .line 148
    invoke-virtual {p2, p3}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/bean/MineNovel;->getIcUrl()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p3

    .line 156
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p2, p3}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    const/16 p3, 0x14

    .line 164
    .line 165
    invoke-static {p3}, Llj/a;->b(I)I

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    invoke-virtual {p2, v1}, Lni/f$b;->m(I)Lni/f$b;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    invoke-static {p3}, Llj/a;->b(I)I

    .line 174
    .line 175
    .line 176
    move-result p3

    .line 177
    invoke-virtual {p2, p3}, Lni/f$b;->c(I)Lni/f$b;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    iget-object p3, p1, Lxu/o0;->d:Landroid/widget/ImageView;

    .line 182
    .line 183
    const-string v1, "icIV"

    .line 184
    .line 185
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p2, p3}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 189
    .line 190
    .line 191
    goto :goto_6

    .line 192
    :cond_8
    :goto_5
    iget-object p2, p1, Lxu/o0;->d:Landroid/widget/ImageView;

    .line 193
    .line 194
    sget p3, Lcom/tn/lib/widget/R$mipmap;->ic_mine_novel:I

    .line 195
    .line 196
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 197
    .line 198
    .line 199
    :goto_6
    invoke-direct {p0, p1, v0}, Lcom/transsion/usercenter/me/adapter/u;->E(Lxu/o0;Lcom/transsion/usercenter/profile/bean/MineNovel;)V

    .line 200
    .line 201
    .line 202
    return-void
.end method

.method public H(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lxu/o0;
    .locals 1

    .line 1
    const-string v0, "inflater"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "parent"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-static {p1, p2, v0}, Lxu/o0;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lxu/o0;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string p2, "inflate(...)"

    .line 25
    .line 26
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-object p1
.end method

.method public l()I
    .locals 1

    .line 1
    const/4 v0, 0x7

    .line 2
    return v0
.end method

.method public bridge synthetic y(Lf4/a;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lxu/o0;

    .line 2
    .line 3
    check-cast p3, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/usercenter/me/adapter/u;->F(Lxu/o0;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/profile/bean/MeItemInfo;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public bridge synthetic z(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lf4/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/usercenter/me/adapter/u;->H(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lxu/o0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
