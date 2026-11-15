.class public Lcom/hunantv/imgo/log/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/imgo/log/b/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/imgo/log/b/e$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static d:Lcom/hunantv/imgo/log/b/e;


# instance fields
.field private b:J

.field private c:Lcom/hunantv/imgo/log/entity/ReportParamsData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/hunantv/imgo/net/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/mobile/report"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hunantv/imgo/log/b/e;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/hunantv/imgo/log/b/e;
    .locals 2

    .line 4
    sget-object v0, Lcom/hunantv/imgo/log/b/e;->d:Lcom/hunantv/imgo/log/b/e;

    if-nez v0, :cond_1

    .line 5
    const-class v0, Lcom/hunantv/imgo/log/b/e;

    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Lcom/hunantv/imgo/log/b/e;->d:Lcom/hunantv/imgo/log/b/e;

    if-nez v1, :cond_0

    .line 7
    new-instance v1, Lcom/hunantv/imgo/log/b/e;

    invoke-direct {v1}, Lcom/hunantv/imgo/log/b/e;-><init>()V

    sput-object v1, Lcom/hunantv/imgo/log/b/e;->d:Lcom/hunantv/imgo/log/b/e;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 8
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 9
    :cond_1
    :goto_2
    sget-object v0, Lcom/hunantv/imgo/log/b/e;->d:Lcom/hunantv/imgo/log/b/e;

    return-object v0
.end method

.method public static synthetic a(Lcom/hunantv/imgo/log/b/e;)Lcom/hunantv/imgo/log/entity/ReportParamsData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hunantv/imgo/log/b/e;->c:Lcom/hunantv/imgo/log/entity/ReportParamsData;

    return-object p0
.end method

.method private a(Ljava/io/File;)Lcom/hunantv/imgo/log/entity/ReportParamsData;
    .locals 2

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    .line 30
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".report"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    new-array v0, v0, [B

    .line 32
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 33
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 34
    invoke-static {v0}, Lcom/hunantv/imgo/log/entity/ReportParamsData;->a([B)Lcom/hunantv/imgo/log/entity/ReportParamsData;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    goto :goto_1

    :catch_2
    move-exception p1

    move-object v1, p0

    .line 37
    :goto_0
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_1

    .line 38
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :goto_1
    if-eqz v1, :cond_0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    :cond_0
    :goto_2
    throw p0

    :cond_1
    :goto_3
    return-object p0
.end method

.method public static synthetic a(Lcom/hunantv/imgo/log/b/e;Lcom/hunantv/imgo/log/entity/ReportParamsData;)Lokhttp3/Response;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/hunantv/imgo/log/b/e;->b(Lcom/hunantv/imgo/log/entity/ReportParamsData;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/hunantv/imgo/log/b/e;Lokhttp3/Response;)Z
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/hunantv/imgo/log/b/e;->a(Lokhttp3/Response;)Z

    move-result p0

    return p0
.end method

.method private a(Lokhttp3/Response;)Z
    .locals 3

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    .line 24
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    .line 25
    const-string v0, "ReportRequestHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "repost response = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/imgo/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 27
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 28
    const-string p1, "err_code"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    const/16 v0, 0x190

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return p0
.end method

.method private b(Lcom/hunantv/imgo/log/entity/ReportParamsData;)Lokhttp3/Response;
    .locals 6

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/hunantv/imgo/log/entity/ReportParamsData;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/hunantv/imgo/log/entity/ReportParamsData;->a()Lcom/mgtv/task/http/MultiParts;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/hunantv/imgo/log/entity/ReportParamsData;->c()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz p1, :cond_1

    if-eqz v2, :cond_1

    .line 8
    const-string p1, "appLog"

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/hunantv/imgo/util/x;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v2, v3, v1}, Lcom/mgtv/task/http/MultiParts;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/mgtv/task/http/MultiParts;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 9
    :cond_1
    :goto_0
    new-instance p1, Lcom/hunantv/imgo/net/ImgoHttpParams;

    const-string v1, "post"

    invoke-direct {p1, v1}, Lcom/hunantv/imgo/net/ImgoHttpParams;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1, v0}, Lcom/mgtv/task/http/HttpParams;->setMultiParts(Lcom/mgtv/task/http/MultiParts;)Lcom/mgtv/task/http/HttpParams;

    .line 11
    invoke-static {}, Lcom/mgtv/task/http/d;->a()Lokhttp3/OkHttpClient;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 12
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    sget-object v2, Lcom/hunantv/imgo/log/b/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 13
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v3, 0x493e0

    invoke-virtual {p1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v5

    invoke-virtual {v5, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 14
    new-instance v2, Lokhttp3/MultipartBody$Builder;

    invoke-virtual {v0}, Lcom/mgtv/task/http/MultiParts;->getBoundary()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lokhttp3/MultipartBody$Builder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0, v2}, Lcom/mgtv/task/http/MultiParts;->writeTo(Lokhttp3/MultipartBody$Builder;)V

    .line 16
    invoke-virtual {v2}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v0

    invoke-virtual {v1, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 17
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    .line 18
    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 19
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    return-object p0
.end method

.method public static synthetic b(Lcom/hunantv/imgo/log/b/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hunantv/imgo/log/b/e;->e()V

    return-void
.end method

.method public static synthetic b(Lcom/hunantv/imgo/log/b/e;Lcom/hunantv/imgo/log/entity/ReportParamsData;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/hunantv/imgo/log/b/e;->c(Lcom/hunantv/imgo/log/entity/ReportParamsData;)V

    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 1

    .line 4
    sget-object p0, Lcom/hunantv/imgo/log/c;->b:Ljava/lang/String;

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/report/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static synthetic c(Lcom/hunantv/imgo/log/b/e;Lcom/hunantv/imgo/log/entity/ReportParamsData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hunantv/imgo/log/b/e;->e(Lcom/hunantv/imgo/log/entity/ReportParamsData;)V

    return-void
.end method

.method private c(Lcom/hunantv/imgo/log/entity/ReportParamsData;)V
    .locals 2

    .line 2
    const-string v0, "ReportRequestHandler"

    const-string v1, "ReportRequestHandler failed"

    invoke-static {v0, v1}, Lcom/hunantv/imgo/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/hunantv/imgo/log/b/e;->d(Lcom/hunantv/imgo/log/entity/ReportParamsData;)V

    return-void
.end method

.method private d()Ljava/io/File;
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/hunantv/imgo/log/b/e;->c()Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x5

    if-ge v0, v1, :cond_3

    .line 9
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM-dd-HH-mm-ss-"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 10
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 11
    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide v5, 0x408f400000000000L    # 1000.0

    mul-double/2addr v3, v5

    int-to-double v5, v0

    add-double/2addr v3, v5

    double-to-int v1, v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".report"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 15
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_2
    return-object v2
.end method

.method private d(Lcom/hunantv/imgo/log/entity/ReportParamsData;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 17
    :cond_0
    invoke-direct {p0}, Lcom/hunantv/imgo/log/b/e;->d()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 18
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 19
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    :try_start_1
    invoke-virtual {p1}, Lcom/hunantv/imgo/log/entity/ReportParamsData;->b()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 21
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    .line 22
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_2

    .line 23
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    .line 24
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :goto_1
    if-eqz v0, :cond_1

    .line 25
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    :cond_1
    :goto_2
    throw p0

    :cond_2
    :goto_3
    return-void
.end method

.method private e()V
    .locals 8

    .line 1
    const-string v0, "startCheck"

    const-string v1, "ReportRequestHandler"

    invoke-static {v1, v0}, Lcom/hunantv/imgo/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/hunantv/imgo/log/b/e;->c()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_4

    .line 6
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v2, 0x0

    .line 7
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_8

    .line 8
    aget-object v3, v0, v2

    invoke-direct {p0, v3}, Lcom/hunantv/imgo/log/b/e;->a(Ljava/io/File;)Lcom/hunantv/imgo/log/entity/ReportParamsData;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 9
    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 10
    invoke-virtual {v3}, Lcom/hunantv/imgo/log/entity/ReportParamsData;->d()I

    move-result v4

    int-to-long v4, v4

    invoke-static {}, Lcom/hunantv/imgo/log/c;->c()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "over retry time, retry="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/hunantv/imgo/log/entity/ReportParamsData;->d()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, v3}, Lcom/hunantv/imgo/log/b/e;->e(Lcom/hunantv/imgo/log/entity/ReportParamsData;)V

    goto :goto_3

    .line 13
    :cond_2
    invoke-virtual {v3}, Lcom/hunantv/imgo/log/entity/ReportParamsData;->d()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Lcom/hunantv/imgo/log/entity/ReportParamsData;->a(I)V

    .line 14
    invoke-direct {p0, v3}, Lcom/hunantv/imgo/log/b/e;->b(Lcom/hunantv/imgo/log/entity/ReportParamsData;)Lokhttp3/Response;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 15
    invoke-virtual {v4}, Lokhttp3/Response;->code()I

    move-result v5

    const/16 v6, 0xc8

    if-lt v5, v6, :cond_5

    invoke-virtual {v4}, Lokhttp3/Response;->code()I

    move-result v5

    const/16 v6, 0x12c

    if-lt v5, v6, :cond_3

    goto :goto_1

    .line 16
    :cond_3
    invoke-direct {p0, v4}, Lcom/hunantv/imgo/log/b/e;->a(Lokhttp3/Response;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 17
    const-string v4, "retry success, delete zip file"

    invoke-static {v1, v4}, Lcom/hunantv/imgo/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, v3}, Lcom/hunantv/imgo/log/b/e;->e(Lcom/hunantv/imgo/log/entity/ReportParamsData;)V

    goto :goto_3

    .line 19
    :cond_4
    invoke-direct {p0, v3}, Lcom/hunantv/imgo/log/b/e;->c(Lcom/hunantv/imgo/log/entity/ReportParamsData;)V

    goto :goto_3

    .line 20
    :cond_5
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "request report failed and return http code = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_6

    const/4 v4, -0x1

    goto :goto_2

    .line 21
    :cond_6
    invoke-virtual {v4}, Lokhttp3/Response;->code()I

    move-result v4

    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 22
    invoke-static {v1, v4}, Lcom/hunantv/imgo/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, v3}, Lcom/hunantv/imgo/log/b/e;->c(Lcom/hunantv/imgo/log/entity/ReportParamsData;)V

    :cond_7
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_8
    :goto_4
    return-void
.end method

.method private e(Lcom/hunantv/imgo/log/entity/ReportParamsData;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 24
    invoke-virtual {p1}, Lcom/hunantv/imgo/log/entity/ReportParamsData;->c()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 25
    new-instance p0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/hunantv/imgo/log/entity/ReportParamsData;->c()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 27
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private f()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/hunantv/imgo/log/b/e;->b:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    invoke-static {}, Lcom/hunantv/imgo/log/c;->d()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(Lcom/hunantv/imgo/log/entity/b;)Lcom/hunantv/imgo/log/entity/c;
    .locals 3

    if-eqz p1, :cond_1

    .line 10
    :try_start_0
    iget-object v0, p1, Lcom/hunantv/imgo/log/entity/b;->a:Lcom/hunantv/imgo/log/entity/a;

    if-eqz v0, :cond_1

    .line 11
    const-string v0, "ReportRequestHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRequest start, request cmd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/hunantv/imgo/log/entity/b;->a:Lcom/hunantv/imgo/log/entity/a;

    iget-byte v2, v2, Lcom/hunantv/imgo/log/entity/a;->b:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/imgo/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v0, p1, Lcom/hunantv/imgo/log/entity/b;->a:Lcom/hunantv/imgo/log/entity/a;

    iget-byte v0, v0, Lcom/hunantv/imgo/log/entity/a;->b:B

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 13
    invoke-virtual {p0}, Lcom/hunantv/imgo/log/b/e;->b()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 14
    iget-object p1, p1, Lcom/hunantv/imgo/log/entity/b;->b:[B

    invoke-static {p1}, Lcom/hunantv/imgo/log/entity/ReportParamsData;->a([B)Lcom/hunantv/imgo/log/entity/ReportParamsData;

    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/hunantv/imgo/log/b/e;->a(Lcom/hunantv/imgo/log/entity/ReportParamsData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 16
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 17
    :cond_1
    :goto_1
    const-string p0, "OK"

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 18
    new-instance p1, Lcom/hunantv/imgo/log/entity/c;

    new-instance v0, Lcom/hunantv/imgo/log/entity/a;

    array-length v1, p0

    const/16 v2, 0x14

    invoke-direct {v0, v2, v1}, Lcom/hunantv/imgo/log/entity/a;-><init>(BI)V

    invoke-direct {p1, v0, p0}, Lcom/hunantv/imgo/log/entity/c;-><init>(Lcom/hunantv/imgo/log/entity/a;[B)V

    return-object p1
.end method

.method public a(Lcom/hunantv/imgo/log/entity/ReportParamsData;)V
    .locals 2

    .line 19
    iput-object p1, p0, Lcom/hunantv/imgo/log/b/e;->c:Lcom/hunantv/imgo/log/entity/ReportParamsData;

    .line 20
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "reportThread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 23
    new-instance p1, Lcom/hunantv/imgo/log/b/e$a;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/hunantv/imgo/log/b/e$a;-><init>(Lcom/hunantv/imgo/log/b/e;Lcom/hunantv/imgo/log/b/e$1;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b()V
    .locals 2

    .line 20
    const-string v0, "checkFailedRequestQueue"

    const-string v1, "ReportRequestHandler"

    invoke-static {v1, v0}, Lcom/hunantv/imgo/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Lcom/hunantv/imgo/log/b/e;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    const-string v0, "checkFailedRequestQueue OverCheckInterval"

    invoke-static {v1, v0}, Lcom/hunantv/imgo/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hunantv/imgo/log/b/e;->b:J

    .line 24
    new-instance v0, Lcom/hunantv/imgo/log/b/e$1;

    invoke-direct {v0, p0}, Lcom/hunantv/imgo/log/b/e$1;-><init>(Lcom/hunantv/imgo/log/b/e;)V

    invoke-static {v0}, Lcom/hunantv/imgo/util/ThreadManager;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
