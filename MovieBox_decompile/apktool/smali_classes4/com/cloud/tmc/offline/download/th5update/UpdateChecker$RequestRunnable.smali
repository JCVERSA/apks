.class public final Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/offline/download/th5update/UpdateChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestRunnable"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010%\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\r\u0008\u0000\u0018\u00002\u00020\u0001BM\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0014\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0006\u0012\u0016\u0008\u0002\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\"\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0016R\"\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\u0016R\u0017\u0010\n\u001a\u00020\t8\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable;",
        "Ljava/lang/Runnable;",
        "Lcom/cloud/tmc/offline/download/th5update/UpdateChecker;",
        "updateChecker",
        "",
        "url",
        "",
        "headers",
        "params",
        "Lv6/c;",
        "updateManager",
        "<init>",
        "(Lcom/cloud/tmc/offline/download/th5update/UpdateChecker;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lv6/c;)V",
        "",
        "run",
        "()V",
        "Lcom/cloud/tmc/offline/download/th5update/UpdateChecker;",
        "getUpdateChecker",
        "()Lcom/cloud/tmc/offline/download/th5update/UpdateChecker;",
        "Ljava/lang/String;",
        "getUrl",
        "()Ljava/lang/String;",
        "Ljava/util/Map;",
        "Lv6/c;",
        "getUpdateManager",
        "()Lv6/c;",
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


# instance fields
.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final updateChecker:Lcom/cloud/tmc/offline/download/th5update/UpdateChecker;

.field private final updateManager:Lv6/c;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/offline/download/th5update/UpdateChecker;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lv6/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/offline/download/th5update/UpdateChecker;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lv6/c;",
            ")V"
        }
    .end annotation

    const-string v0, "updateChecker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable;->updateChecker:Lcom/cloud/tmc/offline/download/th5update/UpdateChecker;

    iput-object p2, p0, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable;->url:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable;->headers:Ljava/util/Map;

    .line 4
    iput-object p4, p0, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable;->params:Ljava/util/Map;

    .line 5
    iput-object p5, p0, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable;->updateManager:Lv6/c;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/cloud/tmc/offline/download/th5update/UpdateChecker;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lv6/c;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    const/4 p4, 0x0

    :cond_0
    move-object v4, p4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    .line 6
    invoke-direct/range {v0 .. v5}, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable;-><init>(Lcom/cloud/tmc/offline/download/th5update/UpdateChecker;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lv6/c;)V

    return-void
.end method


# virtual methods
.method public final getUpdateChecker()Lcom/cloud/tmc/offline/download/th5update/UpdateChecker;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable;->updateChecker:Lcom/cloud/tmc/offline/download/th5update/UpdateChecker;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUpdateManager()Lv6/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable;->updateManager:Lv6/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public run()V
    .locals 5

    .line 1
    :try_start_0
    sget-object v0, Lcom/tmc/network/HttpRequestor;->Companion:Lcom/tmc/network/HttpRequestor$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tmc/network/HttpRequestor$Companion;->getInstance()Lcom/tmc/network/HttpRequestor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable;->url:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable;->headers:Ljava/util/Map;

    .line 12
    .line 13
    iget-object v3, p0, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable;->params:Ljava/util/Map;

    .line 14
    .line 15
    new-instance v4, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable$run$1;

    .line 16
    .line 17
    invoke-direct {v4, p0}, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable$run$1;-><init>(Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tmc/network/HttpRequestor;->get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lokhttp3/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    iget-object v1, p0, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable;->updateChecker:Lcom/cloud/tmc/offline/download/th5update/UpdateChecker;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable;->url:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v3, p0, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable;->updateManager:Lv6/c;

    .line 30
    .line 31
    invoke-static {v1, v2, v3, v0}, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker;->access$onCheckError(Lcom/cloud/tmc/offline/download/th5update/UpdateChecker;Ljava/lang/String;Lv6/c;Ljava/lang/Exception;)V

    .line 32
    .line 33
    .line 34
    const-string v1, "TmcOfflineDownload: UpdateChecker"

    .line 35
    .line 36
    const-string v2, "LoadConfig RequestRunnable"

    .line 37
    .line 38
    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    :goto_0
    return-void
.end method
