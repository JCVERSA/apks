.class public final Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment$b;
.super Landroidx/recyclerview/widget/RecyclerView$r;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->initViewData(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;


# direct methods
.method constructor <init>(Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment$b;->a:Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;

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
    const/4 p2, 0x1

    .line 12
    invoke-virtual {p1, p2}, Landroid/view/View;->canScrollVertically(I)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment$b;->a:Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->u0(Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
