.class public final Lcom/cloud/tmc/offline/download/OfflineManager$networkListener$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/utils/NetworkUtil$NetworkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/offline/download/OfflineManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/cloud/tmc/offline/download/OfflineManager$networkListener$1",
        "Lcom/cloud/tmc/kernel/utils/NetworkUtil$NetworkListener;",
        "onNetworkChanged",
        "",
        "ot",
        "Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;",
        "nt",
        "com.cloud.tmc.offline_download"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onNetworkChanged(Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;)V
    .locals 7

    .line 1
    :try_start_0
    invoke-static {p2}, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->transferNetworkType(Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string p2, "none"

    .line 6
    .line 7
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-nez p2, :cond_1

    .line 12
    .line 13
    const-string p2, "UNKNOWN"

    .line 14
    .line 15
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->access$getNetworkLoad()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    sget-object v0, Lcom/cloud/tmc/offline/download/OfflineManager;->INSTANCE:Lcom/cloud/tmc/offline/download/OfflineManager;

    .line 29
    .line 30
    const-string v1, "condition_change_network"

    .line 31
    .line 32
    const/16 v5, 0xe

    .line 33
    .line 34
    const/4 v6, 0x0

    .line 35
    const/4 v2, 0x0

    .line 36
    const/4 v3, 0x0

    .line 37
    const/4 v4, 0x0

    .line 38
    invoke-static/range {v0 .. v6}, Lcom/cloud/tmc/offline/download/OfflineManager;->loadConfig$default(Lcom/cloud/tmc/offline/download/OfflineManager;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    :goto_0
    return-void

    .line 45
    :goto_1
    const-string p2, "TmcOfflineDownload: OfflineManager"

    .line 46
    .line 47
    const-string v0, "network failed!"

    .line 48
    .line 49
    invoke-static {p2, v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    :goto_2
    return-void
.end method
