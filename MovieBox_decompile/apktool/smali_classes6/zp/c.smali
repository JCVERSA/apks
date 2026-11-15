.class public final Lzp/c;
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
    check-cast p2, Lcom/transsion/search/fragment/result/ResultWrapData;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lzp/c;->y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/search/fragment/result/ResultWrapData;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/search/fragment/result/ResultType;->VERTICAL_RANK:Lcom/transsion/search/fragment/result/ResultType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

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
    sget v0, Lcom/transsion/search/R$layout;->provider_result_rank:I

    .line 2
    .line 3
    return v0
.end method

.method public y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/search/fragment/result/ResultWrapData;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "helper"

    .line 3
    .line 4
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v1, "item"

    .line 8
    .line 9
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object v1, Lni/f;->a:Lni/f$a;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p2}, Lcom/transsion/search/fragment/result/ResultWrapData;->getVerticalRank()Lcom/transsion/search/bean/VerticalRank;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const-string v3, ""

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/transsion/search/bean/VerticalRank;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    if-nez v2, :cond_1

    .line 41
    .line 42
    :cond_0
    move-object v2, v3

    .line 43
    :cond_1
    invoke-virtual {v1, v2}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p2}, Lcom/transsion/search/fragment/result/ResultWrapData;->getVerticalRank()Lcom/transsion/search/bean/VerticalRank;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/transsion/search/bean/VerticalRank;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    if-nez v2, :cond_3

    .line 64
    .line 65
    :cond_2
    move-object v2, v3

    .line 66
    :cond_3
    invoke-virtual {v1, v2}, Lni/f$b;->l(Ljava/lang/String;)Lni/f$b;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    const/high16 v2, 0x42480000    # 50.0f

    .line 71
    .line 72
    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    invoke-virtual {v1, v2}, Lni/f$b;->m(I)Lni/f$b;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    sget v2, Lcom/transsion/search/R$id;->search_result_provider_rank_cover:I

    .line 81
    .line 82
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    check-cast v2, Landroid/widget/ImageView;

    .line 87
    .line 88
    invoke-virtual {v1, v2}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 89
    .line 90
    .line 91
    sget v1, Lcom/transsion/search/R$id;->search_result_provider_rank_title:I

    .line 92
    .line 93
    invoke-virtual {p2}, Lcom/transsion/search/fragment/result/ResultWrapData;->getVerticalRank()Lcom/transsion/search/bean/VerticalRank;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    if-eqz v2, :cond_4

    .line 98
    .line 99
    invoke-virtual {v2}, Lcom/transsion/search/bean/VerticalRank;->getTitle()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    goto :goto_0

    .line 104
    :cond_4
    const/4 v2, 0x0

    .line 105
    :goto_0
    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2}, Lcom/transsion/search/fragment/result/ResultWrapData;->getVerticalRank()Lcom/transsion/search/bean/VerticalRank;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    if-eqz v1, :cond_5

    .line 113
    .line 114
    invoke-virtual {v1}, Lcom/transsion/search/bean/VerticalRank;->getCount()Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    if-eqz v1, :cond_5

    .line 119
    .line 120
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    goto :goto_1

    .line 125
    :cond_5
    move v1, v0

    .line 126
    :goto_1
    if-lez v1, :cond_6

    .line 127
    .line 128
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    sget v2, Lcom/tn/lib/widget/R$string;->sources:I

    .line 133
    .line 134
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    const/4 v3, 0x1

    .line 139
    new-array v3, v3, [Ljava/lang/Object;

    .line 140
    .line 141
    aput-object v1, v3, v0

    .line 142
    .line 143
    invoke-virtual {p2, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    goto :goto_2

    .line 148
    :cond_6
    invoke-virtual {p2}, Lcom/transsion/search/fragment/result/ResultWrapData;->getVerticalRank()Lcom/transsion/search/bean/VerticalRank;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    if-eqz p2, :cond_8

    .line 153
    .line 154
    invoke-virtual {p2}, Lcom/transsion/search/bean/VerticalRank;->getDescription()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    if-nez p2, :cond_7

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_7
    move-object v3, p2

    .line 162
    :cond_8
    :goto_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    sget p2, Lcom/transsion/search/R$id;->search_result_provider_rank_subtitle:I

    .line 166
    .line 167
    invoke-virtual {p1, p2, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 168
    .line 169
    .line 170
    return-void
.end method
