.class public Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$InitOxygenBusCallback;,
        Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$RemoteIPCChannelProxy;,
        Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$DataCenterSubscribeChangeListener;
    }
.end annotation


# static fields
.field private static final MANAGER_PACKAGE:Ljava/lang/String; = "com.transsion.apiinvoke.routermap"

.field private static SUPPORT_OXYGENBUS:Z = true

.field private static final TAG:Ljava/lang/String; = "ApiInvokeRegister"

.field private static sClientStateChangeListener:Lcom/transsion/kolun/oxygenbus/OxygenBusStateChangeListener;

.field private static sProcessInfo:Lcom/transsion/apiinvoke/common/router/ProcessInfo;

.field private static sRemoteChannelProxy:Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$RemoteIPCChannelProxy;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static sServiceStateChangeListener:Lcom/transsion/kolun/oxygenbus/OxygenBusStateChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Lcom/transsion/apiinvoke/common/router/ChannelEntity;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->lambda$connectOxygenBusClient$6(Landroid/content/Context;Lcom/transsion/apiinvoke/common/router/ChannelEntity;)V

    return-void
.end method

.method public static synthetic access$000(Landroid/content/Context;Ljava/lang/String;ZLcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$InitOxygenBusCallback;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->initServiceRemote(Landroid/content/Context;Ljava/lang/String;ZLcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$InitOxygenBusCallback;)V

    return-void
.end method

.method public static synthetic access$100(Landroid/content/Context;Lcom/transsion/apiinvoke/common/router/ChannelEntity;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->initClient(Landroid/content/Context;Lcom/transsion/apiinvoke/common/router/ChannelEntity;Z)V

    return-void
.end method

.method public static synthetic access$300()Z
    .locals 1

    sget-boolean v0, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->SUPPORT_OXYGENBUS:Z

    return v0
.end method

.method private static addStateListenerAndCheck(Landroid/content/Context;Lcom/transsion/kolun/oxygenbus/OxygenBusStateChangeListener;)V
    .locals 2

    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->getLifeCycle(Landroid/content/Context;)Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;->addOxygenBusStateChangeListener(Lcom/transsion/kolun/oxygenbus/OxygenBusStateChangeListener;)V

    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusUtils;->isAppServiceProcessStarted(Landroid/content/Context;)Z

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addStateListenerAndCheck startListen  isAppServiceStart "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ApiInvokeRegister"

    invoke-static {v1, p1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;->startListen()V

    :cond_0
    return-void
.end method

.method private static allServiceRegistered(Ljava/util/Set;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/transsion/apiinvoke/common/router/ApiRouterManager;->register(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoScanLocalApiServices, register "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " fail ... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ApiInvokeRegister"

    invoke-static {v2, v1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_1
    return v0
.end method

.method public static autoScanLocalApiServices(Landroid/content/Context;Lcom/transsion/apiinvoke/common/router/ChannelEntity;)V
    .locals 3

    .line 9
    :try_start_0
    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->findServiceClass(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p0

    .line 10
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 11
    invoke-static {v1, p1}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->registerApiServiceByChannel(Ljava/lang/String;Lcom/transsion/apiinvoke/common/router/ChannelEntity;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 12
    :cond_0
    const-string v0, "ApiInvokeRegister"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoScanLocalApiServices found packageClass ==> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-static {p1}, Lcom/transsion/apiinvoke/common/router/ApiRouterManager;->addNewChannel(Lcom/transsion/apiinvoke/common/router/ChannelEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 14
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public static autoScanLocalApiServices(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    array-length v0, p1

    if-lez v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->findServiceClass([Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->allServiceRegistered(Ljava/util/Set;)Z

    move-result p1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 4
    const-string p1, "ApiInvokeRegister"

    const-string v0, "autoScanLocalApiServices, with error, auto scan and register...."

    invoke-static {p1, v0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->findServiceClass(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p0

    .line 6
    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->allServiceRegistered(Ljava/util/Set;)Z

    .line 7
    :cond_1
    invoke-static {}, Lcom/transsion/apiinvoke/common/router/ApiRouterManager;->listRegisterServer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 8
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private static autoScanLocalServiceClass(Landroid/content/Context;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "com.transsion.apiinvoke.routermap"

    invoke-static {p0, v1}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusUtils;->getFileNameByPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const-string p0, "ApiInvokeRegister"

    const-string v1, "findServiceClass form package scan"

    invoke-static {p0, v1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static synthetic b(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->lambda$initClientAsync$0(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->lambda$initServiceBusListener$2(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method private static connectOxygenBusClient(Landroid/content/Context;Lcom/transsion/apiinvoke/common/router/ChannelEntity;)V
    .locals 1

    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->initProcessInfo(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusUtils;->isAppServiceProcessStarted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lpg5;

    invoke-direct {v0, p0, p1}, Lpg5;-><init>(Landroid/content/Context;Lcom/transsion/apiinvoke/common/router/ChannelEntity;)V

    const-wide/16 p0, 0x1f4

    invoke-static {v0, p0, p1}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusUtils;->postRunnable(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_0
    new-instance v0, Lqg5;

    invoke-direct {v0, p0, p1}, Lqg5;-><init>(Landroid/content/Context;Lcom/transsion/apiinvoke/common/router/ChannelEntity;)V

    invoke-static {v0}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusUtils;->postRunnable(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public static synthetic d(Lcom/transsion/apiinvoke/common/router/ChannelEntity;Landroid/content/Context;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->lambda$initClientBusListener$4(Lcom/transsion/apiinvoke/common/router/ChannelEntity;Landroid/content/Context;I)V

    return-void
.end method

.method public static disconnectChannel(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->SUPPORT_OXYGENBUS:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->getOxygenBusServer(Landroid/content/Context;)Lcom/transsion/kolun/oxygenbus/IOxygenBusServer;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-interface {p0, p1}, Lcom/transsion/kolun/oxygenbus/IOxygenBusServer;->disconnectChannel(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnectChannel error channelName "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ApiInvokeRegister"

    invoke-static {p1, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static synthetic e(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->lambda$initServiceBusListener$3(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic f(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$InitOxygenBusCallback;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->lambda$syncServiceRegister$1(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$InitOxygenBusCallback;)V

    return-void
.end method

.method public static findAPIChannel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-boolean v0, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->SUPPORT_OXYGENBUS:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->getOxygenBusServer(Landroid/content/Context;)Lcom/transsion/kolun/oxygenbus/IOxygenBusServer;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/kolun/oxygenbus/IOxygenBusServer;->findChannel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findAPIChannel error apiService "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ApiInvokeRegister"

    invoke-static {p1, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object v1
.end method

.method private static findServiceClass(Landroid/content/Context;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 4
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "scan-module"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->findServiceClass([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 8
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->autoScanLocalServiceClass(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method private static findServiceClass([Ljava/lang/String;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 10
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 11
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.transsion.apiinvoke.routermap."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ApiRouterMap"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 13
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findServiceClass form scan-module "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ApiInvokeRegister"

    invoke-static {v1, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic g(Landroid/content/Context;Lcom/transsion/apiinvoke/common/router/ChannelEntity;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->lambda$connectOxygenBusClient$5(Landroid/content/Context;Lcom/transsion/apiinvoke/common/router/ChannelEntity;)V

    return-void
.end method

.method public static declared-synchronized getChannelRealTime(Landroid/content/Context;Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/api/InvokeChannel;
    .locals 2

    const-class v0, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->registerRemoteIpcProxy(Landroid/content/Context;)V

    sget-object p0, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->sRemoteChannelProxy:Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$RemoteIPCChannelProxy;

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$RemoteIPCChannelProxy;->shouldHandle(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    sget-object p0, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->sRemoteChannelProxy:Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$RemoteIPCChannelProxy;

    invoke-virtual {p0, p1}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$RemoteIPCChannelProxy;->getChannel(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/api/InvokeChannel;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-object v1

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static getOxygenBusVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    :try_start_0
    sget-boolean v0, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->SUPPORT_OXYGENBUS:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->getOxygenBusServer(Landroid/content/Context;)Lcom/transsion/kolun/oxygenbus/IOxygenBusServer;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/kolun/oxygenbus/IOxygenBusServer;->getOxygenBusVersion()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getOxygenBusVersion error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ApiInvokeRegister"

    invoke-static {v0, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p0, "0"

    return-object p0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->initService(Landroid/content/Context;)V

    return-void
.end method

.method public static initClient(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusUtils;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    const-string p0, "ApiInvokeRegister"

    const-string v0, "serviceRegister processName == NULL"

    invoke-static {p0, v0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-static {v0}, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->createLocalChannel(Ljava/lang/String;)Lcom/transsion/apiinvoke/common/router/ChannelEntity;

    move-result-object v0

    .line 5
    invoke-static {p0, v0}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->initClient(Landroid/content/Context;Lcom/transsion/apiinvoke/common/router/ChannelEntity;)V

    return-void
.end method

.method public static initClient(Landroid/content/Context;Lcom/transsion/apiinvoke/common/router/ChannelEntity;)V
    .locals 2

    .line 6
    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->initInstance(Landroid/content/Context;)V

    .line 7
    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusUtils;->isAppServiceProcessStarted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 8
    invoke-static {p0, p1, v0}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->initClient(Landroid/content/Context;Lcom/transsion/apiinvoke/common/router/ChannelEntity;Z)V

    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initClient delay waiting connect ==>>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->channelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApiInvokeRegister"

    invoke-static {v1, v0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance v0, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$2;

    invoke-direct {v0, p0, p1}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$2;-><init>(Landroid/content/Context;Lcom/transsion/apiinvoke/common/router/ChannelEntity;)V

    invoke-static {p0, v0}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->postClient(Landroid/content/Context;Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess$Callback;)V

    :goto_0
    return-void
.end method

.method private static initClient(Landroid/content/Context;Lcom/transsion/apiinvoke/common/router/ChannelEntity;Z)V
    .locals 3

    .line 11
    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->isOxygenBusSupport(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->SUPPORT_OXYGENBUS:Z

    .line 12
    const-string v1, "ApiInvokeRegister"

    if-nez v0, :cond_0

    .line 13
    const-string p0, "initClient not support oxygenBus"

    invoke-static {v1, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 14
    :cond_0
    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->initProcessInfo(Landroid/content/Context;)V

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initClient start ==>>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->channelName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-static {p0, p1}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->initClientBusListener(Landroid/content/Context;Lcom/transsion/apiinvoke/common/router/ChannelEntity;)V

    .line 17
    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->registerRemoteIpcProxy(Landroid/content/Context;)V

    .line 18
    invoke-static {}, Lcom/transsion/apiinvoke/ipc/ApiServiceConnect;->getInstance()Lcom/transsion/apiinvoke/ipc/ApiServiceConnect;

    move-result-object v0

    iget-object v2, p1, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->channelName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/transsion/apiinvoke/ipc/ApiServiceConnect;->isConnect(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    invoke-static {}, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->hasGlobalSubscribeNotify()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    .line 20
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "initClient already connected, skip !!! "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->channelName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 21
    :cond_1
    invoke-static {p0, p1}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->registerServiceComponent(Landroid/content/Context;Lcom/transsion/apiinvoke/common/router/ChannelEntity;)V

    .line 22
    iget-object p2, p1, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->channelName:Ljava/lang/String;

    invoke-static {p0, p2}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->registerSubscribeChannel(Landroid/content/Context;Ljava/lang/String;)V

    .line 23
    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->registerRemoteSubscribe(Landroid/content/Context;)V

    .line 24
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "initClient end ==>>"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->channelName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static initClientAsync(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Log5;

    invoke-direct {v0, p0}, Log5;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusUtils;->postWorkRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static initClientBusListener(Landroid/content/Context;Lcom/transsion/apiinvoke/common/router/ChannelEntity;)V
    .locals 1

    sget-object v0, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->sClientStateChangeListener:Lcom/transsion/kolun/oxygenbus/OxygenBusStateChangeListener;

    if-nez v0, :cond_0

    new-instance v0, Lrg5;

    invoke-direct {v0, p1, p0}, Lrg5;-><init>(Lcom/transsion/apiinvoke/common/router/ChannelEntity;Landroid/content/Context;)V

    sput-object v0, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->sClientStateChangeListener:Lcom/transsion/kolun/oxygenbus/OxygenBusStateChangeListener;

    :cond_0
    sget-object p1, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->sClientStateChangeListener:Lcom/transsion/kolun/oxygenbus/OxygenBusStateChangeListener;

    invoke-static {p0, p1}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->addStateListenerAndCheck(Landroid/content/Context;Lcom/transsion/kolun/oxygenbus/OxygenBusStateChangeListener;)V

    return-void
.end method

.method private static declared-synchronized initProcessInfo(Landroid/content/Context;)V
    .locals 5

    const-class v0, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->sProcessInfo:Lcom/transsion/apiinvoke/common/router/ProcessInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusUtils;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v3, "1.5.135"

    new-instance v4, Lcom/transsion/apiinvoke/common/router/ProcessInfo;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v2, v1, p0, v3}, Lcom/transsion/apiinvoke/common/router/ProcessInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->sProcessInfo:Lcom/transsion/apiinvoke/common/router/ProcessInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static initService(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->initService(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static initService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, p1, v0, v1, v0}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->initService(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;ZLcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$InitOxygenBusCallback;)V

    return-void
.end method

.method public static initService(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    invoke-static {p0, p1, p2, v0, v1}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->initService(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;ZLcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$InitOxygenBusCallback;)V

    return-void
.end method

.method private static initService(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;ZLcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$InitOxygenBusCallback;)V
    .locals 3

    .line 4
    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->initInstance(Landroid/content/Context;)V

    .line 5
    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->isOxygenBusSupport(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->SUPPORT_OXYGENBUS:Z

    .line 6
    const-string v1, "ApiInvokeRegister"

    if-nez v0, :cond_0

    .line 7
    const-string p0, "initService not support oxygenBus"

    invoke-static {v1, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initService "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " start >>>  channelName "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-static {p0, p2}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->autoScanLocalApiServices(Landroid/content/Context;[Ljava/lang/String;)V

    .line 10
    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->initProcessInfo(Landroid/content/Context;)V

    .line 11
    new-instance p2, Ljava/util/HashMap;

    invoke-static {}, Lcom/transsion/apiinvoke/common/router/ApiRouterManager;->getChannelMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 12
    invoke-static {p0, p2, p1}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->initServiceChannelMap(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    .line 13
    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusUtils;->isAppServiceProcessStarted(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 14
    invoke-static {p0, p1, p3, p4}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->initServiceRemote(Landroid/content/Context;Ljava/lang/String;ZLcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$InitOxygenBusCallback;)V

    goto :goto_0

    .line 15
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initService waiting process"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance p2, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$1;

    invoke-direct {p2, p0, p1, p3, p4}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$1;-><init>(Landroid/content/Context;Ljava/lang/String;ZLcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$InitOxygenBusCallback;)V

    invoke-static {p0, p2}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->postServer(Landroid/content/Context;Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess$Callback;)V

    :goto_0
    return-void
.end method

.method public static initServiceAsync(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {p0, p1, v0, v1, v0}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->initService(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;ZLcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$InitOxygenBusCallback;)V

    return-void
.end method

.method public static initServiceAsync(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$InitOxygenBusCallback;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3
    invoke-static {p0, p1, v0, v1, p2}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->initService(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;ZLcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$InitOxygenBusCallback;)V

    return-void
.end method

.method public static initServiceAsync(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, p1, p2, v0, v1}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->initService(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;ZLcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$InitOxygenBusCallback;)V

    return-void
.end method

.method public static initServiceAsync(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$InitOxygenBusCallback;)V
    .locals 1

    const/4 v0, 0x1

    .line 4
    invoke-static {p0, p1, p2, v0, p3}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->initService(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;ZLcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$InitOxygenBusCallback;)V

    return-void
.end method

.method private static initServiceBusListener(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/transsion/apiinvoke/common/router/ChannelEntity;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    sget-object p1, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->sServiceStateChangeListener:Lcom/transsion/kolun/oxygenbus/OxygenBusStateChangeListener;

    if-nez p1, :cond_0

    new-instance p1, Ltg5;

    invoke-direct {p1, p0, p2}, Ltg5;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object p1, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->sServiceStateChangeListener:Lcom/transsion/kolun/oxygenbus/OxygenBusStateChangeListener;

    :cond_0
    sget-object p1, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->sServiceStateChangeListener:Lcom/transsion/kolun/oxygenbus/OxygenBusStateChangeListener;

    invoke-static {p0, p1}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->addStateListenerAndCheck(Landroid/content/Context;Lcom/transsion/kolun/oxygenbus/OxygenBusStateChangeListener;)V

    return-void
.end method

.method public static initServiceChannel(Landroid/content/Context;Lcom/transsion/apiinvoke/common/router/ChannelEntity;)V
    .locals 1

    sget-object v0, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->sRemoteChannelProxy:Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$RemoteIPCChannelProxy;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->registerRemoteIpcProxy(Landroid/content/Context;)V

    :cond_0
    invoke-static {p1}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->registerLocalChannel(Lcom/transsion/apiinvoke/common/router/ChannelEntity;)V

    invoke-static {p0, p1}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->autoScanLocalApiServices(Landroid/content/Context;Lcom/transsion/apiinvoke/common/router/ChannelEntity;)V

    invoke-static {p0, p1}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->registerServiceComponent(Landroid/content/Context;Lcom/transsion/apiinvoke/common/router/ChannelEntity;)V

    iget-object p1, p1, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->channelName:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->registerSubscribeChannel(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static initServiceChannelMap(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/transsion/apiinvoke/common/router/ChannelEntity;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-static {}, Lcom/transsion/apiinvoke/common/router/ApiRouterManager;->getRouterMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v1, "ApiInvokeRegister"

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "initServiceChannelMap, empty Services "

    invoke-static {v1, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-eqz p2, :cond_3

    const-string v2, ""

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v2, Lcom/transsion/kolun/oxygenbus/common/CommonApiChannel;

    invoke-direct {v2, p2, p0, v0, p1}, Lcom/transsion/kolun/oxygenbus/common/CommonApiChannel;-><init>(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    :goto_1
    new-instance v2, Lcom/transsion/kolun/oxygenbus/common/CommonApiChannel;

    invoke-direct {v2, p0, v0, p1}, Lcom/transsion/kolun/oxygenbus/common/CommonApiChannel;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v2}, Lcom/transsion/kolun/oxygenbus/common/CommonApiChannel;->toChannelEntity()Lcom/transsion/apiinvoke/common/router/ChannelEntity;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/apiinvoke/common/router/ApiRouterManager;->addNewChannel(Lcom/transsion/apiinvoke/common/router/ChannelEntity;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "initServiceChannelMap, add commonChannel "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/transsion/kolun/oxygenbus/common/CommonApiChannel;->channelName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method private static initServiceRemote(Landroid/content/Context;Ljava/lang/String;ZLcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$InitOxygenBusCallback;)V
    .locals 3

    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->registerRemoteIpcProxy(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initService "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " sync start >>>  channelName "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApiInvokeRegister"

    invoke-static {v1, v0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-static {}, Lcom/transsion/apiinvoke/common/router/ApiRouterManager;->getChannelMap()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    if-eqz p2, :cond_0

    invoke-static {p0, p1, v0, p3}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->syncServiceRegister(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$InitOxygenBusCallback;)V

    goto :goto_0

    :cond_0
    invoke-static {p0, v0}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->serviceRegister(Landroid/content/Context;Ljava/util/Map;)V

    invoke-static {p0, v0, p1}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->initServiceBusListener(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    invoke-interface {p3}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$InitOxygenBusCallback;->onOxygenBusSuccess()V

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "initService done >>>  channelName "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static isChannelConnected(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    sget-boolean v0, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->SUPPORT_OXYGENBUS:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->getOxygenBusServer(Landroid/content/Context;)Lcom/transsion/kolun/oxygenbus/IOxygenBusServer;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/kolun/oxygenbus/IOxygenBusServer;->isChannelConnected(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isChannelConnected error channelName "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ApiInvokeRegister"

    invoke-static {p1, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isChannelRegistered(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    sget-boolean v0, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->SUPPORT_OXYGENBUS:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->getOxygenBusServer(Landroid/content/Context;)Lcom/transsion/kolun/oxygenbus/IOxygenBusServer;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/transsion/kolun/oxygenbus/IOxygenBusServer;->isChannelRegistered(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    return v1

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isChannelRegistered error channelName "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ApiInvokeRegister"

    invoke-static {p1, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static isOxygenBusConnected(Landroid/content/Context;)Z
    .locals 2

    sget-boolean v0, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->SUPPORT_OXYGENBUS:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->getOxygenBusServer(Landroid/content/Context;)Lcom/transsion/kolun/oxygenbus/IOxygenBusServer;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static isOxygenBusSupport(Landroid/content/Context;)Z
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.transsion.kolun.aiservice"

    const-string v2, "com.transsion.kolun.oxygenbus.OxygenBusProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Landroid/content/pm/ProviderInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    return v1

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method private static synthetic lambda$connectOxygenBusClient$5(Landroid/content/Context;Lcom/transsion/apiinvoke/common/router/ChannelEntity;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->initClient(Landroid/content/Context;Lcom/transsion/apiinvoke/common/router/ChannelEntity;)V

    return-void
.end method

.method private static synthetic lambda$connectOxygenBusClient$6(Landroid/content/Context;Lcom/transsion/apiinvoke/common/router/ChannelEntity;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->initClient(Landroid/content/Context;Lcom/transsion/apiinvoke/common/router/ChannelEntity;)V

    return-void
.end method

.method private static synthetic lambda$initClientAsync$0(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->initClient(Landroid/content/Context;)V

    return-void
.end method

.method private static synthetic lambda$initClientBusListener$4(Lcom/transsion/apiinvoke/common/router/ChannelEntity;Landroid/content/Context;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initClientBusListener AppService started ==>>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApiInvokeRegister"

    invoke-static {v1, v0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "initServiceBusListener state not connect "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1, p0}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->connectOxygenBusClient(Landroid/content/Context;Lcom/transsion/apiinvoke/common/router/ChannelEntity;)V

    return-void
.end method

.method private static synthetic lambda$initServiceBusListener$2(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-static {}, Lcom/transsion/apiinvoke/common/router/ApiRouterManager;->getChannelMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initServiceBusListener channelName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " channel map "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ApiInvokeRegister"

    invoke-static {v2, v1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->initProcessInfo(Landroid/content/Context;)V

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "initServiceBusListener empty channelName, please register with client"

    invoke-static {v2, v0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logError(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1, p0}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->registerSubscribeChannel(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "initServiceBusListener registerSubscribeChannel error "

    invoke-static {v2, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->unRegisterRemoteIpcProxy()V

    invoke-static {p1, v0}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->serviceRegister(Landroid/content/Context;Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$initServiceBusListener$3(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "initServiceBusListener state not connect "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ApiInvokeRegister"

    invoke-static {p1, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusUtils;->isAppServiceProcessStarted(Landroid/content/Context;)Z

    move-result p2

    new-instance v0, Lug5;

    invoke-direct {v0, p1, p0}, Lug5;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    if-eqz p2, :cond_1

    const-wide/16 p0, 0x64

    goto :goto_0

    :cond_1
    const-wide/16 p0, 0x1f4

    :goto_0
    invoke-static {v0, p0, p1}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusUtils;->postRunnable(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private static synthetic lambda$syncServiceRegister$1(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$InitOxygenBusCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->serviceRegister(Landroid/content/Context;Ljava/util/Map;)V

    invoke-static {p0, p1, p2}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->initServiceBusListener(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$InitOxygenBusCallback;->onOxygenBusSuccess()V

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "initService syncServiceRegister done >>>  channelName "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ApiInvokeRegister"

    invoke-static {p1, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static registerApiServiceByChannel(Ljava/lang/String;Lcom/transsion/apiinvoke/common/router/ChannelEntity;)V
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/apiinvoke/common/router/ApiRouterManager;->register(Ljava/lang/Class;)V

    const-string p1, "ApiInvokeRegister"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerApi packageClass ==> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static registerApis([Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "Lcom/transsion/apiinvoke/IApiService;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/transsion/apiinvoke/common/router/ApiRouterManager;->registerApi(Ljava/lang/Class;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addDynamicChannel, registerApi "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ApiInvokeRegister"

    invoke-static {v3, v2}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static registerChannel(Landroid/content/Context;Lcom/transsion/apiinvoke/common/router/ChannelEntity;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->registerChannel(Landroid/content/Context;Lcom/transsion/apiinvoke/common/router/ChannelEntity;[Ljava/lang/Class;)V

    return-void
.end method

.method public static registerChannel(Landroid/content/Context;Lcom/transsion/apiinvoke/common/router/ChannelEntity;[Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/transsion/apiinvoke/common/router/ChannelEntity;",
            "[",
            "Ljava/lang/Class<",
            "Lcom/transsion/apiinvoke/IApiService;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->registerLocalChannel(Lcom/transsion/apiinvoke/common/router/ChannelEntity;)V

    .line 3
    invoke-static {p1}, Lcom/transsion/apiinvoke/common/router/ApiRouterManager;->addNewChannel(Lcom/transsion/apiinvoke/common/router/ChannelEntity;)V

    .line 4
    iget-object v0, p1, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->channelName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->registerSubscribeChannel(Landroid/content/Context;Ljava/lang/String;)V

    .line 5
    invoke-static {p0, p1}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->registerServiceComponent(Landroid/content/Context;Lcom/transsion/apiinvoke/common/router/ChannelEntity;)V

    if-eqz p2, :cond_0

    .line 6
    array-length v0, p2

    if-lez v0, :cond_0

    .line 7
    invoke-static {p2}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->registerApis([Ljava/lang/Class;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p0, p1}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->autoScanLocalApiServices(Landroid/content/Context;Lcom/transsion/apiinvoke/common/router/ChannelEntity;)V

    .line 9
    :goto_0
    invoke-static {}, Lcom/transsion/apiinvoke/common/router/ApiRouterManager;->listRegisterServer()V

    .line 10
    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->registerRemoteIpcProxy(Landroid/content/Context;)V

    .line 11
    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->registerRemoteSubscribe(Landroid/content/Context;)V

    return-void
.end method

.method public static registerDynamicApiService(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/apiinvoke/IApiService;)V
    .locals 2

    invoke-static {}, Lcom/transsion/apiinvoke/channel/ApiChannel;->getInstance()Lcom/transsion/apiinvoke/channel/ApiChannel;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/apiinvoke/channel/ApiChannel;->getChannel(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/api/InvokeChannel;

    move-result-object v0

    instance-of v1, v0, Lcom/transsion/apiinvoke/channel/LocalChannel;

    if-nez v1, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot register, not a local channel "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " apiName "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ApiInvokeRegister"

    invoke-static {p1, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    check-cast v0, Lcom/transsion/apiinvoke/channel/LocalChannel;

    invoke-virtual {v0}, Lcom/transsion/apiinvoke/channel/LocalChannel;->getServiceManager()Lcom/transsion/apiinvoke/invoke/connect/ChannelServiceManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/apiinvoke/invoke/connect/ChannelServiceManager;->registerService(Ljava/lang/String;Lcom/transsion/apiinvoke/IApiService;)V

    return-void
.end method

.method private static registerLocalChannel(Lcom/transsion/apiinvoke/common/router/ChannelEntity;)V
    .locals 2

    invoke-static {}, Lcom/transsion/apiinvoke/channel/ApiChannel;->getInstance()Lcom/transsion/apiinvoke/channel/ApiChannel;

    move-result-object v0

    new-instance v1, Lcom/transsion/apiinvoke/channel/ApiChannel$LocalChannelCreator;

    invoke-direct {v1, p0}, Lcom/transsion/apiinvoke/channel/ApiChannel$LocalChannelCreator;-><init>(Lcom/transsion/apiinvoke/common/router/ChannelEntity;)V

    invoke-virtual {v0, v1}, Lcom/transsion/apiinvoke/channel/ApiChannel;->addLocalChannelCreator(Lcom/transsion/apiinvoke/channel/ApiChannel$LocalChannelCreator;)V

    return-void
.end method

.method public static registerRemoteChannel(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 2

    sget-boolean v0, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->SUPPORT_OXYGENBUS:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->getOxygenBusServer(Landroid/content/Context;)Lcom/transsion/kolun/oxygenbus/IOxygenBusServer;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/kolun/oxygenbus/IOxygenBusServer;->registerService(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    return v1

    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "registerRemoteChannel error channelName "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ApiInvokeRegister"

    invoke-static {p1, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static declared-synchronized registerRemoteIpcProxy(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;

    monitor-enter v0

    :try_start_0
    const-string v1, "ApiInvokeRegister"

    const-string v2, "registerRemoteIpcProxy "

    invoke-static {v1, v2}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->sRemoteChannelProxy:Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$RemoteIPCChannelProxy;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->unRegisterRemoteIpcProxy()V

    new-instance v1, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$RemoteIPCChannelProxy;

    invoke-direct {v1, p0}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$RemoteIPCChannelProxy;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->sRemoteChannelProxy:Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$RemoteIPCChannelProxy;

    invoke-static {}, Lcom/transsion/apiinvoke/channel/ApiChannel;->getInstance()Lcom/transsion/apiinvoke/channel/ApiChannel;

    move-result-object p0

    sget-object v1, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->sRemoteChannelProxy:Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$RemoteIPCChannelProxy;

    invoke-virtual {p0, v1}, Lcom/transsion/apiinvoke/channel/ApiChannel;->addChannelCreator(Lcom/transsion/apiinvoke/channel/ApiChannel$ChannelCreator;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$RemoteIPCChannelProxy;->clearConnection()V

    invoke-static {}, Lcom/transsion/apiinvoke/channel/ApiChannel;->getInstance()Lcom/transsion/apiinvoke/channel/ApiChannel;

    move-result-object p0

    sget-object v1, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->sRemoteChannelProxy:Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$RemoteIPCChannelProxy;

    invoke-virtual {p0, v1}, Lcom/transsion/apiinvoke/channel/ApiChannel;->addChannelCreator(Lcom/transsion/apiinvoke/channel/ApiChannel$ChannelCreator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static registerRemoteSubscribe(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->hasGlobalSubscribeNotify()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ApiInvokeRegister"

    const-string v1, "registerRemoteSubscribe"

    invoke-static {v0, v1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$DataCenterSubscribeChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$DataCenterSubscribeChangeListener;-><init>(Landroid/content/Context;Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$1;)V

    invoke-static {v0}, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->setGlobalSubscribeNotify(Lcom/transsion/apiinvoke/subscribe/SubscribeManager$SubscribeCenterCountChangeListener;)V

    :cond_0
    return-void
.end method

.method private static registerServiceComponent(Landroid/content/Context;Lcom/transsion/apiinvoke/common/router/ChannelEntity;)V
    .locals 4

    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->getOxygenBusServer(Landroid/content/Context;)Lcom/transsion/kolun/oxygenbus/IOxygenBusServer;

    move-result-object p0

    const-string v0, "ApiInvokeRegister"

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerServiceComponent oxygenBusServer == null "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerServiceComponent \n "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->channelName:Ljava/lang/String;

    iget-object v1, p1, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->channelService:[Ljava/lang/String;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->className:Ljava/lang/String;

    invoke-direct {v2, v3, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0, v1, v2}, Lcom/transsion/kolun/oxygenbus/IOxygenBusServer;->registerService(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static registerSubscribe(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-static {}, Lcom/transsion/apiinvoke/common/router/ApiRouterManager;->getChannelMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    :try_start_0
    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->registerRemoteSubscribe(Landroid/content/Context;)V

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->registerSubscribeChannel(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/apiinvoke/common/router/ChannelEntity;

    iget-object v1, v1, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->channelName:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->registerSubscribeChannel(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerSubscribe error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ApiInvokeRegister"

    invoke-static {v0, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static registerSubscribeChannel(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->getSubscribeServer(Landroid/content/Context;)Lcom/transsion/kolun/oxygenbus/ISubscribeBusServer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->initProcessInfo(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->sProcessInfo:Lcom/transsion/apiinvoke/common/router/ProcessInfo;

    invoke-virtual {p1}, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->process()Ljava/lang/String;

    move-result-object p1

    :cond_1
    sget-object v0, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->sProcessInfo:Lcom/transsion/apiinvoke/common/router/ProcessInfo;

    invoke-virtual {v0}, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->clone()Lcom/transsion/apiinvoke/common/router/ProcessInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->putChannel(Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->getInstance()Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->registerRemoteSubscribeStub(Landroid/content/Context;Lcom/transsion/apiinvoke/common/router/ProcessInfo;Ljava/lang/String;)V

    return-void
.end method

.method public static removeServiceChannel(Landroid/content/Context;Lcom/transsion/apiinvoke/common/router/ChannelEntity;)V
    .locals 1

    :try_start_0
    iget-object v0, p1, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->channelName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->unRegisterChannel(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->channelName:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->unRegisterSubscribe(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "removeServiceChannel error "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ApiInvokeRegister"

    invoke-static {p1, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static serviceRegister(Landroid/content/Context;)V
    .locals 3

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-static {}, Lcom/transsion/apiinvoke/common/router/ApiRouterManager;->getChannelMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serviceRegister entityMap size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ApiInvokeRegister"

    invoke-static {v2, v1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 11
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 12
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/apiinvoke/common/router/ChannelEntity;

    .line 13
    invoke-static {p0, v1}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->registerServiceComponent(Landroid/content/Context;Lcom/transsion/apiinvoke/common/router/ChannelEntity;)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusUtils;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 16
    const-string p0, "serviceRegister processName == NULL"

    invoke-static {v2, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 17
    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->createLocalChannel(Ljava/lang/String;[Ljava/lang/String;)Lcom/transsion/apiinvoke/common/router/ChannelEntity;

    move-result-object v0

    .line 18
    invoke-static {p0, v0}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->registerServiceComponent(Landroid/content/Context;Lcom/transsion/apiinvoke/common/router/ChannelEntity;)V

    :cond_2
    return-void
.end method

.method private static serviceRegister(Landroid/content/Context;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/transsion/apiinvoke/common/router/ChannelEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->registerRemoteIpcProxy(Landroid/content/Context;)V

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/apiinvoke/common/router/ChannelEntity;

    .line 4
    invoke-static {p0, v0}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->registerServiceComponent(Landroid/content/Context;Lcom/transsion/apiinvoke/common/router/ChannelEntity;)V

    .line 5
    iget-object v1, v0, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->channelName:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->registerSubscribeChannel(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    invoke-static {p0, v0}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->registerChannel(Landroid/content/Context;Lcom/transsion/apiinvoke/common/router/ChannelEntity;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->registerRemoteSubscribe(Landroid/content/Context;)V

    return-void
.end method

.method private static syncServiceRegister(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$InitOxygenBusCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/transsion/apiinvoke/common/router/ChannelEntity;",
            ">;",
            "Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$InitOxygenBusCallback;",
            ")V"
        }
    .end annotation

    new-instance v0, Lsg5;

    invoke-direct {v0, p0, p2, p1, p3}, Lsg5;-><init>(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$InitOxygenBusCallback;)V

    invoke-static {v0}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusUtils;->postWorkRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static unRegisterApiService(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/transsion/apiinvoke/channel/ApiChannel;->getInstance()Lcom/transsion/apiinvoke/channel/ApiChannel;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/apiinvoke/channel/ApiChannel;->getChannel(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/api/InvokeChannel;

    move-result-object v0

    instance-of v1, v0, Lcom/transsion/apiinvoke/channel/LocalChannel;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot register, not a local channel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " apiName "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ApiInvokeRegister"

    invoke-static {p1, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    check-cast v0, Lcom/transsion/apiinvoke/channel/LocalChannel;

    invoke-virtual {v0}, Lcom/transsion/apiinvoke/channel/LocalChannel;->getServiceManager()Lcom/transsion/apiinvoke/invoke/connect/ChannelServiceManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/apiinvoke/invoke/connect/ChannelServiceManager;->unRegisterService(Ljava/lang/String;)V

    return-void
.end method

.method public static unRegisterChannel(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->SUPPORT_OXYGENBUS:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->getOxygenBusServer(Landroid/content/Context;)Lcom/transsion/kolun/oxygenbus/IOxygenBusServer;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-interface {p0, p1}, Lcom/transsion/kolun/oxygenbus/IOxygenBusServer;->unRegisterService(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unRegisterChannel error channelName "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ApiInvokeRegister"

    invoke-static {p1, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static declared-synchronized unRegisterRemoteIpcProxy()V
    .locals 3

    const-class v0, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->sRemoteChannelProxy:Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$RemoteIPCChannelProxy;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/transsion/apiinvoke/channel/ApiChannel;->getInstance()Lcom/transsion/apiinvoke/channel/ApiChannel;

    move-result-object v1

    sget-object v2, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->sRemoteChannelProxy:Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$RemoteIPCChannelProxy;

    invoke-virtual {v1, v2}, Lcom/transsion/apiinvoke/channel/ApiChannel;->removeChannelCreator(Lcom/transsion/apiinvoke/channel/ApiChannel$ChannelCreator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static unRegisterSubscribe(Landroid/content/Context;)V
    .locals 4

    .line 8
    sget-boolean v0, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->SUPPORT_OXYGENBUS:Z

    if-nez v0, :cond_0

    return-void

    .line 9
    :cond_0
    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->getSubscribeServer(Landroid/content/Context;)Lcom/transsion/kolun/oxygenbus/ISubscribeBusServer;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 10
    invoke-static {v0}, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->setGlobalSubscribeNotify(Lcom/transsion/apiinvoke/subscribe/SubscribeManager$SubscribeCenterCountChangeListener;)V

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-static {}, Lcom/transsion/apiinvoke/common/router/ApiRouterManager;->getChannelMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 12
    :try_start_0
    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->initProcessInfo(Landroid/content/Context;)V

    .line 13
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 14
    invoke-static {}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->getInstance()Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;

    move-result-object v0

    sget-object v1, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->sProcessInfo:Lcom/transsion/apiinvoke/common/router/ProcessInfo;

    const-string v2, ""

    invoke-virtual {v0, p0, v1, v2}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->unRegisterRemoteSubscribeStub(Landroid/content/Context;Lcom/transsion/apiinvoke/common/router/ProcessInfo;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_1

    .line 15
    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 16
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/apiinvoke/common/router/ChannelEntity;

    .line 17
    sget-object v2, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->sProcessInfo:Lcom/transsion/apiinvoke/common/router/ProcessInfo;

    invoke-virtual {v2}, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->clone()Lcom/transsion/apiinvoke/common/router/ProcessInfo;

    move-result-object v2

    .line 18
    iget-object v3, v1, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->channelName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->putChannel(Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->getInstance()Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;

    move-result-object v3

    iget-object v1, v1, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->channelName:Ljava/lang/String;

    invoke-virtual {v3, p0, v2, v1}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->unRegisterRemoteSubscribeStub(Landroid/content/Context;Lcom/transsion/apiinvoke/common/router/ProcessInfo;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 20
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return-void
.end method

.method public static unRegisterSubscribe(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->SUPPORT_OXYGENBUS:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->getSubscribeServer(Landroid/content/Context;)Lcom/transsion/kolun/oxygenbus/ISubscribeBusServer;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->initProcessInfo(Landroid/content/Context;)V

    .line 4
    sget-object v0, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->sProcessInfo:Lcom/transsion/apiinvoke/common/router/ProcessInfo;

    invoke-virtual {v0}, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->clone()Lcom/transsion/apiinvoke/common/router/ProcessInfo;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->putChannel(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->getInstance()Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->unRegisterRemoteSubscribeStub(Landroid/content/Context;Lcom/transsion/apiinvoke/common/router/ProcessInfo;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
