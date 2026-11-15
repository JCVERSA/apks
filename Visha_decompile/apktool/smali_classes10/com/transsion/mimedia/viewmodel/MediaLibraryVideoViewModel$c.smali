.class public final Lcom/transsion/mimedia/viewmodel/MediaLibraryVideoViewModel$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/mimedia/viewmodel/MediaLibraryVideoViewModel;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/mimedia/viewmodel/MediaLibraryVideoViewModel;


# direct methods
.method public constructor <init>(Lcom/transsion/mimedia/viewmodel/MediaLibraryVideoViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/mimedia/viewmodel/MediaLibraryVideoViewModel$c;->b:Lcom/transsion/mimedia/viewmodel/MediaLibraryVideoViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/retrofit/reponse/BaseResponse;)V
    .locals 2

    const-string v0, "response"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelCollectMediaLibrary response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaLibraryVideoViewModel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/mimedia/viewmodel/MediaLibraryVideoViewModel$c;->b:Lcom/transsion/mimedia/viewmodel/MediaLibraryVideoViewModel;

    invoke-virtual {p0}, Lcom/transsion/mimedia/viewmodel/MediaLibraryVideoViewModel;->e()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/mimedia/viewmodel/MediaLibraryVideoViewModel$c;->b:Lcom/transsion/mimedia/viewmodel/MediaLibraryVideoViewModel;

    invoke-virtual {p0}, Lcom/transsion/mimedia/viewmodel/MediaLibraryVideoViewModel;->e()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

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
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/mimedia/viewmodel/MediaLibraryVideoViewModel$c;->b:Lcom/transsion/mimedia/viewmodel/MediaLibraryVideoViewModel;

    invoke-virtual {p0}, Lcom/transsion/mimedia/viewmodel/MediaLibraryVideoViewModel;->e()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cancelCollectMediaLibrary onError "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaLibraryVideoViewModel"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/retrofit/reponse/BaseResponse;

    invoke-virtual {p0, p1}, Lcom/transsion/mimedia/viewmodel/MediaLibraryVideoViewModel$c;->a(Lcom/transsion/retrofit/reponse/BaseResponse;)V

    return-void
.end method

.method public onSubscribe(Lrc2;)V
    .locals 0

    const-string p0, "d"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
