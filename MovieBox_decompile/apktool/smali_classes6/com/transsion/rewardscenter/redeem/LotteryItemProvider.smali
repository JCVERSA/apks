.class public final Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "source.java"


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
    iput-object p1, p0, Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;->e:Lzo/a;

    .line 10
    .line 11
    return-void
.end method

.method private static final B(ZLcom/transsion/rewardscenter/redeem/LotteryItemProvider;Lcom/transsion/rewardscenter/redeem/e;Lcom/transsion/rewardscenterapi/LotteryPrize;Landroid/view/View;)Lkotlin/Unit;
    .locals 7

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    sget-object p0, Lyg/l;->a:Lyg/l;

    .line 12
    .line 13
    invoke-virtual {p0}, Lyg/l;->e()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    const-string p4, "getString(...)"

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    if-nez p0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    sget p1, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v0, p0}, Lcom/transsion/rewardscenter/utils/p;->a(ZLjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_1
    check-cast p2, Lcom/transsion/rewardscenter/redeem/e$a;

    .line 42
    .line 43
    invoke-virtual {p2}, Lcom/transsion/rewardscenter/redeem/e$a;->a()Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-eqz p0, :cond_4

    .line 48
    .line 49
    iget-object p0, p1, Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;->e:Lzo/a;

    .line 50
    .line 51
    invoke-virtual {p0}, Lzo/a;->a()Ljava/lang/ref/WeakReference;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    check-cast p0, Lcom/transsion/rewardscenter/ui/RewardsCenterFragment;

    .line 60
    .line 61
    if-eqz p0, :cond_2

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/transsion/rewardscenter/ui/RewardsCenterFragment;->showLoading()V

    .line 64
    .line 65
    .line 66
    :cond_2
    invoke-virtual {p3}, Lcom/transsion/rewardscenterapi/LotteryPrize;->getActivityId()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    if-eqz p0, :cond_3

    .line 71
    .line 72
    iget-object p3, p1, Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;->e:Lzo/a;

    .line 73
    .line 74
    invoke-virtual {p3}, Lzo/a;->b()Lkotlinx/coroutines/n0;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    new-instance v4, Lcom/transsion/rewardscenter/redeem/LotteryItemProvider$convert$1$1$1;

    .line 79
    .line 80
    const/4 p3, 0x0

    .line 81
    invoke-direct {v4, p0, p1, p3}, Lcom/transsion/rewardscenter/redeem/LotteryItemProvider$convert$1$1$1;-><init>(Ljava/lang/String;Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;Lkotlin/coroutines/Continuation;)V

    .line 82
    .line 83
    .line 84
    const/4 v5, 0x3

    .line 85
    const/4 v6, 0x0

    .line 86
    const/4 v2, 0x0

    .line 87
    const/4 v3, 0x0

    .line 88
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    if-nez p0, :cond_5

    .line 93
    .line 94
    :cond_3
    iget-object p0, p1, Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;->e:Lzo/a;

    .line 95
    .line 96
    invoke-virtual {p0}, Lzo/a;->c()Lcom/transsion/rewardscenter/model/RewardsCenterModel;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-virtual {p0}, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->o()Landroidx/lifecycle/b0;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 105
    .line 106
    invoke-virtual {p0, p3}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    sget p3, Lcom/transsion/rewardscenter/R$string;->redeem_failed_tips:I

    .line 114
    .line 115
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-static {v0, p0}, Lcom/transsion/rewardscenter/utils/p;->a(ZLjava/lang/String;)V

    .line 123
    .line 124
    .line 125
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_4
    iget-object p0, p1, Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;->e:Lzo/a;

    .line 129
    .line 130
    sget-object p3, Lcom/transsion/rewardscenterapi/TopUpType;->REDEEM:Lcom/transsion/rewardscenterapi/TopUpType;

    .line 131
    .line 132
    invoke-virtual {p0}, Lzo/a;->c()Lcom/transsion/rewardscenter/model/RewardsCenterModel;

    .line 133
    .line 134
    .line 135
    move-result-object p4

    .line 136
    invoke-virtual {p4}, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->l()Lcom/transsion/rewardscenterapi/SkuPoint;

    .line 137
    .line 138
    .line 139
    move-result-object p4

    .line 140
    invoke-static {p0, p3, p4}, Lcom/transsion/rewardscenter/utils/f;->c(Lzo/a;Lcom/transsion/rewardscenterapi/TopUpType;Lcom/transsion/rewardscenterapi/SkuPoint;)V

    .line 141
    .line 142
    .line 143
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 144
    .line 145
    :cond_5
    :goto_0
    invoke-virtual {p2}, Lcom/transsion/rewardscenter/redeem/e$a;->a()Z

    .line 146
    .line 147
    .line 148
    move-result p0

    .line 149
    invoke-direct {p1, p0}, Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;->C(Z)V

    .line 150
    .line 151
    .line 152
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 153
    .line 154
    return-object p0
.end method

.method private final C(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const-string p1, "1"

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string p1, "0"

    .line 12
    .line 13
    :goto_0
    const-string v1, "has_paid"

    .line 14
    .line 15
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    const-string p1, "source"

    .line 19
    .line 20
    const-string v1, "lottery"

    .line 21
    .line 22
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    const-string p1, "redeem_rewards"

    .line 26
    .line 27
    invoke-static {p1, v0}, Lcom/transsion/rewardscenter/utils/q;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public static synthetic y(ZLcom/transsion/rewardscenter/redeem/LotteryItemProvider;Lcom/transsion/rewardscenter/redeem/e;Lcom/transsion/rewardscenterapi/LotteryPrize;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;->B(ZLcom/transsion/rewardscenter/redeem/LotteryItemProvider;Lcom/transsion/rewardscenter/redeem/e;Lcom/transsion/rewardscenterapi/LotteryPrize;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic z(Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;)Lzo/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;->e:Lzo/a;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/rewardscenter/redeem/e;)V
    .locals 11

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
    instance-of v0, p2, Lcom/transsion/rewardscenter/redeem/e$a;

    .line 12
    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    move-object v0, p2

    .line 16
    check-cast v0, Lcom/transsion/rewardscenter/redeem/e$a;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/transsion/rewardscenter/redeem/e$a;->b()Lcom/transsion/rewardscenterapi/LotteryPrize;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    sget v2, Lcom/transsion/rewardscenter/R$id;->title:I

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/transsion/rewardscenterapi/LotteryPrize;->getPrizeName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {p1, v2, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 29
    .line 30
    .line 31
    sget v2, Lcom/transsion/rewardscenter/R$id;->point:I

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/transsion/rewardscenterapi/LotteryPrize;->getPointCost()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    new-instance v4, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v5, "-"

    .line 43
    .line 44
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {p1, v2, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 55
    .line 56
    .line 57
    sget v2, Lcom/transsion/rewardscenter/R$id;->icon:I

    .line 58
    .line 59
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Landroid/widget/ImageView;

    .line 64
    .line 65
    sget-object v3, Lni/f;->a:Lni/f$a;

    .line 66
    .line 67
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    const-string v5, "getContext(...)"

    .line 72
    .line 73
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v4}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {v0}, Lcom/transsion/rewardscenter/redeem/e$a;->b()Lcom/transsion/rewardscenterapi/LotteryPrize;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/transsion/rewardscenterapi/LotteryPrize;->getPrizeUrl()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v3, v0}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    sget v3, Lcom/transsion/rewardscenter/R$mipmap;->ic_redeem_lottery:I

    .line 93
    .line 94
    invoke-virtual {v0, v3}, Lni/f$b;->i(I)Lni/f$b;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v0, v2}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;->e:Lzo/a;

    .line 102
    .line 103
    invoke-virtual {v0}, Lzo/a;->c()Lcom/transsion/rewardscenter/model/RewardsCenterModel;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->w()Lcom/transsion/rewardscenterapi/User;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    const/4 v2, 0x0

    .line 112
    if-eqz v0, :cond_0

    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/transsion/rewardscenterapi/User;->getPoint()I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    goto :goto_0

    .line 119
    :cond_0
    move v0, v2

    .line 120
    :goto_0
    invoke-virtual {v1}, Lcom/transsion/rewardscenterapi/LotteryPrize;->getPointCost()I

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    const/4 v4, 0x1

    .line 125
    if-lt v0, v3, :cond_1

    .line 126
    .line 127
    move v0, v4

    .line 128
    goto :goto_1

    .line 129
    :cond_1
    move v0, v2

    .line 130
    :goto_1
    sget v3, Lcom/transsion/rewardscenter/R$id;->action:I

    .line 131
    .line 132
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    move-object v5, p1

    .line 137
    check-cast v5, Landroid/widget/TextView;

    .line 138
    .line 139
    if-eqz v0, :cond_2

    .line 140
    .line 141
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 142
    .line 143
    .line 144
    sget p1, Lcom/transsion/rewardscenter/R$mipmap;->ic_redeem_btn_bg_orange:I

    .line 145
    .line 146
    invoke-virtual {v5, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 147
    .line 148
    .line 149
    const/4 p1, 0x0

    .line 150
    invoke-virtual {v5, p1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    sget v2, Lcom/tn/lib/widget/R$color;->white:I

    .line 158
    .line 159
    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 164
    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_2
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 168
    .line 169
    .line 170
    sget p1, Lcom/transsion/rewardscenter/R$drawable;->shape_r6_tint:I

    .line 171
    .line 172
    invoke-virtual {v5, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    sget v2, Lcom/transsion/rewardscenter/R$color;->redeem_disable_bg:I

    .line 180
    .line 181
    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-virtual {v5, p1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    sget v2, Lcom/tn/lib/widget/R$color;->white_80:I

    .line 197
    .line 198
    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 203
    .line 204
    .line 205
    :goto_2
    new-instance v8, Lcom/transsion/rewardscenter/redeem/a;

    .line 206
    .line 207
    invoke-direct {v8, v0, p0, p2, v1}, Lcom/transsion/rewardscenter/redeem/a;-><init>(ZLcom/transsion/rewardscenter/redeem/LotteryItemProvider;Lcom/transsion/rewardscenter/redeem/e;Lcom/transsion/rewardscenterapi/LotteryPrize;)V

    .line 208
    .line 209
    .line 210
    const/4 v9, 0x1

    .line 211
    const/4 v10, 0x0

    .line 212
    const-wide/16 v6, 0x0

    .line 213
    .line 214
    invoke-static/range {v5 .. v10}, Luf/c;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    :cond_3
    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/rewardscenter/redeem/e;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/rewardscenter/redeem/LotteryItemProvider;->A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/rewardscenter/redeem/e;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/rewardscenter/redeem/RedeemType;->LOTTERY:Lcom/transsion/rewardscenter/redeem/RedeemType;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/rewardscenter/redeem/RedeemType;->getValue()I

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
    sget v0, Lcom/transsion/rewardscenter/R$layout;->redeem_lottery_item:I

    .line 2
    .line 3
    return v0
.end method
