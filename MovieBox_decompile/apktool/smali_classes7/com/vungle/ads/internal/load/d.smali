.class public final synthetic Lcom/vungle/ads/internal/load/d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/load/BaseAdLoader;

.field public final synthetic b:Lcom/vungle/ads/internal/downloader/DownloadRequest;

.field public final synthetic c:Lcom/vungle/ads/internal/downloader/a$a;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/load/BaseAdLoader;Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/vungle/ads/internal/load/d;->a:Lcom/vungle/ads/internal/load/BaseAdLoader;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/vungle/ads/internal/load/d;->b:Lcom/vungle/ads/internal/downloader/DownloadRequest;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/vungle/ads/internal/load/d;->c:Lcom/vungle/ads/internal/downloader/a$a;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/load/d;->a:Lcom/vungle/ads/internal/load/BaseAdLoader;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/vungle/ads/internal/load/d;->b:Lcom/vungle/ads/internal/downloader/DownloadRequest;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/vungle/ads/internal/load/d;->c:Lcom/vungle/ads/internal/downloader/a$a;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/vungle/ads/internal/load/BaseAdLoader$b;->b(Lcom/vungle/ads/internal/load/BaseAdLoader;Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/a$a;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
