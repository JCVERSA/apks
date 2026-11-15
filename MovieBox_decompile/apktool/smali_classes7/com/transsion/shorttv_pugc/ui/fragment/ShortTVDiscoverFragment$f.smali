.class public final Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment$f;
.super Landroidx/recyclerview/widget/RecyclerView$r;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment$f;->b:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$r;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    .line 1
    const-string v0, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$r;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 7
    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment$f;->b:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lqr/x;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p1, Lqr/x;->b:Lcom/transsion/shorttv/base/widget/SafeRecyclerView;

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    const/4 p2, -0x1

    .line 26
    invoke-virtual {p1, p2}, Landroid/view/View;->canScrollVertically(I)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment$f;->b:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment;->v0(Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment;)Z

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    invoke-static {p1, p2}, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment;->t0(Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment;Z)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment$f;->b:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment;

    .line 42
    .line 43
    const/4 p2, 0x0

    .line 44
    invoke-virtual {p1, p2}, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment;->e1(Z)V

    .line 45
    .line 46
    .line 47
    iput p2, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment$f;->a:I

    .line 48
    .line 49
    :cond_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    const-string p2, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment$f;->b:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment;

    .line 7
    .line 8
    invoke-static {p1, p3}, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment;->w0(Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
