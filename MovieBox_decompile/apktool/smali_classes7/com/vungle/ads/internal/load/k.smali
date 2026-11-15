.class public final synthetic Lcom/vungle/ads/internal/load/k;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/downloader/a$a;

.field public final synthetic b:Lcom/vungle/ads/internal/downloader/DownloadRequest;

.field public final synthetic c:Lcom/vungle/ads/internal/model/AdPayload;

.field public final synthetic d:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/downloader/a$a;Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/model/AdPayload;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/vungle/ads/internal/load/k;->a:Lcom/vungle/ads/internal/downloader/a$a;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/vungle/ads/internal/load/k;->b:Lcom/vungle/ads/internal/downloader/DownloadRequest;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/vungle/ads/internal/load/k;->c:Lcom/vungle/ads/internal/model/AdPayload;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/vungle/ads/internal/load/k;->d:Ljava/io/File;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/load/k;->a:Lcom/vungle/ads/internal/downloader/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/vungle/ads/internal/load/k;->b:Lcom/vungle/ads/internal/downloader/DownloadRequest;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/vungle/ads/internal/load/k;->c:Lcom/vungle/ads/internal/model/AdPayload;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/vungle/ads/internal/load/k;->d:Ljava/io/File;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/vungle/ads/internal/load/i$b;->a(Lcom/vungle/ads/internal/downloader/a$a;Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/model/AdPayload;Ljava/io/File;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
