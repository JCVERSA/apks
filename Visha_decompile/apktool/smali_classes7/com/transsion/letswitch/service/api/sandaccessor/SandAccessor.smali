.class public Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor$ISandAccessor;,
        Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor$CommandResult;,
        Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor$ICommandCallback;
    }
.end annotation


# static fields
.field private static final RUN_COMMAND_TIMEOUT:J = 0x927c0L

.field private static final TAG:Ljava/lang/String; = "SandAccessor"


# instance fields
.field private final UN_SUPPORT:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mImpl:Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor$ISandAccessor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "This device doesn\'t support sandaccessor"

    iput-object v0, p0, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor;->UN_SUPPORT:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    const-string p1, "sand_accessor"

    invoke-static {p1}, Lcom/transsion/letswitch/service/api/sandaccessor/AndroidHiddenApi$ServiceManagerProxy;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessorImpl;

    invoke-direct {v0, p1}, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessorImpl;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor;->mImpl:Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor$ISandAccessor;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public copyFile(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 6

    iget-object v0, p0, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor;->mImpl:Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor$ISandAccessor;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor$ISandAccessor;->copyFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public deleteFile(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor;->mImpl:Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor$ISandAccessor;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor$ISandAccessor;->deleteFile(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor;->mImpl:Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor$ISandAccessor;

    if-nez p0, :cond_0

    const-string p0, "This device doesn\'t support sandaccessor"

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor$ISandAccessor;->getErrorMessage()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public isSupport()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor;->mImpl:Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor$ISandAccessor;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public listAppDataFile(Ljava/lang/String;II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor;->mImpl:Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor$ISandAccessor;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor$ISandAccessor;->listFile(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public runCommand(Ljava/lang/String;Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor$ICommandCallback;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor;->runCommand(Ljava/lang/String;ZLcom/transsion/letswitch/service/api/sandaccessor/SandAccessor$ICommandCallback;)V

    return-void
.end method

.method public runCommand(Ljava/lang/String;ZLcom/transsion/letswitch/service/api/sandaccessor/SandAccessor$ICommandCallback;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor;->mImpl:Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor$ISandAccessor;

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor$ISandAccessor;->runCommand(Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/letswitch/service/api/sandaccessor/SandAccessor$ICommandCallback;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    const/4 p0, -0x1

    .line 4
    const-string p1, "this device is not support SandAccessor"

    invoke-interface {p3, p0, p1}, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor$ICommandCallback;->onCommandFinished(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public runCommandAndWaitResult(Ljava/lang/String;)Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor$CommandResult;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v1, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor$CommandResult;

    invoke-direct {v1, v0}, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor$CommandResult;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, p1, v1}, Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor;->runCommand(Ljava/lang/String;Lcom/transsion/letswitch/service/api/sandaccessor/SandAccessor$ICommandCallback;)V

    :try_start_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v2, 0x927c0

    invoke-virtual {v0, v2, v3, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to wait "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SandAccessor"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1
.end method
