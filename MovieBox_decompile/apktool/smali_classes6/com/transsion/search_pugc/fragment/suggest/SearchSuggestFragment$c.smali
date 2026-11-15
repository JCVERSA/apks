.class public final Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lvg/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;


# direct methods
.method constructor <init>(Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment$c;->a:Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;

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
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment$c;->a:Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->e0(Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;)Lcom/transsion/search_pugc/fragment/suggest/e;

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
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment$c;->a:Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->e0(Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;)Lcom/transsion/search_pugc/fragment/suggest/e;

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
    check-cast p1, Lcom/transsion/search_pugc/bean/SearchSuggestItem;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_0
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment$c;->a:Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->h0(Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;)Lcom/transsion/search_pugc/g;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    iget-object v1, p0, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment$c;->a:Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;

    .line 34
    .line 35
    invoke-static {v1}, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->f0(Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-object v2, p0, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment$c;->a:Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;

    .line 40
    .line 41
    invoke-static {v2}, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->g0(Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/transsion/search_pugc/g;->A(Lcom/transsion/search_pugc/bean/SearchSuggestItem;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method
