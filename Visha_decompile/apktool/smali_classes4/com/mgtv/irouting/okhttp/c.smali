.class public Lcom/mgtv/irouting/okhttp/c;
.super Ljava/net/HttpURLConnection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/irouting/okhttp/c$a;
    }
.end annotation


# static fields
.field public static a:J

.field private static m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/mgtv/irouting/utils/c;",
            ">;>;"
        }
    .end annotation
.end field

.field private static n:Ljava/util/concurrent/locks/Lock;


# instance fields
.field public b:Lcom/mgtv/irouting/okhttp/c$a;

.field private c:Lokhttp3/OkHttpClient$Builder;

.field private d:Lokhttp3/Request$Builder;

.field private e:Lcom/mgtv/irouting/okhttp/a;

.field private f:Lokhttp3/Response;

.field private g:I

.field private h:I

.field private i:I

.field private j:Ljava/net/URL;

.field private k:Z

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mgtv/irouting/okhttp/c;->m:Ljava/util/HashMap;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/mgtv/irouting/okhttp/c;->n:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mgtv/irouting/okhttp/HttpDnsException;
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/irouting/okhttp/c;->c:Lokhttp3/OkHttpClient$Builder;

    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    iput-object v0, p0, Lcom/mgtv/irouting/okhttp/c;->d:Lokhttp3/Request$Builder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mgtv/irouting/okhttp/c;->e:Lcom/mgtv/irouting/okhttp/a;

    iput-object v0, p0, Lcom/mgtv/irouting/okhttp/c;->f:Lokhttp3/Response;

    const/16 v0, 0x1388

    iput v0, p0, Lcom/mgtv/irouting/okhttp/c;->g:I

    iput v0, p0, Lcom/mgtv/irouting/okhttp/c;->h:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/mgtv/irouting/okhttp/c;->i:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mgtv/irouting/okhttp/c;->k:Z

    const/4 v1, 0x2

    iput v1, p0, Lcom/mgtv/irouting/okhttp/c;->l:I

    new-instance v1, Lcom/mgtv/irouting/okhttp/c$a;

    invoke-direct {v1, p0}, Lcom/mgtv/irouting/okhttp/c$a;-><init>(Lcom/mgtv/irouting/okhttp/c;)V

    iput-object v1, p0, Lcom/mgtv/irouting/okhttp/c;->b:Lcom/mgtv/irouting/okhttp/c$a;

    sget-boolean v1, Lcom/mgtv/irouting/a;->a:Z

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/mgtv/irouting/okhttp/c;->l:I

    :cond_0
    iget v1, p0, Lcom/mgtv/irouting/okhttp/c;->l:I

    if-eq v1, v0, :cond_1

    new-instance v0, Lcom/mgtv/irouting/okhttp/a;

    iget-object v1, p0, Lcom/mgtv/irouting/okhttp/c;->b:Lcom/mgtv/irouting/okhttp/c$a;

    invoke-direct {v0, v1}, Lcom/mgtv/irouting/okhttp/a;-><init>(Lcom/mgtv/irouting/okhttp/c$a;)V

    iput-object v0, p0, Lcom/mgtv/irouting/okhttp/c;->e:Lcom/mgtv/irouting/okhttp/a;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/mgtv/irouting/okhttp/b;

    iget-object v1, p0, Lcom/mgtv/irouting/okhttp/c;->b:Lcom/mgtv/irouting/okhttp/c$a;

    invoke-direct {v0, v1}, Lcom/mgtv/irouting/okhttp/b;-><init>(Lcom/mgtv/irouting/okhttp/c$a;)V

    iput-object v0, p0, Lcom/mgtv/irouting/okhttp/c;->e:Lcom/mgtv/irouting/okhttp/a;

    :goto_0
    iget-object v0, p0, Lcom/mgtv/irouting/okhttp/c;->c:Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->interceptors()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/irouting/okhttp/c;->e:Lcom/mgtv/irouting/okhttp/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/mgtv/irouting/okhttp/c;->c:Lokhttp3/OkHttpClient$Builder;

    invoke-static {}, Lcom/mgtv/irouting/okhttp/d;->a()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/mgtv/irouting/okhttp/c;->a(Ljava/net/URL;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public a()Lcom/mgtv/irouting/okhttp/c$a;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/mgtv/irouting/okhttp/c;->b:Lcom/mgtv/irouting/okhttp/c$a;

    return-object p0
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcom/mgtv/irouting/utils/c;)V
    .locals 2

    monitor-enter p0

    .line 4
    :try_start_0
    sget-object v0, Lcom/mgtv/irouting/okhttp/c;->n:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 5
    sget-object v0, Lcom/mgtv/irouting/okhttp/c;->m:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    sget-object v0, Lcom/mgtv/irouting/okhttp/c;->m:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    .line 7
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    sget-object p2, Lcom/mgtv/irouting/okhttp/c;->m:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :goto_0
    sget-object p2, Lcom/mgtv/irouting/okhttp/c;->m:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 11
    const-string p2, "[httpdns-v1.0.7]"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "domain : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sIpLoglist : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mgtv/irouting/okhttp/c;->m:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/mgtv/irouting/utils/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_1
    sget-wide p1, Lcom/mgtv/irouting/okhttp/c;->a:J

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    sput-wide p1, Lcom/mgtv/irouting/okhttp/c;->a:J

    const-wide/16 v0, 0x5

    cmp-long p1, p1, v0

    if-lez p1, :cond_3

    .line 13
    invoke-virtual {p0}, Lcom/mgtv/irouting/okhttp/c;->c()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 14
    const-string p2, "[httpdns-v1.0.7]"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "put_string : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/mgtv/irouting/utils/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    const-string p2, "speed"

    invoke-static {p2, p1}, Lcom/mgtv/irouting/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 16
    :cond_2
    sget-object p1, Lcom/mgtv/irouting/okhttp/c;->m:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    const-wide/16 p1, 0x0

    .line 17
    sput-wide p1, Lcom/mgtv/irouting/okhttp/c;->a:J

    .line 18
    :cond_3
    sget-object p1, Lcom/mgtv/irouting/okhttp/c;->n:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Ljava/net/URL;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mgtv/irouting/okhttp/c;->j:Ljava/net/URL;

    .line 2
    iget-object p0, p0, Lcom/mgtv/irouting/okhttp/c;->d:Lokhttp3/Request$Builder;

    invoke-virtual {p0, p1}, Lokhttp3/Request$Builder;->url(Ljava/net/URL;)Lokhttp3/Request$Builder;

    return-void
.end method

.method public b()V
    .locals 5

    new-instance v0, Lcom/mgtv/irouting/utils/c;

    iget v1, p0, Lcom/mgtv/irouting/okhttp/c;->l:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const-string v1, "httpdns"

    goto :goto_0

    :cond_0
    const-string v1, "local"

    :goto_0
    invoke-direct {v0, v1}, Lcom/mgtv/irouting/utils/c;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mgtv/irouting/okhttp/c;->j:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mgtv/irouting/utils/b;->a:Ljava/lang/String;

    invoke-static {}, Lcom/mgtv/irouting/net/b;->a()Lcom/mgtv/irouting/net/b;

    move-result-object v1

    iget-object v1, v1, Lcom/mgtv/irouting/net/b;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/mgtv/irouting/utils/b;->c:Ljava/lang/String;

    invoke-static {}, Lcom/mgtv/irouting/net/b;->a()Lcom/mgtv/irouting/net/b;

    move-result-object v1

    iget-object v1, v1, Lcom/mgtv/irouting/net/b;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/mgtv/irouting/utils/b;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/mgtv/irouting/okhttp/c;->b:Lcom/mgtv/irouting/okhttp/c$a;

    invoke-virtual {v1}, Lcom/mgtv/irouting/okhttp/c$a;->a()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/mgtv/irouting/utils/c;->n:J

    iget-object v1, p0, Lcom/mgtv/irouting/okhttp/c;->b:Lcom/mgtv/irouting/okhttp/c$a;

    invoke-virtual {v1}, Lcom/mgtv/irouting/okhttp/c$a;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mgtv/irouting/utils/b;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/mgtv/irouting/okhttp/c;->b:Lcom/mgtv/irouting/okhttp/c$a;

    iget-object v2, v1, Lcom/mgtv/irouting/okhttp/c$a;->e:Ljava/lang/String;

    iput-object v2, v0, Lcom/mgtv/irouting/utils/b;->b:Ljava/lang/String;

    iget v1, v1, Lcom/mgtv/irouting/okhttp/c$a;->f:I

    iput v1, v0, Lcom/mgtv/irouting/utils/c;->r:I

    if-eqz v1, :cond_1

    iget-wide v1, v0, Lcom/mgtv/irouting/utils/c;->m:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/mgtv/irouting/utils/c;->m:J

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toJson : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/mgtv/irouting/utils/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[httpdns.speed-v1.0.7]"

    invoke-static {v2, v1}, Lcom/mgtv/irouting/utils/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mgtv/irouting/okhttp/c;->j:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/mgtv/irouting/okhttp/c;->a(Ljava/lang/String;Lcom/mgtv/irouting/utils/c;)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 4

    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    sget-object v0, Lcom/mgtv/irouting/okhttp/c;->m:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lcom/mgtv/irouting/okhttp/c;->m:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    sget-object v3, Lcom/mgtv/irouting/okhttp/c;->m:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mgtv/irouting/utils/c;

    invoke-virtual {v3}, Lcom/mgtv/irouting/utils/c;->b()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "list"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "act"

    sget-object v2, Lcom/mgtv/irouting/utils/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "bid"

    sget-object v2, Lcom/mgtv/irouting/utils/f;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rkey:list,jsonArray:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ",err:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "[httpdns-v1.0.7]"

    invoke-static {v1, p0}, Lcom/mgtv/irouting/utils/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized connect()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mgtv/irouting/okhttp/c;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_6

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_1
    iget-object v3, p0, Lcom/mgtv/irouting/okhttp/c;->b:Lcom/mgtv/irouting/okhttp/c$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/mgtv/irouting/okhttp/c$a;->c:J

    iget-object v3, p0, Lcom/mgtv/irouting/okhttp/c;->c:Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {v3}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v3

    iget-object v4, p0, Lcom/mgtv/irouting/okhttp/c;->d:Lokhttp3/Request$Builder;

    invoke-virtual {v4}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v4

    invoke-virtual {v3, v4}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v3

    invoke-interface {v3}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v3

    iput-object v3, p0, Lcom/mgtv/irouting/okhttp/c;->f:Lokhttp3/Response;

    iget-object v3, p0, Lcom/mgtv/irouting/okhttp/c;->b:Lcom/mgtv/irouting/okhttp/c$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/mgtv/irouting/okhttp/c$a;->d:J
    :try_end_1
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/NoRouteToHostException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iput-boolean v1, p0, Lcom/mgtv/irouting/okhttp/c;->k:Z

    invoke-virtual {p0, v2}, Lcom/mgtv/irouting/okhttp/c;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    iput-boolean v2, p0, Lcom/mgtv/irouting/okhttp/c;->k:Z

    const-string v0, "[httpdns-v1.0.7]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgtv/irouting/okhttp/c;->b:Lcom/mgtv/irouting/okhttp/c$a;

    iget v2, v2, Lcom/mgtv/irouting/okhttp/c$a;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Lcom/mgtv/irouting/utils/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_9

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :catchall_1
    move-exception v0

    goto/16 :goto_8

    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_2

    :catch_2
    move-exception v0

    goto/16 :goto_3

    :catch_3
    move-exception v0

    goto/16 :goto_4

    :catch_4
    move-exception v0

    goto/16 :goto_5

    :catch_5
    move-exception v0

    goto/16 :goto_6

    :catch_6
    move-exception v0

    goto/16 :goto_7

    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v4, p0, Lcom/mgtv/irouting/okhttp/c;->b:Lcom/mgtv/irouting/okhttp/c$a;

    iput v0, v4, Lcom/mgtv/irouting/okhttp/c$a;->f:I

    invoke-virtual {p0}, Lcom/mgtv/irouting/okhttp/c;->b()V

    const-string v0, "[httpdns-v1.0.7]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Exception]okhttpclient request error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/mgtv/irouting/utils/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iput-boolean v1, p0, Lcom/mgtv/irouting/okhttp/c;->k:Z

    invoke-virtual {p0, v2}, Lcom/mgtv/irouting/okhttp/c;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    iput-boolean v2, p0, Lcom/mgtv/irouting/okhttp/c;->k:Z

    instance-of v0, v3, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    check-cast v3, Ljava/lang/RuntimeException;

    throw v3

    :cond_0
    check-cast v3, Ljava/io/IOException;

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v4, p0, Lcom/mgtv/irouting/okhttp/c;->b:Lcom/mgtv/irouting/okhttp/c$a;

    iput v0, v4, Lcom/mgtv/irouting/okhttp/c$a;->f:I

    invoke-virtual {p0}, Lcom/mgtv/irouting/okhttp/c;->b()V

    const-string v0, "[httpdns-v1.0.7]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[IOException]okhttpclient request error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mgtv/irouting/utils/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iput-boolean v1, p0, Lcom/mgtv/irouting/okhttp/c;->k:Z

    invoke-virtual {p0, v2}, Lcom/mgtv/irouting/okhttp/c;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    iput-boolean v2, p0, Lcom/mgtv/irouting/okhttp/c;->k:Z

    const-string v0, "[httpdns-v1.0.7]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgtv/irouting/okhttp/c;->b:Lcom/mgtv/irouting/okhttp/c$a;

    iget v2, v2, Lcom/mgtv/irouting/okhttp/c$a;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :goto_3
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v3, p0, Lcom/mgtv/irouting/okhttp/c;->b:Lcom/mgtv/irouting/okhttp/c$a;

    const/4 v4, -0x4

    iput v4, v3, Lcom/mgtv/irouting/okhttp/c$a;->f:I

    invoke-virtual {p0}, Lcom/mgtv/irouting/okhttp/c;->b()V

    const-string v3, "[httpdns-v1.0.7]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[NoRouteToHostException]okhttpclient request error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/mgtv/irouting/utils/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    iput-boolean v1, p0, Lcom/mgtv/irouting/okhttp/c;->k:Z

    invoke-virtual {p0, v2}, Lcom/mgtv/irouting/okhttp/c;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    iput-boolean v2, p0, Lcom/mgtv/irouting/okhttp/c;->k:Z

    const-string v0, "[httpdns-v1.0.7]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgtv/irouting/okhttp/c;->b:Lcom/mgtv/irouting/okhttp/c$a;

    iget v2, v2, Lcom/mgtv/irouting/okhttp/c$a;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    :goto_4
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v3, p0, Lcom/mgtv/irouting/okhttp/c;->b:Lcom/mgtv/irouting/okhttp/c$a;

    const/4 v4, -0x3

    iput v4, v3, Lcom/mgtv/irouting/okhttp/c$a;->f:I

    invoke-virtual {p0}, Lcom/mgtv/irouting/okhttp/c;->b()V

    const-string v3, "[httpdns-v1.0.7]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[UnknownHostException]okhttpclient request error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mgtv/irouting/utils/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    iput-boolean v1, p0, Lcom/mgtv/irouting/okhttp/c;->k:Z

    invoke-virtual {p0, v2}, Lcom/mgtv/irouting/okhttp/c;->getHeaderField(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    goto/16 :goto_9

    :cond_1
    iput-boolean v2, p0, Lcom/mgtv/irouting/okhttp/c;->k:Z

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_5
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v3, p0, Lcom/mgtv/irouting/okhttp/c;->b:Lcom/mgtv/irouting/okhttp/c$a;

    const/4 v4, -0x6

    iput v4, v3, Lcom/mgtv/irouting/okhttp/c$a;->f:I

    invoke-virtual {p0}, Lcom/mgtv/irouting/okhttp/c;->b()V

    const-string v3, "[httpdns-v1.0.7]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SSLHandshakeException]okhttpclient request error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mgtv/irouting/utils/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    iput-boolean v1, p0, Lcom/mgtv/irouting/okhttp/c;->k:Z

    invoke-virtual {p0, v2}, Lcom/mgtv/irouting/okhttp/c;->getHeaderField(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    goto/16 :goto_9

    :cond_2
    iput-boolean v2, p0, Lcom/mgtv/irouting/okhttp/c;->k:Z

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :goto_6
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v3, p0, Lcom/mgtv/irouting/okhttp/c;->b:Lcom/mgtv/irouting/okhttp/c$a;

    const/4 v4, -0x2

    iput v4, v3, Lcom/mgtv/irouting/okhttp/c$a;->f:I

    invoke-virtual {p0}, Lcom/mgtv/irouting/okhttp/c;->b()V

    const-string v3, "[httpdns-v1.0.7]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SocketTimeoutException]okhttpclient request error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mgtv/irouting/utils/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    iput-boolean v1, p0, Lcom/mgtv/irouting/okhttp/c;->k:Z

    invoke-virtual {p0, v2}, Lcom/mgtv/irouting/okhttp/c;->getHeaderField(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    goto :goto_9

    :cond_3
    iput-boolean v2, p0, Lcom/mgtv/irouting/okhttp/c;->k:Z

    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :goto_7
    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v3, p0, Lcom/mgtv/irouting/okhttp/c;->b:Lcom/mgtv/irouting/okhttp/c$a;

    const/4 v4, -0x5

    iput v4, v3, Lcom/mgtv/irouting/okhttp/c$a;->f:I

    invoke-virtual {p0}, Lcom/mgtv/irouting/okhttp/c;->b()V

    const-string v3, "[httpdns-v1.0.7]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ConnectException]okhttpclient request error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mgtv/irouting/utils/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :try_start_10
    iput-boolean v1, p0, Lcom/mgtv/irouting/okhttp/c;->k:Z

    invoke-virtual {p0, v2}, Lcom/mgtv/irouting/okhttp/c;->getHeaderField(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    goto :goto_9

    :cond_4
    iput-boolean v2, p0, Lcom/mgtv/irouting/okhttp/c;->k:Z

    throw v0

    :goto_8
    iput-boolean v1, p0, Lcom/mgtv/irouting/okhttp/c;->k:Z

    invoke-virtual {p0, v2}, Lcom/mgtv/irouting/okhttp/c;->getHeaderField(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    iput-boolean v2, p0, Lcom/mgtv/irouting/okhttp/c;->k:Z

    const-string v1, "[httpdns-v1.0.7]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mgtv/irouting/okhttp/c;->b:Lcom/mgtv/irouting/okhttp/c$a;

    iget v3, v3, Lcom/mgtv/irouting/okhttp/c$a;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mgtv/irouting/utils/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :cond_6
    :goto_9
    monitor-exit p0

    return-void

    :goto_a
    :try_start_11
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    throw v0
.end method

.method public disconnect()V
    .locals 0

    return-void
.end method

.method public getContentLength()I
    .locals 4

    iget-object p0, p0, Lcom/mgtv/irouting/okhttp/c;->f:Lokhttp3/Response;

    const-string v0, "[httpdns-v1.0.7]"

    const/4 v1, -0x1

    if-nez p0, :cond_0

    const-string p0, "Response is null"

    invoke-static {v0, p0}, Lcom/mgtv/irouting/utils/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {p0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object p0

    const-string v2, "content-length"

    invoke-virtual {p0, v2}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Content-Length : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mgtv/irouting/utils/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v0, 0x7fffffff

    if-lt p0, v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, p0

    :goto_0
    return v1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public getContentLengthLong()J
    .locals 7

    iget-object p0, p0, Lcom/mgtv/irouting/okhttp/c;->f:Lokhttp3/Response;

    const-string v0, "[httpdns-v1.0.7]"

    const-wide/16 v1, -0x1

    if-nez p0, :cond_0

    const-string p0, "Response is null"

    invoke-static {v0, p0}, Lcom/mgtv/irouting/utils/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v1

    :cond_0
    invoke-virtual {p0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object p0

    const-string v3, "content-length"

    invoke-virtual {p0, v3}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Content-Length : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mgtv/irouting/utils/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/32 v5, 0x7fffffff

    cmp-long p0, v3, v5

    if-ltz p0, :cond_1

    goto :goto_0

    :cond_1
    move-wide v1, v3

    :goto_0
    return-wide v1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-wide v1
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/mgtv/irouting/okhttp/c;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/mgtv/irouting/okhttp/c;->f:Lokhttp3/Response;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 2
    const-string p0, "[httpdns-v1.0.7]"

    const-string p1, "Response is null"

    invoke-static {p0, p1}, Lcom/mgtv/irouting/utils/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/mgtv/irouting/okhttp/c;->f:Lokhttp3/Response;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "[httpdns-v1.0.7]"

    const-string p1, "Response is null"

    invoke-static {p0, p1}, Lcom/mgtv/irouting/utils/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2

    iget-object p0, p0, Lcom/mgtv/irouting/okhttp/c;->f:Lokhttp3/Response;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "[httpdns-v1.0.7]"

    const-string v1, "Response is null"

    invoke-static {p0, v1}, Lcom/mgtv/irouting/utils/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catch_0
    move-exception p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-object v0
.end method

.method public declared-synchronized getResponseCode()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mgtv/irouting/okhttp/c;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-nez v0, :cond_a

    const/4 v0, 0x1

    const/4 v2, 0x0

    :try_start_1
    iget-object v3, p0, Lcom/mgtv/irouting/okhttp/c;->b:Lcom/mgtv/irouting/okhttp/c$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/mgtv/irouting/okhttp/c$a;->c:J

    iget-object v3, p0, Lcom/mgtv/irouting/okhttp/c;->c:Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {v3}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v3

    iget-object v4, p0, Lcom/mgtv/irouting/okhttp/c;->d:Lokhttp3/Request$Builder;

    invoke-virtual {v4}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v4

    invoke-virtual {v3, v4}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v3

    invoke-interface {v3}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v3

    iput-object v3, p0, Lcom/mgtv/irouting/okhttp/c;->f:Lokhttp3/Response;

    iget-object v3, p0, Lcom/mgtv/irouting/okhttp/c;->b:Lcom/mgtv/irouting/okhttp/c$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/mgtv/irouting/okhttp/c$a;->d:J
    :try_end_1
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/NoRouteToHostException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iput-boolean v0, p0, Lcom/mgtv/irouting/okhttp/c;->k:Z

    invoke-virtual {p0, v2}, Lcom/mgtv/irouting/okhttp/c;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    iput-boolean v2, p0, Lcom/mgtv/irouting/okhttp/c;->k:Z

    const-string v0, "[httpdns-v1.0.7]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getResponseCode Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mgtv/irouting/okhttp/c;->b:Lcom/mgtv/irouting/okhttp/c$a;

    iget v3, v3, Lcom/mgtv/irouting/okhttp/c$a;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mgtv/irouting/utils/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mgtv/irouting/okhttp/c;->b:Lcom/mgtv/irouting/okhttp/c$a;

    iget v0, v0, Lcom/mgtv/irouting/okhttp/c$a;->f:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v0

    :cond_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :catchall_1
    move-exception v3

    goto/16 :goto_7

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_1

    :catch_2
    move-exception v3

    goto/16 :goto_2

    :catch_3
    move-exception v3

    goto/16 :goto_3

    :catch_4
    move-exception v3

    goto/16 :goto_4

    :catch_5
    move-exception v3

    goto/16 :goto_5

    :catch_6
    move-exception v3

    goto/16 :goto_6

    :goto_0
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v4, p0, Lcom/mgtv/irouting/okhttp/c;->b:Lcom/mgtv/irouting/okhttp/c$a;

    iput v1, v4, Lcom/mgtv/irouting/okhttp/c$a;->f:I

    invoke-virtual {p0}, Lcom/mgtv/irouting/okhttp/c;->b()V

    const-string v4, "[httpdns-v1.0.7]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Exception]okhttpclient request error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mgtv/irouting/utils/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iput-boolean v0, p0, Lcom/mgtv/irouting/okhttp/c;->k:Z

    invoke-virtual {p0, v2}, Lcom/mgtv/irouting/okhttp/c;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    iput-boolean v2, p0, Lcom/mgtv/irouting/okhttp/c;->k:Z

    instance-of v0, v3, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_1

    check-cast v3, Ljava/lang/RuntimeException;

    throw v3

    :cond_1
    check-cast v3, Ljava/io/IOException;

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v4, p0, Lcom/mgtv/irouting/okhttp/c;->b:Lcom/mgtv/irouting/okhttp/c$a;

    iput v1, v4, Lcom/mgtv/irouting/okhttp/c$a;->f:I

    invoke-virtual {p0}, Lcom/mgtv/irouting/okhttp/c;->b()V

    const-string v4, "[httpdns-v1.0.7]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[IOException]okhttpclient request error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mgtv/irouting/utils/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iput-boolean v0, p0, Lcom/mgtv/irouting/okhttp/c;->k:Z

    invoke-virtual {p0, v2}, Lcom/mgtv/irouting/okhttp/c;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    goto/16 :goto_8

    :cond_2
    iput-boolean v2, p0, Lcom/mgtv/irouting/okhttp/c;->k:Z

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_2
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v4, p0, Lcom/mgtv/irouting/okhttp/c;->b:Lcom/mgtv/irouting/okhttp/c$a;

    const/4 v5, -0x4

    iput v5, v4, Lcom/mgtv/irouting/okhttp/c$a;->f:I

    invoke-virtual {p0}, Lcom/mgtv/irouting/okhttp/c;->b()V

    const-string v4, "[httpdns-v1.0.7]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[NoRouteToHostException]okhttpclient request error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/mgtv/irouting/utils/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    iput-boolean v0, p0, Lcom/mgtv/irouting/okhttp/c;->k:Z

    invoke-virtual {p0, v2}, Lcom/mgtv/irouting/okhttp/c;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    iput-boolean v2, p0, Lcom/mgtv/irouting/okhttp/c;->k:Z

    const-string v0, "[httpdns-v1.0.7]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getResponseCode Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mgtv/irouting/okhttp/c;->b:Lcom/mgtv/irouting/okhttp/c$a;

    iget v3, v3, Lcom/mgtv/irouting/okhttp/c$a;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mgtv/irouting/utils/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mgtv/irouting/okhttp/c;->b:Lcom/mgtv/irouting/okhttp/c$a;

    iget v0, v0, Lcom/mgtv/irouting/okhttp/c$a;->f:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v0, :cond_3

    monitor-exit p0

    return v0

    :cond_3
    monitor-exit p0

    return v1

    :goto_3
    :try_start_9
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v4, p0, Lcom/mgtv/irouting/okhttp/c;->b:Lcom/mgtv/irouting/okhttp/c$a;

    const/4 v5, -0x3

    iput v5, v4, Lcom/mgtv/irouting/okhttp/c$a;->f:I

    invoke-virtual {p0}, Lcom/mgtv/irouting/okhttp/c;->b()V

    const-string v4, "[httpdns-v1.0.7]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[UnknownHostException]okhttpclient request error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mgtv/irouting/utils/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    iput-boolean v0, p0, Lcom/mgtv/irouting/okhttp/c;->k:Z

    invoke-virtual {p0, v2}, Lcom/mgtv/irouting/okhttp/c;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    goto/16 :goto_8

    :cond_4
    iput-boolean v2, p0, Lcom/mgtv/irouting/okhttp/c;->k:Z

    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_4
    :try_start_b
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v4, p0, Lcom/mgtv/irouting/okhttp/c;->b:Lcom/mgtv/irouting/okhttp/c$a;

    const/4 v5, -0x6

    iput v5, v4, Lcom/mgtv/irouting/okhttp/c$a;->f:I

    invoke-virtual {p0}, Lcom/mgtv/irouting/okhttp/c;->b()V

    const-string v4, "[httpdns-v1.0.7]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SSLHandshakeException]okhttpclient request error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mgtv/irouting/utils/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    iput-boolean v0, p0, Lcom/mgtv/irouting/okhttp/c;->k:Z

    invoke-virtual {p0, v2}, Lcom/mgtv/irouting/okhttp/c;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    goto/16 :goto_8

    :cond_5
    iput-boolean v2, p0, Lcom/mgtv/irouting/okhttp/c;->k:Z

    throw v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :goto_5
    :try_start_d
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v4, p0, Lcom/mgtv/irouting/okhttp/c;->b:Lcom/mgtv/irouting/okhttp/c$a;

    const/4 v5, -0x2

    iput v5, v4, Lcom/mgtv/irouting/okhttp/c$a;->f:I

    invoke-virtual {p0}, Lcom/mgtv/irouting/okhttp/c;->b()V

    const-string v4, "[httpdns-v1.0.7]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SocketTimeoutException]okhttpclient request error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mgtv/irouting/utils/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    iput-boolean v0, p0, Lcom/mgtv/irouting/okhttp/c;->k:Z

    invoke-virtual {p0, v2}, Lcom/mgtv/irouting/okhttp/c;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    goto :goto_8

    :cond_6
    iput-boolean v2, p0, Lcom/mgtv/irouting/okhttp/c;->k:Z

    throw v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :goto_6
    :try_start_f
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v4, p0, Lcom/mgtv/irouting/okhttp/c;->b:Lcom/mgtv/irouting/okhttp/c$a;

    const/4 v5, -0x5

    iput v5, v4, Lcom/mgtv/irouting/okhttp/c$a;->f:I

    invoke-virtual {p0}, Lcom/mgtv/irouting/okhttp/c;->b()V

    const-string v4, "[httpdns-v1.0.7]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ConnectException]okhttpclient request error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mgtv/irouting/utils/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :try_start_10
    iput-boolean v0, p0, Lcom/mgtv/irouting/okhttp/c;->k:Z

    invoke-virtual {p0, v2}, Lcom/mgtv/irouting/okhttp/c;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    iput-boolean v2, p0, Lcom/mgtv/irouting/okhttp/c;->k:Z

    throw v3

    :goto_7
    iput-boolean v0, p0, Lcom/mgtv/irouting/okhttp/c;->k:Z

    invoke-virtual {p0, v2}, Lcom/mgtv/irouting/okhttp/c;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    iput-boolean v2, p0, Lcom/mgtv/irouting/okhttp/c;->k:Z

    const-string v0, "[httpdns-v1.0.7]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getResponseCode Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mgtv/irouting/okhttp/c;->b:Lcom/mgtv/irouting/okhttp/c$a;

    iget v3, v3, Lcom/mgtv/irouting/okhttp/c$a;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mgtv/irouting/utils/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mgtv/irouting/okhttp/c;->b:Lcom/mgtv/irouting/okhttp/c$a;

    iget v0, v0, Lcom/mgtv/irouting/okhttp/c$a;->f:I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    if-eqz v0, :cond_8

    monitor-exit p0

    return v0

    :cond_8
    monitor-exit p0

    return v1

    :cond_9
    :try_start_11
    throw v3

    :cond_a
    :goto_8
    iget-object v0, p0, Lcom/mgtv/irouting/okhttp/c;->f:Lokhttp3/Response;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    monitor-exit p0

    return v0

    :cond_b
    monitor-exit p0

    return v1

    :goto_9
    :try_start_12
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    throw v0
.end method

.method public setConnectTimeout(I)V
    .locals 2

    iput p1, p0, Lcom/mgtv/irouting/okhttp/c;->g:I

    iget-object p0, p0, Lcom/mgtv/irouting/okhttp/c;->c:Lokhttp3/OkHttpClient$Builder;

    int-to-long v0, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, p1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    return-void
.end method

.method public setReadTimeout(I)V
    .locals 2

    iput p1, p0, Lcom/mgtv/irouting/okhttp/c;->h:I

    iget-object p0, p0, Lcom/mgtv/irouting/okhttp/c;->c:Lokhttp3/OkHttpClient$Builder;

    int-to-long v0, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, p1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 1

    const-string v0, "GET"

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Lcom/mgtv/irouting/okhttp/c;->i:I

    goto :goto_0

    :cond_0
    const-string v0, "POST"

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    iput p1, p0, Lcom/mgtv/irouting/okhttp/c;->i:I

    :cond_1
    :goto_0
    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/mgtv/irouting/okhttp/c;->d:Lokhttp3/Request$Builder;

    invoke-virtual {p0, p1, p2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    :cond_1
    :goto_0
    return-void
.end method

.method public usingProxy()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
