.class public final Lqr/a0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lf4/a;


# instance fields
.field private final a:Landroid/widget/LinearLayout;

.field public final b:Lqr/d0;

.field public final c:Landroidx/recyclerview/widget/RecyclerView;

.field public final d:Lcom/transsion/shorttv/_channel/ui/widget/ShortTvPopupFilterView;

.field public final e:Landroid/view/View;

.field public final f:Landroid/view/View;

.field public final g:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lqr/d0;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/shorttv/_channel/ui/widget/ShortTvPopupFilterView;Landroid/view/View;Landroid/view/View;Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lqr/a0;->a:Landroid/widget/LinearLayout;

    .line 5
    .line 6
    iput-object p2, p0, Lqr/a0;->b:Lqr/d0;

    .line 7
    .line 8
    iput-object p3, p0, Lqr/a0;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    .line 10
    iput-object p4, p0, Lqr/a0;->d:Lcom/transsion/shorttv/_channel/ui/widget/ShortTvPopupFilterView;

    .line 11
    .line 12
    iput-object p5, p0, Lqr/a0;->e:Landroid/view/View;

    .line 13
    .line 14
    iput-object p6, p0, Lqr/a0;->f:Landroid/view/View;

    .line 15
    .line 16
    iput-object p7, p0, Lqr/a0;->g:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 17
    .line 18
    return-void
.end method

.method public static a(Landroid/view/View;)Lqr/a0;
    .locals 10

    .line 1
    sget v0, Lcom/transsion/shorttv/R$id;->ll_tab_movie:I

    .line 2
    .line 3
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-static {v1}, Lqr/d0;->a(Landroid/view/View;)Lqr/d0;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    sget v0, Lcom/transsion/shorttv/R$id;->movie_list:I

    .line 14
    .line 15
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    move-object v5, v1

    .line 20
    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    .line 21
    .line 22
    if-eqz v5, :cond_0

    .line 23
    .line 24
    sget v0, Lcom/transsion/shorttv/R$id;->popup_filter_view:I

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
    check-cast v6, Lcom/transsion/shorttv/_channel/ui/widget/ShortTvPopupFilterView;

    .line 32
    .line 33
    if-eqz v6, :cond_0

    .line 34
    .line 35
    sget v0, Lcom/transsion/shorttv/R$id;->popup_filter_view_linear:I

    .line 36
    .line 37
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    if-eqz v7, :cond_0

    .line 42
    .line 43
    sget v0, Lcom/transsion/shorttv/R$id;->sub_movie_header_bg:I

    .line 44
    .line 45
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    if-eqz v8, :cond_0

    .line 50
    .line 51
    sget v0, Lcom/transsion/shorttv/R$id;->swipe_refresh:I

    .line 52
    .line 53
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    move-object v9, v1

    .line 58
    check-cast v9, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 59
    .line 60
    if-eqz v9, :cond_0

    .line 61
    .line 62
    new-instance v0, Lqr/a0;

    .line 63
    .line 64
    move-object v3, p0

    .line 65
    check-cast v3, Landroid/widget/LinearLayout;

    .line 66
    .line 67
    move-object v2, v0

    .line 68
    invoke-direct/range {v2 .. v9}, Lqr/a0;-><init>(Landroid/widget/LinearLayout;Lqr/d0;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/shorttv/_channel/ui/widget/ShortTvPopupFilterView;Landroid/view/View;Landroid/view/View;Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    .line 69
    .line 70
    .line 71
    return-object v0

    .line 72
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    new-instance v0, Ljava/lang/NullPointerException;

    .line 81
    .line 82
    const-string v1, "Missing required view with ID: "

    .line 83
    .line 84
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw v0
.end method

.method public static c(Landroid/view/LayoutInflater;)Lqr/a0;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p0, v0, v1}, Lqr/a0;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lqr/a0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lqr/a0;
    .locals 2

    .line 1
    sget v0, Lcom/transsion/shorttv/R$layout;->short_tv_fragment_movie:I

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
    invoke-static {p0}, Lqr/a0;->a(Landroid/view/View;)Lqr/a0;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method


# virtual methods
.method public b()Landroid/widget/LinearLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lqr/a0;->a:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lqr/a0;->b()Landroid/widget/LinearLayout;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
