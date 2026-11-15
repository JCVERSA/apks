.class public final Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lbj/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment;->q0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment;


# direct methods
.method constructor <init>(Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment$b;->a:Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(IJLandroid/view/View;)V
    .locals 8

    .line 1
    iget-object p4, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment$b;->a:Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment;

    .line 2
    .line 3
    invoke-static {p4}, Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment;->k0(Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment;)Lcom/transsion/search_pugc/fragment/result/adapter/b;

    .line 4
    .line 5
    .line 6
    move-result-object p4

    .line 7
    if-eqz p4, :cond_0

    .line 8
    .line 9
    invoke-virtual {p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p4

    .line 13
    if-eqz p4, :cond_0

    .line 14
    .line 15
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result p4

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p4, 0x0

    .line 21
    :goto_0
    if-lt p1, p4, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    iget-object p4, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment$b;->a:Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment;

    .line 25
    .line 26
    invoke-static {p4}, Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment;->k0(Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment;)Lcom/transsion/search_pugc/fragment/result/adapter/b;

    .line 27
    .line 28
    .line 29
    move-result-object p4

    .line 30
    if-eqz p4, :cond_3

    .line 31
    .line 32
    invoke-virtual {p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object p4

    .line 36
    if-eqz p4, :cond_3

    .line 37
    .line 38
    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p4

    .line 42
    move-object v1, p4

    .line 43
    check-cast v1, Lcom/transsion/search_pugc/bean/SearchResultItem;

    .line 44
    .line 45
    if-nez v1, :cond_2

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    iget-object p4, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment$b;->a:Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment;

    .line 49
    .line 50
    invoke-static {p4}, Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment;->l0(Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment;)Lcom/transsion/search_pugc/g;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-object p4, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment$b;->a:Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment;

    .line 55
    .line 56
    invoke-static {p4}, Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment;->j0(Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    iget-object p4, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment$b;->a:Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment;

    .line 61
    .line 62
    invoke-static {p4}, Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment;->n0(Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment;)Lcom/transsion/search_pugc/bean/SearchTab;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    iget-object p4, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment$b;->a:Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment;

    .line 67
    .line 68
    invoke-static {p4}, Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment;->m0(Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment;)Leq/a;

    .line 69
    .line 70
    .line 71
    move-result-object p4

    .line 72
    invoke-virtual {p4}, Leq/a;->a()Lcom/transsion/search_pugc/bean/SecondTab;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    move v2, p1

    .line 77
    move-wide v3, p2

    .line 78
    invoke-virtual/range {v0 .. v7}, Lcom/transsion/search_pugc/g;->v(Lcom/transsion/search_pugc/bean/SearchResultItem;IJLjava/lang/String;Lcom/transsion/search_pugc/bean/SearchTab;Lcom/transsion/search_pugc/bean/SecondTab;)V

    .line 79
    .line 80
    .line 81
    :cond_3
    :goto_1
    return-void
.end method
