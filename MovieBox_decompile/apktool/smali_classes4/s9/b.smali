.class public final Ls9/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Li9/l;


# static fields
.field public static final d:Li9/r;


# instance fields
.field private final a:Ls9/c;

.field private final b:Lcom/google/android/exoplayer2/util/d0;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ls9/a;

    .line 2
    .line 3
    invoke-direct {v0}, Ls9/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ls9/b;->d:Li9/r;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ls9/c;

    .line 5
    .line 6
    invoke-direct {v0}, Ls9/c;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ls9/b;->a:Ls9/c;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/exoplayer2/util/d0;

    .line 12
    .line 13
    const/16 v1, 0xae2

    .line 14
    .line 15
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/d0;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Ls9/b;->b:Lcom/google/android/exoplayer2/util/d0;

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic a()[Li9/l;
    .locals 1

    .line 1
    invoke-static {}, Ls9/b;->e()[Li9/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static synthetic e()[Li9/l;
    .locals 3

    .line 1
    new-instance v0, Ls9/b;

    .line 2
    .line 3
    invoke-direct {v0}, Ls9/b;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    new-array v1, v1, [Li9/l;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    aput-object v0, v1, v2

    .line 11
    .line 12
    return-object v1
.end method


# virtual methods
.method public b(Li9/n;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ls9/b;->a:Ls9/c;

    .line 2
    .line 3
    new-instance v1, Ls9/i0$d;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v1, v2, v3}, Ls9/i0$d;-><init>(II)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1, v1}, Ls9/c;->d(Li9/n;Ls9/i0$d;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Li9/n;->endTracks()V

    .line 14
    .line 15
    .line 16
    new-instance v0, Li9/b0$b;

    .line 17
    .line 18
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1, v2}, Li9/b0$b;-><init>(J)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v0}, Li9/n;->g(Li9/b0;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public c(Li9/m;)Z
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/util/d0;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/d0;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    move v3, v2

    .line 10
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    invoke-interface {p1, v4, v2, v1}, Li9/m;->peekFully([BII)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->G()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    const v5, 0x494433

    .line 25
    .line 26
    .line 27
    if-eq v4, v5, :cond_4

    .line 28
    .line 29
    invoke-interface {p1}, Li9/m;->resetPeekPosition()V

    .line 30
    .line 31
    .line 32
    invoke-interface {p1, v3}, Li9/m;->advancePeekPosition(I)V

    .line 33
    .line 34
    .line 35
    move v1, v2

    .line 36
    move v4, v3

    .line 37
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    const/4 v6, 0x6

    .line 42
    invoke-interface {p1, v5, v2, v6}, Li9/m;->peekFully([BII)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->J()I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    const/16 v6, 0xb77

    .line 53
    .line 54
    if-eq v5, v6, :cond_1

    .line 55
    .line 56
    invoke-interface {p1}, Li9/m;->resetPeekPosition()V

    .line 57
    .line 58
    .line 59
    add-int/lit8 v4, v4, 0x1

    .line 60
    .line 61
    sub-int v1, v4, v3

    .line 62
    .line 63
    const/16 v5, 0x2000

    .line 64
    .line 65
    if-lt v1, v5, :cond_0

    .line 66
    .line 67
    return v2

    .line 68
    :cond_0
    invoke-interface {p1, v4}, Li9/m;->advancePeekPosition(I)V

    .line 69
    .line 70
    .line 71
    move v1, v2

    .line 72
    goto :goto_1

    .line 73
    :cond_1
    const/4 v5, 0x1

    .line 74
    add-int/2addr v1, v5

    .line 75
    const/4 v6, 0x4

    .line 76
    if-lt v1, v6, :cond_2

    .line 77
    .line 78
    return v5

    .line 79
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    invoke-static {v5}, Lcom/google/android/exoplayer2/audio/b;->f([B)I

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    const/4 v6, -0x1

    .line 88
    if-ne v5, v6, :cond_3

    .line 89
    .line 90
    return v2

    .line 91
    :cond_3
    add-int/lit8 v5, v5, -0x6

    .line 92
    .line 93
    invoke-interface {p1, v5}, Li9/m;->advancePeekPosition(I)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_4
    const/4 v4, 0x3

    .line 98
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->C()I

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    add-int/lit8 v5, v4, 0xa

    .line 106
    .line 107
    add-int/2addr v3, v5

    .line 108
    invoke-interface {p1, v4}, Li9/m;->advancePeekPosition(I)V

    .line 109
    .line 110
    .line 111
    goto :goto_0
.end method

.method public d(Li9/m;Li9/a0;)I
    .locals 4

    .line 1
    iget-object p2, p0, Ls9/b;->b:Lcom/google/android/exoplayer2/util/d0;

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const/16 v0, 0xae2

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-interface {p1, p2, v1, v0}, Li9/m;->read([BII)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/4 p2, -0x1

    .line 15
    if-ne p1, p2, :cond_0

    .line 16
    .line 17
    return p2

    .line 18
    :cond_0
    iget-object p2, p0, Ls9/b;->b:Lcom/google/android/exoplayer2/util/d0;

    .line 19
    .line 20
    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 21
    .line 22
    .line 23
    iget-object p2, p0, Ls9/b;->b:Lcom/google/android/exoplayer2/util/d0;

    .line 24
    .line 25
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/util/d0;->O(I)V

    .line 26
    .line 27
    .line 28
    iget-boolean p1, p0, Ls9/b;->c:Z

    .line 29
    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    iget-object p1, p0, Ls9/b;->a:Ls9/c;

    .line 33
    .line 34
    const-wide/16 v2, 0x0

    .line 35
    .line 36
    const/4 p2, 0x4

    .line 37
    invoke-virtual {p1, v2, v3, p2}, Ls9/c;->c(JI)V

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x1

    .line 41
    iput-boolean p1, p0, Ls9/b;->c:Z

    .line 42
    .line 43
    :cond_1
    iget-object p1, p0, Ls9/b;->a:Ls9/c;

    .line 44
    .line 45
    iget-object p2, p0, Ls9/b;->b:Lcom/google/android/exoplayer2/util/d0;

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Ls9/c;->b(Lcom/google/android/exoplayer2/util/d0;)V

    .line 48
    .line 49
    .line 50
    return v1
.end method

.method public release()V
    .locals 0

    .line 1
    return-void
.end method

.method public seek(JJ)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Ls9/b;->c:Z

    .line 3
    .line 4
    iget-object p1, p0, Ls9/b;->a:Ls9/c;

    .line 5
    .line 6
    invoke-virtual {p1}, Ls9/c;->seek()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
