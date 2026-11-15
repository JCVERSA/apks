.class public final Lcom/cloud/tmc/miniapp/ipc/IpcMiniLauncherService$OooO00o$OooO0O0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ipc/IpcMiniLauncherService$OooO00o;->OooO00o(Landroid/content/Context;ZLcom/cloud/tmc/miniapp/ipc/OooO0O0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Z

.field public final synthetic OooO0O0:Landroid/content/Context;

.field public final synthetic OooO0OO:Lcom/cloud/tmc/miniapp/ipc/OooO0O0;


# direct methods
.method public constructor <init>(ZLandroid/content/Context;Lcom/cloud/tmc/miniapp/ipc/OooO0O0;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/ipc/IpcMiniLauncherService$OooO00o$OooO0O0;->OooO00o:Z

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ipc/IpcMiniLauncherService$OooO00o$OooO0O0;->OooO0O0:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/ipc/IpcMiniLauncherService$OooO00o$OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/ipc/OooO0O0;

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
    if-eqz p2, :cond_0

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/ipc/IpcMiniLauncherService$OooO00o$OooO0O0;->OooO00o:Z

    .line 15
    .line 16
    invoke-interface {p2, v0}, Lcom/cloud/tmc/miniapp/IIpcMiniLauncherChannel;->warmupWebview(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p2

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    :try_start_1
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/ipc/IpcMiniLauncherService$OooO00o$OooO0O0;->OooO0O0:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {p2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 25
    .line 26
    .line 27
    goto :goto_2

    .line 28
    :catchall_1
    move-exception p2

    .line 29
    :try_start_2
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 30
    .line 31
    .line 32
    goto :goto_2

    .line 33
    :goto_1
    const-string v0, "Exception startService"

    .line 34
    .line 35
    invoke-static {p1, v0, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ipc/IpcMiniLauncherService$OooO00o$OooO0O0;->OooO0OO:Lcom/cloud/tmc/miniapp/ipc/OooO0O0;

    .line 39
    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-interface {p1, v0, p2}, Lcom/cloud/tmc/miniapp/ipc/OooO0O0;->OooO00o(Ljava/lang/Integer;Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    :cond_1
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
