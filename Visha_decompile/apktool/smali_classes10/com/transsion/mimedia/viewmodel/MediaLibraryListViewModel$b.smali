.class public final Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;->g(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;

.field public final synthetic c:I


# direct methods
.method public constructor <init>(Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel$b;->b:Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;

    iput p2, p0, Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel$b;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/retrofit/reponse/BaseResponse;)V
    .locals 4

    const-string v0, "response"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getCode()I

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getRecords()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;

    invoke-virtual {v3, v1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->setMediaLibraryCollectFlag(Z)V

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel$b;->c:I

    if-ne v2, v1, :cond_2

    iget-object v2, p0, Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel$b;->b:Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;

    invoke-virtual {v2}, Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;->e()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel$b;->b:Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;

    invoke-static {v2, v0}, Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;->b(Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;Ljava/util/List;)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel$b;->b:Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;

    invoke-virtual {v2}, Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;->e()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_3

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2}, Li81;->e1(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_4

    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v3, p0, Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel$b;->b:Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;

    invoke-virtual {v3}, Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;->e()Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel$b;->b:Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;

    invoke-virtual {v2}, Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;->f()I

    move-result v2

    if-ge v0, v2, :cond_5

    iget-object p0, p0, Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel$b;->b:Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;

    invoke-virtual {p0}, Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;->d()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel$b;->b:Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;

    invoke-virtual {v0}, Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;->e()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getTotal()I

    move-result p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_6

    iget-object p0, p0, Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel$b;->b:Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;

    invoke-virtual {p0}, Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;->d()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    iget-object p0, p0, Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel$b;->b:Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;

    invoke-virtual {p0}, Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;->d()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    iget-object p0, p0, Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel$b;->b:Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;

    invoke-virtual {p0}, Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;->d()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_2
    return-void

    :cond_8
    :goto_3
    iget-object p0, p0, Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel$b;->b:Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;

    invoke-virtual {p0}, Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;->d()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel$b;->b:Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;

    invoke-virtual {p0}, Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;->d()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getMediaLibraryCollectList onError "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaLibraryListViewModel"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/retrofit/reponse/BaseResponse;

    invoke-virtual {p0, p1}, Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel$b;->a(Lcom/transsion/retrofit/reponse/BaseResponse;)V

    return-void
.end method

.method public onSubscribe(Lrc2;)V
    .locals 0

    const-string p0, "d"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
