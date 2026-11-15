.class public final Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment$g;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/search_pugc/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->loadHistoryData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;


# direct methods
.method constructor <init>(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment$g;->a:Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic b(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment$g;->c(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final c(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;Ljava/util/List;)V
    .locals 1

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Ljava/lang/Iterable;

    .line 3
    .line 4
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->D0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Ljava/util/Collection;

    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {p0, v0}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->access$setMHistoryList$p(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;Ljava/util/List;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p0}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->access$showHistoryList(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Lvp/n;

    .line 25
    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    iget-object p0, p0, Lvp/n;->i:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 29
    .line 30
    if-eqz p0, :cond_1

    .line 31
    .line 32
    check-cast p1, Ljava/util/Collection;

    .line 33
    .line 34
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_0

    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/16 p1, 0x8

    .line 43
    .line 44
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 3

    .line 1
    const-string v0, "list"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment$g;->a:Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment$g;->a:Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;

    .line 15
    .line 16
    new-instance v2, Lhq/q;

    .line 17
    .line 18
    invoke-direct {v2, v1, p1}, Lhq/q;-><init>(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;Ljava/util/List;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
