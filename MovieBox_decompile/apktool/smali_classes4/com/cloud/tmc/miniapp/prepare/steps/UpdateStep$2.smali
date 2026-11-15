.class public Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep$2;
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

.field public final synthetic OooO0Oo:Ljava/lang/String;

.field public final synthetic OooO0o:Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep;

.field public final synthetic OooO0o0:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/PrepareContext;Ljava/lang/String;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep$2;->OooO0o:Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep$2;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep$2;->OooO0O0:Lcom/cloud/tmc/integration/model/AppModel;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep$2;->OooO0OO:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep$2;->OooO0Oo:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep$2;->OooO0o0:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/cloud/tmc/integration/net/TmcResponseCallback;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/reflect/Type;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep$2$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep$2$1;-><init>(Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep$2;)V

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
    .locals 10
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
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep$2;->OooO0o:Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 4
    .line 5
    const-string v1, "Step_UPDATE_server failed"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep$2;->OooO0o:Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep;

    .line 11
    .line 12
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep$2;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    .line 13
    .line 14
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep$2;->OooO0O0:Lcom/cloud/tmc/integration/model/AppModel;

    .line 15
    .line 16
    iget-object v6, p0, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep$2;->OooO0OO:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 17
    .line 18
    iget-object v7, p0, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep$2;->OooO0Oo:Ljava/lang/String;

    .line 19
    .line 20
    const-string v8, "server"

    .line 21
    .line 22
    move-object v3, p1

    .line 23
    move-object v9, p2

    .line 24
    invoke-virtual/range {v2 .. v9}, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep;->OooO00o(Lcom/cloud/tmc/integration/net/BaseResponse;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/PrepareContext;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onSuccess(Lcom/cloud/tmc/integration/net/BaseResponse;Ljava/util/Map;)V
    .locals 11
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
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep$2;->OooO0o:Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 4
    .line 5
    const-string v1, "Step_UPDATE_server success"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep$2;->OooO0o:Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep;

    .line 11
    .line 12
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep$2;->OooO0o0:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

    .line 13
    .line 14
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep$2;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    .line 15
    .line 16
    iget-object v6, p0, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep$2;->OooO0OO:Lcom/cloud/tmc/integration/model/PrepareContext;

    .line 17
    .line 18
    iget-object v7, p0, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep$2;->OooO0Oo:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v8, p0, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep$2;->OooO0O0:Lcom/cloud/tmc/integration/model/AppModel;

    .line 21
    .line 22
    const-string v9, "server"

    .line 23
    .line 24
    move-object v3, p1

    .line 25
    move-object v10, p2

    .line 26
    invoke-virtual/range {v2 .. v10}, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep;->OooO00o(Lcom/cloud/tmc/integration/net/BaseResponse;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Ljava/lang/String;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;Ljava/util/Map;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
