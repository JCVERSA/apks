.class public abstract Lcom/yanzhenjie/recyclerview/ExpandableAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "TVH;>;"
    }
.end annotation


# instance fields
.field public final o:Landroid/util/SparseBooleanArray;

.field public final p:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->o:Landroid/util/SparseBooleanArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->p:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final A(Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;ILjava/util/List;)V
    .locals 2

    invoke-virtual {p0, p2}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->E(I)I

    move-result v0

    invoke-virtual {p0, p2}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->y(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, v0, p3}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->g(Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;ILjava/util/List;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->t(I)I

    move-result p2

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->c(Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;IILjava/util/List;)V

    :goto_0
    return-void
.end method

.method public final B(Landroid/view/ViewGroup;I)Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;
    .locals 2

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->p:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->w(Landroid/view/ViewGroup;I)Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->v(Landroid/view/ViewGroup;I)Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public C(Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;)V
    .locals 1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->y(I)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    if-eqz p1, :cond_0

    check-cast p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    :cond_0
    return-void
.end method

.method public abstract D()I
.end method

.method public final E(I)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->D()I

    move-result v2

    if-ge v0, v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->x(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->s(I)I

    move-result v2

    add-int/2addr v1, v2

    :cond_0
    if-ge p1, v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The adapter position is not a parent type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public F(I)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public abstract b(Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;II)V
.end method

.method public c(Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;IILjava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->b(Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;II)V

    return-void
.end method

.method public abstract d(Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;I)V
.end method

.method public g(Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;ILjava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->d(Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;I)V

    return-void
.end method

.method public final getItemCount()I
    .locals 3

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->D()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->x(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->s(I)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final getItemViewType(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->E(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->y(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->F(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->r(I)V

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->p:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->p:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return p1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->t(I)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->u(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->r(I)V

    return p1
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v0

    new-instance v1, Lcom/yanzhenjie/recyclerview/ExpandableAdapter$a;

    invoke-direct {v1, p0, p1, v0}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter$a;-><init>(Lcom/yanzhenjie/recyclerview/ExpandableAdapter;Landroidx/recyclerview/widget/GridLayoutManager;Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->z(Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->A(Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->B(Landroid/view/ViewGroup;I)Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    check-cast p1, Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->C(Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;)V

    return-void
.end method

.method public final r(I)V
    .locals 1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    return-void

    :cond_0
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The value [%d] is reserved, please replace it with other values."

    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract s(I)I
.end method

.method public final t(I)I
    .locals 4

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->D()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->x(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->s(I)I

    move-result v3

    add-int/2addr v2, v3

    if-ge p1, v2, :cond_0

    sub-int/2addr v2, p1

    sub-int/2addr v3, v2

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The adapter position is invalid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public u(II)I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public abstract v(Landroid/view/ViewGroup;I)Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;
.end method

.method public abstract w(Landroid/view/ViewGroup;I)Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;
.end method

.method public final x(I)Z
    .locals 1

    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->o:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    return p0
.end method

.method public final y(I)Z
    .locals 5

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->D()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v2}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->x(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v2}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->s(I)I

    move-result v4

    add-int/2addr v3, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final z(Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;I)V
    .locals 0

    return-void
.end method
