.class Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper;->getAppLayoutConfig(ILjava/lang/String;)V
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
.field final synthetic this$0:Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper;

.field final synthetic val$dataVersion:Ljava/lang/String;

.field final synthetic val$regionId:I


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper$1;->this$0:Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper;

    iput p2, p0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper$1;->val$regionId:I

    iput-object p3, p0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper$1;->val$dataVersion:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isSameVersion(Lcom/transsion/retrofit/reponse/BaseResponse;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Lcom/transsion/dbdata/beans/appconfig/AllLayoutBean;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper$1;->val$dataVersion:Ljava/lang/String;

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper$1;->val$dataVersion:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/appconfig/AllLayoutBean;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/appconfig/AllLayoutBean;->getDataVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "[OTT]onNext: dataVersion is same, ignore"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "AppLayoutConfigHelper"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OTT]onError:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "AppLayoutConfigHelper"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onNext(Lcom/transsion/retrofit/reponse/BaseResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Lcom/transsion/dbdata/beans/appconfig/AllLayoutBean;",
            ">;)V"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OTT] onNext regionId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper$1;->val$regionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppLayoutConfigHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 3
    invoke-direct {p0, p1}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper$1;->isSameVersion(Lcom/transsion/retrofit/reponse/BaseResponse;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper$1;->this$0:Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper;

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/appconfig/AllLayoutBean;

    iget p0, p0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper$1;->val$regionId:I

    int-to-long v1, p0

    invoke-virtual {v0, p1, v1, v2}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper;->saveLayoutConfig(Lcom/transsion/dbdata/beans/appconfig/AllLayoutBean;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/retrofit/reponse/BaseResponse;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper$1;->onNext(Lcom/transsion/retrofit/reponse/BaseResponse;)V

    return-void
.end method

.method public onSubscribe(Lrc2;)V
    .locals 0

    return-void
.end method
