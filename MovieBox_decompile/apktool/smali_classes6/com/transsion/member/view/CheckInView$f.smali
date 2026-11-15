.class public final Lcom/transsion/member/view/CheckInView$f;
.super Landroidx/recyclerview/widget/GridLayoutManager$c;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/member/view/CheckInView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/transsion/member/view/CheckInView;

.field final synthetic f:Landroidx/recyclerview/widget/GridLayoutManager;


# direct methods
.method constructor <init>(Lcom/transsion/member/view/CheckInView;Landroidx/recyclerview/widget/GridLayoutManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/member/view/CheckInView$f;->e:Lcom/transsion/member/view/CheckInView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/member/view/CheckInView$f;->f:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$c;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public f(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/member/view/CheckInView$f;->e:Lcom/transsion/member/view/CheckInView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$m;->getItemCount()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/transsion/member/view/CheckInView$f;->f:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->U()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    :goto_0
    const/4 v1, 0x1

    .line 21
    sub-int/2addr v0, v1

    .line 22
    if-ne p1, v0, :cond_1

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    :cond_1
    return v1
.end method
