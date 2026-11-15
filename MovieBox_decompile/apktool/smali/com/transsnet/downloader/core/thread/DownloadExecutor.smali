.class public final Lcom/transsnet/downloader/core/thread/DownloadExecutor;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsnet/downloader/core/thread/DownloadExecutor$BackgroundThread;,
        Lcom/transsnet/downloader/core/thread/DownloadExecutor$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/transsnet/downloader/core/thread/DownloadExecutor$b;

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
    new-instance v0, Lcom/transsnet/downloader/core/thread/DownloadExecutor$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsnet/downloader/core/thread/DownloadExecutor$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsnet/downloader/core/thread/DownloadExecutor;->a:Lcom/transsnet/downloader/core/thread/DownloadExecutor$b;

    .line 8
    .line 9
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 10
    .line 11
    new-instance v1, Lcom/transsnet/downloader/core/thread/c;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/transsnet/downloader/core/thread/c;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lcom/transsnet/downloader/core/thread/DownloadExecutor;->b:Lkotlin/Lazy;

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
    sput v0, Lcom/transsnet/downloader/core/thread/DownloadExecutor;->c:I

    .line 31
    .line 32
    const/16 v1, 0x8

    .line 33
    .line 34
    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->e(II)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    sput v2, Lcom/transsnet/downloader/core/thread/DownloadExecutor;->d:I

    .line 39
    .line 40
    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->e(II)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    sput v0, Lcom/transsnet/downloader/core/thread/DownloadExecutor;->e:I

    .line 45
    .line 46
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 47
    .line 48
    const/16 v1, 0x40

    .line 49
    .line 50
    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 51
    .line 52
    .line 53
    sput-object v0, Lcom/transsnet/downloader/core/thread/DownloadExecutor;->f:Ljava/util/concurrent/BlockingQueue;

    .line 54
    .line 55
    new-instance v0, Lcom/transsnet/downloader/core/thread/DownloadExecutor$a;

    .line 56
    .line 57
    invoke-direct {v0}, Lcom/transsnet/downloader/core/thread/DownloadExecutor$a;-><init>()V

    .line 58
    .line 59
    .line 60
    sput-object v0, Lcom/transsnet/downloader/core/thread/DownloadExecutor;->g:Ljava/util/concurrent/ThreadFactory;

    .line 61
    .line 62
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
    sget v1, Lcom/transsnet/downloader/core/thread/DownloadExecutor;->d:I

    .line 7
    .line 8
    sget v2, Lcom/transsnet/downloader/core/thread/DownloadExecutor;->e:I

    .line 9
    .line 10
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 11
    .line 12
    sget-object v6, Lcom/transsnet/downloader/core/thread/DownloadExecutor;->f:Ljava/util/concurrent/BlockingQueue;

    .line 13
    .line 14
    sget-object v7, Lcom/transsnet/downloader/core/thread/DownloadExecutor;->g:Ljava/util/concurrent/ThreadFactory;

    .line 15
    .line 16
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;

    .line 17
    .line 18
    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V

    .line 19
    .line 20
    .line 21
    const-wide/16 v3, 0x14

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
    sput-object v9, Lcom/transsnet/downloader/core/thread/DownloadExecutor;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 32
    .line 33
    return-void
.end method

.method public static synthetic a()Lcom/transsnet/downloader/core/thread/DownloadExecutor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/core/thread/DownloadExecutor;->b()Lcom/transsnet/downloader/core/thread/DownloadExecutor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final b()Lcom/transsnet/downloader/core/thread/DownloadExecutor;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsnet/downloader/core/thread/DownloadExecutor;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsnet/downloader/core/thread/DownloadExecutor;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final synthetic c()I
    .locals 1

    .line 1
    sget v0, Lcom/transsnet/downloader/core/thread/DownloadExecutor;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic d()Lkotlin/Lazy;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsnet/downloader/core/thread/DownloadExecutor;->b:Lkotlin/Lazy;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final e(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/transsnet/downloader/core/thread/DownloadExecutor;->h:Ljava/util/concurrent/ThreadPoolExecutor;

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
