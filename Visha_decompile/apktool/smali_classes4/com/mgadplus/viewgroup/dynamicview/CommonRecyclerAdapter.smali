.class public abstract Lcom/mgadplus/viewgroup/dynamicview/CommonRecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/mgadplus/viewgroup/dynamicview/c;",
        ">;"
    }
.end annotation


# instance fields
.field public o:Landroid/view/LayoutInflater;

.field public p:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonRecyclerAdapter;->p:Ljava/util/List;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonRecyclerAdapter;->o:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public A(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public B()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public C(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public D()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public b(I)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method public b()V
    .locals 0

    .line 2
    return-void
.end method

.method public getItemCount()I
    .locals 2

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/CommonRecyclerAdapter;->z()I

    move-result v0

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/CommonRecyclerAdapter;->B()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/CommonRecyclerAdapter;->D()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getItemViewType(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/CommonRecyclerAdapter;->B()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/mgadplus/viewgroup/dynamicview/CommonRecyclerAdapter;->A(I)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/CommonRecyclerAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/CommonRecyclerAdapter;->D()I

    move-result v1

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/mgadplus/viewgroup/dynamicview/CommonRecyclerAdapter;->C(I)I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/CommonRecyclerAdapter;->B()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/mgadplus/viewgroup/dynamicview/CommonRecyclerAdapter;->b(I)I

    move-result p0

    return p0
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/mgadplus/viewgroup/dynamicview/c;

    invoke-virtual {p0, p1, p2}, Lcom/mgadplus/viewgroup/dynamicview/CommonRecyclerAdapter;->u(Lcom/mgadplus/viewgroup/dynamicview/c;I)V

    return-void
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/mgadplus/viewgroup/dynamicview/c;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mgadplus/viewgroup/dynamicview/CommonRecyclerAdapter;->y(Lcom/mgadplus/viewgroup/dynamicview/c;ILjava/util/List;)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/mgadplus/viewgroup/dynamicview/CommonRecyclerAdapter;->s(Landroid/view/ViewGroup;I)Lcom/mgadplus/viewgroup/dynamicview/c;

    move-result-object p0

    return-object p0
.end method

.method public abstract r(I)I
.end method

.method public s(Landroid/view/ViewGroup;I)Lcom/mgadplus/viewgroup/dynamicview/c;
    .locals 1

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonRecyclerAdapter;->o:Landroid/view/LayoutInflater;

    invoke-virtual {p0, p2}, Lcom/mgadplus/viewgroup/dynamicview/CommonRecyclerAdapter;->r(I)I

    move-result p0

    const/4 p2, 0x0

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/mgadplus/viewgroup/dynamicview/c;

    invoke-direct {p1, p0}, Lcom/mgadplus/viewgroup/dynamicview/c;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public t()V
    .locals 0

    return-void
.end method

.method public u(Lcom/mgadplus/viewgroup/dynamicview/c;I)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/mgadplus/viewgroup/dynamicview/CommonRecyclerAdapter;->y(Lcom/mgadplus/viewgroup/dynamicview/c;ILjava/util/List;)V

    return-void
.end method

.method public v(Lcom/mgadplus/viewgroup/dynamicview/c;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public w(Lcom/mgadplus/viewgroup/dynamicview/c;ILjava/lang/Object;Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public x(Lcom/mgadplus/viewgroup/dynamicview/c;ILjava/util/List;)V
    .locals 0

    return-void
.end method

.method public y(Lcom/mgadplus/viewgroup/dynamicview/c;ILjava/util/List;)V
    .locals 2

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/CommonRecyclerAdapter;->B()I

    move-result v0

    if-ge p2, v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/mgadplus/viewgroup/dynamicview/CommonRecyclerAdapter;->x(Lcom/mgadplus/viewgroup/dynamicview/c;ILjava/util/List;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/CommonRecyclerAdapter;->B()I

    move-result v0

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/CommonRecyclerAdapter;->z()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/CommonRecyclerAdapter;->B()I

    move-result v0

    sub-int v0, p2, v0

    iget-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonRecyclerAdapter;->p:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/mgadplus/viewgroup/dynamicview/CommonRecyclerAdapter;->v(Lcom/mgadplus/viewgroup/dynamicview/c;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonRecyclerAdapter;->p:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/mgadplus/viewgroup/dynamicview/CommonRecyclerAdapter;->w(Lcom/mgadplus/viewgroup/dynamicview/c;ILjava/lang/Object;Ljava/util/List;)V

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/CommonRecyclerAdapter;->b()V

    :cond_2
    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/CommonRecyclerAdapter;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/CommonRecyclerAdapter;->D()I

    move-result p3

    sub-int/2addr p1, p3

    if-ne p2, p1, :cond_3

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/CommonRecyclerAdapter;->t()V

    :cond_3
    return-void
.end method

.method public z()I
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonRecyclerAdapter;->p:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method
