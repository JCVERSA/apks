.class public final Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable$run$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable$run$1",
        "Lokhttp3/Callback;",
        "onFailure",
        "",
        "call",
        "Lokhttp3/Call;",
        "e",
        "Ljava/io/IOException;",
        "onResponse",
        "response",
        "Lokhttp3/Response;",
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
.field final synthetic this$0:Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable$run$1;->this$0:Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "e"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable$run$1;->this$0:Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable;->getUpdateChecker()Lcom/cloud/tmc/offline/download/th5update/UpdateChecker;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable$run$1;->this$0:Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable;->getUrl()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable$run$1;->this$0:Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable;->getUpdateManager()Lv6/c;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {p1, v0, v1, p2}, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker;->access$onCheckError(Lcom/cloud/tmc/offline/download/th5update/UpdateChecker;Ljava/lang/String;Lv6/c;Ljava/lang/Exception;)V

    .line 30
    .line 31
    .line 32
    const-string p1, "TmcOfflineDownload: UpdateChecker"

    .line 33
    .line 34
    const-string v0, "LoadConfig onFailure"

    .line 35
    .line 36
    invoke-static {p1, v0, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    sget-object p1, Lcom/cloud/h5update/TH5Update;->c:Lcom/cloud/h5update/TH5Update$a;

    .line 40
    .line 41
    const/4 p2, 0x0

    .line 42
    invoke-virtual {p1, p2}, Lcom/cloud/h5update/TH5Update$a;->p(Z)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 3

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "response"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 p2, 0x0

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    move-object p1, p2

    .line 26
    :goto_0
    if-eqz p1, :cond_1

    .line 27
    .line 28
    iget-object p2, p0, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable$run$1;->this$0:Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable;

    .line 29
    .line 30
    invoke-virtual {p2}, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable;->getUpdateChecker()Lcom/cloud/tmc/offline/download/th5update/UpdateChecker;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p2}, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable;->getUpdateManager()Lv6/c;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {v0, p1, p2}, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker;->onCheckSuccess(Ljava/lang/String;Lv6/c;)V

    .line 39
    .line 40
    .line 41
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 42
    .line 43
    :cond_1
    if-nez p2, :cond_2

    .line 44
    .line 45
    iget-object p1, p0, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable$run$1;->this$0:Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable;->getUpdateChecker()Lcom/cloud/tmc/offline/download/th5update/UpdateChecker;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable;->getUrl()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable;->getUpdateManager()Lv6/c;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    new-instance v1, Ljava/lang/NullPointerException;

    .line 60
    .line 61
    const-string v2, "\u67e5\u8be2\u6570\u636e\u5931\u8d25"

    .line 62
    .line 63
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-static {p2, v0, p1, v1}, Lcom/cloud/tmc/offline/download/th5update/UpdateChecker;->access$onCheckError(Lcom/cloud/tmc/offline/download/th5update/UpdateChecker;Ljava/lang/String;Lv6/c;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :goto_1
    const-string p2, "TmcOfflineDownload: UpdateChecker"

    .line 71
    .line 72
    const-string v0, "LoadConfig onResponse"

    .line 73
    .line 74
    invoke-static {p2, v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    sget-object p1, Lcom/cloud/h5update/TH5Update;->c:Lcom/cloud/h5update/TH5Update$a;

    .line 78
    .line 79
    const/4 p2, 0x0

    .line 80
    invoke-virtual {p1, p2}, Lcom/cloud/h5update/TH5Update$a;->p(Z)V

    .line 81
    .line 82
    .line 83
    :cond_2
    :goto_2
    return-void
.end method
