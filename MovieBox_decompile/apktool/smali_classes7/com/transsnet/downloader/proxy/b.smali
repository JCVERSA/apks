.class public final Lcom/transsnet/downloader/proxy/b;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private a:Lcom/danikula/videocache/HttpProxyCacheServer;

.field private b:Lcom/transsnet/downloader/proxy/DownloadFileCache;

.field private c:Z

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/transsnet/downloader/proxy/b;->d:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/transsnet/downloader/proxy/c;)V
    .locals 1

    .line 1
    const-string v0, "resourceId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsnet/downloader/proxy/b;->b:Lcom/transsnet/downloader/proxy/DownloadFileCache;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2}, Lcom/transsnet/downloader/proxy/DownloadFileCache;->f(Ljava/lang/String;Lcom/transsnet/downloader/proxy/c;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/proxy/b;->b:Lcom/transsnet/downloader/proxy/DownloadFileCache;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsnet/downloader/proxy/DownloadFileCache;->B()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/proxy/b;->a:Lcom/danikula/videocache/HttpProxyCacheServer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/danikula/videocache/HttpProxyCacheServer;->g()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final d()Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/proxy/b;->b:Lcom/transsnet/downloader/proxy/DownloadFileCache;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/transsnet/downloader/proxy/DownloadFileCache;->l()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/transsnet/downloader/proxy/b;->b:Lcom/transsnet/downloader/proxy/DownloadFileCache;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :cond_1
    return-object v1
.end method

.method public final e()Lui/m0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/proxy/b;->b:Lcom/transsnet/downloader/proxy/DownloadFileCache;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsnet/downloader/proxy/DownloadFileCache;->j()Lzw/d;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public final f(Lcom/transsion/baselib/db/download/DownloadBean;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "bean"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsnet/downloader/proxy/b;->b:Lcom/transsnet/downloader/proxy/DownloadFileCache;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/transsnet/downloader/proxy/DownloadFileCache;->i()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Lcom/transsnet/downloader/proxy/b;->b:Lcom/transsnet/downloader/proxy/DownloadFileCache;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Lcom/transsnet/downloader/proxy/DownloadFileCache;->q(Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-nez v0, :cond_3

    .line 44
    .line 45
    const-string v0, ""

    .line 46
    .line 47
    :cond_3
    iput-object v0, p0, Lcom/transsnet/downloader/proxy/b;->d:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v0, p0, Lcom/transsnet/downloader/proxy/b;->a:Lcom/danikula/videocache/HttpProxyCacheServer;

    .line 50
    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    const/4 v3, 0x1

    .line 62
    invoke-virtual {v0, v1, v2, v3}, Lcom/danikula/videocache/HttpProxyCacheServer;->j(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    if-nez v0, :cond_5

    .line 67
    .line 68
    :cond_4
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    :cond_5
    return-object v0
.end method

.method public final g(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/transsnet/downloader/proxy/b;->c:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/transsnet/downloader/proxy/b;->c:Z

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-static {v0}, Lcom/danikula/videocache/q;->d(Z)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Lcom/transsnet/downloader/proxy/DownloadFileCache;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/transsnet/downloader/proxy/DownloadFileCache;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/transsnet/downloader/proxy/b;->b:Lcom/transsnet/downloader/proxy/DownloadFileCache;

    .line 24
    .line 25
    new-instance v0, Lcom/danikula/videocache/HttpProxyCacheServer$a;

    .line 26
    .line 27
    invoke-direct {v0, p1}, Lcom/danikula/videocache/HttpProxyCacheServer$a;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    new-instance p1, Ljava/io/File;

    .line 31
    .line 32
    sget-object v1, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->h()Ljava/io/File;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p1}, Lcom/danikula/videocache/HttpProxyCacheServer$a;->c(Ljava/io/File;)Lcom/danikula/videocache/HttpProxyCacheServer$a;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iget-object v0, p0, Lcom/transsnet/downloader/proxy/b;->b:Lcom/transsnet/downloader/proxy/DownloadFileCache;

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Lcom/danikula/videocache/HttpProxyCacheServer$a;->d(Lcom/danikula/videocache/a;)Lcom/danikula/videocache/HttpProxyCacheServer$a;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1}, Lcom/danikula/videocache/HttpProxyCacheServer$a;->a()Lcom/danikula/videocache/HttpProxyCacheServer;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iput-object p1, p0, Lcom/transsnet/downloader/proxy/b;->a:Lcom/danikula/videocache/HttpProxyCacheServer;

    .line 64
    .line 65
    return-void
.end method

.method public final h()V
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    iput-object v0, p0, Lcom/transsnet/downloader/proxy/b;->d:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/transsnet/downloader/proxy/b;->b:Lcom/transsnet/downloader/proxy/DownloadFileCache;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/transsnet/downloader/proxy/DownloadFileCache;->o()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "resourceId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsnet/downloader/proxy/b;->b:Lcom/transsnet/downloader/proxy/DownloadFileCache;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/transsnet/downloader/proxy/DownloadFileCache;->n(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "contentType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "resourceId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsnet/downloader/proxy/b;->d:Ljava/lang/String;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-lez v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/transsnet/downloader/proxy/b;->d:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-nez p2, :cond_0

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iget-object p2, p0, Lcom/transsnet/downloader/proxy/b;->b:Lcom/transsnet/downloader/proxy/DownloadFileCache;

    .line 29
    .line 30
    if-eqz p2, :cond_1

    .line 31
    .line 32
    invoke-virtual {p2, p1}, Lcom/transsnet/downloader/proxy/DownloadFileCache;->p(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v0, "setCurDownloadContentType, contentType = "

    .line 41
    .line 42
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {p1}, Lcom/danikula/videocache/q;->a(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method
