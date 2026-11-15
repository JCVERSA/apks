.class public Lcom/mgtv/downloader/dir/DownloadDirInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public availableSize:J

.field public availableSizeDesc:Ljava/lang/String;

.field public internal:Z

.field public path:Ljava/lang/String;

.field public serialNo:I

.field public totalSize:J

.field public totalSizeDesc:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    instance-of v1, p1, Lcom/mgtv/downloader/dir/DownloadDirInfo;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/mgtv/downloader/dir/DownloadDirInfo;->path:Ljava/lang/String;

    if-nez p0, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/mgtv/downloader/dir/DownloadDirInfo;

    iget-object p1, p1, Lcom/mgtv/downloader/dir/DownloadDirInfo;->path:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public getDisplayName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-boolean p1, p0, Lcom/mgtv/downloader/dir/DownloadDirInfo;->internal:Z

    if-eqz p1, :cond_1

    const-string p1, "\u5185\u90e8\u5b58\u50a8"

    goto :goto_0

    :cond_1
    const-string p1, "\u5916\u90e8\u5b58\u50a8"

    :goto_0
    iget v0, p0, Lcom/mgtv/downloader/dir/DownloadDirInfo;->serialNo:I

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/mgtv/downloader/dir/DownloadDirInfo;->serialNo:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/mgtv/downloader/dir/DownloadDirInfo;->path:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/mgtv/downloader/dir/DownloadDirInfo;->path:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, Lcom/mgtv/downloader/dir/DownloadDirInfo;->internal:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/mgtv/downloader/dir/DownloadDirInfo;->serialNo:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/downloader/dir/DownloadDirInfo;->totalSizeDesc:Ljava/lang/String;

    iget-object v3, p0, Lcom/mgtv/downloader/dir/DownloadDirInfo;->availableSizeDesc:Ljava/lang/String;

    iget-object p0, p0, Lcom/mgtv/downloader/dir/DownloadDirInfo;->path:Ljava/lang/String;

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Internal[%s], SerialNo[%s] - Total[%s], Available[%s], Path[%s]"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
