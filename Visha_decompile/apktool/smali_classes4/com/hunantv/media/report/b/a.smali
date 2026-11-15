.class public Lcom/hunantv/media/report/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/report/b/a$b;,
        Lcom/hunantv/media/report/b/a$a;
    }
.end annotation


# static fields
.field private static a:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static a(I)Lcom/hunantv/media/report/b/a$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/hunantv/media/report/b/a$b;

    invoke-direct {v0}, Lcom/hunantv/media/report/b/a$b;-><init>()V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hunantv/media/report/b/a$b;->a(Lcom/hunantv/media/report/b/a$b;Z)Z

    new-instance v1, Lcom/hunantv/media/report/b/a$b$a;

    invoke-direct {v1, p0}, Lcom/hunantv/media/report/b/a$b$a;-><init>(I)V

    invoke-static {v0, v1}, Lcom/hunantv/media/report/b/a$b;->a(Lcom/hunantv/media/report/b/a$b;Lcom/hunantv/media/report/b/a$b$a;)Lcom/hunantv/media/report/b/a$b$a;

    return-object v0
.end method

.method private static a(ILjava/lang/String;)Lcom/hunantv/media/report/b/a$b;
    .locals 2

    .line 2
    new-instance v0, Lcom/hunantv/media/report/b/a$b;

    invoke-direct {v0}, Lcom/hunantv/media/report/b/a$b;-><init>()V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hunantv/media/report/b/a$b;->a(Lcom/hunantv/media/report/b/a$b;Z)Z

    new-instance v1, Lcom/hunantv/media/report/b/a$b$a;

    invoke-direct {v1, p0, p1}, Lcom/hunantv/media/report/b/a$b$a;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/hunantv/media/report/b/a$b;->a(Lcom/hunantv/media/report/b/a$b;Lcom/hunantv/media/report/b/a$b$a;)Lcom/hunantv/media/report/b/a$b$a;

    return-object v0
.end method

.method private static a(I[BLjava/lang/String;)Lcom/hunantv/media/report/b/a$b;
    .locals 3

    .line 3
    new-instance v0, Lcom/hunantv/media/report/b/a$b;

    invoke-direct {v0}, Lcom/hunantv/media/report/b/a$b;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hunantv/media/report/b/a$b;->a(Lcom/hunantv/media/report/b/a$b;Z)Z

    new-instance v1, Lcom/hunantv/media/report/b/a$b$b;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, p0, v2, p2}, Lcom/hunantv/media/report/b/a$b$b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/hunantv/media/report/b/a$b;->a(Lcom/hunantv/media/report/b/a$b;Lcom/hunantv/media/report/b/a$b$b;)Lcom/hunantv/media/report/b/a$b$b;

    invoke-static {v0}, Lcom/hunantv/media/report/b/a$b;->b(Lcom/hunantv/media/report/b/a$b;)Lcom/hunantv/media/report/b/a$b$b;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/hunantv/media/report/b/a$b$b;->a(Lcom/hunantv/media/report/b/a$b$b;[B)[B

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[BIZI)Lcom/hunantv/media/report/b/a$b;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "[BIZI)",
            "Lcom/hunantv/media/report/b/a$b;"
        }
    .end annotation

    .line 4
    move-object/from16 v1, p0

    move-object/from16 v9, p2

    move/from16 v2, p4

    move/from16 v10, p6

    invoke-static {}, Lcom/hunantv/media/report/b/a;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "postSync  urlStr:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",contentType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",deep:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",retry:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x3

    if-le v2, v11, :cond_0

    const/16 v0, 0x2711

    invoke-static {v0, v1}, Lcom/hunantv/media/report/b/a;->a(ILjava/lang/String;)Lcom/hunantv/media/report/b/a$b;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v12, "requestSync goto retry"

    const/4 v13, 0x2

    const/16 v14, 0x2710

    const/4 v15, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-static/range {p1 .. p1}, Lcom/hunantv/media/report/b/a;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static/range {p0 .. p0}, Lcom/hunantv/media/player/utils/UrlUtil;->existParams(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_15

    :catch_0
    move-exception v0

    move-object v11, v1

    goto/16 :goto_10

    :catch_1
    move-exception v0

    move-object v5, v1

    :goto_1
    move/from16 v16, v2

    move-object/from16 v17, v3

    goto/16 :goto_11

    :catch_2
    move-exception v0

    move-object v11, v1

    goto/16 :goto_13

    :catch_3
    move-exception v0

    move-object v5, v1

    :goto_2
    move/from16 v16, v2

    move-object/from16 v17, v3

    goto/16 :goto_14

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_3
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v8, v0

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v11, v5

    goto/16 :goto_10

    :catch_5
    move-exception v0

    goto :goto_1

    :catch_6
    move-exception v0

    move-object v11, v5

    goto/16 :goto_13

    :catch_7
    move-exception v0

    goto :goto_2

    :cond_2
    move-object v8, v1

    :goto_4
    :try_start_2
    invoke-static {}, Lcom/hunantv/media/report/b/a;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "postSync  requestUrl:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1b
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_1a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_18
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/net/HttpURLConnection;
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_1b
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_1a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_19
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_18
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v7, :cond_4

    const/16 v0, 0x2712

    :try_start_4
    invoke-static {v0}, Lcom/hunantv/media/report/b/a;->a(I)Lcom/hunantv/media/report/b/a$b;

    move-result-object v0
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/io/InterruptedIOException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    return-object v0

    :catchall_1
    move-exception v0

    move-object v3, v7

    goto/16 :goto_15

    :catch_8
    move-exception v0

    move-object v3, v7

    :goto_5
    move-object v11, v8

    goto/16 :goto_10

    :catch_9
    move-exception v0

    move/from16 v16, v2

    move-object/from16 v17, v7

    move-object v5, v8

    :goto_6
    move v4, v15

    goto/16 :goto_11

    :catch_a
    move-exception v0

    move-object v3, v7

    :goto_7
    move-object v11, v8

    goto/16 :goto_13

    :catch_b
    move-exception v0

    move/from16 v16, v2

    move-object/from16 v17, v7

    move-object v5, v8

    goto/16 :goto_14

    :cond_4
    :try_start_5
    const-string v0, "https"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    invoke-virtual {v7, v14}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v7, v14}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {v7, v15}, Ljava/net/URLConnection;->setDoInput(Z)V

    invoke-virtual {v7, v4}, Ljava/net/URLConnection;->setUseCaches(Z)V

    invoke-virtual {v7, v15}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v0, "Charset"

    const-string v3, "UTF-8"

    invoke-virtual {v7, v0, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "POST"

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v0, "Content-Type"

    invoke-virtual {v7, v0, v9}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v15}, Ljava/net/URLConnection;->setDoOutput(Z)V

    move-object/from16 v6, p3

    invoke-static {v7, v6}, Lcom/hunantv/media/report/b/a;->a(Ljava/net/HttpURLConnection;[B)V
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_13
    .catch Ljava/io/InterruptedIOException; {:try_start_5 .. :try_end_5} :catch_12
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_17
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_10
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    invoke-virtual {v7}, Ljava/net/URLConnection;->connect()V
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_13
    .catch Ljava/io/InterruptedIOException; {:try_start_6 .. :try_end_6} :catch_12
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_16
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_10
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v3, 0x12e

    if-ne v0, v3, :cond_5

    const-string v0, "Location"

    invoke-virtual {v7, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_13
    .catch Ljava/io/InterruptedIOException; {:try_start_7 .. :try_end_7} :catch_12
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_10
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    add-int/lit8 v16, v2, 0x1

    move-object v2, v0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, v16

    move-object/from16 v17, v7

    move/from16 v7, p5

    move-object v11, v8

    move/from16 v8, p6

    :try_start_8
    invoke-static/range {v2 .. v8}, Lcom/hunantv/media/report/b/a;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[BIZI)Lcom/hunantv/media/report/b/a$b;

    move-result-object v0
    :try_end_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_f
    .catch Ljava/io/InterruptedIOException; {:try_start_8 .. :try_end_8} :catch_e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_c
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0

    :catchall_2
    move-exception v0

    :goto_8
    move-object/from16 v3, v17

    goto/16 :goto_15

    :catch_c
    move-exception v0

    :goto_9
    move-object/from16 v3, v17

    goto/16 :goto_10

    :catch_d
    move-exception v0

    :goto_a
    move-object v5, v11

    const/4 v4, 0x3

    goto/16 :goto_11

    :catch_e
    move-exception v0

    :goto_b
    move-object/from16 v3, v17

    goto/16 :goto_13

    :catch_f
    move-exception v0

    :goto_c
    move-object v5, v11

    goto/16 :goto_14

    :catchall_3
    move-exception v0

    move-object/from16 v17, v7

    goto :goto_8

    :catch_10
    move-exception v0

    move-object/from16 v17, v7

    move-object v11, v8

    goto :goto_9

    :catch_11
    move-exception v0

    move-object/from16 v17, v7

    move-object v11, v8

    :goto_d
    move/from16 v16, v2

    goto :goto_a

    :catch_12
    move-exception v0

    move-object/from16 v17, v7

    move-object v11, v8

    goto :goto_b

    :catch_13
    move-exception v0

    move-object/from16 v17, v7

    move-object v11, v8

    :goto_e
    move/from16 v16, v2

    goto :goto_c

    :cond_5
    move-object/from16 v17, v7

    move-object v11, v8

    const/16 v3, 0xc8

    if-lt v0, v3, :cond_6

    const/16 v3, 0xce

    if-gt v0, v3, :cond_6

    :try_start_9
    invoke-static/range {v17 .. v17}, Lcom/hunantv/media/report/b/a;->a(Ljava/net/HttpURLConnection;)[B

    move-result-object v3

    invoke-static {v0, v3, v11}, Lcom/hunantv/media/report/b/a;->a(I[BLjava/lang/String;)Lcom/hunantv/media/report/b/a$b;

    move-result-object v0
    :try_end_9
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_15
    .catch Ljava/io/InterruptedIOException; {:try_start_9 .. :try_end_9} :catch_e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_14
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_c
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0

    :catch_14
    move-exception v0

    goto :goto_d

    :catch_15
    move-exception v0

    goto :goto_e

    :cond_6
    :try_start_a
    invoke-static {v0, v11}, Lcom/hunantv/media/report/b/a;->a(ILjava/lang/String;)Lcom/hunantv/media/report/b/a$b;

    move-result-object v0
    :try_end_a
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_15
    .catch Ljava/io/InterruptedIOException; {:try_start_a .. :try_end_a} :catch_e
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_14
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_c
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0

    :catch_16
    move-exception v0

    move-object/from16 v17, v7

    move-object v11, v8

    move/from16 v16, v2

    move-object v5, v11

    move v4, v13

    goto :goto_11

    :catch_17
    move-exception v0

    move-object/from16 v17, v7

    move-object v11, v8

    move/from16 v16, v2

    :goto_f
    move-object v5, v11

    goto/16 :goto_6

    :catch_18
    move-exception v0

    goto/16 :goto_5

    :catch_19
    move-exception v0

    move-object v11, v8

    move/from16 v16, v2

    move-object/from16 v17, v3

    goto :goto_f

    :catch_1a
    move-exception v0

    goto/16 :goto_7

    :catch_1b
    move-exception v0

    move-object v11, v8

    move/from16 v16, v2

    move-object/from16 v17, v3

    goto :goto_c

    :catch_1c
    move-exception v0

    move-object v11, v8

    move/from16 v16, v2

    move-object/from16 v17, v3

    move-object v5, v11

    goto :goto_11

    :goto_10
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v14, v11}, Lcom/hunantv/media/report/b/a;->a(ILjava/lang/String;)Lcom/hunantv/media/report/b/a$b;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    return-object v0

    :goto_11
    :try_start_c
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p5, :cond_9

    if-nez v10, :cond_9

    invoke-static {}, Lcom/hunantv/media/report/b/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v12}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v7, v10, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, v16

    move/from16 v6, p5

    invoke-static/range {v1 .. v7}, Lcom/hunantv/media/report/b/a;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[BIZI)Lcom/hunantv/media/report/b/a$b;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    if-eqz v17, :cond_8

    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    return-object v0

    :cond_9
    if-eq v4, v15, :cond_c

    if-eq v4, v13, :cond_b

    const/4 v1, 0x3

    if-eq v4, v1, :cond_a

    const/16 v0, 0x2715

    goto :goto_12

    :cond_a
    const/16 v0, 0x2718

    goto :goto_12

    :cond_b
    const/16 v0, 0x2717

    goto :goto_12

    :cond_c
    const/16 v0, 0x2716

    :goto_12
    :try_start_d
    invoke-static {v0, v5}, Lcom/hunantv/media/report/b/a;->a(ILjava/lang/String;)Lcom/hunantv/media/report/b/a$b;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    if-eqz v17, :cond_d

    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_d
    return-object v0

    :goto_13
    :try_start_e
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/16 v0, 0x2714

    invoke-static {v0, v11}, Lcom/hunantv/media/report/b/a;->a(ILjava/lang/String;)Lcom/hunantv/media/report/b/a$b;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_e
    return-object v0

    :goto_14
    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p5, :cond_10

    if-nez v10, :cond_10

    invoke-static {}, Lcom/hunantv/media/report/b/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v12}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v7, v10, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, v16

    move/from16 v6, p5

    invoke-static/range {v1 .. v7}, Lcom/hunantv/media/report/b/a;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[BIZI)Lcom/hunantv/media/report/b/a$b;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    if-eqz v17, :cond_f

    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_f
    return-object v0

    :cond_10
    const/16 v0, 0x2713

    :try_start_10
    invoke-static {v0, v5}, Lcom/hunantv/media/report/b/a;->a(ILjava/lang/String;)Lcom/hunantv/media/report/b/a$b;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    if-eqz v17, :cond_11

    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_11
    return-object v0

    :goto_15
    if-eqz v3, :cond_12

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_12
    throw v0
.end method

.method private static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 5
    const-string v0, "&"

    const-string v1, "="

    const-string v2, "UTF-8"

    const-string v3, ""

    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    const-string v7, "theo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "key= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " and value= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/hunantv/media/report/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8, v2}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8, v2}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    if-ge v5, v4, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    if-ge v5, v4, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    :cond_1
    return-object v3
.end method

.method public static synthetic a(Lcom/hunantv/media/report/b/a$b;Lcom/hunantv/media/report/b/a$a;)V
    .locals 0

    .line 6
    invoke-static {p0, p1}, Lcom/hunantv/media/report/b/a;->b(Lcom/hunantv/media/report/b/a$b;Lcom/hunantv/media/report/b/a$a;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[BZLcom/hunantv/media/report/b/a$a;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "[BZ",
            "Lcom/hunantv/media/report/b/a$a;",
            ")V"
        }
    .end annotation

    .line 7
    new-instance v0, Ljava/lang/Thread;

    new-instance v8, Lcom/hunantv/media/report/b/a$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/hunantv/media/report/b/a$1;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[BZLcom/hunantv/media/report/b/a$a;)V

    invoke-direct {v0, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string p0, "mgtvmp_netReq"

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static a(Ljava/net/HttpURLConnection;[B)V
    .locals 1

    .line 8
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/hunantv/media/report/b/a;->b(Ljava/net/HttpURLConnection;[B)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Z)V
    .locals 0

    .line 9
    sput-boolean p0, Lcom/hunantv/media/report/b/a;->a:Z

    return-void
.end method

.method public static a()Z
    .locals 1

    .line 10
    sget-boolean v0, Lcom/hunantv/media/report/b/a;->a:Z

    return v0
.end method

.method private static a(Ljava/net/HttpURLConnection;)[B
    .locals 5

    .line 11
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/16 v1, 0x400

    :try_start_0
    new-array v1, v1, [B

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ltz v3, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v0, v2

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2}, Lcom/hunantv/media/report/c/f;->a(Ljava/io/Closeable;)V

    return-object p0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v2, v0

    :goto_1
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2}, Lcom/hunantv/media/report/c/f;->a(Ljava/io/Closeable;)V

    return-object v0

    :goto_2
    invoke-static {v0}, Lcom/hunantv/media/report/c/f;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method private static b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Requester"

    return-object v0
.end method

.method private static b(Lcom/hunantv/media/report/b/a$b;Lcom/hunantv/media/report/b/a$a;)V
    .locals 3

    .line 2
    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-nez p0, :cond_2

    :cond_1
    :goto_0
    invoke-interface {p1, v1, v0}, Lcom/hunantv/media/report/b/a$a;->onFailed(Ljava/lang/String;I)V

    goto :goto_2

    :cond_2
    invoke-static {p0}, Lcom/hunantv/media/report/b/a$b;->a(Lcom/hunantv/media/report/b/a$b;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/hunantv/media/report/b/a$b;->a()Lcom/hunantv/media/report/b/a$b$b;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-static {p0}, Lcom/hunantv/media/report/b/a$b$b;->b(Lcom/hunantv/media/report/b/a$b$b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/hunantv/media/report/b/a$b$b;->a(Lcom/hunantv/media/report/b/a$b$b;)I

    move-result v0

    invoke-static {p0}, Lcom/hunantv/media/report/b/a$b$b;->c(Lcom/hunantv/media/report/b/a$b$b;)[B

    move-result-object p0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    move-object p0, v1

    :goto_1
    invoke-interface {p1, v1, v0, p0}, Lcom/hunantv/media/report/b/a$a;->onSuccess(Ljava/lang/String;I[B)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/hunantv/media/report/b/a$b;->b()Lcom/hunantv/media/report/b/a$b$a;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/hunantv/media/report/b/a$b$a;->a(Lcom/hunantv/media/report/b/a$b$a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hunantv/media/report/b/a$b$a;->a()I

    move-result v0

    goto :goto_0

    :goto_2
    return-void
.end method

.method private static b(Ljava/net/HttpURLConnection;[B)V
    .locals 2

    .line 3
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    invoke-static {v1}, Lcom/hunantv/media/report/c/f;->a(Ljava/io/Closeable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lcom/hunantv/media/report/c/f;->a(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0}, Lcom/hunantv/media/report/c/f;->a(Ljava/io/Closeable;)V

    :goto_1
    return-void

    :goto_2
    invoke-static {v0}, Lcom/hunantv/media/report/c/f;->a(Ljava/io/Closeable;)V

    throw p0

    :cond_1
    :goto_3
    return-void
.end method
