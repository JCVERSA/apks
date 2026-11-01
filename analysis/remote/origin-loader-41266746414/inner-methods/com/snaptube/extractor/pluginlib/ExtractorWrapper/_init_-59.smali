.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/qh3;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    new-instance p1, Ljava/util/LinkedList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iput-object p1, p0, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper;->mSites:Ljava/util/List;

    .line 12
    .line 13
    new-instance p1, Landroid/os/Handler;

    .line 14
    .line 15
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper;->mainHandler:Landroid/os/Handler;

    .line 23
    .line 24
    new-instance p1, Lo/uc2;

    .line 25
    .line 26
    invoke-direct {p1}, Lo/uc2;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper;->extractSourceTracker:Lo/uc2;

    .line 30
    .line 31
    return-void
.end method
