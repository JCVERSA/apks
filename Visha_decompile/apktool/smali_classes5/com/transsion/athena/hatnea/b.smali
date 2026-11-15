.class public abstract Lcom/transsion/athena/hatnea/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public static a([B)Lh5d;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lh5d;

    invoke-direct {v0, p0}, Lh5d;-><init>([B)V

    return-object v0
.end method

.method public static b(J[BILcom/transsion/athena/config/data/model/aethna;)Lrbd;
    .locals 17

    move-wide/from16 v0, p0

    move/from16 v2, p3

    move-object/from16 v3, p4

    const-string v4, ""

    new-instance v5, Lrbd;

    new-instance v6, Lcom/transsion/athena/hatnea/a;

    const-string v7, "sdk_error"

    invoke-direct {v6, v7}, Lcom/transsion/athena/hatnea/a;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x2

    invoke-direct {v5, v7, v6}, Lrbd;-><init>(ILjava/lang/Object;)V

    const/4 v6, -0x1

    const/4 v8, 0x0

    :try_start_0
    new-instance v9, Ljava/net/URL;

    iget-object v10, v3, Lcom/transsion/athena/config/data/model/aethna;->a:Ljava/lang/String;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/transsion/gslb/GslbSdk;->getDomain(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    check-cast v10, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    instance-of v8, v10, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v8, :cond_1

    sget-object v8, Lcom/transsion/athena/hatnea/b;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v8, :cond_0

    invoke-static {}, Lc5d;->a()Ljavax/net/ssl/SSLContext;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v8

    sput-object v8, Lcom/transsion/athena/hatnea/b;->a:Ljavax/net/ssl/SSLSocketFactory;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v8, v10

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-object v8, v10

    goto/16 :goto_3

    :cond_0
    :goto_0
    sget-object v8, Lcom/transsion/athena/hatnea/b;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v8, :cond_1

    move-object v12, v10

    check-cast v12, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v12, v8}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    move-object v8, v10

    check-cast v8, Ljavax/net/ssl/HttpsURLConnection;

    sget-object v12, Lc5d;->a:Lc5d$b;

    invoke-virtual {v8, v12}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :cond_1
    const/16 v8, 0x4e20

    invoke-virtual {v10, v8}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/16 v8, 0x7530

    invoke-virtual {v10, v8}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v10, v11}, Ljava/net/URLConnection;->setDoOutput(Z)V

    const/4 v8, 0x0

    invoke-virtual {v10, v8}, Ljava/net/URLConnection;->setUseCaches(Z)V

    const-string v12, "POST"

    invoke-virtual {v10, v12}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    iget-wide v12, v3, Lcom/transsion/athena/config/data/model/aethna;->c:J

    const-wide/16 v14, 0x400

    mul-long/2addr v12, v14

    move-object/from16 v14, p2

    array-length v15, v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v16, v9

    int-to-long v8, v15

    cmp-long v8, v12, v8

    const-string v9, "1"

    const-string v12, "zip"

    const-string v13, "Accept-Encoding"

    if-gtz v8, :cond_2

    :try_start_2
    const-string v8, "gzip, deflate"

    invoke-virtual {v10, v13, v8}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v12, v9}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lcom/transsion/athena/config/data/model/anehat;->b([B)[B

    move-result-object v8

    move-object v14, v8

    goto :goto_1

    :cond_2
    const-string v8, "text/example"

    invoke-virtual {v10, v13, v8}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "0"

    invoke-virtual {v10, v12, v8}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string v8, "fixed"

    invoke-virtual {v10, v8, v9}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v8, "record-id"

    :try_start_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v8, v9}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v8, "count"

    :try_start_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v8, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "ver"

    const-string v8, "3.1.1.2"

    invoke-virtual {v10, v4, v8}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Le5d;->o()Le5d;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Le5d;->m(J)Lcom/transsion/athena/config/data/model/TidConfigBean;

    move-result-object v4

    if-nez v4, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestByPost TidConfigBean "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " is missing, maybe cancelled"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc4d;->b(Ljava/lang/String;)V

    iget-object v0, v5, Lrbd;->b:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/athena/hatnea/a;

    const-string v1, "tid not found"

    iput-object v1, v0, Lcom/transsion/athena/hatnea/a;->d:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v5

    :cond_3
    :try_start_5
    invoke-virtual {v4}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTidConfig()Lcom/transsion/athena/config/data/model/aatnhe;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v3, Lcom/transsion/athena/config/data/model/aethna;->b:Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, [B

    invoke-static {v4}, Lcom/transsion/athena/hatnea/b;->a([B)Lh5d;

    move-result-object v4

    if-nez v4, :cond_4

    iget-object v0, v5, Lrbd;->b:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/athena/hatnea/a;

    const-string v1, "encrypt error"

    iput-object v1, v0, Lcom/transsion/athena/hatnea/a;->d:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v5

    :cond_4
    :try_start_6
    invoke-virtual {v4, v14}, Lh5d;->c([B)[B

    move-result-object v4

    invoke-static {v4, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    if-nez v4, :cond_5

    const-string v0, "requestByPost buffer is null"

    invoke-static {v0}, Lc4d;->d(Ljava/lang/String;)V

    iget-object v0, v5, Lrbd;->b:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/athena/hatnea/a;

    const-string v1, "base64 error"

    iput-object v1, v0, Lcom/transsion/athena/hatnea/a;->d:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v5

    :cond_5
    :try_start_7
    invoke-static {v4}, Lcom/transsion/athena/config/data/model/anehat;->a([B)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const-string v8, "md5"

    if-eqz v7, :cond_6

    :try_start_8
    const-string v5, "error"

    invoke-virtual {v10, v8, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    invoke-virtual {v10, v8, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_2
    const-string v5, "encrypt-level"

    const/4 v7, 0x3

    :try_start_9
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v5, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const-string v5, "encrypt-index"

    :try_start_a
    iget-object v3, v3, Lcom/transsion/athena/config/data/model/aethna;->b:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v11

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v5, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v16

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " tid = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " count = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc4d;->f(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/net/URLConnection;->connect()V

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v10}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    const/16 v4, 0xc8

    const-string v5, "rc_"

    if-ne v3, v4, :cond_9

    :try_start_b
    invoke-virtual {v10}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/transsion/athena/config/data/model/anehat;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    const-string v7, "post tid: %s response: %s"

    :try_start_c
    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v7, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc4d;->f(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Lcom/transsion/athena/hatnea/a;

    invoke-direct {v0}, Lcom/transsion/athena/hatnea/a;-><init>()V

    new-instance v1, Lrbd;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lrbd;-><init>(ILjava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v1

    :cond_7
    :try_start_d
    new-instance v1, Lrbd;

    new-instance v2, Lcom/transsion/athena/hatnea/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/transsion/athena/hatnea/a;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v6, v2}, Lrbd;-><init>(ILjava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v1

    :cond_8
    :try_start_e
    new-instance v0, Lrbd;

    new-instance v1, Lcom/transsion/athena/hatnea/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/transsion/athena/hatnea/a;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v6, v1}, Lrbd;-><init>(ILjava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0

    :cond_9
    :try_start_f
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/config/data/model/anehat;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lrbd;

    new-instance v2, Lcom/transsion/athena/hatnea/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/transsion/athena/hatnea/a;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v6, v2}, Lrbd;-><init>(ILjava/lang/Object;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v1

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    :goto_3
    :try_start_10
    instance-of v1, v0, Ljava/net/UnknownHostException;

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc4d;->d(Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc4d;->d(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :goto_4
    if-eqz v8, :cond_b

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_b
    new-instance v0, Lrbd;

    new-instance v1, Lcom/transsion/athena/hatnea/a;

    invoke-direct {v1}, Lcom/transsion/athena/hatnea/a;-><init>()V

    invoke-direct {v0, v6, v1}, Lrbd;-><init>(ILjava/lang/Object;)V

    return-object v0

    :goto_5
    if-eqz v8, :cond_c

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_c
    throw v0
.end method

.method public static c(Ljava/lang/String;)Lrbd;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    instance-of v0, p0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/transsion/athena/hatnea/b;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    invoke-static {}, Lc5d;->a()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    sput-object v0, Lcom/transsion/athena/hatnea/b;->a:Ljavax/net/ssl/SSLSocketFactory;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v0, Lcom/transsion/athena/hatnea/b;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_1

    move-object v1, p0

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    move-object v0, p0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    sget-object v1, Lc5d;->a:Lc5d$b;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :cond_1
    const/16 v0, 0x2710

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_3

    const/16 v1, 0x190

    if-ge v0, v1, :cond_3

    new-instance v0, Lrbd;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getDate()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lrbd;-><init>(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0

    :catchall_1
    move-exception p0

    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    goto :goto_3

    :catch_1
    move-exception p0

    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    :goto_1
    :try_start_2
    instance-of v1, v0, Ljava/net/UnknownHostException;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc4d;->d(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc4d;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    if-eqz p0, :cond_4

    :cond_3
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    new-instance p0, Lrbd;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Lrbd;-><init>(ILjava/lang/Object;)V

    return-object p0

    :goto_3
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    throw v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;J)Lrbd;
    .locals 10

    const/4 v0, -0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "AES"

    invoke-static {v2}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Ljavax/crypto/KeyGenerator;->init(I)V

    invoke-virtual {v2}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/athena/config/data/model/anehat;->c([B)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lh5d;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lh5d;-><init>([B)V

    invoke-virtual {v3, p1}, Lh5d;->a(Ljava/lang/String;)[B

    move-result-object v4

    new-instance v5, Ljw8;

    const-string v6, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEArNrm4jErOdstd1P5L1X/\nCGSS6NKf4glPrFbTM97aE9ZKGUiMALIV8W7FClAgLZdtTZkL5XEQdbX4RB/C6edc\nnN2ifla6sVu23y78FMiL6smp9ayE7Y3gSEfB3md4nvEUpyRUu4wYLIf9nVR36okK\nGCerxYdLtDbJ69Rux4lgE5C9a6qLfV6BzjJYONk/vQhGQYT6qes+TFtXV0hvF8UM\nDG+0GfA3MiQue/Ny8uIPBykDPS1dcIADzVos2fXs/o2aFTrkdVjiX8irwYBze69K\nzFx18H12iZ9gG1VztMbHetvImBoXeCOwjTc5RnGIz+Hya96pxJLK2DcSlAaHEs1H\nOQIDAQAB"

    invoke-direct {v5, v6}, Ljw8;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljw8;->d(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v5, 0x2

    invoke-static {v2, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/net/URL;

    const/4 v6, 0x1

    invoke-static {p0, v6}, Lcom/transsion/gslb/GslbSdk;->getDomain(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    instance-of v8, v7, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v8, :cond_1

    sget-object v8, Lcom/transsion/athena/hatnea/b;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v8, :cond_0

    invoke-static {}, Lc5d;->a()Ljavax/net/ssl/SSLContext;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v8

    sput-object v8, Lcom/transsion/athena/hatnea/b;->a:Ljavax/net/ssl/SSLSocketFactory;

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v1, v7

    goto/16 :goto_5

    :catch_0
    move-exception p0

    move-object v1, v7

    goto/16 :goto_3

    :cond_0
    :goto_0
    sget-object v8, Lcom/transsion/athena/hatnea/b;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v8, :cond_1

    move-object v9, v7

    check-cast v9, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v9, v8}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    move-object v8, v7

    check-cast v8, Ljavax/net/ssl/HttpsURLConnection;

    sget-object v9, Lc5d;->a:Lc5d$b;

    invoke-virtual {v8, v9}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :cond_1
    const-string v8, "accept"

    const-string v9, "*/*"

    invoke-virtual {v7, v8, v9}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v8, "Content-Length"

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "encrypt-level"

    const-string v9, "2"

    invoke-virtual {v7, v8, v9}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v8, "ver"

    :try_start_3
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "vn"

    const-string v9, "1"

    invoke-virtual {v7, v8, v9}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "POST"

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v8, 0x4e20

    invoke-virtual {v7, v8}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/16 v8, 0x7530

    invoke-virtual {v7, v8}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v7, v6}, Ljava/net/URLConnection;->setDoInput(Z)V

    invoke-virtual {v7, v6}, Ljava/net/URLConnection;->setDoOutput(Z)V

    new-instance v8, Ljava/io/PrintWriter;

    invoke-virtual {v7}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v8}, Ljava/io/PrintWriter;->close()V

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    const-string v9, "url"

    invoke-virtual {v8, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "params"

    invoke-virtual {v8, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "version"

    invoke-virtual {v8, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "code"

    invoke-virtual {v8, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string p1, "--> request config:%s"

    :try_start_5
    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lc4d;->g(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_1
    move-exception p1

    const-string p2, "print request config exception:%s"

    :try_start_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lc4d;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    const/16 p1, 0xc8

    if-ne v2, p1, :cond_5

    invoke-virtual {v7}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/athena/config/data/model/anehat;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "{}"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p0, Lrbd;

    invoke-direct {p0, v6, v1}, Lrbd;-><init>(ILjava/lang/Object;)V

    goto :goto_4

    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p0, Lrbd;

    invoke-direct {p0, v0, v1}, Lrbd;-><init>(ILjava/lang/Object;)V

    goto :goto_4

    :cond_3
    const-string p2, "secret"

    invoke-virtual {p0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {p1, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-virtual {v3, p0}, Lh5d;->b([B)[B

    move-result-object p0

    new-instance p1, Ljava/lang/String;

    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_2

    :cond_4
    invoke-static {p1, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-virtual {v3, p0}, Lh5d;->b([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/athena/config/data/model/anehat;->d([B)[B

    move-result-object p0

    new-instance p1, Ljava/lang/String;

    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :goto_2
    new-instance p0, Lrbd;

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Lrbd;-><init>(ILjava/lang/Object;)V

    goto :goto_4

    :cond_5
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/athena/config/data/model/anehat;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lrbd;

    invoke-direct {p1, v0, p0}, Lrbd;-><init>(ILjava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object p0, p1

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_2
    move-exception p0

    :goto_3
    :try_start_7
    new-instance p1, Lrbd;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lrbd;-><init>(ILjava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v1, :cond_6

    move-object p0, p1

    move-object v7, v1

    :goto_4
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object p1, p0

    :cond_6
    return-object p1

    :goto_5
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    throw p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;JI)Lrbd;
    .locals 8

    new-instance v0, Lrbd;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lrbd;-><init>(ILjava/lang/Object;)V

    :try_start_0
    new-instance v3, Ljava/net/URL;

    const/4 v4, 0x1

    invoke-static {p0, v4}, Lcom/transsion/gslb/GslbSdk;->getDomain(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    instance-of v5, p0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v5, :cond_1

    sget-object v5, Lcom/transsion/athena/hatnea/b;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v5, :cond_0

    invoke-static {}, Lc5d;->a()Ljavax/net/ssl/SSLContext;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    sput-object v5, Lcom/transsion/athena/hatnea/b;->a:Ljavax/net/ssl/SSLSocketFactory;

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v2, p0

    goto/16 :goto_4

    :catch_0
    move-exception p1

    move-object v2, p0

    goto/16 :goto_2

    :cond_0
    :goto_0
    sget-object v5, Lcom/transsion/athena/hatnea/b;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v5, :cond_1

    move-object v6, p0

    check-cast v6, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v6, v5}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    move-object v5, p0

    check-cast v5, Ljavax/net/ssl/HttpsURLConnection;

    sget-object v6, Lc5d;->a:Lc5d$b;

    invoke-virtual {v5, v6}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {}, Le5d;->o()Le5d;

    move-result-object v6

    invoke-virtual {v6}, Le5d;->u()Landroid/util/Pair;

    move-result-object v6

    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, [B

    invoke-static {v7}, Lcom/transsion/athena/hatnea/b;->a([B)Lh5d;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v7, :cond_3

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    return-object v0

    :cond_3
    :try_start_2
    invoke-virtual {v7, v5}, Lh5d;->c([B)[B

    move-result-object v0

    const/4 v5, 0x2

    invoke-static {v0, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v7, "index"

    :try_start_3
    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, v4

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v7, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "accept"

    const-string v7, "*/*"

    invoke-virtual {p0, v6, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v6, "Content-Length"

    :try_start_4
    array-length v7, v0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v6, "ver"

    :try_start_5
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "vn"

    const-string v7, "1"

    invoke-virtual {p0, v6, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v6, "app"

    :try_start_6
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, v6, p4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-string p4, "model"

    :try_start_7
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, p4, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "POST"

    invoke-virtual {p0, p4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 p4, 0x4e20

    invoke-virtual {p0, p4}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/16 p4, 0x7530

    invoke-virtual {p0, p4}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {p0, v4}, Ljava/net/URLConnection;->setDoInput(Z)V

    invoke-virtual {p0, v4}, Ljava/net/URLConnection;->setDoOutput(Z)V

    new-instance p4, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {p4, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p4, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p4}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {p4}, Ljava/io/OutputStream;->close()V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "url"

    invoke-virtual {v0, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "params"

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "version"

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "code"

    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const-string p1, "--> request config:%s"

    :try_start_9
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lc4d;->g(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    :catch_1
    move-exception p1

    const-string p2, "print request config exception:%s"

    :try_start_a
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lc4d;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    const/16 p1, 0xc8

    if-ne p4, p1, :cond_6

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/athena/config/data/model/anehat;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "{}"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p1, Lrbd;

    invoke-direct {p1, v4, v2}, Lrbd;-><init>(ILjava/lang/Object;)V

    goto :goto_3

    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    new-instance p1, Lrbd;

    invoke-direct {p1, v1, v2}, Lrbd;-><init>(ILjava/lang/Object;)V

    goto :goto_3

    :cond_5
    invoke-static {p1, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/athena/config/data/model/anehat;->d([B)[B

    move-result-object p1

    new-instance p2, Ljava/lang/String;

    sget-object p3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p2, p1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance p1, Lrbd;

    const/4 p3, 0x0

    invoke-direct {p1, p3, p2}, Lrbd;-><init>(ILjava/lang/Object;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/athena/config/data/model/anehat;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lrbd;

    invoke-direct {p2, v1, p1}, Lrbd;-><init>(ILjava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-object p1, p2

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception p1

    :goto_2
    :try_start_b
    new-instance p0, Lrbd;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lrbd;-><init>(ILjava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v2, :cond_7

    move-object p1, p0

    move-object p0, v2

    :goto_3
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object p0, p1

    :cond_7
    return-object p0

    :goto_4
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    throw p1
.end method

.method public static f(Ljava/lang/String;[BILjava/util/List;Ljava/lang/String;Ljava/lang/String;)Lrbd;
    .locals 9

    const-string v0, "ver"

    const-string v1, "1"

    new-instance v2, Lrbd;

    new-instance v3, Lcom/transsion/athena/hatnea/a;

    const-string v4, "sdk_error"

    invoke-direct {v3, v4}, Lcom/transsion/athena/hatnea/a;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x2

    invoke-direct {v2, v4, v3}, Lrbd;-><init>(ILjava/lang/Object;)V

    const/4 v3, -0x1

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    instance-of v5, p0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v5, :cond_1

    sget-object v5, Lcom/transsion/athena/hatnea/b;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v5, :cond_0

    invoke-static {}, Lc5d;->a()Ljavax/net/ssl/SSLContext;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    sput-object v5, Lcom/transsion/athena/hatnea/b;->a:Ljavax/net/ssl/SSLSocketFactory;

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v5, p0

    goto/16 :goto_3

    :catch_0
    move-exception p1

    move-object v5, p0

    goto/16 :goto_2

    :cond_0
    :goto_0
    sget-object v5, Lcom/transsion/athena/hatnea/b;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v5, :cond_1

    move-object v6, p0

    check-cast v6, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v6, v5}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    move-object v5, p0

    check-cast v5, Ljavax/net/ssl/HttpsURLConnection;

    sget-object v6, Lc5d;->a:Lc5d$b;

    invoke-virtual {v5, v6}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :cond_1
    const/16 v5, 0x4e20

    invoke-virtual {p0, v5}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/16 v5, 0x7530

    invoke-virtual {p0, v5}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Ljava/net/URLConnection;->setDoOutput(Z)V

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Ljava/net/URLConnection;->setUseCaches(Z)V

    const-string v7, "POST"

    invoke-virtual {p0, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    array-length v7, p1

    const-string v7, "Accept-Encoding"

    const-string v8, "gzip, deflate"

    invoke-virtual {p0, v7, v8}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "zip"

    invoke-virtual {p0, v7, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/transsion/athena/config/data/model/anehat;->b([B)[B

    move-result-object p1

    const-string v7, "fixed"

    invoke-virtual {p0, v7, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v1, "count"

    :try_start_2
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v1, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v1, "appids"

    :try_start_3
    const-string v7, "_"

    invoke-static {p3, v7}, Lcom/transsion/athena/config/data/model/anehat;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, v1, p3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "3.1.1.2"

    invoke-virtual {p0, v0, p3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "uuid"

    invoke-virtual {p0, p3, p4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "dupid"

    invoke-virtual {p0, p3, p5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Le5d;->o()Le5d;

    move-result-object p3

    invoke-virtual {p3}, Le5d;->u()Landroid/util/Pair;

    move-result-object p3

    iget-object p4, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p4, [B

    invoke-static {p4}, Lcom/transsion/athena/hatnea/b;->a([B)Lh5d;

    move-result-object p4

    if-nez p4, :cond_2

    iget-object p1, v2, Lrbd;->b:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/athena/hatnea/a;

    const-string p2, "encrypt error"

    iput-object p2, p1, Lcom/transsion/athena/hatnea/a;->d:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v2

    :cond_2
    :try_start_4
    invoke-virtual {p4, p1}, Lh5d;->c([B)[B

    move-result-object p1

    invoke-static {p1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    if-nez p1, :cond_3

    const-string p1, "requestByPost buffer is null"

    invoke-static {p1}, Lc4d;->d(Ljava/lang/String;)V

    iget-object p1, v2, Lrbd;->b:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/athena/hatnea/a;

    const-string p2, "base64 error"

    iput-object p2, p1, Lcom/transsion/athena/hatnea/a;->d:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v2

    :cond_3
    :try_start_5
    const-string p4, "encrypt-level"

    const-string p5, "3"

    invoke-virtual {p0, p4, p5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string p4, "encrypt-index"

    :try_start_6
    iget-object p3, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    add-int/2addr p3, v5

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p4, p3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URLConnection;->connect()V

    new-instance p3, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p4

    invoke-direct {p3, p4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p3, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p3}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/16 p3, 0xc8

    const-string p4, "rc_"

    if-ne p1, p3, :cond_9

    :try_start_7
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/athena/config/data/model/anehat;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_8

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const-string p3, "message"

    const-string p5, ""

    invoke-virtual {p2, p3, p5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-instance p5, Lcom/transsion/athena/hatnea/a;

    invoke-direct {p5}, Lcom/transsion/athena/hatnea/a;-><init>()V

    iput p1, p5, Lcom/transsion/athena/hatnea/a;->a:I

    iput-object p3, p5, Lcom/transsion/athena/hatnea/a;->b:Ljava/lang/String;

    if-nez p1, :cond_7

    const-string p1, "app"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p4

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p4

    const-string v4, "type"

    invoke-virtual {p4, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p4

    if-eqz p4, :cond_4

    new-instance v4, Lcom/transsion/athena/hatnea/a$a;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-direct {v4, p3, p4, v1, v2}, Lcom/transsion/athena/hatnea/a$a;-><init>(IIJ)V

    iget-object p3, p5, Lcom/transsion/athena/hatnea/a;->c:Ljava/util/List;

    if-nez p3, :cond_5

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p5, Lcom/transsion/athena/hatnea/a;->c:Ljava/util/List;

    :cond_5
    iget-object p3, p5, Lcom/transsion/athena/hatnea/a;->c:Ljava/util/List;

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    new-instance p1, Lrbd;

    invoke-direct {p1, v6, p5}, Lrbd;-><init>(ILjava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p1

    :cond_7
    :try_start_8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p5, Lcom/transsion/athena/hatnea/a;->d:Ljava/lang/String;

    new-instance p1, Lrbd;

    invoke-direct {p1, v3, p5}, Lrbd;-><init>(ILjava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p1

    :cond_8
    :try_start_9
    new-instance p1, Lrbd;

    new-instance p3, Lcom/transsion/athena/hatnea/a;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2}, Lcom/transsion/athena/hatnea/a;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v3, p3}, Lrbd;-><init>(ILjava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p1

    :cond_9
    :try_start_a
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/athena/config/data/model/anehat;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lrbd;

    new-instance p3, Lcom/transsion/athena/hatnea/a;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/transsion/athena/hatnea/a;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, v3, p3}, Lrbd;-><init>(ILjava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p2

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    :goto_2
    :try_start_b
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc4d;->d(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a
    new-instance p0, Lrbd;

    new-instance p1, Lcom/transsion/athena/hatnea/a;

    invoke-direct {p1}, Lcom/transsion/athena/hatnea/a;-><init>()V

    invoke-direct {p0, v3, p1}, Lrbd;-><init>(ILjava/lang/Object;)V

    return-object p0

    :goto_3
    if-eqz v5, :cond_b

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_b
    throw p1
.end method
