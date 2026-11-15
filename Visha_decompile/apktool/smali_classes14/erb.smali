.class public abstract Lerb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final o:I

.field public static final p:I


# instance fields
.field public final a:Lcom/transsion/videodownloader/model/VideoTaskItem;

.field public final b:Ljava/lang/String;

.field public c:Ljava/util/Map;

.field public d:Ljava/io/File;

.field public e:Ljava/lang/String;

.field public f:Ljava/util/concurrent/ThreadPoolExecutor;

.field public g:Lxu4;

.field public volatile h:Z

.field public final i:Ljava/lang/Object;

.field public j:J

.field public k:J

.field public l:J

.field public m:F

.field public n:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lerb;->o:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lerb;->p:I

    return-void
.end method

.method public constructor <init>(Lcom/transsion/videodownloader/model/VideoTaskItem;Ljava/util/Map;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lerb;->h:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lerb;->i:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lerb;->j:J

    iput-wide v0, p0, Lerb;->k:J

    iput-wide v0, p0, Lerb;->l:J

    const/4 v0, 0x0

    iput v0, p0, Lerb;->m:F

    iput v0, p0, Lerb;->n:F

    iput-object p1, p0, Lerb;->a:Lcom/transsion/videodownloader/model/VideoTaskItem;

    iput-object p2, p0, Lerb;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getFinalUrl()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lerb;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lfrb;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lerb;->e:Ljava/lang/String;

    new-instance p2, Ljava/io/File;

    invoke-static {}, Lfrb;->d()Lrqb;

    move-result-object v0

    invoke-virtual {v0}, Lrqb;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lerb;->e:Ljava/lang/String;

    invoke-direct {p2, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lerb;->d:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lerb;->d:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->mkdir()Z

    :cond_0
    iget-object p0, p0, Lerb;->d:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setSaveDir(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lerb;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lerb;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    iget-object p0, p0, Lerb;->g:Lxu4;

    invoke-interface {p0, p1}, Lxu4;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public b()V
    .locals 0

    iget-object p0, p0, Lerb;->g:Lxu4;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lxu4;->e()V

    :cond_0
    return-void
.end method

.method public abstract c()V
.end method

.method public d(Lxu4;)V
    .locals 0

    iput-object p1, p0, Lerb;->g:Lxu4;

    return-void
.end method

.method public abstract e()V
.end method
