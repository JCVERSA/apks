.class final Lcom/cloud/tupdate/utils/ExecutorUtils$newE$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tupdate/utils/ExecutorUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lc74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Ljava/util/concurrent/ThreadPoolExecutor;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/cloud/tupdate/utils/ExecutorUtils$newE$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tupdate/utils/ExecutorUtils$newE$2;

    invoke-direct {v0}, Lcom/cloud/tupdate/utils/ExecutorUtils$newE$2;-><init>()V

    sput-object v0, Lcom/cloud/tupdate/utils/ExecutorUtils$newE$2;->INSTANCE:Lcom/cloud/tupdate/utils/ExecutorUtils$newE$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p0}, Lcom/cloud/tupdate/utils/ExecutorUtils$newE$2;->b(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method private static final b(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 10

    invoke-static {}, Lcom/cloud/tupdate/utils/ExecutorUtils;->d()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "NEW "

    invoke-static {v1, v0}, Ly45;->s(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/cloud/tupdate/utils/ExecutorUtils$newE$2$1$1;

    invoke-direct {v7, p0}, Lcom/cloud/tupdate/utils/ExecutorUtils$newE$2$1$1;-><init>(Ljava/lang/Runnable;)V

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x5

    invoke-static/range {v2 .. v9}, Lkotlin/concurrent/ThreadsKt;->b(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILc74;ILjava/lang/Object;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tupdate/utils/ExecutorUtils$newE$2;->invoke()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 9

    .line 2
    new-instance p0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 3
    invoke-static {}, Lcom/cloud/tupdate/utils/ExecutorUtils;->a()I

    move-result v2

    .line 4
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 5
    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v7, Lcom/cloud/tupdate/utils/c;

    invoke-direct {v7}, Lcom/cloud/tupdate/utils/c;-><init>()V

    .line 6
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    const/4 v1, 0x1

    const-wide/16 v3, 0x0

    move-object v0, p0

    .line 7
    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-object p0
.end method
