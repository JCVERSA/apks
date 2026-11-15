.class public Lcom/mgtv/ssp/widget/LoadMoreRecycleView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/ssp/widget/LoadMoreRecycleView$a;,
        Lcom/mgtv/ssp/widget/LoadMoreRecycleView$b;,
        Lcom/mgtv/ssp/widget/LoadMoreRecycleView$c;
    }
.end annotation


# instance fields
.field private a:Lcom/mgtv/ssp/widget/LoadMoreRecycleView$c;

.field private b:Lcom/mgtv/ssp/widget/LoadMoreRecycleView$b;

.field private c:Z

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/mgtv/ssp/widget/LoadMoreRecycleView;->c:Z

    const/4 p1, 0x4

    .line 3
    iput p1, p0, Lcom/mgtv/ssp/widget/LoadMoreRecycleView;->d:I

    .line 4
    new-instance p1, Lcom/mgtv/ssp/widget/LoadMoreRecycleView$a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/mgtv/ssp/widget/LoadMoreRecycleView$a;-><init>(Lcom/mgtv/ssp/widget/LoadMoreRecycleView;Lcom/mgtv/ssp/widget/LoadMoreRecycleView$1;)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/mgtv/ssp/widget/LoadMoreRecycleView;->c:Z

    const/4 p1, 0x4

    .line 7
    iput p1, p0, Lcom/mgtv/ssp/widget/LoadMoreRecycleView;->d:I

    .line 8
    new-instance p1, Lcom/mgtv/ssp/widget/LoadMoreRecycleView$a;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/mgtv/ssp/widget/LoadMoreRecycleView$a;-><init>(Lcom/mgtv/ssp/widget/LoadMoreRecycleView;Lcom/mgtv/ssp/widget/LoadMoreRecycleView$1;)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/ssp/widget/LoadMoreRecycleView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mgtv/ssp/widget/LoadMoreRecycleView;->c:Z

    return p0
.end method

.method public static synthetic b(Lcom/mgtv/ssp/widget/LoadMoreRecycleView;)Lcom/mgtv/ssp/widget/LoadMoreRecycleView$c;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/widget/LoadMoreRecycleView;->a:Lcom/mgtv/ssp/widget/LoadMoreRecycleView$c;

    return-object p0
.end method

.method public static synthetic c(Lcom/mgtv/ssp/widget/LoadMoreRecycleView;)I
    .locals 0

    iget p0, p0, Lcom/mgtv/ssp/widget/LoadMoreRecycleView;->d:I

    return p0
.end method

.method public static synthetic d(Lcom/mgtv/ssp/widget/LoadMoreRecycleView;)Lcom/mgtv/ssp/widget/LoadMoreRecycleView$b;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/widget/LoadMoreRecycleView;->b:Lcom/mgtv/ssp/widget/LoadMoreRecycleView$b;

    return-object p0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 4
    iput p1, p0, Lcom/mgtv/ssp/widget/LoadMoreRecycleView;->d:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    .line 5
    :goto_0
    iput v0, p0, Lcom/mgtv/ssp/widget/LoadMoreRecycleView;->d:I

    return-void
.end method

.method public a(Lcom/mgtv/ssp/widget/LoadMoreRecycleView$c;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mgtv/ssp/widget/LoadMoreRecycleView;->a:Lcom/mgtv/ssp/widget/LoadMoreRecycleView$c;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/mgtv/ssp/widget/LoadMoreRecycleView;->c:Z

    return-void
.end method
