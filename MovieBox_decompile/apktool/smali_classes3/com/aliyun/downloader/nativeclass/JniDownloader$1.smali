.class Lcom/aliyun/downloader/nativeclass/JniDownloader$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/downloader/nativeclass/JniDownloader;->onPrepared(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/downloader/nativeclass/JniDownloader;

.field final synthetic val$info:Lcom/aliyun/player/nativeclass/MediaInfo;


# direct methods
.method constructor <init>(Lcom/aliyun/downloader/nativeclass/JniDownloader;Lcom/aliyun/player/nativeclass/MediaInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader$1;->this$0:Lcom/aliyun/downloader/nativeclass/JniDownloader;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader$1;->val$info:Lcom/aliyun/player/nativeclass/MediaInfo;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader$1;->this$0:Lcom/aliyun/downloader/nativeclass/JniDownloader;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->access$100(Lcom/aliyun/downloader/nativeclass/JniDownloader;)Lcom/aliyun/downloader/AliMediaDownloader$OnPreparedListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader$1;->this$0:Lcom/aliyun/downloader/nativeclass/JniDownloader;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->access$100(Lcom/aliyun/downloader/nativeclass/JniDownloader;)Lcom/aliyun/downloader/AliMediaDownloader$OnPreparedListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/aliyun/downloader/nativeclass/JniDownloader$1;->val$info:Lcom/aliyun/player/nativeclass/MediaInfo;

    .line 16
    .line 17
    invoke-interface {v0, v1}, Lcom/aliyun/downloader/AliMediaDownloader$OnPreparedListener;->onPrepared(Lcom/aliyun/player/nativeclass/MediaInfo;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
