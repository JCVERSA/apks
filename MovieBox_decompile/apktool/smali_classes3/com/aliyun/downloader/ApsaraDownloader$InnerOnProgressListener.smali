.class Lcom/aliyun/downloader/ApsaraDownloader$InnerOnProgressListener;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/aliyun/downloader/AliMediaDownloader$OnProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/downloader/ApsaraDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerOnProgressListener"
.end annotation


# instance fields
.field private downloaderWk:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/aliyun/downloader/ApsaraDownloader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/aliyun/downloader/ApsaraDownloader;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/aliyun/downloader/ApsaraDownloader$InnerOnProgressListener;->downloaderWk:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/aliyun/downloader/ApsaraDownloader;Lcom/aliyun/downloader/ApsaraDownloader$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/aliyun/downloader/ApsaraDownloader$InnerOnProgressListener;-><init>(Lcom/aliyun/downloader/ApsaraDownloader;)V

    return-void
.end method


# virtual methods
.method public onDownloadingProgress(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/downloader/ApsaraDownloader$InnerOnProgressListener;->downloaderWk:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/aliyun/downloader/ApsaraDownloader;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {v0, p1}, Lcom/aliyun/downloader/ApsaraDownloader;->access$700(Lcom/aliyun/downloader/ApsaraDownloader;I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public onProcessingProgress(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aliyun/downloader/ApsaraDownloader$InnerOnProgressListener;->downloaderWk:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/aliyun/downloader/ApsaraDownloader;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {v0, p1}, Lcom/aliyun/downloader/ApsaraDownloader;->access$800(Lcom/aliyun/downloader/ApsaraDownloader;I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
