.class public final Lmt4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnt4;
.implements Lhs4;


# static fields
.field public static final a:Lmt4;

.field public static final b:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lmt4;

    invoke-direct {v0}, Lmt4;-><init>()V

    sput-object v0, Lmt4;->a:Lmt4;

    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lmt4;->b:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;Ljava/lang/String;JJLis3;)Lokhttp3/Response;
    .locals 7

    const-string p0, "file"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "url"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "callback"

    invoke-static {p7, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lvu3;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lvu3;-><init>(Ljava/io/File;JJLis3;)V

    new-instance p1, Lokhttp3/Request$Builder;

    invoke-direct {p1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lokhttp3/Request$Builder;->put(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    sget-object p1, Lmt4;->b:Lokhttp3/OkHttpClient;

    invoke-virtual {p1, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    invoke-interface {p0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;JJJLis3;)V
    .locals 2

    const-string p0, "url"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "path"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "callback"

    invoke-static {p9, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x1

    sub-long/2addr p7, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p7, v0

    if-lez p0, :cond_0

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    add-long/2addr p3, p5

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "bytes="

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p6, "-"

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p5, Lokhttp3/Request$Builder;

    invoke-direct {p5}, Lokhttp3/Request$Builder;-><init>()V

    const-string p6, "Range"

    invoke-virtual {p5, p6, p0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    :try_start_0
    sget-object p1, Lmt4;->b:Lokhttp3/OkHttpClient;

    invoke-virtual {p1, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    invoke-interface {p0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result p1

    const/16 p5, 0x12c

    if-gt p1, p5, :cond_5

    const/4 p1, 0x0

    :try_start_1
    new-instance p5, Ljava/io/File;

    invoke-direct {p5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p6

    if-nez p6, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    goto :goto_1

    :catchall_0
    move-exception p2

    move-object p3, p2

    move-object p2, p1

    goto/16 :goto_6

    :catch_0
    move-exception p2

    move-object p3, p2

    move-object p2, p1

    goto :goto_4

    :catch_1
    move-object p2, p1

    goto :goto_5

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-static {p2}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p2
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance p6, Lxk0;

    invoke-direct {p6, p5}, Lxk0;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    invoke-virtual {p6, p3, p4}, Lxk0;->c(J)V

    const/high16 p1, 0x100000

    new-array p1, p1, [B

    :goto_2
    invoke-virtual {p2, p1}, Ljava/io/InputStream;->read([B)I

    move-result p3

    const/4 p4, -0x1

    if-eq p3, p4, :cond_2

    const/4 p4, 0x0

    invoke-virtual {p6, p1, p4, p3}, Lxk0;->d([BII)V

    int-to-long p3, p3

    invoke-interface {p9, p3, p4}, Lis3;->a(J)V

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object p3, p1

    move-object p1, p6

    goto :goto_6

    :catch_2
    move-exception p1

    move-object p3, p1

    move-object p1, p6

    goto :goto_4

    :catch_3
    move-object p1, p6

    goto :goto_5

    :cond_2
    invoke-virtual {p6}, Lxk0;->b()V
    :try_end_3
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-virtual {p6}, Lxk0;->a()V

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    invoke-virtual {p0}, Lokhttp3/Response;->close()V

    sget-object p0, Lzfb;->a:Lzfb;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p0

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p0}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    return-void

    :catchall_3
    move-exception p3

    goto :goto_6

    :catch_4
    move-exception p3

    :goto_4
    :try_start_5
    throw p3

    :catch_5
    :goto_5
    new-instance p3, Ljava/lang/InterruptedException;

    invoke-direct {p3}, Ljava/lang/InterruptedException;-><init>()V

    throw p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :goto_6
    :try_start_6
    sget-object p4, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lxk0;->a()V

    goto :goto_7

    :catchall_4
    move-exception p0

    goto :goto_8

    :cond_3
    :goto_7
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    :cond_4
    invoke-virtual {p0}, Lokhttp3/Response;->close()V

    sget-object p0, Lzfb;->a:Lzfb;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_9

    :goto_8
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p0}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9
    throw p3

    :cond_5
    new-instance p1, Lcom/transsion/cloud_drive/transfer/exception/ServerException;

    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result p2

    invoke-virtual {p0}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p3, p0}, Lcom/transsion/cloud_drive/transfer/exception/ServerException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw p1

    :catch_6
    move-exception p0

    goto :goto_a

    :catch_7
    move-exception p0

    goto :goto_b

    :goto_a
    throw p0

    :goto_b
    sget-object p1, Loq5;->a:Loq5;

    const-string p2, "download io interrupted:"

    filled-new-array {p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "HttpTransManager"

    invoke-virtual {p1, p2, p0}, Loq5;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Ljava/lang/InterruptedException;

    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    throw p0
.end method
