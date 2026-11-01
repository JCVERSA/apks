.class public final Lcom/wandoujia/download/rpc/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/wandoujia/download/rpc/IBlockDownloadTask;
.implements Lcom/wandoujia/download/rpc/l$c;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/wandoujia/download/rpc/g;

.field public final c:Ljava/util/concurrent/ExecutorService;

.field public d:Lo/cn3;

.field public e:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

.field public f:J

.field public g:Lcom/wandoujia/download/rpc/l;

.field public h:Lcom/mobiuspace/youtube/ump/UmpException;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:J

.field public l:J

.field public volatile m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/wandoujia/download/rpc/g;Ljava/util/concurrent/ExecutorService;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p3, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wandoujia/download/rpc/n;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/wandoujia/download/rpc/n;->b:Lcom/wandoujia/download/rpc/g;

    iput-object p3, p0, Lcom/wandoujia/download/rpc/n;->c:Ljava/util/concurrent/ExecutorService;

    sget-object p1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->PENDING:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    iput-object p1, p0, Lcom/wandoujia/download/rpc/n;->e:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    iget-object p1, p2, Lcom/wandoujia/download/rpc/g;->c:Ljava/lang/String;

    const-string p3, "filePath"

    invoke-static {p1, p3}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/wandoujia/download/rpc/n;->i:Ljava/lang/String;

    iget-object v0, p2, Lcom/wandoujia/download/rpc/g;->c:Ljava/lang/String;

    invoke-static {v0, p3}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "video"

    const-string v2, "audio"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lo/cu7;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wandoujia/download/rpc/n;->j:Ljava/lang/String;

    iget-wide p1, p2, Lcom/wandoujia/download/rpc/g;->h:J

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/wandoujia/download/rpc/n;->k:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/wandoujia/download/rpc/n;->m:Z

    return-void
.end method

.method private final i(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;)V
    .locals 7

    iput-object p1, p0, Lcom/wandoujia/download/rpc/n;->e:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    iget-object v0, p0, Lcom/wandoujia/download/rpc/n;->d:Lo/cn3;

    const/4 v1, 0x0

    const-string v2, "innerBlockDownloadListener"

    if-nez v0, :cond_0

    invoke-static {v2}, Lo/or3;->w(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v3, p0, Lcom/wandoujia/download/rpc/n;->b:Lcom/wandoujia/download/rpc/g;

    iget v3, v3, Lcom/wandoujia/download/rpc/g;->f:I

    invoke-interface {v0, p0, v3, p1}, Lo/cn3;->a(Lcom/wandoujia/download/rpc/IBlockDownloadTask;ILcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object p1, p0, Lcom/wandoujia/download/rpc/n;->d:Lo/cn3;

    if-nez p1, :cond_1

    invoke-static {v2}, Lo/or3;->w(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    iget-object p1, p0, Lcom/wandoujia/download/rpc/n;->b:Lcom/wandoujia/download/rpc/g;

    iget p1, p1, Lcom/wandoujia/download/rpc/g;->f:I

    iget-wide v5, p0, Lcom/wandoujia/download/rpc/n;->f:J

    sub-long v5, v3, v5

    invoke-interface {v1, p1, v5, v6}, Lo/cn3;->b(IJ)V

    iput-wide v3, p0, Lcom/wandoujia/download/rpc/n;->f:J

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 6

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/wandoujia/download/rpc/n;->m:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/wandoujia/download/rpc/n;->j:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, ".download"

    const-string v2, ""

    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lo/cu7;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lo/yj2;->W(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    sget-object p1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->SUCCESS:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    invoke-direct {p0, p1}, Lcom/wandoujia/download/rpc/n;->i(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/wandoujia/download/rpc/n;->g()V

    new-instance p1, Lcom/mobiuspace/youtube/ump/UmpException;

    const/16 v0, -0x9

    const-string v1, "verify file size fail"

    invoke-direct {p1, v0, v1}, Lcom/mobiuspace/youtube/ump/UmpException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/wandoujia/download/rpc/n;->b(Lcom/mobiuspace/youtube/ump/UmpException;)V

    :goto_0
    return-void
.end method

.method public b(Lcom/mobiuspace/youtube/ump/UmpException;)V
    .locals 3

    iput-object p1, p0, Lcom/wandoujia/download/rpc/n;->h:Lcom/mobiuspace/youtube/ump/UmpException;

    invoke-virtual {p0, p1}, Lcom/wandoujia/download/rpc/n;->h(Lcom/mobiuspace/youtube/ump/UmpException;)Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wandoujia/download/rpc/n;->i(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/wandoujia/download/rpc/n;->b:Lcom/wandoujia/download/rpc/g;

    invoke-virtual {p1}, Lcom/mobiuspace/youtube/ump/UmpException;->getErrorCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/download/rpc/n;->g:Lcom/wandoujia/download/rpc/l;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/wandoujia/download/rpc/l;->l()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, p1, v1, v2}, Lo/kb0;->b(Lcom/wandoujia/download/rpc/g;Ljava/lang/Throwable;Ljava/lang/Integer;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public c()I
    .locals 2

    iget-object v0, p0, Lcom/wandoujia/download/rpc/n;->h:Lcom/mobiuspace/youtube/ump/UmpException;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mobiuspace/youtube/ump/UmpException;->getErrorCode()I

    move-result v0

    const/16 v1, -0x64

    if-ne v0, v1, :cond_0

    const/16 v0, 0x258

    goto :goto_0

    :cond_0
    const/16 v0, 0x25a

    :goto_0
    return v0
.end method

.method public d(Lcom/wandoujia/download/rpc/g;Lo/cn3;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "request"

    invoke-static {v1, v3}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "blockListener"

    invoke-static {v2, v3}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/wandoujia/download/rpc/n;->d:Lo/cn3;

    iget-object v2, v1, Lcom/wandoujia/download/rpc/g;->t:Ljava/lang/String;

    invoke-static {v2}, Lo/ag8;->a(Ljava/lang/String;)Lo/xf8;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lo/xf8;->c()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lo/xf8;->a()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v3

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lo/xf8;->b()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_2
    move-object v6, v3

    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\n      *********************** umpParams **********************\n      playbackConfig: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n      itag: "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n      lastModified: "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n    "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/text/StringsKt__IndentKt;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lo/bg8;->h(Ljava/lang/String;)V

    if-nez v2, :cond_3

    new-instance v1, Lcom/mobiuspace/youtube/ump/UmpException;

    const/4 v2, -0x8

    const-string v3, "umpParams is invalid"

    invoke-direct {v1, v2, v3}, Lcom/mobiuspace/youtube/ump/UmpException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/download/rpc/n;->b(Lcom/mobiuspace/youtube/ump/UmpException;)V

    return-void

    :cond_3
    invoke-virtual {v2}, Lo/xf8;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->queryCodec(Ljava/lang/String;)Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;

    move-result-object v4

    if-nez v4, :cond_4

    new-instance v1, Lcom/mobiuspace/youtube/ump/UmpException;

    invoke-virtual {v2}, Lo/xf8;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "codec is unSupported "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, -0x64

    invoke-direct {v1, v3, v2}, Lcom/mobiuspace/youtube/ump/UmpException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/download/rpc/n;->b(Lcom/mobiuspace/youtube/ump/UmpException;)V

    return-void

    :cond_4
    sget-object v5, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->PENDING:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    invoke-direct {v0, v5}, Lcom/wandoujia/download/rpc/n;->i(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;)V

    new-instance v5, Lcom/mobiuspace/youtube/ump/proto/FormatId$Builder;

    invoke-direct {v5}, Lcom/mobiuspace/youtube/ump/proto/FormatId$Builder;-><init>()V

    invoke-virtual {v2}, Lo/xf8;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lo/de5;->c(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mobiuspace/youtube/ump/proto/FormatId$Builder;->itag(Ljava/lang/Integer;)Lcom/mobiuspace/youtube/ump/proto/FormatId$Builder;

    move-result-object v5

    invoke-virtual {v2}, Lo/xf8;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lo/de5;->e(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mobiuspace/youtube/ump/proto/FormatId$Builder;->last_modified(Ljava/lang/Long;)Lcom/mobiuspace/youtube/ump/proto/FormatId$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mobiuspace/youtube/ump/proto/FormatId$Builder;->build()Lcom/mobiuspace/youtube/ump/proto/FormatId;

    move-result-object v5

    invoke-virtual {v4}, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->isAudio()Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v12, v3

    move-object v13, v5

    goto :goto_3

    :cond_5
    move-object v13, v3

    move-object v12, v5

    :goto_3
    if-eqz v12, :cond_6

    const/4 v3, 0x1

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    :goto_4
    iput-boolean v3, v0, Lcom/wandoujia/download/rpc/n;->m:Z

    new-instance v3, Lcom/wandoujia/download/rpc/l;

    iget-object v5, v1, Lcom/wandoujia/download/rpc/g;->b:Ljava/lang/String;

    invoke-static {v5}, Lo/bg8;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lcom/wandoujia/download/rpc/n;->i:Ljava/lang/String;

    iget-object v10, v0, Lcom/wandoujia/download/rpc/n;->j:Ljava/lang/String;

    invoke-virtual {v2}, Lo/xf8;->c()Ljava/lang/String;

    move-result-object v11

    iget-object v1, v1, Lcom/wandoujia/download/rpc/g;->b:Ljava/lang/String;

    invoke-static {v1}, Lo/bg8;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-wide v1, v0, Lcom/wandoujia/download/rpc/n;->l:J

    invoke-virtual {v4}, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->getUmpQuality()I

    move-result v17

    iget-object v4, v0, Lcom/wandoujia/download/rpc/n;->c:Ljava/util/concurrent/ExecutorService;

    move-object v7, v3

    move-wide v15, v1

    move-object/from16 v18, v4

    invoke-direct/range {v7 .. v18}, Lcom/wandoujia/download/rpc/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobiuspace/youtube/ump/proto/FormatId;Lcom/mobiuspace/youtube/ump/proto/FormatId;Ljava/lang/String;JILjava/util/concurrent/ExecutorService;)V

    invoke-virtual {v3, v0}, Lcom/wandoujia/download/rpc/l;->u(Lcom/wandoujia/download/rpc/l$c;)V

    invoke-virtual {v3}, Lcom/wandoujia/download/rpc/l;->v()V

    iput-object v3, v0, Lcom/wandoujia/download/rpc/n;->g:Lcom/wandoujia/download/rpc/l;

    return-void
.end method

.method public e(JJJJ)V
    .locals 13

    move-object v0, p0

    const-wide/16 v1, 0x0

    cmp-long v3, p3, v1

    if-lez v3, :cond_0

    move-wide/from16 v1, p3

    goto :goto_0

    :cond_0
    iget-wide v1, v0, Lcom/wandoujia/download/rpc/n;->k:J

    :goto_0
    iget-object v3, v0, Lcom/wandoujia/download/rpc/n;->d:Lo/cn3;

    if-nez v3, :cond_1

    const-string v3, "innerBlockDownloadListener"

    invoke-static {v3}, Lo/or3;->w(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_1
    move-object v4, v3

    iget-object v3, v0, Lcom/wandoujia/download/rpc/n;->b:Lcom/wandoujia/download/rpc/g;

    iget v5, v3, Lcom/wandoujia/download/rpc/g;->f:I

    long-to-int v9, v1

    new-instance v10, Lcom/wandoujia/mtdownload/c;

    move-wide/from16 v1, p5

    move-wide/from16 v6, p7

    invoke-direct {v10, v1, v2, v6, v7}, Lcom/wandoujia/mtdownload/c;-><init>(JJ)V

    const-wide/16 v11, 0x0

    const/4 v8, 0x0

    move-wide v6, p1

    invoke-interface/range {v4 .. v12}, Lo/cn3;->c(IJ[BILcom/wandoujia/mtdownload/c;J)V

    return-void
.end method

.method public f(Ljava/util/Map;)V
    .locals 0

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lcom/wandoujia/download/rpc/n;->j:Ljava/lang/String;

    invoke-static {v0}, Lo/yj2;->s(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/wandoujia/download/rpc/n;->i:Ljava/lang/String;

    invoke-static {v0}, Lo/yj2;->s(Ljava/lang/String;)V

    return-void
.end method

.method public getStatus()Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;
    .locals 1

    iget-object v0, p0, Lcom/wandoujia/download/rpc/n;->e:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    return-object v0
.end method

.method public final h(Lcom/mobiuspace/youtube/ump/UmpException;)Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->UNKNOWN_ERROR:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/mobiuspace/youtube/ump/UmpException;->getErrorCode()I

    move-result p1

    const/16 v0, -0x9

    if-eq p1, v0, :cond_3

    const/4 v0, -0x8

    if-eq p1, v0, :cond_2

    const/4 v0, -0x5

    if-eq p1, v0, :cond_2

    const/4 v0, -0x4

    if-eq p1, v0, :cond_1

    const/4 v0, -0x3

    if-eq p1, v0, :cond_1

    const/4 v0, -0x2

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    sget-object p1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->UNKNOWN_ERROR:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->HTTP_ERROR:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->UMP_ERROR:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->FILE_ERROR:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    :goto_0
    return-object p1
.end method

.method public final j(Lcom/wandoujia/mtdownload/c;)V
    .locals 2

    const-string v0, "downloadedSection"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/wandoujia/mtdownload/c;->j()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wandoujia/download/rpc/n;->l:J

    return-void
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, Lcom/wandoujia/download/rpc/n;->b:Lcom/wandoujia/download/rpc/g;

    iget v0, v0, Lcom/wandoujia/download/rpc/g;->f:I

    return v0
.end method

.method public onStart()V
    .locals 6

    sget-object v0, Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;->RUNNING:Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;

    invoke-direct {p0, v0}, Lcom/wandoujia/download/rpc/n;->i(Lcom/wandoujia/download/rpc/IBlockDownloadTask$BlockStatus;)V

    iget-object v0, p0, Lcom/wandoujia/download/rpc/n;->d:Lo/cn3;

    if-nez v0, :cond_0

    const-string v0, "innerBlockDownloadListener"

    invoke-static {v0}, Lo/or3;->w(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/wandoujia/download/rpc/n;->b:Lcom/wandoujia/download/rpc/g;

    iget v1, v1, Lcom/wandoujia/download/rpc/g;->f:I

    iget-wide v2, p0, Lcom/wandoujia/download/rpc/n;->k:J

    const/4 v4, 0x2

    int-to-long v4, v4

    mul-long v2, v2, v4

    invoke-interface {v0, v1, v2, v3}, Lo/cn3;->g(IJ)V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/wandoujia/download/rpc/n;->g:Lcom/wandoujia/download/rpc/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/wandoujia/download/rpc/l;->w()V

    :cond_0
    return-void
.end method
