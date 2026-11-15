.class Li2/n$g;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li2/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation


# instance fields
.field private final a:Landroid/media/Spatializer;

.field private final b:Z

.field private final c:Landroid/os/Handler;

.field private final d:Landroid/media/Spatializer$OnSpatializerStateChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Li2/n;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p1}, Lt1/m;->c(Landroid/content/Context;)Landroid/media/AudioManager;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    :goto_0
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_3

    .line 15
    .line 16
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {p1}, Landroidx/media3/common/util/a1;->K0(Landroid/content/Context;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-static {v1}, Li2/o;->a(Landroid/media/AudioManager;)Landroid/media/Spatializer;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Li2/n$g;->a:Landroid/media/Spatializer;

    .line 34
    .line 35
    invoke-static {p1}, Li2/p;->a(Landroid/media/Spatializer;)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    const/4 v2, 0x1

    .line 42
    :cond_2
    iput-boolean v2, p0, Li2/n$g;->b:Z

    .line 43
    .line 44
    new-instance v0, Li2/n$g$a;

    .line 45
    .line 46
    invoke-direct {v0, p0, p2}, Li2/n$g$a;-><init>(Li2/n$g;Li2/n;)V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Li2/n$g;->d:Landroid/media/Spatializer$OnSpatializerStateChangedListener;

    .line 50
    .line 51
    new-instance p2, Landroid/os/Handler;

    .line 52
    .line 53
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {v1}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Landroid/os/Looper;

    .line 62
    .line 63
    invoke-direct {p2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 64
    .line 65
    .line 66
    iput-object p2, p0, Li2/n$g;->c:Landroid/os/Handler;

    .line 67
    .line 68
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    new-instance v1, Landroidx/media3/exoplayer/audio/w0;

    .line 72
    .line 73
    invoke-direct {v1, p2}, Landroidx/media3/exoplayer/audio/w0;-><init>(Landroid/os/Handler;)V

    .line 74
    .line 75
    .line 76
    invoke-static {p1, v1, v0}, Li2/q;->a(Landroid/media/Spatializer;Ljava/util/concurrent/Executor;Landroid/media/Spatializer$OnSpatializerStateChangedListener;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_3
    :goto_1
    iput-object v0, p0, Li2/n$g;->a:Landroid/media/Spatializer;

    .line 81
    .line 82
    iput-boolean v2, p0, Li2/n$g;->b:Z

    .line 83
    .line 84
    iput-object v0, p0, Li2/n$g;->c:Landroid/os/Handler;

    .line 85
    .line 86
    iput-object v0, p0, Li2/n$g;->d:Landroid/media/Spatializer$OnSpatializerStateChangedListener;

    .line 87
    .line 88
    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/common/c;Landroidx/media3/common/r;)Z
    .locals 4

    .line 1
    iget-object v0, p2, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "audio/eac3-joc"

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, -0x1

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget v0, p2, Landroidx/media3/common/r;->E:I

    .line 13
    .line 14
    const/16 v2, 0x10

    .line 15
    .line 16
    if-ne v0, v2, :cond_4

    .line 17
    .line 18
    const/16 v0, 0xc

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p2, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 22
    .line 23
    const-string v2, "audio/iamf"

    .line 24
    .line 25
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget v0, p2, Landroidx/media3/common/r;->E:I

    .line 32
    .line 33
    if-ne v0, v1, :cond_4

    .line 34
    .line 35
    const/4 v0, 0x6

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object v0, p2, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 38
    .line 39
    const-string v2, "audio/ac4"

    .line 40
    .line 41
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    iget v0, p2, Landroidx/media3/common/r;->E:I

    .line 48
    .line 49
    const/16 v2, 0x12

    .line 50
    .line 51
    if-eq v0, v2, :cond_2

    .line 52
    .line 53
    const/16 v2, 0x15

    .line 54
    .line 55
    if-ne v0, v2, :cond_4

    .line 56
    .line 57
    :cond_2
    const/16 v0, 0x18

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    iget v0, p2, Landroidx/media3/common/r;->E:I

    .line 61
    .line 62
    :cond_4
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/a1;->M(I)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_5

    .line 67
    .line 68
    const/4 p1, 0x0

    .line 69
    return p1

    .line 70
    :cond_5
    new-instance v2, Landroid/media/AudioFormat$Builder;

    .line 71
    .line 72
    invoke-direct {v2}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 73
    .line 74
    .line 75
    const/4 v3, 0x2

    .line 76
    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v2, v0}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget p2, p2, Landroidx/media3/common/r;->F:I

    .line 85
    .line 86
    if-eq p2, v1, :cond_6

    .line 87
    .line 88
    invoke-virtual {v0, p2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    .line 89
    .line 90
    .line 91
    :cond_6
    iget-object p2, p0, Li2/n$g;->a:Landroid/media/Spatializer;

    .line 92
    .line 93
    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-static {p2}, Li2/s;->a(Ljava/lang/Object;)Landroid/media/Spatializer;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-virtual {p1}, Landroidx/media3/common/c;->a()Landroidx/media3/common/c$d;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    iget-object p1, p1, Landroidx/media3/common/c$d;->a:Landroid/media/AudioAttributes;

    .line 106
    .line 107
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-static {p2, p1, v0}, Li2/v;->a(Landroid/media/Spatializer;Landroid/media/AudioAttributes;Landroid/media/AudioFormat;)Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    return p1
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li2/n$g;->a:Landroid/media/Spatializer;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Li2/s;->a(Ljava/lang/Object;)Landroid/media/Spatializer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Li2/t;->a(Landroid/media/Spatializer;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li2/n$g;->a:Landroid/media/Spatializer;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Li2/s;->a(Ljava/lang/Object;)Landroid/media/Spatializer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Li2/u;->a(Landroid/media/Spatializer;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Li2/n$g;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public e()V
    .locals 3

    .line 1
    iget-object v0, p0, Li2/n$g;->a:Landroid/media/Spatializer;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Li2/n$g;->d:Landroid/media/Spatializer$OnSpatializerStateChangedListener;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget-object v2, p0, Li2/n$g;->c:Landroid/os/Handler;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {v0, v1}, Li2/r;->a(Landroid/media/Spatializer;Landroid/media/Spatializer$OnSpatializerStateChangedListener;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Li2/n$g;->c:Landroid/os/Handler;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    return-void
.end method
