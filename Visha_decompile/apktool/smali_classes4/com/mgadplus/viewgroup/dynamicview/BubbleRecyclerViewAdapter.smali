.class public Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$a;,
        Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;",
        ">;"
    }
.end annotation


# instance fields
.field public o:Ljava/util/List;

.field public p:Landroid/content/Context;

.field public q:Z

.field public r:Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;->p:Landroid/content/Context;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;->o:Ljava/util/List;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;->q:Z

    return-void
.end method

.method public static synthetic d(Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;->o:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic k(Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;->q:Z

    return p1
.end method

.method public static synthetic l(Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;)Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$a;
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;->r:Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$a;

    return-object p0
.end method

.method public static synthetic r(Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;->q:Z

    return p0
.end method

.method public static synthetic s(Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;->p:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public c(Landroid/view/ViewGroup;I)Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;->p:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/mgmi/R$layout;->mgmi_bubble_corner_item:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;

    invoke-direct {p2, p0, p1}, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;-><init>(Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;Landroid/view/View;)V

    return-object p2

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;->p:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/mgmi/R$layout;->mgmi_image_bubble_corner_item:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;

    invoke-direct {p2, p0, p1}, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;-><init>(Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;Landroid/view/View;)V

    return-object p2

    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;->p:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/mgmi/R$layout;->mgmi_option_bubble_item:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;

    invoke-direct {p2, p0, p1}, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;-><init>(Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;Landroid/view/View;)V

    return-object p2

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public g(Ll2d;)V
    .locals 1

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;->o:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;->r:Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$a;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;->o:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-interface {p1, p0}, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$a;->onAddItem(I)V

    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;->o:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getItemViewType(I)I
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;->o:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll2d;

    invoke-virtual {p0}, Ll2d;->i()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public h(Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;->r:Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$a;

    return-void
.end method

.method public i(Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public j(Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;I)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;->b(I)V

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;->r:Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$a;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;->o:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;->o:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ne p2, p1, :cond_0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;->r:Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$a;

    invoke-interface {p0}, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$a;->onBindComplete()V

    :cond_0
    return-void
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;

    invoke-virtual {p0, p1, p2}, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;->j(Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;->c(Landroid/view/ViewGroup;I)Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;

    move-result-object p0

    return-object p0
.end method

.method public synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    check-cast p1, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;

    invoke-virtual {p0, p1}, Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter;->i(Lcom/mgadplus/viewgroup/dynamicview/BubbleRecyclerViewAdapter$b;)V

    return-void
.end method
