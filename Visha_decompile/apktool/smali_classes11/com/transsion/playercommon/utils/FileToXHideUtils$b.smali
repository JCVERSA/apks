.class public final Lcom/transsion/playercommon/utils/FileToXHideUtils$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/utils/FileToXHideUtils;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/utils/FileToXHideUtils;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/utils/FileToXHideUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/utils/FileToXHideUtils$b;->b:Lcom/transsion/playercommon/utils/FileToXHideUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/playercommon/utils/FileToXHideUtils$b;->b:Lcom/transsion/playercommon/utils/FileToXHideUtils;

    invoke-static {p2}, Lcom/xui/xhide/IXHideWriteAidlInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xui/xhide/IXHideWriteAidlInterface;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/playercommon/utils/FileToXHideUtils;->h(Lcom/transsion/playercommon/utils/FileToXHideUtils;Lcom/xui/xhide/IXHideWriteAidlInterface;)V

    iget-object p1, p0, Lcom/transsion/playercommon/utils/FileToXHideUtils$b;->b:Lcom/transsion/playercommon/utils/FileToXHideUtils;

    invoke-static {p1}, Lcom/transsion/playercommon/utils/FileToXHideUtils;->d(Lcom/transsion/playercommon/utils/FileToXHideUtils;)Lcom/xui/xhide/IXHideWriteAidlInterface;

    move-result-object p1

    if-eqz p1, :cond_2

    :try_start_0
    iget-object p1, p0, Lcom/transsion/playercommon/utils/FileToXHideUtils$b;->b:Lcom/transsion/playercommon/utils/FileToXHideUtils;

    invoke-static {p1}, Lcom/transsion/playercommon/utils/FileToXHideUtils;->d(Lcom/transsion/playercommon/utils/FileToXHideUtils;)Lcom/xui/xhide/IXHideWriteAidlInterface;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/transsion/playercommon/utils/FileToXHideUtils$b;->b:Lcom/transsion/playercommon/utils/FileToXHideUtils;

    invoke-static {p2}, Lcom/transsion/playercommon/utils/FileToXHideUtils;->b(Lcom/transsion/playercommon/utils/FileToXHideUtils;)[I

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/playercommon/utils/FileToXHideUtils$b;->b:Lcom/transsion/playercommon/utils/FileToXHideUtils;

    invoke-static {v0}, Lcom/transsion/playercommon/utils/FileToXHideUtils;->f(Lcom/transsion/playercommon/utils/FileToXHideUtils;)[I

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/xui/xhide/IXHideWriteAidlInterface;->hideFileByIds([I[I)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/transsion/playercommon/utils/FileToXHideUtils$b;->b:Lcom/transsion/playercommon/utils/FileToXHideUtils;

    invoke-static {p1}, Lcom/transsion/playercommon/utils/FileToXHideUtils;->d(Lcom/transsion/playercommon/utils/FileToXHideUtils;)Lcom/xui/xhide/IXHideWriteAidlInterface;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/transsion/playercommon/utils/FileToXHideUtils$b;->b:Lcom/transsion/playercommon/utils/FileToXHideUtils;

    invoke-static {p2}, Lcom/transsion/playercommon/utils/FileToXHideUtils;->c(Lcom/transsion/playercommon/utils/FileToXHideUtils;)Lcom/xui/xhide/IRemoteCallBackListener$Stub;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/xui/xhide/IXHideWriteAidlInterface;->registerListener(Lcom/xui/xhide/IRemoteCallBackListener;)V

    :cond_1
    const-string p1, "FileToXHideUtils"

    const-string p2, "Callback listener registered successfully"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string p2, "FileToXHideUtils"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to register callback listener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/transsion/playercommon/utils/FileToXHideUtils$b;->b:Lcom/transsion/playercommon/utils/FileToXHideUtils;

    invoke-static {p1}, Lcom/transsion/playercommon/utils/FileToXHideUtils;->e(Lcom/transsion/playercommon/utils/FileToXHideUtils;)Landroid/content/ServiceConnection;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/playercommon/utils/FileToXHideUtils$b;->b:Lcom/transsion/playercommon/utils/FileToXHideUtils;

    monitor-enter p1

    :try_start_1
    invoke-static {p0}, Lcom/transsion/playercommon/utils/FileToXHideUtils;->e(Lcom/transsion/playercommon/utils/FileToXHideUtils;)Landroid/content/ServiceConnection;

    move-result-object p0

    const-string p2, "null cannot be cast to non-null type java.lang.Object"

    invoke-static {p0, p2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/utils/FileToXHideUtils$b;->b:Lcom/transsion/playercommon/utils/FileToXHideUtils;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/playercommon/utils/FileToXHideUtils;->h(Lcom/transsion/playercommon/utils/FileToXHideUtils;Lcom/xui/xhide/IXHideWriteAidlInterface;)V

    return-void
.end method
