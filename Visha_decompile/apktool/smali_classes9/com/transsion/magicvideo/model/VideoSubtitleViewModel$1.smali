.class Lcom/transsion/magicvideo/model/VideoSubtitleViewModel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->query(Lcom/transsion/playercommon/activities/BaseActivity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lpd7;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel$1;->this$0:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel$1;->this$0:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    iget-object v0, v0, Lcom/transsion/BaseViewModel;->netException:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel$1;->this$0:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    iget-object p0, p0, Lcom/transsion/BaseViewModel;->netState:Landroidx/lifecycle/MutableLiveData;

    sget-object p1, Lcom/transsion/NetState;->FAILED:Lcom/transsion/NetState;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onNext(Lcom/transsion/retrofit/reponse/BaseResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;",
            ">;>;)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 3
    invoke-static {p1}, Lfc7;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel$1;->this$0:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    iget-object v0, v0, Lcom/transsion/BaseViewModel;->netState:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/transsion/NetState;->EFFECTIVE:Lcom/transsion/NetState;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 5
    iget-object p0, p0, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel$1;->this$0:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    iget-object p0, p0, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->subtitleListNet:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel$1;->this$0:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    iget-object p0, p0, Lcom/transsion/BaseViewModel;->netState:Landroidx/lifecycle/MutableLiveData;

    sget-object p1, Lcom/transsion/NetState;->EMPTY:Lcom/transsion/NetState;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/retrofit/reponse/BaseResponse;

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel$1;->onNext(Lcom/transsion/retrofit/reponse/BaseResponse;)V

    return-void
.end method

.method public onSubscribe(Lrc2;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel$1;->this$0:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    iget-object p0, p0, Lcom/transsion/BaseViewModel;->netState:Landroidx/lifecycle/MutableLiveData;

    sget-object p1, Lcom/transsion/NetState;->LOADING:Lcom/transsion/NetState;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
