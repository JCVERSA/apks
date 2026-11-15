.class Landroid/support/v4/media/MediaBrowserCompat$c$a;
.super Landroid/media/browse/MediaBrowser$ConnectionCallback;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/media/MediaBrowserCompat$c;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$c$a;->a:Landroid/support/v4/media/MediaBrowserCompat$c;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/media/browse/MediaBrowser$ConnectionCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$c$a;->a:Landroid/support/v4/media/MediaBrowserCompat$c;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$c;->b:Landroid/support/v4/media/MediaBrowserCompat$c$b;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Landroid/support/v4/media/MediaBrowserCompat$c$b;->onConnected()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$c$a;->a:Landroid/support/v4/media/MediaBrowserCompat$c;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$c;->a()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onConnectionFailed()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$c$a;->a:Landroid/support/v4/media/MediaBrowserCompat$c;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$c;->b:Landroid/support/v4/media/MediaBrowserCompat$c$b;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Landroid/support/v4/media/MediaBrowserCompat$c$b;->d()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$c$a;->a:Landroid/support/v4/media/MediaBrowserCompat$c;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$c;->b()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onConnectionSuspended()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$c$a;->a:Landroid/support/v4/media/MediaBrowserCompat$c;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$c;->b:Landroid/support/v4/media/MediaBrowserCompat$c$b;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Landroid/support/v4/media/MediaBrowserCompat$c$b;->f()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$c$a;->a:Landroid/support/v4/media/MediaBrowserCompat$c;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$c;->c()V

    .line 13
    .line 14
    .line 15
    return-void
.end method
