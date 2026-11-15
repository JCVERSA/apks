.class public final Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor$startIpcMainProcessInvoke$1$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->startIpcMainProcessInvoke(Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;Lkotlin/jvm/functions/Function2;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u0012\u0010\u0008\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor$startIpcMainProcessInvoke$1$1",
        "Landroid/content/ServiceConnection;",
        "onServiceConnected",
        "",
        "name",
        "Landroid/content/ComponentName;",
        "service",
        "Landroid/os/IBinder;",
        "onServiceDisconnected",
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


# instance fields
.field final synthetic $block:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/cloud/tmc/miniapp/protocol/IIpcMiniProtocolMainChannel;",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $callback:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;

.field final synthetic $callbackId:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $innerContext:Landroid/content/Context;

.field final synthetic $startTime:J


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function2;JLandroid/content/Context;Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/cloud/tmc/miniapp/protocol/IIpcMiniProtocolMainChannel;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;J",
            "Landroid/content/Context;",
            "Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor$startIpcMainProcessInvoke$1$1;->$callbackId:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor$startIpcMainProcessInvoke$1$1;->$block:Lkotlin/jvm/functions/Function2;

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor$startIpcMainProcessInvoke$1$1;->$startTime:J

    .line 6
    .line 7
    iput-object p5, p0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor$startIpcMainProcessInvoke$1$1;->$innerContext:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p6, p0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor$startIpcMainProcessInvoke$1$1;->$callback:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    .line 1
    const-string p1, ""

    .line 2
    .line 3
    const-string v0, "MiniAppProtocolIpcProcessor"

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor$startIpcMainProcessInvoke$1$1;->$callbackId:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 6
    .line 7
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v3, "onServiceConnected,callbackId:"

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p2}, Lcom/cloud/tmc/miniapp/protocol/IIpcMiniProtocolMainChannel$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cloud/tmc/miniapp/protocol/IIpcMiniProtocolMainChannel;

    .line 30
    .line 31
    .line 32
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 33
    :try_start_1
    iget-object v1, p0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor$startIpcMainProcessInvoke$1$1;->$block:Lkotlin/jvm/functions/Function2;

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    iget-object v2, p0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor$startIpcMainProcessInvoke$1$1;->$callbackId:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 38
    .line 39
    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 40
    .line 41
    invoke-interface {v1, p2, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p2

    .line 46
    :try_start_2
    invoke-static {v0, p1, p2}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 47
    .line 48
    .line 49
    :cond_0
    :goto_0
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 50
    .line 51
    .line 52
    move-result-wide v1

    .line 53
    iget-wide v3, p0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor$startIpcMainProcessInvoke$1$1;->$startTime:J

    .line 54
    .line 55
    sub-long/2addr v1, v3

    .line 56
    new-instance p2, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v3, "ipc used time:"

    .line 62
    .line 63
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v1, "ms"

    .line 70
    .line 71
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-static {v0, p2}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :catchall_1
    move-exception p2

    .line 83
    :try_start_4
    invoke-static {v0, p1, p2}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 84
    .line 85
    .line 86
    :goto_1
    :try_start_5
    iget-object p2, p0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor$startIpcMainProcessInvoke$1$1;->$innerContext:Landroid/content/Context;

    .line 87
    .line 88
    invoke-virtual {p2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :catchall_2
    move-exception p2

    .line 93
    :try_start_6
    invoke-static {v0, p1, p2}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :catchall_3
    move-exception p1

    .line 98
    sget-object p2, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->INSTANCE:Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;

    .line 99
    .line 100
    iget-object v1, p0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor$startIpcMainProcessInvoke$1$1;->$callbackId:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 101
    .line 102
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v1, Ljava/lang/String;

    .line 105
    .line 106
    iget-object v2, p0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor$startIpcMainProcessInvoke$1$1;->$callback:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;

    .line 107
    .line 108
    invoke-static {p2, v1, v2}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->access$exceptionCallback(Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;Ljava/lang/String;Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;)V

    .line 109
    .line 110
    .line 111
    const-string p2, "Exception startService"

    .line 112
    .line 113
    invoke-static {v0, p2, p1}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    .line 115
    .line 116
    :goto_2
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    const-string p1, "connect fail"

    .line 2
    .line 3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor$startIpcMainProcessInvoke$1$1;->$callbackId:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 9
    .line 10
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v1, "onServiceDisconnected,callbackId:"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string v0, "MiniAppProtocolIpcProcessor"

    .line 30
    .line 31
    invoke-static {v0, p1}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
