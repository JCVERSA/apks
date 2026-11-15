.class public Lcom/transsion/vishaplayersdk/VishaPlayerSDK;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile instance:Lcom/transsion/vishaplayersdk/VishaPlayerSDK;


# instance fields
.field private mApp:Landroid/app/Application;

.field private mDeviceId:Ljava/lang/String;

.field private sDebugMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "visha_playersdk_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/transsion/vishaplayersdk/VishaPlayerSDK;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/vishaplayersdk/VishaPlayerSDK;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/VishaPlayerSDK;->sDebugMode:Z

    return-void
.end method

.method public static getInstance()Lcom/transsion/vishaplayersdk/VishaPlayerSDK;
    .locals 2

    sget-object v0, Lcom/transsion/vishaplayersdk/VishaPlayerSDK;->instance:Lcom/transsion/vishaplayersdk/VishaPlayerSDK;

    if-nez v0, :cond_1

    const-class v0, Lcom/transsion/vishaplayersdk/VishaPlayerSDK;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/vishaplayersdk/VishaPlayerSDK;->instance:Lcom/transsion/vishaplayersdk/VishaPlayerSDK;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/vishaplayersdk/VishaPlayerSDK;

    invoke-direct {v1}, Lcom/transsion/vishaplayersdk/VishaPlayerSDK;-><init>()V

    sput-object v1, Lcom/transsion/vishaplayersdk/VishaPlayerSDK;->instance:Lcom/transsion/vishaplayersdk/VishaPlayerSDK;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/transsion/vishaplayersdk/VishaPlayerSDK;->instance:Lcom/transsion/vishaplayersdk/VishaPlayerSDK;

    return-object v0
.end method


# virtual methods
.method public getAPP()Landroid/app/Application;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/VishaPlayerSDK;->mApp:Landroid/app/Application;

    return-object p0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/VishaPlayerSDK;->mDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public init(Landroid/app/Application;Ljava/lang/String;Z)V
    .locals 3

    sget-object v0, Lcom/transsion/vishaplayersdk/VishaPlayerSDK;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init visha player sdk gid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/VishaPlayerSDK;->mApp:Landroid/app/Application;

    iput-object p2, p0, Lcom/transsion/vishaplayersdk/VishaPlayerSDK;->mDeviceId:Ljava/lang/String;

    if-eqz p3, :cond_0

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->enable()V

    :cond_0
    return-void
.end method

.method public isDebugMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/VishaPlayerSDK;->sDebugMode:Z

    return p0
.end method

.method public setDebugMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/VishaPlayerSDK;->sDebugMode:Z

    return-void
.end method
