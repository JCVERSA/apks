.class public final Lcom/tn/lib/thread/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tn/lib/thread/c$a;,
        Lcom/tn/lib/thread/c$b;
    }
.end annotation


# static fields
.field public static final f:Lcom/tn/lib/thread/c$a;


# instance fields
.field private a:Ljava/util/concurrent/ExecutorService;

.field private b:Ljava/lang/String;

.field private c:Log/b;

.field private d:Ljava/util/concurrent/Executor;

.field private e:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/tn/lib/thread/c$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/tn/lib/thread/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/tn/lib/thread/c;->f:Lcom/tn/lib/thread/c$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Log/b;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .line 1
    const-string v0, "threadName"

    .line 2
    .line 3
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p4, p0, Lcom/tn/lib/thread/c;->b:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p5, p0, Lcom/tn/lib/thread/c;->c:Log/b;

    .line 12
    .line 13
    iput-object p6, p0, Lcom/tn/lib/thread/c;->d:Ljava/util/concurrent/Executor;

    .line 14
    .line 15
    if-nez p7, :cond_0

    .line 16
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/tn/lib/thread/c;->a(III)Ljava/util/concurrent/ExecutorService;

    .line 18
    .line 19
    .line 20
    move-result-object p7

    .line 21
    :cond_0
    iput-object p7, p0, Lcom/tn/lib/thread/c;->a:Ljava/util/concurrent/ExecutorService;

    .line 22
    .line 23
    iput-object p4, p0, Lcom/tn/lib/thread/c;->b:Ljava/lang/String;

    .line 24
    .line 25
    iput-object p5, p0, Lcom/tn/lib/thread/c;->c:Log/b;

    .line 26
    .line 27
    iput-object p6, p0, Lcom/tn/lib/thread/c;->d:Ljava/util/concurrent/Executor;

    .line 28
    .line 29
    new-instance p1, Ljava/lang/ThreadLocal;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/lang/ThreadLocal;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/tn/lib/thread/c;->e:Ljava/lang/ThreadLocal;

    .line 35
    .line 36
    return-void
.end method

.method private final a(III)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_3

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_2

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    .line 10
    const/4 p2, 0x4

    .line 11
    const-string v0, "newSingleThreadExecutor(...)"

    .line 12
    .line 13
    if-eq p1, p2, :cond_0

    .line 14
    .line 15
    new-instance p1, Lcom/tn/lib/thread/c$b;

    .line 16
    .line 17
    invoke-direct {p1, p3}, Lcom/tn/lib/thread/c$b;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance p1, Lcom/tn/lib/thread/c$b;

    .line 29
    .line 30
    invoke-direct {p1, p3}, Lcom/tn/lib/thread/c$b;-><init>(I)V

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    new-instance p1, Lcom/tn/lib/thread/c$b;

    .line 42
    .line 43
    invoke-direct {p1, p3}, Lcom/tn/lib/thread/c$b;-><init>(I)V

    .line 44
    .line 45
    .line 46
    invoke-static {p2, p1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const-string p2, "newScheduledThreadPool(...)"

    .line 51
    .line 52
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    new-instance p1, Lcom/tn/lib/thread/c$b;

    .line 57
    .line 58
    invoke-direct {p1, p3}, Lcom/tn/lib/thread/c$b;-><init>(I)V

    .line 59
    .line 60
    .line 61
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const-string p2, "newCachedThreadPool(...)"

    .line 66
    .line 67
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    new-instance p1, Lcom/tn/lib/thread/c$b;

    .line 72
    .line 73
    invoke-direct {p1, p3}, Lcom/tn/lib/thread/c$b;-><init>(I)V

    .line 74
    .line 75
    .line 76
    invoke-static {p2, p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    const-string p2, "newFixedThreadPool(...)"

    .line 81
    .line 82
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :goto_0
    return-object p1
.end method

.method private final b()Lpg/d;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tn/lib/thread/c;->e:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lpg/d;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-nez v0, :cond_1

    .line 14
    .line 15
    new-instance v0, Lpg/d;

    .line 16
    .line 17
    invoke-direct {v0}, Lpg/d;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/tn/lib/thread/c;->b:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lpg/d;->h(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/tn/lib/thread/c;->c:Log/b;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lpg/d;->g(Log/b;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/tn/lib/thread/c;->d:Ljava/util/concurrent/Executor;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lpg/d;->f(Ljava/util/concurrent/Executor;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/tn/lib/thread/c;->e:Ljava/lang/ThreadLocal;

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-object v0
.end method


# virtual methods
.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tn/lib/thread/c;->e:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 4

    .line 1
    const-string v0, "command"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/tn/lib/thread/c;->b()Lpg/d;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcom/tn/lib/thread/wrapper/RunnableWrapper;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Lcom/tn/lib/thread/wrapper/RunnableWrapper;-><init>(Lpg/d;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Lcom/tn/lib/thread/wrapper/RunnableWrapper;->setRunnable(Ljava/lang/Runnable;)Lcom/tn/lib/thread/wrapper/RunnableWrapper;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    sget-object v1, Lqg/c;->b:Lqg/c$a;

    .line 20
    .line 21
    invoke-virtual {v1}, Lqg/c$a;->a()Lqg/c;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0}, Lpg/d;->b()J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    iget-object v0, p0, Lcom/tn/lib/thread/c;->a:Ljava/util/concurrent/ExecutorService;

    .line 30
    .line 31
    invoke-virtual {v1, v2, v3, v0, p1}, Lqg/c;->e(JLjava/util/concurrent/ExecutorService;Ljava/lang/Runnable;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/tn/lib/thread/c;->c()V

    .line 35
    .line 36
    .line 37
    return-void
.end method
