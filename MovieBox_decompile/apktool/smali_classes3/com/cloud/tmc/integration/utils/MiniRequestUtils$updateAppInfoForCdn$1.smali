.class public final Lcom/cloud/tmc/integration/utils/MiniRequestUtils$updateAppInfoForCdn$1;
.super Lcom/cloud/tmc/integration/net/TmcResponseCallback;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/utils/MiniRequestUtils;->updateAppInfoForCdn(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloud/tmc/integration/net/TmcResponseCallback<",
        "Lcom/cloud/tmc/integration/model/AppInfoModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J,\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0014\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000bH\u0016J,\u0010\r\u001a\u00020\u00062\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00082\u0014\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000bH\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/cloud/tmc/integration/utils/MiniRequestUtils$updateAppInfoForCdn$1",
        "Lcom/cloud/tmc/integration/net/TmcResponseCallback;",
        "Lcom/cloud/tmc/integration/model/AppInfoModel;",
        "getType",
        "Ljava/lang/reflect/Type;",
        "onFail",
        "",
        "fail",
        "Lcom/cloud/tmc/integration/net/BaseResponse;",
        "",
        "headers",
        "",
        "",
        "onSuccess",
        "bean",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $failure:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/cloud/tmc/integration/net/BaseResponse<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $success:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/cloud/tmc/integration/net/BaseResponse<",
            "Lcom/cloud/tmc/integration/model/AppInfoModel;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/cloud/tmc/integration/net/BaseResponse<",
            "Lcom/cloud/tmc/integration/model/AppInfoModel;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/cloud/tmc/integration/net/BaseResponse<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/utils/MiniRequestUtils$updateAppInfoForCdn$1;->$success:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/integration/utils/MiniRequestUtils$updateAppInfoForCdn$1;->$failure:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/cloud/tmc/integration/net/TmcResponseCallback;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/reflect/Type;
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/integration/utils/MiniRequestUtils$updateAppInfoForCdn$1$getType$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/integration/utils/MiniRequestUtils$updateAppInfoForCdn$1$getType$1;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "object : TypeToken<BaseR\u2026ppInfoModel?>?>() {}.type"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public onFail(Lcom/cloud/tmc/integration/net/BaseResponse;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/net/BaseResponse<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string p2, "fail"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "TmcApp: MiniRequestUtils"

    .line 7
    .line 8
    const-string v0, "updateAppInfoForServer failed"

    .line 9
    .line 10
    invoke-static {p2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object p2, p0, Lcom/cloud/tmc/integration/utils/MiniRequestUtils$updateAppInfoForCdn$1;->$failure:Lkotlin/jvm/functions/Function1;

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/cloud/tmc/integration/net/BaseResponse;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/net/BaseResponse<",
            "Lcom/cloud/tmc/integration/model/AppInfoModel;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string p2, "bean"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "TmcApp: MiniRequestUtils"

    .line 7
    .line 8
    const-string v0, "updateAppInfoForServer success"

    .line 9
    .line 10
    invoke-static {p2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object p2, p0, Lcom/cloud/tmc/integration/utils/MiniRequestUtils$updateAppInfoForCdn$1;->$success:Lkotlin/jvm/functions/Function1;

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
