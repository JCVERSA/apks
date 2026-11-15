.class public final Lcom/transsion/member/view/InviteUserView$d$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/member/view/InviteUserView$d;->i(Lcom/transsion/member/view/InviteUserView$e;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/member/view/InviteUserView$e;

.field final synthetic b:Lcom/transsion/member/view/InviteUserView;


# direct methods
.method constructor <init>(Lcom/transsion/member/view/InviteUserView$e;Lcom/transsion/member/view/InviteUserView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/member/view/InviteUserView$d$a;->a:Lcom/transsion/member/view/InviteUserView$e;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/member/view/InviteUserView$d$a;->b:Lcom/transsion/member/view/InviteUserView;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    const-string v0, "animation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/transsion/member/view/InviteUserView$d$a;->a:Lcom/transsion/member/view/InviteUserView$e;

    .line 7
    .line 8
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 9
    .line 10
    const-string v0, "itemView"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Luf/c;->h(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/transsion/member/view/InviteUserView$d$a;->b:Lcom/transsion/member/view/InviteUserView;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-static {p1, v0}, Lcom/transsion/member/view/InviteUserView;->access$setNeedShowLoadMoreDismissAnimation$p(Lcom/transsion/member/view/InviteUserView;Z)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/transsion/member/view/InviteUserView$d$a;->a:Lcom/transsion/member/view/InviteUserView$e;

    .line 25
    .line 26
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 27
    .line 28
    const/high16 v1, 0x3f800000    # 1.0f

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/transsion/member/view/InviteUserView$d$a;->a:Lcom/transsion/member/view/InviteUserView$e;

    .line 34
    .line 35
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/transsion/member/view/InviteUserView$d$a;->a:Lcom/transsion/member/view/InviteUserView$e;

    .line 41
    .line 42
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/transsion/member/view/InviteUserView$d$a;->b:Lcom/transsion/member/view/InviteUserView;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/transsion/member/view/InviteUserView$d$a;->a:Lcom/transsion/member/view/InviteUserView$e;

    .line 50
    .line 51
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 52
    .line 53
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    iget-object v2, p0, Lcom/transsion/member/view/InviteUserView$d$a;->b:Lcom/transsion/member/view/InviteUserView;

    .line 58
    .line 59
    invoke-static {v2}, Lcom/transsion/member/view/InviteUserView;->access$getSpaceH$p(Lcom/transsion/member/view/InviteUserView;)F

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    invoke-static {v2, v3}, Lcom/transsion/member/view/InviteUserView;->access$dpToPx(Lcom/transsion/member/view/InviteUserView;F)I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    add-int/2addr v1, v2

    .line 68
    neg-int v1, v1

    .line 69
    invoke-virtual {p1, v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    .line 70
    .line 71
    .line 72
    return-void
.end method
