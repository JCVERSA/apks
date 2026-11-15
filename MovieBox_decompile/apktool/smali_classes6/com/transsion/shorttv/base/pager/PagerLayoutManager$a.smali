.class public final Lcom/transsion/shorttv/base/pager/PagerLayoutManager$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/base/pager/PagerLayoutManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/base/pager/PagerLayoutManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/base/pager/PagerLayoutManager$a;->a:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/shorttv/base/pager/PagerLayoutManager$a;->a:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$m;->getPosition(Landroid/view/View;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Lcom/transsion/shorttv/base/pager/PagerLayoutManager$a;->a:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$m;->getChildCount()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x1

    .line 19
    if-ne v1, v2, :cond_0

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/transsion/shorttv/base/pager/PagerLayoutManager$a;->a:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/transsion/shorttv/base/pager/PagerLayoutManager;->O(Lcom/transsion/shorttv/base/pager/PagerLayoutManager;)Lgr/a;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Lgr/a;->d(Landroid/view/View;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 3

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/shorttv/base/pager/PagerLayoutManager$a;->a:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/transsion/shorttv/base/pager/PagerLayoutManager;->L(Lcom/transsion/shorttv/base/pager/PagerLayoutManager;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-ltz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/transsion/shorttv/base/pager/PagerLayoutManager$a;->a:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/transsion/shorttv/base/pager/PagerLayoutManager;->O(Lcom/transsion/shorttv/base/pager/PagerLayoutManager;)Lgr/a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v1, p0, Lcom/transsion/shorttv/base/pager/PagerLayoutManager$a;->a:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$m;->getPosition(Landroid/view/View;)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/4 v2, 0x1

    .line 29
    invoke-virtual {v0, v2, v1, p1}, Lgr/a;->e(ZILandroid/view/View;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv/base/pager/PagerLayoutManager$a;->a:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/transsion/shorttv/base/pager/PagerLayoutManager;->O(Lcom/transsion/shorttv/base/pager/PagerLayoutManager;)Lgr/a;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget-object v1, p0, Lcom/transsion/shorttv/base/pager/PagerLayoutManager$a;->a:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    .line 42
    .line 43
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$m;->getPosition(Landroid/view/View;)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    const/4 v2, 0x0

    .line 48
    invoke-virtual {v0, v2, v1, p1}, Lgr/a;->e(ZILandroid/view/View;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    :goto_0
    return-void
.end method
