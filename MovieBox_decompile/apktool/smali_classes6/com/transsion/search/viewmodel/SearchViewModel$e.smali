.class public final Lcom/transsion/search/viewmodel/SearchViewModel$e;
.super Ldg/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/search/viewmodel/SearchViewModel;->A(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/search/viewmodel/SearchViewModel;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/transsion/search/viewmodel/SearchViewModel;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/search/viewmodel/SearchViewModel$e;->d:Lcom/transsion/search/viewmodel/SearchViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/search/viewmodel/SearchViewModel$e;->e:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ldg/a;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/transsion/search/viewmodel/SearchViewModel$e;->d:Lcom/transsion/search/viewmodel/SearchViewModel;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/search/viewmodel/SearchViewModel;->t()Landroidx/lifecycle/b0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/transsion/search/viewmodel/SearchViewModel$e;->e:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/search/bean/SearchSuggestEntity;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/transsion/search/viewmodel/SearchViewModel$e;->e(Lcom/transsion/search/bean/SearchSuggestEntity;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e(Lcom/transsion/search/bean/SearchSuggestEntity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/search/viewmodel/SearchViewModel$e;->d:Lcom/transsion/search/viewmodel/SearchViewModel;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/search/viewmodel/SearchViewModel$e;->e:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/transsion/search/viewmodel/SearchViewModel;->j(Lcom/transsion/search/viewmodel/SearchViewModel;Ljava/lang/String;Lcom/transsion/search/bean/SearchSuggestEntity;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
