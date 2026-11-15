.class public final Lcom/transsion/usercenter/me/adapter/b;
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

.method private static final A(Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->getLink()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {p0}, Lcom/blankj/utilcode/util/g;->a(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    .line 14
    .line 15
    sget p1, Lcom/transsion/share/R$string;->player_copy_link_success:I

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/tn/lib/widget/toast/core/h;->k(I)V

    .line 18
    .line 19
    .line 20
    sget-object p0, Lcom/transsion/usercenter/me/k;->a:Lcom/transsion/usercenter/me/k;

    .line 21
    .line 22
    const-string p1, "copy_link"

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/transsion/usercenter/me/k;->b(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 28
    .line 29
    return-object p0
.end method

.method public static synthetic y(Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/usercenter/me/adapter/b;->A(Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;Landroid/view/View;)Lkotlin/Unit;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/usercenter/me/adapter/b;->z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/profile/bean/MeItemInfo;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    return v0
.end method

.method public m()I
    .locals 1

    .line 1
    sget v0, Lcom/transsion/usercenter/R$layout;->mine_item_bottom_layout:I

    .line 2
    .line 3
    return v0
.end method

.method public z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/profile/bean/MeItemInfo;)V
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
    invoke-virtual {p2}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;->getData()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    instance-of v0, p2, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    check-cast p2, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p2, 0x0

    .line 23
    :goto_0
    if-nez p2, :cond_1

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 27
    .line 28
    const-string v1, "itemView"

    .line 29
    .line 30
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->getBottomContent()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const/4 v2, 0x1

    .line 38
    const/4 v3, 0x0

    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_2

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move v1, v3

    .line 49
    goto :goto_2

    .line 50
    :cond_3
    :goto_1
    move v1, v2

    .line 51
    :goto_2
    const/16 v4, 0x8

    .line 52
    .line 53
    if-nez v1, :cond_4

    .line 54
    .line 55
    move v1, v3

    .line 56
    goto :goto_3

    .line 57
    :cond_4
    move v1, v4

    .line 58
    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    sget v0, Lcom/transsion/usercenter/R$id;->titleTv:I

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Landroid/widget/TextView;

    .line 68
    .line 69
    invoke-virtual {p2}, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->getBottomContent()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    .line 76
    sget v0, Lcom/transsion/usercenter/R$id;->copyTv:I

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    move-object v5, p1

    .line 83
    check-cast v5, Landroid/widget/TextView;

    .line 84
    .line 85
    invoke-virtual {p2}, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->getLink()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    if-eqz p1, :cond_6

    .line 90
    .line 91
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-nez p1, :cond_5

    .line 96
    .line 97
    goto :goto_4

    .line 98
    :cond_5
    move v2, v3

    .line 99
    :cond_6
    :goto_4
    if-nez v2, :cond_7

    .line 100
    .line 101
    goto :goto_5

    .line 102
    :cond_7
    move v3, v4

    .line 103
    :goto_5
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 104
    .line 105
    .line 106
    new-instance v8, Lcom/transsion/usercenter/me/adapter/a;

    .line 107
    .line 108
    invoke-direct {v8, p2}, Lcom/transsion/usercenter/me/adapter/a;-><init>(Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;)V

    .line 109
    .line 110
    .line 111
    const/4 v9, 0x1

    .line 112
    const/4 v10, 0x0

    .line 113
    const-wide/16 v6, 0x0

    .line 114
    .line 115
    invoke-static/range {v5 .. v10}, Luf/c;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    return-void
.end method
