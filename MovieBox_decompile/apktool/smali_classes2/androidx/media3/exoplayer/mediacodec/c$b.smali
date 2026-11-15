.class public final Landroidx/media3/exoplayer/mediacodec/c$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/media3/exoplayer/mediacodec/t$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/mediacodec/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final b:Lcom/google/common/base/q;

.field private final c:Lcom/google/common/base/q;

.field private d:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/mediacodec/d;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/mediacodec/d;-><init>(I)V

    new-instance v1, Landroidx/media3/exoplayer/mediacodec/e;

    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/mediacodec/e;-><init>(I)V

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/mediacodec/c$b;-><init>(Lcom/google/common/base/q;Lcom/google/common/base/q;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/base/q;Lcom/google/common/base/q;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/c$b;->b:Lcom/google/common/base/q;

    .line 4
    iput-object p2, p0, Landroidx/media3/exoplayer/mediacodec/c$b;->c:Lcom/google/common/base/q;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/c$b;->d:Z

    return-void
.end method

.method public static synthetic b(I)Landroid/os/HandlerThread;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/mediacodec/c$b;->g(I)Landroid/os/HandlerThread;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(I)Landroid/os/HandlerThread;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/mediacodec/c$b;->f(I)Landroid/os/HandlerThread;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic f(I)Landroid/os/HandlerThread;
    .locals 1

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    .line 2
    .line 3
    invoke-static {p0}, Landroidx/media3/exoplayer/mediacodec/c;->s(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method private static synthetic g(I)Landroid/os/HandlerThread;
    .locals 1

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    .line 2
    .line 3
    invoke-static {p0}, Landroidx/media3/exoplayer/mediacodec/c;->r(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method private static h(Landroidx/media3/common/r;)Z
    .locals 3

    .line 1
    sget v0, Landroidx/media3/common/util/a1;->a:I

    .line 2
    .line 3
    const/16 v1, 0x22

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    const/16 v1, 0x23

    .line 10
    .line 11
    if-ge v0, v1, :cond_1

    .line 12
    .line 13
    iget-object p0, p0, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {p0}, Landroidx/media3/common/y;->t(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_2

    .line 20
    .line 21
    :cond_1
    const/4 v2, 0x1

    .line 22
    :cond_2
    return v2
.end method


# virtual methods
.method public bridge synthetic a(Landroidx/media3/exoplayer/mediacodec/t$a;)Landroidx/media3/exoplayer/mediacodec/t;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/mediacodec/c$b;->d(Landroidx/media3/exoplayer/mediacodec/t$a;)Landroidx/media3/exoplayer/mediacodec/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public d(Landroidx/media3/exoplayer/mediacodec/t$a;)Landroidx/media3/exoplayer/mediacodec/c;
    .locals 10

    .line 1
    iget-object v0, p1, Landroidx/media3/exoplayer/mediacodec/t$a;->a:Landroidx/media3/exoplayer/mediacodec/w;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/media3/exoplayer/mediacodec/w;->a:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v3, "createCodec:"

    .line 12
    .line 13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v2}, Landroidx/media3/common/util/q0;->a(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    .line 27
    .line 28
    .line 29
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 30
    :try_start_1
    iget-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/c$b;->d:Z

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    iget-object v2, p1, Landroidx/media3/exoplayer/mediacodec/t$a;->c:Landroidx/media3/common/r;

    .line 35
    .line 36
    invoke-static {v2}, Landroidx/media3/exoplayer/mediacodec/c$b;->h(Landroidx/media3/common/r;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    new-instance v2, Landroidx/media3/exoplayer/mediacodec/s0;

    .line 43
    .line 44
    invoke-direct {v2, v0}, Landroidx/media3/exoplayer/mediacodec/s0;-><init>(Landroid/media/MediaCodec;)V

    .line 45
    .line 46
    .line 47
    const/4 v3, 0x4

    .line 48
    :goto_0
    move-object v6, v2

    .line 49
    move v2, v3

    .line 50
    goto :goto_1

    .line 51
    :catch_0
    move-exception p1

    .line 52
    goto :goto_3

    .line 53
    :cond_0
    new-instance v2, Landroidx/media3/exoplayer/mediacodec/g;

    .line 54
    .line 55
    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/c$b;->c:Lcom/google/common/base/q;

    .line 56
    .line 57
    invoke-interface {v3}, Lcom/google/common/base/q;->get()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Landroid/os/HandlerThread;

    .line 62
    .line 63
    invoke-direct {v2, v0, v3}, Landroidx/media3/exoplayer/mediacodec/g;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;)V

    .line 64
    .line 65
    .line 66
    const/4 v3, 0x0

    .line 67
    goto :goto_0

    .line 68
    :goto_1
    new-instance v9, Landroidx/media3/exoplayer/mediacodec/c;

    .line 69
    .line 70
    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/c$b;->b:Lcom/google/common/base/q;

    .line 71
    .line 72
    invoke-interface {v3}, Lcom/google/common/base/q;->get()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    move-object v5, v3

    .line 77
    check-cast v5, Landroid/os/HandlerThread;

    .line 78
    .line 79
    iget-object v7, p1, Landroidx/media3/exoplayer/mediacodec/t$a;->f:Landroidx/media3/exoplayer/mediacodec/p;

    .line 80
    .line 81
    const/4 v8, 0x0

    .line 82
    move-object v3, v9

    .line 83
    move-object v4, v0

    .line 84
    invoke-direct/range {v3 .. v8}, Landroidx/media3/exoplayer/mediacodec/c;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Landroidx/media3/exoplayer/mediacodec/v;Landroidx/media3/exoplayer/mediacodec/p;Landroidx/media3/exoplayer/mediacodec/c$a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 85
    .line 86
    .line 87
    :try_start_2
    invoke-static {}, Landroidx/media3/common/util/q0;->b()V

    .line 88
    .line 89
    .line 90
    iget-object v1, p1, Landroidx/media3/exoplayer/mediacodec/t$a;->d:Landroid/view/Surface;

    .line 91
    .line 92
    if-nez v1, :cond_1

    .line 93
    .line 94
    iget-object v3, p1, Landroidx/media3/exoplayer/mediacodec/t$a;->a:Landroidx/media3/exoplayer/mediacodec/w;

    .line 95
    .line 96
    iget-boolean v3, v3, Landroidx/media3/exoplayer/mediacodec/w;->k:Z

    .line 97
    .line 98
    if-eqz v3, :cond_1

    .line 99
    .line 100
    sget v3, Landroidx/media3/common/util/a1;->a:I

    .line 101
    .line 102
    const/16 v4, 0x23

    .line 103
    .line 104
    if-lt v3, v4, :cond_1

    .line 105
    .line 106
    or-int/lit8 v2, v2, 0x8

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :catch_1
    move-exception p1

    .line 110
    move-object v1, v9

    .line 111
    goto :goto_3

    .line 112
    :cond_1
    :goto_2
    iget-object v3, p1, Landroidx/media3/exoplayer/mediacodec/t$a;->b:Landroid/media/MediaFormat;

    .line 113
    .line 114
    iget-object p1, p1, Landroidx/media3/exoplayer/mediacodec/t$a;->e:Landroid/media/MediaCrypto;

    .line 115
    .line 116
    invoke-static {v9, v3, v1, p1, v2}, Landroidx/media3/exoplayer/mediacodec/c;->q(Landroidx/media3/exoplayer/mediacodec/c;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 117
    .line 118
    .line 119
    return-object v9

    .line 120
    :catch_2
    move-exception p1

    .line 121
    move-object v0, v1

    .line 122
    :goto_3
    if-nez v1, :cond_2

    .line 123
    .line 124
    if-eqz v0, :cond_3

    .line 125
    .line 126
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 127
    .line 128
    .line 129
    goto :goto_4

    .line 130
    :cond_2
    invoke-virtual {v1}, Landroidx/media3/exoplayer/mediacodec/c;->release()V

    .line 131
    .line 132
    .line 133
    :cond_3
    :goto_4
    throw p1
.end method

.method public e(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/c$b;->d:Z

    .line 2
    .line 3
    return-void
.end method
