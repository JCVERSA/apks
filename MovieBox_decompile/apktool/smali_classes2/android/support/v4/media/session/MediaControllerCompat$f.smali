.class abstract Landroid/support/v4/media/session/MediaControllerCompat$f;
.super Landroid/support/v4/media/session/MediaControllerCompat$e;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# instance fields
.field protected final a:Landroid/media/session/MediaController$TransportControls;


# direct methods
.method constructor <init>(Landroid/media/session/MediaController$TransportControls;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaControllerCompat$e;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$f;->a:Landroid/media/session/MediaController$TransportControls;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat;->e(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$f;->a:Landroid/media/session/MediaController$TransportControls;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/media/session/MediaController$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$f;->a:Landroid/media/session/MediaController$TransportControls;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->skipToNext()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$f;->a:Landroid/media/session/MediaController$TransportControls;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->skipToPrevious()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
