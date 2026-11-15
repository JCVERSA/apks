.class public Landroidx/media3/exoplayer/video/j;
.super Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;
.source "source.java"

# interfaces
.implements Landroidx/media3/exoplayer/video/u$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/video/j$d;,
        Landroidx/media3/exoplayer/video/j$c;,
        Landroidx/media3/exoplayer/video/j$f;,
        Landroidx/media3/exoplayer/video/j$e;
    }
.end annotation


# static fields
.field private static final L1:[I

.field private static M1:Z

.field private static N1:Z


# instance fields
.field private A1:Landroidx/media3/common/m0;

.field private B1:I

.field private C1:Z

.field private D1:I

.field E1:Landroidx/media3/exoplayer/video/j$f;

.field private final F0:Landroid/content/Context;

.field private F1:Landroidx/media3/exoplayer/video/t;

.field private final G0:Z

.field private G1:J

.field private final H0:Landroidx/media3/exoplayer/video/i0$a;

.field private H1:J

.field private final I0:I

.field private I1:Z

.field private final J0:Z

.field private J1:Z

.field private final K0:Landroidx/media3/exoplayer/video/u;

.field private K1:I

.field private final L0:Landroidx/media3/exoplayer/video/u$a;

.field private final M0:Landroidx/media3/exoplayer/video/a;

.field private final N0:J

.field private final O0:Ljava/util/PriorityQueue;

.field private P0:Landroidx/media3/exoplayer/video/j$e;

.field private Q0:Z

.field private R0:Z

.field private S0:Landroidx/media3/exoplayer/video/VideoSink;

.field private T0:Z

.field private U0:Ljava/util/List;

.field private V0:Landroid/view/Surface;

.field private W0:Landroidx/media3/exoplayer/video/PlaceholderSurface;

.field private X0:Landroidx/media3/common/util/l0;

.field private p1:Z

.field private q1:I

.field private r1:I

.field private s1:J

.field private t1:I

.field private u1:I

.field private v1:I

.field private w1:J

.field private x1:I

.field private y1:J

.field private z1:Landroidx/media3/common/m0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/media3/exoplayer/video/j;->L1:[I

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        0x780
        0x640
        0x5a0
        0x500
        0x3c0
        0x356
        0x280
        0x21c
        0x1e0
    .end array-data
.end method

.method protected constructor <init>(Landroidx/media3/exoplayer/video/j$d;)V
    .locals 6

    .line 1
    invoke-static {p1}, Landroidx/media3/exoplayer/video/j$d;->a(Landroidx/media3/exoplayer/video/j$d;)Landroidx/media3/exoplayer/mediacodec/t$b;

    .line 2
    .line 3
    .line 4
    move-result-object v2

    .line 5
    invoke-static {p1}, Landroidx/media3/exoplayer/video/j$d;->b(Landroidx/media3/exoplayer/video/j$d;)Landroidx/media3/exoplayer/mediacodec/h0;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    invoke-static {p1}, Landroidx/media3/exoplayer/video/j$d;->e(Landroidx/media3/exoplayer/video/j$d;)Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    invoke-static {p1}, Landroidx/media3/exoplayer/video/j$d;->f(Landroidx/media3/exoplayer/video/j$d;)F

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    const/4 v1, 0x2

    .line 18
    move-object v0, p0

    .line 19
    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;-><init>(ILandroidx/media3/exoplayer/mediacodec/t$b;Landroidx/media3/exoplayer/mediacodec/h0;ZF)V

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Landroidx/media3/exoplayer/video/j$d;->g(Landroidx/media3/exoplayer/video/j$d;)Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Landroidx/media3/exoplayer/video/j;->F0:Landroid/content/Context;

    .line 31
    .line 32
    invoke-static {p1}, Landroidx/media3/exoplayer/video/j$d;->h(Landroidx/media3/exoplayer/video/j$d;)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    iput v1, p0, Landroidx/media3/exoplayer/video/j;->I0:I

    .line 37
    .line 38
    invoke-static {p1}, Landroidx/media3/exoplayer/video/j$d;->i(Landroidx/media3/exoplayer/video/j$d;)Landroidx/media3/exoplayer/video/VideoSink;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iput-object v1, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    .line 43
    .line 44
    new-instance v1, Landroidx/media3/exoplayer/video/i0$a;

    .line 45
    .line 46
    invoke-static {p1}, Landroidx/media3/exoplayer/video/j$d;->j(Landroidx/media3/exoplayer/video/j$d;)Landroid/os/Handler;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-static {p1}, Landroidx/media3/exoplayer/video/j$d;->k(Landroidx/media3/exoplayer/video/j$d;)Landroidx/media3/exoplayer/video/i0;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-direct {v1, v2, v3}, Landroidx/media3/exoplayer/video/i0$a;-><init>(Landroid/os/Handler;Landroidx/media3/exoplayer/video/i0;)V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Landroidx/media3/exoplayer/video/j;->H0:Landroidx/media3/exoplayer/video/i0$a;

    .line 58
    .line 59
    iget-object v1, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    .line 60
    .line 61
    const/4 v2, 0x1

    .line 62
    const/4 v3, 0x0

    .line 63
    if-nez v1, :cond_0

    .line 64
    .line 65
    move v1, v2

    .line 66
    goto :goto_0

    .line 67
    :cond_0
    move v1, v3

    .line 68
    :goto_0
    iput-boolean v1, p0, Landroidx/media3/exoplayer/video/j;->G0:Z

    .line 69
    .line 70
    new-instance v1, Landroidx/media3/exoplayer/video/u;

    .line 71
    .line 72
    invoke-static {p1}, Landroidx/media3/exoplayer/video/j$d;->l(Landroidx/media3/exoplayer/video/j$d;)J

    .line 73
    .line 74
    .line 75
    move-result-wide v4

    .line 76
    invoke-direct {v1, v0, p0, v4, v5}, Landroidx/media3/exoplayer/video/u;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/video/u$b;J)V

    .line 77
    .line 78
    .line 79
    iput-object v1, p0, Landroidx/media3/exoplayer/video/j;->K0:Landroidx/media3/exoplayer/video/u;

    .line 80
    .line 81
    new-instance v0, Landroidx/media3/exoplayer/video/u$a;

    .line 82
    .line 83
    invoke-direct {v0}, Landroidx/media3/exoplayer/video/u$a;-><init>()V

    .line 84
    .line 85
    .line 86
    iput-object v0, p0, Landroidx/media3/exoplayer/video/j;->L0:Landroidx/media3/exoplayer/video/u$a;

    .line 87
    .line 88
    invoke-static {}, Landroidx/media3/exoplayer/video/j;->G1()Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/j;->J0:Z

    .line 93
    .line 94
    sget-object v0, Landroidx/media3/common/util/l0;->c:Landroidx/media3/common/util/l0;

    .line 95
    .line 96
    iput-object v0, p0, Landroidx/media3/exoplayer/video/j;->X0:Landroidx/media3/common/util/l0;

    .line 97
    .line 98
    iput v2, p0, Landroidx/media3/exoplayer/video/j;->q1:I

    .line 99
    .line 100
    iput v3, p0, Landroidx/media3/exoplayer/video/j;->r1:I

    .line 101
    .line 102
    sget-object v0, Landroidx/media3/common/m0;->e:Landroidx/media3/common/m0;

    .line 103
    .line 104
    iput-object v0, p0, Landroidx/media3/exoplayer/video/j;->z1:Landroidx/media3/common/m0;

    .line 105
    .line 106
    iput v3, p0, Landroidx/media3/exoplayer/video/j;->D1:I

    .line 107
    .line 108
    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Landroidx/media3/exoplayer/video/j;->A1:Landroidx/media3/common/m0;

    .line 110
    .line 111
    const/16 v1, -0x3e8

    .line 112
    .line 113
    iput v1, p0, Landroidx/media3/exoplayer/video/j;->B1:I

    .line 114
    .line 115
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    iput-wide v1, p0, Landroidx/media3/exoplayer/video/j;->G1:J

    .line 121
    .line 122
    iput-wide v1, p0, Landroidx/media3/exoplayer/video/j;->H1:J

    .line 123
    .line 124
    invoke-static {p1}, Landroidx/media3/exoplayer/video/j$d;->c(Landroidx/media3/exoplayer/video/j$d;)Z

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    if-eqz v3, :cond_1

    .line 129
    .line 130
    new-instance v0, Landroidx/media3/exoplayer/video/a;

    .line 131
    .line 132
    invoke-direct {v0}, Landroidx/media3/exoplayer/video/a;-><init>()V

    .line 133
    .line 134
    .line 135
    :cond_1
    iput-object v0, p0, Landroidx/media3/exoplayer/video/j;->M0:Landroidx/media3/exoplayer/video/a;

    .line 136
    .line 137
    new-instance v0, Ljava/util/PriorityQueue;

    .line 138
    .line 139
    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    .line 140
    .line 141
    .line 142
    iput-object v0, p0, Landroidx/media3/exoplayer/video/j;->O0:Ljava/util/PriorityQueue;

    .line 143
    .line 144
    invoke-static {p1}, Landroidx/media3/exoplayer/video/j$d;->d(Landroidx/media3/exoplayer/video/j$d;)J

    .line 145
    .line 146
    .line 147
    move-result-wide v3

    .line 148
    cmp-long v0, v3, v1

    .line 149
    .line 150
    if-eqz v0, :cond_2

    .line 151
    .line 152
    invoke-static {p1}, Landroidx/media3/exoplayer/video/j$d;->d(Landroidx/media3/exoplayer/video/j$d;)J

    .line 153
    .line 154
    .line 155
    move-result-wide v0

    .line 156
    neg-long v1, v0

    .line 157
    :cond_2
    iput-wide v1, p0, Landroidx/media3/exoplayer/video/j;->N0:J

    .line 158
    .line 159
    return-void
.end method

.method static synthetic A1(Landroidx/media3/exoplayer/video/j;)Landroidx/media3/exoplayer/mediacodec/t;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->l0()Landroidx/media3/exoplayer/mediacodec/t;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic B1(Landroidx/media3/exoplayer/video/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/j;->h2()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private B2(J)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/video/j;->O0:Ljava/util/PriorityQueue;

    .line 4
    .line 5
    invoke-virtual {v2}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    check-cast v2, Ljava/lang/Long;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    cmp-long v2, v2, p1

    .line 18
    .line 19
    if-gez v2, :cond_0

    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    iget-object v2, p0, Landroidx/media3/exoplayer/video/j;->O0:Ljava/util/PriorityQueue;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0, v1, v0}, Landroidx/media3/exoplayer/video/j;->A2(II)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method static synthetic C1(Landroidx/media3/exoplayer/video/j;Landroidx/media3/exoplayer/ExoPlaybackException;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->k1(Landroidx/media3/exoplayer/ExoPlaybackException;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private C2(Landroidx/media3/exoplayer/source/r$b;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->A()Landroidx/media3/common/e0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/media3/common/e0;->q()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/j;->H1:J

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Landroidx/media3/exoplayer/source/r$b;

    .line 24
    .line 25
    iget-object p1, p1, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 26
    .line 27
    new-instance v1, Landroidx/media3/common/e0$b;

    .line 28
    .line 29
    invoke-direct {v1}, Landroidx/media3/common/e0$b;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1, v1}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Landroidx/media3/common/e0$b;->k()J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/j;->H1:J

    .line 41
    .line 42
    return-void
.end method

.method private static G1()Z
    .locals 2

    .line 1
    const-string v0, "NVIDIA"

    .line 2
    .line 3
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method private static I1()Z
    .locals 16

    .line 1
    const/16 v0, 0x1a

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    const/16 v2, 0x1b

    .line 6
    .line 7
    const/4 v3, 0x7

    .line 8
    const/4 v4, 0x6

    .line 9
    const/4 v5, 0x5

    .line 10
    const/4 v6, 0x4

    .line 11
    const/4 v7, 0x3

    .line 12
    const/4 v8, 0x2

    .line 13
    const/4 v9, -0x1

    .line 14
    const/4 v10, 0x0

    .line 15
    sget v11, Landroidx/media3/common/util/a1;->a:I

    .line 16
    .line 17
    const/16 v12, 0x1c

    .line 18
    .line 19
    const/4 v13, 0x1

    .line 20
    if-gt v11, v12, :cond_8

    .line 21
    .line 22
    sget-object v14, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    .line 25
    .line 26
    .line 27
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    .line 28
    .line 29
    .line 30
    move-result v15

    .line 31
    sparse-switch v15, :sswitch_data_0

    .line 32
    .line 33
    .line 34
    :goto_0
    move v14, v9

    .line 35
    goto/16 :goto_1

    .line 36
    .line 37
    :sswitch_0
    const-string v15, "machuca"

    .line 38
    .line 39
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v14

    .line 43
    if-nez v14, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move v14, v3

    .line 47
    goto :goto_1

    .line 48
    :sswitch_1
    const-string v15, "once"

    .line 49
    .line 50
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v14

    .line 54
    if-nez v14, :cond_1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    move v14, v4

    .line 58
    goto :goto_1

    .line 59
    :sswitch_2
    const-string v15, "magnolia"

    .line 60
    .line 61
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v14

    .line 65
    if-nez v14, :cond_2

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    move v14, v5

    .line 69
    goto :goto_1

    .line 70
    :sswitch_3
    const-string v15, "aquaman"

    .line 71
    .line 72
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v14

    .line 76
    if-nez v14, :cond_3

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    move v14, v6

    .line 80
    goto :goto_1

    .line 81
    :sswitch_4
    const-string v15, "oneday"

    .line 82
    .line 83
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v14

    .line 87
    if-nez v14, :cond_4

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    move v14, v7

    .line 91
    goto :goto_1

    .line 92
    :sswitch_5
    const-string v15, "dangalUHD"

    .line 93
    .line 94
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v14

    .line 98
    if-nez v14, :cond_5

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_5
    move v14, v8

    .line 102
    goto :goto_1

    .line 103
    :sswitch_6
    const-string v15, "dangalFHD"

    .line 104
    .line 105
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v14

    .line 109
    if-nez v14, :cond_6

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_6
    move v14, v13

    .line 113
    goto :goto_1

    .line 114
    :sswitch_7
    const-string v15, "dangal"

    .line 115
    .line 116
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v14

    .line 120
    if-nez v14, :cond_7

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_7
    move v14, v10

    .line 124
    :goto_1
    packed-switch v14, :pswitch_data_0

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :pswitch_0
    return v13

    .line 129
    :cond_8
    :goto_2
    if-gt v11, v2, :cond_9

    .line 130
    .line 131
    const-string v14, "HWEML"

    .line 132
    .line 133
    sget-object v15, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v14

    .line 139
    if-eqz v14, :cond_9

    .line 140
    .line 141
    return v13

    .line 142
    :cond_9
    sget-object v14, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    .line 145
    .line 146
    .line 147
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    .line 148
    .line 149
    .line 150
    move-result v15

    .line 151
    sparse-switch v15, :sswitch_data_1

    .line 152
    .line 153
    .line 154
    :goto_3
    move v15, v9

    .line 155
    goto/16 :goto_4

    .line 156
    .line 157
    :sswitch_8
    const-string v15, "AFTEUFF014"

    .line 158
    .line 159
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v15

    .line 163
    if-nez v15, :cond_a

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_a
    move v15, v1

    .line 167
    goto/16 :goto_4

    .line 168
    .line 169
    :sswitch_9
    const-string v15, "AFTSO001"

    .line 170
    .line 171
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v15

    .line 175
    if-nez v15, :cond_b

    .line 176
    .line 177
    goto :goto_3

    .line 178
    :cond_b
    move v15, v3

    .line 179
    goto :goto_4

    .line 180
    :sswitch_a
    const-string v15, "AFTEU014"

    .line 181
    .line 182
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v15

    .line 186
    if-nez v15, :cond_c

    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_c
    move v15, v4

    .line 190
    goto :goto_4

    .line 191
    :sswitch_b
    const-string v15, "AFTEU011"

    .line 192
    .line 193
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v15

    .line 197
    if-nez v15, :cond_d

    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_d
    move v15, v5

    .line 201
    goto :goto_4

    .line 202
    :sswitch_c
    const-string v15, "AFTR"

    .line 203
    .line 204
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v15

    .line 208
    if-nez v15, :cond_e

    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_e
    move v15, v6

    .line 212
    goto :goto_4

    .line 213
    :sswitch_d
    const-string v15, "AFTN"

    .line 214
    .line 215
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v15

    .line 219
    if-nez v15, :cond_f

    .line 220
    .line 221
    goto :goto_3

    .line 222
    :cond_f
    move v15, v7

    .line 223
    goto :goto_4

    .line 224
    :sswitch_e
    const-string v15, "AFTA"

    .line 225
    .line 226
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v15

    .line 230
    if-nez v15, :cond_10

    .line 231
    .line 232
    goto :goto_3

    .line 233
    :cond_10
    move v15, v8

    .line 234
    goto :goto_4

    .line 235
    :sswitch_f
    const-string v15, "AFTKMST12"

    .line 236
    .line 237
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v15

    .line 241
    if-nez v15, :cond_11

    .line 242
    .line 243
    goto :goto_3

    .line 244
    :cond_11
    move v15, v13

    .line 245
    goto :goto_4

    .line 246
    :sswitch_10
    const-string v15, "AFTJMST12"

    .line 247
    .line 248
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v15

    .line 252
    if-nez v15, :cond_12

    .line 253
    .line 254
    goto :goto_3

    .line 255
    :cond_12
    move v15, v10

    .line 256
    :goto_4
    packed-switch v15, :pswitch_data_1

    .line 257
    .line 258
    .line 259
    if-gt v11, v0, :cond_a0

    .line 260
    .line 261
    sget-object v11, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 262
    .line 263
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    .line 264
    .line 265
    .line 266
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    .line 267
    .line 268
    .line 269
    move-result v15

    .line 270
    sparse-switch v15, :sswitch_data_2

    .line 271
    .line 272
    .line 273
    :goto_5
    move v0, v9

    .line 274
    goto/16 :goto_6

    .line 275
    .line 276
    :sswitch_11
    const-string v0, "HWWAS-H"

    .line 277
    .line 278
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    if-nez v0, :cond_13

    .line 283
    .line 284
    goto :goto_5

    .line 285
    :cond_13
    const/16 v0, 0x8b

    .line 286
    .line 287
    goto/16 :goto_6

    .line 288
    .line 289
    :sswitch_12
    const-string v0, "HWVNS-H"

    .line 290
    .line 291
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    if-nez v0, :cond_14

    .line 296
    .line 297
    goto :goto_5

    .line 298
    :cond_14
    const/16 v0, 0x8a

    .line 299
    .line 300
    goto/16 :goto_6

    .line 301
    .line 302
    :sswitch_13
    const-string v0, "ELUGA_Prim"

    .line 303
    .line 304
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    move-result v0

    .line 308
    if-nez v0, :cond_15

    .line 309
    .line 310
    goto :goto_5

    .line 311
    :cond_15
    const/16 v0, 0x89

    .line 312
    .line 313
    goto/16 :goto_6

    .line 314
    .line 315
    :sswitch_14
    const-string v0, "ELUGA_Note"

    .line 316
    .line 317
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    move-result v0

    .line 321
    if-nez v0, :cond_16

    .line 322
    .line 323
    goto :goto_5

    .line 324
    :cond_16
    const/16 v0, 0x88

    .line 325
    .line 326
    goto/16 :goto_6

    .line 327
    .line 328
    :sswitch_15
    const-string v0, "ASUS_X00AD_2"

    .line 329
    .line 330
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    move-result v0

    .line 334
    if-nez v0, :cond_17

    .line 335
    .line 336
    goto :goto_5

    .line 337
    :cond_17
    const/16 v0, 0x87

    .line 338
    .line 339
    goto/16 :goto_6

    .line 340
    .line 341
    :sswitch_16
    const-string v0, "HWCAM-H"

    .line 342
    .line 343
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    move-result v0

    .line 347
    if-nez v0, :cond_18

    .line 348
    .line 349
    goto :goto_5

    .line 350
    :cond_18
    const/16 v0, 0x86

    .line 351
    .line 352
    goto/16 :goto_6

    .line 353
    .line 354
    :sswitch_17
    const-string v0, "HWBLN-H"

    .line 355
    .line 356
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    move-result v0

    .line 360
    if-nez v0, :cond_19

    .line 361
    .line 362
    goto :goto_5

    .line 363
    :cond_19
    const/16 v0, 0x85

    .line 364
    .line 365
    goto/16 :goto_6

    .line 366
    .line 367
    :sswitch_18
    const-string v0, "DM-01K"

    .line 368
    .line 369
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 370
    .line 371
    .line 372
    move-result v0

    .line 373
    if-nez v0, :cond_1a

    .line 374
    .line 375
    goto :goto_5

    .line 376
    :cond_1a
    const/16 v0, 0x84

    .line 377
    .line 378
    goto/16 :goto_6

    .line 379
    .line 380
    :sswitch_19
    const-string v0, "BRAVIA_ATV3_4K"

    .line 381
    .line 382
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 383
    .line 384
    .line 385
    move-result v0

    .line 386
    if-nez v0, :cond_1b

    .line 387
    .line 388
    goto :goto_5

    .line 389
    :cond_1b
    const/16 v0, 0x83

    .line 390
    .line 391
    goto/16 :goto_6

    .line 392
    .line 393
    :sswitch_1a
    const-string v0, "Infinix-X572"

    .line 394
    .line 395
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    move-result v0

    .line 399
    if-nez v0, :cond_1c

    .line 400
    .line 401
    goto/16 :goto_5

    .line 402
    .line 403
    :cond_1c
    const/16 v0, 0x82

    .line 404
    .line 405
    goto/16 :goto_6

    .line 406
    .line 407
    :sswitch_1b
    const-string v0, "PB2-670M"

    .line 408
    .line 409
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 410
    .line 411
    .line 412
    move-result v0

    .line 413
    if-nez v0, :cond_1d

    .line 414
    .line 415
    goto/16 :goto_5

    .line 416
    .line 417
    :cond_1d
    const/16 v0, 0x81

    .line 418
    .line 419
    goto/16 :goto_6

    .line 420
    .line 421
    :sswitch_1c
    const-string v0, "santoni"

    .line 422
    .line 423
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 424
    .line 425
    .line 426
    move-result v0

    .line 427
    if-nez v0, :cond_1e

    .line 428
    .line 429
    goto/16 :goto_5

    .line 430
    .line 431
    :cond_1e
    const/16 v0, 0x80

    .line 432
    .line 433
    goto/16 :goto_6

    .line 434
    .line 435
    :sswitch_1d
    const-string v0, "iball8735_9806"

    .line 436
    .line 437
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 438
    .line 439
    .line 440
    move-result v0

    .line 441
    if-nez v0, :cond_1f

    .line 442
    .line 443
    goto/16 :goto_5

    .line 444
    .line 445
    :cond_1f
    const/16 v0, 0x7f

    .line 446
    .line 447
    goto/16 :goto_6

    .line 448
    .line 449
    :sswitch_1e
    const-string v0, "CPH1715"

    .line 450
    .line 451
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 452
    .line 453
    .line 454
    move-result v0

    .line 455
    if-nez v0, :cond_20

    .line 456
    .line 457
    goto/16 :goto_5

    .line 458
    .line 459
    :cond_20
    const/16 v0, 0x7e

    .line 460
    .line 461
    goto/16 :goto_6

    .line 462
    .line 463
    :sswitch_1f
    const-string v0, "CPH1609"

    .line 464
    .line 465
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 466
    .line 467
    .line 468
    move-result v0

    .line 469
    if-nez v0, :cond_21

    .line 470
    .line 471
    goto/16 :goto_5

    .line 472
    .line 473
    :cond_21
    const/16 v0, 0x7d

    .line 474
    .line 475
    goto/16 :goto_6

    .line 476
    .line 477
    :sswitch_20
    const-string v0, "woods_f"

    .line 478
    .line 479
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 480
    .line 481
    .line 482
    move-result v0

    .line 483
    if-nez v0, :cond_22

    .line 484
    .line 485
    goto/16 :goto_5

    .line 486
    .line 487
    :cond_22
    const/16 v0, 0x7c

    .line 488
    .line 489
    goto/16 :goto_6

    .line 490
    .line 491
    :sswitch_21
    const-string v0, "htc_e56ml_dtul"

    .line 492
    .line 493
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 494
    .line 495
    .line 496
    move-result v0

    .line 497
    if-nez v0, :cond_23

    .line 498
    .line 499
    goto/16 :goto_5

    .line 500
    .line 501
    :cond_23
    const/16 v0, 0x7b

    .line 502
    .line 503
    goto/16 :goto_6

    .line 504
    .line 505
    :sswitch_22
    const-string v0, "EverStar_S"

    .line 506
    .line 507
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 508
    .line 509
    .line 510
    move-result v0

    .line 511
    if-nez v0, :cond_24

    .line 512
    .line 513
    goto/16 :goto_5

    .line 514
    .line 515
    :cond_24
    const/16 v0, 0x7a

    .line 516
    .line 517
    goto/16 :goto_6

    .line 518
    .line 519
    :sswitch_23
    const-string v0, "hwALE-H"

    .line 520
    .line 521
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 522
    .line 523
    .line 524
    move-result v0

    .line 525
    if-nez v0, :cond_25

    .line 526
    .line 527
    goto/16 :goto_5

    .line 528
    .line 529
    :cond_25
    const/16 v0, 0x79

    .line 530
    .line 531
    goto/16 :goto_6

    .line 532
    .line 533
    :sswitch_24
    const-string v0, "itel_S41"

    .line 534
    .line 535
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 536
    .line 537
    .line 538
    move-result v0

    .line 539
    if-nez v0, :cond_26

    .line 540
    .line 541
    goto/16 :goto_5

    .line 542
    .line 543
    :cond_26
    const/16 v0, 0x78

    .line 544
    .line 545
    goto/16 :goto_6

    .line 546
    .line 547
    :sswitch_25
    const-string v0, "LS-5017"

    .line 548
    .line 549
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 550
    .line 551
    .line 552
    move-result v0

    .line 553
    if-nez v0, :cond_27

    .line 554
    .line 555
    goto/16 :goto_5

    .line 556
    .line 557
    :cond_27
    const/16 v0, 0x77

    .line 558
    .line 559
    goto/16 :goto_6

    .line 560
    .line 561
    :sswitch_26
    const-string v0, "panell_d"

    .line 562
    .line 563
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 564
    .line 565
    .line 566
    move-result v0

    .line 567
    if-nez v0, :cond_28

    .line 568
    .line 569
    goto/16 :goto_5

    .line 570
    .line 571
    :cond_28
    const/16 v0, 0x76

    .line 572
    .line 573
    goto/16 :goto_6

    .line 574
    .line 575
    :sswitch_27
    const-string v0, "j2xlteins"

    .line 576
    .line 577
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 578
    .line 579
    .line 580
    move-result v0

    .line 581
    if-nez v0, :cond_29

    .line 582
    .line 583
    goto/16 :goto_5

    .line 584
    .line 585
    :cond_29
    const/16 v0, 0x75

    .line 586
    .line 587
    goto/16 :goto_6

    .line 588
    .line 589
    :sswitch_28
    const-string v0, "A7000plus"

    .line 590
    .line 591
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 592
    .line 593
    .line 594
    move-result v0

    .line 595
    if-nez v0, :cond_2a

    .line 596
    .line 597
    goto/16 :goto_5

    .line 598
    .line 599
    :cond_2a
    const/16 v0, 0x74

    .line 600
    .line 601
    goto/16 :goto_6

    .line 602
    .line 603
    :sswitch_29
    const-string v0, "manning"

    .line 604
    .line 605
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 606
    .line 607
    .line 608
    move-result v0

    .line 609
    if-nez v0, :cond_2b

    .line 610
    .line 611
    goto/16 :goto_5

    .line 612
    .line 613
    :cond_2b
    const/16 v0, 0x73

    .line 614
    .line 615
    goto/16 :goto_6

    .line 616
    .line 617
    :sswitch_2a
    const-string v0, "GIONEE_WBL7519"

    .line 618
    .line 619
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 620
    .line 621
    .line 622
    move-result v0

    .line 623
    if-nez v0, :cond_2c

    .line 624
    .line 625
    goto/16 :goto_5

    .line 626
    .line 627
    :cond_2c
    const/16 v0, 0x72

    .line 628
    .line 629
    goto/16 :goto_6

    .line 630
    .line 631
    :sswitch_2b
    const-string v0, "GIONEE_WBL7365"

    .line 632
    .line 633
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 634
    .line 635
    .line 636
    move-result v0

    .line 637
    if-nez v0, :cond_2d

    .line 638
    .line 639
    goto/16 :goto_5

    .line 640
    .line 641
    :cond_2d
    const/16 v0, 0x71

    .line 642
    .line 643
    goto/16 :goto_6

    .line 644
    .line 645
    :sswitch_2c
    const-string v0, "GIONEE_WBL5708"

    .line 646
    .line 647
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 648
    .line 649
    .line 650
    move-result v0

    .line 651
    if-nez v0, :cond_2e

    .line 652
    .line 653
    goto/16 :goto_5

    .line 654
    .line 655
    :cond_2e
    const/16 v0, 0x70

    .line 656
    .line 657
    goto/16 :goto_6

    .line 658
    .line 659
    :sswitch_2d
    const-string v0, "QM16XE_U"

    .line 660
    .line 661
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 662
    .line 663
    .line 664
    move-result v0

    .line 665
    if-nez v0, :cond_2f

    .line 666
    .line 667
    goto/16 :goto_5

    .line 668
    .line 669
    :cond_2f
    const/16 v0, 0x6f

    .line 670
    .line 671
    goto/16 :goto_6

    .line 672
    .line 673
    :sswitch_2e
    const-string v0, "Pixi5-10_4G"

    .line 674
    .line 675
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 676
    .line 677
    .line 678
    move-result v0

    .line 679
    if-nez v0, :cond_30

    .line 680
    .line 681
    goto/16 :goto_5

    .line 682
    .line 683
    :cond_30
    const/16 v0, 0x6e

    .line 684
    .line 685
    goto/16 :goto_6

    .line 686
    .line 687
    :sswitch_2f
    const-string v0, "TB3-850M"

    .line 688
    .line 689
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 690
    .line 691
    .line 692
    move-result v0

    .line 693
    if-nez v0, :cond_31

    .line 694
    .line 695
    goto/16 :goto_5

    .line 696
    .line 697
    :cond_31
    const/16 v0, 0x6d

    .line 698
    .line 699
    goto/16 :goto_6

    .line 700
    .line 701
    :sswitch_30
    const-string v0, "TB3-850F"

    .line 702
    .line 703
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 704
    .line 705
    .line 706
    move-result v0

    .line 707
    if-nez v0, :cond_32

    .line 708
    .line 709
    goto/16 :goto_5

    .line 710
    .line 711
    :cond_32
    const/16 v0, 0x6c

    .line 712
    .line 713
    goto/16 :goto_6

    .line 714
    .line 715
    :sswitch_31
    const-string v0, "TB3-730X"

    .line 716
    .line 717
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 718
    .line 719
    .line 720
    move-result v0

    .line 721
    if-nez v0, :cond_33

    .line 722
    .line 723
    goto/16 :goto_5

    .line 724
    .line 725
    :cond_33
    const/16 v0, 0x6b

    .line 726
    .line 727
    goto/16 :goto_6

    .line 728
    .line 729
    :sswitch_32
    const-string v0, "TB3-730F"

    .line 730
    .line 731
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 732
    .line 733
    .line 734
    move-result v0

    .line 735
    if-nez v0, :cond_34

    .line 736
    .line 737
    goto/16 :goto_5

    .line 738
    .line 739
    :cond_34
    const/16 v0, 0x6a

    .line 740
    .line 741
    goto/16 :goto_6

    .line 742
    .line 743
    :sswitch_33
    const-string v0, "A7020a48"

    .line 744
    .line 745
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 746
    .line 747
    .line 748
    move-result v0

    .line 749
    if-nez v0, :cond_35

    .line 750
    .line 751
    goto/16 :goto_5

    .line 752
    .line 753
    :cond_35
    const/16 v0, 0x69

    .line 754
    .line 755
    goto/16 :goto_6

    .line 756
    .line 757
    :sswitch_34
    const-string v0, "A7010a48"

    .line 758
    .line 759
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 760
    .line 761
    .line 762
    move-result v0

    .line 763
    if-nez v0, :cond_36

    .line 764
    .line 765
    goto/16 :goto_5

    .line 766
    .line 767
    :cond_36
    const/16 v0, 0x68

    .line 768
    .line 769
    goto/16 :goto_6

    .line 770
    .line 771
    :sswitch_35
    const-string v0, "griffin"

    .line 772
    .line 773
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 774
    .line 775
    .line 776
    move-result v0

    .line 777
    if-nez v0, :cond_37

    .line 778
    .line 779
    goto/16 :goto_5

    .line 780
    .line 781
    :cond_37
    const/16 v0, 0x67

    .line 782
    .line 783
    goto/16 :goto_6

    .line 784
    .line 785
    :sswitch_36
    const-string v0, "marino_f"

    .line 786
    .line 787
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 788
    .line 789
    .line 790
    move-result v0

    .line 791
    if-nez v0, :cond_38

    .line 792
    .line 793
    goto/16 :goto_5

    .line 794
    .line 795
    :cond_38
    const/16 v0, 0x66

    .line 796
    .line 797
    goto/16 :goto_6

    .line 798
    .line 799
    :sswitch_37
    const-string v0, "CPY83_I00"

    .line 800
    .line 801
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 802
    .line 803
    .line 804
    move-result v0

    .line 805
    if-nez v0, :cond_39

    .line 806
    .line 807
    goto/16 :goto_5

    .line 808
    .line 809
    :cond_39
    const/16 v0, 0x65

    .line 810
    .line 811
    goto/16 :goto_6

    .line 812
    .line 813
    :sswitch_38
    const-string v0, "A2016a40"

    .line 814
    .line 815
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 816
    .line 817
    .line 818
    move-result v0

    .line 819
    if-nez v0, :cond_3a

    .line 820
    .line 821
    goto/16 :goto_5

    .line 822
    .line 823
    :cond_3a
    const/16 v0, 0x64

    .line 824
    .line 825
    goto/16 :goto_6

    .line 826
    .line 827
    :sswitch_39
    const-string v0, "le_x6"

    .line 828
    .line 829
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 830
    .line 831
    .line 832
    move-result v0

    .line 833
    if-nez v0, :cond_3b

    .line 834
    .line 835
    goto/16 :goto_5

    .line 836
    .line 837
    :cond_3b
    const/16 v0, 0x63

    .line 838
    .line 839
    goto/16 :goto_6

    .line 840
    .line 841
    :sswitch_3a
    const-string v0, "l5460"

    .line 842
    .line 843
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 844
    .line 845
    .line 846
    move-result v0

    .line 847
    if-nez v0, :cond_3c

    .line 848
    .line 849
    goto/16 :goto_5

    .line 850
    .line 851
    :cond_3c
    const/16 v0, 0x62

    .line 852
    .line 853
    goto/16 :goto_6

    .line 854
    .line 855
    :sswitch_3b
    const-string v0, "i9031"

    .line 856
    .line 857
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 858
    .line 859
    .line 860
    move-result v0

    .line 861
    if-nez v0, :cond_3d

    .line 862
    .line 863
    goto/16 :goto_5

    .line 864
    .line 865
    :cond_3d
    const/16 v0, 0x61

    .line 866
    .line 867
    goto/16 :goto_6

    .line 868
    .line 869
    :sswitch_3c
    const-string v0, "X3_HK"

    .line 870
    .line 871
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 872
    .line 873
    .line 874
    move-result v0

    .line 875
    if-nez v0, :cond_3e

    .line 876
    .line 877
    goto/16 :goto_5

    .line 878
    .line 879
    :cond_3e
    const/16 v0, 0x60

    .line 880
    .line 881
    goto/16 :goto_6

    .line 882
    .line 883
    :sswitch_3d
    const-string v0, "V23GB"

    .line 884
    .line 885
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 886
    .line 887
    .line 888
    move-result v0

    .line 889
    if-nez v0, :cond_3f

    .line 890
    .line 891
    goto/16 :goto_5

    .line 892
    .line 893
    :cond_3f
    const/16 v0, 0x5f

    .line 894
    .line 895
    goto/16 :goto_6

    .line 896
    .line 897
    :sswitch_3e
    const-string v0, "Q4310"

    .line 898
    .line 899
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 900
    .line 901
    .line 902
    move-result v0

    .line 903
    if-nez v0, :cond_40

    .line 904
    .line 905
    goto/16 :goto_5

    .line 906
    .line 907
    :cond_40
    const/16 v0, 0x5e

    .line 908
    .line 909
    goto/16 :goto_6

    .line 910
    .line 911
    :sswitch_3f
    const-string v0, "Q4260"

    .line 912
    .line 913
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 914
    .line 915
    .line 916
    move-result v0

    .line 917
    if-nez v0, :cond_41

    .line 918
    .line 919
    goto/16 :goto_5

    .line 920
    .line 921
    :cond_41
    const/16 v0, 0x5d

    .line 922
    .line 923
    goto/16 :goto_6

    .line 924
    .line 925
    :sswitch_40
    const-string v0, "PRO7S"

    .line 926
    .line 927
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 928
    .line 929
    .line 930
    move-result v0

    .line 931
    if-nez v0, :cond_42

    .line 932
    .line 933
    goto/16 :goto_5

    .line 934
    .line 935
    :cond_42
    const/16 v0, 0x5c

    .line 936
    .line 937
    goto/16 :goto_6

    .line 938
    .line 939
    :sswitch_41
    const-string v0, "F3311"

    .line 940
    .line 941
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 942
    .line 943
    .line 944
    move-result v0

    .line 945
    if-nez v0, :cond_43

    .line 946
    .line 947
    goto/16 :goto_5

    .line 948
    .line 949
    :cond_43
    const/16 v0, 0x5b

    .line 950
    .line 951
    goto/16 :goto_6

    .line 952
    .line 953
    :sswitch_42
    const-string v0, "F3215"

    .line 954
    .line 955
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 956
    .line 957
    .line 958
    move-result v0

    .line 959
    if-nez v0, :cond_44

    .line 960
    .line 961
    goto/16 :goto_5

    .line 962
    .line 963
    :cond_44
    const/16 v0, 0x5a

    .line 964
    .line 965
    goto/16 :goto_6

    .line 966
    .line 967
    :sswitch_43
    const-string v0, "F3213"

    .line 968
    .line 969
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 970
    .line 971
    .line 972
    move-result v0

    .line 973
    if-nez v0, :cond_45

    .line 974
    .line 975
    goto/16 :goto_5

    .line 976
    .line 977
    :cond_45
    const/16 v0, 0x59

    .line 978
    .line 979
    goto/16 :goto_6

    .line 980
    .line 981
    :sswitch_44
    const-string v0, "F3211"

    .line 982
    .line 983
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 984
    .line 985
    .line 986
    move-result v0

    .line 987
    if-nez v0, :cond_46

    .line 988
    .line 989
    goto/16 :goto_5

    .line 990
    .line 991
    :cond_46
    const/16 v0, 0x58

    .line 992
    .line 993
    goto/16 :goto_6

    .line 994
    .line 995
    :sswitch_45
    const-string v0, "F3116"

    .line 996
    .line 997
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 998
    .line 999
    .line 1000
    move-result v0

    .line 1001
    if-nez v0, :cond_47

    .line 1002
    .line 1003
    goto/16 :goto_5

    .line 1004
    .line 1005
    :cond_47
    const/16 v0, 0x57

    .line 1006
    .line 1007
    goto/16 :goto_6

    .line 1008
    .line 1009
    :sswitch_46
    const-string v0, "F3113"

    .line 1010
    .line 1011
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1012
    .line 1013
    .line 1014
    move-result v0

    .line 1015
    if-nez v0, :cond_48

    .line 1016
    .line 1017
    goto/16 :goto_5

    .line 1018
    .line 1019
    :cond_48
    const/16 v0, 0x56

    .line 1020
    .line 1021
    goto/16 :goto_6

    .line 1022
    .line 1023
    :sswitch_47
    const-string v0, "F3111"

    .line 1024
    .line 1025
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1026
    .line 1027
    .line 1028
    move-result v0

    .line 1029
    if-nez v0, :cond_49

    .line 1030
    .line 1031
    goto/16 :goto_5

    .line 1032
    .line 1033
    :cond_49
    const/16 v0, 0x55

    .line 1034
    .line 1035
    goto/16 :goto_6

    .line 1036
    .line 1037
    :sswitch_48
    const-string v0, "E5643"

    .line 1038
    .line 1039
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1040
    .line 1041
    .line 1042
    move-result v0

    .line 1043
    if-nez v0, :cond_4a

    .line 1044
    .line 1045
    goto/16 :goto_5

    .line 1046
    .line 1047
    :cond_4a
    const/16 v0, 0x54

    .line 1048
    .line 1049
    goto/16 :goto_6

    .line 1050
    .line 1051
    :sswitch_49
    const-string v0, "A1601"

    .line 1052
    .line 1053
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1054
    .line 1055
    .line 1056
    move-result v0

    .line 1057
    if-nez v0, :cond_4b

    .line 1058
    .line 1059
    goto/16 :goto_5

    .line 1060
    .line 1061
    :cond_4b
    const/16 v0, 0x53

    .line 1062
    .line 1063
    goto/16 :goto_6

    .line 1064
    .line 1065
    :sswitch_4a
    const-string v0, "Aura_Note_2"

    .line 1066
    .line 1067
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1068
    .line 1069
    .line 1070
    move-result v0

    .line 1071
    if-nez v0, :cond_4c

    .line 1072
    .line 1073
    goto/16 :goto_5

    .line 1074
    .line 1075
    :cond_4c
    const/16 v0, 0x52

    .line 1076
    .line 1077
    goto/16 :goto_6

    .line 1078
    .line 1079
    :sswitch_4b
    const-string v0, "602LV"

    .line 1080
    .line 1081
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1082
    .line 1083
    .line 1084
    move-result v0

    .line 1085
    if-nez v0, :cond_4d

    .line 1086
    .line 1087
    goto/16 :goto_5

    .line 1088
    .line 1089
    :cond_4d
    const/16 v0, 0x51

    .line 1090
    .line 1091
    goto/16 :goto_6

    .line 1092
    .line 1093
    :sswitch_4c
    const-string v0, "601LV"

    .line 1094
    .line 1095
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1096
    .line 1097
    .line 1098
    move-result v0

    .line 1099
    if-nez v0, :cond_4e

    .line 1100
    .line 1101
    goto/16 :goto_5

    .line 1102
    .line 1103
    :cond_4e
    const/16 v0, 0x50

    .line 1104
    .line 1105
    goto/16 :goto_6

    .line 1106
    .line 1107
    :sswitch_4d
    const-string v0, "MEIZU_M5"

    .line 1108
    .line 1109
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1110
    .line 1111
    .line 1112
    move-result v0

    .line 1113
    if-nez v0, :cond_4f

    .line 1114
    .line 1115
    goto/16 :goto_5

    .line 1116
    .line 1117
    :cond_4f
    const/16 v0, 0x4f

    .line 1118
    .line 1119
    goto/16 :goto_6

    .line 1120
    .line 1121
    :sswitch_4e
    const-string v0, "p212"

    .line 1122
    .line 1123
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1124
    .line 1125
    .line 1126
    move-result v0

    .line 1127
    if-nez v0, :cond_50

    .line 1128
    .line 1129
    goto/16 :goto_5

    .line 1130
    .line 1131
    :cond_50
    const/16 v0, 0x4e

    .line 1132
    .line 1133
    goto/16 :goto_6

    .line 1134
    .line 1135
    :sswitch_4f
    const-string v0, "mido"

    .line 1136
    .line 1137
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1138
    .line 1139
    .line 1140
    move-result v0

    .line 1141
    if-nez v0, :cond_51

    .line 1142
    .line 1143
    goto/16 :goto_5

    .line 1144
    .line 1145
    :cond_51
    const/16 v0, 0x4d

    .line 1146
    .line 1147
    goto/16 :goto_6

    .line 1148
    .line 1149
    :sswitch_50
    const-string v0, "kate"

    .line 1150
    .line 1151
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1152
    .line 1153
    .line 1154
    move-result v0

    .line 1155
    if-nez v0, :cond_52

    .line 1156
    .line 1157
    goto/16 :goto_5

    .line 1158
    .line 1159
    :cond_52
    const/16 v0, 0x4c

    .line 1160
    .line 1161
    goto/16 :goto_6

    .line 1162
    .line 1163
    :sswitch_51
    const-string v0, "fugu"

    .line 1164
    .line 1165
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1166
    .line 1167
    .line 1168
    move-result v0

    .line 1169
    if-nez v0, :cond_53

    .line 1170
    .line 1171
    goto/16 :goto_5

    .line 1172
    .line 1173
    :cond_53
    const/16 v0, 0x4b

    .line 1174
    .line 1175
    goto/16 :goto_6

    .line 1176
    .line 1177
    :sswitch_52
    const-string v0, "XE2X"

    .line 1178
    .line 1179
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1180
    .line 1181
    .line 1182
    move-result v0

    .line 1183
    if-nez v0, :cond_54

    .line 1184
    .line 1185
    goto/16 :goto_5

    .line 1186
    .line 1187
    :cond_54
    const/16 v0, 0x4a

    .line 1188
    .line 1189
    goto/16 :goto_6

    .line 1190
    .line 1191
    :sswitch_53
    const-string v0, "Q427"

    .line 1192
    .line 1193
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1194
    .line 1195
    .line 1196
    move-result v0

    .line 1197
    if-nez v0, :cond_55

    .line 1198
    .line 1199
    goto/16 :goto_5

    .line 1200
    .line 1201
    :cond_55
    const/16 v0, 0x49

    .line 1202
    .line 1203
    goto/16 :goto_6

    .line 1204
    .line 1205
    :sswitch_54
    const-string v0, "Q350"

    .line 1206
    .line 1207
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1208
    .line 1209
    .line 1210
    move-result v0

    .line 1211
    if-nez v0, :cond_56

    .line 1212
    .line 1213
    goto/16 :goto_5

    .line 1214
    .line 1215
    :cond_56
    const/16 v0, 0x48

    .line 1216
    .line 1217
    goto/16 :goto_6

    .line 1218
    .line 1219
    :sswitch_55
    const-string v0, "P681"

    .line 1220
    .line 1221
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1222
    .line 1223
    .line 1224
    move-result v0

    .line 1225
    if-nez v0, :cond_57

    .line 1226
    .line 1227
    goto/16 :goto_5

    .line 1228
    .line 1229
    :cond_57
    const/16 v0, 0x47

    .line 1230
    .line 1231
    goto/16 :goto_6

    .line 1232
    .line 1233
    :sswitch_56
    const-string v0, "F04J"

    .line 1234
    .line 1235
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1236
    .line 1237
    .line 1238
    move-result v0

    .line 1239
    if-nez v0, :cond_58

    .line 1240
    .line 1241
    goto/16 :goto_5

    .line 1242
    .line 1243
    :cond_58
    const/16 v0, 0x46

    .line 1244
    .line 1245
    goto/16 :goto_6

    .line 1246
    .line 1247
    :sswitch_57
    const-string v0, "F04H"

    .line 1248
    .line 1249
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1250
    .line 1251
    .line 1252
    move-result v0

    .line 1253
    if-nez v0, :cond_59

    .line 1254
    .line 1255
    goto/16 :goto_5

    .line 1256
    .line 1257
    :cond_59
    const/16 v0, 0x45

    .line 1258
    .line 1259
    goto/16 :goto_6

    .line 1260
    .line 1261
    :sswitch_58
    const-string v0, "F03H"

    .line 1262
    .line 1263
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1264
    .line 1265
    .line 1266
    move-result v0

    .line 1267
    if-nez v0, :cond_5a

    .line 1268
    .line 1269
    goto/16 :goto_5

    .line 1270
    .line 1271
    :cond_5a
    const/16 v0, 0x44

    .line 1272
    .line 1273
    goto/16 :goto_6

    .line 1274
    .line 1275
    :sswitch_59
    const-string v0, "F02H"

    .line 1276
    .line 1277
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1278
    .line 1279
    .line 1280
    move-result v0

    .line 1281
    if-nez v0, :cond_5b

    .line 1282
    .line 1283
    goto/16 :goto_5

    .line 1284
    .line 1285
    :cond_5b
    const/16 v0, 0x43

    .line 1286
    .line 1287
    goto/16 :goto_6

    .line 1288
    .line 1289
    :sswitch_5a
    const-string v0, "F01J"

    .line 1290
    .line 1291
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1292
    .line 1293
    .line 1294
    move-result v0

    .line 1295
    if-nez v0, :cond_5c

    .line 1296
    .line 1297
    goto/16 :goto_5

    .line 1298
    .line 1299
    :cond_5c
    const/16 v0, 0x42

    .line 1300
    .line 1301
    goto/16 :goto_6

    .line 1302
    .line 1303
    :sswitch_5b
    const-string v0, "F01H"

    .line 1304
    .line 1305
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1306
    .line 1307
    .line 1308
    move-result v0

    .line 1309
    if-nez v0, :cond_5d

    .line 1310
    .line 1311
    goto/16 :goto_5

    .line 1312
    .line 1313
    :cond_5d
    const/16 v0, 0x41

    .line 1314
    .line 1315
    goto/16 :goto_6

    .line 1316
    .line 1317
    :sswitch_5c
    const-string v0, "1714"

    .line 1318
    .line 1319
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1320
    .line 1321
    .line 1322
    move-result v0

    .line 1323
    if-nez v0, :cond_5e

    .line 1324
    .line 1325
    goto/16 :goto_5

    .line 1326
    .line 1327
    :cond_5e
    const/16 v0, 0x40

    .line 1328
    .line 1329
    goto/16 :goto_6

    .line 1330
    .line 1331
    :sswitch_5d
    const-string v0, "1713"

    .line 1332
    .line 1333
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1334
    .line 1335
    .line 1336
    move-result v0

    .line 1337
    if-nez v0, :cond_5f

    .line 1338
    .line 1339
    goto/16 :goto_5

    .line 1340
    .line 1341
    :cond_5f
    const/16 v0, 0x3f

    .line 1342
    .line 1343
    goto/16 :goto_6

    .line 1344
    .line 1345
    :sswitch_5e
    const-string v0, "1601"

    .line 1346
    .line 1347
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1348
    .line 1349
    .line 1350
    move-result v0

    .line 1351
    if-nez v0, :cond_60

    .line 1352
    .line 1353
    goto/16 :goto_5

    .line 1354
    .line 1355
    :cond_60
    const/16 v0, 0x3e

    .line 1356
    .line 1357
    goto/16 :goto_6

    .line 1358
    .line 1359
    :sswitch_5f
    const-string v0, "flo"

    .line 1360
    .line 1361
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1362
    .line 1363
    .line 1364
    move-result v0

    .line 1365
    if-nez v0, :cond_61

    .line 1366
    .line 1367
    goto/16 :goto_5

    .line 1368
    .line 1369
    :cond_61
    const/16 v0, 0x3d

    .line 1370
    .line 1371
    goto/16 :goto_6

    .line 1372
    .line 1373
    :sswitch_60
    const-string v0, "deb"

    .line 1374
    .line 1375
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1376
    .line 1377
    .line 1378
    move-result v0

    .line 1379
    if-nez v0, :cond_62

    .line 1380
    .line 1381
    goto/16 :goto_5

    .line 1382
    .line 1383
    :cond_62
    const/16 v0, 0x3c

    .line 1384
    .line 1385
    goto/16 :goto_6

    .line 1386
    .line 1387
    :sswitch_61
    const-string v0, "cv3"

    .line 1388
    .line 1389
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1390
    .line 1391
    .line 1392
    move-result v0

    .line 1393
    if-nez v0, :cond_63

    .line 1394
    .line 1395
    goto/16 :goto_5

    .line 1396
    .line 1397
    :cond_63
    const/16 v0, 0x3b

    .line 1398
    .line 1399
    goto/16 :goto_6

    .line 1400
    .line 1401
    :sswitch_62
    const-string v0, "cv1"

    .line 1402
    .line 1403
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1404
    .line 1405
    .line 1406
    move-result v0

    .line 1407
    if-nez v0, :cond_64

    .line 1408
    .line 1409
    goto/16 :goto_5

    .line 1410
    .line 1411
    :cond_64
    const/16 v0, 0x3a

    .line 1412
    .line 1413
    goto/16 :goto_6

    .line 1414
    .line 1415
    :sswitch_63
    const-string v0, "Z80"

    .line 1416
    .line 1417
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1418
    .line 1419
    .line 1420
    move-result v0

    .line 1421
    if-nez v0, :cond_65

    .line 1422
    .line 1423
    goto/16 :goto_5

    .line 1424
    .line 1425
    :cond_65
    const/16 v0, 0x39

    .line 1426
    .line 1427
    goto/16 :goto_6

    .line 1428
    .line 1429
    :sswitch_64
    const-string v0, "QX1"

    .line 1430
    .line 1431
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1432
    .line 1433
    .line 1434
    move-result v0

    .line 1435
    if-nez v0, :cond_66

    .line 1436
    .line 1437
    goto/16 :goto_5

    .line 1438
    .line 1439
    :cond_66
    const/16 v0, 0x38

    .line 1440
    .line 1441
    goto/16 :goto_6

    .line 1442
    .line 1443
    :sswitch_65
    const-string v0, "PLE"

    .line 1444
    .line 1445
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1446
    .line 1447
    .line 1448
    move-result v0

    .line 1449
    if-nez v0, :cond_67

    .line 1450
    .line 1451
    goto/16 :goto_5

    .line 1452
    .line 1453
    :cond_67
    const/16 v0, 0x37

    .line 1454
    .line 1455
    goto/16 :goto_6

    .line 1456
    .line 1457
    :sswitch_66
    const-string v0, "P85"

    .line 1458
    .line 1459
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1460
    .line 1461
    .line 1462
    move-result v0

    .line 1463
    if-nez v0, :cond_68

    .line 1464
    .line 1465
    goto/16 :goto_5

    .line 1466
    .line 1467
    :cond_68
    const/16 v0, 0x36

    .line 1468
    .line 1469
    goto/16 :goto_6

    .line 1470
    .line 1471
    :sswitch_67
    const-string v0, "MX6"

    .line 1472
    .line 1473
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1474
    .line 1475
    .line 1476
    move-result v0

    .line 1477
    if-nez v0, :cond_69

    .line 1478
    .line 1479
    goto/16 :goto_5

    .line 1480
    .line 1481
    :cond_69
    const/16 v0, 0x35

    .line 1482
    .line 1483
    goto/16 :goto_6

    .line 1484
    .line 1485
    :sswitch_68
    const-string v0, "M5c"

    .line 1486
    .line 1487
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1488
    .line 1489
    .line 1490
    move-result v0

    .line 1491
    if-nez v0, :cond_6a

    .line 1492
    .line 1493
    goto/16 :goto_5

    .line 1494
    .line 1495
    :cond_6a
    const/16 v0, 0x34

    .line 1496
    .line 1497
    goto/16 :goto_6

    .line 1498
    .line 1499
    :sswitch_69
    const-string v0, "M04"

    .line 1500
    .line 1501
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1502
    .line 1503
    .line 1504
    move-result v0

    .line 1505
    if-nez v0, :cond_6b

    .line 1506
    .line 1507
    goto/16 :goto_5

    .line 1508
    .line 1509
    :cond_6b
    const/16 v0, 0x33

    .line 1510
    .line 1511
    goto/16 :goto_6

    .line 1512
    .line 1513
    :sswitch_6a
    const-string v0, "JGZ"

    .line 1514
    .line 1515
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1516
    .line 1517
    .line 1518
    move-result v0

    .line 1519
    if-nez v0, :cond_6c

    .line 1520
    .line 1521
    goto/16 :goto_5

    .line 1522
    .line 1523
    :cond_6c
    const/16 v0, 0x32

    .line 1524
    .line 1525
    goto/16 :goto_6

    .line 1526
    .line 1527
    :sswitch_6b
    const-string v0, "mh"

    .line 1528
    .line 1529
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1530
    .line 1531
    .line 1532
    move-result v0

    .line 1533
    if-nez v0, :cond_6d

    .line 1534
    .line 1535
    goto/16 :goto_5

    .line 1536
    .line 1537
    :cond_6d
    const/16 v0, 0x31

    .line 1538
    .line 1539
    goto/16 :goto_6

    .line 1540
    .line 1541
    :sswitch_6c
    const-string v0, "b5"

    .line 1542
    .line 1543
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1544
    .line 1545
    .line 1546
    move-result v0

    .line 1547
    if-nez v0, :cond_6e

    .line 1548
    .line 1549
    goto/16 :goto_5

    .line 1550
    .line 1551
    :cond_6e
    const/16 v0, 0x30

    .line 1552
    .line 1553
    goto/16 :goto_6

    .line 1554
    .line 1555
    :sswitch_6d
    const-string v0, "V5"

    .line 1556
    .line 1557
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1558
    .line 1559
    .line 1560
    move-result v0

    .line 1561
    if-nez v0, :cond_6f

    .line 1562
    .line 1563
    goto/16 :goto_5

    .line 1564
    .line 1565
    :cond_6f
    const/16 v0, 0x2f

    .line 1566
    .line 1567
    goto/16 :goto_6

    .line 1568
    .line 1569
    :sswitch_6e
    const-string v0, "V1"

    .line 1570
    .line 1571
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1572
    .line 1573
    .line 1574
    move-result v0

    .line 1575
    if-nez v0, :cond_70

    .line 1576
    .line 1577
    goto/16 :goto_5

    .line 1578
    .line 1579
    :cond_70
    const/16 v0, 0x2e

    .line 1580
    .line 1581
    goto/16 :goto_6

    .line 1582
    .line 1583
    :sswitch_6f
    const-string v0, "Q5"

    .line 1584
    .line 1585
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1586
    .line 1587
    .line 1588
    move-result v0

    .line 1589
    if-nez v0, :cond_71

    .line 1590
    .line 1591
    goto/16 :goto_5

    .line 1592
    .line 1593
    :cond_71
    const/16 v0, 0x2d

    .line 1594
    .line 1595
    goto/16 :goto_6

    .line 1596
    .line 1597
    :sswitch_70
    const-string v0, "C1"

    .line 1598
    .line 1599
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1600
    .line 1601
    .line 1602
    move-result v0

    .line 1603
    if-nez v0, :cond_72

    .line 1604
    .line 1605
    goto/16 :goto_5

    .line 1606
    .line 1607
    :cond_72
    const/16 v0, 0x2c

    .line 1608
    .line 1609
    goto/16 :goto_6

    .line 1610
    .line 1611
    :sswitch_71
    const-string v0, "woods_fn"

    .line 1612
    .line 1613
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1614
    .line 1615
    .line 1616
    move-result v0

    .line 1617
    if-nez v0, :cond_73

    .line 1618
    .line 1619
    goto/16 :goto_5

    .line 1620
    .line 1621
    :cond_73
    const/16 v0, 0x2b

    .line 1622
    .line 1623
    goto/16 :goto_6

    .line 1624
    .line 1625
    :sswitch_72
    const-string v0, "ELUGA_A3_Pro"

    .line 1626
    .line 1627
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1628
    .line 1629
    .line 1630
    move-result v0

    .line 1631
    if-nez v0, :cond_74

    .line 1632
    .line 1633
    goto/16 :goto_5

    .line 1634
    .line 1635
    :cond_74
    const/16 v0, 0x2a

    .line 1636
    .line 1637
    goto/16 :goto_6

    .line 1638
    .line 1639
    :sswitch_73
    const-string v0, "Z12_PRO"

    .line 1640
    .line 1641
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1642
    .line 1643
    .line 1644
    move-result v0

    .line 1645
    if-nez v0, :cond_75

    .line 1646
    .line 1647
    goto/16 :goto_5

    .line 1648
    .line 1649
    :cond_75
    const/16 v0, 0x29

    .line 1650
    .line 1651
    goto/16 :goto_6

    .line 1652
    .line 1653
    :sswitch_74
    const-string v0, "BLACK-1X"

    .line 1654
    .line 1655
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1656
    .line 1657
    .line 1658
    move-result v0

    .line 1659
    if-nez v0, :cond_76

    .line 1660
    .line 1661
    goto/16 :goto_5

    .line 1662
    .line 1663
    :cond_76
    const/16 v0, 0x28

    .line 1664
    .line 1665
    goto/16 :goto_6

    .line 1666
    .line 1667
    :sswitch_75
    const-string v0, "taido_row"

    .line 1668
    .line 1669
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1670
    .line 1671
    .line 1672
    move-result v0

    .line 1673
    if-nez v0, :cond_77

    .line 1674
    .line 1675
    goto/16 :goto_5

    .line 1676
    .line 1677
    :cond_77
    const/16 v0, 0x27

    .line 1678
    .line 1679
    goto/16 :goto_6

    .line 1680
    .line 1681
    :sswitch_76
    const-string v0, "Pixi4-7_3G"

    .line 1682
    .line 1683
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1684
    .line 1685
    .line 1686
    move-result v0

    .line 1687
    if-nez v0, :cond_78

    .line 1688
    .line 1689
    goto/16 :goto_5

    .line 1690
    .line 1691
    :cond_78
    const/16 v0, 0x26

    .line 1692
    .line 1693
    goto/16 :goto_6

    .line 1694
    .line 1695
    :sswitch_77
    const-string v0, "GIONEE_GBL7360"

    .line 1696
    .line 1697
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1698
    .line 1699
    .line 1700
    move-result v0

    .line 1701
    if-nez v0, :cond_79

    .line 1702
    .line 1703
    goto/16 :goto_5

    .line 1704
    .line 1705
    :cond_79
    const/16 v0, 0x25

    .line 1706
    .line 1707
    goto/16 :goto_6

    .line 1708
    .line 1709
    :sswitch_78
    const-string v0, "GiONEE_CBL7513"

    .line 1710
    .line 1711
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1712
    .line 1713
    .line 1714
    move-result v0

    .line 1715
    if-nez v0, :cond_7a

    .line 1716
    .line 1717
    goto/16 :goto_5

    .line 1718
    .line 1719
    :cond_7a
    const/16 v0, 0x24

    .line 1720
    .line 1721
    goto/16 :goto_6

    .line 1722
    .line 1723
    :sswitch_79
    const-string v0, "OnePlus5T"

    .line 1724
    .line 1725
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1726
    .line 1727
    .line 1728
    move-result v0

    .line 1729
    if-nez v0, :cond_7b

    .line 1730
    .line 1731
    goto/16 :goto_5

    .line 1732
    .line 1733
    :cond_7b
    const/16 v0, 0x23

    .line 1734
    .line 1735
    goto/16 :goto_6

    .line 1736
    .line 1737
    :sswitch_7a
    const-string v0, "whyred"

    .line 1738
    .line 1739
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1740
    .line 1741
    .line 1742
    move-result v0

    .line 1743
    if-nez v0, :cond_7c

    .line 1744
    .line 1745
    goto/16 :goto_5

    .line 1746
    .line 1747
    :cond_7c
    const/16 v0, 0x22

    .line 1748
    .line 1749
    goto/16 :goto_6

    .line 1750
    .line 1751
    :sswitch_7b
    const-string v0, "watson"

    .line 1752
    .line 1753
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1754
    .line 1755
    .line 1756
    move-result v0

    .line 1757
    if-nez v0, :cond_7d

    .line 1758
    .line 1759
    goto/16 :goto_5

    .line 1760
    .line 1761
    :cond_7d
    const/16 v0, 0x21

    .line 1762
    .line 1763
    goto/16 :goto_6

    .line 1764
    .line 1765
    :sswitch_7c
    const-string v0, "SVP-DTV15"

    .line 1766
    .line 1767
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1768
    .line 1769
    .line 1770
    move-result v0

    .line 1771
    if-nez v0, :cond_7e

    .line 1772
    .line 1773
    goto/16 :goto_5

    .line 1774
    .line 1775
    :cond_7e
    const/16 v0, 0x20

    .line 1776
    .line 1777
    goto/16 :goto_6

    .line 1778
    .line 1779
    :sswitch_7d
    const-string v0, "A7000-a"

    .line 1780
    .line 1781
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1782
    .line 1783
    .line 1784
    move-result v0

    .line 1785
    if-nez v0, :cond_7f

    .line 1786
    .line 1787
    goto/16 :goto_5

    .line 1788
    .line 1789
    :cond_7f
    const/16 v0, 0x1f

    .line 1790
    .line 1791
    goto/16 :goto_6

    .line 1792
    .line 1793
    :sswitch_7e
    const-string v0, "nicklaus_f"

    .line 1794
    .line 1795
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1796
    .line 1797
    .line 1798
    move-result v0

    .line 1799
    if-nez v0, :cond_80

    .line 1800
    .line 1801
    goto/16 :goto_5

    .line 1802
    .line 1803
    :cond_80
    const/16 v0, 0x1e

    .line 1804
    .line 1805
    goto/16 :goto_6

    .line 1806
    .line 1807
    :sswitch_7f
    const-string v0, "tcl_eu"

    .line 1808
    .line 1809
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1810
    .line 1811
    .line 1812
    move-result v0

    .line 1813
    if-nez v0, :cond_81

    .line 1814
    .line 1815
    goto/16 :goto_5

    .line 1816
    .line 1817
    :cond_81
    const/16 v0, 0x1d

    .line 1818
    .line 1819
    goto/16 :goto_6

    .line 1820
    .line 1821
    :sswitch_80
    const-string v0, "ELUGA_Ray_X"

    .line 1822
    .line 1823
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1824
    .line 1825
    .line 1826
    move-result v0

    .line 1827
    if-nez v0, :cond_82

    .line 1828
    .line 1829
    goto/16 :goto_5

    .line 1830
    .line 1831
    :cond_82
    move v0, v12

    .line 1832
    goto/16 :goto_6

    .line 1833
    .line 1834
    :sswitch_81
    const-string v0, "s905x018"

    .line 1835
    .line 1836
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1837
    .line 1838
    .line 1839
    move-result v0

    .line 1840
    if-nez v0, :cond_83

    .line 1841
    .line 1842
    goto/16 :goto_5

    .line 1843
    .line 1844
    :cond_83
    move v0, v2

    .line 1845
    goto/16 :goto_6

    .line 1846
    .line 1847
    :sswitch_82
    const-string v1, "A10-70L"

    .line 1848
    .line 1849
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1850
    .line 1851
    .line 1852
    move-result v1

    .line 1853
    if-nez v1, :cond_9e

    .line 1854
    .line 1855
    goto/16 :goto_5

    .line 1856
    .line 1857
    :sswitch_83
    const-string v0, "A10-70F"

    .line 1858
    .line 1859
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1860
    .line 1861
    .line 1862
    move-result v0

    .line 1863
    if-nez v0, :cond_84

    .line 1864
    .line 1865
    goto/16 :goto_5

    .line 1866
    .line 1867
    :cond_84
    const/16 v0, 0x19

    .line 1868
    .line 1869
    goto/16 :goto_6

    .line 1870
    .line 1871
    :sswitch_84
    const-string v0, "namath"

    .line 1872
    .line 1873
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1874
    .line 1875
    .line 1876
    move-result v0

    .line 1877
    if-nez v0, :cond_85

    .line 1878
    .line 1879
    goto/16 :goto_5

    .line 1880
    .line 1881
    :cond_85
    const/16 v0, 0x18

    .line 1882
    .line 1883
    goto/16 :goto_6

    .line 1884
    .line 1885
    :sswitch_85
    const-string v0, "Slate_Pro"

    .line 1886
    .line 1887
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1888
    .line 1889
    .line 1890
    move-result v0

    .line 1891
    if-nez v0, :cond_86

    .line 1892
    .line 1893
    goto/16 :goto_5

    .line 1894
    .line 1895
    :cond_86
    const/16 v0, 0x17

    .line 1896
    .line 1897
    goto/16 :goto_6

    .line 1898
    .line 1899
    :sswitch_86
    const-string v0, "iris60"

    .line 1900
    .line 1901
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1902
    .line 1903
    .line 1904
    move-result v0

    .line 1905
    if-nez v0, :cond_87

    .line 1906
    .line 1907
    goto/16 :goto_5

    .line 1908
    .line 1909
    :cond_87
    const/16 v0, 0x16

    .line 1910
    .line 1911
    goto/16 :goto_6

    .line 1912
    .line 1913
    :sswitch_87
    const-string v0, "BRAVIA_ATV2"

    .line 1914
    .line 1915
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1916
    .line 1917
    .line 1918
    move-result v0

    .line 1919
    if-nez v0, :cond_88

    .line 1920
    .line 1921
    goto/16 :goto_5

    .line 1922
    .line 1923
    :cond_88
    const/16 v0, 0x15

    .line 1924
    .line 1925
    goto/16 :goto_6

    .line 1926
    .line 1927
    :sswitch_88
    const-string v0, "GiONEE_GBL7319"

    .line 1928
    .line 1929
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1930
    .line 1931
    .line 1932
    move-result v0

    .line 1933
    if-nez v0, :cond_89

    .line 1934
    .line 1935
    goto/16 :goto_5

    .line 1936
    .line 1937
    :cond_89
    const/16 v0, 0x14

    .line 1938
    .line 1939
    goto/16 :goto_6

    .line 1940
    .line 1941
    :sswitch_89
    const-string v0, "panell_dt"

    .line 1942
    .line 1943
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1944
    .line 1945
    .line 1946
    move-result v0

    .line 1947
    if-nez v0, :cond_8a

    .line 1948
    .line 1949
    goto/16 :goto_5

    .line 1950
    .line 1951
    :cond_8a
    const/16 v0, 0x13

    .line 1952
    .line 1953
    goto/16 :goto_6

    .line 1954
    .line 1955
    :sswitch_8a
    const-string v0, "panell_ds"

    .line 1956
    .line 1957
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1958
    .line 1959
    .line 1960
    move-result v0

    .line 1961
    if-nez v0, :cond_8b

    .line 1962
    .line 1963
    goto/16 :goto_5

    .line 1964
    .line 1965
    :cond_8b
    const/16 v0, 0x12

    .line 1966
    .line 1967
    goto/16 :goto_6

    .line 1968
    .line 1969
    :sswitch_8b
    const-string v0, "panell_dl"

    .line 1970
    .line 1971
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1972
    .line 1973
    .line 1974
    move-result v0

    .line 1975
    if-nez v0, :cond_8c

    .line 1976
    .line 1977
    goto/16 :goto_5

    .line 1978
    .line 1979
    :cond_8c
    const/16 v0, 0x11

    .line 1980
    .line 1981
    goto/16 :goto_6

    .line 1982
    .line 1983
    :sswitch_8c
    const-string v0, "vernee_M5"

    .line 1984
    .line 1985
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1986
    .line 1987
    .line 1988
    move-result v0

    .line 1989
    if-nez v0, :cond_8d

    .line 1990
    .line 1991
    goto/16 :goto_5

    .line 1992
    .line 1993
    :cond_8d
    const/16 v0, 0x10

    .line 1994
    .line 1995
    goto/16 :goto_6

    .line 1996
    .line 1997
    :sswitch_8d
    const-string v0, "pacificrim"

    .line 1998
    .line 1999
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2000
    .line 2001
    .line 2002
    move-result v0

    .line 2003
    if-nez v0, :cond_8e

    .line 2004
    .line 2005
    goto/16 :goto_5

    .line 2006
    .line 2007
    :cond_8e
    const/16 v0, 0xf

    .line 2008
    .line 2009
    goto/16 :goto_6

    .line 2010
    .line 2011
    :sswitch_8e
    const-string v0, "Phantom6"

    .line 2012
    .line 2013
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2014
    .line 2015
    .line 2016
    move-result v0

    .line 2017
    if-nez v0, :cond_8f

    .line 2018
    .line 2019
    goto/16 :goto_5

    .line 2020
    .line 2021
    :cond_8f
    const/16 v0, 0xe

    .line 2022
    .line 2023
    goto/16 :goto_6

    .line 2024
    .line 2025
    :sswitch_8f
    const-string v0, "ComioS1"

    .line 2026
    .line 2027
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2028
    .line 2029
    .line 2030
    move-result v0

    .line 2031
    if-nez v0, :cond_90

    .line 2032
    .line 2033
    goto/16 :goto_5

    .line 2034
    .line 2035
    :cond_90
    const/16 v0, 0xd

    .line 2036
    .line 2037
    goto/16 :goto_6

    .line 2038
    .line 2039
    :sswitch_90
    const-string v0, "XT1663"

    .line 2040
    .line 2041
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2042
    .line 2043
    .line 2044
    move-result v0

    .line 2045
    if-nez v0, :cond_91

    .line 2046
    .line 2047
    goto/16 :goto_5

    .line 2048
    .line 2049
    :cond_91
    const/16 v0, 0xc

    .line 2050
    .line 2051
    goto/16 :goto_6

    .line 2052
    .line 2053
    :sswitch_91
    const-string v0, "RAIJIN"

    .line 2054
    .line 2055
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2056
    .line 2057
    .line 2058
    move-result v0

    .line 2059
    if-nez v0, :cond_92

    .line 2060
    .line 2061
    goto/16 :goto_5

    .line 2062
    .line 2063
    :cond_92
    const/16 v0, 0xb

    .line 2064
    .line 2065
    goto/16 :goto_6

    .line 2066
    .line 2067
    :sswitch_92
    const-string v0, "AquaPowerM"

    .line 2068
    .line 2069
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2070
    .line 2071
    .line 2072
    move-result v0

    .line 2073
    if-nez v0, :cond_93

    .line 2074
    .line 2075
    goto/16 :goto_5

    .line 2076
    .line 2077
    :cond_93
    const/16 v0, 0xa

    .line 2078
    .line 2079
    goto/16 :goto_6

    .line 2080
    .line 2081
    :sswitch_93
    const-string v0, "PGN611"

    .line 2082
    .line 2083
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2084
    .line 2085
    .line 2086
    move-result v0

    .line 2087
    if-nez v0, :cond_94

    .line 2088
    .line 2089
    goto/16 :goto_5

    .line 2090
    .line 2091
    :cond_94
    const/16 v0, 0x9

    .line 2092
    .line 2093
    goto/16 :goto_6

    .line 2094
    .line 2095
    :sswitch_94
    const-string v0, "PGN610"

    .line 2096
    .line 2097
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2098
    .line 2099
    .line 2100
    move-result v0

    .line 2101
    if-nez v0, :cond_95

    .line 2102
    .line 2103
    goto/16 :goto_5

    .line 2104
    .line 2105
    :cond_95
    move v0, v1

    .line 2106
    goto/16 :goto_6

    .line 2107
    .line 2108
    :sswitch_95
    const-string v0, "PGN528"

    .line 2109
    .line 2110
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2111
    .line 2112
    .line 2113
    move-result v0

    .line 2114
    if-nez v0, :cond_96

    .line 2115
    .line 2116
    goto/16 :goto_5

    .line 2117
    .line 2118
    :cond_96
    move v0, v3

    .line 2119
    goto :goto_6

    .line 2120
    :sswitch_96
    const-string v0, "NX573J"

    .line 2121
    .line 2122
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2123
    .line 2124
    .line 2125
    move-result v0

    .line 2126
    if-nez v0, :cond_97

    .line 2127
    .line 2128
    goto/16 :goto_5

    .line 2129
    .line 2130
    :cond_97
    move v0, v4

    .line 2131
    goto :goto_6

    .line 2132
    :sswitch_97
    const-string v0, "NX541J"

    .line 2133
    .line 2134
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2135
    .line 2136
    .line 2137
    move-result v0

    .line 2138
    if-nez v0, :cond_98

    .line 2139
    .line 2140
    goto/16 :goto_5

    .line 2141
    .line 2142
    :cond_98
    move v0, v5

    .line 2143
    goto :goto_6

    .line 2144
    :sswitch_98
    const-string v0, "CP8676_I02"

    .line 2145
    .line 2146
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2147
    .line 2148
    .line 2149
    move-result v0

    .line 2150
    if-nez v0, :cond_99

    .line 2151
    .line 2152
    goto/16 :goto_5

    .line 2153
    .line 2154
    :cond_99
    move v0, v6

    .line 2155
    goto :goto_6

    .line 2156
    :sswitch_99
    const-string v0, "K50a40"

    .line 2157
    .line 2158
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2159
    .line 2160
    .line 2161
    move-result v0

    .line 2162
    if-nez v0, :cond_9a

    .line 2163
    .line 2164
    goto/16 :goto_5

    .line 2165
    .line 2166
    :cond_9a
    move v0, v7

    .line 2167
    goto :goto_6

    .line 2168
    :sswitch_9a
    const-string v0, "GIONEE_SWW1631"

    .line 2169
    .line 2170
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2171
    .line 2172
    .line 2173
    move-result v0

    .line 2174
    if-nez v0, :cond_9b

    .line 2175
    .line 2176
    goto/16 :goto_5

    .line 2177
    .line 2178
    :cond_9b
    move v0, v8

    .line 2179
    goto :goto_6

    .line 2180
    :sswitch_9b
    const-string v0, "GIONEE_SWW1627"

    .line 2181
    .line 2182
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2183
    .line 2184
    .line 2185
    move-result v0

    .line 2186
    if-nez v0, :cond_9c

    .line 2187
    .line 2188
    goto/16 :goto_5

    .line 2189
    .line 2190
    :cond_9c
    move v0, v13

    .line 2191
    goto :goto_6

    .line 2192
    :sswitch_9c
    const-string v0, "GIONEE_SWW1609"

    .line 2193
    .line 2194
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2195
    .line 2196
    .line 2197
    move-result v0

    .line 2198
    if-nez v0, :cond_9d

    .line 2199
    .line 2200
    goto/16 :goto_5

    .line 2201
    .line 2202
    :cond_9d
    move v0, v10

    .line 2203
    :cond_9e
    :goto_6
    packed-switch v0, :pswitch_data_2

    .line 2204
    .line 2205
    .line 2206
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    .line 2207
    .line 2208
    .line 2209
    const-string v0, "JSN-L21"

    .line 2210
    .line 2211
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2212
    .line 2213
    .line 2214
    move-result v0

    .line 2215
    if-nez v0, :cond_9f

    .line 2216
    .line 2217
    goto :goto_7

    .line 2218
    :cond_9f
    :pswitch_1
    return v13

    .line 2219
    :cond_a0
    :goto_7
    return v10

    .line 2220
    :pswitch_2
    return v13

    .line 2221
    :sswitch_data_0
    .sparse-switch
        -0x4fd0ea5f -> :sswitch_7
        -0x48b8f57f -> :sswitch_6
        -0x48b8bd30 -> :sswitch_5
        -0x3c588c8a -> :sswitch_4
        -0x2d5172e2 -> :sswitch_3
        -0x3de1850 -> :sswitch_2
        0x341e81 -> :sswitch_1
        0x31316ffa -> :sswitch_0
    .end sparse-switch

    .line 2222
    .line 2223
    .line 2224
    .line 2225
    .line 2226
    .line 2227
    .line 2228
    .line 2229
    .line 2230
    .line 2231
    .line 2232
    .line 2233
    .line 2234
    .line 2235
    .line 2236
    .line 2237
    .line 2238
    .line 2239
    .line 2240
    .line 2241
    .line 2242
    .line 2243
    .line 2244
    .line 2245
    .line 2246
    .line 2247
    .line 2248
    .line 2249
    .line 2250
    .line 2251
    .line 2252
    .line 2253
    .line 2254
    .line 2255
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 2256
    .line 2257
    .line 2258
    .line 2259
    .line 2260
    .line 2261
    .line 2262
    .line 2263
    .line 2264
    .line 2265
    .line 2266
    .line 2267
    .line 2268
    .line 2269
    .line 2270
    .line 2271
    .line 2272
    .line 2273
    .line 2274
    .line 2275
    :sswitch_data_1
    .sparse-switch
        -0x14d76e6c -> :sswitch_10
        -0x132295cd -> :sswitch_f
        0x1e9d52 -> :sswitch_e
        0x1e9d5f -> :sswitch_d
        0x1e9d63 -> :sswitch_c
        0x6a6b6031 -> :sswitch_b
        0x6a6b6034 -> :sswitch_a
        0x6b2deee6 -> :sswitch_9
        0x7e53ab34 -> :sswitch_8
    .end sparse-switch

    .line 2276
    .line 2277
    .line 2278
    .line 2279
    .line 2280
    .line 2281
    .line 2282
    .line 2283
    .line 2284
    .line 2285
    .line 2286
    .line 2287
    .line 2288
    .line 2289
    .line 2290
    .line 2291
    .line 2292
    .line 2293
    .line 2294
    .line 2295
    .line 2296
    .line 2297
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x7fd6c3bd -> :sswitch_9c
        -0x7fd6c381 -> :sswitch_9b
        -0x7fd6c368 -> :sswitch_9a
        -0x7d026749 -> :sswitch_99
        -0x78929d6a -> :sswitch_98
        -0x75f50a1e -> :sswitch_97
        -0x75f4fe9d -> :sswitch_96
        -0x736f875c -> :sswitch_95
        -0x736f83c2 -> :sswitch_94
        -0x736f83c1 -> :sswitch_93
        -0x7327ce1c -> :sswitch_92
        -0x705c574b -> :sswitch_91
        -0x651ebb62 -> :sswitch_90
        -0x6423293b -> :sswitch_8f
        -0x604f5117 -> :sswitch_8e
        -0x5f691e13 -> :sswitch_8d
        -0x5ca40cc4 -> :sswitch_8c
        -0x58520ec1 -> :sswitch_8b
        -0x58520eba -> :sswitch_8a
        -0x58520eb9 -> :sswitch_89
        -0x4eaed329 -> :sswitch_88
        -0x4892fb4f -> :sswitch_87
        -0x465b3df3 -> :sswitch_86
        -0x43e6c939 -> :sswitch_85
        -0x3ec0fcc5 -> :sswitch_84
        -0x3b33cca0 -> :sswitch_83
        -0x3b33cc9a -> :sswitch_82
        -0x398ae3f6 -> :sswitch_81
        -0x391f0fb4 -> :sswitch_80
        -0x346837ae -> :sswitch_7f
        -0x323788e3 -> :sswitch_7e
        -0x30f57652 -> :sswitch_7d
        -0x2f88a116 -> :sswitch_7c
        -0x2f61ed98 -> :sswitch_7b
        -0x2efd0837 -> :sswitch_7a
        -0x2e9e9441 -> :sswitch_79
        -0x2247b8b1 -> :sswitch_78
        -0x1f0fa2b7 -> :sswitch_77
        -0x19af3b41 -> :sswitch_76
        -0x114fad3e -> :sswitch_75
        -0x10dae90b -> :sswitch_74
        -0x1084b7b7 -> :sswitch_73
        -0xa5988e9 -> :sswitch_72
        -0x35f9fbf -> :sswitch_71
        0x84e -> :sswitch_70
        0xa04 -> :sswitch_6f
        0xa9b -> :sswitch_6e
        0xa9f -> :sswitch_6d
        0xc13 -> :sswitch_6c
        0xd9b -> :sswitch_6b
        0x11ebd -> :sswitch_6a
        0x12711 -> :sswitch_69
        0x127db -> :sswitch_68
        0x12beb -> :sswitch_67
        0x1334d -> :sswitch_66
        0x135c9 -> :sswitch_65
        0x13aea -> :sswitch_64
        0x158d2 -> :sswitch_63
        0x1821e -> :sswitch_62
        0x18220 -> :sswitch_61
        0x18401 -> :sswitch_60
        0x18c69 -> :sswitch_5f
        0x1716e6 -> :sswitch_5e
        0x171ac8 -> :sswitch_5d
        0x171ac9 -> :sswitch_5c
        0x208c61 -> :sswitch_5b
        0x208c63 -> :sswitch_5a
        0x208c80 -> :sswitch_59
        0x208c9f -> :sswitch_58
        0x208cbe -> :sswitch_57
        0x208cc0 -> :sswitch_56
        0x252f5f -> :sswitch_55
        0x25981d -> :sswitch_54
        0x259b88 -> :sswitch_53
        0x290a13 -> :sswitch_52
        0x3021fd -> :sswitch_51
        0x321e47 -> :sswitch_50
        0x332327 -> :sswitch_4f
        0x33ab63 -> :sswitch_4e
        0x27691fb -> :sswitch_4d
        0x30f8881 -> :sswitch_4c
        0x30f8c42 -> :sswitch_4b
        0x349f581 -> :sswitch_4a
        0x3ab0ea7 -> :sswitch_49
        0x3e53ea5 -> :sswitch_48
        0x3f25a44 -> :sswitch_47
        0x3f25a46 -> :sswitch_46
        0x3f25a49 -> :sswitch_45
        0x3f25e05 -> :sswitch_44
        0x3f25e07 -> :sswitch_43
        0x3f25e09 -> :sswitch_42
        0x3f261c6 -> :sswitch_41
        0x48dce49 -> :sswitch_40
        0x48dd589 -> :sswitch_3f
        0x48dd8af -> :sswitch_3e
        0x4d36832 -> :sswitch_3d
        0x4f0b0e7 -> :sswitch_3c
        0x5e2479e -> :sswitch_3b
        0x60acc05 -> :sswitch_3a
        0x6214744 -> :sswitch_39
        0x9d91379 -> :sswitch_38
        0xadc0551 -> :sswitch_37
        0xea056b3 -> :sswitch_36
        0x1121dbc3 -> :sswitch_35
        0x1255818c -> :sswitch_34
        0x1263990d -> :sswitch_33
        0x12d90f3a -> :sswitch_32
        0x12d90f4c -> :sswitch_31
        0x12d98b1b -> :sswitch_30
        0x12d98b22 -> :sswitch_2f
        0x1844c711 -> :sswitch_2e
        0x1e3e8044 -> :sswitch_2d
        0x2f5336ed -> :sswitch_2c
        0x2f54115e -> :sswitch_2b
        0x2f541849 -> :sswitch_2a
        0x31cf010e -> :sswitch_29
        0x36ad82f4 -> :sswitch_28
        0x391a0b61 -> :sswitch_27
        0x3f3728cd -> :sswitch_26
        0x448ec687 -> :sswitch_25
        0x46260f63 -> :sswitch_24
        0x4c505106 -> :sswitch_23
        0x4de67084 -> :sswitch_22
        0x506ac5a9 -> :sswitch_21
        0x5abad9cd -> :sswitch_20
        0x64d2e6e9 -> :sswitch_1f
        0x64d2eac5 -> :sswitch_1e
        0x65e4085b -> :sswitch_1d
        0x6f373556 -> :sswitch_1c
        0x719f1dcb -> :sswitch_1b
        0x75d9a0f0 -> :sswitch_1a
        0x7796d144 -> :sswitch_19
        0x785bcb26 -> :sswitch_18
        0x78fc0e50 -> :sswitch_17
        0x790521fb -> :sswitch_16
        0x7933207f -> :sswitch_15
        0x7a05a409 -> :sswitch_14
        0x7a0696bd -> :sswitch_13
        0x7a16dfe7 -> :sswitch_12
        0x7a1f0e95 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static K1(Landroidx/media3/exoplayer/mediacodec/w;Landroidx/media3/common/r;)I
    .locals 11

    .line 1
    const/4 v0, 0x4

    .line 2
    const-string v1, "video/hevc"

    .line 3
    .line 4
    const-string v2, "video/avc"

    .line 5
    .line 6
    const-string v3, "video/av01"

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    const/4 v5, 0x2

    .line 10
    iget v6, p1, Landroidx/media3/common/r;->v:I

    .line 11
    .line 12
    iget v7, p1, Landroidx/media3/common/r;->w:I

    .line 13
    .line 14
    const/4 v8, -0x1

    .line 15
    if-eq v6, v8, :cond_e

    .line 16
    .line 17
    if-ne v7, v8, :cond_0

    .line 18
    .line 19
    goto/16 :goto_5

    .line 20
    .line 21
    :cond_0
    iget-object v9, p1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v9}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v9

    .line 27
    check-cast v9, Ljava/lang/String;

    .line 28
    .line 29
    const-string v10, "video/dolby-vision"

    .line 30
    .line 31
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v10

    .line 35
    if-eqz v10, :cond_4

    .line 36
    .line 37
    invoke-static {p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->i(Landroidx/media3/common/r;)Landroid/util/Pair;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p1, Ljava/lang/Integer;

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    const/16 v9, 0x200

    .line 52
    .line 53
    if-eq p1, v9, :cond_2

    .line 54
    .line 55
    if-eq p1, v4, :cond_2

    .line 56
    .line 57
    if-ne p1, v5, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const/16 v9, 0x400

    .line 61
    .line 62
    if-ne p1, v9, :cond_3

    .line 63
    .line 64
    move-object v9, v3

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    :goto_0
    move-object v9, v2

    .line 67
    goto :goto_1

    .line 68
    :cond_3
    move-object v9, v1

    .line 69
    :cond_4
    :goto_1
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    .line 70
    .line 71
    .line 72
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    sparse-switch p1, :sswitch_data_0

    .line 77
    .line 78
    .line 79
    :goto_2
    move v4, v8

    .line 80
    goto :goto_3

    .line 81
    :sswitch_0
    const-string p1, "video/x-vnd.on2.vp9"

    .line 82
    .line 83
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-nez p1, :cond_5

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_5
    const/4 v4, 0x6

    .line 91
    goto :goto_3

    .line 92
    :sswitch_1
    const-string p1, "video/x-vnd.on2.vp8"

    .line 93
    .line 94
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-nez p1, :cond_6

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_6
    const/4 v4, 0x5

    .line 102
    goto :goto_3

    .line 103
    :sswitch_2
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-nez p1, :cond_7

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_7
    move v4, v0

    .line 111
    goto :goto_3

    .line 112
    :sswitch_3
    const-string p1, "video/mp4v-es"

    .line 113
    .line 114
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-nez p1, :cond_8

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_8
    const/4 v4, 0x3

    .line 122
    goto :goto_3

    .line 123
    :sswitch_4
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-nez p1, :cond_9

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_9
    move v4, v5

    .line 131
    goto :goto_3

    .line 132
    :sswitch_5
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-nez p1, :cond_b

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :sswitch_6
    const-string p1, "video/3gpp"

    .line 140
    .line 141
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    if-nez p1, :cond_a

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_a
    const/4 v4, 0x0

    .line 149
    :cond_b
    :goto_3
    packed-switch v4, :pswitch_data_0

    .line 150
    .line 151
    .line 152
    return v8

    .line 153
    :pswitch_0
    mul-int/2addr v6, v7

    .line 154
    invoke-static {v6, v0}, Landroidx/media3/exoplayer/video/j;->P1(II)I

    .line 155
    .line 156
    .line 157
    move-result p0

    .line 158
    return p0

    .line 159
    :pswitch_1
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 160
    .line 161
    const-string v0, "BRAVIA 4K 2015"

    .line 162
    .line 163
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-nez v0, :cond_d

    .line 168
    .line 169
    const-string v0, "Amazon"

    .line 170
    .line 171
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    if-eqz v0, :cond_c

    .line 178
    .line 179
    const-string v0, "KFSOWI"

    .line 180
    .line 181
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    if-nez v0, :cond_d

    .line 186
    .line 187
    const-string v0, "AFTS"

    .line 188
    .line 189
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    if-eqz p1, :cond_c

    .line 194
    .line 195
    iget-boolean p0, p0, Landroidx/media3/exoplayer/mediacodec/w;->g:Z

    .line 196
    .line 197
    if-eqz p0, :cond_c

    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_c
    const/16 p0, 0x10

    .line 201
    .line 202
    invoke-static {v6, p0}, Landroidx/media3/common/util/a1;->k(II)I

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    invoke-static {v7, p0}, Landroidx/media3/common/util/a1;->k(II)I

    .line 207
    .line 208
    .line 209
    move-result p0

    .line 210
    mul-int/2addr p1, p0

    .line 211
    mul-int/lit16 p1, p1, 0x100

    .line 212
    .line 213
    invoke-static {p1, v5}, Landroidx/media3/exoplayer/video/j;->P1(II)I

    .line 214
    .line 215
    .line 216
    move-result p0

    .line 217
    return p0

    .line 218
    :cond_d
    :goto_4
    return v8

    .line 219
    :pswitch_2
    mul-int/2addr v6, v7

    .line 220
    invoke-static {v6, v5}, Landroidx/media3/exoplayer/video/j;->P1(II)I

    .line 221
    .line 222
    .line 223
    move-result p0

    .line 224
    const/high16 p1, 0x200000

    .line 225
    .line 226
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    .line 227
    .line 228
    .line 229
    move-result p0

    .line 230
    return p0

    .line 231
    :pswitch_3
    mul-int/2addr v6, v7

    .line 232
    invoke-static {v6, v5}, Landroidx/media3/exoplayer/video/j;->P1(II)I

    .line 233
    .line 234
    .line 235
    move-result p0

    .line 236
    return p0

    .line 237
    :cond_e
    :goto_5
    return v8

    .line 238
    nop

    .line 239
    :sswitch_data_0
    .sparse-switch
        -0x63306f58 -> :sswitch_6
        -0x631b55f6 -> :sswitch_5
        -0x63185e82 -> :sswitch_4
        0x46cdc642 -> :sswitch_3
        0x4f62373a -> :sswitch_2
        0x5f50bed8 -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch

    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private static L1(Landroidx/media3/exoplayer/mediacodec/w;Landroidx/media3/common/r;)Landroid/graphics/Point;
    .locals 13

    .line 1
    iget v0, p1, Landroidx/media3/common/r;->w:I

    .line 2
    .line 3
    iget v1, p1, Landroidx/media3/common/r;->v:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-le v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v3, v2

    .line 11
    :goto_0
    if-eqz v3, :cond_1

    .line 12
    .line 13
    move v4, v0

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move v4, v1

    .line 16
    :goto_1
    if-eqz v3, :cond_2

    .line 17
    .line 18
    move v0, v1

    .line 19
    :cond_2
    int-to-float v1, v0

    .line 20
    int-to-float v5, v4

    .line 21
    div-float/2addr v1, v5

    .line 22
    sget-object v5, Landroidx/media3/exoplayer/video/j;->L1:[I

    .line 23
    .line 24
    array-length v6, v5

    .line 25
    :goto_2
    const/4 v7, 0x0

    .line 26
    if-ge v2, v6, :cond_7

    .line 27
    .line 28
    aget v8, v5, v2

    .line 29
    .line 30
    int-to-float v9, v8

    .line 31
    mul-float/2addr v9, v1

    .line 32
    float-to-int v9, v9

    .line 33
    if-le v8, v4, :cond_7

    .line 34
    .line 35
    if-gt v9, v0, :cond_3

    .line 36
    .line 37
    goto :goto_5

    .line 38
    :cond_3
    if-eqz v3, :cond_4

    .line 39
    .line 40
    move v7, v9

    .line 41
    goto :goto_3

    .line 42
    :cond_4
    move v7, v8

    .line 43
    :goto_3
    if-eqz v3, :cond_5

    .line 44
    .line 45
    goto :goto_4

    .line 46
    :cond_5
    move v8, v9

    .line 47
    :goto_4
    invoke-virtual {p0, v7, v8}, Landroidx/media3/exoplayer/mediacodec/w;->c(II)Landroid/graphics/Point;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    iget v8, p1, Landroidx/media3/common/r;->x:F

    .line 52
    .line 53
    if-eqz v7, :cond_6

    .line 54
    .line 55
    iget v9, v7, Landroid/graphics/Point;->x:I

    .line 56
    .line 57
    iget v10, v7, Landroid/graphics/Point;->y:I

    .line 58
    .line 59
    float-to-double v11, v8

    .line 60
    invoke-virtual {p0, v9, v10, v11, v12}, Landroidx/media3/exoplayer/mediacodec/w;->u(IID)Z

    .line 61
    .line 62
    .line 63
    move-result v8

    .line 64
    if-eqz v8, :cond_6

    .line 65
    .line 66
    return-object v7

    .line 67
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_7
    :goto_5
    return-object v7
.end method

.method private static N1(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/h0;Landroidx/media3/common/r;ZZ)Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p2, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    sget v1, Landroidx/media3/common/util/a1;->a:I

    .line 11
    .line 12
    const/16 v2, 0x1a

    .line 13
    .line 14
    if-lt v1, v2, :cond_1

    .line 15
    .line 16
    const-string v1, "video/dolby-vision"

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-static {p0}, Landroidx/media3/exoplayer/video/j$c;->a(Landroid/content/Context;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-nez p0, :cond_1

    .line 29
    .line 30
    invoke-static {p1, p2, p3, p4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->g(Landroidx/media3/exoplayer/mediacodec/h0;Landroidx/media3/common/r;ZZ)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_1
    invoke-static {p1, p2, p3, p4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->m(Landroidx/media3/exoplayer/mediacodec/h0;Landroidx/media3/common/r;ZZ)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method protected static O1(Landroidx/media3/exoplayer/mediacodec/w;Landroidx/media3/common/r;)I
    .locals 3

    .line 1
    iget v0, p1, Landroidx/media3/common/r;->p:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    iget-object p0, p1, Landroidx/media3/common/r;->r:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    const/4 v0, 0x0

    .line 13
    move v1, v0

    .line 14
    :goto_0
    if-ge v0, p0, :cond_0

    .line 15
    .line 16
    iget-object v2, p1, Landroidx/media3/common/r;->r:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, [B

    .line 23
    .line 24
    array-length v2, v2

    .line 25
    add-int/2addr v1, v2

    .line 26
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget p0, p1, Landroidx/media3/common/r;->p:I

    .line 30
    .line 31
    add-int/2addr p0, v1

    .line 32
    return p0

    .line 33
    :cond_1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/video/j;->K1(Landroidx/media3/exoplayer/mediacodec/w;Landroidx/media3/common/r;)I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    return p0
.end method

.method private static P1(II)I
    .locals 0

    .line 1
    mul-int/lit8 p0, p0, 0x3

    .line 2
    .line 3
    mul-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    div-int/2addr p0, p1

    .line 6
    return p0
.end method

.method private R1(Landroidx/media3/exoplayer/mediacodec/w;)Landroid/view/Surface;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->m()Landroid/view/Surface;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->V0:Landroid/view/Surface;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/j;->v2(Landroidx/media3/exoplayer/mediacodec/w;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    return-object p1

    .line 23
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/j;->w2(Landroidx/media3/exoplayer/mediacodec/w;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->W0:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    iget-boolean v0, v0, Landroidx/media3/exoplayer/video/PlaceholderSurface;->secure:Z

    .line 35
    .line 36
    iget-boolean v1, p1, Landroidx/media3/exoplayer/mediacodec/w;->g:Z

    .line 37
    .line 38
    if-eq v0, v1, :cond_3

    .line 39
    .line 40
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/j;->j2()V

    .line 41
    .line 42
    .line 43
    :cond_3
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->W0:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    .line 44
    .line 45
    if-nez v0, :cond_4

    .line 46
    .line 47
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->F0:Landroid/content/Context;

    .line 48
    .line 49
    iget-boolean p1, p1, Landroidx/media3/exoplayer/mediacodec/w;->g:Z

    .line 50
    .line 51
    invoke-static {v0, p1}, Landroidx/media3/exoplayer/video/PlaceholderSurface;->newInstance(Landroid/content/Context;Z)Landroidx/media3/exoplayer/video/PlaceholderSurface;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iput-object p1, p0, Landroidx/media3/exoplayer/video/j;->W0:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    .line 56
    .line 57
    :cond_4
    iget-object p1, p0, Landroidx/media3/exoplayer/video/j;->W0:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    .line 58
    .line 59
    return-object p1
.end method

.method private S1(Landroidx/media3/exoplayer/mediacodec/w;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->V0:Landroid/view/Surface;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/j;->v2(Landroidx/media3/exoplayer/mediacodec/w;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/j;->w2(Landroidx/media3/exoplayer/mediacodec/w;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 p1, 0x0

    .line 29
    goto :goto_1

    .line 30
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 31
    :goto_1
    return p1
.end method

.method private T1(Landroidx/media3/decoder/DecoderInputBuffer;)Z
    .locals 4

    .line 1
    iget-wide v0, p1, Landroidx/media3/decoder/DecoderInputBuffer;->e:J

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->w()J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    cmp-long p1, v0, v2

    .line 8
    .line 9
    if-gez p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method private U1(Landroidx/media3/decoder/DecoderInputBuffer;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->hasReadStreamToEnd()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_3

    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/media3/decoder/a;->isLastSample()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-wide v2, p0, Landroidx/media3/exoplayer/video/j;->H1:J

    .line 16
    .line 17
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    cmp-long v0, v2, v4

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    return v1

    .line 27
    :cond_1
    iget-wide v2, p1, Landroidx/media3/decoder/DecoderInputBuffer;->e:J

    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->v0()J

    .line 30
    .line 31
    .line 32
    move-result-wide v4

    .line 33
    sub-long/2addr v2, v4

    .line 34
    iget-wide v4, p0, Landroidx/media3/exoplayer/video/j;->H1:J

    .line 35
    .line 36
    sub-long/2addr v4, v2

    .line 37
    const-wide/32 v2, 0x186a0

    .line 38
    .line 39
    .line 40
    cmp-long p1, v4, v2

    .line 41
    .line 42
    if-gtz p1, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const/4 v1, 0x0

    .line 46
    :cond_3
    :goto_0
    return v1
.end method

.method private W1()V
    .locals 6

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/video/j;->t1:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->s()Landroidx/media3/common/util/i;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Landroidx/media3/common/util/i;->elapsedRealtime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-wide v2, p0, Landroidx/media3/exoplayer/video/j;->s1:J

    .line 14
    .line 15
    sub-long v2, v0, v2

    .line 16
    .line 17
    iget-object v4, p0, Landroidx/media3/exoplayer/video/j;->H0:Landroidx/media3/exoplayer/video/i0$a;

    .line 18
    .line 19
    iget v5, p0, Landroidx/media3/exoplayer/video/j;->t1:I

    .line 20
    .line 21
    invoke-virtual {v4, v5, v2, v3}, Landroidx/media3/exoplayer/video/i0$a;->n(IJ)V

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    iput v2, p0, Landroidx/media3/exoplayer/video/j;->t1:I

    .line 26
    .line 27
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/j;->s1:J

    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method private X1()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->K0:Landroidx/media3/exoplayer/video/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/u;->i()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->V0:Landroid/view/Surface;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/j;->f2()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private Y1()V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/video/j;->x1:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/media3/exoplayer/video/j;->H0:Landroidx/media3/exoplayer/video/i0$a;

    .line 6
    .line 7
    iget-wide v2, p0, Landroidx/media3/exoplayer/video/j;->w1:J

    .line 8
    .line 9
    invoke-virtual {v1, v2, v3, v0}, Landroidx/media3/exoplayer/video/i0$a;->B(JI)V

    .line 10
    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/j;->w1:J

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput v0, p0, Landroidx/media3/exoplayer/video/j;->x1:I

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method private Z1(Landroidx/media3/common/m0;)V
    .locals 1

    .line 1
    sget-object v0, Landroidx/media3/common/m0;->e:Landroidx/media3/common/m0;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroidx/media3/common/m0;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->A1:Landroidx/media3/common/m0;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroidx/media3/common/m0;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iput-object p1, p0, Landroidx/media3/exoplayer/video/j;->A1:Landroidx/media3/common/m0;

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->H0:Landroidx/media3/exoplayer/video/i0$a;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/i0$a;->D(Landroidx/media3/common/m0;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method private a2()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->V0:Landroid/view/Surface;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, p0, Landroidx/media3/exoplayer/video/j;->p1:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/media3/exoplayer/video/j;->H0:Landroidx/media3/exoplayer/video/i0$a;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/video/i0$a;->A(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private b2()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->A1:Landroidx/media3/common/m0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/media3/exoplayer/video/j;->H0:Landroidx/media3/exoplayer/video/i0$a;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/video/i0$a;->D(Landroidx/media3/common/m0;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private c2(Landroid/media/MediaFormat;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->F0:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0}, Landroidx/media3/common/util/a1;->H0(Landroid/content/Context;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string v0, "allow-frame-drop"

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method private d2()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/j;->C1:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    sget v0, Landroidx/media3/common/util/a1;->a:I

    .line 6
    .line 7
    const/16 v1, 0x17

    .line 8
    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->l0()Landroidx/media3/exoplayer/mediacodec/t;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    new-instance v2, Landroidx/media3/exoplayer/video/j$f;

    .line 20
    .line 21
    invoke-direct {v2, p0, v1}, Landroidx/media3/exoplayer/video/j$f;-><init>(Landroidx/media3/exoplayer/video/j;Landroidx/media3/exoplayer/mediacodec/t;)V

    .line 22
    .line 23
    .line 24
    iput-object v2, p0, Landroidx/media3/exoplayer/video/j;->E1:Landroidx/media3/exoplayer/video/j$f;

    .line 25
    .line 26
    const/16 v2, 0x21

    .line 27
    .line 28
    if-lt v0, v2, :cond_2

    .line 29
    .line 30
    new-instance v0, Landroid/os/Bundle;

    .line 31
    .line 32
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v2, "tunnel-peek"

    .line 36
    .line 37
    const/4 v3, 0x1

    .line 38
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/mediacodec/t;->b(Landroid/os/Bundle;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    :goto_0
    return-void
.end method

.method private e2(JJLandroidx/media3/common/r;)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->F1:Landroidx/media3/exoplayer/video/t;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->q0()Landroid/media/MediaFormat;

    .line 6
    .line 7
    .line 8
    move-result-object v6

    .line 9
    move-wide v1, p1

    .line 10
    move-wide v3, p3

    .line 11
    move-object v5, p5

    .line 12
    invoke-interface/range {v0 .. v6}, Landroidx/media3/exoplayer/video/t;->f(JJLandroidx/media3/common/r;Landroid/media/MediaFormat;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private f2()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->H0:Landroidx/media3/exoplayer/video/i0$a;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/video/j;->V0:Landroid/view/Surface;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/video/i0$a;->A(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/j;->p1:Z

    .line 10
    .line 11
    return-void
.end method

.method private h2()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->j1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private i2(Landroidx/media3/exoplayer/mediacodec/t;IJLandroidx/media3/common/r;)V
    .locals 12

    .line 1
    move-object v7, p0

    .line 2
    iget-object v0, v7, Landroidx/media3/exoplayer/video/j;->L0:Landroidx/media3/exoplayer/video/u$a;

    .line 3
    .line 4
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/u$a;->g()J

    .line 5
    .line 6
    .line 7
    move-result-wide v8

    .line 8
    iget-object v0, v7, Landroidx/media3/exoplayer/video/j;->L0:Landroidx/media3/exoplayer/video/u$a;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/u$a;->f()J

    .line 11
    .line 12
    .line 13
    move-result-wide v10

    .line 14
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/j;->u2()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-wide v0, v7, Landroidx/media3/exoplayer/video/j;->y1:J

    .line 21
    .line 22
    cmp-long v0, v8, v0

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    invoke-virtual/range {p0 .. p4}, Landroidx/media3/exoplayer/video/j;->x2(Landroidx/media3/exoplayer/mediacodec/t;IJ)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-object v0, p0

    .line 31
    move-wide v1, p3

    .line 32
    move-wide v3, v8

    .line 33
    move-object/from16 v5, p5

    .line 34
    .line 35
    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/video/j;->e2(JJLandroidx/media3/common/r;)V

    .line 36
    .line 37
    .line 38
    move-object v1, p1

    .line 39
    move v2, p2

    .line 40
    move-wide v3, p3

    .line 41
    move-wide v5, v8

    .line 42
    invoke-virtual/range {v0 .. v6}, Landroidx/media3/exoplayer/video/j;->l2(Landroidx/media3/exoplayer/mediacodec/t;IJJ)V

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-virtual {p0, v10, v11}, Landroidx/media3/exoplayer/video/j;->D2(J)V

    .line 46
    .line 47
    .line 48
    iput-wide v8, v7, Landroidx/media3/exoplayer/video/j;->y1:J

    .line 49
    .line 50
    return-void
.end method

.method private j2()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->W0:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/PlaceholderSurface;->release()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroidx/media3/exoplayer/video/j;->W0:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private k2(Landroidx/media3/exoplayer/mediacodec/t;IJJ)V
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p6}, Landroidx/media3/exoplayer/video/j;->l2(Landroidx/media3/exoplayer/mediacodec/t;IJJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static m2(Landroidx/media3/exoplayer/mediacodec/t;[B)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "hdr10-plus-info"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, v0}, Landroidx/media3/exoplayer/mediacodec/t;->b(Landroid/os/Bundle;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private n2(Ljava/lang/Object;)V
    .locals 7

    .line 1
    instance-of v0, p1, Landroid/view/Surface;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Landroid/view/Surface;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object p1, v1

    .line 10
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->V0:Landroid/view/Surface;

    .line 11
    .line 12
    if-eq v0, p1, :cond_8

    .line 13
    .line 14
    iput-object p1, p0, Landroidx/media3/exoplayer/video/j;->V0:Landroid/view/Surface;

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->K0:Landroidx/media3/exoplayer/video/u;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/u;->q(Landroid/view/Surface;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/j;->p1:Z

    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->getState()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->l0()Landroidx/media3/exoplayer/mediacodec/t;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    iget-object v3, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    .line 39
    .line 40
    if-nez v3, :cond_3

    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->n0()Landroidx/media3/exoplayer/mediacodec/w;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-static {v3}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Landroidx/media3/exoplayer/mediacodec/w;

    .line 51
    .line 52
    invoke-direct {p0, v3}, Landroidx/media3/exoplayer/video/j;->S1(Landroidx/media3/exoplayer/mediacodec/w;)Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    sget v5, Landroidx/media3/common/util/a1;->a:I

    .line 57
    .line 58
    const/16 v6, 0x17

    .line 59
    .line 60
    if-lt v5, v6, :cond_2

    .line 61
    .line 62
    if-eqz v4, :cond_2

    .line 63
    .line 64
    iget-boolean v4, p0, Landroidx/media3/exoplayer/video/j;->Q0:Z

    .line 65
    .line 66
    if-nez v4, :cond_2

    .line 67
    .line 68
    invoke-direct {p0, v3}, Landroidx/media3/exoplayer/video/j;->R1(Landroidx/media3/exoplayer/mediacodec/w;)Landroid/view/Surface;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-direct {p0, v2, v3}, Landroidx/media3/exoplayer/video/j;->o2(Landroidx/media3/exoplayer/mediacodec/t;Landroid/view/Surface;)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->b1()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->J0()V

    .line 80
    .line 81
    .line 82
    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 83
    .line 84
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/j;->b2()V

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_4
    iput-object v1, p0, Landroidx/media3/exoplayer/video/j;->A1:Landroidx/media3/common/m0;

    .line 89
    .line 90
    iget-object p1, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    .line 91
    .line 92
    if-eqz p1, :cond_5

    .line 93
    .line 94
    invoke-interface {p1}, Landroidx/media3/exoplayer/video/VideoSink;->s()V

    .line 95
    .line 96
    .line 97
    :cond_5
    :goto_2
    const/4 p1, 0x2

    .line 98
    if-ne v0, p1, :cond_7

    .line 99
    .line 100
    iget-object p1, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    .line 101
    .line 102
    const/4 v0, 0x1

    .line 103
    if-eqz p1, :cond_6

    .line 104
    .line 105
    invoke-interface {p1, v0}, Landroidx/media3/exoplayer/video/VideoSink;->u(Z)V

    .line 106
    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_6
    iget-object p1, p0, Landroidx/media3/exoplayer/video/j;->K0:Landroidx/media3/exoplayer/video/u;

    .line 110
    .line 111
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/video/u;->e(Z)V

    .line 112
    .line 113
    .line 114
    :cond_7
    :goto_3
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/j;->d2()V

    .line 115
    .line 116
    .line 117
    goto :goto_4

    .line 118
    :cond_8
    if-eqz p1, :cond_9

    .line 119
    .line 120
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/j;->b2()V

    .line 121
    .line 122
    .line 123
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/j;->a2()V

    .line 124
    .line 125
    .line 126
    :cond_9
    :goto_4
    return-void
.end method

.method private o2(Landroidx/media3/exoplayer/mediacodec/t;Landroid/view/Surface;)V
    .locals 2

    .line 1
    sget v0, Landroidx/media3/common/util/a1;->a:I

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/video/j;->p2(Landroidx/media3/exoplayer/mediacodec/t;Landroid/view/Surface;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/16 p2, 0x23

    .line 14
    .line 15
    if-lt v0, p2, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/j;->F1(Landroidx/media3/exoplayer/mediacodec/t;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void

    .line 21
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 24
    .line 25
    .line 26
    throw p1
.end method

.method static synthetic x1(Landroidx/media3/exoplayer/video/j;)Landroid/view/Surface;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/video/j;->V0:Landroid/view/Surface;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic y1(Landroidx/media3/exoplayer/video/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/j;->f2()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static y2(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/h0;Landroidx/media3/common/r;)I
    .locals 10

    .line 1
    iget-object v0, p2, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/y;->t(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-static {v1}, Landroidx/media3/exoplayer/x3;->a(I)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_0
    iget-object v0, p2, Landroidx/media3/common/r;->s:Landroidx/media3/common/DrmInitData;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    move v0, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move v0, v1

    .line 23
    :goto_0
    invoke-static {p0, p1, p2, v0, v1}, Landroidx/media3/exoplayer/video/j;->N1(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/h0;Landroidx/media3/common/r;ZZ)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_2

    .line 34
    .line 35
    invoke-static {p0, p1, p2, v1, v1}, Landroidx/media3/exoplayer/video/j;->N1(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/h0;Landroidx/media3/common/r;ZZ)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_3

    .line 44
    .line 45
    invoke-static {v2}, Landroidx/media3/exoplayer/x3;->a(I)I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    return p0

    .line 50
    :cond_3
    invoke-static {p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->t1(Landroidx/media3/common/r;)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-nez v4, :cond_4

    .line 55
    .line 56
    const/4 p0, 0x2

    .line 57
    invoke-static {p0}, Landroidx/media3/exoplayer/x3;->a(I)I

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    return p0

    .line 62
    :cond_4
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    check-cast v4, Landroidx/media3/exoplayer/mediacodec/w;

    .line 67
    .line 68
    invoke-virtual {v4, p2}, Landroidx/media3/exoplayer/mediacodec/w;->o(Landroidx/media3/common/r;)Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-nez v5, :cond_6

    .line 73
    .line 74
    move v6, v2

    .line 75
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    if-ge v6, v7, :cond_6

    .line 80
    .line 81
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    check-cast v7, Landroidx/media3/exoplayer/mediacodec/w;

    .line 86
    .line 87
    invoke-virtual {v7, p2}, Landroidx/media3/exoplayer/mediacodec/w;->o(Landroidx/media3/common/r;)Z

    .line 88
    .line 89
    .line 90
    move-result v8

    .line 91
    if-eqz v8, :cond_5

    .line 92
    .line 93
    move v3, v1

    .line 94
    move v5, v2

    .line 95
    move-object v4, v7

    .line 96
    goto :goto_2

    .line 97
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_6
    move v3, v2

    .line 101
    :goto_2
    if-eqz v5, :cond_7

    .line 102
    .line 103
    const/4 v6, 0x4

    .line 104
    goto :goto_3

    .line 105
    :cond_7
    const/4 v6, 0x3

    .line 106
    :goto_3
    invoke-virtual {v4, p2}, Landroidx/media3/exoplayer/mediacodec/w;->r(Landroidx/media3/common/r;)Z

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    if-eqz v7, :cond_8

    .line 111
    .line 112
    const/16 v7, 0x10

    .line 113
    .line 114
    goto :goto_4

    .line 115
    :cond_8
    const/16 v7, 0x8

    .line 116
    .line 117
    :goto_4
    iget-boolean v4, v4, Landroidx/media3/exoplayer/mediacodec/w;->h:Z

    .line 118
    .line 119
    if-eqz v4, :cond_9

    .line 120
    .line 121
    const/16 v4, 0x40

    .line 122
    .line 123
    goto :goto_5

    .line 124
    :cond_9
    move v4, v1

    .line 125
    :goto_5
    if-eqz v3, :cond_a

    .line 126
    .line 127
    const/16 v3, 0x80

    .line 128
    .line 129
    goto :goto_6

    .line 130
    :cond_a
    move v3, v1

    .line 131
    :goto_6
    sget v8, Landroidx/media3/common/util/a1;->a:I

    .line 132
    .line 133
    const/16 v9, 0x1a

    .line 134
    .line 135
    if-lt v8, v9, :cond_b

    .line 136
    .line 137
    const-string v8, "video/dolby-vision"

    .line 138
    .line 139
    iget-object v9, p2, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v8

    .line 145
    if-eqz v8, :cond_b

    .line 146
    .line 147
    invoke-static {p0}, Landroidx/media3/exoplayer/video/j$c;->a(Landroid/content/Context;)Z

    .line 148
    .line 149
    .line 150
    move-result v8

    .line 151
    if-nez v8, :cond_b

    .line 152
    .line 153
    const/16 v3, 0x100

    .line 154
    .line 155
    :cond_b
    if-eqz v5, :cond_c

    .line 156
    .line 157
    invoke-static {p0, p1, p2, v0, v2}, Landroidx/media3/exoplayer/video/j;->N1(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/h0;Landroidx/media3/common/r;ZZ)Ljava/util/List;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    if-nez p1, :cond_c

    .line 166
    .line 167
    invoke-static {p0, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->n(Ljava/util/List;Landroidx/media3/common/r;)Ljava/util/List;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    check-cast p0, Landroidx/media3/exoplayer/mediacodec/w;

    .line 176
    .line 177
    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/mediacodec/w;->o(Landroidx/media3/common/r;)Z

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    if-eqz p1, :cond_c

    .line 182
    .line 183
    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/mediacodec/w;->r(Landroidx/media3/common/r;)Z

    .line 184
    .line 185
    .line 186
    move-result p0

    .line 187
    if-eqz p0, :cond_c

    .line 188
    .line 189
    const/16 v1, 0x20

    .line 190
    .line 191
    :cond_c
    invoke-static {v6, v7, v1, v4, v3}, Landroidx/media3/exoplayer/x3;->d(IIIII)I

    .line 192
    .line 193
    .line 194
    move-result p0

    .line 195
    return p0
.end method

.method static synthetic z1(Landroidx/media3/exoplayer/video/j;Landroidx/media3/exoplayer/mediacodec/t;IJJ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Landroidx/media3/exoplayer/video/j;->k2(Landroidx/media3/exoplayer/mediacodec/t;IJJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private z2()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->l0()Landroidx/media3/exoplayer/mediacodec/t;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget v1, Landroidx/media3/common/util/a1;->a:I

    .line 9
    .line 10
    const/16 v2, 0x23

    .line 11
    .line 12
    if-lt v1, v2, :cond_1

    .line 13
    .line 14
    new-instance v1, Landroid/os/Bundle;

    .line 15
    .line 16
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 17
    .line 18
    .line 19
    iget v2, p0, Landroidx/media3/exoplayer/video/j;->B1:I

    .line 20
    .line 21
    neg-int v2, v2

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const-string v3, "importance"

    .line 28
    .line 29
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/mediacodec/t;->b(Landroid/os/Bundle;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method


# virtual methods
.method protected A2(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Landroidx/media3/exoplayer/j;

    .line 2
    .line 3
    iget v1, v0, Landroidx/media3/exoplayer/j;->h:I

    .line 4
    .line 5
    add-int/2addr v1, p1

    .line 6
    iput v1, v0, Landroidx/media3/exoplayer/j;->h:I

    .line 7
    .line 8
    add-int/2addr p1, p2

    .line 9
    iget p2, v0, Landroidx/media3/exoplayer/j;->g:I

    .line 10
    .line 11
    add-int/2addr p2, p1

    .line 12
    iput p2, v0, Landroidx/media3/exoplayer/j;->g:I

    .line 13
    .line 14
    iget p2, p0, Landroidx/media3/exoplayer/video/j;->t1:I

    .line 15
    .line 16
    add-int/2addr p2, p1

    .line 17
    iput p2, p0, Landroidx/media3/exoplayer/video/j;->t1:I

    .line 18
    .line 19
    iget p2, p0, Landroidx/media3/exoplayer/video/j;->u1:I

    .line 20
    .line 21
    add-int/2addr p2, p1

    .line 22
    iput p2, p0, Landroidx/media3/exoplayer/video/j;->u1:I

    .line 23
    .line 24
    iget p1, v0, Landroidx/media3/exoplayer/j;->i:I

    .line 25
    .line 26
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iput p1, v0, Landroidx/media3/exoplayer/j;->i:I

    .line 31
    .line 32
    iget p1, p0, Landroidx/media3/exoplayer/video/j;->I0:I

    .line 33
    .line 34
    if-lez p1, :cond_0

    .line 35
    .line 36
    iget p2, p0, Landroidx/media3/exoplayer/video/j;->t1:I

    .line 37
    .line 38
    if-lt p2, p1, :cond_0

    .line 39
    .line 40
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/j;->W1()V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method protected C()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/media3/exoplayer/video/j;->A1:Landroidx/media3/common/m0;

    .line 3
    .line 4
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    iput-wide v1, p0, Landroidx/media3/exoplayer/video/j;->H1:J

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v1}, Landroidx/media3/exoplayer/video/VideoSink;->q()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/video/j;->K0:Landroidx/media3/exoplayer/video/u;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroidx/media3/exoplayer/video/u;->g()V

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/j;->d2()V

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    iput-boolean v1, p0, Landroidx/media3/exoplayer/video/j;->p1:Z

    .line 29
    .line 30
    iput-object v0, p0, Landroidx/media3/exoplayer/video/j;->E1:Landroidx/media3/exoplayer/video/j$f;

    .line 31
    .line 32
    :try_start_0
    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->C()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->H0:Landroidx/media3/exoplayer/video/i0$a;

    .line 36
    .line 37
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Landroidx/media3/exoplayer/j;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/video/i0$a;->m(Landroidx/media3/exoplayer/j;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->H0:Landroidx/media3/exoplayer/video/i0$a;

    .line 43
    .line 44
    sget-object v1, Landroidx/media3/common/m0;->e:Landroidx/media3/common/m0;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/video/i0$a;->D(Landroidx/media3/common/m0;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    iget-object v1, p0, Landroidx/media3/exoplayer/video/j;->H0:Landroidx/media3/exoplayer/video/i0$a;

    .line 52
    .line 53
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Landroidx/media3/exoplayer/j;

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/video/i0$a;->m(Landroidx/media3/exoplayer/j;)V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Landroidx/media3/exoplayer/video/j;->H0:Landroidx/media3/exoplayer/video/i0$a;

    .line 59
    .line 60
    sget-object v2, Landroidx/media3/common/m0;->e:Landroidx/media3/common/m0;

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/video/i0$a;->D(Landroidx/media3/common/m0;)V

    .line 63
    .line 64
    .line 65
    throw v0
.end method

.method protected D(ZZ)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->D(ZZ)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->t()Landroidx/media3/exoplayer/z3;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-boolean p1, p1, Landroidx/media3/exoplayer/z3;->b:Z

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget v2, p0, Landroidx/media3/exoplayer/video/j;->D1:I

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v2, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    move v2, v1

    .line 22
    :goto_1
    invoke-static {v2}, Landroidx/media3/common/util/a;->g(Z)V

    .line 23
    .line 24
    .line 25
    iget-boolean v2, p0, Landroidx/media3/exoplayer/video/j;->C1:Z

    .line 26
    .line 27
    if-eq v2, p1, :cond_2

    .line 28
    .line 29
    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/j;->C1:Z

    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->b1()V

    .line 32
    .line 33
    .line 34
    :cond_2
    iget-object p1, p0, Landroidx/media3/exoplayer/video/j;->H0:Landroidx/media3/exoplayer/video/i0$a;

    .line 35
    .line 36
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Landroidx/media3/exoplayer/j;

    .line 37
    .line 38
    invoke-virtual {p1, v2}, Landroidx/media3/exoplayer/video/i0$a;->o(Landroidx/media3/exoplayer/j;)V

    .line 39
    .line 40
    .line 41
    iget-boolean p1, p0, Landroidx/media3/exoplayer/video/j;->T0:Z

    .line 42
    .line 43
    if-nez p1, :cond_4

    .line 44
    .line 45
    iget-object p1, p0, Landroidx/media3/exoplayer/video/j;->U0:Ljava/util/List;

    .line 46
    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    iget-object p1, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    .line 50
    .line 51
    if-nez p1, :cond_3

    .line 52
    .line 53
    new-instance p1, Landroidx/media3/exoplayer/video/q$b;

    .line 54
    .line 55
    iget-object v2, p0, Landroidx/media3/exoplayer/video/j;->F0:Landroid/content/Context;

    .line 56
    .line 57
    iget-object v3, p0, Landroidx/media3/exoplayer/video/j;->K0:Landroidx/media3/exoplayer/video/u;

    .line 58
    .line 59
    invoke-direct {p1, v2, v3}, Landroidx/media3/exoplayer/video/q$b;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/video/u;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->s()Landroidx/media3/common/util/i;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {p1, v2}, Landroidx/media3/exoplayer/video/q$b;->i(Landroidx/media3/common/util/i;)Landroidx/media3/exoplayer/video/q$b;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Landroidx/media3/exoplayer/video/q$b;->h()Landroidx/media3/exoplayer/video/q;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1, v1}, Landroidx/media3/exoplayer/video/q;->O(I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/video/q;->B(I)Landroidx/media3/exoplayer/video/VideoSink;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iput-object p1, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    .line 82
    .line 83
    :cond_3
    iput-boolean v1, p0, Landroidx/media3/exoplayer/video/j;->T0:Z

    .line 84
    .line 85
    :cond_4
    iget-object p1, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    .line 86
    .line 87
    if-eqz p1, :cond_8

    .line 88
    .line 89
    new-instance v0, Landroidx/media3/exoplayer/video/j$a;

    .line 90
    .line 91
    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/video/j$a;-><init>(Landroidx/media3/exoplayer/video/j;)V

    .line 92
    .line 93
    .line 94
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->a()Ljava/util/concurrent/Executor;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-interface {p1, v0, v1}, Landroidx/media3/exoplayer/video/VideoSink;->v(Landroidx/media3/exoplayer/video/VideoSink$a;Ljava/util/concurrent/Executor;)V

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Landroidx/media3/exoplayer/video/j;->F1:Landroidx/media3/exoplayer/video/t;

    .line 102
    .line 103
    if-eqz p1, :cond_5

    .line 104
    .line 105
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    .line 106
    .line 107
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/video/VideoSink;->d(Landroidx/media3/exoplayer/video/t;)V

    .line 108
    .line 109
    .line 110
    :cond_5
    iget-object p1, p0, Landroidx/media3/exoplayer/video/j;->V0:Landroid/view/Surface;

    .line 111
    .line 112
    if-eqz p1, :cond_6

    .line 113
    .line 114
    iget-object p1, p0, Landroidx/media3/exoplayer/video/j;->X0:Landroidx/media3/common/util/l0;

    .line 115
    .line 116
    sget-object v0, Landroidx/media3/common/util/l0;->c:Landroidx/media3/common/util/l0;

    .line 117
    .line 118
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/l0;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    if-nez p1, :cond_6

    .line 123
    .line 124
    iget-object p1, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    .line 125
    .line 126
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->V0:Landroid/view/Surface;

    .line 127
    .line 128
    iget-object v1, p0, Landroidx/media3/exoplayer/video/j;->X0:Landroidx/media3/common/util/l0;

    .line 129
    .line 130
    invoke-interface {p1, v0, v1}, Landroidx/media3/exoplayer/video/VideoSink;->p(Landroid/view/Surface;Landroidx/media3/common/util/l0;)V

    .line 131
    .line 132
    .line 133
    :cond_6
    iget-object p1, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    .line 134
    .line 135
    iget v0, p0, Landroidx/media3/exoplayer/video/j;->r1:I

    .line 136
    .line 137
    invoke-interface {p1, v0}, Landroidx/media3/exoplayer/video/VideoSink;->r(I)V

    .line 138
    .line 139
    .line 140
    iget-object p1, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    .line 141
    .line 142
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->x0()F

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    invoke-interface {p1, v0}, Landroidx/media3/exoplayer/video/VideoSink;->a(F)V

    .line 147
    .line 148
    .line 149
    iget-object p1, p0, Landroidx/media3/exoplayer/video/j;->U0:Ljava/util/List;

    .line 150
    .line 151
    if-eqz p1, :cond_7

    .line 152
    .line 153
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    .line 154
    .line 155
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/video/VideoSink;->i(Ljava/util/List;)V

    .line 156
    .line 157
    .line 158
    :cond_7
    iget-object p1, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    .line 159
    .line 160
    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/video/VideoSink;->l(Z)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y0()Landroidx/media3/exoplayer/w3$a;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    if-eqz p1, :cond_9

    .line 168
    .line 169
    iget-object p2, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    .line 170
    .line 171
    invoke-interface {p2, p1}, Landroidx/media3/exoplayer/video/VideoSink;->h(Landroidx/media3/exoplayer/w3$a;)V

    .line 172
    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_8
    iget-object p1, p0, Landroidx/media3/exoplayer/video/j;->K0:Landroidx/media3/exoplayer/video/u;

    .line 176
    .line 177
    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->s()Landroidx/media3/common/util/i;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/video/u;->o(Landroidx/media3/common/util/i;)V

    .line 182
    .line 183
    .line 184
    iget-object p1, p0, Landroidx/media3/exoplayer/video/j;->K0:Landroidx/media3/exoplayer/video/u;

    .line 185
    .line 186
    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/video/u;->h(Z)V

    .line 187
    .line 188
    .line 189
    :cond_9
    :goto_2
    return-void
.end method

.method protected D1(Landroidx/media3/exoplayer/video/VideoSink;ILandroidx/media3/common/r;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->U0:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :goto_0
    invoke-interface {p1, p2, p3, v0}, Landroidx/media3/exoplayer/video/VideoSink;->o(ILandroidx/media3/common/r;Ljava/util/List;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method protected D2(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Landroidx/media3/exoplayer/j;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/j;->a(J)V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/j;->w1:J

    .line 7
    .line 8
    add-long/2addr v0, p1

    .line 9
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/j;->w1:J

    .line 10
    .line 11
    iget p1, p0, Landroidx/media3/exoplayer/video/j;->x1:I

    .line 12
    .line 13
    add-int/lit8 p1, p1, 0x1

    .line 14
    .line 15
    iput p1, p0, Landroidx/media3/exoplayer/video/j;->x1:I

    .line 16
    .line 17
    return-void
.end method

.method protected E()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/media3/exoplayer/i;->E()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected E1(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "OMX.google"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_0
    const-class p1, Landroidx/media3/exoplayer/video/j;

    .line 12
    .line 13
    monitor-enter p1

    .line 14
    :try_start_0
    sget-boolean v0, Landroidx/media3/exoplayer/video/j;->M1:Z

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    invoke-static {}, Landroidx/media3/exoplayer/video/j;->I1()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    sput-boolean v0, Landroidx/media3/exoplayer/video/j;->N1:Z

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    sput-boolean v0, Landroidx/media3/exoplayer/video/j;->M1:Z

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    sget-boolean p1, Landroidx/media3/exoplayer/video/j;->N1:Z

    .line 32
    .line 33
    return p1

    .line 34
    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    throw v0
.end method

.method protected F(JZ)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez p3, :cond_0

    .line 7
    .line 8
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/video/VideoSink;->t(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w0()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/j;->J1()J

    .line 18
    .line 19
    .line 20
    move-result-wide v4

    .line 21
    invoke-interface {v0, v2, v3, v4, v5}, Landroidx/media3/exoplayer/video/VideoSink;->f(JJ)V

    .line 22
    .line 23
    .line 24
    iput-boolean v1, p0, Landroidx/media3/exoplayer/video/j;->I1:Z

    .line 25
    .line 26
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F(JZ)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    .line 30
    .line 31
    if-nez p1, :cond_2

    .line 32
    .line 33
    iget-object p1, p0, Landroidx/media3/exoplayer/video/j;->K0:Landroidx/media3/exoplayer/video/u;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroidx/media3/exoplayer/video/u;->m()V

    .line 36
    .line 37
    .line 38
    :cond_2
    const/4 p1, 0x0

    .line 39
    if-eqz p3, :cond_4

    .line 40
    .line 41
    iget-object p2, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    .line 42
    .line 43
    if-eqz p2, :cond_3

    .line 44
    .line 45
    invoke-interface {p2, p1}, Landroidx/media3/exoplayer/video/VideoSink;->u(Z)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    iget-object p2, p0, Landroidx/media3/exoplayer/video/j;->K0:Landroidx/media3/exoplayer/video/u;

    .line 50
    .line 51
    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/video/u;->e(Z)V

    .line 52
    .line 53
    .line 54
    :cond_4
    :goto_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/j;->d2()V

    .line 55
    .line 56
    .line 57
    iput p1, p0, Landroidx/media3/exoplayer/video/j;->u1:I

    .line 58
    .line 59
    return-void
.end method

.method protected F1(Landroidx/media3/exoplayer/mediacodec/t;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Landroidx/media3/exoplayer/mediacodec/t;->o()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected G()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/media3/exoplayer/i;->G()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-boolean v1, p0, Landroidx/media3/exoplayer/video/j;->G0:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->release()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method protected H1(Landroidx/media3/exoplayer/mediacodec/t;IJ)V
    .locals 0

    .line 1
    const-string p3, "dropVideoBuffer"

    .line 2
    .line 3
    invoke-static {p3}, Landroidx/media3/common/util/q0;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p3, 0x0

    .line 7
    invoke-interface {p1, p2, p3}, Landroidx/media3/exoplayer/mediacodec/t;->k(IZ)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroidx/media3/common/util/q0;->b()V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0, p3, p1}, Landroidx/media3/exoplayer/video/j;->A2(II)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method protected I()V
    .locals 4

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    :try_start_0
    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->I()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    iput-boolean v2, p0, Landroidx/media3/exoplayer/video/j;->T0:Z

    .line 11
    .line 12
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/j;->G1:J

    .line 13
    .line 14
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/j;->j2()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception v3

    .line 19
    iput-boolean v2, p0, Landroidx/media3/exoplayer/video/j;->T0:Z

    .line 20
    .line 21
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/j;->G1:J

    .line 22
    .line 23
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/j;->j2()V

    .line 24
    .line 25
    .line 26
    throw v3
.end method

.method protected J()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->J()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/media3/exoplayer/video/j;->t1:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->s()Landroidx/media3/common/util/i;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v1}, Landroidx/media3/common/util/i;->elapsedRealtime()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    iput-wide v1, p0, Landroidx/media3/exoplayer/video/j;->s1:J

    .line 16
    .line 17
    const-wide/16 v1, 0x0

    .line 18
    .line 19
    iput-wide v1, p0, Landroidx/media3/exoplayer/video/j;->w1:J

    .line 20
    .line 21
    iput v0, p0, Landroidx/media3/exoplayer/video/j;->x1:I

    .line 22
    .line 23
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->n()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->K0:Landroidx/media3/exoplayer/video/u;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/u;->k()V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method

.method protected J1()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/j;->G1:J

    .line 2
    .line 3
    neg-long v0, v0

    .line 4
    return-wide v0
.end method

.method protected K()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/j;->W1()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/j;->Y1()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->g()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->K0:Landroidx/media3/exoplayer/video/u;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/u;->l()V

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->K()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method protected L([Landroidx/media3/common/r;JJLandroidx/media3/exoplayer/source/r$b;)V
    .locals 2

    .line 1
    invoke-super/range {p0 .. p6}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->L([Landroidx/media3/common/r;JJLandroidx/media3/exoplayer/source/r$b;)V

    .line 2
    .line 3
    .line 4
    iget-wide p4, p0, Landroidx/media3/exoplayer/video/j;->G1:J

    .line 5
    .line 6
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    cmp-long p1, p4, v0

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    iput-wide p2, p0, Landroidx/media3/exoplayer/video/j;->G1:J

    .line 16
    .line 17
    :cond_0
    invoke-direct {p0, p6}, Landroidx/media3/exoplayer/video/j;->C2(Landroidx/media3/exoplayer/source/r$b;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method protected L0(Landroidx/media3/common/r;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->isInitialized()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/video/VideoSink;->k(Landroidx/media3/common/r;)Z

    .line 14
    .line 15
    .line 16
    move-result p1
    :try_end_0
    .catch Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return p1

    .line 18
    :catch_0
    move-exception v0

    .line 19
    const/16 v1, 0x1b58

    .line 20
    .line 21
    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/i;->q(Ljava/lang/Throwable;Landroidx/media3/common/r;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    throw p1

    .line 26
    :cond_0
    const/4 p1, 0x1

    .line 27
    return p1
.end method

.method protected M0(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    const-string v0, "MediaCodecVideoRenderer"

    .line 2
    .line 3
    const-string v1, "Video codec error"

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Landroidx/media3/common/util/u;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->H0:Landroidx/media3/exoplayer/video/i0$a;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/i0$a;->C(Ljava/lang/Exception;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method protected M1(Landroidx/media3/exoplayer/mediacodec/w;Landroidx/media3/common/r;[Landroidx/media3/common/r;)Landroidx/media3/exoplayer/video/j$e;
    .locals 12

    .line 1
    iget v0, p2, Landroidx/media3/common/r;->v:I

    .line 2
    .line 3
    iget v1, p2, Landroidx/media3/common/r;->w:I

    .line 4
    .line 5
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/video/j;->O1(Landroidx/media3/exoplayer/mediacodec/w;Landroidx/media3/common/r;)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    array-length v3, p3

    .line 10
    const/4 v4, -0x1

    .line 11
    const/4 v5, 0x1

    .line 12
    if-ne v3, v5, :cond_1

    .line 13
    .line 14
    if-eq v2, v4, :cond_0

    .line 15
    .line 16
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/video/j;->K1(Landroidx/media3/exoplayer/mediacodec/w;Landroidx/media3/common/r;)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eq p1, v4, :cond_0

    .line 21
    .line 22
    int-to-float p2, v2

    .line 23
    const/high16 p3, 0x3fc00000    # 1.5f

    .line 24
    .line 25
    mul-float/2addr p2, p3

    .line 26
    float-to-int p2, p2

    .line 27
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    :cond_0
    new-instance p1, Landroidx/media3/exoplayer/video/j$e;

    .line 32
    .line 33
    invoke-direct {p1, v0, v1, v2}, Landroidx/media3/exoplayer/video/j$e;-><init>(III)V

    .line 34
    .line 35
    .line 36
    return-object p1

    .line 37
    :cond_1
    array-length v3, p3

    .line 38
    const/4 v6, 0x0

    .line 39
    move v7, v6

    .line 40
    move v8, v7

    .line 41
    :goto_0
    if-ge v7, v3, :cond_6

    .line 42
    .line 43
    aget-object v9, p3, v7

    .line 44
    .line 45
    iget-object v10, p2, Landroidx/media3/common/r;->C:Landroidx/media3/common/i;

    .line 46
    .line 47
    if-eqz v10, :cond_2

    .line 48
    .line 49
    iget-object v10, v9, Landroidx/media3/common/r;->C:Landroidx/media3/common/i;

    .line 50
    .line 51
    if-nez v10, :cond_2

    .line 52
    .line 53
    invoke-virtual {v9}, Landroidx/media3/common/r;->b()Landroidx/media3/common/r$b;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    iget-object v10, p2, Landroidx/media3/common/r;->C:Landroidx/media3/common/i;

    .line 58
    .line 59
    invoke-virtual {v9, v10}, Landroidx/media3/common/r$b;->T(Landroidx/media3/common/i;)Landroidx/media3/common/r$b;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    invoke-virtual {v9}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    .line 64
    .line 65
    .line 66
    move-result-object v9

    .line 67
    :cond_2
    invoke-virtual {p1, p2, v9}, Landroidx/media3/exoplayer/mediacodec/w;->e(Landroidx/media3/common/r;Landroidx/media3/common/r;)Landroidx/media3/exoplayer/k;

    .line 68
    .line 69
    .line 70
    move-result-object v10

    .line 71
    iget v10, v10, Landroidx/media3/exoplayer/k;->d:I

    .line 72
    .line 73
    if-eqz v10, :cond_5

    .line 74
    .line 75
    iget v10, v9, Landroidx/media3/common/r;->v:I

    .line 76
    .line 77
    if-eq v10, v4, :cond_4

    .line 78
    .line 79
    iget v11, v9, Landroidx/media3/common/r;->w:I

    .line 80
    .line 81
    if-ne v11, v4, :cond_3

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    move v11, v6

    .line 85
    goto :goto_2

    .line 86
    :cond_4
    :goto_1
    move v11, v5

    .line 87
    :goto_2
    or-int/2addr v8, v11

    .line 88
    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    iget v10, v9, Landroidx/media3/common/r;->w:I

    .line 93
    .line 94
    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    invoke-static {p1, v9}, Landroidx/media3/exoplayer/video/j;->O1(Landroidx/media3/exoplayer/mediacodec/w;Landroidx/media3/common/r;)I

    .line 99
    .line 100
    .line 101
    move-result v9

    .line 102
    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    :cond_5
    add-int/lit8 v7, v7, 0x1

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_6
    if-eqz v8, :cond_7

    .line 110
    .line 111
    new-instance p3, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    const-string v3, "Resolutions unknown. Codec max resolution: "

    .line 117
    .line 118
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v3, "x"

    .line 125
    .line 126
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p3

    .line 136
    const-string v4, "MediaCodecVideoRenderer"

    .line 137
    .line 138
    invoke-static {v4, p3}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/video/j;->L1(Landroidx/media3/exoplayer/mediacodec/w;Landroidx/media3/common/r;)Landroid/graphics/Point;

    .line 142
    .line 143
    .line 144
    move-result-object p3

    .line 145
    if-eqz p3, :cond_7

    .line 146
    .line 147
    iget v5, p3, Landroid/graphics/Point;->x:I

    .line 148
    .line 149
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    iget p3, p3, Landroid/graphics/Point;->y:I

    .line 154
    .line 155
    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    invoke-virtual {p2}, Landroidx/media3/common/r;->b()Landroidx/media3/common/r$b;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    invoke-virtual {p2, v0}, Landroidx/media3/common/r$b;->B0(I)Landroidx/media3/common/r$b;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    invoke-virtual {p2, v1}, Landroidx/media3/common/r$b;->d0(I)Landroidx/media3/common/r$b;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    invoke-virtual {p2}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/video/j;->K1(Landroidx/media3/exoplayer/mediacodec/w;Landroidx/media3/common/r;)I

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    new-instance p1, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    const-string p2, "Codec max resolution adjusted to: "

    .line 189
    .line 190
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-static {v4, p1}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    :cond_7
    new-instance p1, Landroidx/media3/exoplayer/video/j$e;

    .line 210
    .line 211
    invoke-direct {p1, v0, v1, v2}, Landroidx/media3/exoplayer/video/j$e;-><init>(III)V

    .line 212
    .line 213
    .line 214
    return-object p1
.end method

.method protected N0(Ljava/lang/String;Landroidx/media3/exoplayer/mediacodec/t$a;JJ)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->H0:Landroidx/media3/exoplayer/video/i0$a;

    .line 2
    .line 3
    move-object v1, p1

    .line 4
    move-wide v2, p3

    .line 5
    move-wide v4, p5

    .line 6
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/video/i0$a;->k(Ljava/lang/String;JJ)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/j;->E1(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/j;->Q0:Z

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->n0()Landroidx/media3/exoplayer/mediacodec/w;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Landroidx/media3/exoplayer/mediacodec/w;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroidx/media3/exoplayer/mediacodec/w;->p()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/j;->R0:Z

    .line 30
    .line 31
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/j;->d2()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method protected O0(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->H0:Landroidx/media3/exoplayer/video/i0$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/i0$a;->l(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected P0(Landroidx/media3/exoplayer/s2;)Landroidx/media3/exoplayer/k;
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->P0(Landroidx/media3/exoplayer/s2;)Landroidx/media3/exoplayer/k;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/media3/exoplayer/video/j;->H0:Landroidx/media3/exoplayer/video/i0$a;

    .line 6
    .line 7
    iget-object p1, p1, Landroidx/media3/exoplayer/s2;->b:Landroidx/media3/common/r;

    .line 8
    .line 9
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroidx/media3/common/r;

    .line 14
    .line 15
    invoke-virtual {v1, p1, v0}, Landroidx/media3/exoplayer/video/i0$a;->p(Landroidx/media3/common/r;Landroidx/media3/exoplayer/k;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method protected Q0(Landroidx/media3/common/r;Landroid/media/MediaFormat;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->l0()Landroidx/media3/exoplayer/mediacodec/t;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v1, p0, Landroidx/media3/exoplayer/video/j;->q1:I

    .line 8
    .line 9
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/mediacodec/t;->setVideoScalingMode(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/j;->C1:Z

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x1

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget p2, p1, Landroidx/media3/common/r;->v:I

    .line 19
    .line 20
    iget v0, p1, Landroidx/media3/common/r;->w:I

    .line 21
    .line 22
    goto :goto_3

    .line 23
    :cond_1
    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    const-string v0, "crop-right"

    .line 27
    .line 28
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    const-string v4, "crop-top"

    .line 33
    .line 34
    const-string v5, "crop-bottom"

    .line 35
    .line 36
    const-string v6, "crop-left"

    .line 37
    .line 38
    if-eqz v3, :cond_2

    .line 39
    .line 40
    invoke-virtual {p2, v6}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_2

    .line 45
    .line 46
    invoke-virtual {p2, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_2

    .line 51
    .line 52
    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_2

    .line 57
    .line 58
    move v3, v2

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    move v3, v1

    .line 61
    :goto_0
    if-eqz v3, :cond_3

    .line 62
    .line 63
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    invoke-virtual {p2, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    sub-int/2addr v0, v6

    .line 72
    add-int/2addr v0, v2

    .line 73
    goto :goto_1

    .line 74
    :cond_3
    const-string v0, "width"

    .line 75
    .line 76
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    :goto_1
    if-eqz v3, :cond_4

    .line 81
    .line 82
    invoke-virtual {p2, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    sub-int/2addr v3, p2

    .line 91
    add-int/2addr v3, v2

    .line 92
    move p2, v3

    .line 93
    goto :goto_2

    .line 94
    :cond_4
    const-string v3, "height"

    .line 95
    .line 96
    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    :goto_2
    move v7, v0

    .line 101
    move v0, p2

    .line 102
    move p2, v7

    .line 103
    :goto_3
    iget v3, p1, Landroidx/media3/common/r;->z:F

    .line 104
    .line 105
    iget v4, p1, Landroidx/media3/common/r;->y:I

    .line 106
    .line 107
    const/16 v5, 0x5a

    .line 108
    .line 109
    if-eq v4, v5, :cond_5

    .line 110
    .line 111
    const/16 v5, 0x10e

    .line 112
    .line 113
    if-ne v4, v5, :cond_6

    .line 114
    .line 115
    :cond_5
    const/high16 v4, 0x3f800000    # 1.0f

    .line 116
    .line 117
    div-float v3, v4, v3

    .line 118
    .line 119
    move v7, v0

    .line 120
    move v0, p2

    .line 121
    move p2, v7

    .line 122
    :cond_6
    new-instance v4, Landroidx/media3/common/m0;

    .line 123
    .line 124
    invoke-direct {v4, p2, v0, v3}, Landroidx/media3/common/m0;-><init>(IIF)V

    .line 125
    .line 126
    .line 127
    iput-object v4, p0, Landroidx/media3/exoplayer/video/j;->z1:Landroidx/media3/common/m0;

    .line 128
    .line 129
    iget-object v4, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    .line 130
    .line 131
    if-eqz v4, :cond_7

    .line 132
    .line 133
    iget-boolean v5, p0, Landroidx/media3/exoplayer/video/j;->I1:Z

    .line 134
    .line 135
    if-eqz v5, :cond_7

    .line 136
    .line 137
    invoke-virtual {p1}, Landroidx/media3/common/r;->b()Landroidx/media3/common/r$b;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {p1, p2}, Landroidx/media3/common/r$b;->B0(I)Landroidx/media3/common/r$b;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-virtual {p1, v0}, Landroidx/media3/common/r$b;->d0(I)Landroidx/media3/common/r$b;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {p1, v3}, Landroidx/media3/common/r$b;->q0(F)Landroidx/media3/common/r$b;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {p1}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-virtual {p0, v4, v2, p1}, Landroidx/media3/exoplayer/video/j;->D1(Landroidx/media3/exoplayer/video/VideoSink;ILandroidx/media3/common/r;)V

    .line 158
    .line 159
    .line 160
    goto :goto_4

    .line 161
    :cond_7
    iget-object p2, p0, Landroidx/media3/exoplayer/video/j;->K0:Landroidx/media3/exoplayer/video/u;

    .line 162
    .line 163
    iget p1, p1, Landroidx/media3/common/r;->x:F

    .line 164
    .line 165
    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/video/u;->p(F)V

    .line 166
    .line 167
    .line 168
    :goto_4
    iput-boolean v1, p0, Landroidx/media3/exoplayer/video/j;->I1:Z

    .line 169
    .line 170
    return-void
.end method

.method protected Q1(Landroidx/media3/common/r;Ljava/lang/String;Landroidx/media3/exoplayer/video/j$e;FZI)Landroid/media/MediaFormat;
    .locals 2

    .line 1
    new-instance v0, Landroid/media/MediaFormat;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "mime"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget p2, p1, Landroidx/media3/common/r;->v:I

    .line 12
    .line 13
    const-string v1, "width"

    .line 14
    .line 15
    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    const-string p2, "height"

    .line 19
    .line 20
    iget v1, p1, Landroidx/media3/common/r;->w:I

    .line 21
    .line 22
    invoke-virtual {v0, p2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    iget-object p2, p1, Landroidx/media3/common/r;->r:Ljava/util/List;

    .line 26
    .line 27
    invoke-static {v0, p2}, Landroidx/media3/common/util/x;->e(Landroid/media/MediaFormat;Ljava/util/List;)V

    .line 28
    .line 29
    .line 30
    const-string p2, "frame-rate"

    .line 31
    .line 32
    iget v1, p1, Landroidx/media3/common/r;->x:F

    .line 33
    .line 34
    invoke-static {v0, p2, v1}, Landroidx/media3/common/util/x;->c(Landroid/media/MediaFormat;Ljava/lang/String;F)V

    .line 35
    .line 36
    .line 37
    const-string p2, "rotation-degrees"

    .line 38
    .line 39
    iget v1, p1, Landroidx/media3/common/r;->y:I

    .line 40
    .line 41
    invoke-static {v0, p2, v1}, Landroidx/media3/common/util/x;->d(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    iget-object p2, p1, Landroidx/media3/common/r;->C:Landroidx/media3/common/i;

    .line 45
    .line 46
    invoke-static {v0, p2}, Landroidx/media3/common/util/x;->b(Landroid/media/MediaFormat;Landroidx/media3/common/i;)V

    .line 47
    .line 48
    .line 49
    const-string p2, "video/dolby-vision"

    .line 50
    .line 51
    iget-object v1, p1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    if-eqz p2, :cond_0

    .line 58
    .line 59
    invoke-static {p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->i(Landroidx/media3/common/r;)Landroid/util/Pair;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-eqz p1, :cond_0

    .line 64
    .line 65
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast p1, Ljava/lang/Integer;

    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    const-string p2, "profile"

    .line 74
    .line 75
    invoke-static {v0, p2, p1}, Landroidx/media3/common/util/x;->d(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 76
    .line 77
    .line 78
    :cond_0
    iget p1, p3, Landroidx/media3/exoplayer/video/j$e;->a:I

    .line 79
    .line 80
    const-string p2, "max-width"

    .line 81
    .line 82
    invoke-virtual {v0, p2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 83
    .line 84
    .line 85
    const-string p1, "max-height"

    .line 86
    .line 87
    iget p2, p3, Landroidx/media3/exoplayer/video/j$e;->b:I

    .line 88
    .line 89
    invoke-virtual {v0, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 90
    .line 91
    .line 92
    const-string p1, "max-input-size"

    .line 93
    .line 94
    iget p2, p3, Landroidx/media3/exoplayer/video/j$e;->c:I

    .line 95
    .line 96
    invoke-static {v0, p1, p2}, Landroidx/media3/common/util/x;->d(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 97
    .line 98
    .line 99
    sget p1, Landroidx/media3/common/util/a1;->a:I

    .line 100
    .line 101
    const/16 p2, 0x17

    .line 102
    .line 103
    const/4 p3, 0x0

    .line 104
    if-lt p1, p2, :cond_1

    .line 105
    .line 106
    const-string p2, "priority"

    .line 107
    .line 108
    invoke-virtual {v0, p2, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 109
    .line 110
    .line 111
    const/high16 p2, -0x40800000    # -1.0f

    .line 112
    .line 113
    cmpl-float p2, p4, p2

    .line 114
    .line 115
    if-eqz p2, :cond_1

    .line 116
    .line 117
    const-string p2, "operating-rate"

    .line 118
    .line 119
    invoke-virtual {v0, p2, p4}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 120
    .line 121
    .line 122
    :cond_1
    const/4 p2, 0x1

    .line 123
    if-eqz p5, :cond_2

    .line 124
    .line 125
    const-string p4, "no-post-process"

    .line 126
    .line 127
    invoke-virtual {v0, p4, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 128
    .line 129
    .line 130
    const-string p4, "auto-frc"

    .line 131
    .line 132
    invoke-virtual {v0, p4, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 133
    .line 134
    .line 135
    :cond_2
    if-eqz p6, :cond_3

    .line 136
    .line 137
    const-string p4, "tunneled-playback"

    .line 138
    .line 139
    invoke-virtual {v0, p4, p2}, Landroid/media/MediaFormat;->setFeatureEnabled(Ljava/lang/String;Z)V

    .line 140
    .line 141
    .line 142
    const-string p2, "audio-session-id"

    .line 143
    .line 144
    invoke-virtual {v0, p2, p6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 145
    .line 146
    .line 147
    :cond_3
    const/16 p2, 0x23

    .line 148
    .line 149
    if-lt p1, p2, :cond_4

    .line 150
    .line 151
    iget p1, p0, Landroidx/media3/exoplayer/video/j;->B1:I

    .line 152
    .line 153
    neg-int p1, p1

    .line 154
    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    const-string p2, "importance"

    .line 159
    .line 160
    invoke-virtual {v0, p2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 161
    .line 162
    .line 163
    :cond_4
    return-object v0
.end method

.method protected S0(J)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->S0(J)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Landroidx/media3/exoplayer/video/j;->C1:Z

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iget p1, p0, Landroidx/media3/exoplayer/video/j;->v1:I

    .line 9
    .line 10
    add-int/lit8 p1, p1, -0x1

    .line 11
    .line 12
    iput p1, p0, Landroidx/media3/exoplayer/video/j;->v1:I

    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method protected T(Landroidx/media3/exoplayer/mediacodec/w;Landroidx/media3/common/r;Landroidx/media3/common/r;)Landroidx/media3/exoplayer/k;
    .locals 8

    .line 1
    invoke-virtual {p1, p2, p3}, Landroidx/media3/exoplayer/mediacodec/w;->e(Landroidx/media3/common/r;Landroidx/media3/common/r;)Landroidx/media3/exoplayer/k;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, v0, Landroidx/media3/exoplayer/k;->e:I

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/media3/exoplayer/video/j;->P0:Landroidx/media3/exoplayer/video/j$e;

    .line 8
    .line 9
    invoke-static {v2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Landroidx/media3/exoplayer/video/j$e;

    .line 14
    .line 15
    iget v3, p3, Landroidx/media3/common/r;->v:I

    .line 16
    .line 17
    iget v4, v2, Landroidx/media3/exoplayer/video/j$e;->a:I

    .line 18
    .line 19
    if-gt v3, v4, :cond_0

    .line 20
    .line 21
    iget v3, p3, Landroidx/media3/common/r;->w:I

    .line 22
    .line 23
    iget v4, v2, Landroidx/media3/exoplayer/video/j$e;->b:I

    .line 24
    .line 25
    if-le v3, v4, :cond_1

    .line 26
    .line 27
    :cond_0
    or-int/lit16 v1, v1, 0x100

    .line 28
    .line 29
    :cond_1
    invoke-static {p1, p3}, Landroidx/media3/exoplayer/video/j;->O1(Landroidx/media3/exoplayer/mediacodec/w;Landroidx/media3/common/r;)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    iget v2, v2, Landroidx/media3/exoplayer/video/j$e;->c:I

    .line 34
    .line 35
    if-le v3, v2, :cond_2

    .line 36
    .line 37
    or-int/lit8 v1, v1, 0x40

    .line 38
    .line 39
    :cond_2
    move v7, v1

    .line 40
    new-instance v1, Landroidx/media3/exoplayer/k;

    .line 41
    .line 42
    iget-object v3, p1, Landroidx/media3/exoplayer/mediacodec/w;->a:Ljava/lang/String;

    .line 43
    .line 44
    if-eqz v7, :cond_3

    .line 45
    .line 46
    const/4 p1, 0x0

    .line 47
    :goto_0
    move v6, p1

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    iget p1, v0, Landroidx/media3/exoplayer/k;->d:I

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :goto_1
    move-object v2, v1

    .line 53
    move-object v4, p2

    .line 54
    move-object v5, p3

    .line 55
    invoke-direct/range {v2 .. v7}, Landroidx/media3/exoplayer/k;-><init>(Ljava/lang/String;Landroidx/media3/common/r;Landroidx/media3/common/r;II)V

    .line 56
    .line 57
    .line 58
    return-object v1
.end method

.method protected T0()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->T0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->e()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w0()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/j;->J1()J

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    invoke-interface {v0, v1, v2, v3, v4}, Landroidx/media3/exoplayer/video/VideoSink;->f(JJ)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->K0:Landroidx/media3/exoplayer/video/u;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/u;->j()V

    .line 28
    .line 29
    .line 30
    :goto_0
    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/j;->I1:Z

    .line 32
    .line 33
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/j;->d2()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method protected U0(Landroidx/media3/decoder/DecoderInputBuffer;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->M0:Landroidx/media3/exoplayer/video/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->n0()Landroidx/media3/exoplayer/mediacodec/w;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroidx/media3/exoplayer/mediacodec/w;

    .line 14
    .line 15
    iget-object v0, v0, Landroidx/media3/exoplayer/mediacodec/w;->b:Ljava/lang/String;

    .line 16
    .line 17
    const-string v1, "video/av01"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p1, Landroidx/media3/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v1, p0, Landroidx/media3/exoplayer/video/j;->M0:Landroidx/media3/exoplayer/video/a;

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/video/a;->b(Ljava/nio/ByteBuffer;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    iput v0, p0, Landroidx/media3/exoplayer/video/j;->K1:I

    .line 36
    .line 37
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/j;->C1:Z

    .line 38
    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    iget v1, p0, Landroidx/media3/exoplayer/video/j;->v1:I

    .line 42
    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    iput v1, p0, Landroidx/media3/exoplayer/video/j;->v1:I

    .line 46
    .line 47
    :cond_1
    sget v1, Landroidx/media3/common/util/a1;->a:I

    .line 48
    .line 49
    const/16 v2, 0x17

    .line 50
    .line 51
    if-ge v1, v2, :cond_2

    .line 52
    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    iget-wide v0, p1, Landroidx/media3/decoder/DecoderInputBuffer;->e:J

    .line 56
    .line 57
    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/video/j;->g2(J)V

    .line 58
    .line 59
    .line 60
    :cond_2
    return-void
.end method

.method protected V0(Landroidx/media3/exoplayer/w3$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/video/VideoSink;->h(Landroidx/media3/exoplayer/w3$a;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method protected V1(JZ)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/i;->P(J)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return p2

    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 10
    if-eqz p3, :cond_1

    .line 11
    .line 12
    iget-object p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Landroidx/media3/exoplayer/j;

    .line 13
    .line 14
    iget v1, p3, Landroidx/media3/exoplayer/j;->d:I

    .line 15
    .line 16
    add-int/2addr v1, p1

    .line 17
    iput v1, p3, Landroidx/media3/exoplayer/j;->d:I

    .line 18
    .line 19
    iget p1, p3, Landroidx/media3/exoplayer/j;->f:I

    .line 20
    .line 21
    iget v2, p0, Landroidx/media3/exoplayer/video/j;->v1:I

    .line 22
    .line 23
    add-int/2addr p1, v2

    .line 24
    iput p1, p3, Landroidx/media3/exoplayer/j;->f:I

    .line 25
    .line 26
    iget-object p1, p0, Landroidx/media3/exoplayer/video/j;->O0:Ljava/util/PriorityQueue;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->size()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    add-int/2addr v1, p1

    .line 33
    iput v1, p3, Landroidx/media3/exoplayer/j;->d:I

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Landroidx/media3/exoplayer/j;

    .line 37
    .line 38
    iget v1, p3, Landroidx/media3/exoplayer/j;->j:I

    .line 39
    .line 40
    add-int/2addr v1, v0

    .line 41
    iput v1, p3, Landroidx/media3/exoplayer/j;->j:I

    .line 42
    .line 43
    iget-object p3, p0, Landroidx/media3/exoplayer/video/j;->O0:Ljava/util/PriorityQueue;

    .line 44
    .line 45
    invoke-virtual {p3}, Ljava/util/PriorityQueue;->size()I

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    add-int/2addr p1, p3

    .line 50
    iget p3, p0, Landroidx/media3/exoplayer/video/j;->v1:I

    .line 51
    .line 52
    invoke-virtual {p0, p1, p3}, Landroidx/media3/exoplayer/video/j;->A2(II)V

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->i0()Z

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    .line 59
    .line 60
    if-eqz p1, :cond_2

    .line 61
    .line 62
    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/video/VideoSink;->t(Z)V

    .line 63
    .line 64
    .line 65
    :cond_2
    return v0
.end method

.method protected X0(JJLandroidx/media3/exoplayer/mediacodec/t;Ljava/nio/ByteBuffer;IIIJZZLandroidx/media3/common/r;)Z
    .locals 19

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v2, p5

    .line 4
    .line 5
    move/from16 v3, p7

    .line 6
    .line 7
    move-wide/from16 v0, p10

    .line 8
    .line 9
    move/from16 v14, p13

    .line 10
    .line 11
    invoke-static/range {p5 .. p5}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->v0()J

    .line 15
    .line 16
    .line 17
    move-result-wide v4

    .line 18
    sub-long v4, v0, v4

    .line 19
    .line 20
    invoke-direct {v6, v0, v1}, Landroidx/media3/exoplayer/video/j;->B2(J)V

    .line 21
    .line 22
    .line 23
    iget-object v7, v6, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    .line 24
    .line 25
    const/4 v15, 0x1

    .line 26
    if-eqz v7, :cond_1

    .line 27
    .line 28
    if-eqz p12, :cond_0

    .line 29
    .line 30
    if-nez v14, :cond_0

    .line 31
    .line 32
    invoke-virtual {v6, v2, v3, v4, v5}, Landroidx/media3/exoplayer/video/j;->x2(Landroidx/media3/exoplayer/mediacodec/t;IJ)V

    .line 33
    .line 34
    .line 35
    return v15

    .line 36
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/video/j;->J1()J

    .line 37
    .line 38
    .line 39
    move-result-wide v7

    .line 40
    add-long/2addr v7, v0

    .line 41
    iget-object v9, v6, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    .line 42
    .line 43
    new-instance v10, Landroidx/media3/exoplayer/video/j$b;

    .line 44
    .line 45
    move-object v0, v10

    .line 46
    move-object/from16 v1, p0

    .line 47
    .line 48
    move-object/from16 v2, p5

    .line 49
    .line 50
    move/from16 v3, p7

    .line 51
    .line 52
    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/video/j$b;-><init>(Landroidx/media3/exoplayer/video/j;Landroidx/media3/exoplayer/mediacodec/t;IJ)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v9, v7, v8, v14, v10}, Landroidx/media3/exoplayer/video/VideoSink;->b(JZLandroidx/media3/exoplayer/video/VideoSink$b;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    return v0

    .line 60
    :cond_1
    iget-object v7, v6, Landroidx/media3/exoplayer/video/j;->K0:Landroidx/media3/exoplayer/video/u;

    .line 61
    .line 62
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w0()J

    .line 63
    .line 64
    .line 65
    move-result-wide v16

    .line 66
    iget-object v12, v6, Landroidx/media3/exoplayer/video/j;->L0:Landroidx/media3/exoplayer/video/u$a;

    .line 67
    .line 68
    move-wide/from16 v8, p10

    .line 69
    .line 70
    move-wide/from16 v10, p1

    .line 71
    .line 72
    move-object v0, v12

    .line 73
    move-wide/from16 v12, p3

    .line 74
    .line 75
    move v1, v15

    .line 76
    move-wide/from16 v14, v16

    .line 77
    .line 78
    move/from16 v16, p12

    .line 79
    .line 80
    move/from16 v17, p13

    .line 81
    .line 82
    move-object/from16 v18, v0

    .line 83
    .line 84
    invoke-virtual/range {v7 .. v18}, Landroidx/media3/exoplayer/video/u;->c(JJJJZZLandroidx/media3/exoplayer/video/u$a;)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_7

    .line 89
    .line 90
    if-eq v0, v1, :cond_6

    .line 91
    .line 92
    const/4 v7, 0x2

    .line 93
    if-eq v0, v7, :cond_5

    .line 94
    .line 95
    const/4 v7, 0x3

    .line 96
    if-eq v0, v7, :cond_4

    .line 97
    .line 98
    const/4 v1, 0x4

    .line 99
    if-eq v0, v1, :cond_3

    .line 100
    .line 101
    const/4 v1, 0x5

    .line 102
    if-ne v0, v1, :cond_2

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 106
    .line 107
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw v1

    .line 115
    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 116
    return v0

    .line 117
    :cond_4
    invoke-virtual {v6, v2, v3, v4, v5}, Landroidx/media3/exoplayer/video/j;->x2(Landroidx/media3/exoplayer/mediacodec/t;IJ)V

    .line 118
    .line 119
    .line 120
    iget-object v0, v6, Landroidx/media3/exoplayer/video/j;->L0:Landroidx/media3/exoplayer/video/u$a;

    .line 121
    .line 122
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/u$a;->f()J

    .line 123
    .line 124
    .line 125
    move-result-wide v2

    .line 126
    invoke-virtual {v6, v2, v3}, Landroidx/media3/exoplayer/video/j;->D2(J)V

    .line 127
    .line 128
    .line 129
    return v1

    .line 130
    :cond_5
    invoke-virtual {v6, v2, v3, v4, v5}, Landroidx/media3/exoplayer/video/j;->H1(Landroidx/media3/exoplayer/mediacodec/t;IJ)V

    .line 131
    .line 132
    .line 133
    iget-object v0, v6, Landroidx/media3/exoplayer/video/j;->L0:Landroidx/media3/exoplayer/video/u$a;

    .line 134
    .line 135
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/u$a;->f()J

    .line 136
    .line 137
    .line 138
    move-result-wide v2

    .line 139
    invoke-virtual {v6, v2, v3}, Landroidx/media3/exoplayer/video/j;->D2(J)V

    .line 140
    .line 141
    .line 142
    return v1

    .line 143
    :cond_6
    invoke-static/range {p5 .. p5}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    check-cast v0, Landroidx/media3/exoplayer/mediacodec/t;

    .line 148
    .line 149
    move-object/from16 p1, p0

    .line 150
    .line 151
    move-object/from16 p2, v0

    .line 152
    .line 153
    move/from16 p3, p7

    .line 154
    .line 155
    move-wide/from16 p4, v4

    .line 156
    .line 157
    move-object/from16 p6, p14

    .line 158
    .line 159
    invoke-direct/range {p1 .. p6}, Landroidx/media3/exoplayer/video/j;->i2(Landroidx/media3/exoplayer/mediacodec/t;IJLandroidx/media3/common/r;)V

    .line 160
    .line 161
    .line 162
    return v1

    .line 163
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/i;->s()Landroidx/media3/common/util/i;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-interface {v0}, Landroidx/media3/common/util/i;->nanoTime()J

    .line 168
    .line 169
    .line 170
    move-result-wide v7

    .line 171
    move-object/from16 p8, p0

    .line 172
    .line 173
    move-wide/from16 p9, v4

    .line 174
    .line 175
    move-wide/from16 p11, v7

    .line 176
    .line 177
    move-object/from16 p13, p14

    .line 178
    .line 179
    invoke-direct/range {p8 .. p13}, Landroidx/media3/exoplayer/video/j;->e2(JJLandroidx/media3/common/r;)V

    .line 180
    .line 181
    .line 182
    move-object/from16 p9, p5

    .line 183
    .line 184
    move/from16 p10, p7

    .line 185
    .line 186
    move-wide/from16 p11, v4

    .line 187
    .line 188
    move-wide/from16 p13, v7

    .line 189
    .line 190
    invoke-direct/range {p8 .. p14}, Landroidx/media3/exoplayer/video/j;->k2(Landroidx/media3/exoplayer/mediacodec/t;IJJ)V

    .line 191
    .line 192
    .line 193
    iget-object v0, v6, Landroidx/media3/exoplayer/video/j;->L0:Landroidx/media3/exoplayer/video/u$a;

    .line 194
    .line 195
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/u$a;->f()J

    .line 196
    .line 197
    .line 198
    move-result-wide v2

    .line 199
    invoke-virtual {v6, v2, v3}, Landroidx/media3/exoplayer/video/j;->D2(J)V

    .line 200
    .line 201
    .line 202
    return v1
.end method

.method protected Z(Ljava/lang/Throwable;Landroidx/media3/exoplayer/mediacodec/w;)Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;
    .locals 2

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/video/MediaCodecVideoDecoderException;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/video/j;->V0:Landroid/view/Surface;

    .line 4
    .line 5
    invoke-direct {v0, p1, p2, v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoDecoderException;-><init>(Ljava/lang/Throwable;Landroidx/media3/exoplayer/mediacodec/w;Landroid/view/Surface;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->c()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->K0:Landroidx/media3/exoplayer/video/u;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/u;->a()V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method protected c1()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->e()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public d(FF)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->d(FF)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    invoke-interface {p2, p1}, Landroidx/media3/exoplayer/video/VideoSink;->a(F)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p2, p0, Landroidx/media3/exoplayer/video/j;->K0:Landroidx/media3/exoplayer/video/u;

    .line 13
    .line 14
    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/video/u;->r(F)V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method protected d1()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->d1()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->O0:Ljava/util/PriorityQueue;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/j;->J1:Z

    .line 11
    .line 12
    iput v0, p0, Landroidx/media3/exoplayer/video/j;->v1:I

    .line 13
    .line 14
    iput v0, p0, Landroidx/media3/exoplayer/video/j;->K1:I

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->M0:Landroidx/media3/exoplayer/video/a;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/a;->c()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method protected g2(J)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w1(J)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->z1:Landroidx/media3/common/m0;

    .line 5
    .line 6
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/video/j;->Z1(Landroidx/media3/common/m0;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Landroidx/media3/exoplayer/j;

    .line 10
    .line 11
    iget v1, v0, Landroidx/media3/exoplayer/j;->e:I

    .line 12
    .line 13
    add-int/lit8 v1, v1, 0x1

    .line 14
    .line 15
    iput v1, v0, Landroidx/media3/exoplayer/j;->e:I

    .line 16
    .line 17
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/j;->X1()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/video/j;->S0(J)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "MediaCodecVideoRenderer"

    .line 2
    .line 3
    return-object v0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_9

    .line 3
    .line 4
    const/4 v1, 0x7

    .line 5
    if-eq p1, v1, :cond_8

    .line 6
    .line 7
    const/16 v1, 0xa

    .line 8
    .line 9
    if-eq p1, v1, :cond_7

    .line 10
    .line 11
    const/4 v1, 0x4

    .line 12
    if-eq p1, v1, :cond_6

    .line 13
    .line 14
    const/4 v1, 0x5

    .line 15
    if-eq p1, v1, :cond_4

    .line 16
    .line 17
    const/16 v1, 0xd

    .line 18
    .line 19
    if-eq p1, v1, :cond_3

    .line 20
    .line 21
    const/16 v1, 0xe

    .line 22
    .line 23
    if-eq p1, v1, :cond_2

    .line 24
    .line 25
    const/16 v1, 0x10

    .line 26
    .line 27
    if-eq p1, v1, :cond_1

    .line 28
    .line 29
    const/16 v1, 0x11

    .line 30
    .line 31
    if-eq p1, v1, :cond_0

    .line 32
    .line 33
    invoke-super {p0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->handleMessage(ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    goto/16 :goto_0

    .line 37
    .line 38
    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/video/j;->V0:Landroid/view/Surface;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/video/j;->n2(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    check-cast p2, Landroidx/media3/exoplayer/video/j;

    .line 49
    .line 50
    invoke-virtual {p2, v0, p1}, Landroidx/media3/exoplayer/video/j;->handleMessage(ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    goto/16 :goto_0

    .line 54
    .line 55
    :cond_1
    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Ljava/lang/Integer;

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    iput p1, p0, Landroidx/media3/exoplayer/video/j;->B1:I

    .line 66
    .line 67
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/j;->z2()V

    .line 68
    .line 69
    .line 70
    goto/16 :goto_0

    .line 71
    .line 72
    :cond_2
    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Landroidx/media3/common/util/l0;

    .line 77
    .line 78
    invoke-virtual {p1}, Landroidx/media3/common/util/l0;->b()I

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    if-eqz p2, :cond_a

    .line 83
    .line 84
    invoke-virtual {p1}, Landroidx/media3/common/util/l0;->a()I

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    if-eqz p2, :cond_a

    .line 89
    .line 90
    iput-object p1, p0, Landroidx/media3/exoplayer/video/j;->X0:Landroidx/media3/common/util/l0;

    .line 91
    .line 92
    iget-object p2, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    .line 93
    .line 94
    if-eqz p2, :cond_a

    .line 95
    .line 96
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->V0:Landroid/view/Surface;

    .line 97
    .line 98
    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Landroid/view/Surface;

    .line 103
    .line 104
    invoke-interface {p2, v0, p1}, Landroidx/media3/exoplayer/video/VideoSink;->p(Landroid/view/Surface;Landroidx/media3/common/util/l0;)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_3
    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    check-cast p1, Ljava/util/List;

    .line 113
    .line 114
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/j;->q2(Ljava/util/List;)V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_4
    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    check-cast p1, Ljava/lang/Integer;

    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    iput p1, p0, Landroidx/media3/exoplayer/video/j;->r1:I

    .line 129
    .line 130
    iget-object p2, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    .line 131
    .line 132
    if-eqz p2, :cond_5

    .line 133
    .line 134
    invoke-interface {p2, p1}, Landroidx/media3/exoplayer/video/VideoSink;->r(I)V

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_5
    iget-object p2, p0, Landroidx/media3/exoplayer/video/j;->K0:Landroidx/media3/exoplayer/video/u;

    .line 139
    .line 140
    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/video/u;->n(I)V

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_6
    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    check-cast p1, Ljava/lang/Integer;

    .line 149
    .line 150
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    iput p1, p0, Landroidx/media3/exoplayer/video/j;->q1:I

    .line 155
    .line 156
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->l0()Landroidx/media3/exoplayer/mediacodec/t;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    if-eqz p1, :cond_a

    .line 161
    .line 162
    iget p2, p0, Landroidx/media3/exoplayer/video/j;->q1:I

    .line 163
    .line 164
    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/mediacodec/t;->setVideoScalingMode(I)V

    .line 165
    .line 166
    .line 167
    goto :goto_0

    .line 168
    :cond_7
    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    check-cast p1, Ljava/lang/Integer;

    .line 173
    .line 174
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    iget p2, p0, Landroidx/media3/exoplayer/video/j;->D1:I

    .line 179
    .line 180
    if-eq p2, p1, :cond_a

    .line 181
    .line 182
    iput p1, p0, Landroidx/media3/exoplayer/video/j;->D1:I

    .line 183
    .line 184
    iget-boolean p1, p0, Landroidx/media3/exoplayer/video/j;->C1:Z

    .line 185
    .line 186
    if-eqz p1, :cond_a

    .line 187
    .line 188
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->b1()V

    .line 189
    .line 190
    .line 191
    goto :goto_0

    .line 192
    :cond_8
    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    check-cast p1, Landroidx/media3/exoplayer/video/t;

    .line 197
    .line 198
    iput-object p1, p0, Landroidx/media3/exoplayer/video/j;->F1:Landroidx/media3/exoplayer/video/t;

    .line 199
    .line 200
    iget-object p2, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    .line 201
    .line 202
    if-eqz p2, :cond_a

    .line 203
    .line 204
    invoke-interface {p2, p1}, Landroidx/media3/exoplayer/video/VideoSink;->d(Landroidx/media3/exoplayer/video/t;)V

    .line 205
    .line 206
    .line 207
    goto :goto_0

    .line 208
    :cond_9
    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/video/j;->n2(Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    :cond_a
    :goto_0
    return-void
.end method

.method public isEnded()Z
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->isEnded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->isEnded()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    :cond_0
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public isReady()Z
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->isReady()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/video/VideoSink;->j(Z)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    if-eqz v0, :cond_2

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->l0()Landroidx/media3/exoplayer/mediacodec/t;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-boolean v1, p0, Landroidx/media3/exoplayer/video/j;->C1:Z

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    :cond_1
    const/4 v0, 0x1

    .line 27
    return v0

    .line 28
    :cond_2
    iget-object v1, p0, Landroidx/media3/exoplayer/video/j;->K0:Landroidx/media3/exoplayer/video/u;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/video/u;->d(Z)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    return v0
.end method

.method public j(JJ)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/video/j;->t2(JJ)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public k(JJJZZ)Z
    .locals 11

    .line 1
    move-object v6, p0

    .line 2
    move-wide v7, p3

    .line 3
    iget-wide v0, v6, Landroidx/media3/exoplayer/video/j;->N0:J

    .line 4
    .line 5
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    cmp-long v0, v0, v2

    .line 11
    .line 12
    const/4 v9, 0x0

    .line 13
    const/4 v10, 0x1

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->w()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    const-wide/32 v2, 0x30d40

    .line 21
    .line 22
    .line 23
    add-long/2addr v0, v2

    .line 24
    cmp-long v0, v7, v0

    .line 25
    .line 26
    if-lez v0, :cond_0

    .line 27
    .line 28
    iget-wide v0, v6, Landroidx/media3/exoplayer/video/j;->N0:J

    .line 29
    .line 30
    cmp-long v0, p1, v0

    .line 31
    .line 32
    if-gez v0, :cond_0

    .line 33
    .line 34
    move v0, v10

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move v0, v9

    .line 37
    :goto_0
    iput-boolean v0, v6, Landroidx/media3/exoplayer/video/j;->J1:Z

    .line 38
    .line 39
    :cond_1
    move-object v0, p0

    .line 40
    move-wide v1, p1

    .line 41
    move-wide/from16 v3, p5

    .line 42
    .line 43
    move/from16 v5, p7

    .line 44
    .line 45
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/video/j;->r2(JJZ)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    move/from16 v0, p8

    .line 52
    .line 53
    invoke-virtual {p0, p3, p4, v0}, Landroidx/media3/exoplayer/video/j;->V1(JZ)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    move v9, v10

    .line 60
    :cond_2
    return v9
.end method

.method protected l2(Landroidx/media3/exoplayer/mediacodec/t;IJJ)V
    .locals 0

    .line 1
    const-string p3, "releaseOutputBuffer"

    .line 2
    .line 3
    invoke-static {p3}, Landroidx/media3/common/util/q0;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, p2, p5, p6}, Landroidx/media3/exoplayer/mediacodec/t;->h(IJ)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroidx/media3/common/util/q0;->b()V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Landroidx/media3/exoplayer/j;

    .line 13
    .line 14
    iget p2, p1, Landroidx/media3/exoplayer/j;->e:I

    .line 15
    .line 16
    add-int/lit8 p2, p2, 0x1

    .line 17
    .line 18
    iput p2, p1, Landroidx/media3/exoplayer/j;->e:I

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    iput p1, p0, Landroidx/media3/exoplayer/video/j;->u1:I

    .line 22
    .line 23
    iget-object p1, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    .line 24
    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Landroidx/media3/exoplayer/video/j;->z1:Landroidx/media3/common/m0;

    .line 28
    .line 29
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/j;->Z1(Landroidx/media3/common/m0;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/j;->X1()V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method protected m0(Landroidx/media3/decoder/DecoderInputBuffer;)I
    .locals 2

    .line 1
    sget v0, Landroidx/media3/common/util/a1;->a:I

    .line 2
    .line 3
    const/16 v1, 0x22

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/j;->C1:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/j;->T1(Landroidx/media3/decoder/DecoderInputBuffer;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/16 p1, 0x20

    .line 18
    .line 19
    return p1

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    return p1
.end method

.method protected n1(Landroidx/media3/decoder/DecoderInputBuffer;)Z
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/j;->U1(Landroidx/media3/decoder/DecoderInputBuffer;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/decoder/DecoderInputBuffer;->e()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    return v1

    .line 16
    :cond_1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/j;->T1(Landroidx/media3/decoder/DecoderInputBuffer;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    iget-boolean v2, p0, Landroidx/media3/exoplayer/video/j;->J1:Z

    .line 23
    .line 24
    if-nez v2, :cond_2

    .line 25
    .line 26
    return v1

    .line 27
    :cond_2
    invoke-virtual {p1}, Landroidx/media3/decoder/a;->hasSupplementalData()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_3

    .line 32
    .line 33
    return v1

    .line 34
    :cond_3
    invoke-virtual {p1}, Landroidx/media3/decoder/a;->notDependedOn()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    const/4 v3, 0x1

    .line 39
    if-eqz v2, :cond_6

    .line 40
    .line 41
    invoke-virtual {p1}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    .line 42
    .line 43
    .line 44
    if-eqz v0, :cond_4

    .line 45
    .line 46
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Landroidx/media3/exoplayer/j;

    .line 47
    .line 48
    iget v0, p1, Landroidx/media3/exoplayer/j;->d:I

    .line 49
    .line 50
    add-int/2addr v0, v3

    .line 51
    iput v0, p1, Landroidx/media3/exoplayer/j;->d:I

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_4
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/j;->J1:Z

    .line 55
    .line 56
    if-eqz v0, :cond_5

    .line 57
    .line 58
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->O0:Ljava/util/PriorityQueue;

    .line 59
    .line 60
    iget-wide v1, p1, Landroidx/media3/decoder/DecoderInputBuffer;->e:J

    .line 61
    .line 62
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    iget p1, p0, Landroidx/media3/exoplayer/video/j;->K1:I

    .line 70
    .line 71
    add-int/2addr p1, v3

    .line 72
    iput p1, p0, Landroidx/media3/exoplayer/video/j;->K1:I

    .line 73
    .line 74
    :cond_5
    :goto_0
    return v3

    .line 75
    :cond_6
    iget-object v2, p0, Landroidx/media3/exoplayer/video/j;->M0:Landroidx/media3/exoplayer/video/a;

    .line 76
    .line 77
    if-eqz v2, :cond_c

    .line 78
    .line 79
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->n0()Landroidx/media3/exoplayer/mediacodec/w;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-static {v2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    check-cast v2, Landroidx/media3/exoplayer/mediacodec/w;

    .line 88
    .line 89
    iget-object v2, v2, Landroidx/media3/exoplayer/mediacodec/w;->b:Ljava/lang/String;

    .line 90
    .line 91
    const-string v4, "video/av01"

    .line 92
    .line 93
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-eqz v2, :cond_c

    .line 98
    .line 99
    iget-object v2, p1, Landroidx/media3/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    .line 100
    .line 101
    if-eqz v2, :cond_c

    .line 102
    .line 103
    if-nez v0, :cond_8

    .line 104
    .line 105
    iget v4, p0, Landroidx/media3/exoplayer/video/j;->K1:I

    .line 106
    .line 107
    if-gtz v4, :cond_7

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_7
    move v4, v1

    .line 111
    goto :goto_2

    .line 112
    :cond_8
    :goto_1
    move v4, v3

    .line 113
    :goto_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 118
    .line 119
    .line 120
    iget-object v5, p0, Landroidx/media3/exoplayer/video/j;->M0:Landroidx/media3/exoplayer/video/a;

    .line 121
    .line 122
    invoke-virtual {v5, v2, v4}, Landroidx/media3/exoplayer/video/a;->d(Ljava/nio/ByteBuffer;Z)I

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    iget-object v5, p0, Landroidx/media3/exoplayer/video/j;->P0:Landroidx/media3/exoplayer/video/j$e;

    .line 127
    .line 128
    invoke-static {v5}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    check-cast v5, Landroidx/media3/exoplayer/video/j$e;

    .line 133
    .line 134
    iget v5, v5, Landroidx/media3/exoplayer/video/j$e;->c:I

    .line 135
    .line 136
    add-int/2addr v5, v4

    .line 137
    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    if-ge v5, v6, :cond_9

    .line 142
    .line 143
    move v5, v3

    .line 144
    goto :goto_3

    .line 145
    :cond_9
    move v5, v1

    .line 146
    :goto_3
    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    if-eq v4, v2, :cond_c

    .line 151
    .line 152
    if-eqz v5, :cond_c

    .line 153
    .line 154
    iget-object v1, p1, Landroidx/media3/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    .line 155
    .line 156
    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    check-cast v1, Ljava/nio/ByteBuffer;

    .line 161
    .line 162
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 163
    .line 164
    .line 165
    if-eqz v0, :cond_a

    .line 166
    .line 167
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Landroidx/media3/exoplayer/j;

    .line 168
    .line 169
    iget v0, p1, Landroidx/media3/exoplayer/j;->d:I

    .line 170
    .line 171
    add-int/2addr v0, v3

    .line 172
    iput v0, p1, Landroidx/media3/exoplayer/j;->d:I

    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_a
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/j;->J1:Z

    .line 176
    .line 177
    if-eqz v0, :cond_b

    .line 178
    .line 179
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->O0:Ljava/util/PriorityQueue;

    .line 180
    .line 181
    iget-wide v1, p1, Landroidx/media3/decoder/DecoderInputBuffer;->e:J

    .line 182
    .line 183
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    iget p1, p0, Landroidx/media3/exoplayer/video/j;->K1:I

    .line 191
    .line 192
    add-int/2addr p1, v3

    .line 193
    iput p1, p0, Landroidx/media3/exoplayer/video/j;->K1:I

    .line 194
    .line 195
    :cond_b
    :goto_4
    return v3

    .line 196
    :cond_c
    return v1
.end method

.method protected o0()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/j;->C1:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget v0, Landroidx/media3/common/util/a1;->a:I

    .line 6
    .line 7
    const/16 v1, 0x17

    .line 8
    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method protected o1(Landroidx/media3/exoplayer/mediacodec/w;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/j;->S1(Landroidx/media3/exoplayer/mediacodec/w;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public p(JJZ)Z
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p5}, Landroidx/media3/exoplayer/video/j;->s2(JJZ)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method protected p0(FLandroidx/media3/common/r;[Landroidx/media3/common/r;)F
    .locals 5

    .line 1
    array-length p2, p3

    .line 2
    const/high16 v0, -0x40800000    # -1.0f

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    move v2, v0

    .line 6
    :goto_0
    if-ge v1, p2, :cond_1

    .line 7
    .line 8
    aget-object v3, p3, v1

    .line 9
    .line 10
    iget v3, v3, Landroidx/media3/common/r;->x:F

    .line 11
    .line 12
    cmpl-float v4, v3, v0

    .line 13
    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    cmpl-float p2, v2, v0

    .line 24
    .line 25
    if-nez p2, :cond_2

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    mul-float v0, v2, p1

    .line 29
    .line 30
    :goto_1
    return v0
.end method

.method protected p2(Landroidx/media3/exoplayer/mediacodec/t;Landroid/view/Surface;)V
    .locals 0

    .line 1
    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/mediacodec/t;->e(Landroid/view/Surface;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public q2(Ljava/util/List;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/video/j;->U0:Ljava/util/List;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/video/VideoSink;->i(Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method protected r0(Landroidx/media3/exoplayer/mediacodec/h0;Landroidx/media3/common/r;Z)Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->F0:Landroid/content/Context;

    .line 2
    .line 3
    iget-boolean v1, p0, Landroidx/media3/exoplayer/video/j;->C1:Z

    .line 4
    .line 5
    invoke-static {v0, p1, p2, p3, v1}, Landroidx/media3/exoplayer/video/j;->N1(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/h0;Landroidx/media3/common/r;ZZ)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->n(Ljava/util/List;Landroidx/media3/common/r;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method protected r2(JJZ)Z
    .locals 0

    .line 1
    const-wide/32 p3, -0x7a120

    .line 2
    .line 3
    .line 4
    cmp-long p1, p1, p3

    .line 5
    .line 6
    if-gez p1, :cond_0

    .line 7
    .line 8
    if-nez p5, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    return p1
.end method

.method public render(JJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->S0:Landroidx/media3/exoplayer/video/VideoSink;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/video/VideoSink;->render(JJ)V
    :try_end_0
    .catch Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p1

    .line 10
    iget-object p2, p1, Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;->format:Landroidx/media3/common/r;

    .line 11
    .line 12
    const/16 p3, 0x1b59

    .line 13
    .line 14
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/exoplayer/i;->q(Ljava/lang/Throwable;Landroidx/media3/common/r;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    throw p1

    .line 19
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->render(JJ)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method protected s1(Landroidx/media3/exoplayer/mediacodec/h0;Landroidx/media3/common/r;)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/j;->F0:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Landroidx/media3/exoplayer/video/j;->y2(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/h0;Landroidx/media3/common/r;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method protected s2(JJZ)Z
    .locals 0

    .line 1
    const-wide/16 p3, -0x7530

    .line 2
    .line 3
    cmp-long p1, p1, p3

    .line 4
    .line 5
    if-gez p1, :cond_0

    .line 6
    .line 7
    if-nez p5, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    return p1
.end method

.method protected t2(JJ)Z
    .locals 2

    .line 1
    const-wide/16 v0, -0x7530

    .line 2
    .line 3
    cmp-long p1, p1, v0

    .line 4
    .line 5
    if-gez p1, :cond_0

    .line 6
    .line 7
    const-wide/32 p1, 0x186a0

    .line 8
    .line 9
    .line 10
    cmp-long p1, p3, p1

    .line 11
    .line 12
    if-lez p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    return p1
.end method

.method protected u0(Landroidx/media3/exoplayer/mediacodec/w;Landroidx/media3/common/r;Landroid/media/MediaCrypto;F)Landroidx/media3/exoplayer/mediacodec/t$a;
    .locals 7

    .line 1
    iget-object v2, p1, Landroidx/media3/exoplayer/mediacodec/w;->c:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/exoplayer/i;->y()[Landroidx/media3/common/r;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, p1, p2, v0}, Landroidx/media3/exoplayer/video/j;->M1(Landroidx/media3/exoplayer/mediacodec/w;Landroidx/media3/common/r;[Landroidx/media3/common/r;)Landroidx/media3/exoplayer/video/j$e;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    iput-object v3, p0, Landroidx/media3/exoplayer/video/j;->P0:Landroidx/media3/exoplayer/video/j$e;

    .line 12
    .line 13
    iget-boolean v5, p0, Landroidx/media3/exoplayer/video/j;->J0:Z

    .line 14
    .line 15
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/j;->C1:Z

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget v0, p0, Landroidx/media3/exoplayer/video/j;->D1:I

    .line 20
    .line 21
    :goto_0
    move v6, v0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    goto :goto_0

    .line 25
    :goto_1
    move-object v0, p0

    .line 26
    move-object v1, p2

    .line 27
    move v4, p4

    .line 28
    invoke-virtual/range {v0 .. v6}, Landroidx/media3/exoplayer/video/j;->Q1(Landroidx/media3/common/r;Ljava/lang/String;Landroidx/media3/exoplayer/video/j$e;FZI)Landroid/media/MediaFormat;

    .line 29
    .line 30
    .line 31
    move-result-object p4

    .line 32
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/j;->R1(Landroidx/media3/exoplayer/mediacodec/w;)Landroid/view/Surface;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-direct {p0, p4}, Landroidx/media3/exoplayer/video/j;->c2(Landroid/media/MediaFormat;)V

    .line 37
    .line 38
    .line 39
    invoke-static {p1, p4, p2, v0, p3}, Landroidx/media3/exoplayer/mediacodec/t$a;->b(Landroidx/media3/exoplayer/mediacodec/w;Landroid/media/MediaFormat;Landroidx/media3/common/r;Landroid/view/Surface;Landroid/media/MediaCrypto;)Landroidx/media3/exoplayer/mediacodec/t$a;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    return-object p1
.end method

.method protected u2()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method protected v2(Landroidx/media3/exoplayer/mediacodec/w;)Z
    .locals 2

    .line 1
    sget v0, Landroidx/media3/common/util/a1;->a:I

    .line 2
    .line 3
    const/16 v1, 0x23

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-boolean p1, p1, Landroidx/media3/exoplayer/mediacodec/w;->k:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method protected w2(Landroidx/media3/exoplayer/mediacodec/w;)Z
    .locals 2

    .line 1
    sget v0, Landroidx/media3/common/util/a1;->a:I

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    if-lt v0, v1, :cond_1

    .line 6
    .line 7
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/j;->C1:Z

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p1, Landroidx/media3/exoplayer/mediacodec/w;->a:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/video/j;->E1(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iget-boolean p1, p1, Landroidx/media3/exoplayer/mediacodec/w;->g:Z

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Landroidx/media3/exoplayer/video/j;->F0:Landroid/content/Context;

    .line 24
    .line 25
    invoke-static {p1}, Landroidx/media3/exoplayer/video/PlaceholderSurface;->isSecureSupported(Landroid/content/Context;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    :cond_0
    const/4 p1, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 p1, 0x0

    .line 34
    :goto_0
    return p1
.end method

.method protected x2(Landroidx/media3/exoplayer/mediacodec/t;IJ)V
    .locals 0

    .line 1
    const-string p3, "skipVideoBuffer"

    .line 2
    .line 3
    invoke-static {p3}, Landroidx/media3/common/util/q0;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p3, 0x0

    .line 7
    invoke-interface {p1, p2, p3}, Landroidx/media3/exoplayer/mediacodec/t;->k(IZ)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroidx/media3/common/util/q0;->b()V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:Landroidx/media3/exoplayer/j;

    .line 14
    .line 15
    iget p2, p1, Landroidx/media3/exoplayer/j;->f:I

    .line 16
    .line 17
    add-int/lit8 p2, p2, 0x1

    .line 18
    .line 19
    iput p2, p1, Landroidx/media3/exoplayer/j;->f:I

    .line 20
    .line 21
    return-void
.end method

.method protected z0(Landroidx/media3/decoder/DecoderInputBuffer;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/j;->R0:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p1, p1, Landroidx/media3/decoder/DecoderInputBuffer;->f:Ljava/nio/ByteBuffer;

    .line 7
    .line 8
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x7

    .line 19
    if-lt v0, v1, :cond_2

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    const/4 v5, 0x0

    .line 42
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 43
    .line 44
    .line 45
    const/16 v6, -0x4b

    .line 46
    .line 47
    if-ne v0, v6, :cond_2

    .line 48
    .line 49
    const/16 v0, 0x3c

    .line 50
    .line 51
    if-ne v1, v0, :cond_2

    .line 52
    .line 53
    const/4 v0, 0x1

    .line 54
    if-ne v2, v0, :cond_2

    .line 55
    .line 56
    const/4 v1, 0x4

    .line 57
    if-ne v3, v1, :cond_2

    .line 58
    .line 59
    if-eqz v4, :cond_1

    .line 60
    .line 61
    if-ne v4, v0, :cond_2

    .line 62
    .line 63
    :cond_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    new-array v0, v0, [B

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->l0()Landroidx/media3/exoplayer/mediacodec/t;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    check-cast p1, Landroidx/media3/exoplayer/mediacodec/t;

    .line 84
    .line 85
    invoke-static {p1, v0}, Landroidx/media3/exoplayer/video/j;->m2(Landroidx/media3/exoplayer/mediacodec/t;[B)V

    .line 86
    .line 87
    .line 88
    :cond_2
    return-void
.end method
