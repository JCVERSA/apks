.class Landroidx/media3/exoplayer/p$b$a;
.super Landroid/media/AudioDeviceCallback;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/exoplayer/p$b;->b(Landroidx/media3/exoplayer/m4$a;Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Landroidx/media3/common/util/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media3/exoplayer/p$b;


# direct methods
.method constructor <init>(Landroidx/media3/exoplayer/p$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/p$b$a;->a:Landroidx/media3/exoplayer/p$b;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/media/AudioDeviceCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/media3/exoplayer/p$b$a;->a:Landroidx/media3/exoplayer/p$b;

    .line 2
    .line 3
    invoke-static {p1}, Landroidx/media3/exoplayer/p$b;->g(Landroidx/media3/exoplayer/p$b;)Landroidx/media3/common/util/g;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Landroidx/media3/exoplayer/p$b$a;->a:Landroidx/media3/exoplayer/p$b;

    .line 8
    .line 9
    invoke-static {v0}, Landroidx/media3/exoplayer/p$b;->f(Landroidx/media3/exoplayer/p$b;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/g;->i(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/media3/exoplayer/p$b$a;->a:Landroidx/media3/exoplayer/p$b;

    .line 2
    .line 3
    invoke-static {p1}, Landroidx/media3/exoplayer/p$b;->g(Landroidx/media3/exoplayer/p$b;)Landroidx/media3/common/util/g;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Landroidx/media3/exoplayer/p$b$a;->a:Landroidx/media3/exoplayer/p$b;

    .line 8
    .line 9
    invoke-static {v0}, Landroidx/media3/exoplayer/p$b;->f(Landroidx/media3/exoplayer/p$b;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/g;->i(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
