.class public final Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment$d;
.super Lxy/a;
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
.field final synthetic b:Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;


# direct methods
.method constructor <init>(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment$d;->b:Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Lxy/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment$d;->b:Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;

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

.method public b(Landroid/content/Context;)Lxy/c;
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment$d;->b:Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->access$getIndicatorView(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;Landroid/content/Context;)Lxy/c;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public c(Landroid/content/Context;I)Lxy/d;
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment$d;->b:Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->access$getRankList$p(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/transsion/search_pugc/bean/HotRank;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/transsion/search_pugc/bean/HotRank;->getName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    :cond_0
    const-string v0, ""

    .line 27
    .line 28
    :cond_1
    iget-object v1, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment$d;->b:Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;

    .line 29
    .line 30
    invoke-static {v1, p1, p2, v0}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->access$getIndicatorText(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;Landroid/content/Context;ILjava/lang/String;)Lxy/d;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1
.end method
