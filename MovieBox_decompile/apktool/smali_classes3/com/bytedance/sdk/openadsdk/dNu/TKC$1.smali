.class final Lcom/bytedance/sdk/openadsdk/dNu/TKC$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/dNu/sP;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/dNu/TKC;->Sj()Lcom/bytedance/sdk/openadsdk/dNu/Sj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
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
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->TKC()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getOnceLogCount()I
    .locals 3

    .line 1
    const-string v0, "bus_monitor_config"

    .line 2
    .line 3
    const-string v1, "once_count"

    .line 4
    .line 5
    const/16 v2, 0xa

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/dx/Sj;->Sj(Ljava/lang/String;Ljava/lang/String;I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/16 v1, 0x64

    .line 12
    .line 13
    if-gt v0, v1, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x5

    .line 16
    if-ge v0, v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return v0

    .line 20
    :cond_1
    :goto_0
    return v2
.end method

.method public getOnceLogInterval()I
    .locals 3

    .line 1
    const-string v0, "bus_monitor_config"

    .line 2
    .line 3
    const-string v1, "once_interval"

    .line 4
    .line 5
    const/16 v2, 0x2710

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/dx/Sj;->Sj(Ljava/lang/String;Ljava/lang/String;I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-ge v0, v2, :cond_0

    .line 12
    .line 13
    return v2

    .line 14
    :cond_0
    return v0
.end method

.method public getSafeHandlerThread(Ljava/lang/String;I)Landroid/os/HandlerThread;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/Dq;->Sj(Ljava/lang/String;I)Landroid/os/HandlerThread;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getUploadIntervalTime()I
    .locals 3

    .line 1
    const-string v0, "interval"

    .line 2
    .line 3
    const v1, 0x2932e00

    .line 4
    .line 5
    .line 6
    const-string v2, "bus_monitor_config"

    .line 7
    .line 8
    invoke-static {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/dx/Sj;->Sj(Ljava/lang/String;Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const v1, 0x36ee80

    .line 13
    .line 14
    .line 15
    if-ge v0, v1, :cond_0

    .line 16
    .line 17
    const v0, 0x5265c00

    .line 18
    .line 19
    .line 20
    :cond_0
    return v0
.end method

.method public isMonitorOpen()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->EjP()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->EjP()Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_0
    const-string v0, "bus_monitor_config"

    .line 17
    .line 18
    const-string v1, "enable"

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/dx/Sj;->Sj(Ljava/lang/String;Ljava/lang/String;I)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x1

    .line 26
    if-ne v0, v1, :cond_1

    .line 27
    .line 28
    move v2, v1

    .line 29
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->Sj(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->EjP()Ljava/lang/Boolean;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    return v0
.end method

.method public onMonitorUpload(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;

    .line 25
    .line 26
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj()Lcom/bytedance/sdk/openadsdk/Zq/TKC;

    .line 27
    .line 28
    .line 29
    new-instance v1, Lcom/bytedance/sdk/openadsdk/dNu/TKC$1$1;

    .line 30
    .line 31
    invoke-direct {v1, p0, v0}, Lcom/bytedance/sdk/openadsdk/dNu/TKC$1$1;-><init>(Lcom/bytedance/sdk/openadsdk/dNu/TKC$1;Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;)V

    .line 32
    .line 33
    .line 34
    const-string v0, "bus_monitor"

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Zq/sP;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    :goto_1
    return-void
.end method
