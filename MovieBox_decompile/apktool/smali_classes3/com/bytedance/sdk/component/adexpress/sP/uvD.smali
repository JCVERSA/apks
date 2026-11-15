.class public Lcom/bytedance/sdk/component/adexpress/sP/uvD;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/sP/TEQ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/adexpress/sP/uvD$Sj;
    }
.end annotation


# instance fields
.field private EjP:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

.field private HiB:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private Sj:Landroid/content/Context;

.field private TKC:Lcom/bytedance/sdk/component/adexpress/sP/Dq;

.field private sP:Lcom/bytedance/sdk/component/adexpress/HiB/Sj;

.field private vS:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/sP/Fmk;Lcom/bytedance/sdk/component/adexpress/HiB/Sj;Lcom/bytedance/sdk/component/adexpress/sP/Dq;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/sP/uvD;->Sj:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/sP/uvD;->EjP:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/bytedance/sdk/component/adexpress/sP/uvD;->TKC:Lcom/bytedance/sdk/component/adexpress/sP/Dq;

    .line 9
    .line 10
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    const/4 p2, 0x0

    .line 13
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/sP/uvD;->vS:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    iput-object p3, p0, Lcom/bytedance/sdk/component/adexpress/sP/uvD;->sP:Lcom/bytedance/sdk/component/adexpress/HiB/Sj;

    .line 19
    .line 20
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/sP/uvD;->TKC:Lcom/bytedance/sdk/component/adexpress/sP/Dq;

    .line 21
    .line 22
    invoke-virtual {p3, p1}, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/Dq;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private Sj(Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;ILjava/lang/String;)V
    .locals 1

    .line 9
    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;->TKC()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/sP/uvD;->vS:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 11
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/sP/uvD;->TKC()V

    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/sP/uvD;->EjP:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->HiB()Lcom/bytedance/sdk/component/adexpress/sP/uA;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lcom/bytedance/sdk/component/adexpress/sP/uA;->Sj(ILjava/lang/String;)V

    .line 13
    invoke-interface {p1, p0}, Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;->sP(Lcom/bytedance/sdk/component/adexpress/sP/TEQ;)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_2

    .line 14
    invoke-interface {p1, p0}, Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/TEQ;)V

    goto :goto_0

    .line 15
    :cond_2
    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;->TKC()Z

    move-result p3

    if-eqz p3, :cond_3

    return-void

    .line 16
    :cond_3
    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;->sP()Lcom/bytedance/sdk/component/adexpress/sP/Zq;

    move-result-object p3

    if-nez p3, :cond_4

    return-void

    .line 17
    :cond_4
    invoke-interface {p1, v0}, Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;->Sj(Z)V

    .line 18
    invoke-interface {p3, p2}, Lcom/bytedance/sdk/component/adexpress/sP/Zq;->a_(I)V

    .line 19
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/sP/uvD;->vS:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/component/adexpress/sP/uvD;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/sP/uvD;->TKC()V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/component/adexpress/sP/uvD;Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;ILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/adexpress/sP/uvD;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;ILjava/lang/String;)V

    return-void
.end method

.method private TKC()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/sP/uvD;->HiB:Ljava/util/concurrent/ScheduledFuture;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/sP/uvD;->HiB:Ljava/util/concurrent/ScheduledFuture;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/sP/uvD;->HiB:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    :catchall_0
    :cond_0
    return-void
.end method

.method static synthetic sP(Lcom/bytedance/sdk/component/adexpress/sP/uvD;)Lcom/bytedance/sdk/component/adexpress/HiB/Sj;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/component/adexpress/sP/uvD;->sP:Lcom/bytedance/sdk/component/adexpress/HiB/Sj;

    return-object p0
.end method


# virtual methods
.method public Sj()V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/sP/uvD;->sP:Lcom/bytedance/sdk/component/adexpress/HiB/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->EjP()V

    .line 8
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/sP/uvD;->TKC()V

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;)Z
    .locals 5

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/sP/uvD;->EjP:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->vS()I

    move-result v0

    const/4 v1, 0x1

    if-gez v0, :cond_0

    .line 4
    const-string v2, "time is "

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x6b

    invoke-direct {p0, p1, v2, v0}, Lcom/bytedance/sdk/component/adexpress/sP/uvD;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;ILjava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v2, Lcom/bytedance/sdk/component/adexpress/sP/uvD$Sj;

    invoke-direct {v2, p0, v1, p1}, Lcom/bytedance/sdk/component/adexpress/sP/uvD$Sj;-><init>(Lcom/bytedance/sdk/component/adexpress/sP/uvD;ILcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;)V

    int-to-long v3, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v3, v4, v0}, Lcom/bytedance/sdk/component/adexpress/EjP/EjP;->Sj(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/sP/uvD;->HiB:Ljava/util/concurrent/ScheduledFuture;

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/sP/uvD;->sP:Lcom/bytedance/sdk/component/adexpress/HiB/Sj;

    new-instance v2, Lcom/bytedance/sdk/component/adexpress/sP/uvD$1;

    invoke-direct {v2, p0, p1}, Lcom/bytedance/sdk/component/adexpress/sP/uvD$1;-><init>(Lcom/bytedance/sdk/component/adexpress/sP/uvD;Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;)V

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/Jcg;)V

    :goto_0
    return v1
.end method

.method public sP()Lcom/bytedance/sdk/component/adexpress/HiB/Sj;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/sP/uvD;->sP:Lcom/bytedance/sdk/component/adexpress/HiB/Sj;

    return-object v0
.end method
