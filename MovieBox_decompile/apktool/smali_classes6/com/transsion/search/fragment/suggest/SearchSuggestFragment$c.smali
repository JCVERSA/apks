.class public final Lcom/transsion/search/fragment/suggest/SearchSuggestFragment$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lvg/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/search/fragment/suggest/SearchSuggestFragment;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/search/fragment/suggest/SearchSuggestFragment;


# direct methods
.method constructor <init>(Lcom/transsion/search/fragment/suggest/SearchSuggestFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/search/fragment/suggest/SearchSuggestFragment$c;->a:Lcom/transsion/search/fragment/suggest/SearchSuggestFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search/fragment/suggest/SearchSuggestFragment$c;->a:Lcom/transsion/search/fragment/suggest/SearchSuggestFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/search/fragment/suggest/SearchSuggestFragment;->d0(Lcom/transsion/search/fragment/suggest/SearchSuggestFragment;)Lcom/transsion/search/fragment/suggest/d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

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

.method public onItemViewVisible(ZI)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/transsion/search/fragment/suggest/SearchSuggestFragment$c;->a:Lcom/transsion/search/fragment/suggest/SearchSuggestFragment;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/transsion/search/fragment/suggest/SearchSuggestFragment;->d0(Lcom/transsion/search/fragment/suggest/SearchSuggestFragment;)Lcom/transsion/search/fragment/suggest/d;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/transsion/search/bean/SuggestEntity;

    .line 20
    .line 21
    :goto_0
    move-object v1, p1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    goto :goto_0

    .line 25
    :goto_1
    sget-object v0, Lcom/transsion/search/widget/d;->a:Lcom/transsion/search/widget/d$a;

    .line 26
    .line 27
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iget-object p1, p0, Lcom/transsion/search/fragment/suggest/SearchSuggestFragment$c;->a:Lcom/transsion/search/fragment/suggest/SearchSuggestFragment;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/transsion/search/fragment/suggest/SearchSuggestFragment;->e0(Lcom/transsion/search/fragment/suggest/SearchSuggestFragment;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    iget-object p1, p0, Lcom/transsion/search/fragment/suggest/SearchSuggestFragment$c;->a:Lcom/transsion/search/fragment/suggest/SearchSuggestFragment;

    .line 38
    .line 39
    invoke-static {p1}, Lcom/transsion/search/fragment/suggest/SearchSuggestFragment;->f0(Lcom/transsion/search/fragment/suggest/SearchSuggestFragment;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    iget-object p1, p0, Lcom/transsion/search/fragment/suggest/SearchSuggestFragment$c;->a:Lcom/transsion/search/fragment/suggest/SearchSuggestFragment;

    .line 44
    .line 45
    invoke-static {p1}, Lcom/transsion/search/fragment/suggest/SearchSuggestFragment;->g0(Lcom/transsion/search/fragment/suggest/SearchSuggestFragment;)Lcom/transsion/search/viewmodel/SearchViewModel;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lcom/transsion/search/viewmodel/SearchViewModel;->s()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/search/widget/d$a;->v(Lcom/transsion/search/bean/SuggestEntity;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method
