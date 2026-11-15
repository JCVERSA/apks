.class Landroidx/media/MediaBrowserServiceCompat$h$b;
.super Landroidx/media/MediaBrowserServiceCompat$g$b;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/MediaBrowserServiceCompat$h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic c:Landroidx/media/MediaBrowserServiceCompat$h;


# direct methods
.method constructor <init>(Landroidx/media/MediaBrowserServiceCompat$h;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$h$b;->c:Landroidx/media/MediaBrowserServiceCompat$h;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/media/MediaBrowserServiceCompat$g$b;-><init>(Landroidx/media/MediaBrowserServiceCompat$g;Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-static {p3}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$h$b;->c:Landroidx/media/MediaBrowserServiceCompat$h;

    .line 5
    .line 6
    iget-object v1, v0, Landroidx/media/MediaBrowserServiceCompat$h;->f:Landroidx/media/MediaBrowserServiceCompat;

    .line 7
    .line 8
    iget-object v2, v1, Landroidx/media/MediaBrowserServiceCompat;->c:Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 9
    .line 10
    iput-object v2, v1, Landroidx/media/MediaBrowserServiceCompat;->f:Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 11
    .line 12
    new-instance v1, Landroidx/media/MediaBrowserServiceCompat$l;

    .line 13
    .line 14
    invoke-direct {v1, p2}, Landroidx/media/MediaBrowserServiceCompat$l;-><init>(Landroid/service/media/MediaBrowserService$Result;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1, v1, p3}, Landroidx/media/MediaBrowserServiceCompat$h;->h(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$l;Landroid/os/Bundle;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$h$b;->c:Landroidx/media/MediaBrowserServiceCompat$h;

    .line 21
    .line 22
    iget-object p1, p1, Landroidx/media/MediaBrowserServiceCompat$h;->f:Landroidx/media/MediaBrowserServiceCompat;

    .line 23
    .line 24
    const/4 p2, 0x0

    .line 25
    iput-object p2, p1, Landroidx/media/MediaBrowserServiceCompat;->f:Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 26
    .line 27
    return-void
.end method
