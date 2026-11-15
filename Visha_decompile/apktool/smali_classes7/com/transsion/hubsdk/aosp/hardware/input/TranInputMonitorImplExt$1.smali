.class Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;-><init>(Ljava/lang/Object;Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$ITranTouchEventHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$1;->this$0:Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$1;->this$0:Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;

    invoke-static {v0}, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;->access$000(Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$1;->this$0:Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;

    invoke-static {v1}, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;->access$000(Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getInputChannel"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    iget-object v2, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$1;->this$0:Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;

    invoke-static {v2}, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;->access$000(Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "TranInputMonitorImplExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInputChannel fail :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/hubsdk/util/TranLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$1;->this$0:Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;

    new-instance v2, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$TranInputReceiver;

    iget-object v3, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$1;->this$0:Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;

    check-cast v0, Landroid/view/InputChannel;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4}, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$TranInputReceiver;-><init>(Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;Landroid/view/InputChannel;Landroid/os/Looper;)V

    invoke-static {v1, v2}, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;->access$102(Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$TranInputReceiver;)Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$TranInputReceiver;

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
