.class Lcom/transsion/playercommon/vishaapis/appconfig/helper/PlayerConfigHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/vishaapis/appconfig/helper/PlayerConfigHelper;->requestPlayCompleteRecommend(Landroid/content/Context;)V
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
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/PlayerConfigHelper$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onNext(Lcom/transsion/retrofit/reponse/BaseResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Lcom/transsion/dbdata/beans/DownloadVideoRecommend;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getCode()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/DownloadVideoRecommend;

    .line 4
    iget-object p0, p0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/PlayerConfigHelper$1;->val$context:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/PlayerConfigHelper;->c(Lcom/transsion/dbdata/beans/DownloadVideoRecommend;Landroid/content/Context;)V

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/DownloadVideoRecommend;->getContent_recommend_info_list()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/DownloadVideoRecommend;->getContent_recommend_info_list()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/DownloadVideoRecommend;->getContent_recommend_info_list()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 7
    sput-object p1, Lcom/transsion/playercommon/core/MainApp;->B:Lcom/transsion/dbdata/beans/DownloadVideoRecommend;

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/retrofit/reponse/BaseResponse;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/PlayerConfigHelper$1;->onNext(Lcom/transsion/retrofit/reponse/BaseResponse;)V

    return-void
.end method

.method public onSubscribe(Lrc2;)V
    .locals 0

    return-void
.end method
