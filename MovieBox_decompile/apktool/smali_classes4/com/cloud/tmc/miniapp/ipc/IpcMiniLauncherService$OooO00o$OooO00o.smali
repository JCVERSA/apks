.class public final Lcom/cloud/tmc/miniapp/ipc/IpcMiniLauncherService$OooO00o$OooO00o;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ipc/IpcMiniLauncherService$OooO00o;->OooO00o(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/cloud/tmc/miniapp/ipc/OooO0O0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Ljava/lang/String;

.field public final synthetic OooO0O0:Landroid/os/Bundle;

.field public final synthetic OooO0OO:Lcom/cloud/tmc/miniapp/ipc/OooO0O0;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Lcom/cloud/tmc/miniapp/ipc/OooO0O0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ipc/IpcMiniLauncherService$OooO00o$OooO00o;->OooO00o:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ipc/IpcMiniLauncherService$OooO00o$OooO00o;->OooO0O0:Landroid/os/Bundle;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/ipc/IpcMiniLauncherService$OooO00o$OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/ipc/OooO0O0;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p2}, Lcom/cloud/tmc/miniapp/IIpcMiniLauncherChannel$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cloud/tmc/miniapp/IIpcMiniLauncherChannel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/ipc/IpcMiniLauncherService$OooO00o$OooO00o;->OooO00o:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ipc/IpcMiniLauncherService$OooO00o$OooO00o;->OooO0O0:Landroid/os/Bundle;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    invoke-interface {p1, p2, v0}, Lcom/cloud/tmc/miniapp/IIpcMiniLauncherChannel;->launcherMiniApp(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 22
    .line 23
    .line 24
    :cond_1
    if-eqz p1, :cond_2

    .line 25
    .line 26
    new-instance p2, Lcom/cloud/tmc/miniapp/ipc/IpcMiniLauncherService$OooO00o$OooO00o$OooO00o;

    .line 27
    .line 28
    invoke-direct {p2}, Lcom/cloud/tmc/miniapp/ipc/IpcMiniLauncherService$OooO00o$OooO00o$OooO00o;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, p2}, Lcom/cloud/tmc/miniapp/IIpcMiniLauncherChannel;->registerMiniAppLifecycleListener(Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :goto_1
    const-string p2, ":IpcTaskManagerService"

    .line 36
    .line 37
    const-string v0, "Exception startService"

    .line 38
    .line 39
    invoke-static {p2, v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/ipc/IpcMiniLauncherService$OooO00o$OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/ipc/OooO0O0;

    .line 43
    .line 44
    if-eqz p2, :cond_2

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-interface {p2, v0, p1}, Lcom/cloud/tmc/miniapp/ipc/OooO0O0;->OooO00o(Ljava/lang/Integer;Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
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
