.class public final synthetic Lcom/vungle/ads/internal/load/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/io/File;

.field public final synthetic b:Lcom/vungle/ads/internal/load/BaseAdLoader$b;

.field public final synthetic c:Lcom/vungle/ads/internal/downloader/DownloadRequest;

.field public final synthetic d:Lcom/vungle/ads/internal/load/BaseAdLoader;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;Lcom/vungle/ads/internal/load/BaseAdLoader$b;Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/load/BaseAdLoader;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/vungle/ads/internal/load/c;->a:Ljava/io/File;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/vungle/ads/internal/load/c;->b:Lcom/vungle/ads/internal/load/BaseAdLoader$b;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/vungle/ads/internal/load/c;->c:Lcom/vungle/ads/internal/downloader/DownloadRequest;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/vungle/ads/internal/load/c;->d:Lcom/vungle/ads/internal/load/BaseAdLoader;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/load/c;->a:Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/vungle/ads/internal/load/c;->b:Lcom/vungle/ads/internal/load/BaseAdLoader$b;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/vungle/ads/internal/load/c;->c:Lcom/vungle/ads/internal/downloader/DownloadRequest;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/vungle/ads/internal/load/c;->d:Lcom/vungle/ads/internal/load/BaseAdLoader;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/vungle/ads/internal/load/BaseAdLoader$b;->a(Ljava/io/File;Lcom/vungle/ads/internal/load/BaseAdLoader$b;Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/load/BaseAdLoader;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
