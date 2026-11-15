.class public Lcom/aliyun/downloader/AliDownloaderFactory;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/aliyun/downloader/AliMediaDownloader;
    .locals 1

    .line 1
    new-instance v0, Lcom/aliyun/downloader/ApsaraDownloader;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Lcom/aliyun/downloader/ApsaraDownloader;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static deleteFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/aliyun/downloader/AliMediaDownloader;->deleteFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method
