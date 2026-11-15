.class final Lcom/mgtv/downloader/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/downloader/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/downloader/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/downloader/b;


# direct methods
.method private constructor <init>(Lcom/mgtv/downloader/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mgtv/downloader/b$a;->a:Lcom/mgtv/downloader/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/mgtv/downloader/b;Lcom/mgtv/downloader/b$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/mgtv/downloader/b$a;-><init>(Lcom/mgtv/downloader/b;)V

    return-void
.end method


# virtual methods
.method public a(ILcom/mgtv/downloader/net/entity/a;)V
    .locals 2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DownloadListener]onDownloadFinish taskID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/mgtv/downloader/net/entity/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/mgtv/downloader/b$a;->a:Lcom/mgtv/downloader/b;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mgtv/downloader/b;->a(Lcom/mgtv/downloader/b;Ljava/lang/Integer;)Lcom/mgtv/downloader/a/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 17
    invoke-static {}, Lcom/mgtv/downloader/util/d;->a()I

    move-result v0

    if-ltz v0, :cond_0

    .line 18
    invoke-static {}, Lcom/mgtv/downloader/util/d;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mgtv/downloader/net/entity/a;->d(Ljava/lang/Integer;)V

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/mgtv/downloader/b$a;->a:Lcom/mgtv/downloader/b;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mgtv/downloader/b;->a(Lcom/mgtv/downloader/b;Ljava/lang/Integer;)Lcom/mgtv/downloader/a/b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mgtv/downloader/a/b;->a(ILcom/mgtv/downloader/net/entity/a;)V

    .line 20
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/mgtv/downloader/b$a;->a:Lcom/mgtv/downloader/b;

    invoke-virtual {p1, p2}, Lcom/mgtv/downloader/b;->a(Lcom/mgtv/downloader/net/entity/a;)Lcom/mgtv/downloader/database/c;

    move-result-object p1

    .line 21
    iget-object p2, p0, Lcom/mgtv/downloader/b$a;->a:Lcom/mgtv/downloader/b;

    invoke-static {p2}, Lcom/mgtv/downloader/b;->c(Lcom/mgtv/downloader/b;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/mgtv/downloader/database/d;->a(Landroid/content/Context;)Lcom/mgtv/downloader/database/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mgtv/downloader/database/d;->a()Lcom/mgtv/downloader/database/DownloadInfoDao;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/greenrobot/greendao/AbstractDao;->update(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :goto_0
    iget-object p0, p0, Lcom/mgtv/downloader/b$a;->a:Lcom/mgtv/downloader/b;

    invoke-static {p0}, Lcom/mgtv/downloader/b;->b(Lcom/mgtv/downloader/b;)Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 23
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    iget-object p2, p0, Lcom/mgtv/downloader/b$a;->a:Lcom/mgtv/downloader/b;

    invoke-static {p2, p1}, Lcom/mgtv/downloader/b;->a(Lcom/mgtv/downloader/b;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 25
    :goto_2
    iget-object p0, p0, Lcom/mgtv/downloader/b$a;->a:Lcom/mgtv/downloader/b;

    invoke-static {p0}, Lcom/mgtv/downloader/b;->b(Lcom/mgtv/downloader/b;)Z

    .line 26
    throw p1
.end method

.method public a(ILcom/mgtv/downloader/net/entity/a;ILjava/lang/String;)V
    .locals 2

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DownloadListener]onDownloadError taskID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/mgtv/downloader/net/entity/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/mgtv/downloader/b$a;->a:Lcom/mgtv/downloader/b;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mgtv/downloader/b;->a(Lcom/mgtv/downloader/b;Ljava/lang/Integer;)Lcom/mgtv/downloader/a/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Lcom/mgtv/downloader/util/d;->a()I

    move-result v0

    if-ltz v0, :cond_0

    .line 8
    invoke-static {}, Lcom/mgtv/downloader/util/d;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mgtv/downloader/net/entity/a;->d(Ljava/lang/Integer;)V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mgtv/downloader/b$a;->a:Lcom/mgtv/downloader/b;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mgtv/downloader/b;->a(Lcom/mgtv/downloader/b;Ljava/lang/Integer;)Lcom/mgtv/downloader/a/b;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mgtv/downloader/a/b;->a(ILcom/mgtv/downloader/net/entity/a;ILjava/lang/String;)V

    :cond_1
    const/4 p1, 0x5

    if-eq p1, p3, :cond_2

    const/4 p1, 0x6

    if-eq p1, p3, :cond_2

    const/4 p1, 0x7

    if-eq p1, p3, :cond_2

    const p1, 0x499c0

    if-ne p1, p3, :cond_3

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/mgtv/downloader/b$a;->a:Lcom/mgtv/downloader/b;

    invoke-static {p1}, Lcom/mgtv/downloader/b;->b(Lcom/mgtv/downloader/b;)Z

    .line 11
    :cond_3
    :try_start_0
    iget-object p1, p0, Lcom/mgtv/downloader/b$a;->a:Lcom/mgtv/downloader/b;

    invoke-virtual {p1, p2}, Lcom/mgtv/downloader/b;->a(Lcom/mgtv/downloader/net/entity/a;)Lcom/mgtv/downloader/database/c;

    move-result-object p1

    .line 12
    iget-object p2, p0, Lcom/mgtv/downloader/b$a;->a:Lcom/mgtv/downloader/b;

    invoke-static {p2}, Lcom/mgtv/downloader/b;->c(Lcom/mgtv/downloader/b;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/mgtv/downloader/database/d;->a(Landroid/content/Context;)Lcom/mgtv/downloader/database/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mgtv/downloader/database/d;->a()Lcom/mgtv/downloader/database/DownloadInfoDao;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/greenrobot/greendao/AbstractDao;->update(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    iget-object p0, p0, Lcom/mgtv/downloader/b$a;->a:Lcom/mgtv/downloader/b;

    invoke-static {p0, p1}, Lcom/mgtv/downloader/b;->a(Lcom/mgtv/downloader/b;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public a(ILcom/mgtv/downloader/net/entity/a;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mgtv/downloader/b$a;->a:Lcom/mgtv/downloader/b;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mgtv/downloader/b;->a(Lcom/mgtv/downloader/b;Ljava/lang/Integer;)Lcom/mgtv/downloader/a/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/mgtv/downloader/util/d;->a()I

    move-result v0

    if-ltz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/mgtv/downloader/util/d;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mgtv/downloader/net/entity/a;->d(Ljava/lang/Integer;)V

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/mgtv/downloader/b$a;->a:Lcom/mgtv/downloader/b;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mgtv/downloader/b;->a(Lcom/mgtv/downloader/b;Ljava/lang/Integer;)Lcom/mgtv/downloader/a/b;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/mgtv/downloader/a/b;->a(ILcom/mgtv/downloader/net/entity/a;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public b(ILcom/mgtv/downloader/net/entity/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mgtv/downloader/b$a;->a:Lcom/mgtv/downloader/b;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mgtv/downloader/b;->a(Lcom/mgtv/downloader/b;Ljava/lang/Integer;)Lcom/mgtv/downloader/a/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/mgtv/downloader/util/d;->a()I

    move-result v0

    if-ltz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/mgtv/downloader/util/d;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mgtv/downloader/net/entity/a;->d(Ljava/lang/Integer;)V

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/mgtv/downloader/b$a;->a:Lcom/mgtv/downloader/b;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mgtv/downloader/b;->a(Lcom/mgtv/downloader/b;Ljava/lang/Integer;)Lcom/mgtv/downloader/a/b;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/mgtv/downloader/a/b;->b(ILcom/mgtv/downloader/net/entity/a;)V

    :cond_1
    return-void
.end method

.method public b(ILcom/mgtv/downloader/net/entity/a;Ljava/lang/String;)V
    .locals 2

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DownloadListener]onDownloadSlow taskID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/mgtv/downloader/net/entity/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/mgtv/downloader/b$a;->a:Lcom/mgtv/downloader/b;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mgtv/downloader/b;->a(Lcom/mgtv/downloader/b;Ljava/lang/Integer;)Lcom/mgtv/downloader/a/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Lcom/mgtv/downloader/util/d;->a()I

    move-result v0

    if-ltz v0, :cond_0

    .line 8
    invoke-static {}, Lcom/mgtv/downloader/util/d;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mgtv/downloader/net/entity/a;->d(Ljava/lang/Integer;)V

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/mgtv/downloader/b$a;->a:Lcom/mgtv/downloader/b;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mgtv/downloader/b;->a(Lcom/mgtv/downloader/b;Ljava/lang/Integer;)Lcom/mgtv/downloader/a/b;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/mgtv/downloader/a/b;->b(ILcom/mgtv/downloader/net/entity/a;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public c(ILcom/mgtv/downloader/net/entity/a;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DownloadListener]onRemove taskID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/mgtv/downloader/net/entity/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/mgtv/downloader/b$a;->a:Lcom/mgtv/downloader/b;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mgtv/downloader/b;->a(Lcom/mgtv/downloader/b;Ljava/lang/Integer;)Lcom/mgtv/downloader/a/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/mgtv/downloader/util/d;->a()I

    move-result v0

    if-ltz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/mgtv/downloader/util/d;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mgtv/downloader/net/entity/a;->d(Ljava/lang/Integer;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/mgtv/downloader/b$a;->a:Lcom/mgtv/downloader/b;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mgtv/downloader/b;->a(Lcom/mgtv/downloader/b;Ljava/lang/Integer;)Lcom/mgtv/downloader/a/b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mgtv/downloader/a/b;->c(ILcom/mgtv/downloader/net/entity/a;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/mgtv/downloader/b$a;->a:Lcom/mgtv/downloader/b;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mgtv/downloader/b;->b(Lcom/mgtv/downloader/b;Ljava/lang/Integer;)V

    .line 7
    iget-object p1, p0, Lcom/mgtv/downloader/b$a;->a:Lcom/mgtv/downloader/b;

    invoke-virtual {p2}, Lcom/mgtv/downloader/net/entity/a;->r()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mgtv/downloader/b;->a(Ljava/lang/String;)V

    .line 8
    iget-object p0, p0, Lcom/mgtv/downloader/b$a;->a:Lcom/mgtv/downloader/b;

    invoke-static {p0}, Lcom/mgtv/downloader/b;->b(Lcom/mgtv/downloader/b;)Z

    return-void
.end method

.method public c(ILcom/mgtv/downloader/net/entity/a;Ljava/lang/String;)V
    .locals 2

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DownloadListener]onDownloadResume taskID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/mgtv/downloader/net/entity/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/mgtv/downloader/b$a;->a:Lcom/mgtv/downloader/b;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mgtv/downloader/b;->a(Lcom/mgtv/downloader/b;Ljava/lang/Integer;)Lcom/mgtv/downloader/a/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 11
    invoke-static {}, Lcom/mgtv/downloader/util/d;->a()I

    move-result v0

    if-ltz v0, :cond_0

    .line 12
    invoke-static {}, Lcom/mgtv/downloader/util/d;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mgtv/downloader/net/entity/a;->d(Ljava/lang/Integer;)V

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/mgtv/downloader/b$a;->a:Lcom/mgtv/downloader/b;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mgtv/downloader/b;->a(Lcom/mgtv/downloader/b;Ljava/lang/Integer;)Lcom/mgtv/downloader/a/b;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/mgtv/downloader/a/b;->c(ILcom/mgtv/downloader/net/entity/a;Ljava/lang/String;)V

    .line 14
    :cond_1
    iget-object p0, p0, Lcom/mgtv/downloader/b$a;->a:Lcom/mgtv/downloader/b;

    invoke-static {p0}, Lcom/mgtv/downloader/b;->b(Lcom/mgtv/downloader/b;)Z

    return-void
.end method

.method public d(ILcom/mgtv/downloader/net/entity/a;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DownloadListener]onDownloadMD5CheckFinish taskID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/mgtv/downloader/net/entity/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/mgtv/downloader/b$a;->a:Lcom/mgtv/downloader/b;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mgtv/downloader/b;->a(Lcom/mgtv/downloader/b;Ljava/lang/Integer;)Lcom/mgtv/downloader/a/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/mgtv/downloader/util/d;->a()I

    move-result v0

    if-ltz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/mgtv/downloader/util/d;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mgtv/downloader/net/entity/a;->d(Ljava/lang/Integer;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/mgtv/downloader/b$a;->a:Lcom/mgtv/downloader/b;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mgtv/downloader/b;->a(Lcom/mgtv/downloader/b;Ljava/lang/Integer;)Lcom/mgtv/downloader/a/b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mgtv/downloader/a/b;->d(ILcom/mgtv/downloader/net/entity/a;)V

    .line 6
    :cond_1
    iget-object p0, p0, Lcom/mgtv/downloader/b$a;->a:Lcom/mgtv/downloader/b;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/mgtv/downloader/b;->b(Lcom/mgtv/downloader/b;Ljava/lang/Integer;)V

    return-void
.end method

.method public d(ILcom/mgtv/downloader/net/entity/a;Ljava/lang/String;)V
    .locals 2

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DownloadListener]onDownloadRequest taskID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/mgtv/downloader/net/entity/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/mgtv/downloader/b$a;->a:Lcom/mgtv/downloader/b;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mgtv/downloader/b;->a(Lcom/mgtv/downloader/b;Ljava/lang/Integer;)Lcom/mgtv/downloader/a/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    invoke-static {}, Lcom/mgtv/downloader/util/d;->a()I

    move-result v0

    if-ltz v0, :cond_0

    .line 10
    invoke-static {}, Lcom/mgtv/downloader/util/d;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mgtv/downloader/net/entity/a;->d(Ljava/lang/Integer;)V

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mgtv/downloader/b$a;->a:Lcom/mgtv/downloader/b;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mgtv/downloader/b;->a(Lcom/mgtv/downloader/b;Ljava/lang/Integer;)Lcom/mgtv/downloader/a/b;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/mgtv/downloader/a/b;->d(ILcom/mgtv/downloader/net/entity/a;Ljava/lang/String;)V

    .line 12
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/mgtv/downloader/b$a;->a:Lcom/mgtv/downloader/b;

    invoke-virtual {p1, p2}, Lcom/mgtv/downloader/b;->a(Lcom/mgtv/downloader/net/entity/a;)Lcom/mgtv/downloader/database/c;

    move-result-object p1

    .line 13
    iget-object p2, p0, Lcom/mgtv/downloader/b$a;->a:Lcom/mgtv/downloader/b;

    invoke-static {p2}, Lcom/mgtv/downloader/b;->c(Lcom/mgtv/downloader/b;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/mgtv/downloader/database/d;->a(Landroid/content/Context;)Lcom/mgtv/downloader/database/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mgtv/downloader/database/d;->a()Lcom/mgtv/downloader/database/DownloadInfoDao;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/greenrobot/greendao/AbstractDao;->update(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 14
    :goto_0
    throw p0

    .line 15
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    iget-object p0, p0, Lcom/mgtv/downloader/b$a;->a:Lcom/mgtv/downloader/b;

    invoke-static {p0, p1}, Lcom/mgtv/downloader/b;->a(Lcom/mgtv/downloader/b;Ljava/lang/Exception;)V

    :goto_2
    return-void
.end method
