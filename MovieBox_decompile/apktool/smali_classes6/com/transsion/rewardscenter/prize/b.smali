.class public final Lcom/transsion/rewardscenter/prize/b;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/rewardscenter/prize/b$a;
    }
.end annotation


# instance fields
.field private final e:Lzo/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lzo/a;)V
    .locals 1

    .line 1
    const-string v0, "config"

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
    iput-object p1, p0, Lcom/transsion/rewardscenter/prize/b;->e:Lzo/a;

    .line 10
    .line 11
    return-void
.end method

.method private static final A(ZLandroid/content/Context;Lcom/transsion/rewardscenter/prize/b;ZLandroid/view/View;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p4, "getString(...)"

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p0, :cond_1

    .line 10
    .line 11
    sget-object p0, Lyg/l;->a:Lyg/l;

    .line 12
    .line 13
    invoke-virtual {p0}, Lyg/l;->e()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    sget p0, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    .line 20
    .line 21
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0, p0}, Lcom/transsion/rewardscenter/utils/p;->a(ZLjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object p0, p2, Lcom/transsion/rewardscenter/prize/b;->e:Lzo/a;

    .line 33
    .line 34
    invoke-virtual {p0}, Lzo/a;->c()Lcom/transsion/rewardscenter/model/RewardsCenterModel;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const/4 p1, 0x0

    .line 39
    const/4 p3, 0x1

    .line 40
    invoke-static {p0, p1, p3, p3, p1}, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->h(Lcom/transsion/rewardscenter/model/RewardsCenterModel;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p2}, Lcom/transsion/rewardscenter/prize/b;->D()V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    if-eqz p3, :cond_2

    .line 48
    .line 49
    sget p0, Lcom/transsion/rewardscenter/R$string;->prize_limit_tips:I

    .line 50
    .line 51
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-static {v0, p0}, Lcom/transsion/rewardscenter/utils/p;->a(ZLjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 62
    .line 63
    return-object p0
.end method

.method private final D()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "source"

    .line 7
    .line 8
    const-string v2, "draw_chance"

    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    const-string v1, "prize_list"

    .line 14
    .line 15
    invoke-static {v1, v0}, Lcom/transsion/rewardscenter/utils/q;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static synthetic y(ZLandroid/content/Context;Lcom/transsion/rewardscenter/prize/b;ZLandroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/rewardscenter/prize/b;->A(ZLandroid/content/Context;Lcom/transsion/rewardscenter/prize/b;ZLandroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final B(Lcom/transsion/rewardscenterapi/DrawChance;)Z
    .locals 1

    .line 1
    const-string v0, "drawChance"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsion/rewardscenterapi/DrawChance;->getRemain()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/transsion/rewardscenterapi/DrawChance;->getTodayRemain()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-lez p1, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    return p1
.end method

.method public final C(Lcom/transsion/rewardscenterapi/DrawChance;)Z
    .locals 1

    .line 1
    const-string v0, "drawChance"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsion/rewardscenterapi/DrawChance;->getTodayRemain()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-gtz p1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    return p1
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/rewardscenter/prize/e;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/rewardscenter/prize/b;->z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/rewardscenter/prize/e;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/rewardscenter/prize/PrizeItemType;->DRAW_CHANCE:Lcom/transsion/rewardscenter/prize/PrizeItemType;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/rewardscenter/prize/PrizeItemType;->getValue()I

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
    sget v0, Lcom/transsion/rewardscenter/R$layout;->prize_row_item:I

    .line 2
    .line 3
    return v0
.end method

.method public z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/rewardscenter/prize/e;)V
    .locals 7

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
    instance-of v0, p2, Lcom/transsion/rewardscenter/prize/e$a;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    check-cast p2, Lcom/transsion/rewardscenter/prize/e$a;

    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/transsion/rewardscenter/prize/e$a;->a()Lcom/transsion/rewardscenterapi/DrawChance;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sget-object v1, Lni/f;->a:Lni/f$a;

    .line 29
    .line 30
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v0}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p2}, Lcom/transsion/rewardscenterapi/DrawChance;->getImgUrl()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    sget v2, Lcom/transsion/rewardscenter/R$id;->icon:I

    .line 46
    .line 47
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Landroid/widget/ImageView;

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 54
    .line 55
    .line 56
    sget v1, Lcom/transsion/rewardscenter/R$id;->tv_title:I

    .line 57
    .line 58
    invoke-virtual {p2}, Lcom/transsion/rewardscenterapi/DrawChance;->getTitle()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    if-nez v2, :cond_1

    .line 63
    .line 64
    const-string v2, ""

    .line 65
    .line 66
    :cond_1
    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 67
    .line 68
    .line 69
    sget v1, Lcom/transsion/rewardscenter/R$id;->tv_count:I

    .line 70
    .line 71
    invoke-virtual {p2}, Lcom/transsion/rewardscenterapi/DrawChance;->getRemain()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v4, "x "

    .line 81
    .line 82
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 93
    .line 94
    .line 95
    sget v1, Lcom/transsion/rewardscenter/R$id;->btn_action:I

    .line 96
    .line 97
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    move-object v1, p1

    .line 102
    check-cast v1, Landroid/widget/TextView;

    .line 103
    .line 104
    invoke-virtual {p0, p2}, Lcom/transsion/rewardscenter/prize/b;->B(Lcom/transsion/rewardscenterapi/DrawChance;)Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    invoke-virtual {p0, p2}, Lcom/transsion/rewardscenter/prize/b;->C(Lcom/transsion/rewardscenterapi/DrawChance;)Z

    .line 109
    .line 110
    .line 111
    move-result p2

    .line 112
    if-eqz p1, :cond_2

    .line 113
    .line 114
    sget-object v2, Lcom/transsion/rewardscenter/prize/PrizeButtonState;->ACTIVE:Lcom/transsion/rewardscenter/prize/PrizeButtonState;

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_2
    sget-object v2, Lcom/transsion/rewardscenter/prize/PrizeButtonState;->CLAIMED:Lcom/transsion/rewardscenter/prize/PrizeButtonState;

    .line 118
    .line 119
    :goto_0
    if-eqz p1, :cond_3

    .line 120
    .line 121
    sget v3, Lcom/transsion/rewardscenter/R$string;->prize_btn_claim:I

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_3
    if-eqz p2, :cond_4

    .line 125
    .line 126
    sget v3, Lcom/transsion/rewardscenter/R$string;->prize_btn_limit:I

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_4
    sget v3, Lcom/transsion/rewardscenter/R$string;->prize_btn_claimed:I

    .line 130
    .line 131
    :goto_1
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    .line 137
    .line 138
    sget-object v3, Lcom/transsion/rewardscenter/prize/b$a;->a:[I

    .line 139
    .line 140
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    aget v2, v3, v2

    .line 145
    .line 146
    const/4 v3, 0x1

    .line 147
    if-eq v2, v3, :cond_6

    .line 148
    .line 149
    const/4 v3, 0x2

    .line 150
    if-eq v2, v3, :cond_5

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_5
    sget v2, Lcom/transsion/rewardscenter/R$mipmap;->btn_claim_done:I

    .line 154
    .line 155
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 156
    .line 157
    .line 158
    sget v2, Lcom/transsion/rewardscenter/R$color;->prize_btn_claimed_text:I

    .line 159
    .line 160
    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 165
    .line 166
    .line 167
    const/4 v2, 0x0

    .line 168
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 169
    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_6
    sget v2, Lcom/transsion/rewardscenter/R$mipmap;->btn_claim_normal:I

    .line 173
    .line 174
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 175
    .line 176
    .line 177
    sget v2, Lcom/tn/lib/widget/R$color;->white:I

    .line 178
    .line 179
    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 187
    .line 188
    .line 189
    :goto_2
    new-instance v4, Lcom/transsion/rewardscenter/prize/a;

    .line 190
    .line 191
    invoke-direct {v4, p1, v0, p0, p2}, Lcom/transsion/rewardscenter/prize/a;-><init>(ZLandroid/content/Context;Lcom/transsion/rewardscenter/prize/b;Z)V

    .line 192
    .line 193
    .line 194
    const/4 v5, 0x1

    .line 195
    const/4 v6, 0x0

    .line 196
    const-wide/16 v2, 0x0

    .line 197
    .line 198
    invoke-static/range {v1 .. v6}, Luf/c;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    return-void
.end method
