.class public Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;->e(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel$a;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/retrofit/reponse/BaseResponse;)V
    .locals 2

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel$a;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;

    iget-object v0, v0, Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    const/16 v1, 0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSerials()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->setVideoSerials(Ljava/util/List;)V

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSeries()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->setVideoSeries(Ljava/util/List;)V

    :cond_2
    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSerialsNotIntact()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->setVideoSerialsNotIntact(Ljava/util/List;)V

    :cond_3
    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSerials()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSerials()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/transsion/vishaplayersdk/data/EpisodesComparator;

    invoke-direct {v1}, Lcom/transsion/vishaplayersdk/data/EpisodesComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->clear()V

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->parseData(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel$a;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_4
    return-void

    :cond_5
    :goto_0
    sget v0, Lcom/transsion/onlinevideo/R$string;->loading_error:I

    invoke-static {v0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getCode()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_6

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel$a;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void

    :cond_6
    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel$a;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    const/16 p1, 0x1f5

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

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel$a;->b:Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    const/16 p1, 0x193

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/retrofit/reponse/BaseResponse;

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel$a;->a(Lcom/transsion/retrofit/reponse/BaseResponse;)V

    return-void
.end method

.method public onSubscribe(Lrc2;)V
    .locals 0

    return-void
.end method
