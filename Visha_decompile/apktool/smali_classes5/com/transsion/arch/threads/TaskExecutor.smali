.class public abstract Lcom/transsion/arch/threads/TaskExecutor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/arch/threads/TaskExecutor$Task;
    }
.end annotation


# static fields
.field public static final a:I

.field public static final b:I

.field public static final c:I

.field public static final d:Ljava/util/concurrent/ThreadPoolExecutor;

.field public static final e:Ljava/util/concurrent/ThreadPoolExecutor;

.field public static final f:Ljava/util/concurrent/ThreadPoolExecutor;

.field public static final g:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/transsion/arch/threads/TaskExecutor;->a:I

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sput v1, Lcom/transsion/arch/threads/TaskExecutor;->b:I

    mul-int/2addr v0, v2

    const/4 v2, 0x1

    add-int/2addr v0, v2

    sput v0, Lcom/transsion/arch/threads/TaskExecutor;->c:I

    new-instance v10, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v9}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-wide/16 v6, 0x1e

    move-object v3, v10

    move v4, v1

    move v5, v0

    move-object v8, v11

    invoke-direct/range {v3 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    invoke-virtual {v10, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    sput-object v10, Lcom/transsion/arch/threads/TaskExecutor;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v10, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v9}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v10, Lcom/transsion/arch/threads/TaskExecutor;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v10, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v9}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v4, 0x1

    const/4 v5, 0x2

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v0, Lcom/transsion/arch/threads/TaskExecutor;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    new-instance v0, Lcea;

    invoke-direct {v0}, Lcea;-><init>()V

    sput-object v0, Lcom/transsion/arch/threads/TaskExecutor;->g:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic a(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/arch/threads/TaskExecutor;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static b()Ljava/util/concurrent/Executor;
    .locals 1

    sget-object v0, Lcom/transsion/arch/threads/TaskExecutor;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public static c(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcom/transsion/arch/threads/TaskExecutor;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic d(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static e()Ljava/util/concurrent/Executor;
    .locals 1

    sget-object v0, Lcom/transsion/arch/threads/TaskExecutor;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public static f()Ljava/util/concurrent/Executor;
    .locals 1

    sget-object v0, Lcom/transsion/arch/threads/TaskExecutor;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method
