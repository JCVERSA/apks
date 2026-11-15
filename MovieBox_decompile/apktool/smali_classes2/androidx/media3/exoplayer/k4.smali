.class final Landroidx/media3/exoplayer/k4;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/k4$c;,
        Landroidx/media3/exoplayer/k4$d;,
        Landroidx/media3/exoplayer/k4$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroidx/media3/exoplayer/k4$b;

.field private final c:Landroidx/media3/common/util/g;

.field private d:Landroid/media/AudioManager;

.field private e:Landroidx/media3/exoplayer/k4$d;

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/k4$b;ILandroid/os/Looper;Landroid/os/Looper;Landroidx/media3/common/util/i;)V
    .locals 6

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
    iput-object p1, p0, Landroidx/media3/exoplayer/k4;->a:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p2, p0, Landroidx/media3/exoplayer/k4;->b:Landroidx/media3/exoplayer/k4$b;

    .line 11
    .line 12
    new-instance p1, Landroidx/media3/exoplayer/k4$c;

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x0

    .line 18
    move-object v0, p1

    .line 19
    move v1, p3

    .line 20
    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/k4$c;-><init>(IIZII)V

    .line 21
    .line 22
    .line 23
    new-instance p2, Landroidx/media3/common/util/g;

    .line 24
    .line 25
    new-instance v5, Landroidx/media3/exoplayer/e4;

    .line 26
    .line 27
    invoke-direct {v5, p0}, Landroidx/media3/exoplayer/e4;-><init>(Landroidx/media3/exoplayer/k4;)V

    .line 28
    .line 29
    .line 30
    move-object v0, p2

    .line 31
    move-object v1, p1

    .line 32
    move-object v2, p4

    .line 33
    move-object v3, p5

    .line 34
    move-object v4, p6

    .line 35
    invoke-direct/range {v0 .. v5}, Landroidx/media3/common/util/g;-><init>(Ljava/lang/Object;Landroid/os/Looper;Landroid/os/Looper;Landroidx/media3/common/util/i;Landroidx/media3/common/util/g$a;)V

    .line 36
    .line 37
    .line 38
    iput-object p2, p0, Landroidx/media3/exoplayer/k4;->c:Landroidx/media3/common/util/g;

    .line 39
    .line 40
    new-instance p1, Landroidx/media3/exoplayer/f4;

    .line 41
    .line 42
    invoke-direct {p1, p0, p3}, Landroidx/media3/exoplayer/f4;-><init>(Landroidx/media3/exoplayer/k4;I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p1}, Landroidx/media3/common/util/g;->h(Ljava/lang/Runnable;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public static synthetic a(Landroidx/media3/exoplayer/k4;ZLandroidx/media3/exoplayer/k4$c;)Landroidx/media3/exoplayer/k4$c;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/k4;->r(ZLandroidx/media3/exoplayer/k4$c;)Landroidx/media3/exoplayer/k4$c;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Landroidx/media3/exoplayer/k4$c;)Landroidx/media3/exoplayer/k4$c;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/k4;->o(Landroidx/media3/exoplayer/k4$c;)Landroidx/media3/exoplayer/k4$c;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Landroidx/media3/exoplayer/k4;Landroidx/media3/exoplayer/k4$c;)Landroidx/media3/exoplayer/k4$c;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/k4;->p(Landroidx/media3/exoplayer/k4$c;)Landroidx/media3/exoplayer/k4$c;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Landroidx/media3/exoplayer/k4;ZILandroidx/media3/exoplayer/k4$c;)Landroidx/media3/exoplayer/k4$c;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/k4;->q(ZILandroidx/media3/exoplayer/k4$c;)Landroidx/media3/exoplayer/k4$c;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Landroidx/media3/exoplayer/k4;Landroidx/media3/exoplayer/k4$c;Landroidx/media3/exoplayer/k4$c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/k4;->s(Landroidx/media3/exoplayer/k4$c;Landroidx/media3/exoplayer/k4$c;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Landroidx/media3/exoplayer/k4;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/k4;->n(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic g(Landroidx/media3/exoplayer/k4;)Landroidx/media3/common/util/g;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/k4;->c:Landroidx/media3/common/util/g;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic h(Landroidx/media3/exoplayer/k4;)Landroidx/media3/exoplayer/k4$d;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/k4;->e:Landroidx/media3/exoplayer/k4$d;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic i(Landroidx/media3/exoplayer/k4;I)Landroidx/media3/exoplayer/k4$c;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/k4;->j(I)Landroidx/media3/exoplayer/k4$c;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private j(I)Landroidx/media3/exoplayer/k4$c;
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/k4;->d:Landroid/media/AudioManager;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/k4;->d:Landroid/media/AudioManager;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lt1/m;->f(Landroid/media/AudioManager;I)I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    iget-object v0, p0, Landroidx/media3/exoplayer/k4;->d:Landroid/media/AudioManager;

    .line 13
    .line 14
    invoke-static {v0, p1}, Lt1/m;->g(Landroid/media/AudioManager;I)Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    iget-object v0, p0, Landroidx/media3/exoplayer/k4;->d:Landroid/media/AudioManager;

    .line 19
    .line 20
    invoke-static {v0, p1}, Lt1/m;->e(Landroid/media/AudioManager;I)I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    iget-object v0, p0, Landroidx/media3/exoplayer/k4;->d:Landroid/media/AudioManager;

    .line 25
    .line 26
    invoke-static {v0, p1}, Lt1/m;->d(Landroid/media/AudioManager;I)I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    new-instance v0, Landroidx/media3/exoplayer/k4$c;

    .line 31
    .line 32
    move-object v1, v0

    .line 33
    move v2, p1

    .line 34
    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/k4$c;-><init>(IIZII)V

    .line 35
    .line 36
    .line 37
    return-object v0
.end method

.method private synthetic n(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/k4;->a:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "audio"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/media/AudioManager;

    .line 10
    .line 11
    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/media/AudioManager;

    .line 16
    .line 17
    iput-object v0, p0, Landroidx/media3/exoplayer/k4;->d:Landroid/media/AudioManager;

    .line 18
    .line 19
    new-instance v0, Landroidx/media3/exoplayer/k4$d;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/k4$d;-><init>(Landroidx/media3/exoplayer/k4;Landroidx/media3/exoplayer/k4$a;)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Landroid/content/IntentFilter;

    .line 26
    .line 27
    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    .line 28
    .line 29
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :try_start_0
    iget-object v2, p0, Landroidx/media3/exoplayer/k4;->a:Landroid/content/Context;

    .line 33
    .line 34
    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Landroidx/media3/exoplayer/k4;->e:Landroidx/media3/exoplayer/k4$d;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    const-string v1, "StreamVolumeManager"

    .line 42
    .line 43
    const-string v2, "Error registering stream volume receiver"

    .line 44
    .line 45
    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/u;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/k4;->c:Landroidx/media3/common/util/g;

    .line 49
    .line 50
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/k4;->j(I)Landroidx/media3/exoplayer/k4$c;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {v0, p1}, Landroidx/media3/common/util/g;->i(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method private static synthetic o(Landroidx/media3/exoplayer/k4$c;)Landroidx/media3/exoplayer/k4$c;
    .locals 0

    .line 1
    return-object p0
.end method

.method private synthetic p(Landroidx/media3/exoplayer/k4$c;)Landroidx/media3/exoplayer/k4$c;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/k4;->e:Landroidx/media3/exoplayer/k4$d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/k4;->a:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception v0

    .line 12
    const-string v1, "StreamVolumeManager"

    .line 13
    .line 14
    const-string v2, "Error unregistering stream volume receiver"

    .line 15
    .line 16
    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/u;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Landroidx/media3/exoplayer/k4;->e:Landroidx/media3/exoplayer/k4$d;

    .line 21
    .line 22
    :cond_0
    return-object p1
.end method

.method private synthetic q(ZILandroidx/media3/exoplayer/k4$c;)Landroidx/media3/exoplayer/k4$c;
    .locals 2

    .line 1
    iget-boolean v0, p3, Landroidx/media3/exoplayer/k4$c;->c:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-object p3

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/k4;->d:Landroid/media/AudioManager;

    .line 7
    .line 8
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    sget v0, Landroidx/media3/common/util/a1;->a:I

    .line 12
    .line 13
    const/16 v1, 0x17

    .line 14
    .line 15
    if-lt v0, v1, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/media3/exoplayer/k4;->d:Landroid/media/AudioManager;

    .line 18
    .line 19
    iget v1, p3, Landroidx/media3/exoplayer/k4$c;->a:I

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    const/16 p1, -0x64

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/16 p1, 0x64

    .line 27
    .line 28
    :goto_0
    invoke-virtual {v0, v1, p1, p2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    iget-object p2, p0, Landroidx/media3/exoplayer/k4;->d:Landroid/media/AudioManager;

    .line 33
    .line 34
    iget v0, p3, Landroidx/media3/exoplayer/k4$c;->a:I

    .line 35
    .line 36
    invoke-virtual {p2, v0, p1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 37
    .line 38
    .line 39
    :goto_1
    iget p1, p3, Landroidx/media3/exoplayer/k4$c;->a:I

    .line 40
    .line 41
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/k4;->j(I)Landroidx/media3/exoplayer/k4$c;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    return-object p1
.end method

.method private synthetic r(ZLandroidx/media3/exoplayer/k4$c;)Landroidx/media3/exoplayer/k4$c;
    .locals 7

    .line 1
    new-instance v6, Landroidx/media3/exoplayer/k4$c;

    .line 2
    .line 3
    iget v1, p2, Landroidx/media3/exoplayer/k4$c;->a:I

    .line 4
    .line 5
    iget-boolean v0, p2, Landroidx/media3/exoplayer/k4$c;->c:Z

    .line 6
    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    iget v0, p2, Landroidx/media3/exoplayer/k4$c;->b:I

    .line 10
    .line 11
    :goto_0
    move v2, v0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    if-eqz p1, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget v0, p0, Landroidx/media3/exoplayer/k4;->f:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :goto_1
    iget v4, p2, Landroidx/media3/exoplayer/k4$c;->d:I

    .line 21
    .line 22
    iget v5, p2, Landroidx/media3/exoplayer/k4$c;->e:I

    .line 23
    .line 24
    move-object v0, v6

    .line 25
    move v3, p1

    .line 26
    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/k4$c;-><init>(IIZII)V

    .line 27
    .line 28
    .line 29
    return-object v6
.end method

.method private s(Landroidx/media3/exoplayer/k4$c;Landroidx/media3/exoplayer/k4$c;)V
    .locals 3

    .line 1
    iget-boolean v0, p1, Landroidx/media3/exoplayer/k4$c;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, p2, Landroidx/media3/exoplayer/k4$c;->c:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget v1, p1, Landroidx/media3/exoplayer/k4$c;->b:I

    .line 10
    .line 11
    iput v1, p0, Landroidx/media3/exoplayer/k4;->f:I

    .line 12
    .line 13
    :cond_0
    iget v1, p1, Landroidx/media3/exoplayer/k4$c;->b:I

    .line 14
    .line 15
    iget v2, p2, Landroidx/media3/exoplayer/k4$c;->b:I

    .line 16
    .line 17
    if-ne v1, v2, :cond_1

    .line 18
    .line 19
    iget-boolean v1, p2, Landroidx/media3/exoplayer/k4$c;->c:Z

    .line 20
    .line 21
    if-eq v0, v1, :cond_2

    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/k4;->b:Landroidx/media3/exoplayer/k4$b;

    .line 24
    .line 25
    iget-boolean v1, p2, Landroidx/media3/exoplayer/k4$c;->c:Z

    .line 26
    .line 27
    invoke-interface {v0, v2, v1}, Landroidx/media3/exoplayer/k4$b;->r(IZ)V

    .line 28
    .line 29
    .line 30
    :cond_2
    iget v0, p1, Landroidx/media3/exoplayer/k4$c;->a:I

    .line 31
    .line 32
    iget v1, p2, Landroidx/media3/exoplayer/k4$c;->a:I

    .line 33
    .line 34
    if-ne v0, v1, :cond_3

    .line 35
    .line 36
    iget v0, p1, Landroidx/media3/exoplayer/k4$c;->d:I

    .line 37
    .line 38
    iget v2, p2, Landroidx/media3/exoplayer/k4$c;->d:I

    .line 39
    .line 40
    if-ne v0, v2, :cond_3

    .line 41
    .line 42
    iget p1, p1, Landroidx/media3/exoplayer/k4$c;->e:I

    .line 43
    .line 44
    iget p2, p2, Landroidx/media3/exoplayer/k4$c;->e:I

    .line 45
    .line 46
    if-eq p1, p2, :cond_4

    .line 47
    .line 48
    :cond_3
    iget-object p1, p0, Landroidx/media3/exoplayer/k4;->b:Landroidx/media3/exoplayer/k4$b;

    .line 49
    .line 50
    invoke-interface {p1, v1}, Landroidx/media3/exoplayer/k4$b;->l(I)V

    .line 51
    .line 52
    .line 53
    :cond_4
    return-void
.end method


# virtual methods
.method public k()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/k4;->c:Landroidx/media3/common/util/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/common/util/g;->d()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/media3/exoplayer/k4$c;

    .line 8
    .line 9
    iget v0, v0, Landroidx/media3/exoplayer/k4$c;->e:I

    .line 10
    .line 11
    return v0
.end method

.method public l()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/k4;->c:Landroidx/media3/common/util/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/common/util/g;->d()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/media3/exoplayer/k4$c;

    .line 8
    .line 9
    iget v0, v0, Landroidx/media3/exoplayer/k4$c;->d:I

    .line 10
    .line 11
    return v0
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/k4;->c:Landroidx/media3/common/util/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/common/util/g;->d()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/media3/exoplayer/k4$c;

    .line 8
    .line 9
    iget-boolean v0, v0, Landroidx/media3/exoplayer/k4$c;->c:Z

    .line 10
    .line 11
    return v0
.end method

.method public t()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/k4;->c:Landroidx/media3/common/util/g;

    .line 2
    .line 3
    new-instance v1, Landroidx/media3/exoplayer/i4;

    .line 4
    .line 5
    invoke-direct {v1}, Landroidx/media3/exoplayer/i4;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Landroidx/media3/exoplayer/j4;

    .line 9
    .line 10
    invoke-direct {v2, p0}, Landroidx/media3/exoplayer/j4;-><init>(Landroidx/media3/exoplayer/k4;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/util/g;->j(Lcom/google/common/base/f;Lcom/google/common/base/f;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public u(ZI)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/k4;->c:Landroidx/media3/common/util/g;

    .line 2
    .line 3
    new-instance v1, Landroidx/media3/exoplayer/g4;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/g4;-><init>(Landroidx/media3/exoplayer/k4;Z)V

    .line 6
    .line 7
    .line 8
    new-instance v2, Landroidx/media3/exoplayer/h4;

    .line 9
    .line 10
    invoke-direct {v2, p0, p1, p2}, Landroidx/media3/exoplayer/h4;-><init>(Landroidx/media3/exoplayer/k4;ZI)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/util/g;->j(Lcom/google/common/base/f;Lcom/google/common/base/f;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
