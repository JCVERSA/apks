.class public final Lcom/transsion/search/viewmodel/SearchViewModel$b;
.super Ldg/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/search/viewmodel/SearchViewModel;->y(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/transsion/search/viewmodel/SearchViewModel$b;->d:Lcom/transsion/search/viewmodel/SearchViewModel;

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
    if-eqz p2, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Lcom/tn/lib/widget/toast/core/h;->l(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p1, p0, Lcom/transsion/search/viewmodel/SearchViewModel$b;->d:Lcom/transsion/search/viewmodel/SearchViewModel;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/transsion/search/viewmodel/SearchViewModel;->f(Lcom/transsion/search/viewmodel/SearchViewModel;)Landroidx/lifecycle/b0;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string p2, ""

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/search/bean/JoinGroupEntity;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/transsion/search/viewmodel/SearchViewModel$b;->e(Lcom/transsion/search/bean/JoinGroupEntity;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d(Lcom/tn/lib/net/bean/BaseDto;)V
    .locals 1

    .line 1
    const-string v0, "baseDto"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e(Lcom/transsion/search/bean/JoinGroupEntity;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/transsion/search/bean/JoinGroupEntity;->getM()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v1, v0

    .line 10
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-object p1, p0, Lcom/transsion/search/viewmodel/SearchViewModel$b;->d:Lcom/transsion/search/viewmodel/SearchViewModel;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/transsion/search/viewmodel/SearchViewModel;->f(Lcom/transsion/search/viewmodel/SearchViewModel;)Landroidx/lifecycle/b0;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v0, "succeed"

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    iget-object v1, p0, Lcom/transsion/search/viewmodel/SearchViewModel$b;->d:Lcom/transsion/search/viewmodel/SearchViewModel;

    .line 29
    .line 30
    invoke-static {v1}, Lcom/transsion/search/viewmodel/SearchViewModel;->f(Lcom/transsion/search/viewmodel/SearchViewModel;)Landroidx/lifecycle/b0;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/transsion/search/bean/JoinGroupEntity;->getM()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :cond_2
    invoke-virtual {v1, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
