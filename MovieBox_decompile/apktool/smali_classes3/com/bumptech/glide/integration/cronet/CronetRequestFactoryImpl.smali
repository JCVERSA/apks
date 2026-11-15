.class public final Lcom/bumptech/glide/integration/cronet/CronetRequestFactoryImpl;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bumptech/glide/integration/cronet/CronetRequestFactory;


# instance fields
.field private final cronetEngineGetter:Lcom/google/common/base/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/q;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/base/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/q;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/integration/cronet/CronetRequestFactoryImpl;->cronetEngineGetter:Lcom/google/common/base/q;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public newRequest(Ljava/lang/String;ILjava/util/Map;Lorg/chromium/net/UrlRequest$Callback;)Lorg/chromium/net/UrlRequest$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/chromium/net/UrlRequest$Callback;",
            ")",
            "Lorg/chromium/net/UrlRequest$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/cronet/CronetRequestFactoryImpl;->cronetEngineGetter:Lcom/google/common/base/q;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/common/base/q;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lorg/chromium/net/CronetEngine;

    .line 8
    .line 9
    new-instance v1, Lcom/bumptech/glide/integration/cronet/CronetRequestFactoryImpl$1;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/bumptech/glide/integration/cronet/CronetRequestFactoryImpl$1;-><init>(Lcom/bumptech/glide/integration/cronet/CronetRequestFactoryImpl;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1, p4, v1}, Lorg/chromium/net/CronetEngine;->newUrlRequestBuilder(Ljava/lang/String;Lorg/chromium/net/UrlRequest$Callback;Ljava/util/concurrent/Executor;)Lorg/chromium/net/UrlRequest$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lorg/chromium/net/UrlRequest$Builder;->allowDirectExecutor()Lorg/chromium/net/UrlRequest$Builder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2}, Lorg/chromium/net/UrlRequest$Builder;->setPriority(I)Lorg/chromium/net/UrlRequest$Builder;

    .line 22
    .line 23
    .line 24
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result p3

    .line 36
    if-eqz p3, :cond_2

    .line 37
    .line 38
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    check-cast p3, Ljava/util/Map$Entry;

    .line 43
    .line 44
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p4

    .line 48
    check-cast p4, Ljava/lang/String;

    .line 49
    .line 50
    const-string v0, "Accept-Encoding"

    .line 51
    .line 52
    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_0

    .line 57
    .line 58
    const-string v0, "User-Agent"

    .line 59
    .line 60
    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p3

    .line 71
    check-cast p3, Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {p1, p4, p3}, Lorg/chromium/net/UrlRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/UrlRequest$Builder;

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    return-object p1
.end method
