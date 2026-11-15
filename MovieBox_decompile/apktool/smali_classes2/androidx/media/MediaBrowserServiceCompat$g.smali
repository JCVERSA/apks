.class Landroidx/media/MediaBrowserServiceCompat$g;
.super Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media/MediaBrowserServiceCompat$g$b;
    }
.end annotation


# instance fields
.field final synthetic e:Landroidx/media/MediaBrowserServiceCompat;


# direct methods
.method constructor <init>(Landroidx/media/MediaBrowserServiceCompat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$g;->e:Landroidx/media/MediaBrowserServiceCompat;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;-><init>(Landroidx/media/MediaBrowserServiceCompat;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public g(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$l;)V
    .locals 2

    .line 1
    new-instance v0, Landroidx/media/MediaBrowserServiceCompat$g$a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Landroidx/media/MediaBrowserServiceCompat$g$a;-><init>(Landroidx/media/MediaBrowserServiceCompat$g;Ljava/lang/Object;Landroidx/media/MediaBrowserServiceCompat$l;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Landroidx/media/MediaBrowserServiceCompat$g;->e:Landroidx/media/MediaBrowserServiceCompat;

    .line 7
    .line 8
    iget-object v1, p2, Landroidx/media/MediaBrowserServiceCompat;->c:Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 9
    .line 10
    iput-object v1, p2, Landroidx/media/MediaBrowserServiceCompat;->f:Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 11
    .line 12
    invoke-virtual {p2, p1, v0}, Landroidx/media/MediaBrowserServiceCompat;->i(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$k;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$g;->e:Landroidx/media/MediaBrowserServiceCompat;

    .line 16
    .line 17
    const/4 p2, 0x0

    .line 18
    iput-object p2, p1, Landroidx/media/MediaBrowserServiceCompat;->f:Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 19
    .line 20
    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/media/MediaBrowserServiceCompat$g$b;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$g;->e:Landroidx/media/MediaBrowserServiceCompat;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroidx/media/MediaBrowserServiceCompat$g$b;-><init>(Landroidx/media/MediaBrowserServiceCompat$g;Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->b:Landroid/service/media/MediaBrowserService;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/service/media/MediaBrowserService;->onCreate()V

    .line 11
    .line 12
    .line 13
    return-void
.end method
