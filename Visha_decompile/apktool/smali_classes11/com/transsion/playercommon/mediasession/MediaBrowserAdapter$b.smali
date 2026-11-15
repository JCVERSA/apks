.class public Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/support/v4/media/session/PlaybackStateCompat;

.field public b:Landroid/support/v4/media/MediaMetadataCompat;

.field public final synthetic c:Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$b;->c:Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/support/v4/media/MediaMetadataCompat;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$b;->b:Landroid/support/v4/media/MediaMetadataCompat;

    return-object p0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$b;->a:Landroid/support/v4/media/session/PlaybackStateCompat;

    iput-object v0, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$b;->b:Landroid/support/v4/media/MediaMetadataCompat;

    return-void
.end method

.method public c(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$b;->b:Landroid/support/v4/media/MediaMetadataCompat;

    return-void
.end method

.method public d(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/mediasession/MediaBrowserAdapter$b;->a:Landroid/support/v4/media/session/PlaybackStateCompat;

    return-void
.end method
