.class public final Lqk/x;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lf4/a;


# instance fields
.field private final a:Landroid/widget/FrameLayout;

.field public final b:Lcom/transsion/wrapperad/view/BiddingFloatingIrregularView;

.field public final c:Lqk/h0;

.field public final d:Landroidx/recyclerview/widget/RecyclerView;

.field public final e:Lcom/transsion/wrapperad/view/secondfloor/CustomSwipeRefreshLayout;

.field public final f:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Lcom/transsion/wrapperad/view/BiddingFloatingIrregularView;Lqk/h0;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/wrapperad/view/secondfloor/CustomSwipeRefreshLayout;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lqk/x;->a:Landroid/widget/FrameLayout;

    .line 5
    .line 6
    iput-object p2, p0, Lqk/x;->b:Lcom/transsion/wrapperad/view/BiddingFloatingIrregularView;

    .line 7
    .line 8
    iput-object p3, p0, Lqk/x;->c:Lqk/h0;

    .line 9
    .line 10
    iput-object p4, p0, Lqk/x;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 11
    .line 12
    iput-object p5, p0, Lqk/x;->e:Lcom/transsion/wrapperad/view/secondfloor/CustomSwipeRefreshLayout;

    .line 13
    .line 14
    iput-object p6, p0, Lqk/x;->f:Landroid/view/View;

    .line 15
    .line 16
    return-void
.end method

.method public static a(Landroid/view/View;)Lqk/x;
    .locals 9

    .line 1
    sget v0, Lcom/transsion/home/R$id;->floatingIrregularView:I

    .line 2
    .line 3
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    move-object v4, v1

    .line 8
    check-cast v4, Lcom/transsion/wrapperad/view/BiddingFloatingIrregularView;

    .line 9
    .line 10
    if-eqz v4, :cond_0

    .line 11
    .line 12
    sget v0, Lcom/transsion/home/R$id;->loading_bg:I

    .line 13
    .line 14
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-static {v1}, Lqk/h0;->a(Landroid/view/View;)Lqk/h0;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    sget v0, Lcom/transsion/home/R$id;->recycleView:I

    .line 25
    .line 26
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    move-object v6, v1

    .line 31
    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    .line 32
    .line 33
    if-eqz v6, :cond_0

    .line 34
    .line 35
    sget v0, Lcom/transsion/home/R$id;->swipe_refresh:I

    .line 36
    .line 37
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    move-object v7, v1

    .line 42
    check-cast v7, Lcom/transsion/wrapperad/view/secondfloor/CustomSwipeRefreshLayout;

    .line 43
    .line 44
    if-eqz v7, :cond_0

    .line 45
    .line 46
    sget v0, Lcom/transsion/home/R$id;->trending_header_bg:I

    .line 47
    .line 48
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    if-eqz v8, :cond_0

    .line 53
    .line 54
    new-instance v0, Lqk/x;

    .line 55
    .line 56
    move-object v3, p0

    .line 57
    check-cast v3, Landroid/widget/FrameLayout;

    .line 58
    .line 59
    move-object v2, v0

    .line 60
    invoke-direct/range {v2 .. v8}, Lqk/x;-><init>(Landroid/widget/FrameLayout;Lcom/transsion/wrapperad/view/BiddingFloatingIrregularView;Lqk/h0;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/wrapperad/view/secondfloor/CustomSwipeRefreshLayout;Landroid/view/View;)V

    .line 61
    .line 62
    .line 63
    return-object v0

    .line 64
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    new-instance v0, Ljava/lang/NullPointerException;

    .line 73
    .line 74
    const-string v1, "Missing required view with ID: "

    .line 75
    .line 76
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw v0
.end method

.method public static c(Landroid/view/LayoutInflater;)Lqk/x;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p0, v0, v1}, Lqk/x;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lqk/x;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lqk/x;
    .locals 2

    .line 1
    sget v0, Lcom/transsion/home/R$layout;->fragment_trending:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-static {p0}, Lqk/x;->a(Landroid/view/View;)Lqk/x;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method


# virtual methods
.method public b()Landroid/widget/FrameLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lqk/x;->a:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lqk/x;->b()Landroid/widget/FrameLayout;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
