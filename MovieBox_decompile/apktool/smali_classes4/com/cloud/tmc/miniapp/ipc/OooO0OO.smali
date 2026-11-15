.class public final Lcom/cloud/tmc/miniapp/ipc/OooO0OO;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic OooO00o:Ljava/lang/String;

.field public final synthetic OooO0O0:Landroid/content/Context;

.field public final synthetic OooO0OO:Lcom/cloud/tmc/miniapp/ipc/OooO0O0;

.field public final synthetic OooO0Oo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/cloud/tmc/miniapp/ipc/OooO0O0;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ipc/OooO0OO;->OooO00o:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ipc/OooO0OO;->OooO0O0:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/ipc/OooO0OO;->OooO0OO:Lcom/cloud/tmc/miniapp/ipc/OooO0O0;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/cloud/tmc/miniapp/ipc/OooO0OO;->OooO0Oo:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 1
    const-string p1, ":IpcTaskManagerService"

    .line 2
    .line 3
    :try_start_0
    const-string v0, "warmupWebview iMiniLauncherChannel"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p2}, Lcom/cloud/tmc/miniapp/IIpcMiniLauncherChannel$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cloud/tmc/miniapp/IIpcMiniLauncherChannel;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    new-instance v0, Landroid/os/Bundle;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ipc/OooO0OO;->OooO0Oo:Ljava/lang/String;

    .line 18
    .line 19
    const-string v2, "keyMiniAppSyncData"

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    const-string v1, ""

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p2

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    if-eqz p2, :cond_1

    .line 32
    .line 33
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ipc/OooO0OO;->OooO00o:Ljava/lang/String;

    .line 34
    .line 35
    invoke-interface {p2, v1, v0}, Lcom/cloud/tmc/miniapp/IIpcMiniLauncherChannel;->preLauncherData(Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    :cond_1
    :try_start_1
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/ipc/OooO0OO;->OooO0O0:Landroid/content/Context;

    .line 39
    .line 40
    invoke-virtual {p2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 41
    .line 42
    .line 43
    goto :goto_2

    .line 44
    :catchall_1
    move-exception p2

    .line 45
    :try_start_2
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :goto_1
    const-string v0, "Exception startService"

    .line 50
    .line 51
    invoke-static {p1, v0, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ipc/OooO0OO;->OooO0OO:Lcom/cloud/tmc/miniapp/ipc/OooO0O0;

    .line 55
    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-interface {p1, v0, p2}, Lcom/cloud/tmc/miniapp/ipc/OooO0O0;->OooO00o(Ljava/lang/Integer;Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    :goto_2
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 2
    .line 3
    const-string v0, "connect fail"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
