.class public final Lcom/google/android/exoplayer2/metadata/f;
.super Lcom/google/android/exoplayer2/h;
.source "source.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final n:Lcom/google/android/exoplayer2/metadata/c;

.field private final o:Lcom/google/android/exoplayer2/metadata/e;

.field private final p:Landroid/os/Handler;

.field private final q:Lcom/google/android/exoplayer2/metadata/d;

.field private r:Lcom/google/android/exoplayer2/metadata/b;

.field private s:Z

.field private t:Z

.field private u:J

.field private v:J

.field private w:Lcom/google/android/exoplayer2/metadata/Metadata;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/metadata/e;Landroid/os/Looper;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/exoplayer2/metadata/c;->a:Lcom/google/android/exoplayer2/metadata/c;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/metadata/f;-><init>(Lcom/google/android/exoplayer2/metadata/e;Landroid/os/Looper;Lcom/google/android/exoplayer2/metadata/c;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/metadata/e;Landroid/os/Looper;Lcom/google/android/exoplayer2/metadata/c;)V
    .locals 1

    const/4 v0, 0x5

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/h;-><init>(I)V

    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/metadata/e;

    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/f;->o:Lcom/google/android/exoplayer2/metadata/e;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p2, p0}, Lcom/google/android/exoplayer2/util/p0;->v(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/f;->p:Landroid/os/Handler;

    .line 5
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/metadata/c;

    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/f;->n:Lcom/google/android/exoplayer2/metadata/c;

    .line 6
    new-instance p1, Lcom/google/android/exoplayer2/metadata/d;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/metadata/d;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/f;->q:Lcom/google/android/exoplayer2/metadata/d;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    iput-wide p1, p0, Lcom/google/android/exoplayer2/metadata/f;->v:J

    return-void
.end method

.method private A(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/f;->p:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/metadata/f;->B(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method private B(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/f;->o:Lcom/google/android/exoplayer2/metadata/e;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/metadata/e;->onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private C(J)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/f;->w:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-wide v2, p0, Lcom/google/android/exoplayer2/metadata/f;->v:J

    .line 7
    .line 8
    cmp-long p1, v2, p1

    .line 9
    .line 10
    if-gtz p1, :cond_0

    .line 11
    .line 12
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/metadata/f;->A(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/f;->w:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 17
    .line 18
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    iput-wide p1, p0, Lcom/google/android/exoplayer2/metadata/f;->v:J

    .line 24
    .line 25
    move p1, v1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    :goto_0
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/metadata/f;->s:Z

    .line 29
    .line 30
    if-eqz p2, :cond_1

    .line 31
    .line 32
    iget-object p2, p0, Lcom/google/android/exoplayer2/metadata/f;->w:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 33
    .line 34
    if-nez p2, :cond_1

    .line 35
    .line 36
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/metadata/f;->t:Z

    .line 37
    .line 38
    :cond_1
    return p1
.end method

.method private D()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/metadata/f;->s:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/f;->w:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 6
    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/f;->q:Lcom/google/android/exoplayer2/metadata/d;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->b()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/h;->k()Lcom/google/android/exoplayer2/q1;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/f;->q:Lcom/google/android/exoplayer2/metadata/d;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/h;->w(Lcom/google/android/exoplayer2/q1;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, -0x4

    .line 26
    if-ne v1, v2, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/f;->q:Lcom/google/android/exoplayer2/metadata/d;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/a;->h()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/metadata/f;->s:Z

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/f;->q:Lcom/google/android/exoplayer2/metadata/d;

    .line 41
    .line 42
    iget-wide v1, p0, Lcom/google/android/exoplayer2/metadata/f;->u:J

    .line 43
    .line 44
    iput-wide v1, v0, Lcom/google/android/exoplayer2/metadata/d;->i:J

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->n()V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/f;->r:Lcom/google/android/exoplayer2/metadata/b;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lcom/google/android/exoplayer2/metadata/b;

    .line 56
    .line 57
    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/f;->q:Lcom/google/android/exoplayer2/metadata/d;

    .line 58
    .line 59
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/metadata/b;->a(Lcom/google/android/exoplayer2/metadata/d;)Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    new-instance v1, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 72
    .line 73
    .line 74
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/metadata/f;->z(Lcom/google/android/exoplayer2/metadata/Metadata;Ljava/util/List;)V

    .line 75
    .line 76
    .line 77
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_2

    .line 82
    .line 83
    new-instance v0, Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 84
    .line 85
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    .line 86
    .line 87
    .line 88
    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/f;->w:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 89
    .line 90
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/f;->q:Lcom/google/android/exoplayer2/metadata/d;

    .line 91
    .line 92
    iget-wide v0, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    .line 93
    .line 94
    iput-wide v0, p0, Lcom/google/android/exoplayer2/metadata/f;->v:J

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_1
    const/4 v2, -0x5

    .line 98
    if-ne v1, v2, :cond_2

    .line 99
    .line 100
    iget-object v0, v0, Lcom/google/android/exoplayer2/q1;->b:Lcom/google/android/exoplayer2/p1;

    .line 101
    .line 102
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    check-cast v0, Lcom/google/android/exoplayer2/p1;

    .line 107
    .line 108
    iget-wide v0, v0, Lcom/google/android/exoplayer2/p1;->p:J

    .line 109
    .line 110
    iput-wide v0, p0, Lcom/google/android/exoplayer2/metadata/f;->u:J

    .line 111
    .line 112
    :cond_2
    :goto_0
    return-void
.end method

.method private z(Lcom/google/android/exoplayer2/metadata/Metadata;Ljava/util/List;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Lcom/google/android/exoplayer2/metadata/Metadata$Entry;->getWrappedMetadataFormat()Lcom/google/android/exoplayer2/p1;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/f;->n:Lcom/google/android/exoplayer2/metadata/c;

    .line 19
    .line 20
    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/metadata/c;->a(Lcom/google/android/exoplayer2/p1;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/f;->n:Lcom/google/android/exoplayer2/metadata/c;

    .line 27
    .line 28
    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/metadata/c;->b(Lcom/google/android/exoplayer2/p1;)Lcom/google/android/exoplayer2/metadata/b;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-interface {v2}, Lcom/google/android/exoplayer2/metadata/Metadata$Entry;->getWrappedMetadataBytes()[B

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, [B

    .line 45
    .line 46
    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/f;->q:Lcom/google/android/exoplayer2/metadata/d;

    .line 47
    .line 48
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->b()V

    .line 49
    .line 50
    .line 51
    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/f;->q:Lcom/google/android/exoplayer2/metadata/d;

    .line 52
    .line 53
    array-length v4, v2

    .line 54
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->m(I)V

    .line 55
    .line 56
    .line 57
    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/f;->q:Lcom/google/android/exoplayer2/metadata/d;

    .line 58
    .line 59
    iget-object v3, v3, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    .line 60
    .line 61
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    check-cast v3, Ljava/nio/ByteBuffer;

    .line 66
    .line 67
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 68
    .line 69
    .line 70
    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/f;->q:Lcom/google/android/exoplayer2/metadata/d;

    .line 71
    .line 72
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->n()V

    .line 73
    .line 74
    .line 75
    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/f;->q:Lcom/google/android/exoplayer2/metadata/d;

    .line 76
    .line 77
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/metadata/b;->a(Lcom/google/android/exoplayer2/metadata/d;)Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    if-eqz v1, :cond_1

    .line 82
    .line 83
    invoke-direct {p0, v1, p2}, Lcom/google/android/exoplayer2/metadata/f;->z(Lcom/google/android/exoplayer2/metadata/Metadata;Ljava/util/List;)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_0
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_2
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/p1;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/f;->n:Lcom/google/android/exoplayer2/metadata/c;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/metadata/c;->a(Lcom/google/android/exoplayer2/p1;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget p1, p1, Lcom/google/android/exoplayer2/p1;->E:I

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x4

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x2

    .line 16
    :goto_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/z2;->a(I)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1

    .line 21
    :cond_1
    const/4 p1, 0x0

    .line 22
    invoke-static {p1}, Lcom/google/android/exoplayer2/z2;->a(I)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "MetadataRenderer"

    .line 2
    .line 3
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p1, Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/metadata/f;->B(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    return p1

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 17
    .line 18
    .line 19
    throw p1
.end method

.method public isEnded()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/metadata/f;->t:Z

    .line 2
    .line 3
    return v0
.end method

.method public isReady()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method protected p()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/f;->w:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 3
    .line 4
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    iput-wide v1, p0, Lcom/google/android/exoplayer2/metadata/f;->v:J

    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/f;->r:Lcom/google/android/exoplayer2/metadata/b;

    .line 12
    .line 13
    return-void
.end method

.method protected r(JZ)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/f;->w:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 3
    .line 4
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    iput-wide p1, p0, Lcom/google/android/exoplayer2/metadata/f;->v:J

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/metadata/f;->s:Z

    .line 13
    .line 14
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/metadata/f;->t:Z

    .line 15
    .line 16
    return-void
.end method

.method public render(JJ)V
    .locals 0

    .line 1
    const/4 p3, 0x1

    .line 2
    :goto_0
    if-eqz p3, :cond_0

    .line 3
    .line 4
    invoke-direct {p0}, Lcom/google/android/exoplayer2/metadata/f;->D()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/metadata/f;->C(J)Z

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    return-void
.end method

.method protected v([Lcom/google/android/exoplayer2/p1;JJ)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/google/android/exoplayer2/metadata/f;->n:Lcom/google/android/exoplayer2/metadata/c;

    .line 2
    .line 3
    const/4 p3, 0x0

    .line 4
    aget-object p1, p1, p3

    .line 5
    .line 6
    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/metadata/c;->b(Lcom/google/android/exoplayer2/p1;)Lcom/google/android/exoplayer2/metadata/b;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/f;->r:Lcom/google/android/exoplayer2/metadata/b;

    .line 11
    .line 12
    return-void
.end method
