.class public Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$b;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;


# direct methods
.method public constructor <init>(Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$b;->a:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$b;->a:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    invoke-static {p0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->a(Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;)Ld8;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$b;->a:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->getHeaderCount()I

    move-result v0

    add-int/2addr p1, v0

    .line 2
    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$b;->a:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    invoke-static {p0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->a(Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;)Ld8;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$b;->a:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->getHeaderCount()I

    move-result v0

    add-int/2addr p1, v0

    .line 4
    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$b;->a:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    invoke-static {p0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->a(Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;)Ld8;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 1

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$b;->a:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->getHeaderCount()I

    move-result v0

    add-int/2addr p1, v0

    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$b;->a:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    invoke-static {p0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->a(Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;)Ld8;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 0

    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$b;->a:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    invoke-virtual {p3}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->getHeaderCount()I

    move-result p3

    add-int/2addr p1, p3

    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$b;->a:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    invoke-virtual {p3}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->getHeaderCount()I

    move-result p3

    add-int/2addr p2, p3

    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$b;->a:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    invoke-static {p0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->a(Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;)Ld8;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 1

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$b;->a:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->getHeaderCount()I

    move-result v0

    add-int/2addr p1, v0

    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$b;->a:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    invoke-static {p0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->a(Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;)Ld8;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    return-void
.end method
