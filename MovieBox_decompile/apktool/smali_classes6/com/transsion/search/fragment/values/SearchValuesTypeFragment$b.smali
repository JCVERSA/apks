.class public final Lcom/transsion/search/fragment/values/SearchValuesTypeFragment$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lvg/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/search/fragment/values/SearchValuesTypeFragment;->y0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/search/fragment/values/SearchValuesTypeFragment;


# direct methods
.method constructor <init>(Lcom/transsion/search/fragment/values/SearchValuesTypeFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/search/fragment/values/SearchValuesTypeFragment$b;->a:Lcom/transsion/search/fragment/values/SearchValuesTypeFragment;

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
    iget-object v0, p0, Lcom/transsion/search/fragment/values/SearchValuesTypeFragment$b;->a:Lcom/transsion/search/fragment/values/SearchValuesTypeFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/search/fragment/values/SearchValuesTypeFragment;->r0(Lcom/transsion/search/fragment/values/SearchValuesTypeFragment;)Lcom/transsion/search/fragment/values/adapter/a;

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
    .locals 8

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    iget-object p1, p0, Lcom/transsion/search/fragment/values/SearchValuesTypeFragment$b;->a:Lcom/transsion/search/fragment/values/SearchValuesTypeFragment;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/transsion/search/fragment/values/SearchValuesTypeFragment;->r0(Lcom/transsion/search/fragment/values/SearchValuesTypeFragment;)Lcom/transsion/search/fragment/values/adapter/a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/transsion/search/bean/SearchSubject;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object p1, v0

    .line 26
    :goto_0
    sget-object v1, Lcom/transsion/search/fragment/values/SearchValuesFragment;->j:Lcom/transsion/search/fragment/values/SearchValuesFragment$a;

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    move-object v3, v2

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move-object v3, v0

    .line 37
    :goto_1
    if-eqz p1, :cond_2

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getOps()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :cond_2
    move-object v5, v0

    .line 44
    const/4 v7, 0x3

    .line 45
    const-string v2, ""

    .line 46
    .line 47
    const-string v4, ""

    .line 48
    .line 49
    move v6, p2

    .line 50
    invoke-virtual/range {v1 .. v7}, Lcom/transsion/search/fragment/values/SearchValuesFragment$a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 51
    .line 52
    .line 53
    :cond_3
    return-void
.end method
