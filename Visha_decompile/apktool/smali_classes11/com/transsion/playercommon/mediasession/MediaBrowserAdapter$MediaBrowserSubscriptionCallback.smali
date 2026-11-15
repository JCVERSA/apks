.class public Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaBrowserSubscriptionCallback;
.super Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaBrowserSubscriptionCallback"
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaBrowserSubscriptionCallback;->a:Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;

    invoke-direct {p0}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V
    .locals 3

    iget-object p1, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaBrowserSubscriptionCallback;->a:Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;

    invoke-static {p1}, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->d(Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;)Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "onChildrenLoaded"

    const-string v0, "MediaBrowserAdapter"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChildrenLoaded mediaItem = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaBrowserSubscriptionCallback;->a:Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;

    invoke-static {v1}, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->d(Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;)Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object v1

    invoke-virtual {p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/support/v4/media/session/MediaControllerCompat;->addQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaBrowserSubscriptionCallback;->a:Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;

    invoke-static {p0}, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;->d(Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;)Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->prepare()V

    return-void
.end method
