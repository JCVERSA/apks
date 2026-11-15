.class public Lz8d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgadplus/d/b;


# instance fields
.field public a:Lcom/mgmi/db/dao3/c;

.field public b:Lcom/mgmi/db/dao3/FileDownloadInfoDao;

.field public c:Ljava/io/RandomAccessFile;

.field public d:Lokhttp3/Call;

.field public e:Lv5d;

.field public f:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lcom/mgmi/db/dao3/FileDownloadInfoDao;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lz8d;->c:Ljava/io/RandomAccessFile;

    new-instance v0, Lv5d;

    invoke-direct {v0}, Lv5d;-><init>()V

    iput-object v0, p0, Lz8d;->e:Lv5d;

    iput-object p1, p0, Lz8d;->b:Lcom/mgmi/db/dao3/FileDownloadInfoDao;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Lcom/mgadplus/d/b$a;)Lcgd;
    .locals 0

    .line 1
    check-cast p1, Lg2d;

    invoke-virtual {p0, p1, p2}, Lz8d;->a(Lg2d;Lcom/mgadplus/d/b$a;)Lv5d;

    move-result-object p0

    return-object p0
.end method

.method public a(Lg2d;Lcom/mgadplus/d/b$a;)Lv5d;
    .locals 1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lg2d;->f()Lcom/mgmi/db/dao3/c;

    move-result-object v0

    iput-object v0, p0, Lz8d;->a:Lcom/mgmi/db/dao3/c;

    .line 3
    invoke-virtual {p1}, Lg2d;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p2, p1}, Lz8d;->b(Lcom/mgadplus/d/b$a;Z)Lv5d;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p2, p1}, Lz8d;->b(Lcom/mgadplus/d/b$a;Z)Lv5d;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public a()Z
    .locals 1

    .line 6
    iget-object v0, p0, Lz8d;->d:Lokhttp3/Call;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lokhttp3/Call;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iget-object p0, p0, Lz8d;->d:Lokhttp3/Call;

    invoke-interface {p0}, Lokhttp3/Call;->cancel()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final b(Lcom/mgadplus/d/b$a;Z)Lv5d;
    .locals 6

    if-eqz p2, :cond_0

    iget-object p2, p0, Lz8d;->a:Lcom/mgmi/db/dao3/c;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcom/mgmi/db/dao3/c;->b:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    :try_start_0
    iget-object p2, p0, Lz8d;->b:Lcom/mgmi/db/dao3/FileDownloadInfoDao;

    iget-object v0, p0, Lz8d;->a:Lcom/mgmi/db/dao3/c;

    invoke-virtual {p2, v0}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    :try_start_1
    iget-object p2, p0, Lz8d;->a:Lcom/mgmi/db/dao3/c;

    iget-wide v0, p2, Lcom/mgmi/db/dao3/c;->d:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p0, Lz8d;->f:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-ltz p2, :cond_1

    iget-object p2, p0, Lz8d;->f:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p2, p0, Lz8d;->a:Lcom/mgmi/db/dao3/c;

    iget-wide v4, p2, Lcom/mgmi/db/dao3/c;->e:J

    cmp-long p2, v0, v4

    if-lez p2, :cond_2

    goto :goto_1

    :catch_1
    move-exception p1

    goto/16 :goto_2

    :cond_1
    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p0, Lz8d;->f:Ljava/lang/Long;

    :cond_2
    iget-object p2, p0, Lz8d;->d:Lokhttp3/Call;

    if-eqz p2, :cond_3

    invoke-interface {p2}, Lokhttp3/Call;->isCanceled()Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lz8d;->d:Lokhttp3/Call;

    invoke-interface {p2}, Lokhttp3/Call;->cancel()V

    :cond_3
    iget-object p2, p0, Lz8d;->e:Lv5d;

    iget-object v0, p0, Lz8d;->a:Lcom/mgmi/db/dao3/c;

    iget-object v0, v0, Lcom/mgmi/db/dao3/c;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lv5d;->c(Ljava/lang/String;)Lv5d;

    iget-object p2, p0, Lz8d;->e:Lv5d;

    iget-object v0, p0, Lz8d;->a:Lcom/mgmi/db/dao3/c;

    iget-object v0, v0, Lcom/mgmi/db/dao3/c;->i:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lv5d;->g(Ljava/lang/String;)V

    iget-object p2, p0, Lz8d;->e:Lv5d;

    iget-object v0, p0, Lz8d;->a:Lcom/mgmi/db/dao3/c;

    iget-object v0, v0, Lcom/mgmi/db/dao3/c;->c:Ljava/lang/String;

    iput-object v0, p2, Lv5d;->e:Ljava/lang/String;

    new-instance p2, Lokhttp3/Request$Builder;

    invoke-direct {p2}, Lokhttp3/Request$Builder;-><init>()V

    const-string v0, "Connection"

    const-string v1, "close"

    invoke-virtual {p2, v0, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p2

    iget-object v0, p0, Lz8d;->a:Lcom/mgmi/db/dao3/c;

    iget-object v0, v0, Lcom/mgmi/db/dao3/c;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p2

    const-string v0, "RANGE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lz8d;->f:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p2

    sget-object v0, Lq3d;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->connectTimeoutMillis()I

    sget-object v0, Lq3d;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, p2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p2

    iput-object p2, p0, Lz8d;->d:Lokhttp3/Call;

    invoke-interface {p2}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lz8d;->c(Lokhttp3/Response;Lcom/mgadplus/d/b$a;)Lv5d;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :goto_2
    iget-object p2, p0, Lz8d;->e:Lv5d;

    invoke-virtual {p2, p1}, Lcgd;->a(Ljava/lang/Exception;)Lcgd;

    iget-object p1, p0, Lz8d;->e:Lv5d;

    const-string p2, "\u7f51\u7edc\u9519\u8bef"

    invoke-virtual {p1, p2}, Lcgd;->a(Ljava/lang/Object;)Lcgd;

    iget-object p0, p0, Lz8d;->e:Lv5d;

    return-object p0
.end method

.method public final c(Lokhttp3/Response;Lcom/mgadplus/d/b$a;)Lv5d;
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const-string v2, "\u4e0b\u8f7d\u5931\u8d25"

    const/4 v3, 0x3

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Response;->code()I

    move-result v5

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_1

    invoke-virtual/range {p1 .. p1}, Lokhttp3/Response;->code()I

    move-result v5

    const/16 v6, 0xce

    if-eq v5, v6, :cond_1

    iget-object v0, v1, Lz8d;->a:Lcom/mgmi/db/dao3/c;

    invoke-virtual {v1, v0, v3}, Lz8d;->d(Lcom/mgmi/db/dao3/c;I)V

    iget-object v0, v1, Lz8d;->e:Lv5d;

    invoke-virtual {v0, v2}, Lcgd;->a(Ljava/lang/Object;)Lcgd;

    iget-object v0, v1, Lz8d;->e:Lv5d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, v1, Lz8d;->c:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :cond_1
    const/16 v5, 0x1000

    :try_start_1
    new-array v5, v5, [B

    invoke-virtual/range {p1 .. p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v6

    iget-object v8, v1, Lz8d;->a:Lcom/mgmi/db/dao3/c;

    iget-object v9, v1, Lz8d;->f:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    add-long/2addr v6, v9

    iput-wide v6, v8, Lcom/mgmi/db/dao3/c;->e:J

    iget-object v6, v1, Lz8d;->a:Lcom/mgmi/db/dao3/c;

    iget-wide v6, v6, Lcom/mgmi/db/dao3/c;->e:J

    new-instance v8, Ljava/io/File;

    iget-object v9, v1, Lz8d;->a:Lcom/mgmi/db/dao3/c;

    iget-object v9, v9, Lcom/mgmi/db/dao3/c;->c:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const-wide/16 v10, 0x0

    if-nez v9, :cond_5

    :try_start_3
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v0, v1, Lz8d;->a:Lcom/mgmi/db/dao3/c;

    invoke-virtual {v1, v0, v3}, Lz8d;->d(Lcom/mgmi/db/dao3/c;I)V

    iget-object v0, v1, Lz8d;->e:Lv5d;

    const-string v5, "\u521b\u5efa\u6587\u4ef6\u5931\u8d25"

    invoke-virtual {v0, v5}, Lcgd;->a(Ljava/lang/Object;)Lcgd;

    iget-object v0, v1, Lz8d;->e:Lv5d;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_2
    iget-object v1, v1, Lz8d;->c:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    :cond_3
    return-object v0

    :cond_4
    :try_start_4
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iput-object v9, v1, Lz8d;->f:Ljava/lang/Long;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_5
    :try_start_5
    new-instance v9, Ljava/io/RandomAccessFile;

    const-string v12, "rw"

    invoke-direct {v9, v8, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v9, v1, Lz8d;->c:Ljava/io/RandomAccessFile;

    iget-object v8, v1, Lz8d;->f:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    move-wide v8, v10

    :goto_0
    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_a

    iget-object v13, v1, Lz8d;->c:Ljava/io/RandomAccessFile;

    const/4 v14, 0x0

    invoke-virtual {v13, v5, v14, v12}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-object v13, v1, Lz8d;->f:Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v15, v4

    int-to-long v3, v12

    add-long/2addr v13, v3

    :try_start_6
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v1, Lz8d;->f:Ljava/lang/Long;

    iget-object v4, v1, Lz8d;->a:Lcom/mgmi/db/dao3/c;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v3, v12, v6

    if-gez v3, :cond_6

    iget-object v3, v1, Lz8d;->f:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v4, v15

    goto/16 :goto_5

    :catch_1
    move-exception v0

    move-object v4, v15

    goto :goto_3

    :cond_6
    move-wide v12, v6

    :goto_1
    iput-wide v12, v4, Lcom/mgmi/db/dao3/c;->d:J

    iget-object v3, v1, Lz8d;->f:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    long-to-float v4, v6

    div-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v16, v12, v10

    const-wide/16 v18, 0x3e8

    cmp-long v4, v16, v18

    const/4 v14, 0x2

    if-ltz v4, :cond_8

    iget-object v4, v1, Lz8d;->a:Lcom/mgmi/db/dao3/c;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iput-object v10, v4, Lcom/mgmi/db/dao3/c;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    invoke-interface {v0, v3}, Lcom/mgadplus/d/b$a;->a(I)V

    :cond_7
    move-wide v10, v12

    :cond_8
    sub-long v3, v12, v8

    const-wide/16 v16, 0xbb8

    cmp-long v3, v3, v16

    if-ltz v3, :cond_9

    iget-object v3, v1, Lz8d;->a:Lcom/mgmi/db/dao3/c;

    invoke-virtual {v1, v3, v14}, Lz8d;->d(Lcom/mgmi/db/dao3/c;I)V

    move-wide v8, v12

    :cond_9
    move-object v4, v15

    const/4 v3, 0x3

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v15, v4

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v15, v4

    goto :goto_3

    :cond_a
    move-object v15, v4

    iget-object v0, v1, Lz8d;->a:Lcom/mgmi/db/dao3/c;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Lz8d;->d(Lcom/mgmi/db/dao3/c;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    iget-object v0, v1, Lz8d;->c:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_c

    :goto_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_4

    :goto_3
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v3, v1, Lz8d;->a:Lcom/mgmi/db/dao3/c;

    const/4 v5, 0x3

    invoke-virtual {v1, v3, v5}, Lz8d;->d(Lcom/mgmi/db/dao3/c;I)V

    iget-object v3, v1, Lz8d;->e:Lv5d;

    invoke-virtual {v3, v0}, Lcgd;->a(Ljava/lang/Exception;)Lcgd;

    iget-object v0, v1, Lz8d;->e:Lv5d;

    invoke-virtual {v0, v2}, Lcgd;->a(Ljava/lang/Object;)Lcgd;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_b
    iget-object v0, v1, Lz8d;->c:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_c

    goto :goto_2

    :cond_c
    :goto_4
    iget-object v0, v1, Lz8d;->e:Lv5d;

    return-object v0

    :goto_5
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_d
    iget-object v1, v1, Lz8d;->c:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    :cond_e
    throw v0
.end method

.method public final d(Lcom/mgmi/db/dao3/c;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Lcom/mgmi/db/dao3/c;->f:Ljava/lang/Integer;

    iget-object p0, p0, Lz8d;->b:Lcom/mgmi/db/dao3/FileDownloadInfoDao;

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;->update(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
