.class Landroidx/recyclerview/widget/k$a;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/k;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/k$a;->a:Landroidx/recyclerview/widget/k;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/k$a;->a:Landroidx/recyclerview/widget/k;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/recyclerview/widget/k;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iput v1, v0, Landroidx/recyclerview/widget/k;->e:I

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/recyclerview/widget/k$a;->a:Landroidx/recyclerview/widget/k;

    .line 12
    .line 13
    iget-object v1, v0, Landroidx/recyclerview/widget/k;->d:Landroidx/recyclerview/widget/k$b;

    .line 14
    .line 15
    invoke-interface {v1, v0}, Landroidx/recyclerview/widget/k$b;->e(Landroidx/recyclerview/widget/k;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/k$a;->a:Landroidx/recyclerview/widget/k;

    iget-object v1, v0, Landroidx/recyclerview/widget/k;->d:Landroidx/recyclerview/widget/k$b;

    const/4 v2, 0x0

    invoke-interface {v1, v0, p1, p2, v2}, Landroidx/recyclerview/widget/k$b;->a(Landroidx/recyclerview/widget/k;IILjava/lang/Object;)V

    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 2

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/k$a;->a:Landroidx/recyclerview/widget/k;

    iget-object v1, v0, Landroidx/recyclerview/widget/k;->d:Landroidx/recyclerview/widget/k$b;

    invoke-interface {v1, v0, p1, p2, p3}, Landroidx/recyclerview/widget/k$b;->a(Landroidx/recyclerview/widget/k;IILjava/lang/Object;)V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/k$a;->a:Landroidx/recyclerview/widget/k;

    .line 2
    .line 3
    iget v1, v0, Landroidx/recyclerview/widget/k;->e:I

    .line 4
    .line 5
    add-int/2addr v1, p2

    .line 6
    iput v1, v0, Landroidx/recyclerview/widget/k;->e:I

    .line 7
    .line 8
    iget-object v1, v0, Landroidx/recyclerview/widget/k;->d:Landroidx/recyclerview/widget/k$b;

    .line 9
    .line 10
    invoke-interface {v1, v0, p1, p2}, Landroidx/recyclerview/widget/k$b;->b(Landroidx/recyclerview/widget/k;II)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Landroidx/recyclerview/widget/k$a;->a:Landroidx/recyclerview/widget/k;

    .line 14
    .line 15
    iget p2, p1, Landroidx/recyclerview/widget/k;->e:I

    .line 16
    .line 17
    if-lez p2, :cond_0

    .line 18
    .line 19
    iget-object p1, p1, Landroidx/recyclerview/widget/k;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getStateRestorationPolicy()Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    sget-object p2, Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->PREVENT_WHEN_EMPTY:Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    .line 26
    .line 27
    if-ne p1, p2, :cond_0

    .line 28
    .line 29
    iget-object p1, p0, Landroidx/recyclerview/widget/k$a;->a:Landroidx/recyclerview/widget/k;

    .line 30
    .line 31
    iget-object p2, p1, Landroidx/recyclerview/widget/k;->d:Landroidx/recyclerview/widget/k$b;

    .line 32
    .line 33
    invoke-interface {p2, p1}, Landroidx/recyclerview/widget/k$b;->d(Landroidx/recyclerview/widget/k;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p3, v0, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    const-string p3, "moving more than 1 item is not supported in RecyclerView"

    .line 7
    .line 8
    invoke-static {v0, p3}, Landroidx/core/util/i;->b(ZLjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p3, p0, Landroidx/recyclerview/widget/k$a;->a:Landroidx/recyclerview/widget/k;

    .line 12
    .line 13
    iget-object v0, p3, Landroidx/recyclerview/widget/k;->d:Landroidx/recyclerview/widget/k$b;

    .line 14
    .line 15
    invoke-interface {v0, p3, p1, p2}, Landroidx/recyclerview/widget/k$b;->c(Landroidx/recyclerview/widget/k;II)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/k$a;->a:Landroidx/recyclerview/widget/k;

    .line 2
    .line 3
    iget v1, v0, Landroidx/recyclerview/widget/k;->e:I

    .line 4
    .line 5
    sub-int/2addr v1, p2

    .line 6
    iput v1, v0, Landroidx/recyclerview/widget/k;->e:I

    .line 7
    .line 8
    iget-object v1, v0, Landroidx/recyclerview/widget/k;->d:Landroidx/recyclerview/widget/k$b;

    .line 9
    .line 10
    invoke-interface {v1, v0, p1, p2}, Landroidx/recyclerview/widget/k$b;->f(Landroidx/recyclerview/widget/k;II)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Landroidx/recyclerview/widget/k$a;->a:Landroidx/recyclerview/widget/k;

    .line 14
    .line 15
    iget p2, p1, Landroidx/recyclerview/widget/k;->e:I

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    if-ge p2, v0, :cond_0

    .line 19
    .line 20
    iget-object p1, p1, Landroidx/recyclerview/widget/k;->c:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getStateRestorationPolicy()Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    sget-object p2, Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->PREVENT_WHEN_EMPTY:Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    .line 27
    .line 28
    if-ne p1, p2, :cond_0

    .line 29
    .line 30
    iget-object p1, p0, Landroidx/recyclerview/widget/k$a;->a:Landroidx/recyclerview/widget/k;

    .line 31
    .line 32
    iget-object p2, p1, Landroidx/recyclerview/widget/k;->d:Landroidx/recyclerview/widget/k$b;

    .line 33
    .line 34
    invoke-interface {p2, p1}, Landroidx/recyclerview/widget/k$b;->d(Landroidx/recyclerview/widget/k;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public onStateRestorationPolicyChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/k$a;->a:Landroidx/recyclerview/widget/k;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/recyclerview/widget/k;->d:Landroidx/recyclerview/widget/k$b;

    .line 4
    .line 5
    invoke-interface {v1, v0}, Landroidx/recyclerview/widget/k$b;->d(Landroidx/recyclerview/widget/k;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
