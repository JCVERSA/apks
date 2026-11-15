.class public Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/HiB;
.super Lcom/bytedance/sdk/component/sP/Sj/EjP;
.source "source.java"


# instance fields
.field private EjP:Ljava/util/concurrent/atomic/AtomicInteger;

.field private Sj:Ljava/util/concurrent/ExecutorService;

.field private TKC:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/sP/Sj/sP;",
            ">;"
        }
    .end annotation
.end field

.field private sP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/sP/Sj/sP;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/component/sP/Sj/EjP;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/HiB;->sP:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/HiB;->TKC:Ljava/util/List;

    .line 17
    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    .line 20
    const/16 v1, 0x40

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/HiB;->EjP:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/HiB;->Sj:Ljava/util/concurrent/ExecutorService;

    .line 28
    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 32
    .line 33
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 34
    .line 35
    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    .line 36
    .line 37
    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    .line 38
    .line 39
    .line 40
    new-instance v8, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/HiB$1;

    .line 41
    .line 42
    invoke-direct {v8, p0}, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/HiB$1;-><init>(Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/HiB;)V

    .line 43
    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    const v3, 0x7fffffff

    .line 47
    .line 48
    .line 49
    const-wide/16 v4, 0x14

    .line 50
    .line 51
    move-object v1, v0

    .line 52
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/HiB;->Sj:Ljava/util/concurrent/ExecutorService;

    .line 56
    .line 57
    :cond_0
    return-void
.end method


# virtual methods
.method public EjP()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/sP/Sj/sP;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/HiB;->TKC:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public Sj()I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/HiB;->EjP:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public Sj(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/HiB;->EjP:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public TKC()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/sP/Sj/sP;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/HiB;->sP:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public sP()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/HiB;->Sj:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    return-object v0
.end method
