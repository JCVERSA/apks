.class Lcom/transsion/core/pool/TranssionPoolExecutor$DefaultThreadFactory$1;
.super Ljava/lang/Thread;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/core/pool/TranssionPoolExecutor$DefaultThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/core/pool/TranssionPoolExecutor$DefaultThreadFactory;


# direct methods
.method constructor <init>(Lcom/transsion/core/pool/TranssionPoolExecutor$DefaultThreadFactory;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/core/pool/TranssionPoolExecutor$DefaultThreadFactory$1;->this$0:Lcom/transsion/core/pool/TranssionPoolExecutor$DefaultThreadFactory;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/core/pool/TranssionPoolExecutor$DefaultThreadFactory$1;->this$0:Lcom/transsion/core/pool/TranssionPoolExecutor$DefaultThreadFactory;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/transsion/core/pool/TranssionPoolExecutor$DefaultThreadFactory;->a(Lcom/transsion/core/pool/TranssionPoolExecutor$DefaultThreadFactory;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 15
    .line 16
    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    :try_start_0
    invoke-super {p0}, Ljava/lang/Thread;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    iget-object v1, p0, Lcom/transsion/core/pool/TranssionPoolExecutor$DefaultThreadFactory$1;->this$0:Lcom/transsion/core/pool/TranssionPoolExecutor$DefaultThreadFactory;

    .line 40
    .line 41
    invoke-static {v1}, Lcom/transsion/core/pool/TranssionPoolExecutor$DefaultThreadFactory;->b(Lcom/transsion/core/pool/TranssionPoolExecutor$DefaultThreadFactory;)Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1, v0}, Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy;->handle(Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    return-void
.end method
