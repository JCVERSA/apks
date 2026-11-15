.class public Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel$b;->b:Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/retrofit/reponse/BaseResponse;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestMIMediaLibraryList "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadMainViewModel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getRecords()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel$b;->b:Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;

    iget-object p0, p0, Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getRecords()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    sget-object p0, Ls21;->b:Ls21$a;

    invoke-virtual {p0}, Ls21$a;->a()Ls21;

    move-result-object p0

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getRecords()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0}, Ls21;->m(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getRecords()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/transsion/retrofit/cache/CacheManager;->getInstance()Lcom/transsion/retrofit/cache/CacheManager;

    move-result-object p1

    const-string v0, "download_mi_media_library_cache"

    invoke-virtual {p1, v0, p0}, Lcom/transsion/retrofit/cache/CacheManager;->setCache(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel$b;->b:Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;

    iget-object p0, p0, Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    const/4 p1, 0x0

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

    iget-object p0, p0, Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel$b;->b:Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;

    iget-object p0, p0, Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/retrofit/reponse/BaseResponse;

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel$b;->a(Lcom/transsion/retrofit/reponse/BaseResponse;)V

    return-void
.end method

.method public onSubscribe(Lrc2;)V
    .locals 0

    return-void
.end method
