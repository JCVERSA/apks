.class public Lcom/wandoujia/download/rpc/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wandoujia/download/rpc/l$c;,
        Lcom/wandoujia/download/rpc/l$e;,
        Lcom/wandoujia/download/rpc/l$f;,
        Lcom/wandoujia/download/rpc/l$d;
    }
.end annotation


# static fields
.field public static final v:Ljava/util/concurrent/ExecutorService;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/concurrent/ExecutorService;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/mobiuspace/youtube/ump/proto/FormatId;

.field public final e:Lcom/mobiuspace/youtube/ump/proto/FormatId;

.field public final f:Lcom/mobiuspace/youtube/ump/proto/FormatId;

.field public g:Lcom/wandoujia/download/rpc/l$c;

.field public h:Ljava/util/concurrent/Future;

.field public i:Lcom/wandoujia/download/rpc/l$e;

.field public j:Lcom/wandoujia/download/rpc/l$e;

.field public k:J

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:I

.field public volatile o:Z

.field public p:Lcom/wandoujia/download/rpc/m;

.field public final q:J

.field public r:J

.field public s:J

.field public final t:Ljava/lang/String;

.field public u:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/download/rpc/l;->v:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobiuspace/youtube/ump/proto/FormatId;Lcom/mobiuspace/youtube/ump/proto/FormatId;Ljava/lang/String;JILjava/util/concurrent/ExecutorService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/download/rpc/l;->o:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/download/rpc/l;->p:Lcom/wandoujia/download/rpc/m;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/wandoujia/download/rpc/l;->r:J

    iput-wide v0, p0, Lcom/wandoujia/download/rpc/l;->s:J

    iput-object p1, p0, Lcom/wandoujia/download/rpc/l;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/wandoujia/download/rpc/l;->l:Ljava/lang/String;

    iput-object p3, p0, Lcom/wandoujia/download/rpc/l;->m:Ljava/lang/String;

    iput-object p11, p0, Lcom/wandoujia/download/rpc/l;->b:Ljava/util/concurrent/ExecutorService;

    iput-object p4, p0, Lcom/wandoujia/download/rpc/l;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/wandoujia/download/rpc/l;->d:Lcom/mobiuspace/youtube/ump/proto/FormatId;

    iput-object p6, p0, Lcom/wandoujia/download/rpc/l;->e:Lcom/mobiuspace/youtube/ump/proto/FormatId;

    iput p10, p0, Lcom/wandoujia/download/rpc/l;->n:I

    iput-wide p8, p0, Lcom/wandoujia/download/rpc/l;->q:J

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    move-object p5, p6

    :goto_0
    iput-object p5, p0, Lcom/wandoujia/download/rpc/l;->f:Lcom/mobiuspace/youtube/ump/proto/FormatId;

    iput-object p7, p0, Lcom/wandoujia/download/rpc/l;->t:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(Lcom/wandoujia/download/rpc/l;)Lcom/wandoujia/download/rpc/l$c;
    .locals 0

    iget-object p0, p0, Lcom/wandoujia/download/rpc/l;->g:Lcom/wandoujia/download/rpc/l$c;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/wandoujia/download/rpc/l;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/wandoujia/download/rpc/l;->o:Z

    return p0
.end method

.method public static bridge synthetic c(Lcom/wandoujia/download/rpc/l;)Lcom/mobiuspace/youtube/ump/proto/FormatId;
    .locals 0

    iget-object p0, p0, Lcom/wandoujia/download/rpc/l;->f:Lcom/mobiuspace/youtube/ump/proto/FormatId;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/wandoujia/download/rpc/l;)J
    .locals 2

    iget-wide v0, p0, Lcom/wandoujia/download/rpc/l;->k:J

    return-wide v0
.end method

.method public static bridge synthetic e(Lcom/wandoujia/download/rpc/l;J)V
    .locals 0

    iput-wide p1, p0, Lcom/wandoujia/download/rpc/l;->k:J

    return-void
.end method

.method public static bridge synthetic f(Lcom/wandoujia/download/rpc/l;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/wandoujia/download/rpc/l;->u:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic g(Lcom/wandoujia/download/rpc/l;)V
    .locals 0

    invoke-virtual {p0}, Lcom/wandoujia/download/rpc/l;->m()V

    return-void
.end method

.method public static bridge synthetic h(Lcom/wandoujia/download/rpc/l;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/wandoujia/download/rpc/l;->x(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 8

    iget-boolean v0, p0, Lcom/wandoujia/download/rpc/l;->o:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/download/rpc/l;->r()V

    :try_start_0
    new-instance v0, Lcom/wandoujia/download/rpc/m;

    iget-object v2, p0, Lcom/wandoujia/download/rpc/l;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/wandoujia/download/rpc/l;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/wandoujia/download/rpc/l;->d:Lcom/mobiuspace/youtube/ump/proto/FormatId;

    iget-object v5, p0, Lcom/wandoujia/download/rpc/l;->e:Lcom/mobiuspace/youtube/ump/proto/FormatId;

    iget-object v6, p0, Lcom/wandoujia/download/rpc/l;->t:Ljava/lang/String;

    iget v7, p0, Lcom/wandoujia/download/rpc/l;->n:I

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/wandoujia/download/rpc/m;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/mobiuspace/youtube/ump/proto/FormatId;Lcom/mobiuspace/youtube/ump/proto/FormatId;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/wandoujia/download/rpc/l;->p:Lcom/wandoujia/download/rpc/m;

    iget-wide v1, p0, Lcom/wandoujia/download/rpc/l;->q:J

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/download/rpc/m;->I(J)V

    iget-object v0, p0, Lcom/wandoujia/download/rpc/l;->p:Lcom/wandoujia/download/rpc/m;

    new-instance v1, Lcom/wandoujia/download/rpc/l$a;

    invoke-direct {v1, p0}, Lcom/wandoujia/download/rpc/l$a;-><init>(Lcom/wandoujia/download/rpc/l;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/download/rpc/m;->n(Lcom/wandoujia/download/rpc/m$b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Lcom/wandoujia/download/rpc/l;->i:Lcom/wandoujia/download/rpc/l$e;

    invoke-static {v0}, Lo/xe3;->b(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/wandoujia/download/rpc/l;->j:Lcom/wandoujia/download/rpc/l$e;

    invoke-static {v0}, Lo/xe3;->b(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/wandoujia/download/rpc/l;->n(Ljava/lang/Exception;)V

    invoke-virtual {p0, v0}, Lcom/wandoujia/download/rpc/l;->p(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    const/4 v0, 0x0

    return-object v0

    :goto_2
    iget-object v1, p0, Lcom/wandoujia/download/rpc/l;->i:Lcom/wandoujia/download/rpc/l$e;

    invoke-static {v1}, Lo/xe3;->b(Ljava/io/Closeable;)V

    iget-object v1, p0, Lcom/wandoujia/download/rpc/l;->j:Lcom/wandoujia/download/rpc/l$e;

    invoke-static {v1}, Lo/xe3;->b(Ljava/io/Closeable;)V

    throw v0
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Lcom/wandoujia/download/rpc/l;->m:Ljava/lang/String;

    invoke-static {v0}, Lo/yj2;->s(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/wandoujia/download/rpc/l;->l:Ljava/lang/String;

    invoke-static {v0}, Lo/yj2;->s(Ljava/lang/String;)V

    return-void
.end method

.method public final j(Ljava/lang/String;)Lcom/wandoujia/download/rpc/l$e;
    .locals 5

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_1

    new-instance p1, Lcom/wandoujia/download/rpc/l$f;

    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-direct {p1, v1, v2, v3}, Lcom/wandoujia/download/rpc/l$f;-><init>(Ljava/io/RandomAccessFile;J)V

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/wandoujia/download/rpc/l$d;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v1, v3, v4}, Lcom/wandoujia/download/rpc/l$d;-><init>(Ljava/io/FileOutputStream;J)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_0
    new-instance v0, Lcom/mobiuspace/youtube/ump/UmpException;

    const/4 v1, -0x3

    invoke-direct {v0, v1, p1}, Lcom/mobiuspace/youtube/ump/UmpException;-><init>(ILjava/lang/Exception;)V

    throw v0
.end method

.method public final k(Lo/sm3;)Lcom/wandoujia/download/rpc/l$e;
    .locals 0

    invoke-virtual {p1}, Lo/sm3;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/download/rpc/l;->t()Lcom/wandoujia/download/rpc/l$e;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/download/rpc/l;->s()Lcom/wandoujia/download/rpc/l$e;

    move-result-object p1

    return-object p1
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wandoujia/download/rpc/l;->u:Ljava/lang/String;

    return-object v0
.end method

.method public final m()V
    .locals 13

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/wandoujia/download/rpc/l;->m:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/wandoujia/download/rpc/l;->l:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/wandoujia/download/rpc/l;->j:Lcom/wandoujia/download/rpc/l$e;

    const-string v3, " "

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v2, :cond_1

    invoke-static {v2}, Lo/xe3;->b(Ljava/io/Closeable;)V

    iput-object v6, p0, Lcom/wandoujia/download/rpc/l;->j:Lcom/wandoujia/download/rpc/l$e;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/wandoujia/download/rpc/l;->s:J

    add-long/2addr v11, v4

    cmp-long v2, v9, v11

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "download audio complete "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/wandoujia/download/rpc/l;->m:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/bg8;->h(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    :goto_1
    iget-object v0, p0, Lcom/wandoujia/download/rpc/l;->i:Lcom/wandoujia/download/rpc/l$e;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lo/xe3;->b(Ljava/io/Closeable;)V

    iput-object v6, p0, Lcom/wandoujia/download/rpc/l;->i:Lcom/wandoujia/download/rpc/l$e;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/wandoujia/download/rpc/l;->r:J

    add-long/2addr v11, v4

    cmp-long v0, v9, v11

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "download video complete "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/wandoujia/download/rpc/l;->l:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/bg8;->h(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const/4 v0, 0x1

    :goto_3
    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    const/4 v7, 0x1

    :cond_4
    iget-object v0, p0, Lcom/wandoujia/download/rpc/l;->g:Lcom/wandoujia/download/rpc/l$c;

    if-eqz v0, :cond_5

    invoke-interface {v0, v7}, Lcom/wandoujia/download/rpc/l$c;->a(Z)V

    :cond_5
    return-void
.end method

.method public final n(Ljava/lang/Exception;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/wandoujia/download/rpc/l;->o(Ljava/lang/Exception;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/download/rpc/l;->i()V

    :cond_0
    return-void
.end method

.method public final o(Ljava/lang/Exception;)Z
    .locals 2

    invoke-static {p1}, Lo/h58;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    instance-of v0, p1, Ljava/io/InterruptedIOException;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Lcom/mobiuspace/youtube/ump/UmpException;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/mobiuspace/youtube/ump/UmpException;

    invoke-virtual {p1}, Lcom/mobiuspace/youtube/ump/UmpException;->getErrorCode()I

    move-result p1

    const/4 v0, -0x7

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final p(Ljava/lang/Exception;)V
    .locals 3

    const-string v0, "ump-download"

    invoke-static {v0, p1}, Lcom/snaptube/util/ProductionEnv;->errorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/wandoujia/download/rpc/l;->g:Lcom/wandoujia/download/rpc/l$c;

    if-eqz v0, :cond_1

    instance-of v1, p1, Lcom/mobiuspace/youtube/ump/UmpException;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/mobiuspace/youtube/ump/UmpException;

    invoke-interface {v0, p1}, Lcom/wandoujia/download/rpc/l$c;->b(Lcom/mobiuspace/youtube/ump/UmpException;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/mobiuspace/youtube/ump/UmpException;

    const/16 v2, -0x64

    invoke-direct {v1, v2, p1}, Lcom/mobiuspace/youtube/ump/UmpException;-><init>(ILjava/lang/Exception;)V

    invoke-interface {v0, v1}, Lcom/wandoujia/download/rpc/l$c;->b(Lcom/mobiuspace/youtube/ump/UmpException;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final q(JJJ)V
    .locals 10

    sget-object v0, Lcom/wandoujia/download/rpc/l;->v:Ljava/util/concurrent/ExecutorService;

    new-instance v9, Lcom/wandoujia/download/rpc/l$b;

    move-object v1, v9

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move-wide v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/wandoujia/download/rpc/l$b;-><init>(Lcom/wandoujia/download/rpc/l;JJJ)V

    invoke-interface {v0, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final r()V
    .locals 1

    iget-object v0, p0, Lcom/wandoujia/download/rpc/l;->g:Lcom/wandoujia/download/rpc/l$c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/wandoujia/download/rpc/l$c;->onStart()V

    :cond_0
    return-void
.end method

.method public final s()Lcom/wandoujia/download/rpc/l$e;
    .locals 1

    iget-object v0, p0, Lcom/wandoujia/download/rpc/l;->j:Lcom/wandoujia/download/rpc/l$e;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/download/rpc/l;->m:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/wandoujia/download/rpc/l;->j(Ljava/lang/String;)Lcom/wandoujia/download/rpc/l$e;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/download/rpc/l;->j:Lcom/wandoujia/download/rpc/l$e;

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/download/rpc/l;->j:Lcom/wandoujia/download/rpc/l$e;

    return-object v0
.end method

.method public final t()Lcom/wandoujia/download/rpc/l$e;
    .locals 1

    iget-object v0, p0, Lcom/wandoujia/download/rpc/l;->i:Lcom/wandoujia/download/rpc/l$e;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/download/rpc/l;->l:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/wandoujia/download/rpc/l;->j(Ljava/lang/String;)Lcom/wandoujia/download/rpc/l$e;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/download/rpc/l;->i:Lcom/wandoujia/download/rpc/l$e;

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/download/rpc/l;->i:Lcom/wandoujia/download/rpc/l$e;

    return-object v0
.end method

.method public u(Lcom/wandoujia/download/rpc/l$c;)V
    .locals 0

    iput-object p1, p0, Lcom/wandoujia/download/rpc/l;->g:Lcom/wandoujia/download/rpc/l$c;

    return-void
.end method

.method public v()V
    .locals 1

    iget-object v0, p0, Lcom/wandoujia/download/rpc/l;->h:Ljava/util/concurrent/Future;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/download/rpc/l;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/download/rpc/l;->h:Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method public w()V
    .locals 2

    iget-boolean v0, p0, Lcom/wandoujia/download/rpc/l;->o:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/download/rpc/l;->h:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_1
    iget-object v0, p0, Lcom/wandoujia/download/rpc/l;->p:Lcom/wandoujia/download/rpc/m;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/wandoujia/download/rpc/m;->k()V

    :cond_2
    iput-boolean v1, p0, Lcom/wandoujia/download/rpc/l;->o:Z

    return-void
.end method

.method public final x(Ljava/util/List;)V
    .locals 18

    move-object/from16 v7, p0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lo/sm3;

    invoke-virtual {v7, v9}, Lcom/wandoujia/download/rpc/l;->k(Lo/sm3;)Lcom/wandoujia/download/rpc/l$e;

    move-result-object v10

    invoke-virtual {v9}, Lo/sm3;->b()Z

    move-result v11

    invoke-virtual {v9}, Lo/sm3;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ko4;

    invoke-virtual {v0}, Lo/ko4;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seq "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lo/ko4;->f:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " is empty"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/bg8;->h(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lo/ko4;->d()J

    move-result-wide v2

    iget-wide v4, v0, Lo/ko4;->h:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_a

    iget v2, v0, Lo/ko4;->g:I

    int-to-long v2, v2

    add-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long v13, v2, v4

    invoke-interface {v10}, Lcom/wandoujia/download/rpc/l$e;->N()J

    move-result-wide v2

    cmp-long v4, v13, v2

    if-gez v4, :cond_3

    const-string v0, "skip downloaded"

    invoke-static {v0}, Lo/bg8;->h(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v9}, Lo/sm3;->b()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "video"

    goto :goto_2

    :cond_4
    const-string v4, "audio"

    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "write "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " seq "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 p1, v8

    move-object v15, v9

    iget-wide v8, v0, Lo/ko4;->f:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", ["

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lo/ko4;->g:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lo/bg8;->h(Ljava/lang/String;)V

    const-wide/16 v8, 0x0

    cmp-long v5, v2, v8

    if-lez v5, :cond_5

    iget v5, v0, Lo/ko4;->g:I

    int-to-long v8, v5

    cmp-long v5, v8, v2

    if-gtz v5, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resume download ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lo/ko4;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo/bg8;->h(Ljava/lang/String;)V

    iget v2, v0, Lo/ko4;->g:I

    int-to-long v2, v2

    invoke-interface {v10, v2, v3}, Lcom/wandoujia/download/rpc/l$e;->seek(J)V

    :cond_5
    iget v0, v0, Lo/ko4;->g:I

    int-to-long v2, v0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-interface {v10, v1}, Lcom/wandoujia/download/rpc/l$e;->write([B)V

    iget-boolean v1, v7, Lcom/wandoujia/download/rpc/l;->o:Z

    if-eqz v1, :cond_7

    :cond_6
    move-object v9, v15

    goto :goto_6

    :cond_7
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    int-to-long v0, v0

    add-long v16, v2, v0

    if-eqz v11, :cond_8

    iget-wide v0, v7, Lcom/wandoujia/download/rpc/l;->s:J

    :goto_4
    add-long v0, v0, v16

    move-wide v1, v0

    move-object v9, v15

    goto :goto_5

    :cond_8
    iget-wide v0, v7, Lcom/wandoujia/download/rpc/l;->r:J

    goto :goto_4

    :goto_5
    iget-wide v3, v9, Lo/sm3;->g:J

    iget-wide v5, v9, Lo/sm3;->b:J

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/wandoujia/download/rpc/l;->q(JJJ)V

    move-object v15, v9

    move-wide/from16 v2, v16

    goto :goto_3

    :goto_6
    if-eqz v11, :cond_9

    iput-wide v13, v7, Lcom/wandoujia/download/rpc/l;->r:J

    goto :goto_7

    :cond_9
    iput-wide v13, v7, Lcom/wandoujia/download/rpc/l;->s:J

    :goto_7
    move-object/from16 v8, p1

    goto/16 :goto_1

    :cond_a
    new-instance v1, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, v0, Lo/ko4;->f:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " data length is invalid, expect is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lo/ko4;->h:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", but actual is "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    return-void
.end method
