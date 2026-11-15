.class public Lt03;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt03$a;
    }
.end annotation


# instance fields
.field public a:Lt03$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/ResponseBody;Ljava/lang/String;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "cannot close outputStream"

    const-string v3, "cannot close inputStream"

    const-string v4, "DownloadManager"

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".jpg"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_9

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    :cond_0
    :try_start_0
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v5, "cannot create file"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v5, v0, Lt03;->a:Lt03$a;

    if-eqz v5, :cond_1

    invoke-interface {v5}, Lt03$a;->c()V

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v8

    const/16 v10, 0x800

    new-array v11, v10, [B

    const/4 v12, 0x0

    :try_start_1
    new-instance v13, Ljava/io/BufferedOutputStream;

    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v13, v14}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const-wide/16 v14, 0x0

    :goto_1
    const/4 v12, 0x0

    move-object/from16 v16, v7

    :try_start_2
    invoke-virtual {v5, v11, v12, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v7
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v10, -0x1

    if-eq v7, v10, :cond_3

    move-object v10, v2

    move-object/from16 v17, v3

    int-to-long v2, v7

    add-long/2addr v14, v2

    :try_start_3
    invoke-virtual {v13, v11, v12, v7}, Ljava/io/OutputStream;->write([BII)V

    iget-object v2, v0, Lt03;->a:Lt03$a;

    if-eqz v2, :cond_2

    const-wide/16 v18, 0x64

    mul-long v18, v18, v14

    move-object v3, v11

    div-long v11, v18, v8

    long-to-int v7, v11

    invoke-interface {v2, v7}, Lt03$a;->b(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v12, v13

    move-object/from16 v1, v17

    goto/16 :goto_a

    :catch_1
    move-object v12, v13

    move-object/from16 v1, v17

    goto :goto_6

    :cond_2
    move-object v3, v11

    :goto_2
    move-object v11, v3

    move-object v2, v10

    move-object/from16 v7, v16

    move-object/from16 v3, v17

    const/16 v10, 0x800

    goto :goto_1

    :cond_3
    move-object v10, v2

    move-object/from16 v17, v3

    :try_start_4
    iget-object v2, v0, Lt03;->a:Lt03$a;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_4

    :try_start_5
    invoke-interface {v2, v6, v1}, Lt03$a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_4
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    :catch_2
    move-object/from16 v1, v17

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    :try_start_7
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_9

    :catch_3
    invoke-static {v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object/from16 v1, v17

    :goto_4
    move-object v12, v13

    goto :goto_a

    :catch_4
    move-object/from16 v1, v17

    :goto_5
    move-object v12, v13

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v10, v2

    move-object v1, v3

    goto :goto_4

    :catch_5
    move-object v10, v2

    move-object v1, v3

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v10, v2

    move-object v1, v3

    goto :goto_a

    :catch_6
    move-object v10, v2

    move-object v1, v3

    move-object/from16 v16, v7

    :goto_6
    :try_start_8
    const-string v2, "download fail"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    goto :goto_7

    :catchall_4
    move-exception v0

    goto :goto_a

    :cond_5
    :goto_7
    iget-object v0, v0, Lt03;->a:Lt03$a;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lt03$a;->a()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :cond_6
    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_8

    :catch_7
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    if-eqz v12, :cond_7

    :try_start_a
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    :cond_7
    :goto_9
    return-void

    :goto_a
    :try_start_b
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_b

    :catch_8
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    if-eqz v12, :cond_8

    :try_start_c
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    goto :goto_c

    :catch_9
    invoke-static {v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_c
    throw v0

    :cond_9
    iget-object v0, v0, Lt03;->a:Lt03$a;

    if-eqz v0, :cond_a

    invoke-interface {v0, v6, v1}, Lt03$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".jpg"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lt03;->a:Lt03$a;

    if-eqz p0, :cond_0

    invoke-interface {p0, v0, p1}, Lt03$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public c(Lt03$a;)V
    .locals 0

    iput-object p1, p0, Lt03;->a:Lt03$a;

    return-void
.end method
