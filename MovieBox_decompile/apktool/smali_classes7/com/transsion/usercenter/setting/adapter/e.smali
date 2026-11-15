.class public final Lcom/transsion/usercenter/setting/adapter/e;
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
    check-cast p2, Ljv/b;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/usercenter/setting/adapter/e;->y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljv/b;)V

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
    sget v0, Lcom/transsion/usercenter/R$layout;->user_item_setting:I

    .line 2
    .line 3
    return v0
.end method

.method public y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljv/b;)V
    .locals 4

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
    sget v0, Lcom/transsion/usercenter/R$id;->tv_title:I

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/tn/lib/widget/TnTextView;

    .line 18
    .line 19
    invoke-virtual {p2}, Ljv/b;->i()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/tn/lib/widget/TnTextView;->setTextById(I)V

    .line 24
    .line 25
    .line 26
    sget v0, Lcom/transsion/usercenter/R$id;->tv_content:I

    .line 27
    .line 28
    invoke-virtual {p2}, Ljv/b;->b()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sget v1, Lcom/transsion/usercenter/R$id;->progress_bar:I

    .line 37
    .line 38
    invoke-virtual {p2}, Ljv/b;->c()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    const/4 v3, 0x1

    .line 43
    xor-int/2addr v2, v3

    .line 44
    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sget v1, Lcom/transsion/usercenter/R$id;->tv_content:I

    .line 49
    .line 50
    invoke-virtual {p2}, Ljv/b;->c()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 55
    .line 56
    .line 57
    sget v0, Lcom/transsion/usercenter/R$id;->divider:I

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-eqz v0, :cond_0

    .line 64
    .line 65
    invoke-virtual {p2}, Ljv/b;->d()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    invoke-static {v0, v1}, Luf/c;->j(Landroid/view/View;Z)V

    .line 70
    .line 71
    .line 72
    :cond_0
    sget v0, Lcom/transsion/usercenter/R$id;->bgView:I

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const/4 v1, 0x0

    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    invoke-virtual {p2}, Ljv/b;->a()Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    if-eqz v2, :cond_1

    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    goto :goto_0

    .line 92
    :cond_1
    move v2, v1

    .line 93
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 94
    .line 95
    .line 96
    :cond_2
    sget v0, Lcom/transsion/usercenter/R$id;->tv_tips:I

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    check-cast p1, Lcom/transsion/baseui/widget/text/GradientTextView;

    .line 103
    .line 104
    invoke-virtual {p2}, Ljv/b;->h()Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    invoke-virtual {p1, v0}, Lcom/transsion/baseui/widget/text/GradientTextView;->setEnableGradientColor(Z)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    sget v2, Lcom/tn/lib/widget/R$color;->white_60:I

    .line 120
    .line 121
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2}, Ljv/b;->g()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    if-eqz v0, :cond_3

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_3
    const-string v0, ""

    .line 136
    .line 137
    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2}, Ljv/b;->g()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    if-eqz p2, :cond_4

    .line 145
    .line 146
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 147
    .line 148
    .line 149
    move-result p2

    .line 150
    if-lez p2, :cond_4

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_4
    move v3, v1

    .line 154
    :goto_2
    if-eqz v3, :cond_5

    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_5
    const/16 v1, 0x8

    .line 158
    .line 159
    :goto_3
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 160
    .line 161
    .line 162
    return-void
.end method
