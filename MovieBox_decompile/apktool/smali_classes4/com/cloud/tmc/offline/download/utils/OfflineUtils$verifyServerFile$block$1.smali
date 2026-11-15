.class final Lcom/cloud/tmc/offline/download/utils/OfflineUtils$verifyServerFile$block$1;
.super Lkotlin/jvm/internal/Lambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->verifyServerFile(Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "()Ljava/lang/Boolean;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $appId:Ljava/lang/String;

.field final synthetic $url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/offline/download/utils/OfflineUtils$verifyServerFile$block$1;->$url:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/offline/download/utils/OfflineUtils$verifyServerFile$block$1;->$appId:Ljava/lang/String;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 12

    .line 2
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/offline/download/utils/OfflineUtils$verifyServerFile$block$1;->$appId:Ljava/lang/String;

    .line 4
    new-instance v2, Lcom/cloud/tmc/offline/download/utils/OfflineUtils$verifyServerFile$block$1$invoke$$inlined$-addInterceptor$1;

    invoke-direct {v2, v1}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils$verifyServerFile$block$1$invoke$$inlined$-addInterceptor$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 6
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v2, p0, Lcom/cloud/tmc/offline/download/utils/OfflineUtils$verifyServerFile$block$1;->$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->execute(Lokhttp3/Call;)Lokhttp3/Response;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v1

    const/16 v2, 0x130

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "offline_pkg_verify_server_status"

    const-string v6, "offline_pkg_url"

    const-string v7, "offline_pkg_appId"

    const-string v8, ""

    const-class v9, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    const-string v10, "TmcOfflineDownload: OfflineUtils"

    if-ne v1, v2, :cond_0

    .line 9
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/utils/OfflineUtils$verifyServerFile$block$1;->$url:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "verifyServerFile: \u79bb\u7ebf\u6587\u4ef6\u6821\u9a8c\u6210\u529f\uff0cNot Modified\uff0curl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {v9}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 11
    iget-object v1, p0, Lcom/cloud/tmc/offline/download/utils/OfflineUtils$verifyServerFile$block$1;->$appId:Ljava/lang/String;

    .line 12
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->OFFLINE_VERIFY_SERVER_FILE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    .line 13
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    iget-object v10, p0, Lcom/cloud/tmc/offline/download/utils/OfflineUtils$verifyServerFile$block$1;->$appId:Ljava/lang/String;

    iget-object v11, p0, Lcom/cloud/tmc/offline/download/utils/OfflineUtils$verifyServerFile$block$1;->$url:Ljava/lang/String;

    .line 14
    invoke-virtual {v9, v7, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v9, v6, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v9, v5, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 17
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    invoke-interface {v0, v1, v2, v8, v9}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 19
    :cond_0
    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/utils/OfflineUtils$verifyServerFile$block$1;->$url:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "verifyServerFile: \u8bf7\u6c42\u6210\u529f\uff0c\u672a\u547d\u4e2d\u79bb\u7ebf\u6587\u4ef6\uff0c\u6587\u4ef6\u5931\u6548\uff0curl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-static {v9}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 22
    iget-object v1, p0, Lcom/cloud/tmc/offline/download/utils/OfflineUtils$verifyServerFile$block$1;->$appId:Ljava/lang/String;

    .line 23
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->OFFLINE_VERIFY_SERVER_FILE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    .line 24
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    iget-object v10, p0, Lcom/cloud/tmc/offline/download/utils/OfflineUtils$verifyServerFile$block$1;->$appId:Ljava/lang/String;

    iget-object v11, p0, Lcom/cloud/tmc/offline/download/utils/OfflineUtils$verifyServerFile$block$1;->$url:Ljava/lang/String;

    .line 25
    invoke-virtual {v9, v7, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v9, v6, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v9, v5, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 28
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 29
    invoke-interface {v0, v1, v2, v8, v9}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    move v3, v4

    goto :goto_1

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/utils/OfflineUtils$verifyServerFile$block$1;->$url:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "verifyServerFile: \u8bf7\u6c42\u5931\u8d25\uff0curl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-static {v9}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 32
    iget-object v1, p0, Lcom/cloud/tmc/offline/download/utils/OfflineUtils$verifyServerFile$block$1;->$appId:Ljava/lang/String;

    .line 33
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->OFFLINE_VERIFY_SERVER_FILE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    .line 34
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iget-object v9, p0, Lcom/cloud/tmc/offline/download/utils/OfflineUtils$verifyServerFile$block$1;->$appId:Ljava/lang/String;

    iget-object v10, p0, Lcom/cloud/tmc/offline/download/utils/OfflineUtils$verifyServerFile$block$1;->$url:Ljava/lang/String;

    .line 35
    invoke-virtual {v3, v7, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v3, v6, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x2

    .line 37
    invoke-virtual {v3, v5, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 38
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 39
    invoke-interface {v0, v1, v2, v8, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 40
    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils$verifyServerFile$block$1;->invoke()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
