.class public final Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$adapterDataObserver$1$1;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u001f\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "com/transsion/widgets/fastscroller/RecyclerViewFastScroller$adapterDataObserver$1$1",
        "Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;",
        "Lzfb;",
        "onChanged",
        "()V",
        "",
        "positionStart",
        "itemCount",
        "onItemRangeRemoved",
        "(II)V",
        "common_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;


# direct methods
.method public constructor <init>(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$adapterDataObserver$1$1;->this$0:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    iget-object v0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$adapterDataObserver$1$1;->this$0:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->access$setPreviousTotalVisibleItem$p(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;I)V

    iget-object p0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$adapterDataObserver$1$1;->this$0:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    invoke-static {p0, v1}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->access$setTotalVisibleItems$p(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;I)V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeRemoved(II)V

    iget-object p0, p0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$adapterDataObserver$1$1;->this$0:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;->access$setPreviousTotalVisibleItem$p(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;I)V

    return-void
.end method
