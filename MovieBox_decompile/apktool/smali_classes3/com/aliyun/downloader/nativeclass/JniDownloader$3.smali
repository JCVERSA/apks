.class Lcom/aliyun/downloader/nativeclass/JniDownloader$3;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/downloader/nativeclass/JniDownloader;->onProgress(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/downloader/nativeclass/JniDownloader;

.field final synthetic val$percent:I

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/aliyun/downloader/nativeclass/JniDownloader;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader$3;->this$0:Lcom/aliyun/downloader/nativeclass/JniDownloader;

    .line 2
    .line 3
    iput p2, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader$3;->val$type:I

    .line 4
    .line 5
    iput p3, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader$3;->val$percent:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader$3;->this$0:Lcom/aliyun/downloader/nativeclass/JniDownloader;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->access$300(Lcom/aliyun/downloader/nativeclass/JniDownloader;)Lcom/aliyun/downloader/AliMediaDownloader$OnProgressListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget v0, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader$3;->val$type:I

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader$3;->this$0:Lcom/aliyun/downloader/nativeclass/JniDownloader;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->access$300(Lcom/aliyun/downloader/nativeclass/JniDownloader;)Lcom/aliyun/downloader/AliMediaDownloader$OnProgressListener;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget v1, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader$3;->val$percent:I

    .line 20
    .line 21
    invoke-interface {v0, v1}, Lcom/aliyun/downloader/AliMediaDownloader$OnProgressListener;->onDownloadingProgress(I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader$3;->this$0:Lcom/aliyun/downloader/nativeclass/JniDownloader;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->access$300(Lcom/aliyun/downloader/nativeclass/JniDownloader;)Lcom/aliyun/downloader/AliMediaDownloader$OnProgressListener;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget v1, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader$3;->val$percent:I

    .line 32
    .line 33
    invoke-interface {v0, v1}, Lcom/aliyun/downloader/AliMediaDownloader$OnProgressListener;->onProcessingProgress(I)V

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    return-void
.end method
