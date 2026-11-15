.class public final Lcom/transsion/search_pugc/fragment/result/SearchResultFragment$e;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;


# direct methods
.method constructor <init>(Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment$e;->a:Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment$e;->a:Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;->k0(Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;)Lcom/transsion/search_pugc/bean/UGCSearchResultData;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/transsion/search_pugc/bean/UGCSearchResultData;->getTabs()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/transsion/search_pugc/bean/SearchTab;

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment$e;->a:Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;->k0(Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;)Lcom/transsion/search_pugc/bean/UGCSearchResultData;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/transsion/search_pugc/bean/UGCSearchResultData;->getTabs()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Lcom/transsion/search_pugc/bean/SearchTab;

    .line 40
    .line 41
    :goto_0
    move-object v3, p1

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const/4 p1, 0x0

    .line 44
    goto :goto_0

    .line 45
    :goto_1
    sget-object v0, Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment;->n:Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment$a;

    .line 46
    .line 47
    iget-object p1, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment$e;->a:Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;

    .line 48
    .line 49
    invoke-static {p1}, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;->i0(Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iget-object p1, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment$e;->a:Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;

    .line 54
    .line 55
    invoke-static {p1}, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;->j0(Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    iget-object p1, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment$e;->a:Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;

    .line 60
    .line 61
    invoke-static {p1}, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;->f0(Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    const/4 v2, 0x0

    .line 66
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment$a;->a(Ljava/lang/String;Lcom/transsion/search_pugc/bean/UGCSearchResultData;Lcom/transsion/search_pugc/bean/SearchTab;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment$e;->a:Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;->k0(Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;)Lcom/transsion/search_pugc/bean/UGCSearchResultData;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/transsion/search_pugc/bean/UGCSearchResultData;->getTabs()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    return v0
.end method
