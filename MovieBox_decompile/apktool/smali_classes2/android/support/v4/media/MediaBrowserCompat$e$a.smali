.class Landroid/support/v4/media/MediaBrowserCompat$e$a;
.super Landroid/media/browse/MediaBrowser$ItemCallback;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/media/MediaBrowserCompat$e;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$e$a;->a:Landroid/support/v4/media/MediaBrowserCompat$e;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/media/browse/MediaBrowser$ItemCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$e$a;->a:Landroid/support/v4/media/MediaBrowserCompat$e;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/support/v4/media/MediaBrowserCompat$e;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onItemLoaded(Landroid/media/browse/MediaBrowser$MediaItem;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$e$a;->a:Landroid/support/v4/media/MediaBrowserCompat$e;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->fromMediaItem(Ljava/lang/Object;)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Landroid/support/v4/media/MediaBrowserCompat$e;->b(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
