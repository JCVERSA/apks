.class public final Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0007H\u0002J\u001a\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013JR\u0010\u0014\u001a\u00020\r2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00072 \u0008\u0002\u0010\u0018\u001a\u001a\u0012\u0006\u0012\u0004\u0018\u00010\u001a\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\r\u0018\u00010\u00192\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0013JH\u0010\u001c\u001a\u00020\r2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00072 \u0008\u0002\u0010\u0018\u001a\u001a\u0012\u0006\u0012\u0004\u0018\u00010\u001d\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\r\u0018\u00010\u00192\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0013J\u0016\u0010\u001e\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\'\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;",
        "",
        "()V",
        "TAG",
        "",
        "callbackMap",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;",
        "getCallbackMap",
        "()Ljava/util/concurrent/ConcurrentHashMap;",
        "callbackMap$delegate",
        "Lkotlin/Lazy;",
        "exceptionCallback",
        "",
        "callbackId",
        "callback",
        "executeCallback",
        "",
        "bundle",
        "Landroid/os/Bundle;",
        "startIpcMainProcessInvoke",
        "context",
        "Landroid/content/Context;",
        "pkgName",
        "block",
        "Lkotlin/Function2;",
        "Lcom/cloud/tmc/miniapp/protocol/IIpcMiniProtocolMainChannel;",
        "params",
        "startIpcPSInvoke",
        "Lcom/cloud/tmc/miniapp/IIpcMiniPSChannel;",
        "stickyCallback",
        "com.cloud.tmc.component_api_ps"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;

.field private static final TAG:Ljava/lang/String; = "MiniAppProtocolIpcProcessor"

.field private static final callbackMap$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->INSTANCE:Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;

    .line 7
    .line 8
    sget-object v0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor$callbackMap$2;->INSTANCE:Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor$callbackMap$2;

    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->callbackMap$delegate:Lkotlin/Lazy;

    .line 15
    .line 16
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->startIpcPSInvoke$lambda$1(Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lkotlin/jvm/functions/Function2;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$exceptionCallback(Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;Ljava/lang/String;Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->exceptionCallback(Ljava/lang/String;Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->exceptionCallback$lambda$4(Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->executeCallback$lambda$5(Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->startIpcMainProcessInvoke$lambda$3(Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lkotlin/jvm/functions/Function2;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final exceptionCallback(Ljava/lang/String;Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;)V
    .locals 3

    .line 1
    const-string v0, "MiniAppProtocolIpcProcessor"

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "exceptionCallback,callbackId:"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sget-object v1, Lcom/cloud/tmc/component_api_ps/async/MiniAppIpcAsyncManager;->INSTANCE:Lcom/cloud/tmc/component_api_ps/async/MiniAppIpcAsyncManager;

    .line 24
    .line 25
    new-instance v2, Lcom/cloud/tmc/component_api_ps/ipc/b;

    .line 26
    .line 27
    invoke-direct {v2, p2}, Lcom/cloud/tmc/component_api_ps/ipc/b;-><init>(Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Lcom/cloud/tmc/component_api_ps/async/MiniAppIpcAsyncManager;->runOnMain(Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-nez p2, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->getCallbackMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    if-eqz p2, :cond_1

    .line 51
    .line 52
    invoke-direct {p0}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->getCallbackMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    new-instance p2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v1, "exceptionCallback,removed callbackId:"

    .line 65
    .line 66
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-static {v0, p1}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catchall_0
    move-exception p1

    .line 81
    const-string p2, ""

    .line 82
    .line 83
    invoke-static {v0, p2, p1}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    :cond_1
    :goto_0
    return-void
.end method

.method private static final exceptionCallback$lambda$4(Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const/16 v0, -0xc7

    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "happened exception"

    .line 10
    .line 11
    invoke-interface {p0, v0, v1}, Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;->onFailed(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private static final executeCallback$lambda$5(Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;->onSuccess(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method private final getCallbackMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->callbackMap$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic startIpcMainProcessInvoke$default(Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;Lkotlin/jvm/functions/Function2;Landroid/os/Bundle;ILjava/lang/Object;)V
    .locals 7

    .line 1
    and-int/lit8 p7, p6, 0x8

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p7, :cond_0

    .line 5
    .line 6
    move-object v5, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object v5, p4

    .line 9
    :goto_0
    and-int/lit8 p4, p6, 0x10

    .line 10
    .line 11
    if-eqz p4, :cond_1

    .line 12
    .line 13
    move-object v6, v0

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move-object v6, p5

    .line 16
    :goto_1
    move-object v1, p0

    .line 17
    move-object v2, p1

    .line 18
    move-object v3, p2

    .line 19
    move-object v4, p3

    .line 20
    invoke-virtual/range {v1 .. v6}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->startIpcMainProcessInvoke(Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;Lkotlin/jvm/functions/Function2;Landroid/os/Bundle;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private static final startIpcMainProcessInvoke$lambda$3(Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lkotlin/jvm/functions/Function2;)V
    .locals 10

    .line 1
    new-instance v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2
    .line 3
    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v8, "MiniAppProtocolIpcProcessor"

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 19
    .line 20
    sget-object v0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->INSTANCE:Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;

    .line 21
    .line 22
    invoke-direct {v0}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->getCallbackMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 27
    .line 28
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_2

    .line 34
    :cond_0
    :goto_0
    new-instance v9, Landroid/content/Intent;

    .line 35
    .line 36
    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 37
    .line 38
    .line 39
    new-instance v0, Landroid/content/ComponentName;

    .line 40
    .line 41
    const-string v1, "com.cloud.tmc.component_api_ps.ipc.service.MiniAppProtocolMainService"

    .line 42
    .line 43
    invoke-direct {v0, p2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v9, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    if-eqz p3, :cond_1

    .line 50
    .line 51
    invoke-virtual {v9, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    :cond_1
    iget-object p2, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p2, Ljava/lang/CharSequence;

    .line 57
    .line 58
    if-eqz p2, :cond_3

    .line 59
    .line 60
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    if-nez p2, :cond_2

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    const-string p2, "miniAppPSChannelIpcCallbackId"

    .line 68
    .line 69
    iget-object p3, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast p3, Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v9, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    .line 75
    .line 76
    :cond_3
    :goto_1
    const-string p2, "miniAppPSChannelIpcPkg"

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p3

    .line 82
    invoke-virtual {v9, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    .line 84
    .line 85
    sget-object p2, Lcom/cloud/tmc/component_api_ps/MiniAppIpcCommonUtils;->INSTANCE:Lcom/cloud/tmc/component_api_ps/MiniAppIpcCommonUtils;

    .line 86
    .line 87
    invoke-virtual {p2, v9}, Lcom/cloud/tmc/component_api_ps/MiniAppIpcCommonUtils;->getIntentLoggerFormat(Landroid/content/Intent;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    iget-object p3, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 92
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v1, "startIpcInvoke,intent:"

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string p2, ",callbackId:"

    .line 107
    .line 108
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    invoke-static {v8, p2}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 122
    .line 123
    .line 124
    move-result-wide v3

    .line 125
    new-instance p2, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor$startIpcMainProcessInvoke$1$1;

    .line 126
    .line 127
    move-object v0, p2

    .line 128
    move-object v1, v7

    .line 129
    move-object v2, p4

    .line 130
    move-object v5, p1

    .line 131
    move-object v6, p0

    .line 132
    invoke-direct/range {v0 .. v6}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor$startIpcMainProcessInvoke$1$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function2;JLandroid/content/Context;Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;)V

    .line 133
    .line 134
    .line 135
    const/4 p3, 0x1

    .line 136
    invoke-virtual {p1, v9, p2, p3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    .line 138
    .line 139
    goto :goto_3

    .line 140
    :goto_2
    sget-object p2, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->INSTANCE:Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;

    .line 141
    .line 142
    iget-object p3, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast p3, Ljava/lang/String;

    .line 145
    .line 146
    invoke-direct {p2, p3, p0}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->exceptionCallback(Ljava/lang/String;Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;)V

    .line 147
    .line 148
    .line 149
    const-string p0, ""

    .line 150
    .line 151
    invoke-static {v8, p0, p1}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    .line 153
    .line 154
    :goto_3
    return-void
.end method

.method public static synthetic startIpcPSInvoke$default(Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;Landroid/content/Context;Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;Lkotlin/jvm/functions/Function2;Landroid/os/Bundle;ILjava/lang/Object;)V
    .locals 1

    .line 1
    and-int/lit8 p6, p5, 0x4

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p6, :cond_0

    .line 5
    .line 6
    move-object p3, v0

    .line 7
    :cond_0
    and-int/lit8 p5, p5, 0x8

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    move-object p4, v0

    .line 12
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->startIpcPSInvoke(Landroid/content/Context;Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;Lkotlin/jvm/functions/Function2;Landroid/os/Bundle;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private static final startIpcPSInvoke$lambda$1(Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lkotlin/jvm/functions/Function2;)V
    .locals 10

    .line 1
    const-string v0, "$ipcPkgName"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 7
    .line 8
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v8, "MiniAppProtocolIpcProcessor"

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 24
    .line 25
    sget-object v1, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->INSTANCE:Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;

    .line 26
    .line 27
    invoke-direct {v1}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->getCallbackMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    goto :goto_2

    .line 39
    :cond_0
    :goto_0
    new-instance v9, Landroid/content/Intent;

    .line 40
    .line 41
    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 42
    .line 43
    .line 44
    new-instance v1, Landroid/content/ComponentName;

    .line 45
    .line 46
    const-string v2, "com.cloud.tmc.miniapp.ipc.IpcMiniPSService"

    .line 47
    .line 48
    invoke-direct {v1, p2, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v9, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    if-eqz p3, :cond_1

    .line 55
    .line 56
    invoke-virtual {v9, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 57
    .line 58
    .line 59
    :cond_1
    iget-object p2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast p2, Ljava/lang/CharSequence;

    .line 62
    .line 63
    if-eqz p2, :cond_3

    .line 64
    .line 65
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    if-nez p2, :cond_2

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    const-string p2, "miniAppPSChannelIpcCallbackId"

    .line 73
    .line 74
    iget-object p3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast p3, Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v9, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    .line 80
    .line 81
    :cond_3
    :goto_1
    const-string p2, "miniAppPSChannelIpcPkg"

    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p3

    .line 87
    invoke-virtual {v9, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    .line 89
    .line 90
    sget-object p2, Lcom/cloud/tmc/component_api_ps/MiniAppIpcCommonUtils;->INSTANCE:Lcom/cloud/tmc/component_api_ps/MiniAppIpcCommonUtils;

    .line 91
    .line 92
    invoke-virtual {p2, v9}, Lcom/cloud/tmc/component_api_ps/MiniAppIpcCommonUtils;->getIntentLoggerFormat(Landroid/content/Intent;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    iget-object p3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 97
    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string v2, "startIpcInvoke,intent:"

    .line 104
    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string p2, ",callbackId:"

    .line 112
    .line 113
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    invoke-static {v8, p2}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 127
    .line 128
    .line 129
    move-result-wide v4

    .line 130
    new-instance p2, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor$startIpcPSInvoke$1$1;

    .line 131
    .line 132
    move-object v1, p2

    .line 133
    move-object v2, v0

    .line 134
    move-object v3, p4

    .line 135
    move-object v6, p1

    .line 136
    move-object v7, p0

    .line 137
    invoke-direct/range {v1 .. v7}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor$startIpcPSInvoke$1$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function2;JLandroid/content/Context;Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;)V

    .line 138
    .line 139
    .line 140
    const/4 p3, 0x1

    .line 141
    invoke-virtual {p1, v9, p2, p3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    .line 143
    .line 144
    goto :goto_3

    .line 145
    :goto_2
    sget-object p2, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->INSTANCE:Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;

    .line 146
    .line 147
    iget-object p3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast p3, Ljava/lang/String;

    .line 150
    .line 151
    invoke-direct {p2, p3, p0}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->exceptionCallback(Ljava/lang/String;Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;)V

    .line 152
    .line 153
    .line 154
    const-string p0, ""

    .line 155
    .line 156
    invoke-static {v8, p0, p1}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    .line 158
    .line 159
    :goto_3
    return-void
.end method


# virtual methods
.method public final executeCallback(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 5

    .line 1
    const-string v0, "MiniAppProtocolIpcProcessor"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v3, "executeCallback,callbackId:"

    .line 10
    .line 11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {v0, v2}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->getCallbackMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    invoke-direct {p0}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->getCallbackMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;

    .line 52
    .line 53
    sget-object v3, Lcom/cloud/tmc/component_api_ps/async/MiniAppIpcAsyncManager;->INSTANCE:Lcom/cloud/tmc/component_api_ps/async/MiniAppIpcAsyncManager;

    .line 54
    .line 55
    new-instance v4, Lcom/cloud/tmc/component_api_ps/ipc/c;

    .line 56
    .line 57
    invoke-direct {v4, v2, p2}, Lcom/cloud/tmc/component_api_ps/ipc/c;-><init>(Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;Landroid/os/Bundle;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v4}, Lcom/cloud/tmc/component_api_ps/async/MiniAppIpcAsyncManager;->runOnMain(Ljava/lang/Runnable;)V

    .line 61
    .line 62
    .line 63
    invoke-direct {p0}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->getCallbackMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    new-instance p2, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v2, "executeCallback,removed callbackId:"

    .line 76
    .line 77
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-static {v0, p1}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .line 89
    .line 90
    const/4 p1, 0x1

    .line 91
    return p1

    .line 92
    :catchall_0
    move-exception p1

    .line 93
    goto :goto_1

    .line 94
    :cond_1
    :goto_0
    return v1

    .line 95
    :goto_1
    const-string p2, ""

    .line 96
    .line 97
    invoke-static {v0, p2, p1}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    .line 99
    .line 100
    return v1
.end method

.method public final startIpcMainProcessInvoke(Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;Lkotlin/jvm/functions/Function2;Landroid/os/Bundle;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/cloud/tmc/miniapp/protocol/IIpcMiniProtocolMainChannel;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 1
    const-string p2, "MiniAppProtocolIpcProcessor"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    :try_start_0
    const-string p1, "startIpcInvoke context is empty"

    .line 6
    .line 7
    invoke-static {p2, p1}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    const-string p1, "startIpcInvoke negativeScreenPkgName is empty"

    .line 30
    .line 31
    invoke-static {p2, p1}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    sget-object p1, Lcom/cloud/tmc/component_api_ps/async/MiniAppIpcAsyncManager;->INSTANCE:Lcom/cloud/tmc/component_api_ps/async/MiniAppIpcAsyncManager;

    .line 36
    .line 37
    new-instance v6, Lcom/cloud/tmc/component_api_ps/ipc/a;

    .line 38
    .line 39
    move-object v0, v6

    .line 40
    move-object v1, p3

    .line 41
    move-object v4, p5

    .line 42
    move-object v5, p4

    .line 43
    invoke-direct/range {v0 .. v5}, Lcom/cloud/tmc/component_api_ps/ipc/a;-><init>(Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lkotlin/jvm/functions/Function2;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v6}, Lcom/cloud/tmc/component_api_ps/async/MiniAppIpcAsyncManager;->runOnBackground(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :goto_0
    const-string p3, ""

    .line 51
    .line 52
    invoke-static {p2, p3, p1}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    :goto_1
    return-void
.end method

.method public final startIpcPSInvoke(Landroid/content/Context;Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;Lkotlin/jvm/functions/Function2;Landroid/os/Bundle;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/cloud/tmc/miniapp/IIpcMiniPSChannel;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "MiniAppProtocolIpcProcessor"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    :try_start_0
    const-string p1, "startIpcInvoke context is empty"

    .line 6
    .line 7
    invoke-static {v0, p1}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    sget-object p1, Lcom/cloud/tmc/component_api_ps/MiniAppIpcCommonUtils;->INSTANCE:Lcom/cloud/tmc/component_api_ps/MiniAppIpcCommonUtils;

    .line 18
    .line 19
    const-string v1, "innerContext"

    .line 20
    .line 21
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v3}, Lcom/cloud/tmc/component_api_ps/MiniAppIpcCommonUtils;->getIPCPkgName(Landroid/content/Context;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    const-string p1, "startIpcInvoke negativeScreenPkgName is empty"

    .line 35
    .line 36
    invoke-static {v0, p1}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    sget-object p1, Lcom/cloud/tmc/component_api_ps/async/MiniAppIpcAsyncManager;->INSTANCE:Lcom/cloud/tmc/component_api_ps/async/MiniAppIpcAsyncManager;

    .line 41
    .line 42
    new-instance v7, Lcom/cloud/tmc/component_api_ps/ipc/d;

    .line 43
    .line 44
    move-object v1, v7

    .line 45
    move-object v2, p2

    .line 46
    move-object v5, p4

    .line 47
    move-object v6, p3

    .line 48
    invoke-direct/range {v1 .. v6}, Lcom/cloud/tmc/component_api_ps/ipc/d;-><init>(Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lkotlin/jvm/functions/Function2;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v7}, Lcom/cloud/tmc/component_api_ps/async/MiniAppIpcAsyncManager;->runOnBackground(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :goto_0
    const-string p2, ""

    .line 56
    .line 57
    invoke-static {v0, p2, p1}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    :goto_1
    return-void
.end method

.method public final stickyCallback(Ljava/lang/String;Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;)V
    .locals 1

    .line 1
    const-string v0, "callbackId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-direct {p0}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->getCallbackMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    const-string p2, "MiniAppProtocolIpcProcessor"

    .line 21
    .line 22
    const-string v0, ""

    .line 23
    .line 24
    invoke-static {p2, v0, p1}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method
