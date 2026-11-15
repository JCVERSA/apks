.class public final Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$a;->a:Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$a;->a:Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->t0(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;)Lqr/s;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$a;->a:Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->isSelected()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/4 v2, 0x1

    .line 18
    if-ne p1, v2, :cond_0

    .line 19
    .line 20
    iget-object p1, v0, Lqr/s;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    iget-object p1, v0, Lqr/s;->e:Lcom/google/android/material/tabs/TabLayout;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    mul-int/lit8 p1, p1, 0x19

    .line 35
    .line 36
    invoke-static {v1}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->u0(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;)Landroidx/recyclerview/widget/GridLayoutManager;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    sub-int/2addr p1, v2

    .line 47
    div-int/lit8 p1, p1, 0x5

    .line 48
    .line 49
    invoke-static {v1}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->v0(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    mul-int/2addr p1, v1

    .line 54
    iget-object v1, v0, Lqr/s;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 55
    .line 56
    invoke-virtual {v1, p1}, Landroid/view/View;->canScrollVertically(I)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_0

    .line 61
    .line 62
    iget-object v0, v0, Lqr/s;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 63
    .line 64
    const/4 v1, 0x0

    .line 65
    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 66
    .line 67
    .line 68
    :cond_0
    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    .line 1
    return-void
.end method
