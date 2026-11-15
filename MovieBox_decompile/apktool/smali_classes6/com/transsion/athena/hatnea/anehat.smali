.class public Lcom/transsion/athena/hatnea/anehat;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static a:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method private static a([B)Lcom/transsion/athena/anateh/athena;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 60
    :cond_0
    new-instance v0, Lcom/transsion/athena/anateh/athena;

    invoke-direct {v0, p0}, Lcom/transsion/athena/anateh/athena;-><init>([B)V

    return-object v0
.end method

.method static a(J[BILcom/transsion/athena/config/data/model/aethna;)Lcom/transsion/athena/hatnea/ehanat;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[BI",
            "Lcom/transsion/athena/config/data/model/aethna;",
            ")",
            "Lcom/transsion/athena/hatnea/ehanat<",
            "Lcom/transsion/athena/hatnea/aatnhe;",
            ">;"
        }
    .end annotation

    move-wide/from16 v0, p0

    move/from16 v2, p3

    move-object/from16 v3, p4

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 137
    const-string v6, ""

    new-instance v7, Lcom/transsion/athena/hatnea/ehanat;

    new-instance v8, Lcom/transsion/athena/hatnea/aatnhe;

    const-string v9, "sdk_error"

    invoke-direct {v8, v9}, Lcom/transsion/athena/hatnea/aatnhe;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x2

    invoke-direct {v7, v9, v8}, Lcom/transsion/athena/hatnea/ehanat;-><init>(ILjava/lang/Object;)V

    const/4 v8, -0x1

    const/4 v10, 0x0

    .line 138
    :try_start_0
    new-instance v11, Ljava/net/URL;

    iget-object v12, v3, Lcom/transsion/athena/config/data/model/aethna;->a:Ljava/lang/String;

    invoke-static {v12, v5}, Lcom/transsion/gslb/GslbSdk;->getDomain(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    invoke-static {v12}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/net/URLConnection;

    check-cast v12, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 140
    :try_start_1
    instance-of v10, v12, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v10, :cond_1

    .line 141
    sget-object v10, Lcom/transsion/athena/hatnea/anehat;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v10, :cond_0

    .line 142
    invoke-static {}, Lcom/transsion/athena/ehanat/athena;->a()Ljavax/net/ssl/SSLContext;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 143
    invoke-virtual {v10}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v10

    sput-object v10, Lcom/transsion/athena/hatnea/anehat;->a:Ljavax/net/ssl/SSLSocketFactory;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v10, v12

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-object v10, v12

    goto/16 :goto_3

    .line 144
    :cond_0
    :goto_0
    sget-object v10, Lcom/transsion/athena/hatnea/anehat;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v10, :cond_1

    .line 145
    move-object v13, v12

    check-cast v13, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v13, v10}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 146
    move-object v10, v12

    check-cast v10, Ljavax/net/ssl/HttpsURLConnection;

    sget-object v13, Lcom/transsion/athena/ehanat/athena;->a:Lcom/transsion/athena/ehanat/athena$aethna;

    invoke-virtual {v10, v13}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :cond_1
    const/16 v10, 0x4e20

    .line 147
    invoke-virtual {v12, v10}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/16 v10, 0x7530

    .line 148
    invoke-virtual {v12, v10}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 149
    invoke-virtual {v12, v5}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 150
    invoke-virtual {v12, v4}, Ljava/net/URLConnection;->setUseCaches(Z)V

    const-string v10, "POST"

    .line 151
    invoke-virtual {v12, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v12, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 153
    iget-wide v13, v3, Lcom/transsion/athena/config/data/model/aethna;->c:J

    const-wide/16 v15, 0x400

    mul-long/2addr v13, v15

    move-object/from16 v10, p2

    array-length v15, v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v4, v15

    cmp-long v4, v13, v4

    const-string v5, "1"

    const-string v13, "zip"

    const-string v14, "Accept-Encoding"

    if-gtz v4, :cond_2

    :try_start_2
    const-string v4, "gzip, deflate"

    .line 154
    invoke-virtual {v12, v14, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v12, v13, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-static/range {p2 .. p2}, Lcom/transsion/athena/config/data/model/anehat;->b([B)[B

    move-result-object v4

    goto :goto_1

    :cond_2
    const-string v4, "text/example"

    .line 157
    invoke-virtual {v12, v14, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "0"

    .line 158
    invoke-virtual {v12, v13, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v10

    :goto_1
    const-string v10, "fixed"

    .line 159
    invoke-virtual {v12, v10, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v5, "record-id"

    .line 160
    :try_start_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v5, v10}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v5, "count"

    .line 161
    :try_start_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v5, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "ver"

    const-string v6, "3.1.1.4"

    .line 162
    invoke-virtual {v12, v5, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-static {}, Lcom/transsion/athena/aethna/athena;->c()Lcom/transsion/athena/aethna/athena;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Lcom/transsion/athena/aethna/athena;->b(J)Lcom/transsion/athena/config/data/model/TidConfigBean;

    move-result-object v5

    if-nez v5, :cond_3

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestByPost TidConfigBean "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " is missing, maybe cancelled"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/taaneh/aethna;->a(Ljava/lang/String;)V

    .line 165
    iget-object v0, v7, Lcom/transsion/athena/hatnea/ehanat;->b:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/athena/hatnea/aatnhe;

    const-string v1, "tid not found"

    iput-object v1, v0, Lcom/transsion/athena/hatnea/aatnhe;->d:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 166
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v7

    .line 167
    :cond_3
    :try_start_5
    invoke-virtual {v5}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTidConfig()Lcom/transsion/athena/config/data/model/aatnhe;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    iget-object v5, v3, Lcom/transsion/athena/config/data/model/aethna;->b:Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, [B

    invoke-static {v5}, Lcom/transsion/athena/hatnea/anehat;->a([B)Lcom/transsion/athena/anateh/athena;

    move-result-object v5

    if-nez v5, :cond_4

    .line 169
    iget-object v0, v7, Lcom/transsion/athena/hatnea/ehanat;->b:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/athena/hatnea/aatnhe;

    const-string v1, "encrypt error"

    iput-object v1, v0, Lcom/transsion/athena/hatnea/aatnhe;->d:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 170
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v7

    .line 171
    :cond_4
    :try_start_6
    invoke-virtual {v5, v4}, Lcom/transsion/athena/anateh/athena;->b([B)[B

    move-result-object v4

    invoke-static {v4, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    if-nez v4, :cond_5

    const-string v0, "requestByPost buffer is null"

    .line 172
    invoke-static {v0}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    .line 173
    iget-object v0, v7, Lcom/transsion/athena/hatnea/ehanat;->b:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/athena/hatnea/aatnhe;

    const-string v1, "base64 error"

    iput-object v1, v0, Lcom/transsion/athena/hatnea/aatnhe;->d:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 174
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v7

    .line 175
    :cond_5
    :try_start_7
    invoke-static {v4}, Lcom/transsion/athena/config/data/model/anehat;->a([B)Ljava/lang/String;

    move-result-object v5

    .line 176
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const-string v7, "md5"

    if-eqz v6, :cond_6

    :try_start_8
    const-string v5, "error"

    .line 177
    invoke-virtual {v12, v7, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 178
    :cond_6
    invoke-virtual {v12, v7, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_2
    const-string v5, "encrypt-level"

    const/4 v6, 0x3

    .line 179
    :try_start_9
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v5, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const-string v5, "encrypt-index"

    .line 180
    :try_start_a
    iget-object v3, v3, Lcom/transsion/athena/config/data/model/aethna;->b:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v6, 0x1

    add-int/2addr v3, v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v5, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " tid = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " count = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/transsion/athena/taaneh/aethna;->c(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v12}, Ljava/net/URLConnection;->connect()V

    .line 183
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v12}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 184
    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 185
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 186
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 187
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    const/16 v4, 0xc8

    const-string v5, "rc_"

    if-ne v3, v4, :cond_9

    .line 188
    :try_start_b
    invoke-virtual {v12}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/transsion/athena/config/data/model/anehat;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 189
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    const-string v6, "post tid: %s response: %s"

    :try_start_c
    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v1, v7

    const/4 v0, 0x1

    aput-object v3, v1, v0

    invoke-static {v4, v6, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/taaneh/aethna;->c(Ljava/lang/String;)V

    .line 190
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 191
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "code"

    .line 192
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    .line 193
    new-instance v0, Lcom/transsion/athena/hatnea/aatnhe;

    invoke-direct {v0}, Lcom/transsion/athena/hatnea/aatnhe;-><init>()V

    .line 194
    new-instance v1, Lcom/transsion/athena/hatnea/ehanat;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/transsion/athena/hatnea/ehanat;-><init>(ILjava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 195
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v1

    .line 196
    :cond_7
    :try_start_d
    new-instance v1, Lcom/transsion/athena/hatnea/ehanat;

    new-instance v2, Lcom/transsion/athena/hatnea/aatnhe;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/transsion/athena/hatnea/aatnhe;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v8, v2}, Lcom/transsion/athena/hatnea/ehanat;-><init>(ILjava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 197
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v1

    .line 198
    :cond_8
    :try_start_e
    new-instance v0, Lcom/transsion/athena/hatnea/ehanat;

    new-instance v1, Lcom/transsion/athena/hatnea/aatnhe;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/transsion/athena/hatnea/aatnhe;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v8, v1}, Lcom/transsion/athena/hatnea/ehanat;-><init>(ILjava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 199
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0

    .line 200
    :cond_9
    :try_start_f
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/config/data/model/anehat;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 201
    new-instance v1, Lcom/transsion/athena/hatnea/ehanat;

    new-instance v2, Lcom/transsion/athena/hatnea/aatnhe;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/transsion/athena/hatnea/aatnhe;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v8, v2}, Lcom/transsion/athena/hatnea/ehanat;-><init>(ILjava/lang/Object;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 202
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v1

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    .line 203
    :goto_3
    :try_start_10
    instance-of v1, v0, Ljava/net/UnknownHostException;

    if-eqz v1, :cond_a

    .line 204
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    goto :goto_4

    .line 205
    :cond_a
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :goto_4
    if-eqz v10, :cond_b

    .line 206
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 207
    :cond_b
    new-instance v0, Lcom/transsion/athena/hatnea/ehanat;

    new-instance v1, Lcom/transsion/athena/hatnea/aatnhe;

    invoke-direct {v1}, Lcom/transsion/athena/hatnea/aatnhe;-><init>()V

    invoke-direct {v0, v8, v1}, Lcom/transsion/athena/hatnea/ehanat;-><init>(ILjava/lang/Object;)V

    return-object v0

    :goto_5
    if-eqz v10, :cond_c

    .line 208
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 209
    :cond_c
    throw v0
.end method

.method static a(Ljava/lang/String;)Lcom/transsion/athena/hatnea/ehanat;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/transsion/athena/hatnea/ehanat<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 61
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/net/URLConnection;

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 63
    :try_start_1
    instance-of v0, p0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_1

    .line 64
    sget-object v0, Lcom/transsion/athena/hatnea/anehat;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    .line 65
    invoke-static {}, Lcom/transsion/athena/ehanat/athena;->a()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    sput-object v0, Lcom/transsion/athena/hatnea/anehat;->a:Ljavax/net/ssl/SSLSocketFactory;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    .line 67
    :cond_0
    :goto_0
    sget-object v0, Lcom/transsion/athena/hatnea/anehat;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_1

    .line 68
    move-object v1, p0

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 69
    move-object v0, p0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    sget-object v1, Lcom/transsion/athena/ehanat/athena;->a:Lcom/transsion/athena/ehanat/athena$aethna;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :cond_1
    const/16 v0, 0x2710

    .line 70
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 71
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 72
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_3

    const/16 v1, 0x190

    if-ge v0, v1, :cond_3

    .line 73
    new-instance v0, Lcom/transsion/athena/hatnea/ehanat;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getDate()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/transsion/athena/hatnea/ehanat;-><init>(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
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

    .line 75
    :goto_1
    :try_start_2
    instance-of v1, v0, Ljava/net/UnknownHostException;

    if-eqz v1, :cond_2

    .line 76
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 77
    :cond_2
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    if-eqz p0, :cond_4

    .line 78
    :cond_3
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 79
    :cond_4
    new-instance p0, Lcom/transsion/athena/hatnea/ehanat;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Lcom/transsion/athena/hatnea/ehanat;-><init>(ILjava/lang/Object;)V

    return-object p0

    :goto_3
    if-eqz p0, :cond_5

    .line 80
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 81
    :cond_5
    throw v0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;J)Lcom/transsion/athena/hatnea/ehanat;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)",
            "Lcom/transsion/athena/hatnea/ehanat<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "AES"

    .line 1
    invoke-static {v4}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v4

    const/16 v5, 0x80

    .line 2
    invoke-virtual {v4, v5}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 3
    invoke-virtual {v4}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v4

    .line 4
    invoke-interface {v4}, Ljava/security/Key;->getEncoded()[B

    move-result-object v4

    .line 5
    invoke-static {v4}, Lcom/transsion/athena/config/data/model/anehat;->c([B)Ljava/lang/String;

    move-result-object v4

    .line 6
    new-instance v5, Lcom/transsion/athena/anateh/athena;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/transsion/athena/anateh/athena;-><init>([B)V

    .line 7
    invoke-virtual {v5, p1}, Lcom/transsion/athena/anateh/athena;->a(Ljava/lang/String;)[B

    move-result-object v6

    .line 8
    new-instance v7, Lrp/a;

    const-string v8, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEArNrm4jErOdstd1P5L1X/\nCGSS6NKf4glPrFbTM97aE9ZKGUiMALIV8W7FClAgLZdtTZkL5XEQdbX4RB/C6edc\nnN2ifla6sVu23y78FMiL6smp9ayE7Y3gSEfB3md4nvEUpyRUu4wYLIf9nVR36okK\nGCerxYdLtDbJ69Rux4lgE5C9a6qLfV6BzjJYONk/vQhGQYT6qes+TFtXV0hvF8UM\nDG+0GfA3MiQue/Ny8uIPBykDPS1dcIADzVos2fXs/o2aFTrkdVjiX8irwYBze69K\nzFx18H12iZ9gG1VztMbHetvImBoXeCOwjTc5RnGIz+Hya96pxJLK2DcSlAaHEs1H\nOQIDAQAB"

    invoke-direct {v7, v8}, Lrp/a;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v7, v4}, Lrp/a;->d(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v7, 0x2

    invoke-static {v4, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 10
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 11
    new-instance v6, Ljava/net/URL;

    invoke-static {p0, v1}, Lcom/transsion/gslb/GslbSdk;->getDomain(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    invoke-static {v8}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/URLConnection;

    check-cast v8, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    :try_start_1
    instance-of v9, v8, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v9, :cond_1

    .line 14
    sget-object v9, Lcom/transsion/athena/hatnea/anehat;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v9, :cond_0

    .line 15
    invoke-static {}, Lcom/transsion/athena/ehanat/athena;->a()Ljavax/net/ssl/SSLContext;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 16
    invoke-virtual {v9}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v9

    sput-object v9, Lcom/transsion/athena/hatnea/anehat;->a:Ljavax/net/ssl/SSLSocketFactory;

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v3, v8

    goto/16 :goto_5

    :catch_0
    move-exception p0

    move-object v3, v8

    goto/16 :goto_3

    .line 17
    :cond_0
    :goto_0
    sget-object v9, Lcom/transsion/athena/hatnea/anehat;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v9, :cond_1

    .line 18
    move-object v10, v8

    check-cast v10, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v10, v9}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 19
    move-object v9, v8

    check-cast v9, Ljavax/net/ssl/HttpsURLConnection;

    sget-object v10, Lcom/transsion/athena/ehanat/athena;->a:Lcom/transsion/athena/ehanat/athena$aethna;

    invoke-virtual {v9, v10}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :cond_1
    const-string v9, "accept"

    const-string v10, "*/*"

    .line 20
    invoke-virtual {v8, v9, v10}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v9, "Content-Length"

    .line 21
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "encrypt-level"

    const-string v10, "2"

    .line 22
    invoke-virtual {v8, v9, v10}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v9, "ver"

    .line 23
    :try_start_3
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "vn"

    const-string v10, "1"

    .line 24
    invoke-virtual {v8, v9, v10}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "POST"

    .line 25
    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v9, 0x4e20

    .line 26
    invoke-virtual {v8, v9}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/16 v9, 0x7530

    .line 27
    invoke-virtual {v8, v9}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 28
    invoke-virtual {v8, v1}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 29
    invoke-virtual {v8, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 30
    new-instance v9, Ljava/io/PrintWriter;

    invoke-virtual {v8}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 31
    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v9}, Ljava/io/PrintWriter;->flush()V

    .line 33
    invoke-virtual {v9}, Ljava/io/PrintWriter;->close()V

    .line 34
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 35
    :try_start_4
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    const-string v10, "url"

    .line 36
    invoke-virtual {v9, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "params"

    .line 37
    invoke-virtual {v9, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "version"

    .line 38
    invoke-virtual {v9, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "code"

    .line 39
    invoke-virtual {v9, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string p1, "--> request config:%s"

    .line 40
    :try_start_5
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 41
    new-array p3, v1, [Ljava/lang/Object;

    aput-object p2, p3, v0

    invoke-static {p1, p3}, Lcom/transsion/athena/taaneh/aethna;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_1
    move-exception p1

    const-string p2, "print request config exception:%s"

    .line 42
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p1, p3, v0

    invoke-static {p2, p3}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    const/16 p1, 0xc8

    if-ne v4, p1, :cond_5

    .line 43
    invoke-virtual {v8}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/athena/config/data/model/anehat;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "{}"

    .line 44
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 45
    new-instance p0, Lcom/transsion/athena/hatnea/ehanat;

    invoke-direct {p0, v1, v3}, Lcom/transsion/athena/hatnea/ehanat;-><init>(ILjava/lang/Object;)V

    goto :goto_4

    .line 46
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 47
    new-instance p0, Lcom/transsion/athena/hatnea/ehanat;

    invoke-direct {p0, v2, v3}, Lcom/transsion/athena/hatnea/ehanat;-><init>(ILjava/lang/Object;)V

    goto :goto_4

    :cond_3
    const-string p2, "secret"

    .line 48
    invoke-virtual {p0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 49
    invoke-static {p1, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-virtual {v5, p0}, Lcom/transsion/athena/anateh/athena;->a([B)[B

    move-result-object p0

    .line 50
    new-instance p1, Ljava/lang/String;

    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_2

    .line 51
    :cond_4
    invoke-static {p1, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-virtual {v5, p0}, Lcom/transsion/athena/anateh/athena;->a([B)[B

    move-result-object p0

    .line 52
    invoke-static {p0}, Lcom/transsion/athena/config/data/model/anehat;->d([B)[B

    move-result-object p0

    .line 53
    new-instance p1, Ljava/lang/String;

    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 54
    :goto_2
    new-instance p0, Lcom/transsion/athena/hatnea/ehanat;

    invoke-direct {p0, v0, p1}, Lcom/transsion/athena/hatnea/ehanat;-><init>(ILjava/lang/Object;)V

    goto :goto_4

    .line 55
    :cond_5
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/athena/config/data/model/anehat;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    .line 56
    new-instance p1, Lcom/transsion/athena/hatnea/ehanat;

    invoke-direct {p1, v2, p0}, Lcom/transsion/athena/hatnea/ehanat;-><init>(ILjava/lang/Object;)V
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

    .line 57
    :goto_3
    :try_start_7
    new-instance p1, Lcom/transsion/athena/hatnea/ehanat;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v2, p0}, Lcom/transsion/athena/hatnea/ehanat;-><init>(ILjava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v3, :cond_6

    move-object p0, p1

    move-object v8, v3

    .line 58
    :goto_4
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object p1, p0

    :cond_6
    return-object p1

    :goto_5
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 59
    :cond_7
    throw p0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;JI)Lcom/transsion/athena/hatnea/ehanat;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JI)",
            "Lcom/transsion/athena/hatnea/ehanat<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 82
    new-instance v2, Lcom/transsion/athena/hatnea/ehanat;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/transsion/athena/hatnea/ehanat;-><init>(ILjava/lang/Object;)V

    .line 83
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-static {p0, v1}, Lcom/transsion/gslb/GslbSdk;->getDomain(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/net/URLConnection;

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 85
    :try_start_1
    instance-of v6, p0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v6, :cond_1

    .line 86
    sget-object v6, Lcom/transsion/athena/hatnea/anehat;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v6, :cond_0

    .line 87
    invoke-static {}, Lcom/transsion/athena/ehanat/athena;->a()Ljavax/net/ssl/SSLContext;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 88
    invoke-virtual {v6}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v6

    sput-object v6, Lcom/transsion/athena/hatnea/anehat;->a:Ljavax/net/ssl/SSLSocketFactory;

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v4, p0

    goto/16 :goto_4

    :catch_0
    move-exception p1

    move-object v4, p0

    goto/16 :goto_2

    .line 89
    :cond_0
    :goto_0
    sget-object v6, Lcom/transsion/athena/hatnea/anehat;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v6, :cond_1

    .line 90
    move-object v7, p0

    check-cast v7, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v7, v6}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 91
    move-object v6, p0

    check-cast v6, Ljavax/net/ssl/HttpsURLConnection;

    sget-object v7, Lcom/transsion/athena/ehanat/athena;->a:Lcom/transsion/athena/ehanat/athena$aethna;

    invoke-virtual {v6, v7}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 92
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 93
    invoke-static {}, Lcom/transsion/athena/aethna/athena;->c()Lcom/transsion/athena/aethna/athena;

    move-result-object v7

    invoke-virtual {v7}, Lcom/transsion/athena/aethna/athena;->i()Landroid/util/Pair;

    move-result-object v7

    .line 94
    iget-object v8, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, [B

    invoke-static {v8}, Lcom/transsion/athena/hatnea/anehat;->a([B)Lcom/transsion/athena/anateh/athena;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v8, :cond_3

    if-eqz p0, :cond_2

    .line 95
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    return-object v2

    .line 96
    :cond_3
    :try_start_2
    invoke-virtual {v8, v6}, Lcom/transsion/athena/anateh/athena;->b([B)[B

    move-result-object v2

    const/4 v6, 0x2

    invoke-static {v2, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v8, "index"

    .line 97
    :try_start_3
    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v8, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "accept"

    const-string v8, "*/*"

    .line 98
    invoke-virtual {p0, v7, v8}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v7, "Content-Length"

    .line 99
    :try_start_4
    array-length v8, v2

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v7, "ver"

    .line 100
    :try_start_5
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "vn"

    const-string v8, "1"

    .line 101
    invoke-virtual {p0, v7, v8}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v7, "app"

    .line 102
    :try_start_6
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, v7, p4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-string p4, "model"

    .line 103
    :try_start_7
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, p4, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "POST"

    .line 104
    invoke-virtual {p0, p4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 p4, 0x4e20

    .line 105
    invoke-virtual {p0, p4}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/16 p4, 0x7530

    .line 106
    invoke-virtual {p0, p4}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 107
    invoke-virtual {p0, v1}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 108
    invoke-virtual {p0, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 109
    new-instance p4, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {p4, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 110
    invoke-virtual {p4, v2}, Ljava/io/OutputStream;->write([B)V

    .line 111
    invoke-virtual {p4}, Ljava/io/DataOutputStream;->flush()V

    .line 112
    invoke-virtual {p4}, Ljava/io/OutputStream;->close()V

    .line 113
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 114
    :try_start_8
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "url"

    .line 115
    invoke-virtual {v2, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "params"

    .line 116
    invoke-virtual {v2, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "version"

    .line 117
    invoke-virtual {v2, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "code"

    .line 118
    invoke-virtual {v2, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const-string p1, "--> request config:%s"

    .line 119
    :try_start_9
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 120
    new-array p3, v1, [Ljava/lang/Object;

    aput-object p2, p3, v0

    invoke-static {p1, p3}, Lcom/transsion/athena/taaneh/aethna;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    :catch_1
    move-exception p1

    const-string p2, "print request config exception:%s"

    .line 121
    :try_start_a
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p1, p3, v0

    invoke-static {p2, p3}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    const/16 p1, 0xc8

    if-ne p4, p1, :cond_6

    .line 122
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/athena/config/data/model/anehat;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "{}"

    .line 123
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 124
    new-instance p1, Lcom/transsion/athena/hatnea/ehanat;

    invoke-direct {p1, v1, v4}, Lcom/transsion/athena/hatnea/ehanat;-><init>(ILjava/lang/Object;)V

    goto :goto_3

    .line 125
    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 126
    new-instance p1, Lcom/transsion/athena/hatnea/ehanat;

    invoke-direct {p1, v3, v4}, Lcom/transsion/athena/hatnea/ehanat;-><init>(ILjava/lang/Object;)V

    goto :goto_3

    .line 127
    :cond_5
    invoke-static {p1, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 128
    invoke-static {p1}, Lcom/transsion/athena/config/data/model/anehat;->d([B)[B

    move-result-object p1

    .line 129
    new-instance p2, Ljava/lang/String;

    sget-object p3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p2, p1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 130
    new-instance p1, Lcom/transsion/athena/hatnea/ehanat;

    invoke-direct {p1, v0, p2}, Lcom/transsion/athena/hatnea/ehanat;-><init>(ILjava/lang/Object;)V

    goto :goto_3

    .line 131
    :cond_6
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/athena/config/data/model/anehat;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    .line 132
    new-instance p2, Lcom/transsion/athena/hatnea/ehanat;

    invoke-direct {p2, v3, p1}, Lcom/transsion/athena/hatnea/ehanat;-><init>(ILjava/lang/Object;)V
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

    .line 133
    :goto_2
    :try_start_b
    new-instance p0, Lcom/transsion/athena/hatnea/ehanat;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/transsion/athena/hatnea/ehanat;-><init>(ILjava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v4, :cond_7

    move-object p1, p0

    move-object p0, v4

    .line 134
    :goto_3
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object p0, p1

    :cond_7
    return-object p0

    :goto_4
    if-eqz v4, :cond_8

    .line 135
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 136
    :cond_8
    throw p1
.end method

.method static a(Ljava/lang/String;[BILjava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/hatnea/ehanat;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[BI",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/transsion/athena/hatnea/ehanat<",
            "Lcom/transsion/athena/hatnea/aatnhe;",
            ">;"
        }
    .end annotation

    .line 210
    const-string v0, "ver"

    const-string v1, "1"

    new-instance v2, Lcom/transsion/athena/hatnea/ehanat;

    new-instance v3, Lcom/transsion/athena/hatnea/aatnhe;

    const-string v4, "sdk_error"

    invoke-direct {v3, v4}, Lcom/transsion/athena/hatnea/aatnhe;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x2

    invoke-direct {v2, v4, v3}, Lcom/transsion/athena/hatnea/ehanat;-><init>(ILjava/lang/Object;)V

    const/4 v3, -0x1

    const/4 v5, 0x0

    .line 211
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/net/URLConnection;

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 213
    :try_start_1
    instance-of v5, p0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v5, :cond_1

    .line 214
    sget-object v5, Lcom/transsion/athena/hatnea/anehat;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v5, :cond_0

    .line 215
    invoke-static {}, Lcom/transsion/athena/ehanat/athena;->a()Ljavax/net/ssl/SSLContext;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 216
    invoke-virtual {v5}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    sput-object v5, Lcom/transsion/athena/hatnea/anehat;->a:Ljavax/net/ssl/SSLSocketFactory;

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v5, p0

    goto/16 :goto_3

    :catch_0
    move-exception p1

    move-object v5, p0

    goto/16 :goto_2

    .line 217
    :cond_0
    :goto_0
    sget-object v5, Lcom/transsion/athena/hatnea/anehat;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v5, :cond_1

    .line 218
    move-object v6, p0

    check-cast v6, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v6, v5}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 219
    move-object v5, p0

    check-cast v5, Ljavax/net/ssl/HttpsURLConnection;

    sget-object v6, Lcom/transsion/athena/ehanat/athena;->a:Lcom/transsion/athena/ehanat/athena$aethna;

    invoke-virtual {v5, v6}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :cond_1
    const/16 v5, 0x4e20

    .line 220
    invoke-virtual {p0, v5}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/16 v5, 0x7530

    .line 221
    invoke-virtual {p0, v5}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/4 v5, 0x1

    .line 222
    invoke-virtual {p0, v5}, Ljava/net/URLConnection;->setDoOutput(Z)V

    const/4 v6, 0x0

    .line 223
    invoke-virtual {p0, v6}, Ljava/net/URLConnection;->setUseCaches(Z)V

    const-string v7, "POST"

    .line 224
    invoke-virtual {p0, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 226
    array-length v7, p1

    const-string v7, "Accept-Encoding"

    const-string v8, "gzip, deflate"

    .line 227
    invoke-virtual {p0, v7, v8}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "zip"

    .line 228
    invoke-virtual {p0, v7, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-static {p1}, Lcom/transsion/athena/config/data/model/anehat;->b([B)[B

    move-result-object p1

    const-string v7, "fixed"

    .line 230
    invoke-virtual {p0, v7, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v1, "count"

    .line 231
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

    .line 232
    invoke-static {p3, v7}, Lcom/transsion/athena/config/data/model/anehat;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, v1, p3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "3.1.1.4"

    .line 233
    invoke-virtual {p0, v0, p3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "uuid"

    .line 234
    invoke-virtual {p0, p3, p4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "dupid"

    .line 235
    invoke-virtual {p0, p3, p5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-static {}, Lcom/transsion/athena/aethna/athena;->c()Lcom/transsion/athena/aethna/athena;

    move-result-object p3

    invoke-virtual {p3}, Lcom/transsion/athena/aethna/athena;->i()Landroid/util/Pair;

    move-result-object p3

    .line 237
    iget-object p4, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p4, [B

    invoke-static {p4}, Lcom/transsion/athena/hatnea/anehat;->a([B)Lcom/transsion/athena/anateh/athena;

    move-result-object p4

    if-nez p4, :cond_2

    .line 238
    iget-object p1, v2, Lcom/transsion/athena/hatnea/ehanat;->b:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/athena/hatnea/aatnhe;

    const-string p2, "encrypt error"

    iput-object p2, p1, Lcom/transsion/athena/hatnea/aatnhe;->d:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 239
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v2

    .line 240
    :cond_2
    :try_start_4
    invoke-virtual {p4, p1}, Lcom/transsion/athena/anateh/athena;->b([B)[B

    move-result-object p1

    invoke-static {p1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    if-nez p1, :cond_3

    const-string p1, "requestByPost buffer is null"

    .line 241
    invoke-static {p1}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    .line 242
    iget-object p1, v2, Lcom/transsion/athena/hatnea/ehanat;->b:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/athena/hatnea/aatnhe;

    const-string p2, "base64 error"

    iput-object p2, p1, Lcom/transsion/athena/hatnea/aatnhe;->d:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 243
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v2

    :cond_3
    :try_start_5
    const-string p4, "encrypt-level"

    const-string p5, "3"

    .line 244
    invoke-virtual {p0, p4, p5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string p4, "encrypt-index"

    .line 245
    :try_start_6
    iget-object p3, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    add-int/2addr p3, v5

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p4, p3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Ljava/net/URLConnection;->connect()V

    .line 247
    new-instance p3, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p4

    invoke-direct {p3, p4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 248
    invoke-virtual {p3, p1}, Ljava/io/OutputStream;->write([B)V

    .line 249
    invoke-virtual {p3}, Ljava/io/DataOutputStream;->flush()V

    .line 250
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V

    .line 251
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/16 p3, 0xc8

    const-string p4, "rc_"

    if-ne p1, p3, :cond_9

    .line 252
    :try_start_7
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/athena/config/data/model/anehat;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    .line 253
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_8

    .line 254
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    .line 255
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const-string p3, "message"

    const-string p5, ""

    .line 256
    invoke-virtual {p2, p3, p5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 257
    new-instance p5, Lcom/transsion/athena/hatnea/aatnhe;

    invoke-direct {p5}, Lcom/transsion/athena/hatnea/aatnhe;-><init>()V

    .line 258
    iput p1, p5, Lcom/transsion/athena/hatnea/aatnhe;->a:I

    .line 259
    iput-object p3, p5, Lcom/transsion/athena/hatnea/aatnhe;->b:Ljava/lang/String;

    if-nez p1, :cond_7

    const-string p1, "app"

    .line 260
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 261
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p2

    .line 262
    :cond_4
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 263
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 264
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p4

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 265
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p4

    const-string v4, "type"

    invoke-virtual {p4, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p4

    if-eqz p4, :cond_4

    .line 266
    new-instance v4, Lcom/transsion/athena/hatnea/aatnhe$athena;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-direct {v4, p3, p4, v1, v2}, Lcom/transsion/athena/hatnea/aatnhe$athena;-><init>(IIJ)V

    .line 267
    iget-object p3, p5, Lcom/transsion/athena/hatnea/aatnhe;->c:Ljava/util/List;

    if-nez p3, :cond_5

    .line 268
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p5, Lcom/transsion/athena/hatnea/aatnhe;->c:Ljava/util/List;

    .line 269
    :cond_5
    iget-object p3, p5, Lcom/transsion/athena/hatnea/aatnhe;->c:Ljava/util/List;

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 270
    :cond_6
    new-instance p1, Lcom/transsion/athena/hatnea/ehanat;

    invoke-direct {p1, v6, p5}, Lcom/transsion/athena/hatnea/ehanat;-><init>(ILjava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 271
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p1

    .line 272
    :cond_7
    :try_start_8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p5, Lcom/transsion/athena/hatnea/aatnhe;->d:Ljava/lang/String;

    .line 273
    new-instance p1, Lcom/transsion/athena/hatnea/ehanat;

    invoke-direct {p1, v3, p5}, Lcom/transsion/athena/hatnea/ehanat;-><init>(ILjava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 274
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p1

    .line 275
    :cond_8
    :try_start_9
    new-instance p1, Lcom/transsion/athena/hatnea/ehanat;

    new-instance p3, Lcom/transsion/athena/hatnea/aatnhe;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2}, Lcom/transsion/athena/hatnea/aatnhe;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v3, p3}, Lcom/transsion/athena/hatnea/ehanat;-><init>(ILjava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 276
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p1

    .line 277
    :cond_9
    :try_start_a
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/athena/config/data/model/anehat;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    .line 278
    new-instance p2, Lcom/transsion/athena/hatnea/ehanat;

    new-instance p3, Lcom/transsion/athena/hatnea/aatnhe;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/transsion/athena/hatnea/aatnhe;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, v3, p3}, Lcom/transsion/athena/hatnea/ehanat;-><init>(ILjava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 279
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p2

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 280
    :goto_2
    :try_start_b
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v5, :cond_a

    .line 281
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 282
    :cond_a
    new-instance p0, Lcom/transsion/athena/hatnea/ehanat;

    new-instance p1, Lcom/transsion/athena/hatnea/aatnhe;

    invoke-direct {p1}, Lcom/transsion/athena/hatnea/aatnhe;-><init>()V

    invoke-direct {p0, v3, p1}, Lcom/transsion/athena/hatnea/ehanat;-><init>(ILjava/lang/Object;)V

    return-object p0

    :goto_3
    if-eqz v5, :cond_b

    .line 283
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 284
    :cond_b
    throw p1
.end method
