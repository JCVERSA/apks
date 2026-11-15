.class public abstract Lfn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Landroid/util/LruCache;

.field public static b:Lsp0;

.field public static c:Lcom/danikula/videocache/HttpProxyCacheServer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lfn;->a:Landroid/util/LruCache;

    new-instance v0, Lfn$a;

    invoke-direct {v0}, Lfn$a;-><init>()V

    sput-object v0, Lfn;->b:Lsp0;

    return-void
.end method

.method public static a()Lcom/danikula/videocache/HttpProxyCacheServer;
    .locals 1

    sget-object v0, Lfn;->c:Lcom/danikula/videocache/HttpProxyCacheServer;

    if-nez v0, :cond_0

    invoke-static {}, Lfn;->c()Lcom/danikula/videocache/HttpProxyCacheServer;

    move-result-object v0

    sput-object v0, Lfn;->c:Lcom/danikula/videocache/HttpProxyCacheServer;

    :cond_0
    sget-object v0, Lfn;->c:Lcom/danikula/videocache/HttpProxyCacheServer;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x64

    if-nez v0, :cond_1

    sget-object v0, Lfn;->a:Landroid/util/LruCache;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_1
    invoke-static {}, Lfn;->a()Lcom/danikula/videocache/HttpProxyCacheServer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/danikula/videocache/HttpProxyCacheServer;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "AudioCacheManager"

    if-eqz v3, :cond_2

    const-string v0, "proxyUrl is empty."

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_2
    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lfn;->a:Landroid/util/LruCache;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, p0, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-object v1, Lfn;->b:Lsp0;

    invoke-virtual {v0, v1, p0}, Lcom/danikula/videocache/HttpProxyCacheServer;->p(Lsp0;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "httpConvertToLocalPath-url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "httpConvertToLocalPath-proxyUrl:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public static c()Lcom/danikula/videocache/HttpProxyCacheServer;
    .locals 3

    new-instance v0, Lcom/danikula/videocache/HttpProxyCacheServer$b;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/danikula/videocache/HttpProxyCacheServer$b;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lav3;->v(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/danikula/videocache/HttpProxyCacheServer$b;->c(Ljava/io/File;)Lcom/danikula/videocache/HttpProxyCacheServer$b;

    move-result-object v0

    const-wide/32 v1, 0x40000000

    invoke-virtual {v0, v1, v2}, Lcom/danikula/videocache/HttpProxyCacheServer$b;->d(J)Lcom/danikula/videocache/HttpProxyCacheServer$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/danikula/videocache/HttpProxyCacheServer$b;->a()Lcom/danikula/videocache/HttpProxyCacheServer;

    move-result-object v0

    return-object v0
.end method
