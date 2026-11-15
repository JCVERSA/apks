.class public Lcom/transsion/apiinvoke/invoke/InvokePath;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/apiinvoke/invoke/InvokePath$Request;,
        Lcom/transsion/apiinvoke/invoke/InvokePath$Publish;
    }
.end annotation


# static fields
.field private static transient PROCESS_NAME:Ljava/lang/String; = ""

.field private static final serialVersionUID:J = -0x34c97cba8bae6040L


# instance fields
.field public channelName:Ljava/lang/String;

.field public process:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/transsion/apiinvoke/invoke/InvokePath;->initProcessName(Lcom/transsion/apiinvoke/invoke/InvokePath;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/transsion/apiinvoke/invoke/InvokePath;->channelName:Ljava/lang/String;

    .line 5
    invoke-static {p0}, Lcom/transsion/apiinvoke/invoke/InvokePath;->initProcessName(Lcom/transsion/apiinvoke/invoke/InvokePath;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/transsion/apiinvoke/invoke/InvokePath;->process:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcom/transsion/apiinvoke/invoke/InvokePath;->channelName:Ljava/lang/String;

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/InvokePath;
    .locals 1

    new-instance v0, Lcom/transsion/apiinvoke/invoke/InvokePath;

    invoke-direct {v0, p0}, Lcom/transsion/apiinvoke/invoke/InvokePath;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createPublish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/InvokePath;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/apiinvoke/invoke/InvokePath$Publish;

    invoke-direct {v0}, Lcom/transsion/apiinvoke/invoke/InvokePath$Publish;-><init>()V

    .line 2
    invoke-static {v0}, Lcom/transsion/apiinvoke/invoke/InvokePath;->initProcessName(Lcom/transsion/apiinvoke/invoke/InvokePath;)V

    .line 3
    iput-object p0, v0, Lcom/transsion/apiinvoke/invoke/InvokePath;->channelName:Ljava/lang/String;

    .line 4
    iput-object p1, v0, Lcom/transsion/apiinvoke/invoke/InvokePath$Publish;->apiName:Ljava/lang/String;

    .line 5
    iput-object p2, v0, Lcom/transsion/apiinvoke/invoke/InvokePath$Publish;->matcher:Ljava/lang/String;

    return-object v0
.end method

.method public static createPublish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/InvokePath;
    .locals 1

    .line 6
    new-instance v0, Lcom/transsion/apiinvoke/invoke/InvokePath$Publish;

    invoke-direct {v0}, Lcom/transsion/apiinvoke/invoke/InvokePath$Publish;-><init>()V

    .line 7
    iput-object p0, v0, Lcom/transsion/apiinvoke/invoke/InvokePath;->process:Ljava/lang/String;

    .line 8
    iput-object p1, v0, Lcom/transsion/apiinvoke/invoke/InvokePath;->channelName:Ljava/lang/String;

    .line 9
    iput-object p2, v0, Lcom/transsion/apiinvoke/invoke/InvokePath$Publish;->apiName:Ljava/lang/String;

    .line 10
    iput-object p3, v0, Lcom/transsion/apiinvoke/invoke/InvokePath$Publish;->matcher:Ljava/lang/String;

    return-object v0
.end method

.method public static createRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/InvokePath;
    .locals 1

    new-instance v0, Lcom/transsion/apiinvoke/invoke/InvokePath$Request;

    invoke-direct {v0}, Lcom/transsion/apiinvoke/invoke/InvokePath$Request;-><init>()V

    invoke-static {v0}, Lcom/transsion/apiinvoke/invoke/InvokePath;->initProcessName(Lcom/transsion/apiinvoke/invoke/InvokePath;)V

    iput-object p0, v0, Lcom/transsion/apiinvoke/invoke/InvokePath;->channelName:Ljava/lang/String;

    iput-object p1, v0, Lcom/transsion/apiinvoke/invoke/InvokePath$Request;->apiName:Ljava/lang/String;

    iput-object p2, v0, Lcom/transsion/apiinvoke/invoke/InvokePath$Request;->method:Ljava/lang/String;

    return-object v0
.end method

.method private static getCurrentProcessNameByActivityThread()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.ActivityThread"

    const-class v2, Lcom/transsion/apiinvoke/invoke/InvokePath;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "currentProcessName"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v1, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    const-string v1, "Config"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentProcessNameByActivityThread processName ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-object v0
.end method

.method private static initProcessName(Lcom/transsion/apiinvoke/invoke/InvokePath;)V
    .locals 3

    const-class v0, Lcom/transsion/apiinvoke/invoke/InvokePath;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/apiinvoke/invoke/InvokePath;->PROCESS_NAME:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {}, Lcom/transsion/apiinvoke/invoke/InvokePath;->getCurrentProcessNameByActivityThread()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/transsion/apiinvoke/invoke/InvokePath;->PROCESS_NAME:Ljava/lang/String;

    :cond_1
    sget-object v1, Lcom/transsion/apiinvoke/invoke/InvokePath;->PROCESS_NAME:Ljava/lang/String;

    iput-object v1, p0, Lcom/transsion/apiinvoke/invoke/InvokePath;->process:Ljava/lang/String;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public channelName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/InvokePath;->channelName:Ljava/lang/String;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/transsion/apiinvoke/invoke/InvokePath;

    iget-object v2, p0, Lcom/transsion/apiinvoke/invoke/InvokePath;->process:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/apiinvoke/invoke/InvokePath;->process:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/InvokePath;->channelName:Ljava/lang/String;

    iget-object p1, p1, Lcom/transsion/apiinvoke/invoke/InvokePath;->channelName:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/apiinvoke/invoke/InvokePath;->process:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/InvokePath;->channelName:Ljava/lang/String;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public process()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/InvokePath;->process:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InvokePath{channelName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/apiinvoke/invoke/InvokePath;->channelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", process=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/InvokePath;->process:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
