.class public Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/os/ITranSystemPropertiesAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranAospSystemProperties"

.field private static sClassName:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private mMethodNameGet:Ljava/lang/reflect/Method;

.field private mMethodNameGetBoolean:Ljava/lang/reflect/Method;

.field private mMethodNameGetInt:Ljava/lang/reflect/Method;

.field private mMethodNameGetLong:Ljava/lang/reflect/Method;

.field private mMethodNameSet:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->sClassName:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->mMethodNameGet:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->mMethodNameGetInt:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->mMethodNameGetLong:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->mMethodNameGetBoolean:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->mMethodNameSet:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->mMethodNameGet:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->sClassName:Ljava/lang/Class;

    const-string v1, "get"

    const-class v2, Ljava/lang/String;

    filled-new-array {v2, v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->mMethodNameGet:Ljava/lang/reflect/Method;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->mMethodNameGet:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->mMethodNameGet:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->sClassName:Ljava/lang/Class;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_1

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p2, p0

    :catchall_0
    :cond_1
    return-object p2
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->mMethodNameGetBoolean:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->sClassName:Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getBoolean"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->mMethodNameGetBoolean:Ljava/lang/reflect/Method;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->mMethodNameGetBoolean:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->mMethodNameGetBoolean:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->sClassName:Ljava/lang/Class;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return p2
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->mMethodNameGetInt:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->sClassName:Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getInt"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->mMethodNameGetInt:Ljava/lang/reflect/Method;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->mMethodNameGetInt:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->mMethodNameGetInt:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->sClassName:Ljava/lang/Class;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return p2
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->mMethodNameGetLong:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->sClassName:Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getLong"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->mMethodNameGetLong:Ljava/lang/reflect/Method;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->mMethodNameGetLong:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->mMethodNameGetLong:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->sClassName:Ljava/lang/Class;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    instance-of p1, p0, Ljava/lang/Long;

    if-eqz p1, :cond_1

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-wide p2
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->mMethodNameSet:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->sClassName:Ljava/lang/Class;

    const-string v1, "set"

    const-class v2, Ljava/lang/String;

    filled-new-array {v2, v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->mMethodNameSet:Ljava/lang/reflect/Method;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->mMethodNameSet:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->mMethodNameSet:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->sClassName:Ljava/lang/Class;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "set fail "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
