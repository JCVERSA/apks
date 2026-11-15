.class public final Lcom/transsion/usercenter/me/adapter/f0;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "source.java"


# instance fields
.field private final e:Lcom/transsion/usercenter/me/adapter/o;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/transsion/usercenter/me/adapter/f0;-><init>(Lcom/transsion/usercenter/me/adapter/o;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/usercenter/me/adapter/o;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/transsion/usercenter/me/adapter/f0;->e:Lcom/transsion/usercenter/me/adapter/o;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/usercenter/me/adapter/o;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/usercenter/me/adapter/f0;-><init>(Lcom/transsion/usercenter/me/adapter/o;)V

    return-void
.end method

.method private static final A(Lcom/transsion/usercenter/profile/bean/ButtonInfo;Lcom/transsion/usercenter/me/adapter/f0;Lcom/transsion/usercenter/profile/bean/MeItemInfo;Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/transsion/usercenter/profile/bean/ButtonInfo;->getLink()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    const/4 p3, 0x1

    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-static {p0, v0, p3, v0}, Lij/k;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    sget-object p0, Lcom/transsion/usercenter/me/k;->a:Lcom/transsion/usercenter/me/k;

    .line 20
    .line 21
    const-string p3, "free_buy"

    .line 22
    .line 23
    invoke-virtual {p0, p3}, Lcom/transsion/usercenter/me/k;->b(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p1, Lcom/transsion/usercenter/me/adapter/f0;->e:Lcom/transsion/usercenter/me/adapter/o;

    .line 27
    .line 28
    if-eqz p0, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/transsion/usercenter/me/adapter/o;->Q1()Lkotlin/jvm/functions/Function1;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 40
    .line 41
    return-object p0
.end method

.method public static synthetic y(Lcom/transsion/usercenter/profile/bean/ButtonInfo;Lcom/transsion/usercenter/me/adapter/f0;Lcom/transsion/usercenter/profile/bean/MeItemInfo;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/usercenter/me/adapter/f0;->A(Lcom/transsion/usercenter/profile/bean/ButtonInfo;Lcom/transsion/usercenter/me/adapter/f0;Lcom/transsion/usercenter/profile/bean/MeItemInfo;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/usercenter/me/adapter/f0;->z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/profile/bean/MeItemInfo;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    return v0
.end method

.method public m()I
    .locals 1

    .line 1
    sget v0, Lcom/transsion/usercenter/R$layout;->mine_item_vip_layout:I

    .line 2
    .line 3
    return v0
.end method

.method public z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/profile/bean/MeItemInfo;)V
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
    instance-of v1, v0, Lcom/transsion/usercenter/profile/bean/ZeroInfo;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    check-cast v0, Lcom/transsion/usercenter/profile/bean/ZeroInfo;

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
    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/bean/ZeroInfo;->getButton()Lcom/transsion/usercenter/profile/bean/ButtonInfo;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 32
    .line 33
    const-string v4, "itemView"

    .line 34
    .line 35
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    new-instance v6, Lcom/transsion/usercenter/me/adapter/e0;

    .line 39
    .line 40
    invoke-direct {v6, v1, p0, p2}, Lcom/transsion/usercenter/me/adapter/e0;-><init>(Lcom/transsion/usercenter/profile/bean/ButtonInfo;Lcom/transsion/usercenter/me/adapter/f0;Lcom/transsion/usercenter/profile/bean/MeItemInfo;)V

    .line 41
    .line 42
    .line 43
    const/4 v7, 0x1

    .line 44
    const/4 v8, 0x0

    .line 45
    const-wide/16 v4, 0x0

    .line 46
    .line 47
    invoke-static/range {v3 .. v8}, Luf/c;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    sget p2, Lcom/transsion/usercenter/R$id;->titleTv:I

    .line 51
    .line 52
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    check-cast p2, Landroid/widget/TextView;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/bean/ZeroInfo;->getTitle()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    sget p2, Lcom/transsion/usercenter/R$id;->desTv:I

    .line 66
    .line 67
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    check-cast p2, Landroid/widget/TextView;

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/bean/ZeroInfo;->getSubtitle()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/bean/ZeroInfo;->getSubtitle()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    const/4 v4, 0x0

    .line 85
    if-eqz v3, :cond_3

    .line 86
    .line 87
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-nez v3, :cond_2

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    move v3, v4

    .line 95
    goto :goto_2

    .line 96
    :cond_3
    :goto_1
    const/4 v3, 0x1

    .line 97
    :goto_2
    const/16 v5, 0x8

    .line 98
    .line 99
    if-nez v3, :cond_4

    .line 100
    .line 101
    move v3, v4

    .line 102
    goto :goto_3

    .line 103
    :cond_4
    move v3, v5

    .line 104
    :goto_3
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 105
    .line 106
    .line 107
    sget-object p2, Lni/f;->a:Lni/f$a;

    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-virtual {p2, v3}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/bean/ZeroInfo;->getIconUrl()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-virtual {p2, v3}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    sget v3, Lcom/tn/lib/widget/R$mipmap;->ic_point_purchase:I

    .line 126
    .line 127
    invoke-virtual {p2, v3}, Lni/f$b;->i(I)Lni/f$b;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    sget v3, Lcom/transsion/usercenter/R$id;->icIV:I

    .line 132
    .line 133
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    check-cast v3, Landroid/widget/ImageView;

    .line 138
    .line 139
    invoke-virtual {p2, v3}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 140
    .line 141
    .line 142
    sget p2, Lcom/transsion/usercenter/R$id;->btnTv:I

    .line 143
    .line 144
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    check-cast p2, Landroid/widget/TextView;

    .line 149
    .line 150
    sget v3, Lcom/transsion/usercenter/R$id;->arrowIV:I

    .line 151
    .line 152
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/bean/ZeroInfo;->getShowButton()Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-eqz v0, :cond_7

    .line 167
    .line 168
    if-eqz v1, :cond_5

    .line 169
    .line 170
    invoke-virtual {v1}, Lcom/transsion/usercenter/profile/bean/ButtonInfo;->getType()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    :cond_5
    const-string v0, "TEXT"

    .line 175
    .line 176
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-eqz v0, :cond_6

    .line 181
    .line 182
    invoke-virtual {v1}, Lcom/transsion/usercenter/profile/bean/ButtonInfo;->getText()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 190
    .line 191
    .line 192
    goto :goto_4

    .line 193
    :cond_6
    const-string p2, "ARROW"

    .line 194
    .line 195
    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result p2

    .line 199
    if-eqz p2, :cond_7

    .line 200
    .line 201
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 202
    .line 203
    .line 204
    :cond_7
    :goto_4
    return-void
.end method
