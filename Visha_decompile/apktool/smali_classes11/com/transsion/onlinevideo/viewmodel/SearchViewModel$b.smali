.class public Lcom/transsion/onlinevideo/viewmodel/SearchViewModel$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;->u(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel$b;->b:Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/retrofit/reponse/BaseResponse;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel$b;->b:Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;

    invoke-static {p0}, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;->g(Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel$b;->b:Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;

    invoke-static {p0}, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;->g(Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/retrofit/reponse/BaseResponse;

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel$b;->a(Lcom/transsion/retrofit/reponse/BaseResponse;)V

    return-void
.end method

.method public onSubscribe(Lrc2;)V
    .locals 0

    return-void
.end method
