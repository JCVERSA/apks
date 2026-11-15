.class public final Lcom/transsion/member/view/InviteUserView$a;
.super Landroidx/recyclerview/widget/RecyclerView$r;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/member/view/InviteUserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/member/view/InviteUserView;


# direct methods
.method constructor <init>(Lcom/transsion/member/view/InviteUserView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/member/view/InviteUserView$a;->a:Lcom/transsion/member/view/InviteUserView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$r;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    .line 1
    const-string v0, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$r;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 7
    .line 8
    .line 9
    const/4 p2, 0x1

    .line 10
    invoke-virtual {p1, p2}, Landroid/view/View;->canScrollHorizontally(I)Z

    .line 11
    .line 12
    .line 13
    move-result p3

    .line 14
    if-nez p3, :cond_1

    .line 15
    .line 16
    iget-object p3, p0, Lcom/transsion/member/view/InviteUserView$a;->a:Lcom/transsion/member/view/InviteUserView;

    .line 17
    .line 18
    invoke-static {p3}, Lcom/transsion/member/view/InviteUserView;->access$getLoadMoreEnable$p(Lcom/transsion/member/view/InviteUserView;)Z

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    if-eqz p3, :cond_1

    .line 23
    .line 24
    iget-object p3, p0, Lcom/transsion/member/view/InviteUserView$a;->a:Lcom/transsion/member/view/InviteUserView;

    .line 25
    .line 26
    invoke-static {p3}, Lcom/transsion/member/view/InviteUserView;->access$isLoadMoreLoading$p(Lcom/transsion/member/view/InviteUserView;)Z

    .line 27
    .line 28
    .line 29
    move-result p3

    .line 30
    if-nez p3, :cond_1

    .line 31
    .line 32
    iget-object p3, p0, Lcom/transsion/member/view/InviteUserView$a;->a:Lcom/transsion/member/view/InviteUserView;

    .line 33
    .line 34
    invoke-static {p3, p2}, Lcom/transsion/member/view/InviteUserView;->access$setLoadMoreLoading$p(Lcom/transsion/member/view/InviteUserView;Z)V

    .line 35
    .line 36
    .line 37
    iget-object p2, p0, Lcom/transsion/member/view/InviteUserView$a;->a:Lcom/transsion/member/view/InviteUserView;

    .line 38
    .line 39
    invoke-static {p2}, Lcom/transsion/member/view/InviteUserView;->access$getViewBinder$p(Lcom/transsion/member/view/InviteUserView;)Lcom/transsion/member/view/InviteUserView$c;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    if-eqz p2, :cond_0

    .line 44
    .line 45
    invoke-interface {p2}, Lcom/transsion/member/view/InviteUserView$c;->a()V

    .line 46
    .line 47
    .line 48
    :cond_0
    iget-object p2, p0, Lcom/transsion/member/view/InviteUserView$a;->a:Lcom/transsion/member/view/InviteUserView;

    .line 49
    .line 50
    invoke-static {p2}, Lcom/transsion/member/view/InviteUserView;->access$getList$p(Lcom/transsion/member/view/InviteUserView;)Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$a0;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-eqz p1, :cond_1

    .line 63
    .line 64
    instance-of p2, p1, Lcom/transsion/member/view/InviteUserView$e;

    .line 65
    .line 66
    if-eqz p2, :cond_1

    .line 67
    .line 68
    move-object p2, p1

    .line 69
    check-cast p2, Lcom/transsion/member/view/InviteUserView$e;

    .line 70
    .line 71
    invoke-virtual {p2}, Lcom/transsion/member/view/InviteUserView$e;->f()I

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    const/4 p3, 0x4

    .line 76
    if-ne p2, p3, :cond_1

    .line 77
    .line 78
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 79
    .line 80
    const-string p2, "itemView"

    .line 81
    .line 82
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 86
    .line 87
    .line 88
    :cond_1
    return-void
.end method
