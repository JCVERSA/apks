.class public Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaControllerCallback$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaControllerCallback;->onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/support/v4/media/session/PlaybackStateCompat;

.field public final synthetic b:Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaControllerCallback;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaControllerCallback;Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaControllerCallback$b;->b:Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaControllerCallback;

    iput-object p2, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaControllerCallback$b;->a:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$d;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$MediaControllerCallback$b;->a:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {p1, p0}, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$d;->c(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    return-void
.end method
