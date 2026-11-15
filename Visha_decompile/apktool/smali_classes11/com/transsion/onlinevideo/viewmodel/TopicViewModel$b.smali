.class public Lcom/transsion/onlinevideo/viewmodel/TopicViewModel$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;->e([Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;ZII)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/viewmodel/TopicViewModel$b;->e:Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;

    iput-boolean p2, p0, Lcom/transsion/onlinevideo/viewmodel/TopicViewModel$b;->b:Z

    iput p3, p0, Lcom/transsion/onlinevideo/viewmodel/TopicViewModel$b;->c:I

    iput p4, p0, Lcom/transsion/onlinevideo/viewmodel/TopicViewModel$b;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/retrofit/reponse/BaseResponse;)V
    .locals 4

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getCode()I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getRecords()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/onlinevideo/viewmodel/TopicViewModel$b;->e:Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;

    invoke-static {v1}, Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;->b(Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/transsion/onlinevideo/viewmodel/TopicViewModel$b;->e:Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;

    invoke-static {p0}, Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;->a(Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-boolean v3, p0, Lcom/transsion/onlinevideo/viewmodel/TopicViewModel$b;->b:Z

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_3
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/transsion/onlinevideo/viewmodel/TopicViewModel$b;->e:Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;

    invoke-static {v0}, Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;->b(Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getTotal()I

    move-result p1

    iget v0, p0, Lcom/transsion/onlinevideo/viewmodel/TopicViewModel$b;->c:I

    div-int v1, p1, v0

    rem-int/2addr p1, v0

    const/4 v0, 0x1

    if-nez p1, :cond_4

    move p1, v2

    goto :goto_0

    :cond_4
    move p1, v0

    :goto_0
    add-int/2addr v1, p1

    iget p1, p0, Lcom/transsion/onlinevideo/viewmodel/TopicViewModel$b;->d:I

    if-gt v1, p1, :cond_5

    iget-object p0, p0, Lcom/transsion/onlinevideo/viewmodel/TopicViewModel$b;->e:Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;

    invoke-static {p0}, Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;->a(Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lcom/transsion/onlinevideo/viewmodel/TopicViewModel$b;->e:Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;

    invoke-static {p0}, Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;->a(Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_6
    :goto_2
    iget-object p0, p0, Lcom/transsion/onlinevideo/viewmodel/TopicViewModel$b;->e:Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;

    invoke-static {p0}, Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;->a(Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;)Landroidx/lifecycle/MutableLiveData;

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
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/viewmodel/TopicViewModel$b;->e:Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;

    invoke-static {p0}, Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;->a(Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/retrofit/reponse/BaseResponse;

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/viewmodel/TopicViewModel$b;->a(Lcom/transsion/retrofit/reponse/BaseResponse;)V

    return-void
.end method

.method public onSubscribe(Lrc2;)V
    .locals 0

    return-void
.end method
