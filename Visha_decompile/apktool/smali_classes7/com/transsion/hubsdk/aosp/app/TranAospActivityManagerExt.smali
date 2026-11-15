.class public Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$TranUserSwitchObserver;,
        Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$TranTaskStackListener;,
        Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$ProcessObserverExt;,
        Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$ITranProcessObserverExtInner;,
        Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$ITranPackageDataObserverExtInner;,
        Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$TranAospPackageDataObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranAospActivityManagerExt"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mObserver:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$ITranProcessObserverExtInner;",
            "Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$ProcessObserverExt;",
            ">;"
        }
    .end annotation
.end field

.field private final mTranTaskStackListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$TranTaskStackListener;",
            "Landroid/app/TaskStackListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserSwitchObservers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$TranUserSwitchObserver;",
            "Landroid/app/UserSwitchObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt;->mObserver:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt;->mTranTaskStackListeners:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt;->mUserSwitchObservers:Landroid/util/ArrayMap;

    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getService()Landroid/app/IActivityManager;
    .locals 3

    const/4 p0, 0x0

    new-array v0, p0, [Ljava/lang/Class;

    const-class v1, Landroid/app/ActivityManager;

    const-string v2, "getService"

    invoke-static {v1, v2, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {v0, v1, p0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/IActivityManager;

    return-object p0
.end method


# virtual methods
.method public registerProcessObserver(Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$ITranProcessObserverExtInner;)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$ProcessObserverExt;

    invoke-direct {v0, p0, p1}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$ProcessObserverExt;-><init>(Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt;Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$ITranProcessObserverExtInner;)V

    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt;->mObserver:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "TranAospActivityManagerExt"

    const-string v0, "registerProcessObserver: "

    invoke-static {p1, v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public registerTaskStackListener(Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$TranTaskStackListener;)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$2;

    invoke-direct {v0, p0, p1}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$2;-><init>(Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt;Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$TranTaskStackListener;)V

    :try_start_0
    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt;->mTranTaskStackListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/app/IActivityManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "registerTaskStackListener fail"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TranAospActivityManagerExt"

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public registerUserSwitchObserver(Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$TranUserSwitchObserver;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$1;-><init>(Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt;Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$TranUserSwitchObserver;)V

    :try_start_0
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt;->mUserSwitchObservers:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "registerUserSwitchObserver fail"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TranAospActivityManagerExt"

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public unRegisterProcessObserver(Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$ITranProcessObserverExtInner;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt;->mObserver:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$ProcessObserverExt;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TranAospActivityManagerExt"

    const-string v2, "unRegisterProcessObserver: "

    invoke-static {v1, v2, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt;->mObserver:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public unregisterTaskStackListener(Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$TranTaskStackListener;)V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt;->mTranTaskStackListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ITaskStackListener;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt;->mTranTaskStackListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "registerTaskStackListener fail"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TranAospActivityManagerExt"

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public unregisterUserSwitchObserver(Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$TranUserSwitchObserver;)V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt;->mUserSwitchObservers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/IUserSwitchObserver;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt;->mUserSwitchObservers:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "registerUserSwitchObserver fail"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TranAospActivityManagerExt"

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
