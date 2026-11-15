.class public abstract Lzu5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhc2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzu5$a;
    }
.end annotation


# static fields
.field public static final b:Lqq5;


# instance fields
.field public final a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "LruDiskUsage"

    invoke-static {v0}, Lsq5;->j(Ljava/lang/String;)Lqq5;

    move-result-object v0

    sput-object v0, Lzu5;->b:Lqq5;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lzu5;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static synthetic c(Lzu5;Ljava/io/File;)V
    .locals 0

    invoke-virtual {p0, p1}, Lzu5;->e(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 2

    iget-object v0, p0, Lzu5;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lzu5$a;

    invoke-direct {v1, p0, p1}, Lzu5$a;-><init>(Lzu5;Ljava/io/File;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public abstract b(Ljava/io/File;JI)Z
.end method

.method public final d(Ljava/util/List;)J
    .locals 4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public final e(Ljava/io/File;)V
    .locals 0

    invoke-static {p1}, Lcom/danikula/videocache/file/Files;->e(Ljava/io/File;)V

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/danikula/videocache/file/Files;->a(Ljava/io/File;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lzu5;->f(Ljava/util/List;)V

    return-void
.end method

.method public final f(Ljava/util/List;)V
    .locals 7

    invoke-virtual {p0, p1}, Lzu5;->d(Ljava/util/List;)J

    move-result-wide v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-virtual {p0, v3, v0, v1, v2}, Lzu5;->b(Ljava/io/File;JI)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v2, v2, -0x1

    sub-long/2addr v0, v4

    sget-object v4, Lzu5;->b:Lqq5;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cache file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is deleted because it exceeds cache limit"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lqq5;->info(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v4, Lzu5;->b:Lqq5;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error deleting file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for trimming cache"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lqq5;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method
