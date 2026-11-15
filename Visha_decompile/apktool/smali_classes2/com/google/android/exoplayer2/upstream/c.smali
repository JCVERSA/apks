.class public final Lcom/google/android/exoplayer2/upstream/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/c$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/List;

.field public final c:Lcom/google/android/exoplayer2/upstream/a;

.field public d:Lcom/google/android/exoplayer2/upstream/a;

.field public e:Lcom/google/android/exoplayer2/upstream/a;

.field public f:Lcom/google/android/exoplayer2/upstream/a;

.field public g:Lcom/google/android/exoplayer2/upstream/a;

.field public h:Lcom/google/android/exoplayer2/upstream/a;

.field public i:Lcom/google/android/exoplayer2/upstream/a;

.field public j:Lcom/google/android/exoplayer2/upstream/a;

.field public k:Lcom/google/android/exoplayer2/upstream/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/c;->a:Landroid/content/Context;

    invoke-static {p2}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/upstream/a;

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/c;->c:Lcom/google/android/exoplayer2/upstream/a;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/c;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/upstream/b;)J
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/c;->k:Lcom/google/android/exoplayer2/upstream/a;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lzi;->g(Z)V

    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/b;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/b;->a:Landroid/net/Uri;

    invoke-static {v1}, Lblb;->o0(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/b;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "/android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/c;->d()Lcom/google/android/exoplayer2/upstream/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/c;->k:Lcom/google/android/exoplayer2/upstream/a;

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/c;->g()Lcom/google/android/exoplayer2/upstream/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/c;->k:Lcom/google/android/exoplayer2/upstream/a;

    goto :goto_2

    :cond_2
    const-string v1, "asset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/c;->d()Lcom/google/android/exoplayer2/upstream/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/c;->k:Lcom/google/android/exoplayer2/upstream/a;

    goto :goto_2

    :cond_3
    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/c;->e()Lcom/google/android/exoplayer2/upstream/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/c;->k:Lcom/google/android/exoplayer2/upstream/a;

    goto :goto_2

    :cond_4
    const-string v1, "rtmp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/c;->i()Lcom/google/android/exoplayer2/upstream/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/c;->k:Lcom/google/android/exoplayer2/upstream/a;

    goto :goto_2

    :cond_5
    const-string/jumbo v1, "udp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/c;->j()Lcom/google/android/exoplayer2/upstream/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/c;->k:Lcom/google/android/exoplayer2/upstream/a;

    goto :goto_2

    :cond_6
    const-string v1, "data"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/c;->f()Lcom/google/android/exoplayer2/upstream/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/c;->k:Lcom/google/android/exoplayer2/upstream/a;

    goto :goto_2

    :cond_7
    const-string v1, "rawresource"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "android.resource"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/c;->c:Lcom/google/android/exoplayer2/upstream/a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/c;->k:Lcom/google/android/exoplayer2/upstream/a;

    goto :goto_2

    :cond_9
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/c;->h()Lcom/google/android/exoplayer2/upstream/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/c;->k:Lcom/google/android/exoplayer2/upstream/a;

    :goto_2
    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/c;->k:Lcom/google/android/exoplayer2/upstream/a;

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/upstream/a;->a(Lcom/google/android/exoplayer2/upstream/b;)J

    move-result-wide p0

    return-wide p0
.end method

.method public b(Lu5b;)V
    .locals 1

    invoke-static {p1}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/c;->c:Lcom/google/android/exoplayer2/upstream/a;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/a;->b(Lu5b;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/c;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/c;->d:Lcom/google/android/exoplayer2/upstream/a;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/upstream/c;->k(Lcom/google/android/exoplayer2/upstream/a;Lu5b;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/c;->e:Lcom/google/android/exoplayer2/upstream/a;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/upstream/c;->k(Lcom/google/android/exoplayer2/upstream/a;Lu5b;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/c;->f:Lcom/google/android/exoplayer2/upstream/a;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/upstream/c;->k(Lcom/google/android/exoplayer2/upstream/a;Lu5b;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/c;->g:Lcom/google/android/exoplayer2/upstream/a;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/upstream/c;->k(Lcom/google/android/exoplayer2/upstream/a;Lu5b;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/c;->h:Lcom/google/android/exoplayer2/upstream/a;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/upstream/c;->k(Lcom/google/android/exoplayer2/upstream/a;Lu5b;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/c;->i:Lcom/google/android/exoplayer2/upstream/a;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/upstream/c;->k(Lcom/google/android/exoplayer2/upstream/a;Lu5b;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/c;->j:Lcom/google/android/exoplayer2/upstream/a;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/upstream/c;->k(Lcom/google/android/exoplayer2/upstream/a;Lu5b;)V

    return-void
.end method

.method public final c(Lcom/google/android/exoplayer2/upstream/a;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/c;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/c;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu5b;

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/upstream/a;->b(Lu5b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/c;->k:Lcom/google/android/exoplayer2/upstream/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/a;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/c;->k:Lcom/google/android/exoplayer2/upstream/a;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/c;->k:Lcom/google/android/exoplayer2/upstream/a;

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public final d()Lcom/google/android/exoplayer2/upstream/a;
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/c;->e:Lcom/google/android/exoplayer2/upstream/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/upstream/AssetDataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/AssetDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/c;->e:Lcom/google/android/exoplayer2/upstream/a;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/upstream/c;->c(Lcom/google/android/exoplayer2/upstream/a;)V

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/c;->e:Lcom/google/android/exoplayer2/upstream/a;

    return-object p0
.end method

.method public final e()Lcom/google/android/exoplayer2/upstream/a;
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/c;->f:Lcom/google/android/exoplayer2/upstream/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/ContentDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/c;->f:Lcom/google/android/exoplayer2/upstream/a;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/upstream/c;->c(Lcom/google/android/exoplayer2/upstream/a;)V

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/c;->f:Lcom/google/android/exoplayer2/upstream/a;

    return-object p0
.end method

.method public final f()Lcom/google/android/exoplayer2/upstream/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/c;->i:Lcom/google/android/exoplayer2/upstream/a;

    if-nez v0, :cond_0

    new-instance v0, Lqs1;

    invoke-direct {v0}, Lqs1;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/c;->i:Lcom/google/android/exoplayer2/upstream/a;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/upstream/c;->c(Lcom/google/android/exoplayer2/upstream/a;)V

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/c;->i:Lcom/google/android/exoplayer2/upstream/a;

    return-object p0
.end method

.method public final g()Lcom/google/android/exoplayer2/upstream/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/c;->d:Lcom/google/android/exoplayer2/upstream/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/upstream/FileDataSource;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/FileDataSource;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/c;->d:Lcom/google/android/exoplayer2/upstream/a;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/upstream/c;->c(Lcom/google/android/exoplayer2/upstream/a;)V

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/c;->d:Lcom/google/android/exoplayer2/upstream/a;

    return-object p0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/c;->k:Lcom/google/android/exoplayer2/upstream/a;

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/google/android/exoplayer2/upstream/a;->getResponseHeaders()Ljava/util/Map;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/c;->k:Lcom/google/android/exoplayer2/upstream/a;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/google/android/exoplayer2/upstream/a;->getUri()Landroid/net/Uri;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final h()Lcom/google/android/exoplayer2/upstream/a;
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/c;->j:Lcom/google/android/exoplayer2/upstream/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/c;->j:Lcom/google/android/exoplayer2/upstream/a;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/upstream/c;->c(Lcom/google/android/exoplayer2/upstream/a;)V

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/c;->j:Lcom/google/android/exoplayer2/upstream/a;

    return-object p0
.end method

.method public final i()Lcom/google/android/exoplayer2/upstream/a;
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/c;->g:Lcom/google/android/exoplayer2/upstream/a;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "com.google.android.exoplayer2.ext.rtmp.RtmpDataSource"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/c;->g:Lcom/google/android/exoplayer2/upstream/a;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/upstream/c;->c(Lcom/google/android/exoplayer2/upstream/a;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error instantiating RTMP extension"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    const-string v0, "DefaultDataSource"

    const-string v1, "Attempting to play RTMP stream without depending on the RTMP extension"

    invoke-static {v0, v1}, Lop5;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/c;->g:Lcom/google/android/exoplayer2/upstream/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/c;->c:Lcom/google/android/exoplayer2/upstream/a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/c;->g:Lcom/google/android/exoplayer2/upstream/a;

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/c;->g:Lcom/google/android/exoplayer2/upstream/a;

    return-object p0
.end method

.method public final j()Lcom/google/android/exoplayer2/upstream/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/c;->h:Lcom/google/android/exoplayer2/upstream/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/UdpDataSource;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/c;->h:Lcom/google/android/exoplayer2/upstream/a;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/upstream/c;->c(Lcom/google/android/exoplayer2/upstream/a;)V

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/c;->h:Lcom/google/android/exoplayer2/upstream/a;

    return-object p0
.end method

.method public final k(Lcom/google/android/exoplayer2/upstream/a;Lu5b;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/upstream/a;->b(Lu5b;)V

    :cond_0
    return-void
.end method

.method public read([BII)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/c;->k:Lcom/google/android/exoplayer2/upstream/a;

    invoke-static {p0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/upstream/a;

    invoke-interface {p0, p1, p2, p3}, Lms1;->read([BII)I

    move-result p0

    return p0
.end method
