.class public final Lcom/transsion/search/viewmodel/SearchViewModel$a;
.super Ldg/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/search/viewmodel/SearchViewModel;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/search/viewmodel/SearchViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/search/viewmodel/SearchViewModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/search/viewmodel/SearchViewModel$a;->d:Lcom/transsion/search/viewmodel/SearchViewModel;

    .line 2
    .line 3
    invoke-direct {p0}, Ldg/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/transsion/search/viewmodel/SearchViewModel$a;->d:Lcom/transsion/search/viewmodel/SearchViewModel;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/search/viewmodel/SearchViewModel;->l()Landroidx/lifecycle/b0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 p2, 0x0

    .line 8
    invoke-virtual {p1, p2}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/search/bean/HotSubjectEntity;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/transsion/search/viewmodel/SearchViewModel$a;->e(Lcom/transsion/search/bean/HotSubjectEntity;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e(Lcom/transsion/search/bean/HotSubjectEntity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search/viewmodel/SearchViewModel$a;->d:Lcom/transsion/search/viewmodel/SearchViewModel;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/search/viewmodel/SearchViewModel;->l()Landroidx/lifecycle/b0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
