.class public Lcom/amazonaws/event/ProgressListenerCallbackExecutor;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field static b:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final a:Lcom/amazonaws/event/ProgressListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->b()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->b:Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->a:Lcom/amazonaws/event/ProgressListener;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/event/ProgressListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->a:Lcom/amazonaws/event/ProgressListener;

    return-void
.end method

.method static synthetic a(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;)Lcom/amazonaws/event/ProgressListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->a:Lcom/amazonaws/event/ProgressListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static b()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    new-instance v0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor$3;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor$3;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public static d(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/event/ProgressListenerCallbackExecutor;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;-><init>(Lcom/amazonaws/event/ProgressListener;)V

    .line 8
    .line 9
    .line 10
    move-object p0, v0

    .line 11
    :goto_0
    return-object p0
.end method


# virtual methods
.method public c(Lcom/amazonaws/event/ProgressEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->a:Lcom/amazonaws/event/ProgressListener;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->b:Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    new-instance v1, Lcom/amazonaws/event/ProgressListenerCallbackExecutor$2;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor$2;-><init>(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;Lcom/amazonaws/event/ProgressEvent;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 14
    .line 15
    .line 16
    return-void
.end method
