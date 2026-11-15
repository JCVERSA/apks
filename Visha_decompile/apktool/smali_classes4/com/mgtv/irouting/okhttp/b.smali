.class public Lcom/mgtv/irouting/okhttp/b;
.super Lcom/mgtv/irouting/okhttp/a;
.source "SourceFile"


# static fields
.field public static d:Ljava/lang/String; = "(\\d*\\.){3}\\d*"

.field public static e:Ljava/lang/String;

.field public static f:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(\\d*\\.){3}\\d*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/mgtv/irouting/okhttp/b;->f:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/mgtv/irouting/okhttp/c$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mgtv/irouting/okhttp/a;-><init>(Lcom/mgtv/irouting/okhttp/c$a;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mgtv/irouting/okhttp/HttpDnsException;
        }
    .end annotation

    const-string v0, "[httpdns-v1.0.7]"

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ipUrl : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mgtv/irouting/utils/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_0
    const-string p0, "ip NULL"

    invoke-static {v0, p0}, Lcom/mgtv/irouting/utils/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/mgtv/irouting/okhttp/HttpDnsException;

    const-string p1, "ip is null"

    invoke-direct {p0, p1}, Lcom/mgtv/irouting/okhttp/HttpDnsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string p0, "host NULL"

    invoke-static {v0, p0}, Lcom/mgtv/irouting/utils/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/mgtv/irouting/okhttp/HttpDnsException;

    const-string p1, "host is null"

    invoke-direct {p0, p1}, Lcom/mgtv/irouting/okhttp/HttpDnsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const-string p0, "URL NULL"

    invoke-static {v0, p0}, Lcom/mgtv/irouting/utils/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/mgtv/irouting/okhttp/HttpDnsException;

    const-string p1, "url is null"

    invoke-direct {p0, p1}, Lcom/mgtv/irouting/okhttp/HttpDnsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 8

    iget-object v0, p0, Lcom/mgtv/irouting/okhttp/a;->a:Lcom/mgtv/irouting/okhttp/c$a;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/mgtv/irouting/okhttp/c$a;->a:J

    :cond_0
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mgtv/irouting/a;->a(Ljava/lang/String;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "origin url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", origin host:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[httpdns-v1.0.7]"

    invoke-static {v4, v3}, Lcom/mgtv/irouting/utils/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    sget-object v3, Lcom/mgtv/irouting/okhttp/b;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Ljava/lang/String;

    invoke-static {}, Lcom/mgtv/irouting/utils/JniHttpdns;->a()Lcom/mgtv/irouting/utils/JniHttpdns;

    move-result-object v5

    invoke-static {}, Lcom/mgtv/irouting/net/b;->a()Lcom/mgtv/irouting/net/b;

    move-result-object v6

    iget-object v6, v6, Lcom/mgtv/irouting/net/b;->d:Ljava/lang/String;

    invoke-static {}, Lcom/mgtv/irouting/net/b;->a()Lcom/mgtv/irouting/net/b;

    move-result-object v7

    iget-object v7, v7, Lcom/mgtv/irouting/net/b;->b:Ljava/lang/String;

    invoke-virtual {v5, v2, v6, v7}, Lcom/mgtv/irouting/utils/JniHttpdns;->http_query_bestip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([B)V

    iget-object v5, p0, Lcom/mgtv/irouting/okhttp/a;->a:Lcom/mgtv/irouting/okhttp/c$a;

    if-eqz v5, :cond_1

    iput-object v3, v5, Lcom/mgtv/irouting/okhttp/c$a;->e:Ljava/lang/String;

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "use hostIp:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mgtv/irouting/utils/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/mgtv/irouting/okhttp/b;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_2

    :try_start_0
    invoke-static {v1, v2, v3}, Lcom/mgtv/irouting/okhttp/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mgtv/irouting/okhttp/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string v1, "Host"

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the host has replaced with ip "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/mgtv/irouting/utils/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_2
    const-string v1, "can\'t get the ip , can\'t replace the host"

    invoke-static {v4, v1}, Lcom/mgtv/irouting/utils/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/mgtv/irouting/utils/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    :goto_1
    iget-object v0, p0, Lcom/mgtv/irouting/okhttp/a;->a:Lcom/mgtv/irouting/okhttp/c$a;

    if-eqz v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/mgtv/irouting/okhttp/c$a;->b:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[HttpDNSInterceptor]cost time : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mgtv/irouting/okhttp/a;->a:Lcom/mgtv/irouting/okhttp/c$a;

    invoke-virtual {p0}, Lcom/mgtv/irouting/okhttp/c$a;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/mgtv/irouting/utils/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object p1
.end method
