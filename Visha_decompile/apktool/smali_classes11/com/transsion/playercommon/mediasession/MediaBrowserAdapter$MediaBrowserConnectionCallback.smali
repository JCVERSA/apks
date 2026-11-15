.class public Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaBrowserConnectionCallback;
.super Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaBrowserConnectionCallback"
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaBrowserConnectionCallback;->a:Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;

    invoke-direct {p0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 5

    const-string v0, "MediaBrowserAdapter"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnected: start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaBrowserConnectionCallback;->a:Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;

    invoke-static {v2}, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->b(Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;)Landroid/support/v4/media/MediaBrowserCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/media/MediaBrowserCompat;->isConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaBrowserConnectionCallback;->a:Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;

    new-instance v2, Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-static {v1}, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->a(Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaBrowserConnectionCallback;->a:Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;

    invoke-static {v4}, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->b(Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;)Landroid/support/v4/media/MediaBrowserCompat;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/media/MediaBrowserCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/support/v4/media/session/MediaControllerCompat;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    invoke-static {v1, v2}, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->g(Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;Landroid/support/v4/media/session/MediaControllerCompat;)V

    iget-object v1, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaBrowserConnectionCallback;->a:Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;

    invoke-static {v1}, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->d(Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;)Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaBrowserConnectionCallback;->a:Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;

    invoke-static {v2}, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->e(Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;)Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaControllerCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/media/session/MediaControllerCompat;->registerCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    iget-object v1, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaBrowserConnectionCallback;->a:Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;

    invoke-static {v1}, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->e(Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;)Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaControllerCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaBrowserConnectionCallback;->a:Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;

    invoke-static {v2}, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->d(Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;)Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->j(Landroid/support/v4/media/session/MediaControllerCompat;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaControllerCallback;->onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V

    iget-object v1, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaBrowserConnectionCallback;->a:Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;

    invoke-static {v1}, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->e(Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;)Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaControllerCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaBrowserConnectionCallback;->a:Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;

    invoke-static {v2}, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->d(Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;)Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/media/session/MediaControllerCompat;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaControllerCallback;->onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    iget-object v1, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaBrowserConnectionCallback;->a:Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;

    new-instance v2, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaBrowserConnectionCallback$a;

    invoke-direct {v2, p0}, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaBrowserConnectionCallback$a;-><init>(Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaBrowserConnectionCallback;)V

    invoke-virtual {v1, v2}, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->o(Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnected: = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaBrowserConnectionCallback;->a:Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;

    invoke-static {v2}, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->b(Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;)Landroid/support/v4/media/MediaBrowserCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/media/MediaBrowserCompat;->isConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaBrowserConnectionCallback;->a:Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;

    invoke-static {v0}, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->b(Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;)Landroid/support/v4/media/MediaBrowserCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaBrowserConnectionCallback;->a:Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;

    invoke-static {v1}, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->b(Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;)Landroid/support/v4/media/MediaBrowserCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/MediaBrowserCompat;->getRoot()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaBrowserConnectionCallback;->a:Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;

    invoke-static {p0}, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->c(Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;)Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaBrowserSubscriptionCallback;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/support/v4/media/MediaBrowserCompat;->subscribe(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "onConnected: Problem: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onConnectionFailed()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->onConnectionFailed()V

    const-string p0, "MediaBrowserAdapter"

    const-string v0, "onConnected: onConnectionFailed"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onConnectionSuspended()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->onConnectionSuspended()V

    const-string p0, "MediaBrowserAdapter"

    const-string v0, "onConnected: onConnectionSuspended"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
