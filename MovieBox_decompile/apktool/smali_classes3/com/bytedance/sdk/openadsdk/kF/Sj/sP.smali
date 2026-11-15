.class public Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final Dq:Ljava/lang/Runnable;

.field private final EjP:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final HiB:Ljava/util/concurrent/atomic/AtomicInteger;

.field private Jcg:J

.field private Sj:I

.field private final TKC:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field private vS:J


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget v0, Lcom/bytedance/sdk/openadsdk/kF/Sj/TKC;->sP:I

    .line 5
    .line 6
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->Sj:I

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->TKC:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->EjP:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->HiB:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 30
    .line 31
    const-wide/16 v0, 0x0

    .line 32
    .line 33
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->vS:J

    .line 34
    .line 35
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->Jcg:J

    .line 36
    .line 37
    new-instance v0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP$3;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP$3;-><init>(Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->Dq:Ljava/lang/Runnable;

    .line 43
    .line 44
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 45
    .line 46
    return-void
.end method

.method private EjP()V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->TKC:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->sP()V

    .line 4
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->Jcg:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->vS:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->Jcg:J

    .line 5
    new-instance v2, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP$1;

    const-string v3, "ev_tracker"

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP$1;-><init>(Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;Ljava/lang/String;J)V

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->TKC(Lcom/bytedance/sdk/component/Dq/Dq;)V

    :cond_0
    return-void
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->vS()V

    return-void
.end method

.method private HiB()V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->HiB:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->vS:J

    .line 4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/kF/Sj/Sj;->Sj()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->Dq:Ljava/lang/Runnable;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->Sj:I

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->Jcg:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->HiB:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_1
    return-void
.end method

.method static synthetic HiB(Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->EjP()V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    return-object p0
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->HiB()V

    return-void
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->EjP:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private vS()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->HiB:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    .line 10
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->vS:J

    .line 11
    .line 12
    const-wide/16 v2, 0x0

    .line 13
    .line 14
    cmp-long v0, v0, v2

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/kF/Sj/Sj;->Sj()Landroid/os/Handler;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->Dq:Ljava/lang/Runnable;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->Jcg:J

    .line 30
    .line 31
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 32
    .line 33
    .line 34
    move-result-wide v4

    .line 35
    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->vS:J

    .line 36
    .line 37
    sub-long/2addr v4, v6

    .line 38
    add-long/2addr v0, v4

    .line 39
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->Jcg:J

    .line 40
    .line 41
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->vS:J

    .line 42
    .line 43
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->HiB:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 44
    .line 45
    const/4 v1, 0x2

    .line 46
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->HiB:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ewp()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->Sj:I

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->HiB:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->vS:J

    .line 6
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/kF/Sj/Sj;->Sj()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->Dq:Ljava/lang/Runnable;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->Sj:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public Sj(I)V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->HiB:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    .line 9
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/kF/Sj/Sj;->Sj()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 10
    :cond_1
    new-instance v1, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP$2;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP$2;-><init>(Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public Sj(Z)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->EjP:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public TKC()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->HiB:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public sP()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->HiB:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/kF/Sj/Sj;->Sj()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->Dq:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
