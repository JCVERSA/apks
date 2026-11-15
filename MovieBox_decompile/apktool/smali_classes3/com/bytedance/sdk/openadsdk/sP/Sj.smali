.class public abstract Lcom/bytedance/sdk/openadsdk/sP/Sj;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/sP/Sj$Sj;
    }
.end annotation


# instance fields
.field protected Sj:Z

.field private final sP:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/sP/Sj;->Sj:Z

    .line 6
    .line 7
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/sP/Sj;->sP:Ljava/util/concurrent/ExecutorService;

    .line 12
    .line 13
    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/sP/Sj;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/sP/Sj;->sP(Ljava/io/File;)V

    return-void
.end method

.method private sP(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/sP/Sj;->Sj:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/Jcg;->Sj(Ljava/io/File;)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/sP/Sj;->Sj(Ljava/util/List;)V

    return-void

    .line 5
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/Jcg;->sP(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :catchall_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/Jcg;->Sj(Ljava/io/File;)Ljava/util/List;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/sP/Sj;->Sj(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public Sj(Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sP/Sj;->sP:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sP/Sj$Sj;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/bytedance/sdk/openadsdk/sP/Sj$Sj;-><init>(Lcom/bytedance/sdk/openadsdk/sP/Sj;Ljava/io/File;Lcom/bytedance/sdk/openadsdk/sP/Sj$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method protected abstract Sj(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract Sj(JI)Z
.end method

.method protected abstract Sj(Ljava/io/File;JI)Z
.end method

.method sP(Ljava/util/List;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)J"
        }
    .end annotation

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 9
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method
