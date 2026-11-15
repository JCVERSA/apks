.class public abstract Lkh5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkh5$c;
    }
.end annotation


# direct methods
.method public static a(Lcom/transsion/playercommon/data/CloudHistoryRequestData;)V
    .locals 1

    new-instance v0, Lkh5$b;

    invoke-direct {v0}, Lkh5$b;-><init>()V

    invoke-static {p0, v0}, Lkh5;->b(Lcom/transsion/playercommon/data/CloudHistoryRequestData;Lkh5$c;)V

    return-void
.end method

.method public static b(Lcom/transsion/playercommon/data/CloudHistoryRequestData;Lkh5$c;)V
    .locals 4

    const-string v0, "KtPlayRecordUtils"

    if-nez p0, :cond_0

    const-string v1, "Submit play record failed: data is null"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    const-string v1, "Data cannot be null"

    invoke-interface {p1, v1}, Lkh5$c;->onError(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/data/CloudHistoryRequestData;->getFileId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/playercommon/data/CloudHistoryRequestData;->getPlayDuration()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string p0, "Submit play record failed: fileId is null or empty"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    const-string p0, "File ID cannot be null or empty"

    invoke-interface {p1, p0}, Lkh5$c;->onError(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    if-gez v2, :cond_4

    const-string p0, "Submit play record failed: playDuration is negative"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_3

    const-string p0, "Play duration cannot be negative"

    invoke-interface {p1, p0}, Lkh5$c;->onError(Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Submitting play record: ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    invoke-static {}, Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;->getInstance()Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;

    move-result-object v2

    const-class v3, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;

    invoke-virtual {v2, v3}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;

    invoke-interface {v2, p0}, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;->submitPlayRecord(Lcom/transsion/playercommon/data/CloudHistoryRequestData;)Lmc7;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    new-instance v2, Lkh5$a;

    invoke-direct {v2, v1, p1}, Lkh5$a;-><init>(Ljava/lang/String;Lkh5$c;)V

    invoke-virtual {p0, v2}, Lmc7;->subscribe(Lpd7;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Submit play record exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lkh5$c;->onError(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method
