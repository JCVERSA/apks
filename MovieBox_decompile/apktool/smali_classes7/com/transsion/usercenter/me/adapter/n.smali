.class public final Lcom/transsion/usercenter/me/adapter/n;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "source.java"


# instance fields
.field private final e:Lcom/transsion/usercenter/me/adapter/o;

.field private f:Lcom/transsion/usercenter/profile/f;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/transsion/usercenter/me/adapter/n;-><init>(Lcom/transsion/usercenter/me/adapter/o;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/usercenter/me/adapter/o;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/transsion/usercenter/me/adapter/n;->e:Lcom/transsion/usercenter/me/adapter/o;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/usercenter/me/adapter/o;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/usercenter/me/adapter/n;-><init>(Lcom/transsion/usercenter/me/adapter/o;)V

    return-void
.end method

.method private static final B(Landroid/widget/TextView;Ljava/lang/Integer;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v1

    .line 11
    :goto_0
    if-eqz v0, :cond_1

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_1
    const/16 v1, 0x8

    .line 15
    .line 16
    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 27
    .line 28
    return-object p0
.end method

.method private static final C(Lcom/transsion/usercenter/me/adapter/n;Lcom/transsion/usercenter/profile/bean/MeItemInfo;Landroid/view/View;)Lkotlin/Unit;
    .locals 3

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p2, Lcom/transsion/usercenter/me/k;->a:Lcom/transsion/usercenter/me/k;

    .line 7
    .line 8
    const-string v0, "notice"

    .line 9
    .line 10
    invoke-virtual {p2, v0}, Lcom/transsion/usercenter/me/k;->b(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    new-instance v0, Landroid/content/Intent;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-class v2, Lcom/transsion/usercenter/message/UserMessageActivity;

    .line 24
    .line 25
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Lcom/transsion/usercenter/me/adapter/n;->f:Lcom/transsion/usercenter/profile/f;

    .line 32
    .line 33
    if-eqz p2, :cond_0

    .line 34
    .line 35
    invoke-virtual {p2}, Lcom/transsion/usercenter/profile/f;->e()V

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object p0, p0, Lcom/transsion/usercenter/me/adapter/n;->e:Lcom/transsion/usercenter/me/adapter/o;

    .line 39
    .line 40
    if-eqz p0, :cond_1

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/transsion/usercenter/me/adapter/o;->Q1()Lkotlin/jvm/functions/Function1;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    if-eqz p0, :cond_1

    .line 47
    .line 48
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 52
    .line 53
    return-object p0
.end method

.method public static synthetic y(Landroid/widget/TextView;Ljava/lang/Integer;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/usercenter/me/adapter/n;->B(Landroid/widget/TextView;Ljava/lang/Integer;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic z(Lcom/transsion/usercenter/me/adapter/n;Lcom/transsion/usercenter/profile/bean/MeItemInfo;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/usercenter/me/adapter/n;->C(Lcom/transsion/usercenter/me/adapter/n;Lcom/transsion/usercenter/profile/bean/MeItemInfo;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/profile/bean/MeItemInfo;)V
    .locals 8

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
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    instance-of v1, v0, Lcom/transsion/baseui/activity/BaseActivity;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    check-cast v0, Lcom/transsion/baseui/activity/BaseActivity;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    if-eqz v0, :cond_1

    .line 24
    .line 25
    sget v1, Lcom/transsion/usercenter/R$id;->desTv:I

    .line 26
    .line 27
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroid/widget/TextView;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/transsion/usercenter/me/adapter/n;->f:Lcom/transsion/usercenter/profile/f;

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/transsion/usercenter/profile/f;->h()Landroidx/lifecycle/b0;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    new-instance v3, Lcom/transsion/usercenter/me/adapter/l;

    .line 44
    .line 45
    invoke-direct {v3, v1}, Lcom/transsion/usercenter/me/adapter/l;-><init>(Landroid/widget/TextView;)V

    .line 46
    .line 47
    .line 48
    new-instance v1, Lcom/transsion/usercenter/me/adapter/n$a;

    .line 49
    .line 50
    invoke-direct {v1, v3}, Lcom/transsion/usercenter/me/adapter/n$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v0, v1}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    sget v0, Lcom/transsion/usercenter/R$id;->titleTv:I

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Landroid/widget/TextView;

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    sget v2, Lcom/transsion/usercenter/R$string;->messages_title_name:I

    .line 69
    .line 70
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    .line 76
    .line 77
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 78
    .line 79
    const-string p1, "itemView"

    .line 80
    .line 81
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    new-instance v5, Lcom/transsion/usercenter/me/adapter/m;

    .line 85
    .line 86
    invoke-direct {v5, p0, p2}, Lcom/transsion/usercenter/me/adapter/m;-><init>(Lcom/transsion/usercenter/me/adapter/n;Lcom/transsion/usercenter/profile/bean/MeItemInfo;)V

    .line 87
    .line 88
    .line 89
    const/4 v6, 0x1

    .line 90
    const/4 v7, 0x0

    .line 91
    const-wide/16 v3, 0x0

    .line 92
    .line 93
    invoke-static/range {v2 .. v7}, Luf/c;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/usercenter/me/adapter/n;->A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/profile/bean/MeItemInfo;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    return v0
.end method

.method public m()I
    .locals 1

    .line 1
    sget v0, Lcom/transsion/usercenter/R$layout;->message_item_icon_layout:I

    .line 2
    .line 3
    return v0
.end method

.method public v(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V
    .locals 4

    .line 1
    const-string v0, "viewHolder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->v(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V

    .line 7
    .line 8
    .line 9
    sget p2, Lcom/transsion/usercenter/R$id;->desTv:I

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast p2, Landroid/widget/TextView;

    .line 16
    .line 17
    const/high16 v0, 0x41300000    # 11.0f

    .line 18
    .line 19
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x4

    .line 23
    invoke-static {v0}, Llj/a;->b(I)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x1

    .line 28
    invoke-static {v2}, Llj/a;->b(I)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-static {v0}, Llj/a;->b(I)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-static {v2}, Llj/a;->b(I)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-virtual {p2, v1, v3, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sget v1, Lcom/tn/lib/widget/R$color;->white:I

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 58
    .line 59
    .line 60
    sget v0, Lcom/transsion/baseui/R$drawable;->bg_red_r7:I

    .line 61
    .line 62
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 63
    .line 64
    .line 65
    sget p2, Lcom/transsion/usercenter/R$id;->bgView:I

    .line 66
    .line 67
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    sget v0, Lcom/transsion/baseui/R$drawable;->bg_radius_bottom_6_color_white_6p:I

    .line 72
    .line 73
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 74
    .line 75
    .line 76
    sget p2, Lcom/transsion/usercenter/R$id;->icIV:I

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Landroid/widget/ImageView;

    .line 83
    .line 84
    sget p2, Lcom/tn/lib/widget/R$drawable;->ic_me_message:I

    .line 85
    .line 86
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    instance-of p2, p1, Lcom/transsion/baseui/activity/BaseActivity;

    .line 94
    .line 95
    if-eqz p2, :cond_0

    .line 96
    .line 97
    check-cast p1, Lcom/transsion/baseui/activity/BaseActivity;

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_0
    const/4 p1, 0x0

    .line 101
    :goto_0
    if-eqz p1, :cond_1

    .line 102
    .line 103
    new-instance p2, Landroidx/lifecycle/v0;

    .line 104
    .line 105
    invoke-direct {p2, p1}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    .line 106
    .line 107
    .line 108
    const-class p1, Lcom/transsion/usercenter/profile/f;

    .line 109
    .line 110
    invoke-virtual {p2, p1}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    check-cast p1, Lcom/transsion/usercenter/profile/f;

    .line 115
    .line 116
    iput-object p1, p0, Lcom/transsion/usercenter/me/adapter/n;->f:Lcom/transsion/usercenter/profile/f;

    .line 117
    .line 118
    :cond_1
    return-void
.end method
