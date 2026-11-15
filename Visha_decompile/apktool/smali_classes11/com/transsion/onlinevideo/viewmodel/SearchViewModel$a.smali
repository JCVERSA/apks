.class public Lcom/transsion/onlinevideo/viewmodel/SearchViewModel$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;->l(Landroid/content/Context;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel$a;->c:Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;

    iput p2, p0, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/retrofit/reponse/BaseResponse;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel$a;->c:Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;

    invoke-static {v0}, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;->a(Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel$a;->b:I

    if-ne v2, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel$a;->c:Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;

    invoke-static {p1}, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;->a(Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel$a;->c:Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;

    invoke-static {p0}, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;->b(Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel$a;->c:Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;

    invoke-static {p0}, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;->b(Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/retrofit/reponse/BaseResponse;

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel$a;->a(Lcom/transsion/retrofit/reponse/BaseResponse;)V

    return-void
.end method

.method public onSubscribe(Lrc2;)V
    .locals 0

    return-void
.end method
