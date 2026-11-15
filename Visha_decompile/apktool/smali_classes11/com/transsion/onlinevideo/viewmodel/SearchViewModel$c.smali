.class public Lcom/transsion/onlinevideo/viewmodel/SearchViewModel$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;->r(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;IILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel$c;->e:Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;

    iput p2, p0, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel$c;->b:I

    iput p3, p0, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel$c;->c:I

    iput-object p4, p0, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel$c;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/retrofit/reponse/BaseResponse;)V
    .locals 12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lb06;->a:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel$c;->e:Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;

    invoke-static {v2}, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;->e(Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v2, :cond_0

    iget v5, p0, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel$c;->b:I

    if-ne v5, v3, :cond_1

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getRecords()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getRecords()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getTotal()I

    move-result p1

    int-to-float v3, p1

    iget v5, p0, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel$c;->c:I

    int-to-float v5, v5

    div-float/2addr v3, v5

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v3, v5

    iget v5, p0, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel$c;->b:I

    if-lt v5, v3, :cond_3

    if-ne v5, v3, :cond_2

    iget v3, p0, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel$c;->c:I

    rem-int/2addr p1, v3

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel$c;->e:Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;

    invoke-static {p1}, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;->e(Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel$c;->e:Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;

    invoke-static {p1}, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;->f(Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel$c;->e:Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;

    invoke-static {p1}, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;->e(Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel$c;->e:Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;

    invoke-static {p1}, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;->f(Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v0, "keyword"

    iget-object p0, p0, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel$c;->d:Ljava/lang/String;

    const-string v1, "vd_ott_search_completed"

    const-string v2, "duration"

    invoke-static {v1, v2, p1, v0, p0}, Lhb0;->markTrackTwo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel$c;->e:Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;

    invoke-static {p1}, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;->e(Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel$c;->e:Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;

    invoke-static {p1}, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;->f(Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object v9, p0, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel$c;->d:Ljava/lang/String;

    const-string v10, "error_type"

    const-string v11, "no_results"

    const-string v5, "vd_ott_search_completed"

    const-string v6, "duration"

    const-string v8, "keyword"

    invoke-static/range {v5 .. v11}, Lhb0;->markTrackThree(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 9

    iget-object v0, p0, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel$c;->e:Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;

    invoke-static {v0}, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;->e(Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel$c;->e:Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;

    invoke-static {v0}, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;->f(Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lb06;->a:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v6, p0, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel$c;->d:Ljava/lang/String;

    instance-of p0, p1, Ljava/net/SocketTimeoutException;

    if-eqz p0, :cond_0

    const-string p0, " timeout"

    :goto_0
    move-object v8, p0

    goto :goto_1

    :cond_0
    const-string p0, " no_network"

    goto :goto_0

    :goto_1
    const-string v2, "vd_ott_search_completed"

    const-string v3, "duration"

    const-string v5, "keyword"

    const-string v7, "error_type"

    invoke-static/range {v2 .. v8}, Lhb0;->markTrackThree(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/retrofit/reponse/BaseResponse;

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel$c;->a(Lcom/transsion/retrofit/reponse/BaseResponse;)V

    return-void
.end method

.method public onSubscribe(Lrc2;)V
    .locals 0

    return-void
.end method
