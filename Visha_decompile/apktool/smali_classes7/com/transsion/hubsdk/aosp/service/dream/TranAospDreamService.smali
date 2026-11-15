.class public Lcom/transsion/hubsdk/aosp/service/dream/TranAospDreamService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/service/dream/ITranDreamServiceAdapter;


# static fields
.field private static final DREAM_SERVICE:Ljava/lang/String; = "dreams"

.field private static final TAG:Ljava/lang/String; = "TranAospDreamService"

.field private static sClassName:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sManagerClassName:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private mMethodAsInterface:Ljava/lang/reflect/Method;

.field private mMethodGetService:Ljava/lang/reflect/Method;

.field private mObject:Ljava/lang/Object;

.field private mTranAospDreamServiceWrapperExt:Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "android.service.dreams.IDreamManager$Stub"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/service/dream/TranAospDreamService;->sClassName:Ljava/lang/Class;

    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/service/dream/TranAospDreamService;->sManagerClassName:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/service/dream/TranAospDreamService;->getIDreamManager()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/service/dream/TranAospDreamService;->mObject:Ljava/lang/Object;

    return-void
.end method

.method private getIDreamManager()Ljava/lang/Object;
    .locals 3

    sget-object v0, Lcom/transsion/hubsdk/aosp/service/dream/TranAospDreamService;->sManagerClassName:Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getService"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/service/dream/TranAospDreamService;->mMethodGetService:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/transsion/hubsdk/aosp/service/dream/TranAospDreamService;->sClassName:Ljava/lang/Class;

    const-class v1, Landroid/os/IBinder;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "asInterface"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/service/dream/TranAospDreamService;->mMethodAsInterface:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/service/dream/TranAospDreamService;->mMethodGetService:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/transsion/hubsdk/aosp/service/dream/TranAospDreamService;->sManagerClassName:Ljava/lang/Class;

    const-string v2, "dreams"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/os/IBinder;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/os/IBinder;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/service/dream/TranAospDreamService;->mMethodAsInterface:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/transsion/hubsdk/aosp/service/dream/TranAospDreamService;->sClassName:Ljava/lang/Class;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private getTranAospDreamServiceWrapperExt()Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt;
    .locals 1

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/service/dream/TranAospDreamService;->mTranAospDreamServiceWrapperExt:Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt;

    invoke-direct {v0}, Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/service/dream/TranAospDreamService;->mTranAospDreamServiceWrapperExt:Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt;

    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/service/dream/TranAospDreamService;->mTranAospDreamServiceWrapperExt:Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt;

    return-object p0
.end method


# virtual methods
.method public finishSelf(Landroid/os/IBinder;Z)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/service/dream/TranAospDreamService;->mObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/os/IBinder;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "finishSelf"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/service/dream/TranAospDreamService;->mObject:Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public getTranDreamServiceWrapper(Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$ITranDreamService;)Landroid/os/IBinder;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/service/dream/TranAospDreamService;->getTranAospDreamServiceWrapperExt()Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt;->getTranDreamServiceWrapper(Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$ITranDreamService;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public startDozing(Landroid/os/IBinder;II)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/service/dream/TranAospDreamService;->mObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/os/IBinder;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v2, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "startDozing"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/service/dream/TranAospDreamService;->mObject:Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public stopDozing(Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/service/dream/TranAospDreamService;->mObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/os/IBinder;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "stopDozing"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/service/dream/TranAospDreamService;->mObject:Ljava/lang/Object;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
