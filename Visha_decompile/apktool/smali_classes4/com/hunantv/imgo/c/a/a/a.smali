.class Lcom/hunantv/imgo/c/a/a/a;
.super Landroid/os/Handler;
.source "SourceFile"


# static fields
.field private static final b:Ljava/util/regex/Pattern;


# instance fields
.field private a:Lcom/hunantv/imgo/c/a;

.field private final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "#"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/hunantv/imgo/c/a/a/a;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/hunantv/imgo/c/a;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/hunantv/imgo/c/a/a/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p2, p0, Lcom/hunantv/imgo/c/a/a/a;->a:Lcom/hunantv/imgo/c/a;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 13
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return-object v0

    .line 14
    :cond_0
    sget-object p0, Lcom/hunantv/imgo/c/a/a/a;->b:Ljava/util/regex/Pattern;

    invoke-static {p1, p0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object p0

    .line 15
    array-length p1, p0

    if-lez p1, :cond_2

    const/4 p1, 0x0

    .line 16
    aget-object p0, p0, p1

    .line 17
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v0

    .line 18
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method private a(Lcom/hunantv/imgo/c/a/a/b;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hunantv/imgo/c/a/a/a;->a:Lcom/hunantv/imgo/c/a;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/hunantv/imgo/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 5
    iget-object p0, p0, Lcom/hunantv/imgo/c/a/a/a;->a:Lcom/hunantv/imgo/c/a;

    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    move-result p2

    iget-object v0, p1, Lcom/hunantv/imgo/c/a/a/b;->c:Ljava/lang/String;

    iget p1, p1, Lcom/hunantv/imgo/c/a/a/b;->d:I

    invoke-interface {p0, v1, p2, v0, p1}, Lcom/hunantv/imgo/c/a;->b(Ljava/lang/String;ILjava/lang/String;I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p0, p0, Lcom/hunantv/imgo/c/a/a/a;->a:Lcom/hunantv/imgo/c/a;

    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    move-result p2

    iget-object v0, p1, Lcom/hunantv/imgo/c/a/a/b;->c:Ljava/lang/String;

    iget p1, p1, Lcom/hunantv/imgo/c/a/a/b;->d:I

    invoke-interface {p0, v1, p2, v0, p1}, Lcom/hunantv/imgo/c/a;->a(Ljava/lang/String;ILjava/lang/String;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private b()Z
    .locals 0

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    check-cast p0, Lcom/hunantv/imgo/c/a/a/c;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/hunantv/imgo/c/a/a/c;->b()Z

    move-result p0

    :goto_0
    return p0
.end method

.method private c()I
    .locals 0

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    check-cast p0, Lcom/hunantv/imgo/c/a/a/c;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/hunantv/imgo/c/a/a/c;->c()I

    move-result p0

    :goto_0
    return p0
.end method

.method private d()V
    .locals 0

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    check-cast p0, Lcom/hunantv/imgo/c/a/a/c;

    invoke-virtual {p0}, Lcom/hunantv/imgo/c/a/a/c;->d()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/hunantv/imgo/c/a/a/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public a(Lcom/hunantv/imgo/c/a/a/b;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/hunantv/imgo/c/a/a/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 8
    iget-object v0, p1, Lcom/hunantv/imgo/c/a/a/b;->c:Ljava/lang/String;

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 10
    :goto_0
    :try_start_0
    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget v1, p1, Lcom/hunantv/imgo/c/a/a/b;->b:I

    iget p1, p1, Lcom/hunantv/imgo/c/a/a/b;->d:I

    add-int/2addr v1, p1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    invoke-direct {p0}, Lcom/hunantv/imgo/c/a/a/a;->d()V

    :goto_1
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const v1, -0x186a0

    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/hunantv/imgo/c/a/a/b;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/hunantv/imgo/c/a/a/b;

    iget-object v2, v0, Lcom/hunantv/imgo/c/a/a/b;->a:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/hunantv/imgo/c/a/a/a;->a(Lcom/hunantv/imgo/c/a/a/b;Z)V

    :try_start_0
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/hunantv/imgo/c/a/a/a;->a(Lcom/hunantv/imgo/c/a/a/b;Z)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/hunantv/imgo/c/a/a/a;->d:J

    iget-object v0, p0, Lcom/hunantv/imgo/c/a/a/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    invoke-direct {p0}, Lcom/hunantv/imgo/c/a/a/a;->c()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    invoke-direct {p0}, Lcom/hunantv/imgo/c/a/a/a;->b()Z

    move-result v0

    if-nez v0, :cond_2

    iget p1, p1, Landroid/os/Message;->what:I

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/hunantv/imgo/c/a/a/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-gtz p1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/hunantv/imgo/c/a/a/a;->d:J

    sub-long/2addr v0, v2

    invoke-direct {p0}, Lcom/hunantv/imgo/c/a/a/a;->c()I

    move-result p1

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    invoke-direct {p0}, Lcom/hunantv/imgo/c/a/a/a;->d()V

    :cond_2
    return-void
.end method
