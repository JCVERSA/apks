.class public final Lcom/transsion/usercenter/me/adapter/r;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "source.java"


# instance fields
.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "open_account"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/transsion/usercenter/me/adapter/r;->e:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method private static final A(Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;Lcom/transsion/usercenter/me/adapter/r;Landroid/view/View;)Lkotlin/Unit;
    .locals 6

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->getNoticeDeepLink()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    if-eqz p2, :cond_6

    .line 11
    .line 12
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    goto :goto_3

    .line 19
    :cond_0
    sget-object p2, Lcom/transsion/usercenter/me/k;->a:Lcom/transsion/usercenter/me/k;

    .line 20
    .line 21
    const-string v0, "notice"

    .line 22
    .line 23
    invoke-virtual {p2, v0}, Lcom/transsion/usercenter/me/k;->b(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->getNoticeDeepLink()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    const/4 v0, 0x0

    .line 31
    if-eqz p2, :cond_1

    .line 32
    .line 33
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 34
    .line 35
    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    const-string v1, "toLowerCase(...)"

    .line 40
    .line 41
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move-object p2, v0

    .line 46
    :goto_0
    iget-object v1, p1, Lcom/transsion/usercenter/me/adapter/r;->e:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    const/4 v1, 0x1

    .line 53
    if-eqz p2, :cond_4

    .line 54
    .line 55
    sget-object p0, Lcom/transsion/baselib/kids/KidsAccountManager;->a:Lcom/transsion/baselib/kids/KidsAccountManager;

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/transsion/baselib/kids/KidsAccountManager;->e()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    if-eqz p0, :cond_3

    .line 62
    .line 63
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    if-nez p0, :cond_2

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    sget-object p0, Lcom/transsion/usercenter/kids/AccountSwitchDialog;->g:Lcom/transsion/usercenter/kids/AccountSwitchDialog$a;

    .line 71
    .line 72
    const/4 p2, 0x0

    .line 73
    invoke-static {p0, p2, v1, v0}, Lcom/transsion/usercenter/kids/AccountSwitchDialog$a;->b(Lcom/transsion/usercenter/kids/AccountSwitchDialog$a;ZILjava/lang/Object;)Lcom/transsion/usercenter/kids/AccountSwitchDialog;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    const-string p2, "AccountSwitchDialog"

    .line 82
    .line 83
    invoke-virtual {p0, p1, p2}, Lcom/tn/lib/dialog/BaseDialog;->X(Landroid/content/Context;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_3
    :goto_1
    sget-object v0, Lcom/transsion/usercenter/kids/CreateKidsProfileDialog;->h:Lcom/transsion/usercenter/kids/CreateKidsProfileDialog$a;

    .line 88
    .line 89
    const/4 v4, 0x7

    .line 90
    const/4 v5, 0x0

    .line 91
    const/4 v1, 0x0

    .line 92
    const/4 v2, 0x0

    .line 93
    const/4 v3, 0x0

    .line 94
    invoke-static/range {v0 .. v5}, Lcom/transsion/usercenter/kids/CreateKidsProfileDialog$a;->b(Lcom/transsion/usercenter/kids/CreateKidsProfileDialog$a;ZZZILjava/lang/Object;)Lcom/transsion/usercenter/kids/CreateKidsProfileDialog;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    const-string p2, "CreateKidsProfileDialog"

    .line 103
    .line 104
    invoke-virtual {p0, p1, p2}, Lcom/tn/lib/dialog/BaseDialog;->X(Landroid/content/Context;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->getNoticeDeepLink()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    if-eqz p0, :cond_5

    .line 113
    .line 114
    invoke-static {p0, v0, v1, v0}, Lij/k;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    :cond_5
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 118
    .line 119
    return-object p0

    .line 120
    :cond_6
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 121
    .line 122
    return-object p0
.end method

.method public static synthetic y(Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;Lcom/transsion/usercenter/me/adapter/r;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/usercenter/me/adapter/r;->A(Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;Lcom/transsion/usercenter/me/adapter/r;Landroid/view/View;)Lkotlin/Unit;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/usercenter/me/adapter/r;->z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/profile/bean/MeItemInfo;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    return v0
.end method

.method public m()I
    .locals 1

    .line 1
    sget v0, Lcom/transsion/usercenter/R$layout;->mine_item_notice_layout:I

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
    invoke-virtual {p2}, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->getNoticeEnable()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    const/16 v2, 0x8

    .line 42
    .line 43
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    sget v0, Lcom/transsion/usercenter/R$id;->titleTv:I

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Landroid/widget/TextView;

    .line 53
    .line 54
    invoke-virtual {p2}, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->getNoticeContent()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    sget v0, Lcom/transsion/usercenter/R$id;->arrowIV:I

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Landroid/widget/ImageView;

    .line 68
    .line 69
    invoke-virtual {p2}, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->getNoticeDeepLink()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    if-eqz v2, :cond_4

    .line 74
    .line 75
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-nez v2, :cond_3

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_3
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 83
    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_4
    :goto_2
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 87
    .line 88
    .line 89
    :goto_3
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 90
    .line 91
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    new-instance v6, Lcom/transsion/usercenter/me/adapter/q;

    .line 95
    .line 96
    invoke-direct {v6, p2, p0}, Lcom/transsion/usercenter/me/adapter/q;-><init>(Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;Lcom/transsion/usercenter/me/adapter/r;)V

    .line 97
    .line 98
    .line 99
    const/4 v7, 0x1

    .line 100
    const/4 v8, 0x0

    .line 101
    const-wide/16 v4, 0x0

    .line 102
    .line 103
    invoke-static/range {v3 .. v8}, Luf/c;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method
