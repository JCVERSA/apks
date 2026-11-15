.class public final Lcom/transsion/search/fragment/hot/SearchHotFragment$d;
.super Lxy/a;
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
.field final synthetic b:Lcom/transsion/search/fragment/hot/SearchHotFragment;


# direct methods
.method constructor <init>(Lcom/transsion/search/fragment/hot/SearchHotFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment$d;->b:Lcom/transsion/search/fragment/hot/SearchHotFragment;

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
    iget-object v0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment$d;->b:Lcom/transsion/search/fragment/hot/SearchHotFragment;

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
    iget-object v0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment$d;->b:Lcom/transsion/search/fragment/hot/SearchHotFragment;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->access$getIndicatorView(Lcom/transsion/search/fragment/hot/SearchHotFragment;Landroid/content/Context;)Lxy/c;

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
    iget-object v0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment$d;->b:Lcom/transsion/search/fragment/hot/SearchHotFragment;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->access$getMHotSubjectEntity$p(Lcom/transsion/search/fragment/hot/SearchHotFragment;)Lcom/transsion/search/bean/HotSubjectEntity;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/transsion/search/bean/HotSubjectEntity;->getHot()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/transsion/search/bean/HotRankItem;

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/transsion/search/bean/HotRankItem;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    :cond_0
    const-string v0, ""

    .line 35
    .line 36
    :cond_1
    iget-object v1, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment$d;->b:Lcom/transsion/search/fragment/hot/SearchHotFragment;

    .line 37
    .line 38
    invoke-static {v1, p1, p2, v0}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->access$getIndicatorText(Lcom/transsion/search/fragment/hot/SearchHotFragment;Landroid/content/Context;ILjava/lang/String;)Lxy/d;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    return-object p1
.end method
