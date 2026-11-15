.class public Lcom/transsion/log/common/SendLogDefaultRunnable;
.super Lcom/transsion/log/common/SendLogRunnable;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SendLogDefaultRunnable"


# instance fields
.field private final mRequestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSendLogCallback:Lcc9;

.field private mUploadLogUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/log/common/SendLogRunnable;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/log/common/SendLogDefaultRunnable;->mRequestHeaders:Ljava/util/Map;

    return-void
.end method

.method private doPostRequest(Ljava/lang/String;Ljava/io/InputStream;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x800

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, -0x1

    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_12
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_f
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    instance-of v4, p1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v4, :cond_0

    move-object v4, p1

    check-cast v4, Ljavax/net/ssl/HttpsURLConnection;

    new-instance v5, Lcom/transsion/log/common/SendLogDefaultRunnable$a;

    invoke-direct {v5, p0}, Lcom/transsion/log/common/SendLogDefaultRunnable$a;-><init>(Lcom/transsion/log/common/SendLogDefaultRunnable;)V

    invoke-virtual {v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object p3, p1

    move-object p1, v2

    goto/16 :goto_5

    :catch_0
    move-object p0, v2

    goto/16 :goto_6

    :catch_1
    move-object p0, v2

    goto/16 :goto_8

    :catch_2
    move-object p0, v2

    goto/16 :goto_9

    :catch_3
    move-object p0, v2

    goto/16 :goto_a

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, v4, p3}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/16 p0, 0x3a98

    invoke-virtual {p1, p0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {p1, p0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Ljava/net/URLConnection;->setDoInput(Z)V

    invoke-virtual {p1, p0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    const-string p0, "POST"

    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0
    :try_end_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance p3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p3, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_2
    :try_start_3
    invoke-virtual {p2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v4, 0x0

    if-eq v0, v3, :cond_2

    invoke-virtual {p3, v1, v4, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto/16 :goto_4

    :cond_2
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p3
    :try_end_4
    .catch Ljava/net/ProtocolException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    div-int/lit8 v0, p3, 0x64

    const/4 v5, 0x2

    if-ne v0, v5, :cond_4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    :goto_3
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-eq v5, v3, :cond_3

    invoke-virtual {v0, v1, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3

    :catchall_2
    move-exception p3

    move-object v6, v2

    move-object v2, p0

    move-object p0, p3

    move-object p3, p1

    move-object p1, v6

    goto/16 :goto_5

    :catch_4
    move v3, p3

    :catch_5
    move-object v6, v2

    move-object v2, p0

    move-object p0, v6

    goto/16 :goto_6

    :catch_6
    move v3, p3

    :catch_7
    move-object v6, v2

    move-object v2, p0

    move-object p0, v6

    goto/16 :goto_8

    :catch_8
    move v3, p3

    :catch_9
    move-object v6, v2

    move-object v2, p0

    move-object p0, v6

    goto/16 :goto_9

    :catch_a
    move v3, p3

    :catch_b
    move-object v6, v2

    move-object v2, p0

    move-object p0, v6

    goto/16 :goto_a

    :cond_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_5
    .catch Ljava/net/ProtocolException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_4
    :try_start_6
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_c

    :catch_c
    if-eqz v2, :cond_5

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_d

    :catch_d
    :cond_5
    :try_start_8
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_e

    :catch_e
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_b

    :goto_4
    :try_start_9
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->close()V

    throw v0
    :try_end_9
    .catch Ljava/net/ProtocolException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_3
    move-exception p0

    move-object p1, v2

    move-object p3, p1

    goto :goto_5

    :catch_f
    move-object p0, v2

    move-object p1, p0

    goto :goto_6

    :catch_10
    move-object p0, v2

    move-object p1, p0

    goto :goto_8

    :catch_11
    move-object p0, v2

    move-object p1, p0

    goto :goto_9

    :catch_12
    move-object p0, v2

    move-object p1, p0

    goto :goto_a

    :goto_5
    if-eqz v2, :cond_6

    :try_start_a
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_13

    :catch_13
    :cond_6
    if-eqz p1, :cond_7

    :try_start_b
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_14

    :catch_14
    :cond_7
    if-eqz p2, :cond_8

    :try_start_c
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_15

    :catch_15
    :cond_8
    if-eqz p3, :cond_9

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    throw p0

    :goto_6
    if-eqz v2, :cond_a

    :try_start_d
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_16

    :catch_16
    :cond_a
    if-eqz p0, :cond_b

    :try_start_e
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_17

    :catch_17
    :cond_b
    if-eqz p2, :cond_c

    :try_start_f
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_18

    :catch_18
    :cond_c
    if-eqz p1, :cond_d

    :goto_7
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_d
    move p3, v3

    goto :goto_b

    :goto_8
    if-eqz v2, :cond_e

    :try_start_10
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_19

    :catch_19
    :cond_e
    if-eqz p0, :cond_f

    :try_start_11
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1a

    :catch_1a
    :cond_f
    if-eqz p2, :cond_10

    :try_start_12
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1b

    :catch_1b
    :cond_10
    if-eqz p1, :cond_d

    goto :goto_7

    :goto_9
    if-eqz v2, :cond_11

    :try_start_13
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_1c

    :catch_1c
    :cond_11
    if-eqz p0, :cond_12

    :try_start_14
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_1d

    :catch_1d
    :cond_12
    if-eqz p2, :cond_13

    :try_start_15
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_1e

    :catch_1e
    :cond_13
    if-eqz p1, :cond_d

    goto :goto_7

    :goto_a
    if-eqz v2, :cond_14

    :try_start_16
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_1f

    :catch_1f
    :cond_14
    if-eqz p0, :cond_15

    :try_start_17
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_20

    :catch_20
    :cond_15
    if-eqz p2, :cond_16

    :try_start_18
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_21

    :catch_21
    :cond_16
    if-eqz p1, :cond_d

    goto :goto_7

    :goto_b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "log send completed, http statusCode : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SendLogDefaultRunnable"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private doSendFileByAction(Ljava/io/File;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, p3, v0, p2}, Lcom/transsion/log/common/SendLogDefaultRunnable;->doPostRequest(Ljava/lang/String;Ljava/io/InputStream;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public sendLog(Ljava/io/File;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/log/common/SendLogDefaultRunnable;->mRequestHeaders:Ljava/util/Map;

    iget-object v1, p0, Lcom/transsion/log/common/SendLogDefaultRunnable;->mUploadLogUrl:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/log/common/SendLogDefaultRunnable;->doSendFileByAction(Ljava/io/File;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/log/common/SendLogRunnable;->finish()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, ".copy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public setRequestHeader(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/log/common/SendLogDefaultRunnable;->mRequestHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/log/common/SendLogDefaultRunnable;->mRequestHeaders:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public setSendLogCallback(Lcc9;)V
    .locals 0

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/log/common/SendLogDefaultRunnable;->mUploadLogUrl:Ljava/lang/String;

    return-void
.end method
