.class public final Landroidx/media3/exoplayer/audio/i;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/audio/i$f;,
        Landroidx/media3/exoplayer/audio/i$c;,
        Landroidx/media3/exoplayer/audio/i$e;,
        Landroidx/media3/exoplayer/audio/i$d;,
        Landroidx/media3/exoplayer/audio/i$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroidx/media3/exoplayer/audio/i$f;

.field private final c:Landroid/os/Handler;

.field private final d:Landroidx/media3/exoplayer/audio/i$c;

.field private final e:Landroid/content/BroadcastReceiver;

.field private final f:Landroidx/media3/exoplayer/audio/i$d;

.field private g:Landroidx/media3/exoplayer/audio/e;

.field private h:Landroidx/media3/exoplayer/audio/j;

.field private i:Landroidx/media3/common/c;

.field private j:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/audio/i$f;Landroidx/media3/common/c;Landroidx/media3/exoplayer/audio/j;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/i;->a:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    check-cast p2, Landroidx/media3/exoplayer/audio/i$f;

    .line 15
    .line 16
    iput-object p2, p0, Landroidx/media3/exoplayer/audio/i;->b:Landroidx/media3/exoplayer/audio/i$f;

    .line 17
    .line 18
    iput-object p3, p0, Landroidx/media3/exoplayer/audio/i;->i:Landroidx/media3/common/c;

    .line 19
    .line 20
    iput-object p4, p0, Landroidx/media3/exoplayer/audio/i;->h:Landroidx/media3/exoplayer/audio/j;

    .line 21
    .line 22
    invoke-static {}, Landroidx/media3/common/util/a1;->C()Landroid/os/Handler;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    iput-object p2, p0, Landroidx/media3/exoplayer/audio/i;->c:Landroid/os/Handler;

    .line 27
    .line 28
    sget p3, Landroidx/media3/common/util/a1;->a:I

    .line 29
    .line 30
    const/16 p4, 0x17

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    if-lt p3, p4, :cond_0

    .line 34
    .line 35
    new-instance p3, Landroidx/media3/exoplayer/audio/i$c;

    .line 36
    .line 37
    invoke-direct {p3, p0, v0}, Landroidx/media3/exoplayer/audio/i$c;-><init>(Landroidx/media3/exoplayer/audio/i;Landroidx/media3/exoplayer/audio/i$a;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move-object p3, v0

    .line 42
    :goto_0
    iput-object p3, p0, Landroidx/media3/exoplayer/audio/i;->d:Landroidx/media3/exoplayer/audio/i$c;

    .line 43
    .line 44
    new-instance p3, Landroidx/media3/exoplayer/audio/i$e;

    .line 45
    .line 46
    invoke-direct {p3, p0, v0}, Landroidx/media3/exoplayer/audio/i$e;-><init>(Landroidx/media3/exoplayer/audio/i;Landroidx/media3/exoplayer/audio/i$a;)V

    .line 47
    .line 48
    .line 49
    iput-object p3, p0, Landroidx/media3/exoplayer/audio/i;->e:Landroid/content/BroadcastReceiver;

    .line 50
    .line 51
    invoke-static {}, Landroidx/media3/exoplayer/audio/e;->i()Landroid/net/Uri;

    .line 52
    .line 53
    .line 54
    move-result-object p3

    .line 55
    if-eqz p3, :cond_1

    .line 56
    .line 57
    new-instance v0, Landroidx/media3/exoplayer/audio/i$d;

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-direct {v0, p0, p2, p1, p3}, Landroidx/media3/exoplayer/audio/i$d;-><init>(Landroidx/media3/exoplayer/audio/i;Landroid/os/Handler;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/i;->f:Landroidx/media3/exoplayer/audio/i$d;

    .line 67
    .line 68
    return-void
.end method

.method static synthetic a(Landroidx/media3/exoplayer/audio/i;)Landroidx/media3/common/c;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/i;->i:Landroidx/media3/common/c;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Landroidx/media3/exoplayer/audio/i;)Landroidx/media3/exoplayer/audio/j;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/i;->h:Landroidx/media3/exoplayer/audio/j;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Landroidx/media3/exoplayer/audio/i;Landroidx/media3/exoplayer/audio/j;)Landroidx/media3/exoplayer/audio/j;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/i;->h:Landroidx/media3/exoplayer/audio/j;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic d(Landroidx/media3/exoplayer/audio/i;Landroidx/media3/exoplayer/audio/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/i;->f(Landroidx/media3/exoplayer/audio/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic e(Landroidx/media3/exoplayer/audio/i;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/i;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method private f(Landroidx/media3/exoplayer/audio/e;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/i;->j:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/i;->g:Landroidx/media3/exoplayer/audio/e;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/audio/e;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/i;->g:Landroidx/media3/exoplayer/audio/e;

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/i;->b:Landroidx/media3/exoplayer/audio/i$f;

    .line 16
    .line 17
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/audio/i$f;->a(Landroidx/media3/exoplayer/audio/e;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method


# virtual methods
.method public g()Landroidx/media3/exoplayer/audio/e;
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/i;->j:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/i;->g:Landroidx/media3/exoplayer/audio/e;

    .line 6
    .line 7
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroidx/media3/exoplayer/audio/e;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/i;->j:Z

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/i;->f:Landroidx/media3/exoplayer/audio/i$d;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/i$d;->a()V

    .line 22
    .line 23
    .line 24
    :cond_1
    sget v0, Landroidx/media3/common/util/a1;->a:I

    .line 25
    .line 26
    const/16 v1, 0x17

    .line 27
    .line 28
    if-lt v0, v1, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/i;->d:Landroidx/media3/exoplayer/audio/i$c;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/i;->a:Landroid/content/Context;

    .line 35
    .line 36
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/i;->c:Landroid/os/Handler;

    .line 37
    .line 38
    invoke-static {v1, v0, v2}, Landroidx/media3/exoplayer/audio/i$b;->a(Landroid/content/Context;Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/i;->a:Landroid/content/Context;

    .line 42
    .line 43
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/i;->e:Landroid/content/BroadcastReceiver;

    .line 44
    .line 45
    new-instance v2, Landroid/content/IntentFilter;

    .line 46
    .line 47
    const-string v3, "android.media.action.HDMI_AUDIO_PLUG"

    .line 48
    .line 49
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const/4 v3, 0x0

    .line 53
    iget-object v4, p0, Landroidx/media3/exoplayer/audio/i;->c:Landroid/os/Handler;

    .line 54
    .line 55
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/i;->a:Landroid/content/Context;

    .line 60
    .line 61
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/i;->i:Landroidx/media3/common/c;

    .line 62
    .line 63
    iget-object v3, p0, Landroidx/media3/exoplayer/audio/i;->h:Landroidx/media3/exoplayer/audio/j;

    .line 64
    .line 65
    invoke-static {v1, v0, v2, v3}, Landroidx/media3/exoplayer/audio/e;->e(Landroid/content/Context;Landroid/content/Intent;Landroidx/media3/common/c;Landroidx/media3/exoplayer/audio/j;)Landroidx/media3/exoplayer/audio/e;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/i;->g:Landroidx/media3/exoplayer/audio/e;

    .line 70
    .line 71
    return-object v0
.end method

.method public h(Landroidx/media3/common/c;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/i;->i:Landroidx/media3/common/c;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/i;->a:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/i;->h:Landroidx/media3/exoplayer/audio/j;

    .line 6
    .line 7
    invoke-static {v0, p1, v1}, Landroidx/media3/exoplayer/audio/e;->f(Landroid/content/Context;Landroidx/media3/common/c;Landroidx/media3/exoplayer/audio/j;)Landroidx/media3/exoplayer/audio/e;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/i;->f(Landroidx/media3/exoplayer/audio/e;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public i(Landroid/media/AudioDeviceInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/i;->h:Landroidx/media3/exoplayer/audio/j;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move-object v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, v0, Landroidx/media3/exoplayer/audio/j;->a:Landroid/media/AudioDeviceInfo;

    .line 9
    .line 10
    :goto_0
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    if-eqz p1, :cond_2

    .line 18
    .line 19
    new-instance v1, Landroidx/media3/exoplayer/audio/j;

    .line 20
    .line 21
    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/audio/j;-><init>(Landroid/media/AudioDeviceInfo;)V

    .line 22
    .line 23
    .line 24
    :cond_2
    iput-object v1, p0, Landroidx/media3/exoplayer/audio/i;->h:Landroidx/media3/exoplayer/audio/j;

    .line 25
    .line 26
    iget-object p1, p0, Landroidx/media3/exoplayer/audio/i;->a:Landroid/content/Context;

    .line 27
    .line 28
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/i;->i:Landroidx/media3/common/c;

    .line 29
    .line 30
    invoke-static {p1, v0, v1}, Landroidx/media3/exoplayer/audio/e;->f(Landroid/content/Context;Landroidx/media3/common/c;Landroidx/media3/exoplayer/audio/j;)Landroidx/media3/exoplayer/audio/e;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/i;->f(Landroidx/media3/exoplayer/audio/e;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public j()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/i;->j:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/i;->g:Landroidx/media3/exoplayer/audio/e;

    .line 8
    .line 9
    sget v0, Landroidx/media3/common/util/a1;->a:I

    .line 10
    .line 11
    const/16 v1, 0x17

    .line 12
    .line 13
    if-lt v0, v1, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/i;->d:Landroidx/media3/exoplayer/audio/i$c;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/i;->a:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroidx/media3/exoplayer/audio/i$b;->b(Landroid/content/Context;Landroid/media/AudioDeviceCallback;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/i;->a:Landroid/content/Context;

    .line 25
    .line 26
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/i;->e:Landroid/content/BroadcastReceiver;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/i;->f:Landroidx/media3/exoplayer/audio/i$d;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/i$d;->b()V

    .line 36
    .line 37
    .line 38
    :cond_2
    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/i;->j:Z

    .line 40
    .line 41
    return-void
.end method
