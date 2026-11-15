.class Lcom/facebook/biddingkit/utils/MultiAsyncTaskExecutor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/biddingkit/utils/MultiAsyncTaskExecutor;-><init>(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final mCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic this$0:Lcom/facebook/biddingkit/utils/MultiAsyncTaskExecutor;

.field final synthetic val$poolName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/biddingkit/utils/MultiAsyncTaskExecutor;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/biddingkit/utils/MultiAsyncTaskExecutor$1;->this$0:Lcom/facebook/biddingkit/utils/MultiAsyncTaskExecutor;

    iput-object p2, p0, Lcom/facebook/biddingkit/utils/MultiAsyncTaskExecutor$1;->val$poolName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/facebook/biddingkit/utils/MultiAsyncTaskExecutor$1;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v2, p0, Lcom/facebook/biddingkit/utils/MultiAsyncTaskExecutor$1;->val$poolName:Ljava/lang/String;

    iget-object p0, p0, Lcom/facebook/biddingkit/utils/MultiAsyncTaskExecutor$1;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "BiddingKit:%s #%d"

    invoke-static {v1, v2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method
