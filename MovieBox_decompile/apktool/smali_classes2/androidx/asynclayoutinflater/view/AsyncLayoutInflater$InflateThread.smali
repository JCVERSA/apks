.class Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;
.super Ljava/lang/Thread;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InflateThread"
.end annotation


# static fields
.field private static final sInstance:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;


# instance fields
.field private mQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$c;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestPool:Landroidx/core/util/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/h;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;->sInstance:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 5
    .line 6
    const/16 v1, 0xa

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 12
    .line 13
    new-instance v0, Landroidx/core/util/h;

    .line 14
    .line 15
    invoke-direct {v0, v1}, Landroidx/core/util/h;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;->mRequestPool:Landroidx/core/util/h;

    .line 19
    .line 20
    return-void
.end method

.method public static getInstance()Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;
    .locals 1

    .line 1
    sget-object v0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;->sInstance:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public enqueue(Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$c;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p1

    .line 8
    new-instance v0, Ljava/lang/RuntimeException;

    .line 9
    .line 10
    const-string v1, "Failed to enqueue async inflate request"

    .line 11
    .line 12
    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method

.method public obtainRequest()Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$c;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;->mRequestPool:Landroidx/core/util/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/core/util/h;->acquire()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$c;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$c;

    .line 12
    .line 13
    invoke-direct {v0}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$c;-><init>()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-object v0
.end method

.method public releaseRequest(Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$c;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$c;->e:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$d;

    .line 3
    .line 4
    iput-object v0, p1, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$c;->a:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    .line 5
    .line 6
    iput-object v0, p1, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$c;->b:Landroid/view/ViewGroup;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput v1, p1, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$c;->c:I

    .line 10
    .line 11
    iput-object v0, p1, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$c;->d:Landroid/view/View;

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;->mRequestPool:Landroidx/core/util/h;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroidx/core/util/h;->release(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public run()V
    .locals 0

    .line 1
    :goto_0
    invoke-virtual {p0}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;->runInner()V

    .line 2
    .line 3
    .line 4
    goto :goto_0
.end method

.method public runInner()V
    .locals 6

    .line 1
    const-string v0, "AsyncLayoutInflater"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$InflateThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$c;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    :try_start_1
    iget-object v3, v1, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$c;->a:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    .line 13
    .line 14
    iget-object v3, v3, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;->a:Landroid/view/LayoutInflater;

    .line 15
    .line 16
    iget v4, v1, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$c;->c:I

    .line 17
    .line 18
    iget-object v5, v1, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$c;->b:Landroid/view/ViewGroup;

    .line 19
    .line 20
    invoke-virtual {v3, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    iput-object v3, v1, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$c;->d:Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v3

    .line 28
    const-string v4, "Failed to inflate resource in the background! Retrying on the UI thread"

    .line 29
    .line 30
    invoke-static {v0, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object v0, v1, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$c;->a:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    .line 34
    .line 35
    iget-object v0, v0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;->b:Landroid/os/Handler;

    .line 36
    .line 37
    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :catch_1
    move-exception v1

    .line 46
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47
    .line 48
    .line 49
    return-void
.end method
