.class public final Lcom/cloud/hisavana/sdk/l1;
.super Lcom/cloud/hisavana/sdk/k0;
.source "source.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/cloud/hisavana/sdk/z3;)V
    .locals 1

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "rootView"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "helper"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/k0;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/cloud/hisavana/sdk/z3;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static synthetic m(Lcom/cloud/hisavana/sdk/l1;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/l1;->o(Lcom/cloud/hisavana/sdk/l1;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic n(Lcom/cloud/hisavana/sdk/l1;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/l1;->p(Lcom/cloud/hisavana/sdk/l1;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final o(Lcom/cloud/hisavana/sdk/l1;Landroid/view/View;)V
    .locals 1

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/k0;->f()Lcom/cloud/hisavana/sdk/z3;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x2

    .line 11
    invoke-interface {p1, v0}, Lcom/cloud/hisavana/sdk/z3;->a(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/k0;->f()Lcom/cloud/hisavana/sdk/z3;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const/4 p1, 0x0

    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-interface {p0, p1, v0}, Lcom/cloud/hisavana/sdk/z3;->b(ZLcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    :catchall_0
    return-void
.end method

.method private static final p(Lcom/cloud/hisavana/sdk/l1;Landroid/view/View;)V
    .locals 1

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/k0;->f()Lcom/cloud/hisavana/sdk/z3;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-interface {p0, p1, v0}, Lcom/cloud/hisavana/sdk/z3;->b(ZLcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method


# virtual methods
.method public b(Landroid/widget/ImageView;F)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    cmpg-float p2, v0, p2

    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    sget p2, Lcom/cloud/hisavana/sdk/R$drawable;->hisavana_volume_close:I

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget p2, Lcom/cloud/hisavana/sdk/R$drawable;->hisavana_volume_open:I

    .line 12
    .line 13
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 14
    .line 15
    .line 16
    :cond_1
    return-void
.end method

.method public c(Lcom/cloud/hisavana/sdk/common/util/HSChronometer;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget v1, Lcom/cloud/hisavana/sdk/R$string;->reward_before_tip:I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->setTickStringFormat(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sget v1, Lcom/cloud/hisavana/sdk/R$string;->reward_after_tip:I

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->setFinishedString(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public d(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/k0;->g()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Lcom/cloud/hisavana/sdk/R$id;->ad_description:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/TextView;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/k0;->g()Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sget v2, Lcom/cloud/hisavana/sdk/R$id;->source_size:I

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroid/widget/TextView;

    .line 24
    .line 25
    sget-object v2, Lcom/cloud/hisavana/sdk/common/util/r;->a:Lcom/cloud/hisavana/sdk/common/util/r;

    .line 26
    .line 27
    invoke-virtual {v2, p1}, Lcom/cloud/hisavana/sdk/common/util/r;->j(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/k0;->f()Lcom/cloud/hisavana/sdk/z3;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-interface {v3}, Lcom/cloud/hisavana/sdk/z3;->c()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    const/4 v4, 0x0

    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getScale()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    move-object v3, v4

    .line 50
    :goto_0
    const-string v5, "9:16"

    .line 51
    .line 52
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_2

    .line 57
    .line 58
    if-nez v1, :cond_1

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_2
    if-eqz p1, :cond_3

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    if-eqz v1, :cond_3

    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getDescriptionTxt()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    goto :goto_1

    .line 78
    :cond_3
    move-object v1, v4

    .line 79
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-nez v3, :cond_4

    .line 84
    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v2, " \u00b7 "

    .line 94
    .line 95
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    :cond_4
    if-nez v0, :cond_5

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    .line 110
    .line 111
    :goto_2
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/k0;->g()Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    sget v1, Lcom/cloud/hisavana/sdk/R$id;->ad_btn:I

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    check-cast v0, Landroid/widget/TextView;

    .line 122
    .line 123
    if-nez v0, :cond_6

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_6
    if-eqz p1, :cond_7

    .line 127
    .line 128
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getInstallApk()I

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    if-eqz p1, :cond_7

    .line 137
    .line 138
    invoke-virtual {p1, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getButtonTxt(I)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    :cond_7
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    .line 144
    .line 145
    :goto_3
    if-nez v0, :cond_8

    .line 146
    .line 147
    goto :goto_5

    .line 148
    :cond_8
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    if-eqz p1, :cond_9

    .line 153
    .line 154
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    if-lez p1, :cond_9

    .line 159
    .line 160
    const/4 p1, 0x0

    .line 161
    goto :goto_4

    .line 162
    :cond_9
    const/16 p1, 0x8

    .line 163
    .line 164
    :goto_4
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 165
    .line 166
    .line 167
    :goto_5
    if-eqz v0, :cond_a

    .line 168
    .line 169
    new-instance p1, Lcom/cloud/hisavana/sdk/j1;

    .line 170
    .line 171
    invoke-direct {p1, p0}, Lcom/cloud/hisavana/sdk/j1;-><init>(Lcom/cloud/hisavana/sdk/l1;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    .line 176
    .line 177
    :cond_a
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/k0;->g()Landroid/view/View;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->ad_float_container:I

    .line 182
    .line 183
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    if-eqz p1, :cond_b

    .line 188
    .line 189
    new-instance v0, Lcom/cloud/hisavana/sdk/k1;

    .line 190
    .line 191
    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/k1;-><init>(Lcom/cloud/hisavana/sdk/l1;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    .line 196
    .line 197
    :cond_b
    return-void
.end method

.method public e(ZLcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/k0;->f()Lcom/cloud/hisavana/sdk/z3;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-interface {p3, v0}, Lcom/cloud/hisavana/sdk/z3;->a(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/k0;->f()Lcom/cloud/hisavana/sdk/z3;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    invoke-interface {p3, p1, p2}, Lcom/cloud/hisavana/sdk/z3;->b(ZLcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public h()V
    .locals 0

    .line 1
    return-void
.end method

.method public i()V
    .locals 0

    .line 1
    return-void
.end method

.method public j()V
    .locals 0

    .line 1
    return-void
.end method

.method public k()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/k0;->f()Lcom/cloud/hisavana/sdk/z3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/cloud/hisavana/sdk/z3;->c()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/k0;->a()Landroid/app/Activity;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget v1, Lcom/cloud/hisavana/sdk/R$layout;->activity_rewarded_r01:I

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/k0;->f()Lcom/cloud/hisavana/sdk/z3;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Lcom/cloud/hisavana/sdk/z3;->f()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_8

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getScale()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-eqz v1, :cond_7

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_1

    .line 42
    .line 43
    goto/16 :goto_2

    .line 44
    .line 45
    :cond_1
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getInstallApk()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    if-eqz v2, :cond_6

    .line 54
    .line 55
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getLogoUrl()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    const-string v4, "getLogoUrl(...)"

    .line 63
    .line 64
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-lez v3, :cond_2

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getTitleTxt()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    const-string v4, "getTitleTxt(...)"

    .line 79
    .line 80
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-lez v3, :cond_3

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getDescriptionTxt()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    const-string v4, "getDescriptionTxt(...)"

    .line 95
    .line 96
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-lez v3, :cond_4

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_4
    invoke-virtual {v2, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getButtonTxt(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    const-string v2, "getButtonTxt(...)"

    .line 111
    .line 112
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-lez v1, :cond_6

    .line 120
    .line 121
    :goto_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getScale()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    const-string v1, "9:16"

    .line 126
    .line 127
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_5

    .line 132
    .line 133
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/k0;->f()Lcom/cloud/hisavana/sdk/z3;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    const/4 v1, 0x1

    .line 138
    invoke-interface {v0, v1}, Lcom/cloud/hisavana/sdk/z3;->a(Z)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/k0;->a()Landroid/app/Activity;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    sget v1, Lcom/cloud/hisavana/sdk/R$layout;->activity_rewarded_r01_916:I

    .line 146
    .line 147
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_5
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/k0;->a()Landroid/app/Activity;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    sget v1, Lcom/cloud/hisavana/sdk/R$layout;->activity_rewarded_r01:I

    .line 156
    .line 157
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 158
    .line 159
    .line 160
    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_6
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/k0;->a()Landroid/app/Activity;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    sget v1, Lcom/cloud/hisavana/sdk/R$layout;->activity_rewarded_r01_expose:I

    .line 168
    .line 169
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 170
    .line 171
    .line 172
    return-void

    .line 173
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/k0;->a()Landroid/app/Activity;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    sget v1, Lcom/cloud/hisavana/sdk/R$layout;->activity_rewarded_r01:I

    .line 178
    .line 179
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 180
    .line 181
    .line 182
    return-void

    .line 183
    :cond_8
    const/4 v0, 0x0

    .line 184
    :goto_3
    if-nez v0, :cond_9

    .line 185
    .line 186
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/k0;->a()Landroid/app/Activity;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    sget v1, Lcom/cloud/hisavana/sdk/R$layout;->activity_rewarded_r01:I

    .line 191
    .line 192
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 193
    .line 194
    .line 195
    :cond_9
    return-void
.end method

.method public l()V
    .locals 0

    .line 1
    return-void
.end method
