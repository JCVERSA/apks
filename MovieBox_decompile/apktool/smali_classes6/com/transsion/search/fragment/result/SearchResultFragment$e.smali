.class public final Lcom/transsion/search/fragment/result/SearchResultFragment$e;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/search/fragment/result/SearchResultFragment;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/search/fragment/result/SearchResultFragment;


# direct methods
.method constructor <init>(Lcom/transsion/search/fragment/result/SearchResultFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/search/fragment/result/SearchResultFragment$e;->a:Lcom/transsion/search/fragment/result/SearchResultFragment;

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
    iget-object v0, p0, Lcom/transsion/search/fragment/result/SearchResultFragment$e;->a:Lcom/transsion/search/fragment/result/SearchResultFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/search/fragment/result/SearchResultFragment;->j0(Lcom/transsion/search/fragment/result/SearchResultFragment;)Lcom/transsion/search/bean/SearchResultEntity;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/transsion/search/bean/SearchResultEntity;->getTabs()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/transsion/search/bean/TabItem;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_0
    invoke-static {v0, p1}, Lcom/transsion/search/fragment/result/SearchResultFragment;->f0(Lcom/transsion/search/fragment/result/SearchResultFragment;Lcom/transsion/search/bean/TabItem;)Landroidx/fragment/app/Fragment;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search/fragment/result/SearchResultFragment$e;->a:Lcom/transsion/search/fragment/result/SearchResultFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/search/fragment/result/SearchResultFragment;->j0(Lcom/transsion/search/fragment/result/SearchResultFragment;)Lcom/transsion/search/bean/SearchResultEntity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/transsion/search/bean/SearchResultEntity;->getTabs()Ljava/util/List;

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
