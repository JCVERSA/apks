.class public final Lcom/transsion/wrapperad/view/BiddingFloatingIrregularAnimationView$b;
.super Landroidx/recyclerview/widget/RecyclerView$r;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/wrapperad/view/BiddingFloatingIrregularAnimationView;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/wrapperad/view/BiddingFloatingIrregularAnimationView;


# direct methods
.method constructor <init>(Lcom/transsion/wrapperad/view/BiddingFloatingIrregularAnimationView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/wrapperad/view/BiddingFloatingIrregularAnimationView$b;->a:Lcom/transsion/wrapperad/view/BiddingFloatingIrregularAnimationView;

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
    if-eqz p2, :cond_1

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    if-eq p2, p1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object p2, p0, Lcom/transsion/wrapperad/view/BiddingFloatingIrregularAnimationView$b;->a:Lcom/transsion/wrapperad/view/BiddingFloatingIrregularAnimationView;

    .line 16
    .line 17
    invoke-virtual {p2, p1}, Lcom/transsion/wrapperad/view/BiddingFloatingIrregularAnimationView;->changeState(Z)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object p1, p0, Lcom/transsion/wrapperad/view/BiddingFloatingIrregularAnimationView$b;->a:Lcom/transsion/wrapperad/view/BiddingFloatingIrregularAnimationView;

    .line 22
    .line 23
    const/4 p2, 0x0

    .line 24
    invoke-virtual {p1, p2}, Lcom/transsion/wrapperad/view/BiddingFloatingIrregularAnimationView;->changeState(Z)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method
