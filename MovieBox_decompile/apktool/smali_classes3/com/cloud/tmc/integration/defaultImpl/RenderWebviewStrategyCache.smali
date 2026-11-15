.class public final Lcom/cloud/tmc/integration/defaultImpl/RenderWebviewStrategyCache;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/render/IRenderWebivewStrategyCache;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\n\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0002J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0006H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/defaultImpl/RenderWebviewStrategyCache;",
        "Lcom/cloud/tmc/render/IRenderWebivewStrategyCache;",
        "()V",
        "getData",
        "Lcom/cloud/tmc/render/bean/WebviewCacheStrategyBean;",
        "getShellWebviewCacheStrategy",
        "",
        "getSystemWebviewCacheStrategy",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final getData()Lcom/cloud/tmc/render/bean/WebviewCacheStrategyBean;
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 2
    .line 3
    const-string v1, "webviewCacheStrategy"

    .line 4
    .line 5
    const-string v2, "{\"systemWebView\": true, \"shellWebView\": true}"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-class v1, Lcom/cloud/tmc/render/bean/WebviewCacheStrategyBean;

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/cloud/tmc/render/bean/WebviewCacheStrategyBean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    return-object v0
.end method


# virtual methods
.method public getShellWebviewCacheStrategy()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/integration/defaultImpl/RenderWebviewStrategyCache;->getData()Lcom/cloud/tmc/render/bean/WebviewCacheStrategyBean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/cloud/tmc/render/bean/WebviewCacheStrategyBean;->getShellWebView()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x1

    .line 13
    :goto_0
    return v0
.end method

.method public getSystemWebviewCacheStrategy()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/integration/defaultImpl/RenderWebviewStrategyCache;->getData()Lcom/cloud/tmc/render/bean/WebviewCacheStrategyBean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/cloud/tmc/render/bean/WebviewCacheStrategyBean;->getSystemWebView()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x1

    .line 13
    :goto_0
    return v0
.end method
