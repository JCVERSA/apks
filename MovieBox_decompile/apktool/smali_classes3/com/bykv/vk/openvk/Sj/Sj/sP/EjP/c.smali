.class public Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;
.super Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c$a;
    }
.end annotation


# instance fields
.field private final i:Landroid/media/MediaPlayer;

.field private final j:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c$a;

.field private k:Lf6/a;

.field private l:Landroid/view/Surface;

.field private final m:Ljava/lang/Object;

.field private volatile n:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/a;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->m:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    .line 13
    .line 14
    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    .line 18
    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    invoke-direct {p0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->s(Landroid/media/MediaPlayer;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x3

    .line 24
    :try_start_1
    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    .line 26
    .line 27
    :catchall_0
    new-instance v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c$a;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c$a;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->j:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c$a;

    .line 33
    .line 34
    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->v()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :catchall_1
    move-exception v1

    .line 39
    monitor-exit v0

    .line 40
    throw v1
.end method

.method private s(Landroid/media/MediaPlayer;)V
    .locals 10

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, 0x0

    .line 5
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v5, 0x1c

    .line 8
    .line 9
    if-lt v4, v5, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_0
    const-string v4, "android.media.MediaTimeProvider"

    .line 13
    .line 14
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    const-string v5, "android.media.SubtitleController"

    .line 19
    .line 20
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    const-string v6, "android.media.SubtitleController$Anchor"

    .line 25
    .line 26
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    const-string v7, "android.media.SubtitleController$Listener"

    .line 31
    .line 32
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    new-array v8, v0, [Ljava/lang/Class;

    .line 37
    .line 38
    const-class v9, Landroid/content/Context;

    .line 39
    .line 40
    aput-object v9, v8, v3

    .line 41
    .line 42
    aput-object v4, v8, v2

    .line 43
    .line 44
    aput-object v7, v8, v1

    .line 45
    .line 46
    invoke-virtual {v5, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-static {}, Lv5/b;->c()Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    const/4 v8, 0x0

    .line 55
    new-array v0, v0, [Ljava/lang/Object;

    .line 56
    .line 57
    aput-object v7, v0, v3

    .line 58
    .line 59
    aput-object v8, v0, v2

    .line 60
    .line 61
    aput-object v8, v0, v1

    .line 62
    .line 63
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const-string v4, "mHandler"

    .line 68
    .line 69
    invoke-virtual {v5, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {v4, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 74
    .line 75
    .line 76
    :try_start_1
    new-instance v7, Landroid/os/Handler;

    .line 77
    .line 78
    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4, v0, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    .line 83
    .line 84
    :try_start_2
    invoke-virtual {v4, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    const-string v7, "setSubtitleAnchor"

    .line 92
    .line 93
    new-array v9, v1, [Ljava/lang/Class;

    .line 94
    .line 95
    aput-object v5, v9, v3

    .line 96
    .line 97
    aput-object v6, v9, v2

    .line 98
    .line 99
    invoke-virtual {v4, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    new-array v1, v1, [Ljava/lang/Object;

    .line 104
    .line 105
    aput-object v0, v1, v3

    .line 106
    .line 107
    aput-object v8, v1, v2

    .line 108
    .line 109
    invoke-virtual {v4, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :catchall_0
    invoke-virtual {v4, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 114
    .line 115
    .line 116
    :catchall_1
    return-void
.end method

.method private t()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->k:Lf6/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Lf6/a;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    :catchall_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->k:Lf6/a;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private u()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->l:Landroid/view/Surface;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->l:Landroid/view/Surface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    :catchall_0
    :cond_0
    return-void
.end method

.method private v()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->j:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c$a;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->j:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c$a;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->j:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c$a;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->j:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c$a;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->j:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c$a;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->j:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c$a;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->j:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c$a;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method


# virtual methods
.method public Dq()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public EjP(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 14
    .line 15
    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public Fmk()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public HiB()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public Jcg()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public Sj(JI)V
    .locals 2

    .line 14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_4

    if-eqz p3, :cond_3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    const/4 v0, 0x3

    if-eq p3, v0, :cond_0

    .line 15
    iget-object p3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    long-to-int p1, p1

    invoke-virtual {p3, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void

    .line 16
    :cond_0
    iget-object p3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    long-to-int p1, p1

    int-to-long p1, p1

    invoke-static {p3, p1, p2, v0}, Lcom/aliyun/player/externalplayer/a;->a(Landroid/media/MediaPlayer;JI)V

    return-void

    .line 17
    :cond_1
    iget-object p3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    long-to-int p1, p1

    int-to-long p1, p1

    invoke-static {p3, p1, p2, v0}, Lcom/aliyun/player/externalplayer/a;->a(Landroid/media/MediaPlayer;JI)V

    return-void

    .line 18
    :cond_2
    iget-object p3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    long-to-int p1, p1

    int-to-long p1, p1

    invoke-static {p3, p1, p2, v0}, Lcom/aliyun/player/externalplayer/a;->a(Landroid/media/MediaPlayer;JI)V

    return-void

    .line 19
    :cond_3
    iget-object p3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    long-to-int p1, p1

    int-to-long p1, p1

    const/4 v0, 0x0

    invoke-static {p3, p1, p2, v0}, Lcom/aliyun/player/externalplayer/a;->a(Landroid/media/MediaPlayer;JI)V

    return-void

    .line 20
    :cond_4
    iget-object p3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    long-to-int p1, p1

    invoke-virtual {p3, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void
.end method

.method public Sj(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->n:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/a;->h:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :catchall_0
    :cond_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public declared-synchronized Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)V
    .locals 1

    monitor-enter p0

    .line 10
    :try_start_0
    invoke-static {}, Lv5/b;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lf6/a;->f(Landroid/content/Context;Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Lf6/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->k:Lf6/a;

    .line 11
    invoke-static {p1}, Lg6/b;->b(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)V

    .line 12
    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->k:Lf6/a;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/media/MediaDataSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public Sj(Ljava/lang/String;)V
    .locals 3

    .line 5
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    return-void
.end method

.method public TEQ()J
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    .line 4
    .line 5
    .line 6
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    int-to-long v0, v0

    .line 8
    return-wide v0

    .line 9
    :catchall_0
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    return-wide v0
.end method

.method public TKC(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public Ym()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->m:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->n:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    iput-boolean v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->n:Z

    .line 15
    .line 16
    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->u()V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->t()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/a;->l()V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->v()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    return-void

    .line 33
    :goto_1
    monitor-exit v0

    .line 34
    throw v1
.end method

.method public aa()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    :catchall_0
    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->t()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/a;->l()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->v()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public f(Ljava/io/FileDescriptor;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected finalize()V
    .locals 0

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->u()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public g(Landroid/view/Surface;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->u()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->l:Landroid/view/Surface;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public i(Lv5/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lv5/c;->a()F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public sP(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public sef()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public uA()J
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    .line 4
    .line 5
    .line 6
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    int-to-long v0, v0

    .line 8
    return-wide v0

    .line 9
    :catchall_0
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    return-wide v0
.end method

.method public vS()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/c;->i:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
