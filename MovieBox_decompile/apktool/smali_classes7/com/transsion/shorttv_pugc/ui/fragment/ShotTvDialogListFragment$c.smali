.class public final Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment$c;
.super Landroidx/recyclerview/widget/RecyclerView$r;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/LinearLayoutManager;

.field final synthetic b:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic c:I

.field final synthetic d:Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment;

.field final synthetic e:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic f:I


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/LinearLayoutManager;Lkotlin/jvm/internal/Ref$BooleanRef;ILcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment;Lkotlin/jvm/internal/Ref$BooleanRef;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment$c;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment$c;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 4
    .line 5
    iput p3, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment$c;->c:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment$c;->d:Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment$c;->e:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 10
    .line 11
    iput p6, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment$c;->f:I

    .line 12
    .line 13
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$r;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3

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
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment$c;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$m;->getItemCount()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iget-object p2, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment$c;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 16
    .line 17
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    iget-object p3, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment$c;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 22
    .line 23
    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment$c;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 28
    .line 29
    iget-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    if-nez v1, :cond_0

    .line 33
    .line 34
    iget v1, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment$c;->c:I

    .line 35
    .line 36
    if-gt p2, v1, :cond_0

    .line 37
    .line 38
    iput-boolean v2, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 39
    .line 40
    iget-object p2, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment$c;->d:Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment;

    .line 41
    .line 42
    invoke-static {p2}, Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment;->o0(Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    iget-object p2, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment$c;->e:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 46
    .line 47
    iget-boolean v0, p2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 48
    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    sub-int/2addr p1, v2

    .line 52
    iget v0, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment$c;->f:I

    .line 53
    .line 54
    sub-int/2addr p1, v0

    .line 55
    if-lt p3, p1, :cond_1

    .line 56
    .line 57
    iput-boolean v2, p2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 58
    .line 59
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment$c;->d:Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment;

    .line 60
    .line 61
    invoke-static {p1}, Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment;->n0(Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    return-void
.end method
