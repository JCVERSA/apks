.class public abstract Lcom/cloud/tmc/miniapp/base/BaseAdapter$BaseViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$a0;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/base/BaseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "BaseViewHolder"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/base/BaseAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cloud/tmc/miniapp/base/BaseAdapter<",
            "TVH;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/base/BaseAdapter;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 11
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->access$getRecyclerView$p(Lcom/cloud/tmc/miniapp/base/BaseAdapter;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const-string v0, "from(getContext()).infla\u2026(id, recyclerView, false)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/miniapp/base/BaseAdapter$BaseViewHolder;-><init>(Lcom/cloud/tmc/miniapp/base/BaseAdapter;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/cloud/tmc/miniapp/base/BaseAdapter;Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/BaseAdapter$BaseViewHolder;->this$0:Lcom/cloud/tmc/miniapp/base/BaseAdapter;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$a0;-><init>(Landroid/view/View;)V

    .line 3
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->access$getItemClickListener$p(Lcom/cloud/tmc/miniapp/base/BaseAdapter;)Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->access$getItemLongClickListener$p(Lcom/cloud/tmc/miniapp/base/BaseAdapter;)Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnItemLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 7
    :cond_1
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->access$getChildClickListeners(Lcom/cloud/tmc/miniapp/base/BaseAdapter;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    if-ge v0, p1, :cond_3

    .line 8
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/BaseAdapter$BaseViewHolder;->this$0:Lcom/cloud/tmc/miniapp/base/BaseAdapter;

    invoke-static {v1}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->access$getChildClickListeners(Lcom/cloud/tmc/miniapp/base/BaseAdapter;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/base/BaseAdapter$BaseViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/BaseAdapter$BaseViewHolder;->this$0:Lcom/cloud/tmc/miniapp/base/BaseAdapter;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->access$getChildLongClickListeners(Lcom/cloud/tmc/miniapp/base/BaseAdapter;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    :goto_1
    if-ge p2, p1, :cond_5

    .line 10
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/BaseAdapter$BaseViewHolder;->this$0:Lcom/cloud/tmc/miniapp/base/BaseAdapter;

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->access$getChildLongClickListeners(Lcom/cloud/tmc/miniapp/base/BaseAdapter;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/BaseAdapter$BaseViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(I)TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseAdapter$BaseViewHolder;->getItemView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getItemView()Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 2
    .line 3
    const-string v1, "itemView"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public getViewHolderPosition()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$a0;->getLayoutPosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/BaseAdapter$BaseViewHolder;->this$0:Lcom/cloud/tmc/miniapp/base/BaseAdapter;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->access$getPositionOffset$p(Lcom/cloud/tmc/miniapp/base/BaseAdapter;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/2addr v1, v0

    .line 12
    return v1
.end method

.method public abstract onBindView(I)V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseAdapter$BaseViewHolder;->getViewHolderPosition()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-ltz v0, :cond_3

    .line 11
    .line 12
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/BaseAdapter$BaseViewHolder;->this$0:Lcom/cloud/tmc/miniapp/base/BaseAdapter;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-lt v0, v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseAdapter$BaseViewHolder;->getItemView()Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-ne p1, v1, :cond_2

    .line 26
    .line 27
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/BaseAdapter$BaseViewHolder;->this$0:Lcom/cloud/tmc/miniapp/base/BaseAdapter;

    .line 28
    .line 29
    invoke-static {v1}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->access$getItemClickListener$p(Lcom/cloud/tmc/miniapp/base/BaseAdapter;)Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnItemClickListener;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/BaseAdapter$BaseViewHolder;->this$0:Lcom/cloud/tmc/miniapp/base/BaseAdapter;

    .line 36
    .line 37
    invoke-static {v2}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->access$getRecyclerView$p(Lcom/cloud/tmc/miniapp/base/BaseAdapter;)Landroidx/recyclerview/widget/RecyclerView;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-interface {v1, v2, p1, v0}, Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnItemClickListener;->onItemClick(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;I)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void

    .line 45
    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/BaseAdapter$BaseViewHolder;->this$0:Lcom/cloud/tmc/miniapp/base/BaseAdapter;

    .line 46
    .line 47
    invoke-static {v1}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->access$getChildClickListeners(Lcom/cloud/tmc/miniapp/base/BaseAdapter;)Landroid/util/SparseArray;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnChildClickListener;

    .line 60
    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/BaseAdapter$BaseViewHolder;->this$0:Lcom/cloud/tmc/miniapp/base/BaseAdapter;

    .line 64
    .line 65
    invoke-static {v2}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->access$getRecyclerView$p(Lcom/cloud/tmc/miniapp/base/BaseAdapter;)Landroidx/recyclerview/widget/RecyclerView;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-interface {v1, v2, p1, v0}, Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnChildClickListener;->onChildClick(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;I)V

    .line 70
    .line 71
    .line 72
    :cond_3
    :goto_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseAdapter$BaseViewHolder;->getViewHolderPosition()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-ltz v0, :cond_3

    .line 12
    .line 13
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/BaseAdapter$BaseViewHolder;->this$0:Lcom/cloud/tmc/miniapp/base/BaseAdapter;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-lt v0, v2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseAdapter$BaseViewHolder;->getItemView()Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-ne p1, v2, :cond_2

    .line 27
    .line 28
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/BaseAdapter$BaseViewHolder;->this$0:Lcom/cloud/tmc/miniapp/base/BaseAdapter;

    .line 29
    .line 30
    invoke-static {v2}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->access$getItemLongClickListener$p(Lcom/cloud/tmc/miniapp/base/BaseAdapter;)Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnItemLongClickListener;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/BaseAdapter$BaseViewHolder;->this$0:Lcom/cloud/tmc/miniapp/base/BaseAdapter;

    .line 37
    .line 38
    invoke-static {v1}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->access$getItemLongClickListener$p(Lcom/cloud/tmc/miniapp/base/BaseAdapter;)Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnItemLongClickListener;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/BaseAdapter$BaseViewHolder;->this$0:Lcom/cloud/tmc/miniapp/base/BaseAdapter;

    .line 46
    .line 47
    invoke-static {v2}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->access$getRecyclerView$p(Lcom/cloud/tmc/miniapp/base/BaseAdapter;)Landroidx/recyclerview/widget/RecyclerView;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-interface {v1, v2, p1, v0}, Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnItemLongClickListener;->onItemLongClick(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;I)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    return p1

    .line 56
    :cond_1
    return v1

    .line 57
    :cond_2
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/BaseAdapter$BaseViewHolder;->this$0:Lcom/cloud/tmc/miniapp/base/BaseAdapter;

    .line 58
    .line 59
    invoke-static {v2}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->access$getChildLongClickListeners(Lcom/cloud/tmc/miniapp/base/BaseAdapter;)Landroid/util/SparseArray;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnChildLongClickListener;

    .line 72
    .line 73
    if-eqz v2, :cond_3

    .line 74
    .line 75
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/BaseAdapter$BaseViewHolder;->this$0:Lcom/cloud/tmc/miniapp/base/BaseAdapter;

    .line 76
    .line 77
    invoke-static {v1}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->access$getRecyclerView$p(Lcom/cloud/tmc/miniapp/base/BaseAdapter;)Landroidx/recyclerview/widget/RecyclerView;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-interface {v2, v1, p1, v0}, Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnChildLongClickListener;->onChildLongClick(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;I)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    return p1

    .line 86
    :cond_3
    :goto_0
    return v1
.end method
