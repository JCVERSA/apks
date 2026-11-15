.class public final Lcom/transsion/search/fragment/result/SearchResultTabFragment$e;
.super Landroidx/recyclerview/widget/GridLayoutManager$c;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/search/fragment/result/SearchResultTabFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/transsion/search/fragment/result/SearchResultTabFragment;


# direct methods
.method constructor <init>(Lcom/transsion/search/fragment/result/SearchResultTabFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/search/fragment/result/SearchResultTabFragment$e;->e:Lcom/transsion/search/fragment/result/SearchResultTabFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public f(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search/fragment/result/SearchResultTabFragment$e;->e:Lcom/transsion/search/fragment/result/SearchResultTabFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/search/fragment/result/SearchResultTabFragment;->n0(Lcom/transsion/search/fragment/result/SearchResultTabFragment;)Lcom/transsion/search/fragment/result/adapter/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/transsion/search/fragment/result/ResultWrapData;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/transsion/search/fragment/result/ResultWrapData;->getType()Lcom/transsion/search/fragment/result/ResultType;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_0
    sget-object v0, Lcom/transsion/search/fragment/result/ResultType;->MORE:Lcom/transsion/search/fragment/result/ResultType;

    .line 24
    .line 25
    if-eq p1, v0, :cond_2

    .line 26
    .line 27
    sget-object v0, Lcom/transsion/search/fragment/result/ResultType;->TITLE:Lcom/transsion/search/fragment/result/ResultType;

    .line 28
    .line 29
    if-ne p1, v0, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/4 p1, 0x1

    .line 33
    goto :goto_2

    .line 34
    :cond_2
    :goto_1
    const/4 p1, 0x2

    .line 35
    :goto_2
    return p1
.end method
