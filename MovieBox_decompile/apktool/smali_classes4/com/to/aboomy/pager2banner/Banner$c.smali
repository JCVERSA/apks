.class Lcom/to/aboomy/pager2banner/Banner$c;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/to/aboomy/pager2banner/Banner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field final synthetic b:Lcom/to/aboomy/pager2banner/Banner;


# direct methods
.method private constructor <init>(Lcom/to/aboomy/pager2banner/Banner;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/to/aboomy/pager2banner/Banner$c;->b:Lcom/to/aboomy/pager2banner/Banner;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/to/aboomy/pager2banner/Banner;Lcom/to/aboomy/pager2banner/Banner$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/to/aboomy/pager2banner/Banner$c;-><init>(Lcom/to/aboomy/pager2banner/Banner;)V

    return-void
.end method

.method static synthetic g(Lcom/to/aboomy/pager2banner/Banner$c;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/to/aboomy/pager2banner/Banner$c;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/to/aboomy/pager2banner/Banner$c;->h()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-le v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/to/aboomy/pager2banner/Banner$c;->h()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Lcom/to/aboomy/pager2banner/Banner$c;->b:Lcom/to/aboomy/pager2banner/Banner;

    .line 13
    .line 14
    invoke-static {v1}, Lcom/to/aboomy/pager2banner/Banner;->c(Lcom/to/aboomy/pager2banner/Banner;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    add-int/2addr v0, v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/to/aboomy/pager2banner/Banner$c;->h()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    :goto_0
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$c;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/to/aboomy/pager2banner/Banner$c;->b:Lcom/to/aboomy/pager2banner/Banner;

    .line 4
    .line 5
    invoke-static {v1, p1}, Lcom/to/aboomy/pager2banner/Banner;->q(Lcom/to/aboomy/pager2banner/Banner;I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$c;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/to/aboomy/pager2banner/Banner$c;->b:Lcom/to/aboomy/pager2banner/Banner;

    .line 4
    .line 5
    invoke-static {v1, p1}, Lcom/to/aboomy/pager2banner/Banner;->q(Lcom/to/aboomy/pager2banner/Banner;I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method h()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$c;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    :goto_0
    return v0
.end method

.method i(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$c;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/to/aboomy/pager2banner/Banner$c;->b:Lcom/to/aboomy/pager2banner/Banner;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/to/aboomy/pager2banner/Banner;->d(Lcom/to/aboomy/pager2banner/Banner;)Landroidx/recyclerview/widget/RecyclerView$g;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iput-object p1, p0, Lcom/to/aboomy/pager2banner/Banner$c;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$c;->b:Lcom/to/aboomy/pager2banner/Banner;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/to/aboomy/pager2banner/Banner;->d(Lcom/to/aboomy/pager2banner/Banner;)Landroidx/recyclerview/widget/RecyclerView$g;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$a0;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$c;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/to/aboomy/pager2banner/Banner$c;->b:Lcom/to/aboomy/pager2banner/Banner;

    .line 4
    .line 5
    invoke-static {v1, p2}, Lcom/to/aboomy/pager2banner/Banner;->q(Lcom/to/aboomy/pager2banner/Banner;I)I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$a0;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$a0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$c;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$a0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
