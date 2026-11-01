.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->checkInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker$a;

    invoke-direct {v0, p0}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker$a;-><init>(Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;)V

    iput-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->checkStart:Ljava/lang/Runnable;

    new-instance v0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker$b;

    invoke-direct {v0, p0}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker$b;-><init>(Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;)V

    iput-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->checkRemote:Ljava/lang/Runnable;

    new-instance v0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker$c;

    invoke-direct {v0, p0}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker$c;-><init>(Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;)V

    iput-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->checkDone:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->handler:Landroid/os/Handler;

    const/4 v0, 0x1

    iput v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->checkDelayFactor:I

    iget-object v1, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->checkInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->check()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->context:Landroid/content/Context;

    :cond_0
    return-void
.end method
