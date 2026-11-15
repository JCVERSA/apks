.class public final Lzd1;
.super Lio/reactivex/Scheduler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzd1$c;,
        Lzd1$a;,
        Lzd1$b;
    }
.end annotation


# static fields
.field public static final e:Lzd1$b;

.field public static final f:Lio/reactivex/internal/schedulers/RxThreadFactory;

.field public static final g:I

.field public static final h:Lzd1$c;


# instance fields
.field public final c:Ljava/util/concurrent/ThreadFactory;

.field public final d:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const-string v1, "rx2.computation-threads"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lzd1;->f(II)I

    move-result v0

    sput v0, Lzd1;->g:I

    new-instance v0, Lzd1$c;

    new-instance v1, Lio/reactivex/internal/schedulers/RxThreadFactory;

    const-string v3, "RxComputationShutdown"

    invoke-direct {v1, v3}, Lio/reactivex/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lzd1$c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lzd1;->h:Lzd1$c;

    invoke-virtual {v0}, Lio/reactivex/internal/schedulers/a;->dispose()V

    const-string v0, "rx2.computation-priority"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v3, Lio/reactivex/internal/schedulers/RxThreadFactory;

    const-string v4, "RxComputationThreadPool"

    invoke-direct {v3, v4, v0, v1}, Lio/reactivex/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lzd1;->f:Lio/reactivex/internal/schedulers/RxThreadFactory;

    new-instance v0, Lzd1$b;

    invoke-direct {v0, v2, v3}, Lzd1$b;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lzd1;->e:Lzd1$b;

    invoke-virtual {v0}, Lzd1$b;->b()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lzd1;->f:Lio/reactivex/internal/schedulers/RxThreadFactory;

    invoke-direct {p0, v0}, Lzd1;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lio/reactivex/Scheduler;-><init>()V

    .line 3
    iput-object p1, p0, Lzd1;->c:Ljava/util/concurrent/ThreadFactory;

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lzd1;->e:Lzd1$b;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lzd1;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    invoke-virtual {p0}, Lzd1;->g()V

    return-void
.end method

.method public static f(II)I
    .locals 0

    if-lez p1, :cond_1

    if-le p1, p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    :cond_1
    :goto_0
    return p0
.end method


# virtual methods
.method public b()Lio/reactivex/Scheduler$Worker;
    .locals 1

    new-instance v0, Lzd1$a;

    iget-object p0, p0, Lzd1;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzd1$b;

    invoke-virtual {p0}, Lzd1$b;->a()Lzd1$c;

    move-result-object p0

    invoke-direct {v0, p0}, Lzd1$a;-><init>(Lzd1$c;)V

    return-object v0
.end method

.method public d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lrc2;
    .locals 0

    iget-object p0, p0, Lzd1;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzd1$b;

    invoke-virtual {p0}, Lzd1$b;->a()Lzd1$c;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/reactivex/internal/schedulers/a;->b(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lrc2;

    move-result-object p0

    return-object p0
.end method

.method public e(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lrc2;
    .locals 7

    iget-object p0, p0, Lzd1;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzd1$b;

    invoke-virtual {p0}, Lzd1$b;->a()Lzd1$c;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/internal/schedulers/a;->c(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lrc2;

    move-result-object p0

    return-object p0
.end method

.method public g()V
    .locals 3

    new-instance v0, Lzd1$b;

    sget v1, Lzd1;->g:I

    iget-object v2, p0, Lzd1;->c:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1, v2}, Lzd1$b;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iget-object p0, p0, Lzd1;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lzd1;->e:Lzd1$b;

    invoke-static {p0, v1, v0}, Lwk5;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v0}, Lzd1$b;->b()V

    :cond_0
    return-void
.end method
