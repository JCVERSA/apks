.class public final Lcom/transsion/room/widget/TrendingRoomsView;
.super Lcom/transsion/room/widget/RoomsBaseView;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/room/widget/RoomsBaseView<",
        "Lfp/i0;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0011\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0011\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/transsion/room/widget/TrendingRoomsView;",
        "Lcom/transsion/room/widget/RoomsBaseView;",
        "Lfp/i0;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "",
        "initRecyclerView",
        "()V",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "getRecyclerView",
        "()Landroidx/recyclerview/widget/RecyclerView;",
        "Landroidx/appcompat/widget/AppCompatTextView;",
        "getTitleView",
        "()Landroidx/appcompat/widget/AppCompatTextView;",
        "Room_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/transsion/room/widget/TrendingRoomsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/transsion/room/widget/TrendingRoomsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/room/widget/RoomsBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    sget p2, Lcom/transsion/room/R$layout;->view_trending_rooms:I

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 6
    invoke-static {p0}, Lfp/i0;->a(Landroid/view/View;)Lfp/i0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/room/widget/RoomsBaseView;->setMViewBinding(Lf4/a;)V

    .line 7
    invoke-virtual {p0}, Lcom/transsion/room/widget/TrendingRoomsView;->initRecyclerView()V

    .line 8
    invoke-virtual {p0}, Lcom/transsion/room/widget/RoomsBaseView;->getMAdapter()Lcom/transsion/room/adapter/RecommendRoomsAdapter;

    move-result-object p1

    sget-object p2, Lcom/transsion/room/api/RoomsViewType;->TYPE_TRENDING:Lcom/transsion/room/api/RoomsViewType;

    invoke-virtual {p1, p2}, Lcom/transsion/room/adapter/RecommendRoomsAdapter;->G1(Lcom/transsion/room/api/RoomsViewType;)V

    .line 9
    invoke-virtual {p0}, Lcom/transsion/room/widget/RoomsBaseView;->getMViewBinding()Lf4/a;

    move-result-object p1

    check-cast p1, Lfp/i0;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lfp/i0;->b:Landroid/view/View;

    if-eqz p1, :cond_0

    new-instance p2, Lcom/transsion/room/widget/t;

    invoke-direct {p2, p0}, Lcom/transsion/room/widget/t;-><init>(Lcom/transsion/room/widget/TrendingRoomsView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/room/widget/RoomsBaseView;->getMViewBinding()Lf4/a;

    move-result-object p1

    check-cast p1, Lfp/i0;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lfp/i0;->e:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_1

    new-instance p2, Lcom/transsion/room/widget/u;

    invoke-direct {p2, p0}, Lcom/transsion/room/widget/u;-><init>(Lcom/transsion/room/widget/TrendingRoomsView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/room/widget/TrendingRoomsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic D(Lcom/transsion/room/widget/TrendingRoomsView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/room/widget/TrendingRoomsView;->G(Lcom/transsion/room/widget/TrendingRoomsView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic E(Lcom/transsion/room/widget/TrendingRoomsView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/room/widget/TrendingRoomsView;->F(Lcom/transsion/room/widget/TrendingRoomsView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final F(Lcom/transsion/room/widget/TrendingRoomsView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/room/widget/RoomsBaseView;->A()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final G(Lcom/transsion/room/widget/TrendingRoomsView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/room/widget/RoomsBaseView;->B()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/room/widget/RoomsBaseView;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lfp/i0;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lfp/i0;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return-object v0
.end method

.method public bridge synthetic getTitleView()Landroid/widget/TextView;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/room/widget/TrendingRoomsView;->getTitleView()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    return-object v0
.end method

.method public getTitleView()Landroidx/appcompat/widget/AppCompatTextView;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/transsion/room/widget/RoomsBaseView;->getMViewBinding()Lf4/a;

    move-result-object v0

    check-cast v0, Lfp/i0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lfp/i0;->f:Landroidx/appcompat/widget/AppCompatTextView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public initRecyclerView()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/transsion/room/widget/RoomsBaseView;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lfp/i0;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lfp/i0;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v1, Lcom/tn/lib/view/layoutmanager/NpaGridLayoutManager;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/4 v3, 0x3

    .line 20
    const/4 v4, 0x1

    .line 21
    const/4 v5, 0x0

    .line 22
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/tn/lib/view/layoutmanager/NpaGridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Ltf/a;

    .line 29
    .line 30
    const/16 v2, 0x8

    .line 31
    .line 32
    invoke-static {v2}, Llj/a;->b(I)I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    invoke-static {v2}, Llj/a;->b(I)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-direct {v1, v3, v2, v5, v5}, Ltf/a;-><init>(IIII)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/transsion/room/widget/RoomsBaseView;->getMAdapter()Lcom/transsion/room/adapter/RecommendRoomsAdapter;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    return-void
.end method
