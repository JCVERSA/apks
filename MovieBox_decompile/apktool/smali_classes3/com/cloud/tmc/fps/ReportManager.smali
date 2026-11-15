.class public Lcom/cloud/tmc/fps/ReportManager;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/fps/record/IRecord$FrameListener;


# instance fields
.field private firstRecord:Ljava/lang/Boolean;

.field private isRecording:Ljava/lang/Boolean;

.field private mHandler:Landroid/os/Handler;

.field private mTracesInOneFrame:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation
.end field

.field private stackTraceTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/cloud/tmc/fps/ReportManager;->mTracesInOneFrame:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 10
    .line 11
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/cloud/tmc/fps/ReportManager;->isRecording:Ljava/lang/Boolean;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/cloud/tmc/fps/ReportManager;->firstRecord:Ljava/lang/Boolean;

    .line 16
    .line 17
    new-instance v0, Lcom/cloud/tmc/fps/ReportManager$1;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/cloud/tmc/fps/ReportManager$1;-><init>(Lcom/cloud/tmc/fps/ReportManager;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/cloud/tmc/fps/ReportManager;->stackTraceTask:Ljava/lang/Runnable;

    .line 23
    .line 24
    new-instance v0, Landroid/os/HandlerThread;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 38
    .line 39
    .line 40
    new-instance v1, Landroid/os/Handler;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 47
    .line 48
    .line 49
    iput-object v1, p0, Lcom/cloud/tmc/fps/ReportManager;->mHandler:Landroid/os/Handler;

    .line 50
    .line 51
    return-void
.end method

.method static bridge synthetic a(Lcom/cloud/tmc/fps/ReportManager;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/fps/ReportManager;->firstRecord:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic b(Lcom/cloud/tmc/fps/ReportManager;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/fps/ReportManager;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic c(Lcom/cloud/tmc/fps/ReportManager;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/fps/ReportManager;->mTracesInOneFrame:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic d(Lcom/cloud/tmc/fps/ReportManager;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/fps/ReportManager;->firstRecord:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method private dealPreFrameTraceInfo(JLjava/lang/Long;)V
    .locals 2

    .line 1
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    sget-object p3, Lcom/cloud/tmc/fps/FpsConfig;->INSTANCE:Lcom/cloud/tmc/fps/FpsConfig;

    .line 6
    .line 7
    invoke-virtual {p3}, Lcom/cloud/tmc/fps/FpsConfig;->getJankThreshold()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    cmp-long p1, p1, v0

    .line 12
    .line 13
    if-lez p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/cloud/tmc/fps/ReportManager;->mTracesInOneFrame:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-lez p1, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Lcom/cloud/tmc/fps/ReportManager;->mHandler:Landroid/os/Handler;

    .line 24
    .line 25
    new-instance p2, Lcom/cloud/tmc/fps/ReportManager$2;

    .line 26
    .line 27
    invoke-direct {p2, p0}, Lcom/cloud/tmc/fps/ReportManager$2;-><init>(Lcom/cloud/tmc/fps/ReportManager;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method static bridge synthetic e(Lcom/cloud/tmc/fps/ReportManager;I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/fps/ReportManager;->traceToString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private traceToString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 1
    array-length v0, p2

    .line 2
    if-nez v0, :cond_0

    .line 3
    .line 4
    const-string p1, "[]"

    .line 5
    .line 6
    return-object p1

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    array-length v2, p2

    .line 14
    sub-int/2addr v2, p1

    .line 15
    if-ge v1, v2, :cond_2

    .line 16
    .line 17
    array-length v2, p2

    .line 18
    sub-int/2addr v2, p1

    .line 19
    add-int/lit8 v2, v2, -0x1

    .line 20
    .line 21
    if-ne v1, v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    :cond_1
    aget-object v2, p2, v1

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, "\n"

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    return-object p1
.end method


# virtual methods
.method public onFrame(JJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/fps/ReportManager;->isRecording:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/tmc/fps/ReportManager;->mHandler:Landroid/os/Handler;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/cloud/tmc/fps/ReportManager;->stackTraceTask:Ljava/lang/Runnable;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/tmc/fps/ReportManager;->dealPreFrameTraceInfo(JLjava/lang/Long;)V

    .line 21
    .line 22
    .line 23
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/cloud/tmc/fps/ReportManager;->firstRecord:Ljava/lang/Boolean;

    .line 26
    .line 27
    iget-object p1, p0, Lcom/cloud/tmc/fps/ReportManager;->mHandler:Landroid/os/Handler;

    .line 28
    .line 29
    iget-object p2, p0, Lcom/cloud/tmc/fps/ReportManager;->stackTraceTask:Ljava/lang/Runnable;

    .line 30
    .line 31
    sget-object p3, Lcom/cloud/tmc/fps/FpsConfig;->INSTANCE:Lcom/cloud/tmc/fps/FpsConfig;

    .line 32
    .line 33
    invoke-virtual {p3}, Lcom/cloud/tmc/fps/FpsConfig;->getTraceInterval()J

    .line 34
    .line 35
    .line 36
    move-result-wide p3

    .line 37
    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public onRecord(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/cloud/tmc/fps/ReportManager;->isRecording:Ljava/lang/Boolean;

    .line 6
    .line 7
    return-void
.end method
