.class public Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$ITranTouchEventHandler;,
        Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$TranInputReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranInputMonitorImplExt"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mInputMonitor:Ljava/lang/Object;

.field private mReceiver:Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$TranInputReceiver;

.field private final mTouchEventHandler:Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$ITranTouchEventHandler;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$ITranTouchEventHandler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;->mTouchEventHandler:Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$ITranTouchEventHandler;

    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;->mInputMonitor:Ljava/lang/Object;

    new-instance p1, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$1;

    invoke-direct {p1, p0}, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$1;-><init>(Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic access$000(Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;->mInputMonitor:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$TranInputReceiver;)Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$TranInputReceiver;
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;->mReceiver:Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$TranInputReceiver;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;)Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$ITranTouchEventHandler;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;->mTouchEventHandler:Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$ITranTouchEventHandler;

    return-object p0
.end method


# virtual methods
.method public dispose()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;->mInputMonitor:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "dispose"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    iget-object v2, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;->mInputMonitor:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
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
    move-exception v0

    :try_start_2
    const-string v2, "TranInputMonitorImplExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispose fail :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/transsion/hubsdk/util/TranLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput-object v1, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;->mInputMonitor:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;->mReceiver:Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$TranInputReceiver;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$TranInputReceiver;->dispose()V

    iput-object v1, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;->mReceiver:Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$TranInputReceiver;

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public pilferPointers()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;->mInputMonitor:Ljava/lang/Object;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "pilferPointers"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt;->mInputMonitor:Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pilferPointers fail :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TranInputMonitorImplExt"

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/util/TranLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
