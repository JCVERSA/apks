.class public final Lo6/e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/recyclerview/widget/j;


# instance fields
.field private final a:Lcom/chad/library/adapter/base/BaseQuickAdapter;


# direct methods
.method public constructor <init>(Lcom/chad/library/adapter/base/BaseQuickAdapter;)V
    .locals 1

    .line 1
    const-string v0, "mAdapter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lo6/e;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public onChanged(IILjava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo6/e;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->a0()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/2addr p1, v1

    .line 8
    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onInserted(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo6/e;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->a0()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/2addr p1, v1

    .line 8
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onMoved(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo6/e;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->a0()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/2addr p1, v1

    .line 8
    iget-object v1, p0, Lo6/e;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->a0()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    add-int/2addr p2, v1

    .line 15
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onRemoved(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lo6/e;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->i0()Lt6/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lt6/f;->m()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lo6/e;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lo6/e;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->a0()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    add-int/2addr p1, v2

    .line 31
    add-int/2addr p2, v1

    .line 32
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lo6/e;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->a0()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    add-int/2addr p1, v1

    .line 43
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void
.end method
