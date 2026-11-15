.class public final Lcom/transsion/commercialization/aha/adapter/f;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "source.java"


# instance fields
.field private final e:Lrj/a;

.field private final f:I


# direct methods
.method public constructor <init>(Lrj/a;)V
    .locals 1

    .line 1
    const-string v0, "gameDotHelper"

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
    iput-object p1, p0, Lcom/transsion/commercialization/aha/adapter/f;->e:Lrj/a;

    .line 10
    .line 11
    sget-object p1, Lcom/transsion/bean/GameLayoutType;->PEOPLE_PLAYING:Lcom/transsion/bean/GameLayoutType;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iput p1, p0, Lcom/transsion/commercialization/aha/adapter/f;->f:I

    .line 18
    .line 19
    return-void
.end method

.method private static final A(Lcom/transsion/commercialization/aha/adapter/d;Lcom/transsion/commercialization/aha/adapter/f;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    .line 1
    const-string v0, "adapter"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "view"

    .line 7
    .line 8
    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast p2, Lcom/transsion/bean/AhaGameAllGames;

    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/transsion/bean/AhaGameAllGames;->getLink()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    const-string v0, "/web/web"

    .line 24
    .line 25
    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "url"

    .line 30
    .line 31
    invoke-virtual {v0, v1, p2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    const-string v0, "page_from"

    .line 36
    .line 37
    const-string v1, "game_center"

    .line 38
    .line 39
    invoke-virtual {p2, v0, v1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    const/4 v0, 0x2

    .line 48
    const/4 v1, 0x0

    .line 49
    invoke-static {p2, p3, v1, v0, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    invoke-virtual {p0, p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    check-cast p0, Lcom/transsion/bean/AhaGameAllGames;

    .line 57
    .line 58
    iget-object p1, p1, Lcom/transsion/commercialization/aha/adapter/f;->e:Lrj/a;

    .line 59
    .line 60
    sget-object p2, Lcom/transsion/bean/GameLayoutType;->PEOPLE_PLAYING:Lcom/transsion/bean/GameLayoutType;

    .line 61
    .line 62
    invoke-virtual {p1, p0, p4, p2}, Lrj/a;->b(Lcom/transsion/bean/AhaGameAllGames;ILcom/transsion/bean/GameLayoutType;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public static synthetic y(Lcom/transsion/commercialization/aha/adapter/d;Lcom/transsion/commercialization/aha/adapter/f;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/commercialization/aha/adapter/f;->A(Lcom/transsion/commercialization/aha/adapter/d;Lcom/transsion/commercialization/aha/adapter/f;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/bean/AhaGameAllGames;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/commercialization/aha/adapter/f;->z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/bean/AhaGameAllGames;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/commercialization/aha/adapter/f;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public m()I
    .locals 1

    .line 1
    sget v0, Lcom/transsion/commercialization/R$layout;->item_people_playing:I

    .line 2
    .line 3
    return v0
.end method

.method public z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/bean/AhaGameAllGames;)V
    .locals 5

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
    invoke-virtual {p2}, Lcom/transsion/bean/AhaGameAllGames;->getPeoplePlaying()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    if-eqz p2, :cond_2

    .line 16
    .line 17
    sget v0, Lcom/transsion/commercialization/R$id;->people_playing_recycler_view:I

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 24
    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    new-instance v0, Lcom/tn/lib/view/layoutmanager/NpaGridLayoutManager;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const/4 v2, 0x4

    .line 34
    invoke-direct {v0, v1, v2}, Lcom/tn/lib/view/layoutmanager/NpaGridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const/4 v1, 0x0

    .line 45
    if-gtz v0, :cond_0

    .line 46
    .line 47
    new-instance v0, Ltf/b;

    .line 48
    .line 49
    const/high16 v3, 0x40800000    # 4.0f

    .line 50
    .line 51
    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    invoke-direct {v0, v4, v3, v1, v1}, Ltf/b;-><init>(IIII)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 63
    .line 64
    .line 65
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-lt v0, v2, :cond_1

    .line 70
    .line 71
    invoke-interface {p2, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    :cond_1
    new-instance v0, Lcom/transsion/commercialization/aha/adapter/d;

    .line 76
    .line 77
    invoke-direct {v0, p2}, Lcom/transsion/commercialization/aha/adapter/d;-><init>(Ljava/util/List;)V

    .line 78
    .line 79
    .line 80
    new-instance p2, Lcom/transsion/commercialization/aha/adapter/e;

    .line 81
    .line 82
    invoke-direct {p2, v0, p0}, Lcom/transsion/commercialization/aha/adapter/e;-><init>(Lcom/transsion/commercialization/aha/adapter/d;Lcom/transsion/commercialization/aha/adapter/f;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lr6/d;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 89
    .line 90
    .line 91
    :cond_2
    return-void
.end method
