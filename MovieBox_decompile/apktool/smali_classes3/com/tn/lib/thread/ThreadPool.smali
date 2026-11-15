.class public final Lcom/tn/lib/thread/ThreadPool;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tn/lib/thread/ThreadPool$BackgroundThread;,
        Lcom/tn/lib/thread/ThreadPool$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/tn/lib/thread/ThreadPool$b;

.field private static final b:Lkotlin/Lazy;

.field private static final c:I

.field private static final d:I

.field private static final e:I

.field private static final f:Ljava/util/concurrent/BlockingQueue;

.field private static final g:Ljava/util/concurrent/ThreadFactory;

.field private static h:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/tn/lib/thread/ThreadPool$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/tn/lib/thread/ThreadPool$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/tn/lib/thread/ThreadPool;->a:Lcom/tn/lib/thread/ThreadPool$b;

    .line 8
    .line 9
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 10
    .line 11
    new-instance v1, Lcom/tn/lib/thread/d;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/tn/lib/thread/d;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lcom/tn/lib/thread/ThreadPool;->b:Lkotlin/Lazy;

    .line 21
    .line 22
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    sput v0, Lcom/tn/lib/thread/ThreadPool;->c:I

    .line 31
    .line 32
    add-int/lit8 v1, v0, -0x1

    .line 33
    .line 34
    const/4 v2, 0x4

    .line 35
    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->h(II)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    sput v1, Lcom/tn/lib/thread/ThreadPool;->d:I

    .line 40
    .line 41
    mul-int/lit8 v0, v0, 0x2

    .line 42
    .line 43
    add-int/lit8 v0, v0, 0x1

    .line 44
    .line 45
    const/16 v1, 0x8

    .line 46
    .line 47
    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->h(II)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    sput v0, Lcom/tn/lib/thread/ThreadPool;->e:I

    .line 52
    .line 53
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 54
    .line 55
    const/16 v1, 0x40

    .line 56
    .line 57
    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 58
    .line 59
    .line 60
    sput-object v0, Lcom/tn/lib/thread/ThreadPool;->f:Ljava/util/concurrent/BlockingQueue;

    .line 61
    .line 62
    new-instance v0, Lcom/tn/lib/thread/ThreadPool$a;

    .line 63
    .line 64
    invoke-direct {v0}, Lcom/tn/lib/thread/ThreadPool$a;-><init>()V

    .line 65
    .line 66
    .line 67
    sput-object v0, Lcom/tn/lib/thread/ThreadPool;->g:Ljava/util/concurrent/ThreadFactory;

    .line 68
    .line 69
    return-void
.end method

.method private constructor <init>()V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 5
    .line 6
    sget v1, Lcom/tn/lib/thread/ThreadPool;->d:I

    .line 7
    .line 8
    sget v2, Lcom/tn/lib/thread/ThreadPool;->e:I

    .line 9
    .line 10
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 11
    .line 12
    sget-object v6, Lcom/tn/lib/thread/ThreadPool;->f:Ljava/util/concurrent/BlockingQueue;

    .line 13
    .line 14
    sget-object v7, Lcom/tn/lib/thread/ThreadPool;->g:Ljava/util/concurrent/ThreadFactory;

    .line 15
    .line 16
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;

    .line 17
    .line 18
    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V

    .line 19
    .line 20
    .line 21
    const-wide/16 v3, 0x1e

    .line 22
    .line 23
    move-object v0, v9

    .line 24
    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    invoke-virtual {v9, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 29
    .line 30
    .line 31
    sput-object v9, Lcom/tn/lib/thread/ThreadPool;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 32
    .line 33
    return-void
.end method

.method public static synthetic a()Lcom/tn/lib/thread/ThreadPool;
    .locals 1

    .line 1
    invoke-static {}, Lcom/tn/lib/thread/ThreadPool;->b()Lcom/tn/lib/thread/ThreadPool;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final b()Lcom/tn/lib/thread/ThreadPool;
    .locals 1

    .line 1
    new-instance v0, Lcom/tn/lib/thread/ThreadPool;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tn/lib/thread/ThreadPool;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final synthetic c()Lkotlin/Lazy;
    .locals 1

    .line 1
    sget-object v0, Lcom/tn/lib/thread/ThreadPool;->b:Lkotlin/Lazy;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final e()Lcom/tn/lib/thread/ThreadPool;
    .locals 1

    .line 1
    sget-object v0, Lcom/tn/lib/thread/ThreadPool;->a:Lcom/tn/lib/thread/ThreadPool$b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tn/lib/thread/ThreadPool$b;->a()Lcom/tn/lib/thread/ThreadPool;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method


# virtual methods
.method public final d(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/tn/lib/thread/ThreadPool;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
