.class public final Lcom/transsion/search/fragment/hot/SearchHotFragment$e;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/search/fragment/hot/SearchHotFragment;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/search/fragment/hot/SearchHotFragment;


# direct methods
.method constructor <init>(Lcom/transsion/search/fragment/hot/SearchHotFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment$e;->a:Lcom/transsion/search/fragment/hot/SearchHotFragment;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment$e;->a:Lcom/transsion/search/fragment/hot/SearchHotFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->access$getMHotSubjectEntity$p(Lcom/transsion/search/fragment/hot/SearchHotFragment;)Lcom/transsion/search/bean/HotSubjectEntity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/transsion/search/bean/HotSubjectEntity;->getHot()Ljava/util/List;

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
    check-cast v0, Lcom/transsion/search/bean/HotRankItem;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lcom/transsion/search/bean/HotRankItem;->setIndex(I)V

    .line 26
    .line 27
    .line 28
    :cond_1
    sget-object p1, Lcom/transsion/search/fragment/hot/SearchRankPagerFragment;->c:Lcom/transsion/search/fragment/hot/SearchRankPagerFragment$a;

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lcom/transsion/search/fragment/hot/SearchRankPagerFragment$a;->a(Lcom/transsion/search/bean/HotRankItem;)Lcom/transsion/search/fragment/hot/SearchRankPagerFragment;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment$e;->a:Lcom/transsion/search/fragment/hot/SearchHotFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->access$getMHotSubjectEntity$p(Lcom/transsion/search/fragment/hot/SearchHotFragment;)Lcom/transsion/search/bean/HotSubjectEntity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/transsion/search/bean/HotSubjectEntity;->getHot()Ljava/util/List;

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
