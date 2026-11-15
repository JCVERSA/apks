.class public final Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment$e;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->initViewPager()V
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
    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment$e;->a:Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;

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
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/search_pugc/fragment/hot/SearchRankPagerFragment;->c:Lcom/transsion/search_pugc/fragment/hot/SearchRankPagerFragment$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment$e;->a:Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->access$getRankList$p(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/transsion/search_pugc/bean/HotRank;

    .line 14
    .line 15
    invoke-virtual {v0, v1, p1}, Lcom/transsion/search_pugc/fragment/hot/SearchRankPagerFragment$a;->a(Lcom/transsion/search_pugc/bean/HotRank;I)Lcom/transsion/search_pugc/fragment/hot/SearchRankPagerFragment;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment$e;->a:Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->access$getRankList$p(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method
