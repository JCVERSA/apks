.class final Landroidx/media3/exoplayer/audio/i$d;
.super Landroid/database/ContentObserver;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field private final a:Landroid/content/ContentResolver;

.field private final b:Landroid/net/Uri;

.field final synthetic c:Landroidx/media3/exoplayer/audio/i;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/audio/i;Landroid/os/Handler;Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/i$d;->c:Landroidx/media3/exoplayer/audio/i;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    iput-object p3, p0, Landroidx/media3/exoplayer/audio/i$d;->a:Landroid/content/ContentResolver;

    .line 7
    .line 8
    iput-object p4, p0, Landroidx/media3/exoplayer/audio/i$d;->b:Landroid/net/Uri;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/i$d;->a:Landroid/content/ContentResolver;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/i$d;->b:Landroid/net/Uri;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/i$d;->a:Landroid/content/ContentResolver;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onChange(Z)V
    .locals 3

    .line 1
    iget-object p1, p0, Landroidx/media3/exoplayer/audio/i$d;->c:Landroidx/media3/exoplayer/audio/i;

    .line 2
    .line 3
    invoke-static {p1}, Landroidx/media3/exoplayer/audio/i;->e(Landroidx/media3/exoplayer/audio/i;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/i$d;->c:Landroidx/media3/exoplayer/audio/i;

    .line 8
    .line 9
    invoke-static {v1}, Landroidx/media3/exoplayer/audio/i;->a(Landroidx/media3/exoplayer/audio/i;)Landroidx/media3/common/c;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/i$d;->c:Landroidx/media3/exoplayer/audio/i;

    .line 14
    .line 15
    invoke-static {v2}, Landroidx/media3/exoplayer/audio/i;->b(Landroidx/media3/exoplayer/audio/i;)Landroidx/media3/exoplayer/audio/j;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {v0, v1, v2}, Landroidx/media3/exoplayer/audio/e;->f(Landroid/content/Context;Landroidx/media3/common/c;Landroidx/media3/exoplayer/audio/j;)Landroidx/media3/exoplayer/audio/e;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {p1, v0}, Landroidx/media3/exoplayer/audio/i;->d(Landroidx/media3/exoplayer/audio/i;Landroidx/media3/exoplayer/audio/e;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
