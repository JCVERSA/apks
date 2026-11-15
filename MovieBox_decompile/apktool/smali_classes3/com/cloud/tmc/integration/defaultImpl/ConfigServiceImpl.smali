.class public final Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/service/ConfigService;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J*\u0010\u0007\u001a\u00020\u0006\"\u0004\u0008\u0000\u0010\u00082\u0006\u0010\t\u001a\u00020\u00042\u0008\u0010\n\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J\u001e\u0010\u0007\u001a\u0004\u0018\u00010\u00042\u0008\u0010\t\u001a\u0004\u0018\u00010\u00042\u0008\u0010\n\u001a\u0004\u0018\u00010\u0004H\u0016J\u001a\u0010\r\u001a\u00020\u000e2\u0008\u0010\t\u001a\u0004\u0018\u00010\u00042\u0006\u0010\n\u001a\u00020\u000eH\u0016J\u001a\u0010\u000f\u001a\u00020\u00102\u0008\u0010\t\u001a\u0004\u0018\u00010\u00042\u0006\u0010\n\u001a\u00020\u0010H\u0016J\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\t\u001a\u00020\u0004H\u0016J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\t\u001a\u00020\u0004H\u0016J\u0018\u0010\u0015\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0004H\u0016J\u001c\u0010\u0016\u001a\u00020\u00042\u0008\u0010\t\u001a\u0004\u0018\u00010\u00042\u0008\u0010\n\u001a\u0004\u0018\u00010\u0004H\u0016J\u0010\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u001a\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0004H\u0016J0\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u00042\u0014\u0010\u001b\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u001cH\u0016J\u0010\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u001a\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0004H\u0016J0\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u00042\u0014\u0010\u001b\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u001cH\u0016J\u001c\u0010\u001e\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0004H\u0016J\u0010\u0010 \u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0019H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;",
        "Lcom/cloud/tmc/kernel/service/ConfigService;",
        "()V",
        "TAG",
        "",
        "clearProcessCache",
        "",
        "getConfig",
        "T",
        "key",
        "defaultValue",
        "listener",
        "Lcom/cloud/tmc/kernel/service/ConfigService$OnConfigChangeListener;",
        "getConfigBoolean",
        "",
        "getConfigInt",
        "",
        "getConfigJsonArray",
        "Lcom/google/gson/JsonArray;",
        "getConfigJsonObject",
        "Lcom/google/gson/JsonObject;",
        "getConfigString",
        "getConfigWithProcessCache",
        "loadPreService",
        "context",
        "Landroid/content/Context;",
        "queryKey",
        "complete",
        "Lkotlin/Function1;",
        "loadService",
        "putConfigCache",
        "value",
        "updateConfigAppinfo",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "ConfigServiceImpl"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a(Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;->updateConfigAppinfo$lambda$4(Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getTAG$p(Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$updateConfigAppinfo(Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;->updateConfigAppinfo(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;->loadService$lambda$5(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;->loadPreService$lambda$0(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final loadPreService$lambda$0(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;)V
    .locals 3

    .line 1
    const-string v0, "$context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "this$0"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/CloudConfigUtils;

    .line 12
    .line 13
    invoke-virtual {v0, p0, p1, p2}, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->checkEnableConfigRequest(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Z

    .line 14
    .line 15
    .line 16
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    const-string v1, "[loadPreService]:"

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    :try_start_1
    iget-object p0, p3, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    new-instance p2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p1, " -> Config is not enabled"

    .line 35
    .line 36
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    iget-object v0, p3, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    .line 50
    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v1, " -> Config is enabled"

    .line 63
    .line 64
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    sget-object v0, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 75
    .line 76
    invoke-virtual {v0, p0}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigStoreInstance(Landroid/content/Context;)Lcom/cloud/tmc/integration/MiniAppConfigStore;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    new-instance v1, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$loadPreService$1$1;

    .line 81
    .line 82
    invoke-direct {v1, p1, p0, p2, p3}, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$loadPreService$1$1;-><init>(Ljava/lang/String;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, p1, v1}, Lcom/cloud/config/AbsConfigStore;->loadForService(Ljava/lang/String;Lcom/cloud/config/s;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :goto_0
    iget-object p1, p3, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    .line 90
    .line 91
    const-string p2, "[ConfigService]: Failed to loadPreService config "

    .line 92
    .line 93
    invoke-static {p1, p2, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    .line 95
    .line 96
    :goto_1
    return-void
.end method

.method private static final loadService$lambda$5(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;)V
    .locals 3

    .line 1
    const-string v0, "$context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "this$0"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/CloudConfigUtils;

    .line 12
    .line 13
    invoke-virtual {v0, p0, p1, p2}, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->checkEnableConfigRequest(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const-string v1, "[loadService]: "

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object p0, p3, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    new-instance p2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p1, " ->Config is not enabled"

    .line 35
    .line 36
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    iget-object v0, p3, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    .line 48
    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v1, " -> Config is enabled"

    .line 61
    .line 62
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 73
    .line 74
    invoke-virtual {v0, p0}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigStoreInstance(Landroid/content/Context;)Lcom/cloud/tmc/integration/MiniAppConfigStore;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    new-instance v1, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$loadService$1$1;

    .line 79
    .line 80
    invoke-direct {v1, p1, p0, p2, p3}, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$loadService$1$1;-><init>(Ljava/lang/String;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, p1, v1}, Lcom/cloud/config/AbsConfigStore;->loadForService(Ljava/lang/String;Lcom/cloud/config/s;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :catchall_0
    move-exception p0

    .line 88
    iget-object p1, p3, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    .line 89
    .line 90
    const-string p2, "[ConfigService]: Failed to loadPreService config "

    .line 91
    .line 92
    invoke-static {p1, p2, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    .line 94
    .line 95
    :goto_0
    return-void
.end method

.method private final updateConfigAppinfo(Landroid/content/Context;)V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    .line 2
    .line 3
    new-instance v1, Lcom/cloud/tmc/integration/defaultImpl/c;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/cloud/tmc/integration/defaultImpl/c;-><init>(Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    const-string v1, "updateConfigAppinfo"

    .line 16
    .line 17
    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method private static final updateConfigAppinfo$lambda$4(Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;Landroid/content/Context;)V
    .locals 7

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const-string v1, "this$0"

    .line 4
    .line 5
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "$context"

    .line 9
    .line 10
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    const-string v1, "appInfoConfig"

    .line 14
    .line 15
    const-string v2, "[]"

    .line 16
    .line 17
    invoke-virtual {p0, v1, v2}, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;->getConfigString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$updateConfigAppinfo$1$list$1$1;

    .line 22
    .line 23
    invoke-direct {v2}, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$updateConfigAppinfo$1$list$1$1;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {v1, v2}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    instance-of v2, v1, Ljava/util/List;

    .line 35
    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    check-cast v1, Ljava/util/List;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    goto :goto_3

    .line 43
    :cond_0
    const/4 v1, 0x0

    .line 44
    :goto_0
    if-nez v1, :cond_1

    .line 45
    .line 46
    new-instance v1, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    :cond_1
    check-cast v1, Ljava/lang/Iterable;

    .line 52
    .line 53
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_5

    .line 62
    .line 63
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Lcom/cloud/tmc/integration/model/MiniAppInfoConfigBean;

    .line 68
    .line 69
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/MiniAppInfoConfigBean;->getAppId()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :try_start_1
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/MiniAppInfoConfigBean;->getAppInfo()Lcom/cloud/tmc/integration/model/AppInfoModel;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    if-eqz v2, :cond_3

    .line 78
    .line 79
    invoke-static {v2}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtilsKt;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 83
    if-nez v2, :cond_4

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :catchall_1
    move-exception v2

    .line 87
    :try_start_2
    iget-object v4, p0, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    .line 88
    .line 89
    const-string v5, "loadPreService"

    .line 90
    .line 91
    invoke-static {v4, v5, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    .line 93
    .line 94
    :cond_3
    :goto_2
    move-object v2, v0

    .line 95
    :cond_4
    if-eqz v3, :cond_2

    .line 96
    .line 97
    iget-object v4, p0, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    .line 98
    .line 99
    new-instance v5, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string v6, "appid->"

    .line 105
    .line 106
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v6, ",appinfo->"

    .line 113
    .line 114
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-static {v4, v5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    const-class v4, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 128
    .line 129
    invoke-static {v4}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    check-cast v4, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 134
    .line 135
    new-instance v5, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v6, "_config"

    .line 144
    .line 145
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    invoke-interface {v4, p1, v3, v5, v2}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :goto_3
    iget-object p0, p0, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    .line 157
    .line 158
    const-string v0, "Failed to parse config"

    .line 159
    .line 160
    invoke-static {p0, v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 161
    .line 162
    .line 163
    :cond_5
    return-void
.end method


# virtual methods
.method public clearProcessCache()V
    .locals 0

    .line 1
    return-void
.end method

.method public getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    const-string p1, ""

    return-object p1
.end method

.method public getConfig(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/service/ConfigService$OnConfigChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/kernel/service/ConfigService$OnConfigChangeListener;",
            ")V"
        }
    .end annotation

    .line 1
    const-string p2, "key"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public getConfigBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetBool(Ljava/lang/String;Z)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getConfigInt(Ljava/lang/String;I)I
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetInt(Ljava/lang/String;I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getConfigJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;
    .locals 3

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, ""

    .line 7
    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;->getConfigString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/4 v0, 0x0

    .line 13
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    invoke-static {p1}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    .line 27
    .line 28
    .line 29
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    iget-object v1, p0, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    const-string v2, "[ConfigService]: Failed to parse config"

    .line 35
    .line 36
    invoke-static {v1, v2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    return-object v0
.end method

.method public getConfigJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;
    .locals 3

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, ""

    .line 7
    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;->getConfigString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/4 v0, 0x0

    .line 13
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    invoke-static {p1}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 27
    .line 28
    .line 29
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    iget-object v1, p0, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    const-string v2, "[ConfigService]: Failed to parse config"

    .line 35
    .line 36
    invoke-static {v1, v2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    return-object v0
.end method

.method public getConfigString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "defaultValue"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public getConfigWithProcessCache(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    const-string p1, ""

    .line 2
    .line 3
    return-object p1
.end method

.method public loadPreService(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;->loadPreService(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public loadPreService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;->loadPreService(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public loadPreService(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    new-instance v1, Lcom/cloud/tmc/integration/defaultImpl/a;

    invoke-direct {v1, p1, p2, p3, p0}, Lcom/cloud/tmc/integration/defaultImpl/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;)V

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    iget-object p2, p0, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public loadService(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;->loadService(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public loadService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;->loadService(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public loadService(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    new-instance v1, Lcom/cloud/tmc/integration/defaultImpl/b;

    invoke-direct {v1, p1, p2, p3, p0}, Lcom/cloud/tmc/integration/defaultImpl/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;)V

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    iget-object p2, p0, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;->TAG:Ljava/lang/String;

    const-string p3, "loadService"

    invoke-static {p2, p3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public putConfigCache(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method
