.class public Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaControllerCallback;
.super Landroid/support/v4/media/session/MediaControllerCompat$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaControllerCallback"
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaControllerCallback;->b:Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/media/MediaMetadataCompat;Landroid/support/v4/media/MediaMetadataCompat;)Z
    .locals 1

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "android.media.metadata.MEDIA_ID"

    invoke-static {p2, v0}, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->k(Landroid/support/v4/media/MediaMetadataCompat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0}, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->k(Landroid/support/v4/media/MediaMetadataCompat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    :cond_1
    :goto_0
    return p0
.end method

.method public onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 3

    const-string v0, "MediaBrowserAdapter"

    :try_start_0
    invoke-static {p1}, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->i(Landroid/support/v4/media/MediaMetadataCompat;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaControllerCallback;->b:Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;

    invoke-static {v1}, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->f(Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;)Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$b;->a()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaControllerCallback;->a(Landroid/support/v4/media/MediaMetadataCompat;Landroid/support/v4/media/MediaMetadataCompat;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "onMetadataChanged: Filtering out needless onMetadataChanged() update"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaControllerCallback;->b:Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;

    invoke-static {v1}, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->f(Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;)Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$b;->c(Landroid/support/v4/media/MediaMetadataCompat;)V

    iget-object v1, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaControllerCallback;->b:Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;

    new-instance v2, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaControllerCallback$a;

    invoke-direct {v2, p0, p1}, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaControllerCallback$a;-><init>(Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaControllerCallback;Landroid/support/v4/media/MediaMetadataCompat;)V

    invoke-virtual {v1, v2}, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->o(Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$c;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    const-string p1, "onMetadataChanged: ignore invalid metadata"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaControllerCallback;->b:Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;

    invoke-static {v0}, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->f(Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;)Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$b;->d(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    iget-object v0, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaControllerCallback;->b:Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;

    new-instance v1, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaControllerCallback$b;

    invoke-direct {v1, p0, p1}, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaControllerCallback$b;-><init>(Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaControllerCallback;Landroid/support/v4/media/session/PlaybackStateCompat;)V

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->o(Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$c;)V

    return-void
.end method

.method public onSessionDestroyed()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaControllerCallback;->b:Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;

    invoke-static {v0}, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->h(Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaControllerCallback;->onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    const-string p0, "MediaBrowserAdapter"

    const-string v0, "onSessionDestroyed: MusicService is dead!!!"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
