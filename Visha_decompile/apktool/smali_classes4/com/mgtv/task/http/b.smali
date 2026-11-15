.class public Lcom/mgtv/task/http/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/task/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mgtv/task/c<",
        "Lcom/mgtv/task/http/HttpRequestObject;",
        "Lcom/mgtv/task/http/HttpResponseObject;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mgtv/task/http/b;->b:Ljava/util/Collection;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/task/http/b;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/io/File;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 25
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private d(Lcom/mgtv/task/http/HttpRequestObject;)Ljava/io/File;
    .locals 3

    iget-object v0, p0, Lcom/mgtv/task/http/b;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mgtv/task/http/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "http_cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/mgtv/task/http/b;->a(Ljava/io/File;)Z

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/mgtv/task/http/b;->c(Lcom/mgtv/task/http/HttpRequestObject;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/task/http/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public a(Lcom/mgtv/task/http/HttpRequestObject;Lcom/mgtv/task/http/HttpResponseObject;)V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 5
    invoke-direct {p0, p1}, Lcom/mgtv/task/http/b;->d(Lcom/mgtv/task/http/HttpRequestObject;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object p1, p2, Lcom/mgtv/task/http/HttpResponseObject;->channel:Lcom/mgtv/task/http/a;

    if-eqz p1, :cond_2

    const/16 p2, 0x4000

    .line 7
    new-array p2, p2, [B

    const/4 v0, 0x0

    .line 8
    :try_start_0
    invoke-interface {p1}, Lcom/mgtv/task/http/a;->b()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 9
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 10
    :goto_0
    :try_start_2
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x0

    .line 11
    invoke-virtual {v1, p2, v0, p0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :goto_1
    move-object v0, p1

    goto :goto_8

    :catch_0
    move-exception p0

    :goto_2
    move-object v0, p1

    goto :goto_5

    :catch_1
    move-exception p0

    :goto_3
    move-object v0, p1

    goto :goto_7

    .line 12
    :cond_1
    invoke-static {p1}, Lcom/mgtv/task/http/j;->a(Ljava/io/Closeable;)V

    .line 13
    :goto_4
    invoke-static {v1}, Lcom/mgtv/task/http/j;->a(Ljava/io/Closeable;)V

    goto :goto_9

    :catchall_1
    move-exception p0

    move-object v1, v0

    goto :goto_1

    :catch_2
    move-exception p0

    move-object v1, v0

    goto :goto_2

    :catch_3
    move-exception p0

    move-object v1, v0

    goto :goto_3

    :catchall_2
    move-exception p0

    move-object v1, v0

    goto :goto_8

    :catch_4
    move-exception p0

    move-object v1, v0

    .line 14
    :goto_5
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 15
    :goto_6
    invoke-static {v0}, Lcom/mgtv/task/http/j;->a(Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_3
    move-exception p0

    goto :goto_8

    :catch_5
    move-exception p0

    move-object v1, v0

    .line 16
    :goto_7
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_6

    .line 17
    :goto_8
    invoke-static {v0}, Lcom/mgtv/task/http/j;->a(Ljava/io/Closeable;)V

    .line 18
    invoke-static {v1}, Lcom/mgtv/task/http/j;->a(Ljava/io/Closeable;)V

    .line 19
    throw p0

    .line 20
    :cond_2
    const-class p1, Lcom/mgtv/task/http/HttpResponseObject;

    invoke-static {p2, p1}, Lcom/mgtv/json/a;->a(Lcom/mgtv/json/JsonInterface;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/mgtv/task/http/j;->a(Ljava/lang/String;Ljava/io/File;)Z

    :goto_9
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    check-cast p1, Lcom/mgtv/task/http/HttpRequestObject;

    check-cast p2, Lcom/mgtv/task/http/HttpResponseObject;

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/task/http/b;->a(Lcom/mgtv/task/http/HttpRequestObject;Lcom/mgtv/task/http/HttpResponseObject;)V

    return-void
.end method

.method public a(Ljava/util/Collection;)V
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 21
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/mgtv/task/http/b;->b:Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/mgtv/task/http/HttpRequestObject;)Z
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/mgtv/task/http/b;->d(Lcom/mgtv/task/http/HttpRequestObject;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 2
    check-cast p1, Lcom/mgtv/task/http/HttpRequestObject;

    invoke-virtual {p0, p1}, Lcom/mgtv/task/http/b;->a(Lcom/mgtv/task/http/HttpRequestObject;)Z

    move-result p0

    return p0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "appVersion"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v3, "seqId"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v3, "network_type"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_0

    :sswitch_3
    const-string v3, "app_version"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 24
    iget-object p0, p0, Lcom/mgtv/task/http/b;->b:Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    :pswitch_0
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x35c17346 -> :sswitch_3
        -0x128e555 -> :sswitch_2
        0x68429da -> :sswitch_1
        0x5875c377 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public b(Lcom/mgtv/task/http/HttpRequestObject;)Lcom/mgtv/task/http/HttpResponseObject;
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/mgtv/task/http/b;->d(Lcom/mgtv/task/http/HttpRequestObject;)Ljava/io/File;

    move-result-object p0

    .line 3
    iget-object v0, p1, Lcom/mgtv/task/http/HttpRequestObject;->channel:Lcom/mgtv/task/http/a;

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Lcom/mgtv/task/http/HttpResponseObject;

    invoke-direct {v0}, Lcom/mgtv/task/http/HttpResponseObject;-><init>()V

    const/16 v1, 0x4000

    .line 5
    new-array v1, v1, [B

    const/4 v2, 0x0

    .line 6
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    iget-object p0, p1, Lcom/mgtv/task/http/HttpRequestObject;->channel:Lcom/mgtv/task/http/a;

    invoke-interface {p0}, Lcom/mgtv/task/http/a;->a()Ljava/io/OutputStream;

    move-result-object v2

    .line 8
    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result p0

    const/4 v4, -0x1

    if-eq p0, v4, :cond_0

    const/4 v4, 0x0

    .line 9
    invoke-virtual {v2, v1, v4, p0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object p1, v2

    move-object v2, v3

    goto :goto_6

    :catch_0
    move-exception p0

    move-object p1, v2

    move-object v2, v3

    goto :goto_1

    :catch_1
    move-exception p0

    move-object p1, v2

    move-object v2, v3

    goto :goto_3

    :catch_2
    move-exception p0

    move-object p1, v2

    move-object v2, v3

    goto :goto_4

    .line 10
    :cond_0
    iget-object p0, p1, Lcom/mgtv/task/http/HttpRequestObject;->channel:Lcom/mgtv/task/http/a;

    iput-object p0, v0, Lcom/mgtv/task/http/HttpResponseObject;->channel:Lcom/mgtv/task/http/a;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    invoke-static {v3}, Lcom/mgtv/task/http/j;->a(Ljava/io/Closeable;)V

    .line 12
    invoke-static {v2}, Lcom/mgtv/task/http/j;->a(Ljava/io/Closeable;)V

    goto :goto_5

    :catchall_1
    move-exception p0

    move-object p1, v2

    goto :goto_6

    :catch_3
    move-exception p0

    move-object p1, v2

    goto :goto_1

    :catch_4
    move-exception p0

    move-object p1, v2

    goto :goto_3

    :catch_5
    move-exception p0

    move-object p1, v2

    goto :goto_4

    .line 13
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 14
    :goto_2
    invoke-static {v2}, Lcom/mgtv/task/http/j;->a(Ljava/io/Closeable;)V

    .line 15
    invoke-static {p1}, Lcom/mgtv/task/http/j;->a(Ljava/io/Closeable;)V

    goto :goto_5

    :catchall_2
    move-exception p0

    goto :goto_6

    .line 16
    :goto_3
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 17
    :goto_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :goto_5
    return-object v0

    .line 18
    :goto_6
    invoke-static {v2}, Lcom/mgtv/task/http/j;->a(Ljava/io/Closeable;)V

    .line 19
    invoke-static {p1}, Lcom/mgtv/task/http/j;->a(Ljava/io/Closeable;)V

    .line 20
    throw p0

    .line 21
    :cond_1
    invoke-static {p0}, Lcom/mgtv/task/http/j;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    .line 22
    const-class p1, Lcom/mgtv/task/http/HttpResponseObject;

    invoke-static {p0, p1}, Lcom/mgtv/json/a;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/mgtv/json/JsonInterface;

    move-result-object p0

    check-cast p0, Lcom/mgtv/task/http/HttpResponseObject;

    return-object p0
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    check-cast p1, Lcom/mgtv/task/http/HttpRequestObject;

    invoke-virtual {p0, p1}, Lcom/mgtv/task/http/b;->b(Lcom/mgtv/task/http/HttpRequestObject;)Lcom/mgtv/task/http/HttpResponseObject;

    move-result-object p0

    return-object p0
.end method

.method public c(Lcom/mgtv/task/http/HttpRequestObject;)Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/mgtv/task/http/HttpRequestObject;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/mgtv/task/http/HttpRequestObject;->params:Lcom/mgtv/task/http/HttpParams;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/mgtv/task/http/HttpParams$Type;->values()[Lcom/mgtv/task/http/HttpParams$Type;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    const-string v5, "||"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/mgtv/task/http/HttpRequestObject;->params:Lcom/mgtv/task/http/HttpParams;

    invoke-virtual {v5, v4}, Lcom/mgtv/task/http/HttpParams;->getParams(Lcom/mgtv/task/http/HttpParams$Type;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/mgtv/task/http/b;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
