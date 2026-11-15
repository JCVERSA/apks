.class final Lcom/cloud/tmc/offline/download/utils/OfflineUtils$isNeedDownload$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->isNeedDownload(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/n0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.cloud.tmc.offline.download.utils.OfflineUtils$isNeedDownload$2$1"
    f = "OfflineUtils.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $diffUpdateEntity:Lcom/cloud/h5update/bean/UpdateEntity;

.field final synthetic $offPkgConfigCache:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

.field label:I


# direct methods
.method constructor <init>(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Lcom/cloud/h5update/bean/UpdateEntity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/offline/download/model/OffPkgConfig;",
            "Lcom/cloud/h5update/bean/UpdateEntity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/cloud/tmc/offline/download/utils/OfflineUtils$isNeedDownload$2$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/offline/download/utils/OfflineUtils$isNeedDownload$2$1;->$offPkgConfigCache:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/offline/download/utils/OfflineUtils$isNeedDownload$2$1;->$diffUpdateEntity:Lcom/cloud/h5update/bean/UpdateEntity;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/cloud/tmc/offline/download/utils/OfflineUtils$isNeedDownload$2$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/utils/OfflineUtils$isNeedDownload$2$1;->$offPkgConfigCache:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/cloud/tmc/offline/download/utils/OfflineUtils$isNeedDownload$2$1;->$diffUpdateEntity:Lcom/cloud/h5update/bean/UpdateEntity;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils$isNeedDownload$2$1;-><init>(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Lcom/cloud/h5update/bean/UpdateEntity;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils$isNeedDownload$2$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/n0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils$isNeedDownload$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/offline/download/utils/OfflineUtils$isNeedDownload$2$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils$isNeedDownload$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/cloud/tmc/offline/download/utils/OfflineUtils$isNeedDownload$2$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    sget-object p1, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineUtils;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/utils/OfflineUtils$isNeedDownload$2$1;->$offPkgConfigCache:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getGroup()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/cloud/tmc/offline/download/utils/OfflineUtils$isNeedDownload$2$1;->$offPkgConfigCache:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getVersion()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    const-string v1, ""

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/cloud/tmc/offline/download/utils/OfflineUtils$isNeedDownload$2$1;->$diffUpdateEntity:Lcom/cloud/h5update/bean/UpdateEntity;

    .line 33
    .line 34
    invoke-virtual {p1, v0, v1, v2}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->deleteOfflineZipUnCompressDir(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/h5update/bean/UpdateEntity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    goto :goto_2

    .line 38
    :goto_1
    const-string v0, "TmcOfflineDownload: OfflineUtils"

    .line 39
    .line 40
    const-string v1, "Error deleting"

    .line 41
    .line 42
    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 46
    .line 47
    return-object p1

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1
.end method
