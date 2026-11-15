.class final Lcom/mgtv/downloader/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/downloader/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/downloader/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/downloader/a;


# direct methods
.method private constructor <init>(Lcom/mgtv/downloader/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mgtv/downloader/a$a;->a:Lcom/mgtv/downloader/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/mgtv/downloader/a;Lcom/mgtv/downloader/a$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/mgtv/downloader/a$a;-><init>(Lcom/mgtv/downloader/a;)V

    return-void
.end method


# virtual methods
.method public a(ILcom/mgtv/downloader/net/entity/a;)V
    .locals 2

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadHWListener onDownloadFinish taskID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " Status="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/mgtv/downloader/net/entity/a;->f()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DownloadSDK_1.8.0"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object p1, p0, Lcom/mgtv/downloader/a$a;->a:Lcom/mgtv/downloader/a;

    invoke-static {p1}, Lcom/mgtv/downloader/a;->a(Lcom/mgtv/downloader/a;)Lcom/mgtv/downloader/b/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 10
    iget-object p0, p0, Lcom/mgtv/downloader/a$a;->a:Lcom/mgtv/downloader/a;

    invoke-static {p0}, Lcom/mgtv/downloader/a;->a(Lcom/mgtv/downloader/a;)Lcom/mgtv/downloader/b/a;

    move-result-object p0

    invoke-virtual {p2}, Lcom/mgtv/downloader/net/entity/a;->r()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lcom/mgtv/downloader/b/a;->b(Ljava/lang/String;Lcom/mgtv/downloader/net/entity/a;)V

    :cond_0
    return-void
.end method

.method public a(ILcom/mgtv/downloader/net/entity/a;ILjava/lang/String;)V
    .locals 2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadHWListener onDownloadError taskID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " errorCode="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " msg="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " hwErrorCode="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/mgtv/downloader/a$a;->a:Lcom/mgtv/downloader/a;

    invoke-static {p1, p3, p4}, Lcom/mgtv/downloader/a;->a(Lcom/mgtv/downloader/a;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DownloadSDK_1.8.0"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object p1, p0, Lcom/mgtv/downloader/a$a;->a:Lcom/mgtv/downloader/a;

    invoke-static {p1, p4}, Lcom/mgtv/downloader/a;->a(Lcom/mgtv/downloader/a;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    iget-object p1, p0, Lcom/mgtv/downloader/a$a;->a:Lcom/mgtv/downloader/a;

    invoke-static {p1}, Lcom/mgtv/downloader/a;->a(Lcom/mgtv/downloader/a;)Lcom/mgtv/downloader/b/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/mgtv/downloader/a$a;->a:Lcom/mgtv/downloader/a;

    invoke-static {p1}, Lcom/mgtv/downloader/a;->a(Lcom/mgtv/downloader/a;)Lcom/mgtv/downloader/b/a;

    move-result-object p1

    invoke-virtual {p2}, Lcom/mgtv/downloader/net/entity/a;->r()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/mgtv/downloader/a$a;->a:Lcom/mgtv/downloader/a;

    invoke-static {p0, p3, p4}, Lcom/mgtv/downloader/a;->a(Lcom/mgtv/downloader/a;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p2, p0}, Lcom/mgtv/downloader/b/a;->a(Ljava/lang/String;Lcom/mgtv/downloader/net/entity/a;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(ILcom/mgtv/downloader/net/entity/a;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadHWListener onDownloadProgress taskID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " extInfo="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "DownloadSDK_1.8.0"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/mgtv/downloader/a$a;->a:Lcom/mgtv/downloader/a;

    invoke-static {p1}, Lcom/mgtv/downloader/a;->a(Lcom/mgtv/downloader/a;)Lcom/mgtv/downloader/b/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/mgtv/downloader/a$a;->a:Lcom/mgtv/downloader/a;

    invoke-static {p0}, Lcom/mgtv/downloader/a;->a(Lcom/mgtv/downloader/a;)Lcom/mgtv/downloader/b/a;

    move-result-object p0

    invoke-virtual {p2}, Lcom/mgtv/downloader/net/entity/a;->r()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lcom/mgtv/downloader/b/a;->a(Ljava/lang/String;Lcom/mgtv/downloader/net/entity/a;)V

    :cond_0
    return-void
.end method

.method public b(ILcom/mgtv/downloader/net/entity/a;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadHWListener onPlayError taskID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " Status="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/mgtv/downloader/net/entity/a;->f()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DownloadSDK_1.8.0"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/mgtv/downloader/a$a;->a:Lcom/mgtv/downloader/a;

    invoke-static {p1}, Lcom/mgtv/downloader/a;->a(Lcom/mgtv/downloader/a;)Lcom/mgtv/downloader/b/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/mgtv/downloader/a$a;->a:Lcom/mgtv/downloader/a;

    invoke-static {p0}, Lcom/mgtv/downloader/a;->a(Lcom/mgtv/downloader/a;)Lcom/mgtv/downloader/b/a;

    move-result-object p0

    invoke-virtual {p2}, Lcom/mgtv/downloader/net/entity/a;->r()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lcom/mgtv/downloader/b/a;->b(Ljava/lang/String;Lcom/mgtv/downloader/net/entity/a;)V

    :cond_0
    return-void
.end method

.method public b(ILcom/mgtv/downloader/net/entity/a;Ljava/lang/String;)V
    .locals 2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadHWListener onDownloadSlow taskID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DownloadSDK_1.8.0"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object p1, p0, Lcom/mgtv/downloader/a$a;->a:Lcom/mgtv/downloader/a;

    invoke-static {p1}, Lcom/mgtv/downloader/a;->a(Lcom/mgtv/downloader/a;)Lcom/mgtv/downloader/b/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p0, p0, Lcom/mgtv/downloader/a$a;->a:Lcom/mgtv/downloader/a;

    invoke-static {p0}, Lcom/mgtv/downloader/a;->a(Lcom/mgtv/downloader/a;)Lcom/mgtv/downloader/b/a;

    move-result-object p0

    invoke-virtual {p2}, Lcom/mgtv/downloader/net/entity/a;->r()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2, p3}, Lcom/mgtv/downloader/b/a;->a(Ljava/lang/String;Lcom/mgtv/downloader/net/entity/a;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c(ILcom/mgtv/downloader/net/entity/a;)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(ILcom/mgtv/downloader/net/entity/a;Ljava/lang/String;)V
    .locals 0

    .line 2
    return-void
.end method

.method public d(ILcom/mgtv/downloader/net/entity/a;)V
    .locals 0

    .line 1
    return-void
.end method

.method public d(ILcom/mgtv/downloader/net/entity/a;Ljava/lang/String;)V
    .locals 0

    .line 2
    return-void
.end method
