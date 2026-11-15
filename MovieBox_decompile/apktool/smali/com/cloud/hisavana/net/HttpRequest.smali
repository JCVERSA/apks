.class public final Lcom/cloud/hisavana/net/HttpRequest;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u000e\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J-\u0010\u000b\u001a\u00020\n2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ-\u0010\r\u001a\u00020\n2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0007\u00a2\u0006\u0004\u0008\r\u0010\u000cJ+\u0010\u000e\u001a\u00020\n2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\u000e\u0010\u000cJ\u0017\u0010\u0011\u001a\u00020\n2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u001d\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u00138\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R\"\u0010\u001e\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\"\u0010\"\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010\u0019\u001a\u0004\u0008 \u0010\u001b\"\u0004\u0008!\u0010\u001dR\"\u0010%\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u0019\u001a\u0004\u0008#\u0010\u001b\"\u0004\u0008$\u0010\u001d\u00a8\u0006&"
    }
    d2 = {
        "Lcom/cloud/hisavana/net/HttpRequest;",
        "",
        "<init>",
        "()V",
        "",
        "url",
        "Lcom/cloud/hisavana/net/RequestParams;",
        "params",
        "Lcom/cloud/hisavana/net/impl/IHttpCallback;",
        "callback",
        "",
        "j",
        "(Ljava/lang/String;Lcom/cloud/hisavana/net/RequestParams;Lcom/cloud/hisavana/net/impl/IHttpCallback;)V",
        "c",
        "h",
        "Lcom/cloud/hisavana/net/disklrucache/listener/LruCleanCallBack;",
        "lruCleanCallBack",
        "b",
        "(Lcom/cloud/hisavana/net/disklrucache/listener/LruCleanCallBack;)V",
        "Ljava/util/concurrent/CopyOnWriteArrayList;",
        "Ljava/util/concurrent/CopyOnWriteArrayList;",
        "g",
        "()Ljava/util/concurrent/CopyOnWriteArrayList;",
        "lruCleanCallBacks",
        "",
        "I",
        "e",
        "()I",
        "setCacheSize",
        "(I)V",
        "cacheSize",
        "d",
        "i",
        "setVideoCacheSize",
        "videoCacheSize",
        "f",
        "k",
        "defaultCacheSize",
        "adnetwork_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcom/cloud/hisavana/net/HttpRequest;

.field private static final b:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private static c:I

.field private static d:I

.field private static e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/hisavana/net/HttpRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/hisavana/net/HttpRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/hisavana/net/HttpRequest;->a:Lcom/cloud/hisavana/net/HttpRequest;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/cloud/hisavana/net/HttpRequest;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 14
    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/internal/Ref$ObjectRef;Lokhttp3/Request;Lcom/cloud/hisavana/net/impl/IHttpCallback;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/cloud/hisavana/net/HttpRequest;->d(Lkotlin/jvm/internal/Ref$ObjectRef;Lokhttp3/Request;Lcom/cloud/hisavana/net/impl/IHttpCallback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final c(Ljava/lang/String;Lcom/cloud/hisavana/net/RequestParams;Lcom/cloud/hisavana/net/impl/IHttpCallback;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    new-instance p1, Lcom/cloud/hisavana/net/RequestParams;

    .line 11
    .line 12
    invoke-direct {p1}, Lcom/cloud/hisavana/net/RequestParams;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 16
    .line 17
    :cond_0
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p1, Lcom/cloud/hisavana/net/RequestParams;

    .line 20
    .line 21
    const-string v1, "isDownload"

    .line 22
    .line 23
    const-string v2, "true"

    .line 24
    .line 25
    invoke-virtual {p1, v1, v2}, Lcom/cloud/hisavana/net/RequestParams;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p1, Lcom/cloud/hisavana/net/RequestParams;

    .line 31
    .line 32
    invoke-static {p0, p1, p2}, Lcom/cloud/hisavana/net/CommonRequest;->a(Ljava/lang/String;Lcom/cloud/hisavana/net/RequestParams;Lcom/cloud/hisavana/net/impl/IHttpCallback;)Lokhttp3/Request;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    if-eqz p0, :cond_1

    .line 37
    .line 38
    sget-object p1, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    .line 39
    .line 40
    new-instance v1, Lcom/cloud/hisavana/net/a;

    .line 41
    .line 42
    invoke-direct {v1, v0, p0, p2}, Lcom/cloud/hisavana/net/a;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lokhttp3/Request;Lcom/cloud/hisavana/net/impl/IHttpCallback;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->g(Ljava/lang/Runnable;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const-string p0, "getRequest:  create request is null"

    .line 50
    .line 51
    invoke-static {p0}, Lcom/cloud/sdk/commonutil/util/c;->netLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_0
    const-string p0, "downloadImage:  post request is error"

    .line 56
    .line 57
    invoke-static {p0}, Lcom/cloud/sdk/commonutil/util/c;->netLog(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    return-void
.end method

.method private static final d(Lkotlin/jvm/internal/Ref$ObjectRef;Lokhttp3/Request;Lcom/cloud/hisavana/net/impl/IHttpCallback;)V
    .locals 1

    .line 1
    const-string v0, "$tempParams"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lcom/cloud/hisavana/net/RequestParams;

    .line 9
    .line 10
    invoke-static {p0, p1, p2}, Lcom/cloud/hisavana/net/CommonOkHttpClient;->i(Lcom/cloud/hisavana/net/RequestParams;Lokhttp3/Request;Lcom/cloud/hisavana/net/impl/IHttpCallback;)Lokhttp3/Call;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static final j(Ljava/lang/String;Lcom/cloud/hisavana/net/RequestParams;Lcom/cloud/hisavana/net/impl/IHttpCallback;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    new-instance p1, Lcom/cloud/hisavana/net/RequestParams;

    .line 4
    .line 5
    invoke-direct {p1}, Lcom/cloud/hisavana/net/RequestParams;-><init>()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const-string v0, "isDownload"

    .line 9
    .line 10
    const-string v1, "false"

    .line 11
    .line 12
    invoke-virtual {p1, v0, v1}, Lcom/cloud/hisavana/net/RequestParams;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p0, p1, p2}, Lcom/cloud/hisavana/net/CommonRequest;->b(Ljava/lang/String;Lcom/cloud/hisavana/net/RequestParams;Lcom/cloud/hisavana/net/impl/IHttpCallback;)Lokhttp3/Request;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    invoke-static {p0, p2}, Lcom/cloud/hisavana/net/CommonOkHttpClient;->n(Lokhttp3/Request;Lcom/cloud/hisavana/net/impl/IHttpCallback;)Lokhttp3/Call;

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const-string p0, "postRequest:  create request is null"

    .line 26
    .line 27
    invoke-static {p0}, Lcom/cloud/sdk/commonutil/util/c;->netLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    const-string p0, "postRequest:  post request is error"

    .line 32
    .line 33
    invoke-static {p0}, Lcom/cloud/sdk/commonutil/util/c;->netLog(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method


# virtual methods
.method public final b(Lcom/cloud/hisavana/net/disklrucache/listener/LruCleanCallBack;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget-object v0, Lcom/cloud/hisavana/net/HttpRequest;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final e()I
    .locals 1

    .line 1
    sget v0, Lcom/cloud/hisavana/net/HttpRequest;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public final f()I
    .locals 1

    .line 1
    sget v0, Lcom/cloud/hisavana/net/HttpRequest;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public final g()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/hisavana/net/HttpRequest;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h(Ljava/lang/String;Lcom/cloud/hisavana/net/RequestParams;Lcom/cloud/hisavana/net/impl/IHttpCallback;)V
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    :try_start_0
    new-instance p2, Lcom/cloud/hisavana/net/RequestParams;

    .line 4
    .line 5
    invoke-direct {p2}, Lcom/cloud/hisavana/net/RequestParams;-><init>()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const-string v0, "isDownload"

    .line 9
    .line 10
    const-string v1, "false"

    .line 11
    .line 12
    invoke-virtual {p2, v0, v1}, Lcom/cloud/hisavana/net/RequestParams;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p2, p3}, Lcom/cloud/hisavana/net/CommonRequest;->a(Ljava/lang/String;Lcom/cloud/hisavana/net/RequestParams;Lcom/cloud/hisavana/net/impl/IHttpCallback;)Lokhttp3/Request;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-static {p1, p3}, Lcom/cloud/hisavana/net/CommonOkHttpClient;->j(Lokhttp3/Request;Lcom/cloud/hisavana/net/impl/IHttpCallback;)Lokhttp3/Call;

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const-string p1, "getRequest:  create request is null"

    .line 26
    .line 27
    invoke-static {p1}, Lcom/cloud/sdk/commonutil/util/c;->netLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    const-string p1, "postRequest:  post request is error"

    .line 32
    .line 33
    invoke-static {p1}, Lcom/cloud/sdk/commonutil/util/c;->netLog(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method

.method public final i()I
    .locals 1

    .line 1
    sget v0, Lcom/cloud/hisavana/net/HttpRequest;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public final k(I)V
    .locals 0

    .line 1
    sput p1, Lcom/cloud/hisavana/net/HttpRequest;->e:I

    .line 2
    .line 3
    return-void
.end method
