.class public final Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$e;
.super Landroidx/recyclerview/widget/RecyclerView$r;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$e;->a:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

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
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    instance-of p2, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const/4 p1, 0x0

    .line 29
    :goto_1
    add-int/lit8 p1, p1, 0x18

    .line 30
    .line 31
    div-int/lit8 p1, p1, 0x19

    .line 32
    .line 33
    iget-object p2, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$e;->a:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

    .line 34
    .line 35
    invoke-static {p2}, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;->H0(Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;)I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-ne p1, p2, :cond_2

    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    iget-object p2, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$e;->a:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

    .line 43
    .line 44
    invoke-virtual {p2}, Lcom/transsion/shorttv/base/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    check-cast p2, Lqr/z;

    .line 49
    .line 50
    if-eqz p2, :cond_3

    .line 51
    .line 52
    iget-object p2, p2, Lqr/z;->u:Lcom/google/android/material/tabs/TabLayout;

    .line 53
    .line 54
    if-eqz p2, :cond_3

    .line 55
    .line 56
    invoke-virtual {p2, p1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-eqz p1, :cond_3

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    .line 63
    .line 64
    .line 65
    :cond_3
    return-void
.end method
