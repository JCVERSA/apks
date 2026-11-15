.class Lcom/mgtv/downloader/a/a$1;
.super Lcom/mgtv/downloader/net/ImgoHttpCallBack;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/downloader/a/a;->a(Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mgtv/downloader/net/ImgoHttpCallBack<",
        "Lcom/mgtv/downloader/net/entity/VideoDownloadUrlEntity$DataEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:J

.field final synthetic c:Lcom/mgtv/downloader/a/a;


# direct methods
.method public constructor <init>(Lcom/mgtv/downloader/a/a;ZJ)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    iput-boolean p2, p0, Lcom/mgtv/downloader/a/a$1;->a:Z

    iput-wide p3, p0, Lcom/mgtv/downloader/a/a$1;->b:J

    invoke-direct {p0}, Lcom/mgtv/downloader/net/ImgoHttpCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mgtv/downloader/net/entity/VideoDownloadUrlEntity$DataEntity;)V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Lcom/mgtv/downloader/net/entity/VideoDownloadUrlEntity$DataEntity;IILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 18
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v9, p4

    .line 4
    const-string v4, ", info: "

    const/4 v14, 0x5

    const/4 v15, -0x1

    const-string v5, "taskID: "

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v6, v0, Lcom/mgtv/downloader/net/entity/VideoDownloadUrlEntity$DataEntity;->user:Lcom/mgtv/downloader/net/entity/VideoDownloadUrlEntity$User;

    if-eqz v6, :cond_1

    iget v6, v6, Lcom/mgtv/downloader/net/entity/VideoDownloadUrlEntity$User;->tstatus:I

    if-nez v6, :cond_1

    .line 5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    invoke-static {v7}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", resultData user failed, resultData == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/mgtv/downloader/net/entity/VideoDownloadUrlEntity$DataEntity;->user:Lcom/mgtv/downloader/net/entity/VideoDownloadUrlEntity$User;

    invoke-virtual {v0}, Lcom/mgtv/downloader/net/entity/VideoDownloadUrlEntity$User;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 6
    iget-object v0, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    invoke-static {v0}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;)Lcom/mgtv/downloader/a/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    iget-boolean v0, v1, Lcom/mgtv/downloader/a/a$1;->a:Z

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    iget-object v0, v0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mgtv/downloader/net/entity/a;->a(Ljava/lang/Integer;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    .line 9
    :cond_0
    :goto_0
    iget-object v0, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    invoke-static {v0}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;)Lcom/mgtv/downloader/a/b;

    move-result-object v0

    iget-object v2, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    invoke-static {v2}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v2

    iget-object v3, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    iget-object v3, v3, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    const-string v4, "10"

    const/16 v5, 0xa

    invoke-interface {v0, v2, v3, v5, v4}, Lcom/mgtv/downloader/a/b;->a(ILcom/mgtv/downloader/net/entity/a;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :goto_1
    iget-object v0, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    invoke-static {v0, v15}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;I)I

    return-void

    .line 11
    :cond_1
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/mgtv/task/http/c;->e()Lcom/mgtv/task/http/HttpTraceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/task/http/HttpTraceObject;->getFinalUrl()Ljava/lang/String;

    move-result-object v6

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/mgtv/task/http/c;->e()Lcom/mgtv/task/http/HttpTraceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/task/http/HttpTraceObject;->getResponseHeader()Lokhttp3/Headers;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v12, ""

    if-nez v0, :cond_2

    move-object v0, v12

    goto :goto_2

    :cond_2
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/mgtv/task/http/c;->e()Lcom/mgtv/task/http/HttpTraceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/task/http/HttpTraceObject;->getResponseHeader()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Headers;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/mgtv/task/http/c;->e()Lcom/mgtv/task/http/HttpTraceObject;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mgtv/task/http/HttpTraceObject;->getResponse()Ljava/lang/String;

    move-result-object v7

    .line 14
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    invoke-static {v10}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", first layer failed responseHeader: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", response: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    invoke-static {v7}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", first layer failed code: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", httpStatus: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    invoke-static {v7}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", first layer failed url: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/mgtv/downloader/net/ImgoHttpCallBack;->b()Lcom/mgtv/downloader/net/ImgoHttpCallBack$ErrorType;

    move-result-object v0

    sget-object v7, Lcom/mgtv/downloader/net/ImgoHttpCallBack$ErrorType;->BUSINESS_ERROR:Lcom/mgtv/downloader/net/ImgoHttpCallBack$ErrorType;

    if-ne v0, v7, :cond_3

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    invoke-static {v2}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", errorType: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/mgtv/downloader/net/ImgoHttpCallBack;->b()Lcom/mgtv/downloader/net/ImgoHttpCallBack$ErrorType;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", code: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 19
    iget-object v4, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    const-string v7, "105000"

    const-string v8, ""

    iget-wide v10, v1, Lcom/mgtv/downloader/a/a$1;->b:J

    const/4 v5, 0x0

    const/4 v0, 0x1

    const/16 v2, 0xc8

    move-object/from16 v9, p4

    move-wide/from16 v16, v10

    move v10, v0

    move v11, v2

    move-object v0, v12

    move-wide/from16 v12, v16

    invoke-static/range {v4 .. v13}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 20
    iget-object v2, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    iget-object v2, v2, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mgtv/downloader/net/entity/a;->a(Ljava/lang/Integer;)V

    .line 21
    iget-object v2, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    invoke-static {v2}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;)Lcom/mgtv/downloader/a/b;

    move-result-object v2

    iget-object v4, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    invoke-static {v4}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v4

    iget-object v5, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    iget-object v5, v5, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x14

    invoke-interface {v2, v4, v5, v3, v0}, Lcom/mgtv/downloader/a/b;->a(ILcom/mgtv/downloader/net/entity/a;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 22
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "101"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v0, -0x2

    const/4 v4, -0x5

    if-ne v2, v0, :cond_4

    .line 23
    const-string v0, "103000"

    :goto_3
    move v10, v2

    goto/16 :goto_8

    :cond_4
    const/16 v0, 0xc8

    if-ne v2, v0, :cond_5

    move-object/from16 v7, p5

    .line 24
    instance-of v8, v7, Lcom/mgtv/task/http/HttpFormatException;

    if-eqz v8, :cond_7

    .line 25
    const-string v3, "102000"

    .line 26
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    invoke-static {v5}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", http status ok, e: "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    move v10, v0

    :goto_4
    move-object v0, v3

    goto :goto_8

    :cond_5
    if-ne v2, v15, :cond_6

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "11."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_6
    if-ne v2, v4, :cond_7

    .line 28
    iget-boolean v0, v1, Lcom/mgtv/downloader/a/a$1;->a:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_7

    const-wide/16 v7, 0x7d0

    const/4 v5, 0x1

    .line 29
    :try_start_3
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 30
    :try_start_4
    iget-object v0, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    :goto_5
    invoke-virtual {v0, v5}, Lcom/mgtv/downloader/a/a;->a(Z)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v7, v0

    .line 31
    :try_start_5
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 32
    :try_start_6
    iget-object v0, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    goto :goto_5

    :goto_6
    iget-object v2, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    invoke-virtual {v2, v5}, Lcom/mgtv/downloader/a/a;->a(Z)I

    .line 33
    throw v0

    :cond_7
    :goto_7
    move v10, v2

    goto :goto_4

    .line 34
    :goto_8
    iget-boolean v3, v1, Lcom/mgtv/downloader/a/a$1;->a:Z

    if-eqz v3, :cond_8

    if-eq v2, v4, :cond_8

    .line 35
    iget-object v2, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    iget-wide v11, v1, Lcom/mgtv/downloader/a/a$1;->b:J

    const/4 v3, -0x1

    const/4 v8, 0x1

    move-object v4, v6

    move-object v5, v0

    move-object v6, v0

    move-object/from16 v7, p4

    move v9, v10

    move-wide v10, v11

    invoke-static/range {v2 .. v11}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 36
    iget-object v0, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/mgtv/downloader/a/a;->b(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 37
    :cond_8
    :goto_9
    iget-object v0, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    invoke-static {v0, v15}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;I)I

    goto :goto_b

    .line 38
    :goto_a
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_9

    :goto_b
    return-void

    :catchall_2
    move-exception v0

    .line 39
    iget-object v1, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    invoke-static {v1, v15}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;I)I

    .line 40
    throw v0
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/mgtv/downloader/net/entity/VideoDownloadUrlEntity$DataEntity;

    invoke-virtual {p0, p1}, Lcom/mgtv/downloader/a/a$1;->b(Lcom/mgtv/downloader/net/entity/VideoDownloadUrlEntity$DataEntity;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;IILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    check-cast p1, Lcom/mgtv/downloader/net/entity/VideoDownloadUrlEntity$DataEntity;

    invoke-virtual/range {p0 .. p5}, Lcom/mgtv/downloader/a/a$1;->a(Lcom/mgtv/downloader/net/entity/VideoDownloadUrlEntity$DataEntity;IILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public b(Lcom/mgtv/downloader/net/entity/VideoDownloadUrlEntity$DataEntity;)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/mgtv/task/http/c;->e()Lcom/mgtv/task/http/HttpTraceObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mgtv/task/http/HttpTraceObject;->getFinalUrl()Ljava/lang/String;

    move-result-object v2

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "taskID: "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    invoke-static {v4}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", first layer response success "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 4
    const-string v14, ", first layer request success\uff0csecond layer url: "

    const/4 v15, 0x5

    const/4 v11, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 5
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    invoke-static {v2}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", first layer response success, entity == null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    invoke-static {v2}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 7
    iget-boolean v0, v1, Lcom/mgtv/downloader/a/a$1;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    iget-object v0, v0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v0}, Lcom/mgtv/downloader/net/entity/a;->f()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v15, :cond_0

    .line 8
    iget-object v0, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    invoke-virtual {v0, v3}, Lcom/mgtv/downloader/a/a;->b(Ljava/lang/String;)V

    .line 9
    :cond_0
    iget-object v0, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    invoke-static {v0, v11}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;I)I

    return-void

    :catchall_0
    move-exception v0

    move v4, v11

    move-object v2, v14

    goto/16 :goto_b

    :catch_0
    move-exception v0

    move v4, v11

    move-object v2, v14

    goto/16 :goto_9

    .line 10
    :cond_1
    :try_start_1
    iget-object v4, v0, Lcom/mgtv/downloader/net/entity/VideoDownloadUrlEntity$DataEntity;->user:Lcom/mgtv/downloader/net/entity/VideoDownloadUrlEntity$User;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v12, "10"

    if-eqz v4, :cond_4

    :try_start_2
    iget v4, v4, Lcom/mgtv/downloader/net/entity/VideoDownloadUrlEntity$User;->tstatus:I

    if-nez v4, :cond_4

    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    invoke-static {v5}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", entity user failed, entity == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/mgtv/downloader/net/entity/VideoDownloadUrlEntity$DataEntity;->user:Lcom/mgtv/downloader/net/entity/VideoDownloadUrlEntity$User;

    invoke-virtual {v5}, Lcom/mgtv/downloader/net/entity/VideoDownloadUrlEntity$User;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 12
    iget-object v4, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    invoke-static {v4}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;)Lcom/mgtv/downloader/a/b;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 13
    iget-boolean v0, v1, Lcom/mgtv/downloader/a/a$1;->a:Z

    if-eqz v0, :cond_2

    .line 14
    iget-object v0, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    iget-object v0, v0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mgtv/downloader/net/entity/a;->a(Ljava/lang/Integer;)V

    .line 15
    :cond_2
    iget-object v0, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    invoke-static {v0}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;)Lcom/mgtv/downloader/a/b;

    move-result-object v0

    iget-object v2, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    invoke-static {v2}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v2

    iget-object v4, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    iget-object v4, v4, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    const/16 v5, 0xa

    invoke-interface {v0, v2, v4, v5, v12}, Lcom/mgtv/downloader/a/b;->a(ILcom/mgtv/downloader/net/entity/a;ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    invoke-static {v2}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 17
    iget-boolean v0, v1, Lcom/mgtv/downloader/a/a$1;->a:Z

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    iget-object v0, v0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v0}, Lcom/mgtv/downloader/net/entity/a;->f()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v15, :cond_3

    .line 18
    iget-object v0, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    invoke-virtual {v0, v3}, Lcom/mgtv/downloader/a/a;->b(Ljava/lang/String;)V

    .line 19
    :cond_3
    iget-object v0, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    invoke-static {v0, v11}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;I)I

    return-void

    .line 20
    :cond_4
    :try_start_3
    iget-object v4, v0, Lcom/mgtv/downloader/net/entity/VideoDownloadUrlEntity$DataEntity;->name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 21
    iget-object v4, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    iget-object v4, v4, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    iget-object v5, v0, Lcom/mgtv/downloader/net/entity/VideoDownloadUrlEntity$DataEntity;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/mgtv/downloader/net/entity/a;->b(Ljava/lang/String;)V

    .line 22
    :cond_5
    iget-object v4, v0, Lcom/mgtv/downloader/net/entity/VideoDownloadUrlEntity$DataEntity;->image:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 23
    iget-object v4, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    iget-object v4, v4, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    iget-object v5, v0, Lcom/mgtv/downloader/net/entity/VideoDownloadUrlEntity$DataEntity;->image:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/mgtv/downloader/net/entity/a;->a(Ljava/lang/String;)V

    .line 24
    :cond_6
    iget-object v4, v0, Lcom/mgtv/downloader/net/entity/VideoDownloadUrlEntity$DataEntity;->clipId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 25
    iget-object v4, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    iget-object v4, v4, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    iget-object v5, v0, Lcom/mgtv/downloader/net/entity/VideoDownloadUrlEntity$DataEntity;->clipId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/mgtv/downloader/net/entity/a;->g(Ljava/lang/String;)V

    .line 26
    :cond_7
    iget-object v10, v0, Lcom/mgtv/downloader/net/entity/VideoDownloadUrlEntity$DataEntity;->downloadUrl:Lcom/mgtv/downloader/net/entity/VideoDownloadUrlEntity$DownloadUrlEntity;

    .line 27
    iget-object v4, v0, Lcom/mgtv/downloader/net/entity/VideoDownloadUrlEntity$DataEntity;->videoId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 28
    iget-object v4, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    iget-object v4, v4, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    iget-object v0, v0, Lcom/mgtv/downloader/net/entity/VideoDownloadUrlEntity$DataEntity;->videoId:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/mgtv/downloader/net/entity/a;->h(Ljava/lang/String;)V

    :cond_8
    if-eqz v10, :cond_9

    .line 29
    iget-object v0, v10, Lcom/mgtv/downloader/net/entity/VideoDownloadUrlEntity$DownloadUrlEntity;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    move v4, v11

    move-object v2, v14

    goto/16 :goto_8

    .line 30
    :cond_a
    iget-object v9, v10, Lcom/mgtv/downloader/net/entity/VideoDownloadUrlEntity$DownloadUrlEntity;->url:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 31
    :try_start_4
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 32
    const-string v3, "gsid"

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 33
    iget-object v3, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    const-string v6, ""

    const-string v8, ""

    iget-wide v4, v1, Lcom/mgtv/downloader/a/a$1;->b:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v0, 0x0

    const/16 v16, 0x1

    const/16 v17, 0xc8

    move-wide/from16 v18, v4

    move v4, v0

    move-object v5, v2

    move-object/from16 v20, v9

    move/from16 v9, v16

    move-object v15, v10

    move/from16 v10, v17

    move-object/from16 v17, v14

    move-object v14, v12

    move-wide/from16 v11, v18

    :try_start_5
    invoke-static/range {v3 .. v12}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object/from16 v20, v9

    move-object v15, v10

    move-object/from16 v17, v14

    move-object v14, v12

    .line 34
    :goto_0
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    :goto_1
    iget-object v0, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    iget-object v0, v0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    if-eqz v0, :cond_13

    .line 36
    iget-object v0, v0, Lcom/mgtv/downloader/net/entity/a;->A:Ljava/lang/String;

    .line 37
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v11, 0x1

    if-nez v0, :cond_b

    iget-object v0, v15, Lcom/mgtv/downloader/net/entity/VideoDownloadUrlEntity$DownloadUrlEntity;->fileSize:Ljava/lang/String;

    .line 38
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    iget-object v0, v0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    iget-object v0, v0, Lcom/mgtv/downloader/net/entity/a;->A:Ljava/lang/String;

    iget-object v3, v15, Lcom/mgtv/downloader/net/entity/VideoDownloadUrlEntity$DownloadUrlEntity;->fileSize:Ljava/lang/String;

    .line 39
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v11

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object/from16 v2, v17

    move-object/from16 v3, v20

    const/4 v4, 0x0

    goto/16 :goto_b

    :catch_1
    move-exception v0

    move-object/from16 v2, v17

    move-object/from16 v3, v20

    const/4 v4, 0x0

    goto/16 :goto_9

    :cond_b
    const/4 v0, 0x0

    .line 40
    :goto_2
    iget-object v3, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    iget-object v3, v3, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    iget-object v3, v3, Lcom/mgtv/downloader/net/entity/a;->C:Ljava/lang/String;

    .line 41
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, v15, Lcom/mgtv/downloader/net/entity/VideoDownloadUrlEntity$DownloadUrlEntity;->md5:Ljava/lang/String;

    .line 42
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    iget-object v3, v3, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    iget-object v3, v3, Lcom/mgtv/downloader/net/entity/a;->C:Ljava/lang/String;

    iget-object v4, v15, Lcom/mgtv/downloader/net/entity/VideoDownloadUrlEntity$DownloadUrlEntity;->md5:Ljava/lang/String;

    .line 43
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_3

    :cond_c
    const/4 v11, 0x0

    .line 44
    :goto_3
    iget-object v3, v15, Lcom/mgtv/downloader/net/entity/VideoDownloadUrlEntity$DownloadUrlEntity;->fileSize:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 45
    iget-object v3, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    iget-object v3, v3, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    iget-object v4, v15, Lcom/mgtv/downloader/net/entity/VideoDownloadUrlEntity$DownloadUrlEntity;->fileSize:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mgtv/downloader/net/entity/a;->i(Ljava/lang/String;)V

    .line 46
    iget-object v3, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    iget-object v3, v3, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    iget-object v4, v15, Lcom/mgtv/downloader/net/entity/VideoDownloadUrlEntity$DownloadUrlEntity;->fileSize:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mgtv/downloader/net/entity/a;->b(Ljava/lang/Long;)V

    move-object/from16 v18, v14

    move v14, v11

    goto :goto_4

    .line 47
    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    invoke-static {v4}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", first file size is null "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 48
    iget-object v3, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    const-string v6, "105003"

    const-string v7, ""

    invoke-virtual {v15}, Lcom/mgtv/downloader/net/entity/VideoDownloadUrlEntity$DownloadUrlEntity;->toString()Ljava/lang/String;

    move-result-object v8

    iget-wide v9, v1, Lcom/mgtv/downloader/a/a$1;->b:J

    const/4 v4, 0x0

    const/4 v12, 0x0

    const/16 v18, 0xc8

    move-object v5, v2

    move-wide/from16 v21, v9

    move v9, v12

    move/from16 v10, v18

    move-object/from16 v18, v14

    move v14, v11

    move-wide/from16 v11, v21

    invoke-static/range {v3 .. v12}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 49
    :goto_4
    iget-object v3, v15, Lcom/mgtv/downloader/net/entity/VideoDownloadUrlEntity$DownloadUrlEntity;->md5:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 50
    iget-object v3, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    iget-object v3, v3, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    iget-object v4, v15, Lcom/mgtv/downloader/net/entity/VideoDownloadUrlEntity$DownloadUrlEntity;->md5:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mgtv/downloader/net/entity/a;->j(Ljava/lang/String;)V

    goto :goto_5

    .line 51
    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    invoke-static {v4}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", first md5 is null "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 52
    iget-object v3, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    const-string v6, "105005"

    const-string v7, ""

    invoke-virtual {v15}, Lcom/mgtv/downloader/net/entity/VideoDownloadUrlEntity$DownloadUrlEntity;->toString()Ljava/lang/String;

    move-result-object v8

    iget-wide v11, v1, Lcom/mgtv/downloader/a/a$1;->b:J

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xc8

    move-object v5, v2

    invoke-static/range {v3 .. v12}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V

    :goto_5
    if-nez v0, :cond_f

    if-eqz v14, :cond_11

    .line 53
    :cond_f
    iget-object v3, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    iget-object v3, v3, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v3}, Lcom/mgtv/downloader/net/entity/a;->n()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_10

    .line 54
    iget-object v3, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    iget-object v3, v3, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mgtv/downloader/net/entity/a;->a(Ljava/lang/Long;)V

    .line 55
    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    invoke-static {v4}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", need reDownload, fileSizeChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", fileMD5Changed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    :cond_11
    if-eqz v0, :cond_12

    .line 56
    iget-object v3, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    const-string v6, "105002"

    const-string v7, ""

    const-string v8, ""

    iget-wide v11, v1, Lcom/mgtv/downloader/a/a$1;->b:J

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xc8

    move-object v5, v2

    invoke-static/range {v3 .. v12}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V

    :cond_12
    if-eqz v14, :cond_14

    .line 57
    iget-object v3, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    const-string v6, "105004"

    const-string v7, ""

    const-string v8, ""

    iget-wide v11, v1, Lcom/mgtv/downloader/a/a$1;->b:J

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xc8

    move-object v5, v2

    invoke-static/range {v3 .. v12}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V

    goto :goto_6

    :cond_13
    move-object/from16 v18, v14

    .line 58
    :cond_14
    :goto_6
    iget-object v0, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    invoke-static {v0}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;)Lcom/mgtv/downloader/a/b;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 59
    iget-object v0, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    invoke-static {v0}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/a;)Lcom/mgtv/downloader/a/b;

    move-result-object v0

    iget-object v2, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    invoke-static {v2}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v2

    iget-object v3, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    iget-object v3, v3, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    move-object/from16 v4, v18

    invoke-interface {v0, v2, v3, v4}, Lcom/mgtv/downloader/a/b;->d(ILcom/mgtv/downloader/net/entity/a;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 60
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    invoke-static {v2}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v2, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 61
    iget-boolean v0, v1, Lcom/mgtv/downloader/a/a$1;->a:Z

    if-eqz v0, :cond_16

    iget-object v0, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    iget-object v0, v0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v0}, Lcom/mgtv/downloader/net/entity/a;->f()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_16

    .line 62
    iget-object v0, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    move-object/from16 v3, v20

    invoke-virtual {v0, v3}, Lcom/mgtv/downloader/a/a;->b(Ljava/lang/String;)V

    .line 63
    :cond_16
    iget-object v0, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    const/4 v4, 0x0

    :goto_7
    invoke-static {v0, v4}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;I)I

    goto/16 :goto_a

    .line 64
    :goto_8
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    invoke-static {v5}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", first layer request url is null, return"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    invoke-static {v5}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 66
    iget-boolean v0, v1, Lcom/mgtv/downloader/a/a$1;->a:Z

    if-eqz v0, :cond_17

    iget-object v0, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    iget-object v0, v0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v0}, Lcom/mgtv/downloader/net/entity/a;->f()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_17

    .line 67
    iget-object v0, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    invoke-virtual {v0, v3}, Lcom/mgtv/downloader/a/a;->b(Ljava/lang/String;)V

    .line 68
    :cond_17
    iget-object v0, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    invoke-static {v0, v4}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;I)I

    return-void

    :catchall_4
    move-exception v0

    goto :goto_b

    :catch_2
    move-exception v0

    .line 69
    :goto_9
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 70
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    invoke-static {v6}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", first layer failed try catch: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    invoke-static {v5}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 72
    iget-boolean v0, v1, Lcom/mgtv/downloader/a/a$1;->a:Z

    if-eqz v0, :cond_18

    iget-object v0, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    iget-object v0, v0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v0}, Lcom/mgtv/downloader/net/entity/a;->f()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_18

    .line 73
    iget-object v0, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    invoke-virtual {v0, v3}, Lcom/mgtv/downloader/a/a;->b(Ljava/lang/String;)V

    .line 74
    :cond_18
    iget-object v0, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    goto/16 :goto_7

    :goto_a
    return-void

    .line 75
    :goto_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    invoke-static {v6}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 76
    iget-boolean v2, v1, Lcom/mgtv/downloader/a/a$1;->a:Z

    if-eqz v2, :cond_19

    iget-object v2, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    iget-object v2, v2, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v2}, Lcom/mgtv/downloader/net/entity/a;->f()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v5, 0x5

    if-eq v2, v5, :cond_19

    .line 77
    iget-object v2, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    invoke-virtual {v2, v3}, Lcom/mgtv/downloader/a/a;->b(Ljava/lang/String;)V

    .line 78
    :cond_19
    iget-object v1, v1, Lcom/mgtv/downloader/a/a$1;->c:Lcom/mgtv/downloader/a/a;

    invoke-static {v1, v4}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/a;I)I

    .line 79
    throw v0
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/mgtv/downloader/net/entity/VideoDownloadUrlEntity$DataEntity;

    invoke-virtual {p0, p1}, Lcom/mgtv/downloader/a/a$1;->a(Lcom/mgtv/downloader/net/entity/VideoDownloadUrlEntity$DataEntity;)V

    return-void
.end method
