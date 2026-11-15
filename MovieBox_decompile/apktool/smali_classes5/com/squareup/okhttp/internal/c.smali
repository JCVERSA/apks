.class public abstract Lcom/squareup/okhttp/internal/c;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static instance:Lcom/squareup/okhttp/internal/c;

.field public static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/squareup/okhttp/OkHttpClient;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/squareup/okhttp/internal/c;->logger:Ljava/util/logging/Logger;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static initializeInstanceForTests()V
    .locals 1

    .line 1
    new-instance v0, Lcom/squareup/okhttp/OkHttpClient;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public abstract addLenient(Lcom/squareup/okhttp/Headers$Builder;Ljava/lang/String;)V
.end method

.method public abstract apply(Lcom/squareup/okhttp/ConnectionSpec;Ljavax/net/ssl/SSLSocket;Z)V
.end method

.method public abstract connectionBecameIdle(Lcom/squareup/okhttp/ConnectionPool;Lhf/a;)Z
.end method

.method public abstract get(Lcom/squareup/okhttp/ConnectionPool;Lcom/squareup/okhttp/Address;Lcom/squareup/okhttp/internal/http/n;)Lhf/a;
.end method

.method public abstract internalCache(Lcom/squareup/okhttp/OkHttpClient;)Lcom/squareup/okhttp/internal/InternalCache;
.end method

.method public abstract put(Lcom/squareup/okhttp/ConnectionPool;Lhf/a;)V
.end method

.method public abstract routeDatabase(Lcom/squareup/okhttp/ConnectionPool;)Lcom/squareup/okhttp/internal/f;
.end method
