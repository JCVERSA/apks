.class public Lcom/cloud/tmc/miniapp/prepare/steps/FwResInfoUpdateStep$1;
.super Lcom/cloud/tmc/integration/net/TmcResponseCallback;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloud/tmc/integration/net/TmcResponseCallback<",
        "Lcom/cloud/tmc/integration/model/AppInfoModel;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

.field public final synthetic OooO0O0:Lcom/cloud/tmc/integration/model/AppModel;

.field public final synthetic OooO0OO:Lcom/cloud/tmc/integration/model/PrepareContext;

.field public final synthetic OooO0Oo:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

.field public final synthetic OooO0o0:Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/FwResInfoUpdateStep$1;->OooO0o0:Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/FwResInfoUpdateStep$1;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/FwResInfoUpdateStep$1;->OooO0O0:Lcom/cloud/tmc/integration/model/AppModel;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/cloud/tmc/miniapp/prepare/steps/FwResInfoUpdateStep$1;->OooO0OO:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/cloud/tmc/miniapp/prepare/steps/FwResInfoUpdateStep$1;->OooO0Oo:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/cloud/tmc/integration/net/TmcResponseCallback;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/reflect/Type;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/FwResInfoUpdateStep$1$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/prepare/steps/FwResInfoUpdateStep$1$1;-><init>(Lcom/cloud/tmc/miniapp/prepare/steps/FwResInfoUpdateStep$1;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public onFail(Lcom/cloud/tmc/integration/net/BaseResponse;Ljava/util/Map;)V
    .locals 2
    .param p1    # Lcom/cloud/tmc/integration/net/BaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/net/BaseResponse<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/FwResInfoUpdateStep$1;->OooO0o0:Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO;

    .line 2
    .line 3
    iget-object p2, p2, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 4
    .line 5
    const-string v0, "Step_FRAMEWORK_UPDATE_\u6570\u636e\u66f4\u65b0\u5931\u8d25"

    .line 6
    .line 7
    invoke-static {p2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/FwResInfoUpdateStep$1;->OooO0o0:Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO;

    .line 11
    .line 12
    iget-boolean p2, p2, Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO;->OooO0oo:Z

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/FwResInfoUpdateStep$1;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    .line 17
    .line 18
    invoke-interface {p2, p2}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->unlock(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/FwResInfoUpdateStep$1;->OooO0O0:Lcom/cloud/tmc/integration/model/AppModel;

    .line 22
    .line 23
    if-nez p2, :cond_1

    .line 24
    .line 25
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/FwResInfoUpdateStep$1;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/net/BaseResponse;->getCode()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/net/BaseResponse;->getMessage()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string v1, "100000"

    .line 36
    .line 37
    invoke-static {v1, v0, p1}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->showUpdateStepErrorMsg(Ljava/lang/String;ILjava/lang/String;)Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-interface {p2, p1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/FwResInfoUpdateStep$1;->OooO0OO:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->setFrameWorkModel(Lcom/cloud/tmc/integration/model/AppModel;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/FwResInfoUpdateStep$1;->OooO0o0:Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO;

    .line 51
    .line 52
    iget-boolean p2, p1, Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO;->OooO0oo:Z

    .line 53
    .line 54
    if-eqz p2, :cond_2

    .line 55
    .line 56
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 57
    .line 58
    const-string p2, "Step_FRAMEWORK_UPDATE_\u540c\u6b65\u8df3\u8f6c"

    .line 59
    .line 60
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/FwResInfoUpdateStep$1;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    .line 64
    .line 65
    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToNext()V

    .line 66
    .line 67
    .line 68
    :cond_2
    :goto_0
    return-void
.end method

.method public onSuccess(Lcom/cloud/tmc/integration/net/BaseResponse;Ljava/util/Map;)V
    .locals 3
    .param p1    # Lcom/cloud/tmc/integration/net/BaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/net/BaseResponse<",
            "+",
            "Lcom/cloud/tmc/integration/model/AppInfoModel;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/net/BaseResponse;->getData()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/cloud/tmc/integration/model/AppInfoModel;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppInfoModel;->getAppId()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-eqz p2, :cond_1

    .line 19
    .line 20
    new-instance p1, Lcom/cloud/tmc/integration/net/BaseResponse;

    .line 21
    .line 22
    invoke-direct {p1}, Lcom/cloud/tmc/integration/net/BaseResponse;-><init>()V

    .line 23
    .line 24
    .line 25
    const/4 p2, 0x0

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/prepare/steps/FwResInfoUpdateStep$1;->onFail(Lcom/cloud/tmc/integration/net/BaseResponse;Ljava/util/Map;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/FwResInfoUpdateStep$1;->OooO0o0:Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/FwResInfoUpdateStep$1;->OooO0O0:Lcom/cloud/tmc/integration/model/AppModel;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/FwResInfoUpdateStep$1;->OooO0OO:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/FwResInfoUpdateStep$1;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    .line 37
    .line 38
    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO;->OooO00o(Lcom/cloud/tmc/integration/model/AppInfoModel;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
