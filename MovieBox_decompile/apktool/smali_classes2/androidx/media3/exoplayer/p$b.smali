.class final Landroidx/media3/exoplayer/p$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/media3/exoplayer/m4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/media/AudioManager;

.field private b:Landroid/media/AudioDeviceCallback;

.field private c:Landroidx/media3/common/util/g;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/p$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroidx/media3/exoplayer/p$b;-><init>()V

    return-void
.end method

.method public static synthetic c(Landroidx/media3/exoplayer/m4$a;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/p$b;->j(Landroidx/media3/exoplayer/m4$a;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Landroidx/media3/exoplayer/p$b;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/p$b;->k(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Landroidx/media3/exoplayer/p$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/p$b;->i()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic f(Landroidx/media3/exoplayer/p$b;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/p$b;->h()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic g(Landroidx/media3/exoplayer/p$b;)Landroidx/media3/common/util/g;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/p$b;->c:Landroidx/media3/common/util/g;

    .line 2
    .line 3
    return-object p0
.end method

.method private h()Z
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/p$b;->a:Landroid/media/AudioManager;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/media/AudioManager;

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    array-length v1, v0

    .line 15
    const/4 v2, 0x0

    .line 16
    move v3, v2

    .line 17
    :goto_0
    if-ge v3, v1, :cond_7

    .line 18
    .line 19
    aget-object v4, v0, v3

    .line 20
    .line 21
    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    const/16 v6, 0x8

    .line 26
    .line 27
    const/4 v7, 0x1

    .line 28
    if-eq v5, v6, :cond_6

    .line 29
    .line 30
    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    const/4 v6, 0x5

    .line 35
    if-eq v5, v6, :cond_6

    .line 36
    .line 37
    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    const/4 v6, 0x6

    .line 42
    if-eq v5, v6, :cond_6

    .line 43
    .line 44
    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    const/16 v6, 0xb

    .line 49
    .line 50
    if-eq v5, v6, :cond_6

    .line 51
    .line 52
    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    const/4 v6, 0x4

    .line 57
    if-eq v5, v6, :cond_6

    .line 58
    .line 59
    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    const/4 v6, 0x3

    .line 64
    if-ne v5, v6, :cond_0

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_0
    sget v5, Landroidx/media3/common/util/a1;->a:I

    .line 68
    .line 69
    const/16 v6, 0x1a

    .line 70
    .line 71
    if-lt v5, v6, :cond_1

    .line 72
    .line 73
    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 74
    .line 75
    .line 76
    move-result v8

    .line 77
    const/16 v9, 0x16

    .line 78
    .line 79
    if-ne v8, v9, :cond_1

    .line 80
    .line 81
    return v7

    .line 82
    :cond_1
    const/16 v8, 0x1c

    .line 83
    .line 84
    if-lt v5, v8, :cond_2

    .line 85
    .line 86
    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 87
    .line 88
    .line 89
    move-result v8

    .line 90
    const/16 v9, 0x17

    .line 91
    .line 92
    if-ne v8, v9, :cond_2

    .line 93
    .line 94
    return v7

    .line 95
    :cond_2
    const/16 v8, 0x1f

    .line 96
    .line 97
    if-lt v5, v8, :cond_4

    .line 98
    .line 99
    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 100
    .line 101
    .line 102
    move-result v8

    .line 103
    if-eq v8, v6, :cond_3

    .line 104
    .line 105
    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    const/16 v8, 0x1b

    .line 110
    .line 111
    if-ne v6, v8, :cond_4

    .line 112
    .line 113
    :cond_3
    return v7

    .line 114
    :cond_4
    const/16 v6, 0x21

    .line 115
    .line 116
    if-lt v5, v6, :cond_5

    .line 117
    .line 118
    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    const/16 v5, 0x1e

    .line 123
    .line 124
    if-ne v4, v5, :cond_5

    .line 125
    .line 126
    return v7

    .line 127
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_6
    :goto_1
    return v7

    .line 131
    :cond_7
    return v2
.end method

.method private synthetic i()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/p$b;->a:Landroid/media/AudioManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/media3/exoplayer/p$b;->b:Landroid/media/AudioDeviceCallback;

    .line 6
    .line 7
    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Landroid/media/AudioDeviceCallback;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterAudioDeviceCallback(Landroid/media/AudioDeviceCallback;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private static synthetic j(Landroidx/media3/exoplayer/m4$a;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/m4$a;->a(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic k(Landroid/content/Context;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/p$b;->c:Landroidx/media3/common/util/g;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroidx/media3/common/util/a1;->L0(Landroid/content/Context;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const-string v0, "audio"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Landroid/media/AudioManager;

    .line 20
    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    iput-object p1, p0, Landroidx/media3/exoplayer/p$b;->a:Landroid/media/AudioManager;

    .line 25
    .line 26
    new-instance v0, Landroidx/media3/exoplayer/p$b$a;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/p$b$a;-><init>(Landroidx/media3/exoplayer/p$b;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Landroidx/media3/exoplayer/p$b;->b:Landroid/media/AudioDeviceCallback;

    .line 32
    .line 33
    new-instance v1, Landroid/os/Handler;

    .line 34
    .line 35
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {v2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Landroid/os/Looper;

    .line 44
    .line 45
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0, v1}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Landroidx/media3/exoplayer/p$b;->c:Landroidx/media3/common/util/g;

    .line 52
    .line 53
    invoke-direct {p0}, Landroidx/media3/exoplayer/p$b;->h()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/g;->i(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/p$b;->c:Landroidx/media3/common/util/g;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroidx/media3/common/util/g;->d()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    :goto_0
    return v0
.end method

.method public b(Landroidx/media3/exoplayer/m4$a;Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Landroidx/media3/common/util/i;)V
    .locals 7

    .line 1
    new-instance v6, Landroidx/media3/common/util/g;

    .line 2
    .line 3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 4
    .line 5
    new-instance v5, Landroidx/media3/exoplayer/r;

    .line 6
    .line 7
    invoke-direct {v5, p1}, Landroidx/media3/exoplayer/r;-><init>(Landroidx/media3/exoplayer/m4$a;)V

    .line 8
    .line 9
    .line 10
    move-object v0, v6

    .line 11
    move-object v2, p4

    .line 12
    move-object v3, p3

    .line 13
    move-object v4, p5

    .line 14
    invoke-direct/range {v0 .. v5}, Landroidx/media3/common/util/g;-><init>(Ljava/lang/Object;Landroid/os/Looper;Landroid/os/Looper;Landroidx/media3/common/util/i;Landroidx/media3/common/util/g$a;)V

    .line 15
    .line 16
    .line 17
    iput-object v6, p0, Landroidx/media3/exoplayer/p$b;->c:Landroidx/media3/common/util/g;

    .line 18
    .line 19
    new-instance p1, Landroidx/media3/exoplayer/s;

    .line 20
    .line 21
    invoke-direct {p1, p0, p2}, Landroidx/media3/exoplayer/s;-><init>(Landroidx/media3/exoplayer/p$b;Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v6, p1}, Landroidx/media3/common/util/g;->h(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public disable()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/p$b;->c:Landroidx/media3/common/util/g;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/media3/common/util/g;

    .line 8
    .line 9
    new-instance v1, Landroidx/media3/exoplayer/q;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/q;-><init>(Landroidx/media3/exoplayer/p$b;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/g;->h(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
