.class final Landroidx/media3/exoplayer/audio/i$c;
.super Landroid/media/AudioDeviceCallback;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Landroidx/media3/exoplayer/audio/i;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/audio/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/i$c;->a:Landroidx/media3/exoplayer/audio/i;

    invoke-direct {p0}, Landroid/media/AudioDeviceCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/audio/i;Landroidx/media3/exoplayer/audio/i$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/i$c;-><init>(Landroidx/media3/exoplayer/audio/i;)V

    return-void
.end method


# virtual methods
.method public onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .locals 3

    .line 1
    iget-object p1, p0, Landroidx/media3/exoplayer/audio/i$c;->a:Landroidx/media3/exoplayer/audio/i;

    .line 2
    .line 3
    invoke-static {p1}, Landroidx/media3/exoplayer/audio/i;->e(Landroidx/media3/exoplayer/audio/i;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/i$c;->a:Landroidx/media3/exoplayer/audio/i;

    .line 8
    .line 9
    invoke-static {v1}, Landroidx/media3/exoplayer/audio/i;->a(Landroidx/media3/exoplayer/audio/i;)Landroidx/media3/common/c;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/i$c;->a:Landroidx/media3/exoplayer/audio/i;

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

.method public onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/i$c;->a:Landroidx/media3/exoplayer/audio/i;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/audio/i;->b(Landroidx/media3/exoplayer/audio/i;)Landroidx/media3/exoplayer/audio/j;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Landroidx/media3/common/util/a1;->s([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Landroidx/media3/exoplayer/audio/i$c;->a:Landroidx/media3/exoplayer/audio/i;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-static {p1, v0}, Landroidx/media3/exoplayer/audio/i;->c(Landroidx/media3/exoplayer/audio/i;Landroidx/media3/exoplayer/audio/j;)Landroidx/media3/exoplayer/audio/j;

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/audio/i$c;->a:Landroidx/media3/exoplayer/audio/i;

    .line 20
    .line 21
    invoke-static {p1}, Landroidx/media3/exoplayer/audio/i;->e(Landroidx/media3/exoplayer/audio/i;)Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/i$c;->a:Landroidx/media3/exoplayer/audio/i;

    .line 26
    .line 27
    invoke-static {v1}, Landroidx/media3/exoplayer/audio/i;->a(Landroidx/media3/exoplayer/audio/i;)Landroidx/media3/common/c;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/i$c;->a:Landroidx/media3/exoplayer/audio/i;

    .line 32
    .line 33
    invoke-static {v2}, Landroidx/media3/exoplayer/audio/i;->b(Landroidx/media3/exoplayer/audio/i;)Landroidx/media3/exoplayer/audio/j;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v0, v1, v2}, Landroidx/media3/exoplayer/audio/e;->f(Landroid/content/Context;Landroidx/media3/common/c;Landroidx/media3/exoplayer/audio/j;)Landroidx/media3/exoplayer/audio/e;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {p1, v0}, Landroidx/media3/exoplayer/audio/i;->d(Landroidx/media3/exoplayer/audio/i;Landroidx/media3/exoplayer/audio/e;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
