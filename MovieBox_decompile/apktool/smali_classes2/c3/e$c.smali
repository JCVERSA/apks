.class public final Lc3/e$c;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc3/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "c"
.end annotation


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field public E:I

.field public F:F

.field public G:F

.field public H:F

.field public I:F

.field public J:F

.field public K:F

.field public L:F

.field public M:F

.field public N:F

.field public O:F

.field public P:[B

.field public Q:I

.field public R:I

.field public S:I

.field public T:J

.field public U:J

.field public V:Lk2/t0;

.field public W:Z

.field public X:Z

.field private Y:Ljava/lang/String;

.field public Z:Lk2/s0;

.field public a:Z

.field public a0:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field private h:I

.field public i:Z

.field public j:[B

.field public k:Lk2/s0$a;

.field public l:[B

.field public m:Landroidx/media3/common/DrmInitData;

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:F

.field public v:F

.field public w:F

.field public x:[B

.field public y:I

.field public z:Z


# direct methods
.method protected constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lc3/e$c;->n:I

    .line 6
    .line 7
    iput v0, p0, Lc3/e$c;->o:I

    .line 8
    .line 9
    iput v0, p0, Lc3/e$c;->p:I

    .line 10
    .line 11
    iput v0, p0, Lc3/e$c;->q:I

    .line 12
    .line 13
    iput v0, p0, Lc3/e$c;->r:I

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput v1, p0, Lc3/e$c;->s:I

    .line 17
    .line 18
    iput v0, p0, Lc3/e$c;->t:I

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    iput v2, p0, Lc3/e$c;->u:F

    .line 22
    .line 23
    iput v2, p0, Lc3/e$c;->v:F

    .line 24
    .line 25
    iput v2, p0, Lc3/e$c;->w:F

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    iput-object v2, p0, Lc3/e$c;->x:[B

    .line 29
    .line 30
    iput v0, p0, Lc3/e$c;->y:I

    .line 31
    .line 32
    iput-boolean v1, p0, Lc3/e$c;->z:Z

    .line 33
    .line 34
    iput v0, p0, Lc3/e$c;->A:I

    .line 35
    .line 36
    iput v0, p0, Lc3/e$c;->B:I

    .line 37
    .line 38
    iput v0, p0, Lc3/e$c;->C:I

    .line 39
    .line 40
    const/16 v1, 0x3e8

    .line 41
    .line 42
    iput v1, p0, Lc3/e$c;->D:I

    .line 43
    .line 44
    const/16 v1, 0xc8

    .line 45
    .line 46
    iput v1, p0, Lc3/e$c;->E:I

    .line 47
    .line 48
    const/high16 v1, -0x40800000    # -1.0f

    .line 49
    .line 50
    iput v1, p0, Lc3/e$c;->F:F

    .line 51
    .line 52
    iput v1, p0, Lc3/e$c;->G:F

    .line 53
    .line 54
    iput v1, p0, Lc3/e$c;->H:F

    .line 55
    .line 56
    iput v1, p0, Lc3/e$c;->I:F

    .line 57
    .line 58
    iput v1, p0, Lc3/e$c;->J:F

    .line 59
    .line 60
    iput v1, p0, Lc3/e$c;->K:F

    .line 61
    .line 62
    iput v1, p0, Lc3/e$c;->L:F

    .line 63
    .line 64
    iput v1, p0, Lc3/e$c;->M:F

    .line 65
    .line 66
    iput v1, p0, Lc3/e$c;->N:F

    .line 67
    .line 68
    iput v1, p0, Lc3/e$c;->O:F

    .line 69
    .line 70
    const/4 v1, 0x1

    .line 71
    iput v1, p0, Lc3/e$c;->Q:I

    .line 72
    .line 73
    iput v0, p0, Lc3/e$c;->R:I

    .line 74
    .line 75
    const/16 v0, 0x1f40

    .line 76
    .line 77
    iput v0, p0, Lc3/e$c;->S:I

    .line 78
    .line 79
    const-wide/16 v2, 0x0

    .line 80
    .line 81
    iput-wide v2, p0, Lc3/e$c;->T:J

    .line 82
    .line 83
    iput-wide v2, p0, Lc3/e$c;->U:J

    .line 84
    .line 85
    iput-boolean v1, p0, Lc3/e$c;->X:Z

    .line 86
    .line 87
    const-string v0, "eng"

    .line 88
    .line 89
    iput-object v0, p0, Lc3/e$c;->Y:Ljava/lang/String;

    .line 90
    .line 91
    return-void
.end method

.method static synthetic a(Lc3/e$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc3/e$c;->f()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic b(Lc3/e$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lc3/e$c;->h:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic c(Lc3/e$c;I)I
    .locals 0

    .line 1
    iput p1, p0, Lc3/e$c;->h:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic d(Lc3/e$c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lc3/e$c;->Y:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic e(Lc3/e$c;Z)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lc3/e$c;->o(Z)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc3/e$c;->Z:Lk2/s0;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private g(Ljava/lang/String;)[B
    .locals 2

    .line 1
    iget-object v0, p0, Lc3/e$c;->l:[B

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "Missing CodecPrivate for codec "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-static {p1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    throw p1
.end method

.method private h()[B
    .locals 5

    .line 1
    iget v0, p0, Lc3/e$c;->F:F

    .line 2
    .line 3
    const/high16 v1, -0x40800000    # -1.0f

    .line 4
    .line 5
    cmpl-float v0, v0, v1

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget v0, p0, Lc3/e$c;->G:F

    .line 10
    .line 11
    cmpl-float v0, v0, v1

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget v0, p0, Lc3/e$c;->H:F

    .line 16
    .line 17
    cmpl-float v0, v0, v1

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget v0, p0, Lc3/e$c;->I:F

    .line 22
    .line 23
    cmpl-float v0, v0, v1

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget v0, p0, Lc3/e$c;->J:F

    .line 28
    .line 29
    cmpl-float v0, v0, v1

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget v0, p0, Lc3/e$c;->K:F

    .line 34
    .line 35
    cmpl-float v0, v0, v1

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget v0, p0, Lc3/e$c;->L:F

    .line 40
    .line 41
    cmpl-float v0, v0, v1

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    iget v0, p0, Lc3/e$c;->M:F

    .line 46
    .line 47
    cmpl-float v0, v0, v1

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    iget v0, p0, Lc3/e$c;->N:F

    .line 52
    .line 53
    cmpl-float v0, v0, v1

    .line 54
    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    iget v0, p0, Lc3/e$c;->O:F

    .line 58
    .line 59
    cmpl-float v0, v0, v1

    .line 60
    .line 61
    if-nez v0, :cond_0

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    const/16 v0, 0x19

    .line 65
    .line 66
    new-array v0, v0, [B

    .line 67
    .line 68
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    const/4 v2, 0x0

    .line 79
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 80
    .line 81
    .line 82
    iget v2, p0, Lc3/e$c;->F:F

    .line 83
    .line 84
    const v3, 0x47435000    # 50000.0f

    .line 85
    .line 86
    .line 87
    mul-float/2addr v2, v3

    .line 88
    const/high16 v4, 0x3f000000    # 0.5f

    .line 89
    .line 90
    add-float/2addr v2, v4

    .line 91
    float-to-int v2, v2

    .line 92
    int-to-short v2, v2

    .line 93
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 94
    .line 95
    .line 96
    iget v2, p0, Lc3/e$c;->G:F

    .line 97
    .line 98
    mul-float/2addr v2, v3

    .line 99
    add-float/2addr v2, v4

    .line 100
    float-to-int v2, v2

    .line 101
    int-to-short v2, v2

    .line 102
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 103
    .line 104
    .line 105
    iget v2, p0, Lc3/e$c;->H:F

    .line 106
    .line 107
    mul-float/2addr v2, v3

    .line 108
    add-float/2addr v2, v4

    .line 109
    float-to-int v2, v2

    .line 110
    int-to-short v2, v2

    .line 111
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 112
    .line 113
    .line 114
    iget v2, p0, Lc3/e$c;->I:F

    .line 115
    .line 116
    mul-float/2addr v2, v3

    .line 117
    add-float/2addr v2, v4

    .line 118
    float-to-int v2, v2

    .line 119
    int-to-short v2, v2

    .line 120
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 121
    .line 122
    .line 123
    iget v2, p0, Lc3/e$c;->J:F

    .line 124
    .line 125
    mul-float/2addr v2, v3

    .line 126
    add-float/2addr v2, v4

    .line 127
    float-to-int v2, v2

    .line 128
    int-to-short v2, v2

    .line 129
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 130
    .line 131
    .line 132
    iget v2, p0, Lc3/e$c;->K:F

    .line 133
    .line 134
    mul-float/2addr v2, v3

    .line 135
    add-float/2addr v2, v4

    .line 136
    float-to-int v2, v2

    .line 137
    int-to-short v2, v2

    .line 138
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 139
    .line 140
    .line 141
    iget v2, p0, Lc3/e$c;->L:F

    .line 142
    .line 143
    mul-float/2addr v2, v3

    .line 144
    add-float/2addr v2, v4

    .line 145
    float-to-int v2, v2

    .line 146
    int-to-short v2, v2

    .line 147
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 148
    .line 149
    .line 150
    iget v2, p0, Lc3/e$c;->M:F

    .line 151
    .line 152
    mul-float/2addr v2, v3

    .line 153
    add-float/2addr v2, v4

    .line 154
    float-to-int v2, v2

    .line 155
    int-to-short v2, v2

    .line 156
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 157
    .line 158
    .line 159
    iget v2, p0, Lc3/e$c;->N:F

    .line 160
    .line 161
    add-float/2addr v2, v4

    .line 162
    float-to-int v2, v2

    .line 163
    int-to-short v2, v2

    .line 164
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 165
    .line 166
    .line 167
    iget v2, p0, Lc3/e$c;->O:F

    .line 168
    .line 169
    add-float/2addr v2, v4

    .line 170
    float-to-int v2, v2

    .line 171
    int-to-short v2, v2

    .line 172
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 173
    .line 174
    .line 175
    iget v2, p0, Lc3/e$c;->D:I

    .line 176
    .line 177
    int-to-short v2, v2

    .line 178
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 179
    .line 180
    .line 181
    iget v2, p0, Lc3/e$c;->E:I

    .line 182
    .line 183
    int-to-short v2, v2

    .line 184
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 185
    .line 186
    .line 187
    return-object v0

    .line 188
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 189
    return-object v0
.end method

.method private static k(Landroidx/media3/common/util/j0;)Landroid/util/Pair;
    .locals 6

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->X(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->x()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    const-wide/32 v4, 0x58564944

    .line 12
    .line 13
    .line 14
    cmp-long v0, v2, v4

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    new-instance p0, Landroid/util/Pair;

    .line 19
    .line 20
    const-string v0, "video/divx"

    .line 21
    .line 22
    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_0
    const-wide/32 v4, 0x33363248

    .line 27
    .line 28
    .line 29
    cmp-long v0, v2, v4

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    new-instance p0, Landroid/util/Pair;

    .line 34
    .line 35
    const-string v0, "video/3gpp"

    .line 36
    .line 37
    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_1
    const-wide/32 v4, 0x31435657

    .line 42
    .line 43
    .line 44
    cmp-long v0, v2, v4

    .line 45
    .line 46
    if-nez v0, :cond_4

    .line 47
    .line 48
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->f()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    add-int/lit8 v0, v0, 0x14

    .line 53
    .line 54
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->e()[B

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    :goto_0
    array-length v2, p0

    .line 59
    add-int/lit8 v2, v2, -0x4

    .line 60
    .line 61
    if-ge v0, v2, :cond_3

    .line 62
    .line 63
    aget-byte v2, p0, v0

    .line 64
    .line 65
    if-nez v2, :cond_2

    .line 66
    .line 67
    add-int/lit8 v2, v0, 0x1

    .line 68
    .line 69
    aget-byte v2, p0, v2

    .line 70
    .line 71
    if-nez v2, :cond_2

    .line 72
    .line 73
    add-int/lit8 v2, v0, 0x2

    .line 74
    .line 75
    aget-byte v2, p0, v2

    .line 76
    .line 77
    const/4 v3, 0x1

    .line 78
    if-ne v2, v3, :cond_2

    .line 79
    .line 80
    add-int/lit8 v2, v0, 0x3

    .line 81
    .line 82
    aget-byte v2, p0, v2

    .line 83
    .line 84
    const/16 v3, 0xf

    .line 85
    .line 86
    if-ne v2, v3, :cond_2

    .line 87
    .line 88
    array-length v2, p0

    .line 89
    invoke-static {p0, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    new-instance v0, Landroid/util/Pair;

    .line 94
    .line 95
    const-string v2, "video/wvc1"

    .line 96
    .line 97
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-direct {v0, v2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    return-object v0

    .line 105
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_3
    const-string p0, "Failed to find FourCC VC1 initialization data"

    .line 109
    .line 110
    invoke-static {p0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    throw p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :cond_4
    const-string p0, "MatroskaExtractor"

    .line 116
    .line 117
    const-string v0, "Unknown FourCC. Setting mimeType to video/x-unknown"

    .line 118
    .line 119
    invoke-static {p0, v0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    new-instance p0, Landroid/util/Pair;

    .line 123
    .line 124
    const-string v0, "video/x-unknown"

    .line 125
    .line 126
    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    return-object p0

    .line 130
    :catch_0
    const-string p0, "Error parsing FourCC private data"

    .line 131
    .line 132
    invoke-static {p0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    throw p0
.end method

.method private static l(Landroidx/media3/common/util/j0;)Z
    .locals 8

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->z()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    const v2, 0xfffe

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-ne v0, v2, :cond_2

    .line 14
    .line 15
    const/16 v0, 0x18

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->A()J

    .line 21
    .line 22
    .line 23
    move-result-wide v4

    .line 24
    invoke-static {}, Lc3/e;->i()Ljava/util/UUID;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    .line 29
    .line 30
    .line 31
    move-result-wide v6

    .line 32
    cmp-long v0, v4, v6

    .line 33
    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->A()J

    .line 37
    .line 38
    .line 39
    move-result-wide v4

    .line 40
    invoke-static {}, Lc3/e;->i()Ljava/util/UUID;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    .line 45
    .line 46
    .line 47
    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    cmp-long p0, v4, v6

    .line 49
    .line 50
    if-nez p0, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    move v1, v3

    .line 54
    :goto_0
    return v1

    .line 55
    :cond_2
    return v3

    .line 56
    :catch_0
    const-string p0, "Error parsing MS/ACM codec private"

    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    invoke-static {p0, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    throw p0
.end method

.method private static m([B)Ljava/util/List;
    .locals 11

    .line 1
    const-string v0, "Error parsing vorbis codec private"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    :try_start_0
    aget-byte v3, p0, v2

    .line 6
    .line 7
    const/4 v4, 0x2

    .line 8
    if-ne v3, v4, :cond_5

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    move v6, v2

    .line 12
    move v5, v3

    .line 13
    :goto_0
    aget-byte v7, p0, v5

    .line 14
    .line 15
    and-int/lit16 v8, v7, 0xff

    .line 16
    .line 17
    const/16 v9, 0xff

    .line 18
    .line 19
    if-ne v8, v9, :cond_0

    .line 20
    .line 21
    add-int/lit16 v6, v6, 0xff

    .line 22
    .line 23
    add-int/lit8 v5, v5, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    add-int/2addr v5, v3

    .line 27
    and-int/2addr v7, v9

    .line 28
    add-int/2addr v6, v7

    .line 29
    move v7, v2

    .line 30
    :goto_1
    aget-byte v8, p0, v5

    .line 31
    .line 32
    and-int/lit16 v10, v8, 0xff

    .line 33
    .line 34
    if-ne v10, v9, :cond_1

    .line 35
    .line 36
    add-int/lit16 v7, v7, 0xff

    .line 37
    .line 38
    add-int/lit8 v5, v5, 0x1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    add-int/2addr v5, v3

    .line 42
    and-int/2addr v8, v9

    .line 43
    add-int/2addr v7, v8

    .line 44
    aget-byte v8, p0, v5

    .line 45
    .line 46
    if-ne v8, v3, :cond_4

    .line 47
    .line 48
    new-array v3, v6, [B

    .line 49
    .line 50
    invoke-static {p0, v5, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    .line 52
    .line 53
    add-int/2addr v5, v6

    .line 54
    aget-byte v6, p0, v5

    .line 55
    .line 56
    const/4 v8, 0x3

    .line 57
    if-ne v6, v8, :cond_3

    .line 58
    .line 59
    add-int/2addr v5, v7

    .line 60
    aget-byte v6, p0, v5

    .line 61
    .line 62
    const/4 v7, 0x5

    .line 63
    if-ne v6, v7, :cond_2

    .line 64
    .line 65
    array-length v6, p0

    .line 66
    sub-int/2addr v6, v5

    .line 67
    new-array v6, v6, [B

    .line 68
    .line 69
    array-length v7, p0

    .line 70
    sub-int/2addr v7, v5

    .line 71
    invoke-static {p0, v5, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    .line 73
    .line 74
    new-instance p0, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-direct {p0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 77
    .line 78
    .line 79
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    invoke-interface {p0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    return-object p0

    .line 86
    :cond_2
    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    throw p0

    .line 91
    :cond_3
    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    throw p0

    .line 96
    :cond_4
    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    throw p0

    .line 101
    :cond_5
    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    throw p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :catch_0
    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    throw p0
.end method

.method private o(Z)Z
    .locals 2

    .line 1
    const-string v0, "A_OPUS"

    .line 2
    .line 3
    iget-object v1, p0, Lc3/e$c;->c:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return p1

    .line 12
    :cond_0
    iget p1, p0, Lc3/e$c;->g:I

    .line 13
    .line 14
    if-lez p1, :cond_1

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 p1, 0x0

    .line 19
    :goto_0
    return p1
.end method


# virtual methods
.method public i(Lk2/t;I)V
    .locals 19

    move-object/from16 v0, p0

    const/16 v2, 0x10

    .line 1
    iget-object v5, v0, Lc3/e$c;->c:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    const-string v7, "application/dvbsubs"

    const-string v8, "application/vobsub"

    const-string v9, "application/pgs"

    const-string v11, "text/x-ssa"

    const-string v12, "text/vtt"

    const-string v13, "application/x-subrip"

    const/16 v15, 0x8

    const/4 v3, 0x3

    const-string v6, ". Setting mimeType to "

    const-string v16, "audio/raw"

    const-string v4, "MatroskaExtractor"

    const-string v14, "audio/x-unknown"

    const/4 v10, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v17

    sparse-switch v17, :sswitch_data_0

    :goto_0
    const/4 v1, -0x1

    goto/16 :goto_1

    :sswitch_0
    const-string v1, "A_OPUS"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x20

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "A_FLAC"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x1f

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "A_EAC3"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v1, 0x1e

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "V_MPEG2"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0x1d

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "S_TEXT/UTF8"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/16 v1, 0x1c

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "S_TEXT/WEBVTT"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/16 v1, 0x1b

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/16 v1, 0x1a

    goto/16 :goto_1

    :sswitch_7
    const-string v1, "S_TEXT/ASS"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    const/16 v1, 0x19

    goto/16 :goto_1

    :sswitch_8
    const-string v1, "A_PCM/INT/LIT"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    const/16 v1, 0x18

    goto/16 :goto_1

    :sswitch_9
    const-string v1, "A_PCM/INT/BIG"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x17

    goto/16 :goto_1

    :sswitch_a
    const-string v1, "A_PCM/FLOAT/IEEE"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0x16

    goto/16 :goto_1

    :sswitch_b
    const-string v1, "A_DTS/EXPRESS"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0x15

    goto/16 :goto_1

    :sswitch_c
    const-string v1, "V_THEORA"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0x14

    goto/16 :goto_1

    :sswitch_d
    const-string v1, "S_HDMV/PGS"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0x13

    goto/16 :goto_1

    :sswitch_e
    const-string v1, "V_VP9"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0x12

    goto/16 :goto_1

    :sswitch_f
    const-string v1, "V_VP8"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0x11

    goto/16 :goto_1

    :sswitch_10
    const-string v1, "V_AV1"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto/16 :goto_0

    :cond_10
    move v1, v2

    goto/16 :goto_1

    :sswitch_11
    const-string v1, "A_DTS"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v1, 0xf

    goto/16 :goto_1

    :sswitch_12
    const-string v1, "A_AC3"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v1, 0xe

    goto/16 :goto_1

    :sswitch_13
    const-string v1, "A_AAC"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v1, 0xd

    goto/16 :goto_1

    :sswitch_14
    const-string v1, "A_DTS/LOSSLESS"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v1, 0xc

    goto/16 :goto_1

    :sswitch_15
    const-string v1, "S_VOBSUB"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v1, 0xb

    goto/16 :goto_1

    :sswitch_16
    const-string v1, "V_MPEG4/ISO/AVC"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v1, 0xa

    goto/16 :goto_1

    :sswitch_17
    const-string v1, "V_MPEG4/ISO/ASP"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v1, 0x9

    goto/16 :goto_1

    :sswitch_18
    const-string v1, "S_DVBSUB"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto/16 :goto_0

    :cond_18
    move v1, v15

    goto/16 :goto_1

    :sswitch_19
    const-string v1, "V_MS/VFW/FOURCC"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto/16 :goto_0

    :cond_19
    const/4 v1, 0x7

    goto :goto_1

    :sswitch_1a
    const-string v1, "A_MPEG/L3"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/4 v1, 0x6

    goto :goto_1

    :sswitch_1b
    const-string v1, "A_MPEG/L2"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/4 v1, 0x5

    goto :goto_1

    :sswitch_1c
    const-string v1, "A_VORBIS"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/4 v1, 0x4

    goto :goto_1

    :sswitch_1d
    const-string v1, "A_TRUEHD"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto/16 :goto_0

    :cond_1d
    move v1, v3

    goto :goto_1

    :sswitch_1e
    const-string v1, "A_MS/ACM"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_1f
    const-string v1, "V_MPEG4/ISO/SP"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/4 v1, 0x1

    goto :goto_1

    :sswitch_20
    const-string v1, "V_MPEG4/ISO/AP"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    goto/16 :goto_0

    :cond_20
    const/4 v1, 0x0

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 2
    const-string v1, "Unrecognized codec identifier."

    invoke-static {v1, v10}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    .line 3
    :pswitch_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    iget-object v2, v0, Lc3/e$c;->c:Ljava/lang/String;

    invoke-direct {v0, v2}, Lc3/e$c;->g(Ljava/lang/String;)[B

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-wide v5, v0, Lc3/e$c;->T:J

    invoke-virtual {v2, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 6
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-wide v4, v0, Lc3/e$c;->U:J

    invoke-virtual {v2, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 8
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    const-string v16, "audio/opus"

    const/16 v6, 0x1680

    move-object v2, v10

    const/4 v5, 0x0

    :goto_2
    const/4 v14, -0x1

    goto/16 :goto_11

    .line 10
    :pswitch_1
    iget-object v1, v0, Lc3/e$c;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Lc3/e$c;->g(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 11
    const-string v16, "audio/flac"

    :goto_3
    move-object v2, v10

    :goto_4
    const/4 v5, 0x0

    :goto_5
    const/4 v6, -0x1

    goto :goto_2

    .line 12
    :pswitch_2
    const-string v16, "audio/eac3"

    :goto_6
    move-object v1, v10

    move-object v2, v1

    goto :goto_4

    .line 13
    :pswitch_3
    const-string v16, "video/mpeg2"

    goto :goto_6

    :pswitch_4
    move-object v1, v10

    move-object v2, v1

    move-object/from16 v16, v13

    goto :goto_4

    :pswitch_5
    move-object v1, v10

    move-object v2, v1

    move-object/from16 v16, v12

    goto :goto_4

    .line 14
    :pswitch_6
    new-instance v1, Landroidx/media3/common/util/j0;

    iget-object v2, v0, Lc3/e$c;->c:Ljava/lang/String;

    invoke-direct {v0, v2}, Lc3/e$c;->g(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media3/common/util/j0;-><init>([B)V

    invoke-static {v1}, Lk2/f0;->a(Landroidx/media3/common/util/j0;)Lk2/f0;

    move-result-object v1

    .line 15
    iget-object v2, v1, Lk2/f0;->a:Ljava/util/List;

    .line 16
    iget v4, v1, Lk2/f0;->b:I

    iput v4, v0, Lc3/e$c;->a0:I

    .line 17
    iget-object v1, v1, Lk2/f0;->n:Ljava/lang/String;

    .line 18
    const-string v16, "video/hevc"

    :goto_7
    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v14, -0x1

    move-object/from16 v18, v2

    move-object v2, v1

    move-object/from16 v1, v18

    goto/16 :goto_11

    .line 19
    :pswitch_7
    invoke-static {}, Lc3/e;->g()[B

    move-result-object v1

    iget-object v2, v0, Lc3/e$c;->c:Ljava/lang/String;

    invoke-direct {v0, v2}, Lc3/e$c;->g(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    move-object v2, v10

    move-object/from16 v16, v11

    goto :goto_4

    .line 20
    :pswitch_8
    iget v1, v0, Lc3/e$c;->R:I

    invoke-static {v1}, Landroidx/media3/common/util/a1;->i0(I)I

    move-result v1

    if-nez v1, :cond_21

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported little endian PCM bit depth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lc3/e$c;->R:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    move-object v1, v10

    move-object v2, v1

    move-object/from16 v16, v14

    goto :goto_4

    :cond_21
    move v14, v1

    :goto_9
    move-object v1, v10

    move-object v2, v1

    const/4 v5, 0x0

    :goto_a
    const/4 v6, -0x1

    goto/16 :goto_11

    .line 22
    :pswitch_9
    iget v1, v0, Lc3/e$c;->R:I

    if-ne v1, v15, :cond_22

    move v14, v3

    goto :goto_9

    :cond_22
    if-ne v1, v2, :cond_23

    const/high16 v14, 0x10000000

    goto :goto_9

    :cond_23
    const/16 v2, 0x18

    if-ne v1, v2, :cond_24

    const/high16 v14, 0x50000000

    goto :goto_9

    :cond_24
    const/16 v2, 0x20

    if-ne v1, v2, :cond_25

    const/high16 v14, 0x60000000

    goto :goto_9

    .line 23
    :cond_25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported big endian PCM bit depth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lc3/e$c;->R:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 24
    :pswitch_a
    iget v1, v0, Lc3/e$c;->R:I

    const/16 v2, 0x20

    if-ne v1, v2, :cond_26

    move-object v1, v10

    move-object v2, v1

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v14, 0x4

    goto/16 :goto_11

    .line 25
    :cond_26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported floating point PCM bit depth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lc3/e$c;->R:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 26
    :pswitch_b
    const-string v16, "video/x-unknown"

    goto/16 :goto_6

    :pswitch_c
    move-object/from16 v16, v9

    goto/16 :goto_6

    .line 27
    :pswitch_d
    iget-object v1, v0, Lc3/e$c;->l:[B

    if-nez v1, :cond_27

    move-object v1, v10

    goto :goto_b

    :cond_27
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 28
    :goto_b
    const-string v16, "video/x-vnd.on2.vp9"

    goto/16 :goto_3

    .line 29
    :pswitch_e
    const-string v16, "video/x-vnd.on2.vp8"

    goto/16 :goto_6

    .line 30
    :pswitch_f
    iget-object v1, v0, Lc3/e$c;->l:[B

    if-nez v1, :cond_28

    move-object v1, v10

    goto :goto_c

    :cond_28
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 31
    :goto_c
    const-string v16, "video/av01"

    goto/16 :goto_3

    .line 32
    :pswitch_10
    const-string v16, "audio/vnd.dts"

    goto/16 :goto_6

    .line 33
    :pswitch_11
    const-string v16, "audio/ac3"

    goto/16 :goto_6

    .line 34
    :pswitch_12
    iget-object v1, v0, Lc3/e$c;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Lc3/e$c;->g(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 35
    iget-object v2, v0, Lc3/e$c;->l:[B

    invoke-static {v2}, Lk2/a;->e([B)Lk2/a$b;

    move-result-object v2

    .line 36
    iget v4, v2, Lk2/a$b;->a:I

    iput v4, v0, Lc3/e$c;->S:I

    .line 37
    iget v4, v2, Lk2/a$b;->b:I

    iput v4, v0, Lc3/e$c;->Q:I

    .line 38
    iget-object v2, v2, Lk2/a$b;->c:Ljava/lang/String;

    .line 39
    const-string v16, "audio/mp4a-latm"

    goto/16 :goto_4

    .line 40
    :pswitch_13
    const-string v16, "audio/vnd.dts.hd"

    goto/16 :goto_6

    .line 41
    :pswitch_14
    iget-object v1, v0, Lc3/e$c;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Lc3/e$c;->g(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    move-object/from16 v16, v8

    goto/16 :goto_3

    .line 42
    :pswitch_15
    new-instance v1, Landroidx/media3/common/util/j0;

    iget-object v2, v0, Lc3/e$c;->c:Ljava/lang/String;

    invoke-direct {v0, v2}, Lc3/e$c;->g(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media3/common/util/j0;-><init>([B)V

    invoke-static {v1}, Lk2/d;->b(Landroidx/media3/common/util/j0;)Lk2/d;

    move-result-object v1

    .line 43
    iget-object v2, v1, Lk2/d;->a:Ljava/util/List;

    .line 44
    iget v4, v1, Lk2/d;->b:I

    iput v4, v0, Lc3/e$c;->a0:I

    .line 45
    iget-object v1, v1, Lk2/d;->l:Ljava/lang/String;

    .line 46
    const-string v16, "video/avc"

    goto/16 :goto_7

    :pswitch_16
    const/4 v1, 0x4

    .line 47
    new-array v2, v1, [B

    .line 48
    iget-object v4, v0, Lc3/e$c;->c:Ljava/lang/String;

    invoke-direct {v0, v4}, Lc3/e$c;->g(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    move-object/from16 v16, v7

    :goto_d
    move-object v2, v10

    goto/16 :goto_5

    :pswitch_17
    const/4 v5, 0x0

    .line 50
    new-instance v1, Landroidx/media3/common/util/j0;

    iget-object v2, v0, Lc3/e$c;->c:Ljava/lang/String;

    .line 51
    invoke-direct {v0, v2}, Lc3/e$c;->g(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media3/common/util/j0;-><init>([B)V

    invoke-static {v1}, Lc3/e$c;->k(Landroidx/media3/common/util/j0;)Landroid/util/Pair;

    move-result-object v1

    .line 52
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v16, v2

    check-cast v16, Ljava/lang/String;

    .line 53
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    goto :goto_d

    :pswitch_18
    const/4 v5, 0x0

    .line 54
    const-string v16, "audio/mpeg"

    :goto_e
    move-object v1, v10

    move-object v2, v1

    const/16 v6, 0x1000

    goto/16 :goto_2

    :pswitch_19
    const/4 v5, 0x0

    .line 55
    const-string v16, "audio/mpeg-L2"

    goto :goto_e

    :pswitch_1a
    const/4 v5, 0x0

    .line 56
    iget-object v1, v0, Lc3/e$c;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Lc3/e$c;->g(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lc3/e$c;->m([B)Ljava/util/List;

    move-result-object v1

    .line 57
    const-string v16, "audio/vorbis"

    const/16 v6, 0x2000

    move-object v2, v10

    goto/16 :goto_2

    :pswitch_1b
    const/4 v5, 0x0

    .line 58
    new-instance v1, Lk2/t0;

    invoke-direct {v1}, Lk2/t0;-><init>()V

    iput-object v1, v0, Lc3/e$c;->V:Lk2/t0;

    .line 59
    const-string v16, "audio/true-hd"

    move-object v1, v10

    move-object v2, v1

    goto/16 :goto_5

    :pswitch_1c
    const/4 v5, 0x0

    .line 60
    new-instance v1, Landroidx/media3/common/util/j0;

    iget-object v2, v0, Lc3/e$c;->c:Ljava/lang/String;

    invoke-direct {v0, v2}, Lc3/e$c;->g(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media3/common/util/j0;-><init>([B)V

    invoke-static {v1}, Lc3/e$c;->l(Landroidx/media3/common/util/j0;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 61
    iget v1, v0, Lc3/e$c;->R:I

    invoke-static {v1}, Landroidx/media3/common/util/a1;->i0(I)I

    move-result v1

    if-nez v1, :cond_29

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported PCM bit depth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lc3/e$c;->R:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f
    move-object v1, v10

    move-object v2, v1

    move-object/from16 v16, v14

    goto/16 :goto_5

    :cond_29
    move v14, v1

    move-object v1, v10

    move-object v2, v1

    goto/16 :goto_a

    .line 63
    :cond_2a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-PCM MS/ACM is unsupported. Setting mimeType to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :pswitch_1d
    const/4 v5, 0x0

    .line 64
    iget-object v1, v0, Lc3/e$c;->l:[B

    if-nez v1, :cond_2b

    move-object v1, v10

    goto :goto_10

    :cond_2b
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 65
    :goto_10
    const-string v16, "video/mp4v-es"

    goto/16 :goto_d

    .line 66
    :goto_11
    iget-object v4, v0, Lc3/e$c;->P:[B

    if-eqz v4, :cond_2c

    .line 67
    new-instance v4, Landroidx/media3/common/util/j0;

    iget-object v15, v0, Lc3/e$c;->P:[B

    invoke-direct {v4, v15}, Landroidx/media3/common/util/j0;-><init>([B)V

    .line 68
    invoke-static {v4}, Lk2/o;->a(Landroidx/media3/common/util/j0;)Lk2/o;

    move-result-object v4

    if-eqz v4, :cond_2c

    .line 69
    iget-object v2, v4, Lk2/o;->c:Ljava/lang/String;

    .line 70
    const-string v16, "video/dolby-vision"

    :cond_2c
    move-object/from16 v4, v16

    .line 71
    iget-boolean v15, v0, Lc3/e$c;->X:Z

    .line 72
    iget-boolean v3, v0, Lc3/e$c;->W:Z

    if-eqz v3, :cond_2d

    const/4 v3, 0x2

    goto :goto_12

    :cond_2d
    move v3, v5

    :goto_12
    or-int/2addr v3, v15

    .line 73
    new-instance v15, Landroidx/media3/common/r$b;

    invoke-direct {v15}, Landroidx/media3/common/r$b;-><init>()V

    .line 74
    invoke-static {v4}, Landroidx/media3/common/y;->o(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_2e

    .line 75
    iget v5, v0, Lc3/e$c;->Q:I

    .line 76
    invoke-virtual {v15, v5}, Landroidx/media3/common/r$b;->R(I)Landroidx/media3/common/r$b;

    move-result-object v5

    iget v7, v0, Lc3/e$c;->S:I

    .line 77
    invoke-virtual {v5, v7}, Landroidx/media3/common/r$b;->v0(I)Landroidx/media3/common/r$b;

    move-result-object v5

    .line 78
    invoke-virtual {v5, v14}, Landroidx/media3/common/r$b;->o0(I)Landroidx/media3/common/r$b;

    const/4 v5, 0x1

    goto/16 :goto_18

    .line 79
    :cond_2e
    invoke-static {v4}, Landroidx/media3/common/y;->t(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3a

    .line 80
    iget v7, v0, Lc3/e$c;->s:I

    if-nez v7, :cond_31

    .line 81
    iget v7, v0, Lc3/e$c;->q:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2f

    iget v7, v0, Lc3/e$c;->n:I

    :cond_2f
    iput v7, v0, Lc3/e$c;->q:I

    .line 82
    iget v7, v0, Lc3/e$c;->r:I

    if-ne v7, v8, :cond_30

    iget v7, v0, Lc3/e$c;->o:I

    :cond_30
    iput v7, v0, Lc3/e$c;->r:I

    goto :goto_13

    :cond_31
    const/4 v8, -0x1

    .line 83
    :goto_13
    iget v7, v0, Lc3/e$c;->q:I

    if-eq v7, v8, :cond_32

    iget v9, v0, Lc3/e$c;->r:I

    if-eq v9, v8, :cond_32

    .line 84
    iget v11, v0, Lc3/e$c;->o:I

    mul-int/2addr v11, v7

    int-to-float v7, v11

    iget v11, v0, Lc3/e$c;->n:I

    mul-int/2addr v11, v9

    int-to-float v9, v11

    div-float/2addr v7, v9

    goto :goto_14

    :cond_32
    const/high16 v7, -0x40800000    # -1.0f

    .line 85
    :goto_14
    iget-boolean v9, v0, Lc3/e$c;->z:Z

    if-eqz v9, :cond_33

    .line 86
    invoke-direct/range {p0 .. p0}, Lc3/e$c;->h()[B

    move-result-object v9

    .line 87
    new-instance v10, Landroidx/media3/common/i$b;

    invoke-direct {v10}, Landroidx/media3/common/i$b;-><init>()V

    iget v11, v0, Lc3/e$c;->A:I

    .line 88
    invoke-virtual {v10, v11}, Landroidx/media3/common/i$b;->d(I)Landroidx/media3/common/i$b;

    move-result-object v10

    iget v11, v0, Lc3/e$c;->C:I

    .line 89
    invoke-virtual {v10, v11}, Landroidx/media3/common/i$b;->c(I)Landroidx/media3/common/i$b;

    move-result-object v10

    iget v11, v0, Lc3/e$c;->B:I

    .line 90
    invoke-virtual {v10, v11}, Landroidx/media3/common/i$b;->e(I)Landroidx/media3/common/i$b;

    move-result-object v10

    .line 91
    invoke-virtual {v10, v9}, Landroidx/media3/common/i$b;->f([B)Landroidx/media3/common/i$b;

    move-result-object v9

    iget v10, v0, Lc3/e$c;->p:I

    .line 92
    invoke-virtual {v9, v10}, Landroidx/media3/common/i$b;->g(I)Landroidx/media3/common/i$b;

    move-result-object v9

    iget v10, v0, Lc3/e$c;->p:I

    .line 93
    invoke-virtual {v9, v10}, Landroidx/media3/common/i$b;->b(I)Landroidx/media3/common/i$b;

    move-result-object v9

    .line 94
    invoke-virtual {v9}, Landroidx/media3/common/i$b;->a()Landroidx/media3/common/i;

    move-result-object v10

    .line 95
    :cond_33
    iget-object v9, v0, Lc3/e$c;->b:Ljava/lang/String;

    if-eqz v9, :cond_34

    invoke-static {}, Lc3/e;->h()Ljava/util/Map;

    move-result-object v9

    iget-object v11, v0, Lc3/e$c;->b:Ljava/lang/String;

    invoke-interface {v9, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_34

    .line 96
    invoke-static {}, Lc3/e;->h()Ljava/util/Map;

    move-result-object v8

    iget-object v9, v0, Lc3/e$c;->b:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 97
    :cond_34
    iget v9, v0, Lc3/e$c;->t:I

    if-nez v9, :cond_39

    iget v9, v0, Lc3/e$c;->u:F

    const/4 v11, 0x0

    .line 98
    invoke-static {v9, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v9

    if-nez v9, :cond_39

    iget v9, v0, Lc3/e$c;->v:F

    .line 99
    invoke-static {v9, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v9

    if-nez v9, :cond_39

    .line 100
    iget v9, v0, Lc3/e$c;->w:F

    invoke-static {v9, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v9

    if-nez v9, :cond_35

    goto :goto_16

    .line 101
    :cond_35
    iget v5, v0, Lc3/e$c;->w:F

    const/high16 v9, 0x42b40000    # 90.0f

    invoke-static {v5, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-nez v5, :cond_36

    const/16 v5, 0x5a

    goto :goto_16

    .line 102
    :cond_36
    iget v5, v0, Lc3/e$c;->w:F

    const/high16 v9, -0x3ccc0000    # -180.0f

    invoke-static {v5, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-eqz v5, :cond_38

    iget v5, v0, Lc3/e$c;->w:F

    const/high16 v9, 0x43340000    # 180.0f

    .line 103
    invoke-static {v5, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-nez v5, :cond_37

    goto :goto_15

    .line 104
    :cond_37
    iget v5, v0, Lc3/e$c;->w:F

    const/high16 v9, -0x3d4c0000    # -90.0f

    invoke-static {v5, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-nez v5, :cond_39

    const/16 v5, 0x10e

    goto :goto_16

    :cond_38
    :goto_15
    const/16 v5, 0xb4

    goto :goto_16

    :cond_39
    move v5, v8

    .line 105
    :goto_16
    iget v8, v0, Lc3/e$c;->n:I

    .line 106
    invoke-virtual {v15, v8}, Landroidx/media3/common/r$b;->B0(I)Landroidx/media3/common/r$b;

    move-result-object v8

    iget v9, v0, Lc3/e$c;->o:I

    .line 107
    invoke-virtual {v8, v9}, Landroidx/media3/common/r$b;->d0(I)Landroidx/media3/common/r$b;

    move-result-object v8

    .line 108
    invoke-virtual {v8, v7}, Landroidx/media3/common/r$b;->q0(F)Landroidx/media3/common/r$b;

    move-result-object v7

    .line 109
    invoke-virtual {v7, v5}, Landroidx/media3/common/r$b;->t0(I)Landroidx/media3/common/r$b;

    move-result-object v5

    iget-object v7, v0, Lc3/e$c;->x:[B

    .line 110
    invoke-virtual {v5, v7}, Landroidx/media3/common/r$b;->r0([B)Landroidx/media3/common/r$b;

    move-result-object v5

    iget v7, v0, Lc3/e$c;->y:I

    .line 111
    invoke-virtual {v5, v7}, Landroidx/media3/common/r$b;->x0(I)Landroidx/media3/common/r$b;

    move-result-object v5

    .line 112
    invoke-virtual {v5, v10}, Landroidx/media3/common/r$b;->T(Landroidx/media3/common/i;)Landroidx/media3/common/r$b;

    const/4 v5, 0x2

    goto :goto_18

    .line 113
    :cond_3a
    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3c

    .line 114
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3c

    .line 115
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3c

    .line 116
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3c

    .line 117
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3c

    .line 118
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    goto :goto_17

    .line 119
    :cond_3b
    const-string v1, "Unexpected MIME type."

    invoke-static {v1, v10}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_3c
    :goto_17
    const/4 v5, 0x3

    .line 120
    :goto_18
    iget-object v7, v0, Lc3/e$c;->b:Ljava/lang/String;

    if-eqz v7, :cond_3d

    invoke-static {}, Lc3/e;->h()Ljava/util/Map;

    move-result-object v7

    iget-object v8, v0, Lc3/e$c;->b:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3d

    .line 121
    iget-object v7, v0, Lc3/e$c;->b:Ljava/lang/String;

    invoke-virtual {v15, v7}, Landroidx/media3/common/r$b;->h0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    :cond_3d
    move/from16 v7, p2

    .line 122
    invoke-virtual {v15, v7}, Landroidx/media3/common/r$b;->e0(I)Landroidx/media3/common/r$b;

    move-result-object v7

    .line 123
    iget-boolean v8, v0, Lc3/e$c;->a:Z

    if-eqz v8, :cond_3e

    const-string v8, "video/webm"

    goto :goto_19

    :cond_3e
    const-string v8, "video/x-matroska"

    :goto_19
    invoke-virtual {v7, v8}, Landroidx/media3/common/r$b;->U(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v7

    .line 124
    invoke-virtual {v7, v4}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v4

    .line 125
    invoke-virtual {v4, v6}, Landroidx/media3/common/r$b;->k0(I)Landroidx/media3/common/r$b;

    move-result-object v4

    iget-object v6, v0, Lc3/e$c;->Y:Ljava/lang/String;

    .line 126
    invoke-virtual {v4, v6}, Landroidx/media3/common/r$b;->j0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v4

    .line 127
    invoke-virtual {v4, v3}, Landroidx/media3/common/r$b;->w0(I)Landroidx/media3/common/r$b;

    move-result-object v3

    .line 128
    invoke-virtual {v3, v1}, Landroidx/media3/common/r$b;->g0(Ljava/util/List;)Landroidx/media3/common/r$b;

    move-result-object v1

    .line 129
    invoke-virtual {v1, v2}, Landroidx/media3/common/r$b;->S(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v1

    iget-object v2, v0, Lc3/e$c;->m:Landroidx/media3/common/DrmInitData;

    .line 130
    invoke-virtual {v1, v2}, Landroidx/media3/common/r$b;->Y(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/r$b;

    move-result-object v1

    .line 131
    invoke-virtual {v1}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object v1

    .line 132
    iget v2, v0, Lc3/e$c;->d:I

    move-object/from16 v3, p1

    invoke-interface {v3, v2, v5}, Lk2/t;->track(II)Lk2/s0;

    move-result-object v2

    iput-object v2, v0, Lc3/e$c;->Z:Lk2/s0;

    .line 133
    invoke-interface {v2, v1}, Lk2/s0;->d(Landroidx/media3/common/r;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7ce7f5de -> :sswitch_20
        -0x7ce7f3b0 -> :sswitch_1f
        -0x76567dc0 -> :sswitch_1e
        -0x6a615338 -> :sswitch_1d
        -0x672350af -> :sswitch_1c
        -0x585f4fce -> :sswitch_1b
        -0x585f4fcd -> :sswitch_1a
        -0x51dc40b2 -> :sswitch_19
        -0x37a9c464 -> :sswitch_18
        -0x2016c535 -> :sswitch_17
        -0x2016c4e5 -> :sswitch_16
        -0x19552dbd -> :sswitch_15
        -0x1538b2ba -> :sswitch_14
        0x3c02325 -> :sswitch_13
        0x3c02353 -> :sswitch_12
        0x3c030c5 -> :sswitch_11
        0x4e81333 -> :sswitch_10
        0x4e86155 -> :sswitch_f
        0x4e86156 -> :sswitch_e
        0x5e8da3e -> :sswitch_d
        0x1a8350d6 -> :sswitch_c
        0x2056f406 -> :sswitch_b
        0x25e26ee2 -> :sswitch_a
        0x2b45174d -> :sswitch_9
        0x2b453ce4 -> :sswitch_8
        0x2c0618eb -> :sswitch_7
        0x32fdf009 -> :sswitch_6
        0x3e4ca2d8 -> :sswitch_5
        0x54c61e47 -> :sswitch_4
        0x6bd6c624 -> :sswitch_3
        0x7446132a -> :sswitch_2
        0x7446b0a6 -> :sswitch_1
        0x744ad97d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_1d
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_10
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc3/e$c;->V:Lk2/t0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lc3/e$c;->Z:Lk2/s0;

    .line 6
    .line 7
    iget-object v2, p0, Lc3/e$c;->k:Lk2/s0$a;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lk2/t0;->a(Lk2/s0;Lk2/s0$a;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc3/e$c;->V:Lk2/t0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lk2/t0;->b()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
