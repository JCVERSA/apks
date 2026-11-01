.class public Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/wandoujia/download/rpc/IBlockDownloadTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;,
        Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$b;,
        Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;,
        Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$NetworkType;,
        Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$RetryDownloadException;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/wandoujia/download/rpc/g;

.field public final c:Lcom/wandoujia/download/listener/NetworkStatusStub;

.field public d:Lo/cn3;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Ljava/lang/Runnable;

.field public final g:Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;

.field public h:J

.field public final i:Ljava/lang/String;

.field public j:Lcom/wandoujia/download/utils/CrcCalculator;

.field public k:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/wandoujia/download/rpc/g;Lcom/wandoujia/download/listener/NetworkStatusStub;Ljava/util/concurrent/Executor;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->c:Lcom/wandoujia/download/listener/NetworkStatusStub;

    iput-object p4, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->e:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->b:Lcom/wandoujia/download/rpc/g;

    new-instance p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;

    invoke-direct {p1, p2}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;-><init>(Lcom/wandoujia/download/rpc/g;)V

    iput-object p1, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->g:Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;

    new-instance p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$b;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$b;-><init>(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;Lo/xf7;)V

    iput-object p1, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->f:Ljava/lang/Runnable;

    iget-object p1, p2, Lcom/wandoujia/download/rpc/g;->q:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    new-instance p1, Lcom/wandoujia/download/utils/CrcCalculator;

    iget-object v1, p2, Lcom/wandoujia/download/rpc/g;->q:Ljava/util/List;

    iget-wide p3, p2, Lcom/wandoujia/download/rpc/g;->g:J

    iget-wide v2, p2, Lcom/wandoujia/download/rpc/g;->a:J

    add-long/2addr v2, p3

    iget-wide v4, p2, Lcom/wandoujia/download/rpc/g;->r:J

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/wandoujia/download/utils/CrcCalculator;-><init>(Ljava/util/List;JJ)V

    iput-object p1, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->j:Lcom/wandoujia/download/utils/CrcCalculator;

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->i:Ljava/lang/String;

    return-void
.end method

.method public static E(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static bridge synthetic a(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;)Lcom/wandoujia/download/rpc/g;
    .locals 0

    iget-object p0, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->b:Lcom/wandoujia/download/rpc/g;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;)Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;
    .locals 0

    iget-object p0, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->g:Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;Lo/ch;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->s(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;Lo/ch;)V

    return-void
.end method

.method public static bridge synthetic h(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->B(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;)V

    return-void
.end method

.method public static bridge synthetic i(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;)V
    .locals 0

    invoke-static {p0}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->q(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;)V

    return-void
.end method

.method public static bridge synthetic j(Lcom/wandoujia/download/rpc/g;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->u(Lcom/wandoujia/download/rpc/g;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic k(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static n(Lcom/wandoujia/download/utils/CrcCalculator;[BI)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/wandoujia/download/utils/CrcCalculator;->a([BI)V
    :try_end_0
    .catch Lcom/wandoujia/download/utils/CrcCalculator$CrcVerifiedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;

    sget-object p2, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->CRC_VERIFY_ERROR:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-direct {p1, p2, p0, v0}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;-><init>(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;Ljava/lang/String;Lo/zf7;)V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public static o(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;)V
    .locals 3

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {p0}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->q(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;)V

    :goto_0
    invoke-static {}, Lcom/wandoujia/download/utils/StorageUtil;->m()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;

    sget-object v0, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->QUEUED_FOR_MEDIA:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    const-string v1, "external media not mounted while writing destination file"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;-><init>(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;Ljava/lang/String;Lo/zf7;)V

    throw p0
.end method

.method public static p(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;)V
    .locals 5

    iget-wide v0, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->j:J

    iget-wide v2, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->l:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x64000

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    iget-object v0, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->c:Ljava/io/File;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->c:Ljava/io/File;

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->j:J

    iput-wide v0, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->l:J

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->q(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;)V

    invoke-static {p0}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->o(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;)V

    new-instance p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;

    sget-object v0, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->FILE_NOT_FOUND:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    const-string v1, "download file has been deleted"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;-><init>(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;Ljava/lang/String;Lo/zf7;)V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public static q(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;)V
    .locals 2

    iget-boolean p0, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->o:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;

    const-string v0, "state is needToStop, let\'s stop"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;-><init>(Ljava/lang/String;Lo/zf7;)V

    throw p0
.end method

.method public static u(Lcom/wandoujia/download/rpc/g;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/wandoujia/download/rpc/g;->i:Ljava/lang/String;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/wandoujia/download/rpc/DownloadConstants;->b:Ljava/lang/String;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final A(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;Lorg/apache/http/HttpResponse;)V
    .locals 6

    const-string v0, "got HTTP response code 503"

    const-string v1, "download"

    invoke-static {v1, v0}, Lcom/snaptube/util/ProductionEnv;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->h:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->h:I

    const/4 v2, 0x5

    const/4 v3, 0x0

    if-ge v0, v2, :cond_3

    const-string v0, "Retry-After"

    invoke-interface {p2, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p2

    const-wide/16 v4, 0x3e8

    if-eqz p2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retry-After :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/snaptube/util/ProductionEnv;->v(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    int-to-long v0, p2

    mul-long v0, v0, v4

    iput-wide v0, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->e:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-wide v0, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->e:J

    const-wide/16 v4, 0x64

    cmp-long p2, v0, v4

    if-ltz p2, :cond_0

    const-wide/16 v4, 0x7d0

    cmp-long p2, v0, v4

    if-lez p2, :cond_2

    iput-wide v4, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->e:J

    goto :goto_1

    :cond_0
    iput-wide v4, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->e:J

    goto :goto_1

    :cond_1
    iput-wide v4, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->e:J

    :cond_2
    :goto_1
    :try_start_1
    iget-wide v0, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->e:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    invoke-static {p1}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->q(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;)V

    :goto_2
    new-instance p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$RetryDownloadException;

    const-string p2, "we get \'503\' response code, which means the server is unavailavle, sleep then retry."

    invoke-direct {p1, p2, v3}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$RetryDownloadException;-><init>(Ljava/lang/String;Lo/yf7;)V

    throw p1

    :cond_3
    new-instance p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;

    sget-object v0, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->HTTP_ERROR:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2, v3}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;-><init>(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;Ljava/lang/String;Lo/zf7;)V

    throw p1
.end method

.method public final B(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;)V
    .locals 6

    if-eqz p1, :cond_1

    iget-object v0, p2, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->a:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    if-eq v0, p1, :cond_1

    iget-boolean v0, p2, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->o:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p2, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->a:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    iget-object v0, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->d:Lo/cn3;

    iget-object v1, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->b:Lcom/wandoujia/download/rpc/g;

    iget v1, v1, Lcom/wandoujia/download/rpc/g;->f:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p2, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->m:J

    sub-long/2addr v2, v4

    invoke-interface {v0, v1, v2, v3}, Lo/cn3;->b(IJ)V

    iget-object p2, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->d:Lo/cn3;

    iget-object v0, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->b:Lcom/wandoujia/download/rpc/g;

    iget v0, v0, Lcom/wandoujia/download/rpc/g;->f:I

    invoke-interface {p2, p0, v0, p1}, Lo/cn3;->a(Lcom/wandoujia/download/rpc/IBlockDownloadTask;ILcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final C(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;Lorg/apache/http/HttpResponse;)V
    .locals 6

    const-string v0, "Content-Disposition"

    invoke-interface {p2, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->n:Ljava/lang/String;

    :cond_0
    iget-object v0, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->d:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "Content-Type"

    invoke-interface {p2, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->d:Ljava/lang/String;

    :cond_1
    invoke-static {}, Lo/it1;->b()Lo/it1;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->b:Lcom/wandoujia/download/rpc/g;

    iget-wide v1, v1, Lcom/wandoujia/download/rpc/g;->l:J

    iget-object v3, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lo/it1;->d(JLjava/lang/String;)V

    :cond_2
    const-string v0, "ETag"

    invoke-interface {p2, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    :cond_4
    :goto_0
    const-string v0, "Content-Length"

    invoke-interface {p2, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-interface {p2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    :try_start_0
    invoke-interface {p2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->q:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_1
    iget-wide v0, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->q:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-ltz p2, :cond_6

    iget-wide v4, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->k:J

    cmp-long p2, v4, v2

    if-nez p2, :cond_6

    iput-wide v0, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->k:J

    iget-object p1, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->b:Lcom/wandoujia/download/rpc/g;

    iget-boolean p2, p1, Lcom/wandoujia/download/rpc/g;->p:Z

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->d:Lo/cn3;

    iget p1, p1, Lcom/wandoujia/download/rpc/g;->f:I

    invoke-interface {p2, p1, v0, v1}, Lo/cn3;->g(IJ)V

    :cond_6
    return-void
.end method

.method public final D()V
    .locals 3

    iget-object v0, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->g:Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;

    const/4 v1, 0x0

    iput v1, v0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->f:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->m:J

    return-void
.end method

.method public final F(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;Ljava/io/InputStream;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/16 v0, 0x1000

    new-array v3, v0, [B

    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v6, p2

    :try_start_0
    invoke-virtual {v6, v3}, Ljava/io/InputStream;->read([B)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static/range {p1 .. p1}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->q(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;)V

    invoke-virtual {v1, v2, v7}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->x(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;Ljava/io/IOException;)V

    const/4 v0, 0x0

    :goto_1
    iget-wide v7, v2, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->k:J

    const/4 v11, -0x1

    const-wide/16 v12, 0x0

    cmp-long v14, v7, v12

    if-lez v14, :cond_4

    if-ne v0, v11, :cond_2

    iget-wide v3, v2, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->j:J

    cmp-long v0, v3, v7

    if-ltz v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->q(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;)V

    new-instance v0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$RetryDownloadException;

    const-string v2, "the state bytesRead is smaller than excepted!"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$RetryDownloadException;-><init>(Ljava/lang/String;Lo/yf7;)V

    throw v0

    :cond_2
    int-to-long v14, v0

    iget-wide v9, v2, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->j:J

    add-long v16, v14, v9

    cmp-long v11, v16, v7

    if-lez v11, :cond_3

    sub-long/2addr v7, v9

    long-to-int v0, v7

    invoke-virtual {v1, v2, v3, v0}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->I(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;[BI)V

    goto :goto_2

    :cond_3
    invoke-virtual {v1, v2, v3, v0}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->I(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;[BI)V

    iget-object v0, v1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->b:Lcom/wandoujia/download/rpc/g;

    iget-wide v7, v0, Lcom/wandoujia/download/rpc/g;->s:J

    cmp-long v0, v7, v12

    if-lez v0, :cond_0

    const-wide/16 v9, 0x3e8

    mul-long v14, v14, v9

    div-long/2addr v14, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v4

    sub-long/2addr v14, v7

    cmp-long v0, v14, v12

    if-lez v0, :cond_0

    :try_start_1
    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    invoke-static/range {p1 .. p1}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->q(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;)V

    goto :goto_0

    :cond_4
    if-ne v0, v11, :cond_5

    :goto_2
    return-void

    :cond_5
    invoke-virtual {v1, v2, v3, v0}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->I(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;[BI)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bytesRead:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SingleDownload"

    invoke-static {v8, v7}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->b:Lcom/wandoujia/download/rpc/g;

    iget-wide v7, v7, Lcom/wandoujia/download/rpc/g;->s:J

    cmp-long v9, v7, v12

    if-lez v9, :cond_0

    int-to-long v9, v0

    const-wide/16 v14, 0x3e8

    mul-long v9, v9, v14

    div-long/2addr v9, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v4

    sub-long/2addr v9, v7

    cmp-long v0, v9, v12

    if-lez v0, :cond_0

    :try_start_2
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    invoke-static/range {p1 .. p1}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->q(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;)V

    goto/16 :goto_0
.end method

.method public final G([BILcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;)V
    .locals 13

    move-object v0, p0

    move-object/from16 v1, p3

    iget-boolean v2, v1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->o:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-wide v2, v1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->j:J

    move v9, p2

    int-to-long v4, v9

    add-long v6, v2, v4

    iput-wide v6, v1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->j:J

    iget-object v4, v0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->d:Lo/cn3;

    iget-object v1, v0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->b:Lcom/wandoujia/download/rpc/g;

    iget v5, v1, Lcom/wandoujia/download/rpc/g;->f:I

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    move-object v8, p1

    invoke-interface/range {v4 .. v12}, Lo/cn3;->c(IJ[BILcom/wandoujia/mtdownload/c;J)V

    return-void
.end method

.method public final H()Z
    .locals 6

    iget-object v0, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->b:Lcom/wandoujia/download/rpc/g;

    iget-wide v1, v0, Lcom/wandoujia/download/rpc/g;->g:J

    iget-object v3, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->g:Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;

    iget-wide v3, v3, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->j:J

    add-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1

    iget-boolean v0, v0, Lcom/wandoujia/download/rpc/g;->p:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final I(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;[BI)V
    .locals 2

    iget-object v0, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->j:Lcom/wandoujia/download/utils/CrcCalculator;

    invoke-static {v0, p2, p3}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->n(Lcom/wandoujia/download/utils/CrcCalculator;[BI)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->J(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;[BI)V

    invoke-static {p1}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->p(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;)V

    invoke-static {}, Lo/au1;->a()Lo/se6;

    move-result-object v0

    if-eqz v0, :cond_0

    mul-int/lit8 v1, p3, 0x8

    invoke-virtual {v0, v1}, Lo/se6;->a(I)D

    :cond_0
    invoke-virtual {p0, p2, p3, p1}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->G([BILcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;)V

    return-void
.end method

.method public final J(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;[BI)V
    .locals 9

    iget-object v0, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->b:Lcom/wandoujia/download/rpc/g;

    iget-object v1, v0, Lcom/wandoujia/download/rpc/g;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->i:Ljava/lang/String;

    iget-object v3, v0, Lcom/wandoujia/download/rpc/g;->d:Ljava/lang/String;

    iget-object v4, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->n:Ljava/lang/String;

    iget-object v5, v0, Lcom/wandoujia/download/rpc/g;->n:Lcom/wandoujia/download/rpc/DownloadConstants$ResourceType;

    iget-wide v6, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->k:J

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/wandoujia/download/utils/StorageUtil;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wandoujia/download/rpc/DownloadConstants$ResourceType;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/wandoujia/download/utils/StorageUtil$GenerateSaveFileException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->d:Lo/cn3;

    iget-object v2, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->b:Lcom/wandoujia/download/rpc/g;

    iget v2, v2, Lcom/wandoujia/download/rpc/g;->f:I

    invoke-interface {v1, v2, v0}, Lo/cn3;->f(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->b:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-static {p1}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->q(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;)V

    new-instance p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;

    sget-object p3, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->QUEUED_FOR_MEDIA:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    invoke-virtual {p2}, Lcom/wandoujia/download/utils/StorageUtil$GenerateSaveFileException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, p3, v0, p2, v1}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;-><init>(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;Ljava/lang/String;Ljava/lang/Throwable;Lo/zf7;)V

    throw p1

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->s:[B

    monitor-enter v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-static {p1}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->q(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;)V

    iget-object v1, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->t:Lo/ek2;

    if-nez v1, :cond_1

    new-instance v1, Lo/ek2;

    iget-object v2, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Lo/ek2;-><init>(Ljava/lang/String;)V

    iput-object v1, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->t:Lo/ek2;

    iget-wide v2, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->h:J

    invoke-virtual {v1, v2, v3}, Lo/ek2;->c(J)V

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->t:Lo/ek2;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, p3}, Lo/ek2;->d([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    move-exception p2

    goto :goto_3

    :goto_2
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_3
    const-string p3, "WriteDataException"

    invoke-static {p3, p2}, Lcom/snaptube/util/ProductionEnv;->logException(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1, p2}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->v(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;Ljava/io/IOException;)V

    :goto_4
    return-void
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->g:Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;

    iget v0, v0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->p:I

    return v0
.end method

.method public d(Lcom/wandoujia/download/rpc/g;Lo/cn3;)V
    .locals 0

    iput-object p2, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->d:Lo/cn3;

    sget-object p1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->PENDING:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    iget-object p2, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->g:Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;

    invoke-virtual {p0, p1, p2}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->B(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;)V

    iget-object p1, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->e:Ljava/util/concurrent/Executor;

    iget-object p2, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->f:Ljava/lang/Runnable;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public f(Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->k:Ljava/util/Map;

    return-void
.end method

.method public getStatus()Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;
    .locals 1

    iget-object v0, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->g:Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;

    iget-object v0, v0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->a:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    return-object v0
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->b:Lcom/wandoujia/download/rpc/g;

    iget v0, v0, Lcom/wandoujia/download/rpc/g;->f:I

    return v0
.end method

.method public final m()V
    .locals 4

    invoke-virtual {p0}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->t()Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$NetworkType;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;

    sget-object v1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->QUEUED_FOR_WIFI_OR_USB:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    const-string v2, "Download can not be executed caused by no wifi or ReverseProxy"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;-><init>(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;Ljava/lang/String;Lo/zf7;)V

    throw v0
.end method

.method public final r(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;)Lorg/apache/http/client/methods/HttpGet;
    .locals 9

    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    iget-object v1, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->k:Ljava/util/Map;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->H()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->b:Lcom/wandoujia/download/rpc/g;

    iget-wide v2, v1, Lcom/wandoujia/download/rpc/g;->g:J

    iget-wide v4, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->j:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->h:J

    iget-wide v4, v1, Lcom/wandoujia/download/rpc/g;->h:J

    const-string v1, "-"

    const-string v6, "bytes="

    const-string v7, "Range"

    cmp-long v8, v2, v4

    if-lez v8, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v1, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->i:Ljava/lang/String;

    const-string v2, "wdjcdn.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Referer"

    const-string v2, "http://android.wdjcdn.com/"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->headerIterator()Lorg/apache/http/HeaderIterator;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-interface {v1}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Lorg/apache/http/HeaderIterator;->nextHeader()Lorg/apache/http/Header;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->r:Ljava/lang/String;

    :cond_5
    return-object v0
.end method

.method public final s(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;Lo/ch;)V
    .locals 2

    iget-object v0, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->b:Lcom/wandoujia/download/rpc/g;

    iget-object v0, v0, Lcom/wandoujia/download/rpc/g;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->D()V

    invoke-virtual {p0, p1}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->r(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->m()V

    :try_start_0
    invoke-static {p2, v0}, Lcom/google/firebase/perf/network/FirebasePerfHttpClient;->execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->w(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;Lorg/apache/http/HttpResponse;)V

    invoke-virtual {p0, p1, p2}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->C(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;Lorg/apache/http/HttpResponse;)V

    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p2

    sget-object v1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->RUNNING:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    invoke-virtual {p0, v1, p1}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->B(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;)V

    invoke-virtual {p0, p1, p2}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->F(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p2

    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p0, p1, p2}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->x(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;Ljava/io/IOException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    throw p1

    :cond_0
    new-instance p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;

    sget-object p2, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->URL_NULL_ERROR:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    const-string v0, "download url is null"

    const/4 v1, 0x0

    invoke-direct {p1, p2, v0, v1}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;-><init>(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;Ljava/lang/String;Lo/zf7;)V

    throw p1
.end method

.method public stop()V
    .locals 3

    iget-object v0, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->g:Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;

    iget-boolean v0, v0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->o:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->g:Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->o:Z

    iget-object v0, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->g:Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;

    iget-object v0, v0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->u:[B

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->g:Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;

    iget-object v1, v1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->v:Lo/ch;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lo/ch;->e()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_5

    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->g:Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;

    iget-object v1, v0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->s:[B

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->g:Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;

    iget-object v0, v0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->t:Lo/ek2;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lo/ek2;->a()V

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_2
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->g:Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;

    iget-object v0, v0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->w:[B

    monitor-enter v0

    :try_start_2
    iget-object v1, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->g:Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;

    iget-object v1, v1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->x:Ljava/lang/Thread;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    iget-object v1, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->g:Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->x:Ljava/lang/Thread;

    goto :goto_2

    :catchall_2
    move-exception v1

    goto :goto_3

    :cond_3
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    :goto_4
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :goto_5
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public final t()Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$NetworkType;
    .locals 2

    iget-object v0, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->c:Lcom/wandoujia/download/listener/NetworkStatusStub;

    invoke-interface {v0}, Lcom/wandoujia/download/listener/NetworkStatusStub;->a()Lcom/wandoujia/download/listener/NetworkStatusStub$NetworkStatus;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$a;->b:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$NetworkType;->NETWORK_NO_CONNECTION:Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$NetworkType;

    return-object v0

    :cond_0
    sget-object v0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$NetworkType;->NETWORK_OK:Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$NetworkType;

    return-object v0
.end method

.method public final v(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;Ljava/io/IOException;)V
    .locals 9

    invoke-static {p1}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->q(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;)V

    iget-object v0, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/wandoujia/download/utils/StorageUtil;->i(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/yj2;->y(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->b:Lcom/wandoujia/download/rpc/g;

    iget-wide v3, v2, Lcom/wandoujia/download/rpc/g;->h:J

    iget-wide v5, v2, Lcom/wandoujia/download/rpc/g;->g:J

    iget-wide v7, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->j:J

    add-long/2addr v5, v7

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    const/4 v2, 0x0

    cmp-long v5, v0, v3

    if-gez v5, :cond_0

    new-instance p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;

    sget-object v0, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->INSUFFICIENT_STORAGE:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    const-string v1, "insufficient space while writing destination file"

    invoke-direct {p1, v0, v1, p2, v2}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;-><init>(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;Ljava/lang/String;Ljava/lang/Throwable;Lo/zf7;)V

    throw p1

    :cond_0
    invoke-static {p1}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->o(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;)V

    new-instance p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;

    sget-object v0, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->FILE_ERROR:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1, p2, v2}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;-><init>(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;Ljava/lang/String;Ljava/lang/Throwable;Lo/zf7;)V

    throw p1
.end method

.method public final w(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;Lorg/apache/http/HttpResponse;)V
    .locals 3

    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    iput v0, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->p:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->b:Lcom/wandoujia/download/rpc/g;

    iget-boolean v1, v1, Lcom/wandoujia/download/rpc/g;->p:Z

    if-nez v1, :cond_0

    iget-object p2, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->c:Ljava/io/File;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p1, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->c:Ljava/io/File;

    invoke-static {p1}, Lo/yj2;->r(Ljava/io/File;)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->h:J

    goto :goto_1

    :cond_0
    const/16 v1, 0xce

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->A(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;Lorg/apache/http/HttpResponse;)V

    goto :goto_1

    :cond_2
    const/16 v1, 0x1a0

    if-ne v0, v1, :cond_3

    invoke-virtual {p0, p1}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->z(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;)V

    goto :goto_1

    :cond_3
    const/16 v1, 0x12d

    if-eq v0, v1, :cond_5

    const/16 v1, 0x12e

    if-eq v0, v1, :cond_5

    const/16 v1, 0x12f

    if-eq v0, v1, :cond_5

    const/16 v1, 0x133

    if-ne v0, v1, :cond_4

    goto :goto_0

    :cond_4
    new-instance p2, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;

    sget-object v0, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->HTTP_ERROR:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->p:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p2, v0, p1, v1}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;-><init>(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;Ljava/lang/String;Lo/zf7;)V

    throw p2

    :cond_5
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->y(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;Lorg/apache/http/HttpResponse;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final x(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;Ljava/io/IOException;)V
    .locals 6

    invoke-static {p1}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->q(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;)V

    invoke-virtual {p0}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->t()Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$NetworkType;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    instance-of v0, p2, Lorg/apache/http/conn/ConnectTimeoutException;

    if-nez v0, :cond_2

    instance-of v0, p2, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->h:I

    const/4 v3, 0x5

    if-ge v0, v3, :cond_1

    add-int/2addr v0, v1

    iput v0, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->h:I

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    shl-int v0, v1, v0

    int-to-long v0, v0

    const-wide/16 v4, 0x1f4

    mul-long v0, v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {p1}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->q(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;)V

    :goto_0
    new-instance p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$RetryDownloadException;

    const-string v0, "meet IO exception, we need retry"

    invoke-direct {p1, v0, p2, v2}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$RetryDownloadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lo/yf7;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;

    sget-object v0, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->EXCEED_MAX_RETRY_TIMES:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    const-string v1, "While getting data, IOException has been happens, and retried times has reached MAX_RETRIES"

    invoke-direct {p1, v0, v1, p2, v2}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;-><init>(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;Ljava/lang/String;Ljava/lang/Throwable;Lo/zf7;)V

    throw p1

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask;->a:Landroid/content/Context;

    invoke-static {p1}, Lo/q55;->z(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    new-instance p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;

    sget-object v0, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->INTERNET_NO_ACCESS:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    const-string v1, "no network access"

    invoke-direct {p1, v0, v1, p2, v2}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;-><init>(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;Ljava/lang/String;Ljava/lang/Throwable;Lo/zf7;)V

    throw p1

    :cond_3
    new-instance p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;

    sget-object v0, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->CONNECTION_TIMEOUT:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    const-string v1, "unable to connect server."

    invoke-direct {p1, v0, v1, p2, v2}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;-><init>(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;Ljava/lang/String;Ljava/lang/Throwable;Lo/zf7;)V

    throw p1

    :cond_4
    new-instance p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;

    sget-object v0, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->QUEUED_FOR_WIFI_OR_USB:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    const-string v1, "WIFI is disconnected, can\'t getting data"

    invoke-direct {p1, v0, v1, p2, v2}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;-><init>(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;Ljava/lang/String;Ljava/lang/Throwable;Lo/zf7;)V

    throw p1
.end method

.method public final y(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;Lorg/apache/http/HttpResponse;)V
    .locals 5

    iget v0, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->f:I

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-ge v0, v1, :cond_2

    const-string v0, "Location"

    invoke-interface {p2, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    new-instance v3, Ljava/net/URL;

    iget-object v4, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->i:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3, v0}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    invoke-static {v0}, Lo/oj8;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->i:Ljava/lang/String;

    new-instance v0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$RetryDownloadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "we get \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\' response code, which need to redirect to "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->i:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, v2}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$RetryDownloadException;-><init>(Ljava/lang/String;Lo/yf7;)V

    throw v0

    :cond_1
    :goto_0
    new-instance p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;

    sget-object p2, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->RESOLVE_REDIRECT_URL_FAILED:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    const-string v0, "Redirect URI is null"

    invoke-direct {p1, p2, v0, v2}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;-><init>(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;Ljava/lang/String;Lo/zf7;)V

    throw p1

    :cond_2
    new-instance p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;

    sget-object p2, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->TOO_MANY_REDIRECTS:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    const-string v0, "too many redirects"

    invoke-direct {p1, p2, v0, v2}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;-><init>(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;Ljava/lang/String;Lo/zf7;)V

    throw p1
.end method

.method public final z(Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;)V
    .locals 5

    iget v0, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->g:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;

    sget-object v1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->HTTP_ERROR:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->p:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1, v2}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$StopDownloadException;-><init>(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;Ljava/lang/String;Lo/zf7;)V

    throw v0

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$c;->j:J

    new-instance p1, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$RetryDownloadException;

    const-string v0, "we get \'416\' response code, which need to restart."

    invoke-direct {p1, v0, v2}, Lcom/wandoujia/download/rpc/SingleThreadBlockDownloadTask$RetryDownloadException;-><init>(Ljava/lang/String;Lo/yf7;)V

    throw p1
.end method
