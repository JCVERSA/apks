.class public final synthetic Lcom/vungle/ads/internal/load/h;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/load/i$a;

.field public final synthetic b:Lcom/vungle/ads/internal/model/AdPayload;

.field public final synthetic c:Lcom/vungle/ads/internal/util/p;

.field public final synthetic d:Lcom/vungle/ads/internal/downloader/Downloader;

.field public final synthetic e:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/load/i$a;Lcom/vungle/ads/internal/model/AdPayload;Lcom/vungle/ads/internal/util/p;Lcom/vungle/ads/internal/downloader/Downloader;Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/vungle/ads/internal/load/h;->a:Lcom/vungle/ads/internal/load/i$a;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/vungle/ads/internal/load/h;->b:Lcom/vungle/ads/internal/model/AdPayload;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/vungle/ads/internal/load/h;->c:Lcom/vungle/ads/internal/util/p;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/vungle/ads/internal/load/h;->d:Lcom/vungle/ads/internal/downloader/Downloader;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/vungle/ads/internal/load/h;->e:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/load/h;->a:Lcom/vungle/ads/internal/load/i$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/vungle/ads/internal/load/h;->b:Lcom/vungle/ads/internal/model/AdPayload;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/vungle/ads/internal/load/h;->c:Lcom/vungle/ads/internal/util/p;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/vungle/ads/internal/load/h;->d:Lcom/vungle/ads/internal/downloader/Downloader;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/vungle/ads/internal/load/h;->e:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lcom/vungle/ads/internal/load/i;->a(Lcom/vungle/ads/internal/load/i$a;Lcom/vungle/ads/internal/model/AdPayload;Lcom/vungle/ads/internal/util/p;Lcom/vungle/ads/internal/downloader/Downloader;Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
