.class public final Lcom/transsion/rewardscenter/redeem/SkuItemProvider;
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
    iput-object p1, p0, Lcom/transsion/rewardscenter/redeem/SkuItemProvider;->e:Lzo/a;

    .line 10
    .line 11
    return-void
.end method

.method private static final B(ZLcom/transsion/rewardscenter/redeem/SkuItemProvider;Lcom/transsion/rewardscenter/redeem/e;Lcom/transsion/rewardscenterapi/SkuPoint;Landroid/view/View;)Lkotlin/Unit;
    .locals 1

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
    if-nez p0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    sget p1, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string p1, "getString(...)"

    .line 30
    .line 31
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    invoke-static {p1, p0}, Lcom/transsion/rewardscenter/utils/p;->a(ZLjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_1
    iget-object p0, p1, Lcom/transsion/rewardscenter/redeem/SkuItemProvider;->e:Lzo/a;

    .line 42
    .line 43
    invoke-virtual {p0}, Lzo/a;->c()Lcom/transsion/rewardscenter/model/RewardsCenterModel;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0}, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->p()Landroidx/lifecycle/b0;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    check-cast p0, Lcom/transsion/rewardscenterapi/Lottery;

    .line 56
    .line 57
    if-eqz p0, :cond_2

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/transsion/rewardscenterapi/Lottery;->getActivityId()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    const/4 p0, 0x0

    .line 65
    :goto_0
    const-string p4, "0"

    .line 66
    .line 67
    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    if-nez p0, :cond_4

    .line 72
    .line 73
    move-object p0, p2

    .line 74
    check-cast p0, Lcom/transsion/rewardscenter/redeem/e$b;

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/transsion/rewardscenter/redeem/e$b;->a()Z

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    if-eqz p0, :cond_3

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    iget-object p0, p1, Lcom/transsion/rewardscenter/redeem/SkuItemProvider;->e:Lzo/a;

    .line 84
    .line 85
    sget-object p3, Lcom/transsion/rewardscenterapi/TopUpType;->REDEEM:Lcom/transsion/rewardscenterapi/TopUpType;

    .line 86
    .line 87
    invoke-virtual {p0}, Lzo/a;->c()Lcom/transsion/rewardscenter/model/RewardsCenterModel;

    .line 88
    .line 89
    .line 90
    move-result-object p4

    .line 91
    invoke-virtual {p4}, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->l()Lcom/transsion/rewardscenterapi/SkuPoint;

    .line 92
    .line 93
    .line 94
    move-result-object p4

    .line 95
    invoke-static {p0, p3, p4}, Lcom/transsion/rewardscenter/utils/f;->c(Lzo/a;Lcom/transsion/rewardscenterapi/TopUpType;Lcom/transsion/rewardscenterapi/SkuPoint;)V

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_4
    :goto_1
    invoke-direct {p1, p3}, Lcom/transsion/rewardscenter/redeem/SkuItemProvider;->C(Lcom/transsion/rewardscenterapi/SkuPoint;)V

    .line 100
    .line 101
    .line 102
    :goto_2
    check-cast p2, Lcom/transsion/rewardscenter/redeem/e$b;

    .line 103
    .line 104
    invoke-virtual {p2}, Lcom/transsion/rewardscenter/redeem/e$b;->a()Z

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    invoke-direct {p1, p0}, Lcom/transsion/rewardscenter/redeem/SkuItemProvider;->D(Z)V

    .line 109
    .line 110
    .line 111
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 112
    .line 113
    return-object p0
.end method

.method private final C(Lcom/transsion/rewardscenterapi/SkuPoint;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/transsion/rewardscenterapi/SkuPoint;->getSkuId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/transsion/rewardscenter/redeem/SkuItemProvider;->e:Lzo/a;

    .line 8
    .line 9
    invoke-virtual {v0}, Lzo/a;->b()Lkotlinx/coroutines/n0;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v4, Lcom/transsion/rewardscenter/redeem/SkuItemProvider$redeem$1$1;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-direct {v4, p0, p1, v0}, Lcom/transsion/rewardscenter/redeem/SkuItemProvider$redeem$1$1;-><init>(Lcom/transsion/rewardscenter/redeem/SkuItemProvider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 17
    .line 18
    .line 19
    const/4 v5, 0x3

    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    sget v0, Lcom/transsion/rewardscenter/R$string;->redeem_failed_tips:I

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string v0, "getString(...)"

    .line 40
    .line 41
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    invoke-static {v0, p1}, Lcom/transsion/rewardscenter/utils/p;->a(ZLjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 49
    .line 50
    :cond_1
    return-void
.end method

.method private final D(Z)V
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
    const-string v1, "sku"

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

.method public static synthetic y(ZLcom/transsion/rewardscenter/redeem/SkuItemProvider;Lcom/transsion/rewardscenter/redeem/e;Lcom/transsion/rewardscenterapi/SkuPoint;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/rewardscenter/redeem/SkuItemProvider;->B(ZLcom/transsion/rewardscenter/redeem/SkuItemProvider;Lcom/transsion/rewardscenter/redeem/e;Lcom/transsion/rewardscenterapi/SkuPoint;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic z(Lcom/transsion/rewardscenter/redeem/SkuItemProvider;)Lzo/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/rewardscenter/redeem/SkuItemProvider;->e:Lzo/a;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/rewardscenter/redeem/e;)V
    .locals 10

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
    instance-of v0, p2, Lcom/transsion/rewardscenter/redeem/e$b;

    .line 12
    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    move-object v0, p2

    .line 16
    check-cast v0, Lcom/transsion/rewardscenter/redeem/e$b;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/transsion/rewardscenter/redeem/e$b;->b()Lcom/transsion/rewardscenterapi/SkuPoint;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget v1, Lcom/transsion/rewardscenter/R$id;->title:I

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/transsion/rewardscenterapi/SkuPoint;->getDescription()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 29
    .line 30
    .line 31
    sget v1, Lcom/transsion/rewardscenter/R$id;->point:I

    .line 32
    .line 33
    new-instance v2, Ljava/math/BigDecimal;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/transsion/rewardscenterapi/SkuPoint;->getPrice()D

    .line 36
    .line 37
    .line 38
    move-result-wide v3

    .line 39
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v2}, Lcom/cloud/hisavana/sdk/common/util/m0;->a(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v2}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v4, "-"

    .line 60
    .line 61
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 72
    .line 73
    .line 74
    iget-object v1, p0, Lcom/transsion/rewardscenter/redeem/SkuItemProvider;->e:Lzo/a;

    .line 75
    .line 76
    invoke-virtual {v1}, Lzo/a;->c()Lcom/transsion/rewardscenter/model/RewardsCenterModel;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v1}, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->w()Lcom/transsion/rewardscenterapi/User;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    const/4 v2, 0x0

    .line 85
    if-eqz v1, :cond_0

    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/transsion/rewardscenterapi/User;->getPoint()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    goto :goto_0

    .line 92
    :cond_0
    move v1, v2

    .line 93
    :goto_0
    int-to-double v3, v1

    .line 94
    invoke-virtual {v0}, Lcom/transsion/rewardscenterapi/SkuPoint;->getPrice()D

    .line 95
    .line 96
    .line 97
    move-result-wide v5

    .line 98
    cmpl-double v1, v3, v5

    .line 99
    .line 100
    const/4 v3, 0x1

    .line 101
    if-ltz v1, :cond_1

    .line 102
    .line 103
    move v1, v3

    .line 104
    goto :goto_1

    .line 105
    :cond_1
    move v1, v2

    .line 106
    :goto_1
    sget v4, Lcom/transsion/rewardscenter/R$id;->action:I

    .line 107
    .line 108
    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    move-object v4, p1

    .line 113
    check-cast v4, Landroid/widget/TextView;

    .line 114
    .line 115
    if-eqz v1, :cond_2

    .line 116
    .line 117
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 118
    .line 119
    .line 120
    sget p1, Lcom/transsion/rewardscenter/R$mipmap;->ic_redeem_btn_bg_orange:I

    .line 121
    .line 122
    invoke-virtual {v4, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 123
    .line 124
    .line 125
    const/4 p1, 0x0

    .line 126
    invoke-virtual {v4, p1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    sget v2, Lcom/tn/lib/widget/R$color;->white:I

    .line 134
    .line 135
    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_2
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 144
    .line 145
    .line 146
    sget p1, Lcom/transsion/rewardscenter/R$drawable;->shape_r6_tint:I

    .line 147
    .line 148
    invoke-virtual {v4, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    sget v2, Lcom/transsion/rewardscenter/R$color;->redeem_disable_bg:I

    .line 156
    .line 157
    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {v4, p1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    sget v2, Lcom/tn/lib/widget/R$color;->white_80:I

    .line 173
    .line 174
    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 179
    .line 180
    .line 181
    :goto_2
    new-instance v7, Lcom/transsion/rewardscenter/redeem/f;

    .line 182
    .line 183
    invoke-direct {v7, v1, p0, p2, v0}, Lcom/transsion/rewardscenter/redeem/f;-><init>(ZLcom/transsion/rewardscenter/redeem/SkuItemProvider;Lcom/transsion/rewardscenter/redeem/e;Lcom/transsion/rewardscenterapi/SkuPoint;)V

    .line 184
    .line 185
    .line 186
    const/4 v8, 0x1

    .line 187
    const/4 v9, 0x0

    .line 188
    const-wide/16 v5, 0x0

    .line 189
    .line 190
    invoke-static/range {v4 .. v9}, Luf/c;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    :cond_3
    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/rewardscenter/redeem/e;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/rewardscenter/redeem/SkuItemProvider;->A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/rewardscenter/redeem/e;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/rewardscenter/redeem/RedeemType;->SKU:Lcom/transsion/rewardscenter/redeem/RedeemType;

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
    sget v0, Lcom/transsion/rewardscenter/R$layout;->redeem_sku_item:I

    .line 2
    .line 3
    return v0
.end method
