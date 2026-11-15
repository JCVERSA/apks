.class public Lcom/transsion/hubsdk/api/os/TranSystemProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranSystemProperties"

.field protected static sAospService:Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;

.field protected static sThubService:Lcom/transsion/hubsdk/core/os/TranThubSystemProperties;


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

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x0
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    :try_start_0
    sget-object v1, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-static {v1}, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranSystemPropertiesAdapter;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Lcom/transsion/hubsdk/interfaces/os/ITranSystemPropertiesAdapter;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    sget-object v1, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMethod:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x0
    .end annotation

    .line 4
    :try_start_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranSystemPropertiesAdapter;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/interfaces/os/ITranSystemPropertiesAdapter;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    sget-object v0, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWithDefaultMethod:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p1
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .locals 3
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x0
    .end annotation

    :try_start_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranSystemPropertiesAdapter;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/interfaces/os/ITranSystemPropertiesAdapter;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBooleanMethod:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return p1
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 3
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x0
    .end annotation

    :try_start_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranSystemPropertiesAdapter;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/interfaces/os/ITranSystemPropertiesAdapter;->getInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIntMethod:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return p1
.end method

.method public static getLong(Ljava/lang/String;J)J
    .locals 3
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x0
    .end annotation

    :try_start_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranSystemPropertiesAdapter;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/os/ITranSystemPropertiesAdapter;->getLong(Ljava/lang/String;J)J

    move-result-wide p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLongMethod:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-wide p1
.end method

.method public static getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranSystemPropertiesAdapter;
    .locals 1

    invoke-static {p0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->TAG:Ljava/lang/String;

    const-string v0, "TranThubSystemProperties"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->sThubService:Lcom/transsion/hubsdk/core/os/TranThubSystemProperties;

    if-nez p0, :cond_0

    new-instance p0, Lcom/transsion/hubsdk/core/os/TranThubSystemProperties;

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/os/TranThubSystemProperties;-><init>()V

    sput-object p0, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->sThubService:Lcom/transsion/hubsdk/core/os/TranThubSystemProperties;

    :cond_0
    return-object p0

    :cond_1
    sget-object p0, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->TAG:Ljava/lang/String;

    const-string v0, "TranAospSystemProperties"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->sAospService:Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;

    if-nez p0, :cond_2

    new-instance p0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;

    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;-><init>()V

    sput-object p0, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->sAospService:Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;

    :cond_2
    return-object p0
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    :try_start_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranSystemPropertiesAdapter;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/interfaces/os/ITranSystemPropertiesAdapter;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMethod:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
