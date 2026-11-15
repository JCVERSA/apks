.class public Lcom/bytedance/sdk/component/Dq/Sj$Sj;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/Dq/Sj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sj"
.end annotation


# instance fields
.field private Dq:Ljava/util/concurrent/RejectedExecutionHandler;

.field private EjP:Ljava/util/concurrent/TimeUnit;

.field private HiB:I

.field private Jcg:Ljava/util/concurrent/ThreadFactory;

.field private Sj:Ljava/lang/String;

.field private TKC:J

.field private sP:I

.field private uA:I

.field private vS:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "io"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Sj:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput v0, p0, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->sP:I

    .line 10
    .line 11
    const-wide/16 v0, 0x1e

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->TKC:J

    .line 14
    .line 15
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->EjP:Ljava/util/concurrent/TimeUnit;

    .line 18
    .line 19
    const v0, 0x7fffffff

    .line 20
    .line 21
    .line 22
    iput v0, p0, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->HiB:I

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->vS:Ljava/util/concurrent/BlockingQueue;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Jcg:Ljava/util/concurrent/ThreadFactory;

    .line 28
    .line 29
    const/4 v0, 0x5

    .line 30
    iput v0, p0, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->uA:I

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public Sj(I)Lcom/bytedance/sdk/component/Dq/Sj$Sj;
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->sP:I

    return-object p0
.end method

.method public Sj(J)Lcom/bytedance/sdk/component/Dq/Sj$Sj;
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->TKC:J

    return-object p0
.end method

.method public Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/Dq/Sj$Sj;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Sj:Ljava/lang/String;

    return-object p0
.end method

.method public Sj(Ljava/util/concurrent/BlockingQueue;)Lcom/bytedance/sdk/component/Dq/Sj$Sj;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;)",
            "Lcom/bytedance/sdk/component/Dq/Sj$Sj;"
        }
    .end annotation

    .line 5
    iput-object p1, p0, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->vS:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method public Sj(Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/bytedance/sdk/component/Dq/Sj$Sj;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Dq:Ljava/util/concurrent/RejectedExecutionHandler;

    return-object p0
.end method

.method public Sj(Ljava/util/concurrent/ThreadFactory;)Lcom/bytedance/sdk/component/Dq/Sj$Sj;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Jcg:Ljava/util/concurrent/ThreadFactory;

    return-object p0
.end method

.method public Sj(Ljava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/Dq/Sj$Sj;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->EjP:Ljava/util/concurrent/TimeUnit;

    return-object p0
.end method

.method public Sj()Lcom/bytedance/sdk/component/Dq/Sj;
    .locals 11

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Jcg:Ljava/util/concurrent/ThreadFactory;

    if-nez v0, :cond_0

    .line 9
    invoke-static {}, Lcom/bytedance/sdk/component/Dq/HiB;->Sj()Lcom/bytedance/sdk/component/Dq/TEQ;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->uA:I

    iget-object v2, p0, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Sj:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/component/Dq/TEQ;->createThreadFactory(ILjava/lang/String;)Lcom/bytedance/sdk/component/Dq/uA;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Jcg:Ljava/util/concurrent/ThreadFactory;

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Dq:Ljava/util/concurrent/RejectedExecutionHandler;

    if-nez v0, :cond_1

    .line 11
    invoke-static {}, Lcom/bytedance/sdk/component/Dq/vS;->Dq()Ljava/util/concurrent/RejectedExecutionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Dq:Ljava/util/concurrent/RejectedExecutionHandler;

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->vS:Ljava/util/concurrent/BlockingQueue;

    if-nez v0, :cond_2

    .line 13
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->vS:Ljava/util/concurrent/BlockingQueue;

    .line 14
    :cond_2
    new-instance v0, Lcom/bytedance/sdk/component/Dq/Sj;

    iget-object v2, p0, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Sj:Ljava/lang/String;

    iget v3, p0, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->sP:I

    iget v4, p0, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->HiB:I

    iget-wide v5, p0, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->TKC:J

    iget-object v7, p0, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->EjP:Ljava/util/concurrent/TimeUnit;

    iget-object v8, p0, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->vS:Ljava/util/concurrent/BlockingQueue;

    iget-object v9, p0, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Jcg:Ljava/util/concurrent/ThreadFactory;

    iget-object v10, p0, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->Dq:Ljava/util/concurrent/RejectedExecutionHandler;

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/bytedance/sdk/component/Dq/Sj;-><init>(Ljava/lang/String;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-object v0
.end method

.method public sP(I)Lcom/bytedance/sdk/component/Dq/Sj$Sj;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/component/Dq/Sj$Sj;->uA:I

    .line 2
    .line 3
    return-object p0
.end method
