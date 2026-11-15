.class public final Lq9/k;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Li9/l;
.implements Li9/b0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq9/k$a;
    }
.end annotation


# static fields
.field public static final y:Li9/r;


# instance fields
.field private final a:I

.field private final b:Lcom/google/android/exoplayer2/util/d0;

.field private final c:Lcom/google/android/exoplayer2/util/d0;

.field private final d:Lcom/google/android/exoplayer2/util/d0;

.field private final e:Lcom/google/android/exoplayer2/util/d0;

.field private final f:Ljava/util/ArrayDeque;

.field private final g:Lq9/m;

.field private final h:Ljava/util/List;

.field private i:I

.field private j:I

.field private k:J

.field private l:I

.field private m:Lcom/google/android/exoplayer2/util/d0;

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Li9/n;

.field private s:[Lq9/k$a;

.field private t:[[J

.field private u:I

.field private v:J

.field private w:I

.field private x:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lq9/j;

    .line 2
    .line 3
    invoke-direct {v0}, Lq9/j;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lq9/k;->y:Li9/r;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lq9/k;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lq9/k;->a:I

    const/4 v0, 0x4

    and-int/2addr p1, v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    move p1, v1

    .line 4
    :goto_0
    iput p1, p0, Lq9/k;->i:I

    .line 5
    new-instance p1, Lq9/m;

    invoke-direct {p1}, Lq9/m;-><init>()V

    iput-object p1, p0, Lq9/k;->g:Lq9/m;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lq9/k;->h:Ljava/util/List;

    .line 7
    new-instance p1, Lcom/google/android/exoplayer2/util/d0;

    const/16 v2, 0x10

    invoke-direct {p1, v2}, Lcom/google/android/exoplayer2/util/d0;-><init>(I)V

    iput-object p1, p0, Lq9/k;->e:Lcom/google/android/exoplayer2/util/d0;

    .line 8
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lq9/k;->f:Ljava/util/ArrayDeque;

    .line 9
    new-instance p1, Lcom/google/android/exoplayer2/util/d0;

    sget-object v2, Lcom/google/android/exoplayer2/util/x;->a:[B

    invoke-direct {p1, v2}, Lcom/google/android/exoplayer2/util/d0;-><init>([B)V

    iput-object p1, p0, Lq9/k;->b:Lcom/google/android/exoplayer2/util/d0;

    .line 10
    new-instance p1, Lcom/google/android/exoplayer2/util/d0;

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/d0;-><init>(I)V

    iput-object p1, p0, Lq9/k;->c:Lcom/google/android/exoplayer2/util/d0;

    .line 11
    new-instance p1, Lcom/google/android/exoplayer2/util/d0;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/d0;-><init>()V

    iput-object p1, p0, Lq9/k;->d:Lcom/google/android/exoplayer2/util/d0;

    const/4 p1, -0x1

    .line 12
    iput p1, p0, Lq9/k;->n:I

    .line 13
    sget-object p1, Li9/n;->i1:Li9/n;

    iput-object p1, p0, Lq9/k;->r:Li9/n;

    .line 14
    new-array p1, v1, [Lq9/k$a;

    iput-object p1, p0, Lq9/k;->s:[Lq9/k$a;

    return-void
.end method

.method private static A(I)Z
    .locals 1

    .line 1
    const v0, 0x6d646864

    .line 2
    .line 3
    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const v0, 0x6d766864

    .line 7
    .line 8
    .line 9
    if-eq p0, v0, :cond_1

    .line 10
    .line 11
    const v0, 0x68646c72    # 4.3148E24f

    .line 12
    .line 13
    .line 14
    if-eq p0, v0, :cond_1

    .line 15
    .line 16
    const v0, 0x73747364

    .line 17
    .line 18
    .line 19
    if-eq p0, v0, :cond_1

    .line 20
    .line 21
    const v0, 0x73747473

    .line 22
    .line 23
    .line 24
    if-eq p0, v0, :cond_1

    .line 25
    .line 26
    const v0, 0x73747373

    .line 27
    .line 28
    .line 29
    if-eq p0, v0, :cond_1

    .line 30
    .line 31
    const v0, 0x63747473

    .line 32
    .line 33
    .line 34
    if-eq p0, v0, :cond_1

    .line 35
    .line 36
    const v0, 0x656c7374

    .line 37
    .line 38
    .line 39
    if-eq p0, v0, :cond_1

    .line 40
    .line 41
    const v0, 0x73747363

    .line 42
    .line 43
    .line 44
    if-eq p0, v0, :cond_1

    .line 45
    .line 46
    const v0, 0x7374737a

    .line 47
    .line 48
    .line 49
    if-eq p0, v0, :cond_1

    .line 50
    .line 51
    const v0, 0x73747a32

    .line 52
    .line 53
    .line 54
    if-eq p0, v0, :cond_1

    .line 55
    .line 56
    const v0, 0x7374636f

    .line 57
    .line 58
    .line 59
    if-eq p0, v0, :cond_1

    .line 60
    .line 61
    const v0, 0x636f3634

    .line 62
    .line 63
    .line 64
    if-eq p0, v0, :cond_1

    .line 65
    .line 66
    const v0, 0x746b6864

    .line 67
    .line 68
    .line 69
    if-eq p0, v0, :cond_1

    .line 70
    .line 71
    const v0, 0x66747970

    .line 72
    .line 73
    .line 74
    if-eq p0, v0, :cond_1

    .line 75
    .line 76
    const v0, 0x75647461

    .line 77
    .line 78
    .line 79
    if-eq p0, v0, :cond_1

    .line 80
    .line 81
    const v0, 0x6b657973

    .line 82
    .line 83
    .line 84
    if-eq p0, v0, :cond_1

    .line 85
    .line 86
    const v0, 0x696c7374

    .line 87
    .line 88
    .line 89
    if-ne p0, v0, :cond_0

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_0
    const/4 p0, 0x0

    .line 93
    goto :goto_1

    .line 94
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 95
    :goto_1
    return p0
.end method

.method private B(Lq9/k$a;J)V
    .locals 3

    .line 1
    iget-object v0, p1, Lq9/k$a;->b:Lq9/r;

    .line 2
    .line 3
    invoke-virtual {v0, p2, p3}, Lq9/r;->a(J)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, -0x1

    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p2, p3}, Lq9/r;->b(J)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    :cond_0
    iput v1, p1, Lq9/k$a;->e:I

    .line 15
    .line 16
    return-void
.end method

.method public static synthetic e(Lq9/o;)Lq9/o;
    .locals 0

    .line 1
    invoke-static {p0}, Lq9/k;->m(Lq9/o;)Lq9/o;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f()[Li9/l;
    .locals 1

    .line 1
    invoke-static {}, Lq9/k;->n()[Li9/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static g(I)I
    .locals 1

    .line 1
    const v0, 0x68656963

    .line 2
    .line 3
    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const v0, 0x71742020

    .line 7
    .line 8
    .line 9
    if-eq p0, v0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_1
    const/4 p0, 0x2

    .line 16
    return p0
.end method

.method private static h([Lq9/k$a;)[[J
    .locals 15

    .line 1
    array-length v0, p0

    .line 2
    new-array v0, v0, [[J

    .line 3
    .line 4
    array-length v1, p0

    .line 5
    new-array v1, v1, [I

    .line 6
    .line 7
    array-length v2, p0

    .line 8
    new-array v2, v2, [J

    .line 9
    .line 10
    array-length v3, p0

    .line 11
    new-array v3, v3, [Z

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    move v5, v4

    .line 15
    :goto_0
    array-length v6, p0

    .line 16
    if-ge v5, v6, :cond_0

    .line 17
    .line 18
    aget-object v6, p0, v5

    .line 19
    .line 20
    iget-object v6, v6, Lq9/k$a;->b:Lq9/r;

    .line 21
    .line 22
    iget v6, v6, Lq9/r;->b:I

    .line 23
    .line 24
    new-array v6, v6, [J

    .line 25
    .line 26
    aput-object v6, v0, v5

    .line 27
    .line 28
    aget-object v6, p0, v5

    .line 29
    .line 30
    iget-object v6, v6, Lq9/k$a;->b:Lq9/r;

    .line 31
    .line 32
    iget-object v6, v6, Lq9/r;->f:[J

    .line 33
    .line 34
    aget-wide v7, v6, v4

    .line 35
    .line 36
    aput-wide v7, v2, v5

    .line 37
    .line 38
    add-int/lit8 v5, v5, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const-wide/16 v5, 0x0

    .line 42
    .line 43
    move v7, v4

    .line 44
    :goto_1
    array-length v8, p0

    .line 45
    if-ge v7, v8, :cond_4

    .line 46
    .line 47
    const-wide v8, 0x7fffffffffffffffL

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    const/4 v10, -0x1

    .line 53
    move v11, v4

    .line 54
    :goto_2
    array-length v12, p0

    .line 55
    if-ge v11, v12, :cond_2

    .line 56
    .line 57
    aget-boolean v12, v3, v11

    .line 58
    .line 59
    if-nez v12, :cond_1

    .line 60
    .line 61
    aget-wide v12, v2, v11

    .line 62
    .line 63
    cmp-long v14, v12, v8

    .line 64
    .line 65
    if-gtz v14, :cond_1

    .line 66
    .line 67
    move v10, v11

    .line 68
    move-wide v8, v12

    .line 69
    :cond_1
    add-int/lit8 v11, v11, 0x1

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_2
    aget v8, v1, v10

    .line 73
    .line 74
    aget-object v9, v0, v10

    .line 75
    .line 76
    aput-wide v5, v9, v8

    .line 77
    .line 78
    aget-object v11, p0, v10

    .line 79
    .line 80
    iget-object v11, v11, Lq9/k$a;->b:Lq9/r;

    .line 81
    .line 82
    iget-object v12, v11, Lq9/r;->d:[I

    .line 83
    .line 84
    aget v12, v12, v8

    .line 85
    .line 86
    int-to-long v12, v12

    .line 87
    add-long/2addr v5, v12

    .line 88
    const/4 v12, 0x1

    .line 89
    add-int/2addr v8, v12

    .line 90
    aput v8, v1, v10

    .line 91
    .line 92
    array-length v9, v9

    .line 93
    if-ge v8, v9, :cond_3

    .line 94
    .line 95
    iget-object v9, v11, Lq9/r;->f:[J

    .line 96
    .line 97
    aget-wide v8, v9, v8

    .line 98
    .line 99
    aput-wide v8, v2, v10

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_3
    aput-boolean v12, v3, v10

    .line 103
    .line 104
    add-int/lit8 v7, v7, 0x1

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_4
    return-object v0
.end method

.method private i()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lq9/k;->i:I

    .line 3
    .line 4
    iput v0, p0, Lq9/k;->l:I

    .line 5
    .line 6
    return-void
.end method

.method private static k(Lq9/r;J)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lq9/r;->a(J)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2}, Lq9/r;->b(J)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :cond_0
    return v0
.end method

.method private l(J)I
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v4, -0x1

    .line 4
    move v6, v4

    .line 5
    const/4 v7, 0x0

    .line 6
    const-wide v8, 0x7fffffffffffffffL

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    const/4 v10, 0x1

    .line 12
    const-wide v11, 0x7fffffffffffffffL

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    const/4 v13, 0x1

    .line 18
    const-wide v14, 0x7fffffffffffffffL

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    :goto_0
    iget-object v3, v0, Lq9/k;->s:[Lq9/k$a;

    .line 24
    .line 25
    array-length v5, v3

    .line 26
    if-ge v7, v5, :cond_7

    .line 27
    .line 28
    aget-object v3, v3, v7

    .line 29
    .line 30
    iget v5, v3, Lq9/k$a;->e:I

    .line 31
    .line 32
    iget-object v3, v3, Lq9/k$a;->b:Lq9/r;

    .line 33
    .line 34
    iget v1, v3, Lq9/r;->b:I

    .line 35
    .line 36
    if-ne v5, v1, :cond_0

    .line 37
    .line 38
    goto :goto_3

    .line 39
    :cond_0
    iget-object v1, v3, Lq9/r;->c:[J

    .line 40
    .line 41
    aget-wide v2, v1, v5

    .line 42
    .line 43
    iget-object v1, v0, Lq9/k;->t:[[J

    .line 44
    .line 45
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, [[J

    .line 50
    .line 51
    aget-object v1, v1, v7

    .line 52
    .line 53
    aget-wide v16, v1, v5

    .line 54
    .line 55
    sub-long v2, v2, p1

    .line 56
    .line 57
    const-wide/16 v18, 0x0

    .line 58
    .line 59
    cmp-long v1, v2, v18

    .line 60
    .line 61
    if-ltz v1, :cond_2

    .line 62
    .line 63
    const-wide/32 v18, 0x40000

    .line 64
    .line 65
    .line 66
    cmp-long v1, v2, v18

    .line 67
    .line 68
    if-ltz v1, :cond_1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    const/4 v1, 0x0

    .line 72
    goto :goto_2

    .line 73
    :cond_2
    :goto_1
    const/4 v1, 0x1

    .line 74
    :goto_2
    if-nez v1, :cond_3

    .line 75
    .line 76
    if-nez v13, :cond_4

    .line 77
    .line 78
    :cond_3
    if-ne v1, v13, :cond_5

    .line 79
    .line 80
    cmp-long v5, v2, v14

    .line 81
    .line 82
    if-gez v5, :cond_5

    .line 83
    .line 84
    :cond_4
    move v13, v1

    .line 85
    move-wide v14, v2

    .line 86
    move v6, v7

    .line 87
    move-wide/from16 v11, v16

    .line 88
    .line 89
    :cond_5
    cmp-long v2, v16, v8

    .line 90
    .line 91
    if-gez v2, :cond_6

    .line 92
    .line 93
    move v10, v1

    .line 94
    move v4, v7

    .line 95
    move-wide/from16 v8, v16

    .line 96
    .line 97
    :cond_6
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_7
    const-wide v1, 0x7fffffffffffffffL

    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    cmp-long v1, v8, v1

    .line 106
    .line 107
    if-eqz v1, :cond_8

    .line 108
    .line 109
    if-eqz v10, :cond_8

    .line 110
    .line 111
    const-wide/32 v1, 0xa00000

    .line 112
    .line 113
    .line 114
    add-long/2addr v8, v1

    .line 115
    cmp-long v1, v11, v8

    .line 116
    .line 117
    if-gez v1, :cond_9

    .line 118
    .line 119
    :cond_8
    move v4, v6

    .line 120
    :cond_9
    return v4
.end method

.method private static synthetic m(Lq9/o;)Lq9/o;
    .locals 0

    .line 1
    return-object p0
.end method

.method private static synthetic n()[Li9/l;
    .locals 3

    .line 1
    new-instance v0, Lq9/k;

    .line 2
    .line 3
    invoke-direct {v0}, Lq9/k;-><init>()V

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

.method private static o(Lq9/r;JJ)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lq9/k;->k(Lq9/r;J)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p2, -0x1

    .line 6
    if-ne p1, p2, :cond_0

    .line 7
    .line 8
    return-wide p3

    .line 9
    :cond_0
    iget-object p0, p0, Lq9/r;->c:[J

    .line 10
    .line 11
    aget-wide p1, p0, p1

    .line 12
    .line 13
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    .line 14
    .line 15
    .line 16
    move-result-wide p0

    .line 17
    return-wide p0
.end method

.method private p(Li9/m;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lq9/k;->d:Lcom/google/android/exoplayer2/util/d0;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/d0;->L(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lq9/k;->d:Lcom/google/android/exoplayer2/util/d0;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-interface {p1, v0, v2, v1}, Li9/m;->peekFully([BII)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lq9/k;->d:Lcom/google/android/exoplayer2/util/d0;

    .line 19
    .line 20
    invoke-static {v0}, Lq9/b;->e(Lcom/google/android/exoplayer2/util/d0;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lq9/k;->d:Lcom/google/android/exoplayer2/util/d0;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->e()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-interface {p1, v0}, Li9/m;->skipFully(I)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p1}, Li9/m;->resetPeekPosition()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private q(J)V
    .locals 4

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lq9/k;->f:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lq9/k;->f:Ljava/util/ArrayDeque;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lq9/a$a;

    .line 17
    .line 18
    iget-wide v2, v0, Lq9/a$a;->b:J

    .line 19
    .line 20
    cmp-long v0, v2, p1

    .line 21
    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Lq9/k;->f:Ljava/util/ArrayDeque;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lq9/a$a;

    .line 31
    .line 32
    iget v2, v0, Lq9/a;->a:I

    .line 33
    .line 34
    const v3, 0x6d6f6f76

    .line 35
    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    invoke-direct {p0, v0}, Lq9/k;->t(Lq9/a$a;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lq9/k;->f:Ljava/util/ArrayDeque;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 45
    .line 46
    .line 47
    iput v1, p0, Lq9/k;->i:I

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iget-object v1, p0, Lq9/k;->f:Ljava/util/ArrayDeque;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_0

    .line 57
    .line 58
    iget-object v1, p0, Lq9/k;->f:Ljava/util/ArrayDeque;

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Lq9/a$a;

    .line 65
    .line 66
    invoke-virtual {v1, v0}, Lq9/a$a;->d(Lq9/a$a;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    iget p1, p0, Lq9/k;->i:I

    .line 71
    .line 72
    if-eq p1, v1, :cond_3

    .line 73
    .line 74
    invoke-direct {p0}, Lq9/k;->i()V

    .line 75
    .line 76
    .line 77
    :cond_3
    return-void
.end method

.method private r()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Lq9/k;->w:I

    .line 3
    .line 4
    const/4 v2, 0x2

    .line 5
    if-ne v1, v2, :cond_1

    .line 6
    .line 7
    iget v1, p0, Lq9/k;->a:I

    .line 8
    .line 9
    and-int/2addr v1, v2

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lq9/k;->r:Li9/n;

    .line 13
    .line 14
    const/4 v2, 0x4

    .line 15
    invoke-interface {v1, v0, v2}, Li9/n;->track(II)Li9/e0;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v2, p0, Lq9/k;->x:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    .line 20
    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v2, Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 26
    .line 27
    iget-object v3, p0, Lq9/k;->x:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    .line 28
    .line 29
    const/4 v4, 0x1

    .line 30
    new-array v4, v4, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    .line 31
    .line 32
    aput-object v3, v4, v0

    .line 33
    .line 34
    invoke-direct {v2, v4}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    .line 35
    .line 36
    .line 37
    move-object v0, v2

    .line 38
    :goto_0
    new-instance v2, Lcom/google/android/exoplayer2/p1$b;

    .line 39
    .line 40
    invoke-direct {v2}, Lcom/google/android/exoplayer2/p1$b;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/p1$b;->X(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/p1$b;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p1$b;->E()Lcom/google/android/exoplayer2/p1;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-interface {v1, v0}, Li9/e0;->d(Lcom/google/android/exoplayer2/p1;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lq9/k;->r:Li9/n;

    .line 55
    .line 56
    invoke-interface {v0}, Li9/n;->endTracks()V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lq9/k;->r:Li9/n;

    .line 60
    .line 61
    new-instance v1, Li9/b0$b;

    .line 62
    .line 63
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    invoke-direct {v1, v2, v3}, Li9/b0$b;-><init>(J)V

    .line 69
    .line 70
    .line 71
    invoke-interface {v0, v1}, Li9/n;->g(Li9/b0;)V

    .line 72
    .line 73
    .line 74
    :cond_1
    return-void
.end method

.method private static s(Lcom/google/android/exoplayer2/util/d0;)I
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {v0}, Lq9/k;->g(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    return v0

    .line 17
    :cond_0
    const/4 v0, 0x4

    .line 18
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->a()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-lez v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-static {v0}, Lq9/k;->g(I)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    return v0

    .line 38
    :cond_2
    const/4 p0, 0x0

    .line 39
    return p0
.end method

.method private t(Lq9/a$a;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    new-instance v10, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iget v2, v0, Lq9/k;->w:I

    .line 11
    .line 12
    const/4 v12, 0x1

    .line 13
    if-ne v2, v12, :cond_0

    .line 14
    .line 15
    move v7, v12

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v7, 0x0

    .line 18
    :goto_0
    new-instance v13, Li9/x;

    .line 19
    .line 20
    invoke-direct {v13}, Li9/x;-><init>()V

    .line 21
    .line 22
    .line 23
    const v2, 0x75647461

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lq9/a$a;->g(I)Lq9/a$b;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    invoke-static {v2}, Lq9/b;->B(Lq9/a$b;)Landroid/util/Pair;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v3, Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 39
    .line 40
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v2, Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 43
    .line 44
    if-eqz v3, :cond_1

    .line 45
    .line 46
    invoke-virtual {v13, v3}, Li9/x;->c(Lcom/google/android/exoplayer2/metadata/Metadata;)Z

    .line 47
    .line 48
    .line 49
    :cond_1
    move-object v15, v2

    .line 50
    move-object v8, v3

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    const/4 v8, 0x0

    .line 53
    const/4 v15, 0x0

    .line 54
    :goto_1
    const v2, 0x6d657461

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2}, Lq9/a$a;->f(I)Lq9/a$a;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    if-eqz v2, :cond_3

    .line 62
    .line 63
    invoke-static {v2}, Lq9/b;->n(Lq9/a$a;)Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    move-object v6, v2

    .line 68
    goto :goto_2

    .line 69
    :cond_3
    const/4 v6, 0x0

    .line 70
    :goto_2
    iget v2, v0, Lq9/k;->a:I

    .line 71
    .line 72
    and-int/2addr v2, v12

    .line 73
    if-eqz v2, :cond_4

    .line 74
    .line 75
    move/from16 v16, v12

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_4
    const/16 v16, 0x0

    .line 79
    .line 80
    :goto_3
    new-instance v17, Lq9/i;

    .line 81
    .line 82
    invoke-direct/range {v17 .. v17}, Lq9/i;-><init>()V

    .line 83
    .line 84
    .line 85
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    const/4 v5, 0x0

    .line 91
    move-object/from16 v1, p1

    .line 92
    .line 93
    move-object v2, v13

    .line 94
    move-object v14, v6

    .line 95
    move/from16 v6, v16

    .line 96
    .line 97
    move-object/from16 v18, v8

    .line 98
    .line 99
    move-object/from16 v8, v17

    .line 100
    .line 101
    invoke-static/range {v1 .. v8}, Lq9/b;->A(Lq9/a$a;Li9/x;JLcom/google/android/exoplayer2/drm/DrmInitData;ZZLcom/google/common/base/f;)Ljava/util/List;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    move-wide v11, v4

    .line 115
    const/4 v6, 0x0

    .line 116
    const/4 v7, -0x1

    .line 117
    :goto_4
    if-ge v6, v2, :cond_c

    .line 118
    .line 119
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v17

    .line 123
    move-object/from16 v8, v17

    .line 124
    .line 125
    check-cast v8, Lq9/r;

    .line 126
    .line 127
    iget v3, v8, Lq9/r;->b:I

    .line 128
    .line 129
    if-nez v3, :cond_5

    .line 130
    .line 131
    move-object/from16 v21, v1

    .line 132
    .line 133
    move/from16 v22, v2

    .line 134
    .line 135
    move-object v3, v10

    .line 136
    move-object/from16 v2, v18

    .line 137
    .line 138
    const/4 v1, -0x1

    .line 139
    const/4 v4, 0x1

    .line 140
    const/4 v9, 0x2

    .line 141
    goto/16 :goto_b

    .line 142
    .line 143
    :cond_5
    iget-object v3, v8, Lq9/r;->a:Lq9/o;

    .line 144
    .line 145
    move-object/from16 v19, v10

    .line 146
    .line 147
    iget-wide v9, v3, Lq9/o;->e:J

    .line 148
    .line 149
    cmp-long v20, v9, v4

    .line 150
    .line 151
    if-eqz v20, :cond_6

    .line 152
    .line 153
    goto :goto_5

    .line 154
    :cond_6
    iget-wide v9, v8, Lq9/r;->h:J

    .line 155
    .line 156
    :goto_5
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(JJ)J

    .line 157
    .line 158
    .line 159
    move-result-wide v11

    .line 160
    new-instance v4, Lq9/k$a;

    .line 161
    .line 162
    iget-object v5, v0, Lq9/k;->r:Li9/n;

    .line 163
    .line 164
    move-object/from16 v21, v1

    .line 165
    .line 166
    iget v1, v3, Lq9/o;->b:I

    .line 167
    .line 168
    invoke-interface {v5, v6, v1}, Li9/n;->track(II)Li9/e0;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-direct {v4, v3, v8, v1}, Lq9/k$a;-><init>(Lq9/o;Lq9/r;Li9/e0;)V

    .line 173
    .line 174
    .line 175
    iget-object v1, v3, Lq9/o;->f:Lcom/google/android/exoplayer2/p1;

    .line 176
    .line 177
    iget-object v1, v1, Lcom/google/android/exoplayer2/p1;->l:Ljava/lang/String;

    .line 178
    .line 179
    const-string v5, "audio/true-hd"

    .line 180
    .line 181
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-eqz v1, :cond_7

    .line 186
    .line 187
    iget v1, v8, Lq9/r;->e:I

    .line 188
    .line 189
    mul-int/lit8 v1, v1, 0x10

    .line 190
    .line 191
    goto :goto_6

    .line 192
    :cond_7
    iget v1, v8, Lq9/r;->e:I

    .line 193
    .line 194
    add-int/lit8 v1, v1, 0x1e

    .line 195
    .line 196
    :goto_6
    iget-object v5, v3, Lq9/o;->f:Lcom/google/android/exoplayer2/p1;

    .line 197
    .line 198
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/p1;->b()Lcom/google/android/exoplayer2/p1$b;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/p1$b;->W(I)Lcom/google/android/exoplayer2/p1$b;

    .line 203
    .line 204
    .line 205
    iget v1, v3, Lq9/o;->b:I

    .line 206
    .line 207
    move/from16 v22, v2

    .line 208
    .line 209
    const/4 v2, 0x2

    .line 210
    if-ne v1, v2, :cond_8

    .line 211
    .line 212
    const-wide/16 v1, 0x0

    .line 213
    .line 214
    cmp-long v1, v9, v1

    .line 215
    .line 216
    if-lez v1, :cond_8

    .line 217
    .line 218
    iget v1, v8, Lq9/r;->b:I

    .line 219
    .line 220
    const/4 v2, 0x1

    .line 221
    if-le v1, v2, :cond_8

    .line 222
    .line 223
    int-to-float v1, v1

    .line 224
    long-to-float v2, v9

    .line 225
    const v8, 0x49742400    # 1000000.0f

    .line 226
    .line 227
    .line 228
    div-float/2addr v2, v8

    .line 229
    div-float/2addr v1, v2

    .line 230
    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/p1$b;->P(F)Lcom/google/android/exoplayer2/p1$b;

    .line 231
    .line 232
    .line 233
    :cond_8
    iget v1, v3, Lq9/o;->b:I

    .line 234
    .line 235
    invoke-static {v1, v13, v5}, Lq9/h;->k(ILi9/x;Lcom/google/android/exoplayer2/p1$b;)V

    .line 236
    .line 237
    .line 238
    iget v1, v3, Lq9/o;->b:I

    .line 239
    .line 240
    iget-object v2, v0, Lq9/k;->h:Ljava/util/List;

    .line 241
    .line 242
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 243
    .line 244
    .line 245
    move-result v2

    .line 246
    if-eqz v2, :cond_9

    .line 247
    .line 248
    const/4 v2, 0x0

    .line 249
    :goto_7
    const/4 v9, 0x2

    .line 250
    goto :goto_8

    .line 251
    :cond_9
    new-instance v2, Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 252
    .line 253
    iget-object v8, v0, Lq9/k;->h:Ljava/util/List;

    .line 254
    .line 255
    invoke-direct {v2, v8}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    .line 256
    .line 257
    .line 258
    goto :goto_7

    .line 259
    :goto_8
    new-array v10, v9, [Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 260
    .line 261
    const/4 v8, 0x0

    .line 262
    aput-object v15, v10, v8

    .line 263
    .line 264
    const/16 v16, 0x1

    .line 265
    .line 266
    aput-object v2, v10, v16

    .line 267
    .line 268
    move-object/from16 v2, v18

    .line 269
    .line 270
    invoke-static {v1, v2, v14, v5, v10}, Lq9/h;->l(ILcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/p1$b;[Lcom/google/android/exoplayer2/metadata/Metadata;)V

    .line 271
    .line 272
    .line 273
    iget-object v1, v4, Lq9/k$a;->c:Li9/e0;

    .line 274
    .line 275
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/p1$b;->E()Lcom/google/android/exoplayer2/p1;

    .line 276
    .line 277
    .line 278
    move-result-object v5

    .line 279
    invoke-interface {v1, v5}, Li9/e0;->d(Lcom/google/android/exoplayer2/p1;)V

    .line 280
    .line 281
    .line 282
    iget v1, v3, Lq9/o;->b:I

    .line 283
    .line 284
    if-ne v1, v9, :cond_b

    .line 285
    .line 286
    const/4 v1, -0x1

    .line 287
    if-ne v7, v1, :cond_a

    .line 288
    .line 289
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    .line 290
    .line 291
    .line 292
    move-result v7

    .line 293
    :cond_a
    :goto_9
    move-object/from16 v3, v19

    .line 294
    .line 295
    goto :goto_a

    .line 296
    :cond_b
    const/4 v1, -0x1

    .line 297
    goto :goto_9

    .line 298
    :goto_a
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    const/4 v4, 0x1

    .line 302
    :goto_b
    add-int/2addr v6, v4

    .line 303
    move-object/from16 v18, v2

    .line 304
    .line 305
    move-object v10, v3

    .line 306
    move-object/from16 v1, v21

    .line 307
    .line 308
    move/from16 v2, v22

    .line 309
    .line 310
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    goto/16 :goto_4

    .line 316
    .line 317
    :cond_c
    move-object v3, v10

    .line 318
    iput v7, v0, Lq9/k;->u:I

    .line 319
    .line 320
    iput-wide v11, v0, Lq9/k;->v:J

    .line 321
    .line 322
    const/4 v1, 0x0

    .line 323
    new-array v1, v1, [Lq9/k$a;

    .line 324
    .line 325
    invoke-interface {v3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    check-cast v1, [Lq9/k$a;

    .line 330
    .line 331
    iput-object v1, v0, Lq9/k;->s:[Lq9/k$a;

    .line 332
    .line 333
    invoke-static {v1}, Lq9/k;->h([Lq9/k$a;)[[J

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    iput-object v1, v0, Lq9/k;->t:[[J

    .line 338
    .line 339
    iget-object v1, v0, Lq9/k;->r:Li9/n;

    .line 340
    .line 341
    invoke-interface {v1}, Li9/n;->endTracks()V

    .line 342
    .line 343
    .line 344
    iget-object v1, v0, Lq9/k;->r:Li9/n;

    .line 345
    .line 346
    invoke-interface {v1, v0}, Li9/n;->g(Li9/b0;)V

    .line 347
    .line 348
    .line 349
    return-void
.end method

.method private u(J)V
    .locals 13

    .line 1
    iget v0, p0, Lq9/k;->j:I

    .line 2
    .line 3
    const v1, 0x6d707664

    .line 4
    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    .line 9
    .line 10
    iget v1, p0, Lq9/k;->l:I

    .line 11
    .line 12
    int-to-long v2, v1

    .line 13
    add-long v9, p1, v2

    .line 14
    .line 15
    iget-wide v2, p0, Lq9/k;->k:J

    .line 16
    .line 17
    int-to-long v4, v1

    .line 18
    sub-long v11, v2, v4

    .line 19
    .line 20
    const-wide/16 v3, 0x0

    .line 21
    .line 22
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    move-object v2, v0

    .line 28
    move-wide v5, p1

    .line 29
    invoke-direct/range {v2 .. v12}, Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;-><init>(JJJJJ)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lq9/k;->x:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method private v(Li9/m;)Z
    .locals 8

    .line 1
    iget v0, p0, Lq9/k;->l:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/16 v2, 0x8

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lq9/k;->e:Lcom/google/android/exoplayer2/util/d0;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {p1, v0, v3, v2, v1}, Li9/m;->readFully([BIIZ)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    invoke-direct {p0}, Lq9/k;->r()V

    .line 22
    .line 23
    .line 24
    return v3

    .line 25
    :cond_0
    iput v2, p0, Lq9/k;->l:I

    .line 26
    .line 27
    iget-object v0, p0, Lq9/k;->e:Lcom/google/android/exoplayer2/util/d0;

    .line 28
    .line 29
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lq9/k;->e:Lcom/google/android/exoplayer2/util/d0;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->F()J

    .line 35
    .line 36
    .line 37
    move-result-wide v4

    .line 38
    iput-wide v4, p0, Lq9/k;->k:J

    .line 39
    .line 40
    iget-object v0, p0, Lq9/k;->e:Lcom/google/android/exoplayer2/util/d0;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iput v0, p0, Lq9/k;->j:I

    .line 47
    .line 48
    :cond_1
    iget-wide v4, p0, Lq9/k;->k:J

    .line 49
    .line 50
    const-wide/16 v6, 0x1

    .line 51
    .line 52
    cmp-long v0, v4, v6

    .line 53
    .line 54
    if-nez v0, :cond_2

    .line 55
    .line 56
    iget-object v0, p0, Lq9/k;->e:Lcom/google/android/exoplayer2/util/d0;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-interface {p1, v0, v2, v2}, Li9/m;->readFully([BII)V

    .line 63
    .line 64
    .line 65
    iget v0, p0, Lq9/k;->l:I

    .line 66
    .line 67
    add-int/2addr v0, v2

    .line 68
    iput v0, p0, Lq9/k;->l:I

    .line 69
    .line 70
    iget-object v0, p0, Lq9/k;->e:Lcom/google/android/exoplayer2/util/d0;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->I()J

    .line 73
    .line 74
    .line 75
    move-result-wide v4

    .line 76
    iput-wide v4, p0, Lq9/k;->k:J

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    const-wide/16 v6, 0x0

    .line 80
    .line 81
    cmp-long v0, v4, v6

    .line 82
    .line 83
    if-nez v0, :cond_4

    .line 84
    .line 85
    invoke-interface {p1}, Li9/m;->getLength()J

    .line 86
    .line 87
    .line 88
    move-result-wide v4

    .line 89
    const-wide/16 v6, -0x1

    .line 90
    .line 91
    cmp-long v0, v4, v6

    .line 92
    .line 93
    if-nez v0, :cond_3

    .line 94
    .line 95
    iget-object v0, p0, Lq9/k;->f:Ljava/util/ArrayDeque;

    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Lq9/a$a;

    .line 102
    .line 103
    if-eqz v0, :cond_3

    .line 104
    .line 105
    iget-wide v4, v0, Lq9/a$a;->b:J

    .line 106
    .line 107
    :cond_3
    cmp-long v0, v4, v6

    .line 108
    .line 109
    if-eqz v0, :cond_4

    .line 110
    .line 111
    invoke-interface {p1}, Li9/m;->getPosition()J

    .line 112
    .line 113
    .line 114
    move-result-wide v6

    .line 115
    sub-long/2addr v4, v6

    .line 116
    iget v0, p0, Lq9/k;->l:I

    .line 117
    .line 118
    int-to-long v6, v0

    .line 119
    add-long/2addr v4, v6

    .line 120
    iput-wide v4, p0, Lq9/k;->k:J

    .line 121
    .line 122
    :cond_4
    :goto_0
    iget-wide v4, p0, Lq9/k;->k:J

    .line 123
    .line 124
    iget v0, p0, Lq9/k;->l:I

    .line 125
    .line 126
    int-to-long v6, v0

    .line 127
    cmp-long v0, v4, v6

    .line 128
    .line 129
    if-ltz v0, :cond_b

    .line 130
    .line 131
    iget v0, p0, Lq9/k;->j:I

    .line 132
    .line 133
    invoke-static {v0}, Lq9/k;->z(I)Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-eqz v0, :cond_7

    .line 138
    .line 139
    invoke-interface {p1}, Li9/m;->getPosition()J

    .line 140
    .line 141
    .line 142
    move-result-wide v2

    .line 143
    iget-wide v4, p0, Lq9/k;->k:J

    .line 144
    .line 145
    add-long/2addr v2, v4

    .line 146
    iget v0, p0, Lq9/k;->l:I

    .line 147
    .line 148
    int-to-long v6, v0

    .line 149
    sub-long/2addr v2, v6

    .line 150
    int-to-long v6, v0

    .line 151
    cmp-long v0, v4, v6

    .line 152
    .line 153
    if-eqz v0, :cond_5

    .line 154
    .line 155
    iget v0, p0, Lq9/k;->j:I

    .line 156
    .line 157
    const v4, 0x6d657461

    .line 158
    .line 159
    .line 160
    if-ne v0, v4, :cond_5

    .line 161
    .line 162
    invoke-direct {p0, p1}, Lq9/k;->p(Li9/m;)V

    .line 163
    .line 164
    .line 165
    :cond_5
    iget-object p1, p0, Lq9/k;->f:Ljava/util/ArrayDeque;

    .line 166
    .line 167
    new-instance v0, Lq9/a$a;

    .line 168
    .line 169
    iget v4, p0, Lq9/k;->j:I

    .line 170
    .line 171
    invoke-direct {v0, v4, v2, v3}, Lq9/a$a;-><init>(IJ)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    iget-wide v4, p0, Lq9/k;->k:J

    .line 178
    .line 179
    iget p1, p0, Lq9/k;->l:I

    .line 180
    .line 181
    int-to-long v6, p1

    .line 182
    cmp-long p1, v4, v6

    .line 183
    .line 184
    if-nez p1, :cond_6

    .line 185
    .line 186
    invoke-direct {p0, v2, v3}, Lq9/k;->q(J)V

    .line 187
    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_6
    invoke-direct {p0}, Lq9/k;->i()V

    .line 191
    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_7
    iget v0, p0, Lq9/k;->j:I

    .line 195
    .line 196
    invoke-static {v0}, Lq9/k;->A(I)Z

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-eqz v0, :cond_a

    .line 201
    .line 202
    iget p1, p0, Lq9/k;->l:I

    .line 203
    .line 204
    if-ne p1, v2, :cond_8

    .line 205
    .line 206
    move p1, v1

    .line 207
    goto :goto_1

    .line 208
    :cond_8
    move p1, v3

    .line 209
    :goto_1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 210
    .line 211
    .line 212
    iget-wide v4, p0, Lq9/k;->k:J

    .line 213
    .line 214
    const-wide/32 v6, 0x7fffffff

    .line 215
    .line 216
    .line 217
    cmp-long p1, v4, v6

    .line 218
    .line 219
    if-gtz p1, :cond_9

    .line 220
    .line 221
    move p1, v1

    .line 222
    goto :goto_2

    .line 223
    :cond_9
    move p1, v3

    .line 224
    :goto_2
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 225
    .line 226
    .line 227
    new-instance p1, Lcom/google/android/exoplayer2/util/d0;

    .line 228
    .line 229
    iget-wide v4, p0, Lq9/k;->k:J

    .line 230
    .line 231
    long-to-int v0, v4

    .line 232
    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/d0;-><init>(I)V

    .line 233
    .line 234
    .line 235
    iget-object v0, p0, Lq9/k;->e:Lcom/google/android/exoplayer2/util/d0;

    .line 236
    .line 237
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    .line 242
    .line 243
    .line 244
    move-result-object v4

    .line 245
    invoke-static {v0, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    .line 247
    .line 248
    iput-object p1, p0, Lq9/k;->m:Lcom/google/android/exoplayer2/util/d0;

    .line 249
    .line 250
    iput v1, p0, Lq9/k;->i:I

    .line 251
    .line 252
    goto :goto_3

    .line 253
    :cond_a
    invoke-interface {p1}, Li9/m;->getPosition()J

    .line 254
    .line 255
    .line 256
    move-result-wide v2

    .line 257
    iget p1, p0, Lq9/k;->l:I

    .line 258
    .line 259
    int-to-long v4, p1

    .line 260
    sub-long/2addr v2, v4

    .line 261
    invoke-direct {p0, v2, v3}, Lq9/k;->u(J)V

    .line 262
    .line 263
    .line 264
    const/4 p1, 0x0

    .line 265
    iput-object p1, p0, Lq9/k;->m:Lcom/google/android/exoplayer2/util/d0;

    .line 266
    .line 267
    iput v1, p0, Lq9/k;->i:I

    .line 268
    .line 269
    :goto_3
    return v1

    .line 270
    :cond_b
    const-string p1, "Atom size less than header length (unsupported)."

    .line 271
    .line 272
    invoke-static {p1}, Lcom/google/android/exoplayer2/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lcom/google/android/exoplayer2/ParserException;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    throw p1
.end method

.method private w(Li9/m;Li9/a0;)Z
    .locals 9

    .line 1
    iget-wide v0, p0, Lq9/k;->k:J

    .line 2
    .line 3
    iget v2, p0, Lq9/k;->l:I

    .line 4
    .line 5
    int-to-long v2, v2

    .line 6
    sub-long/2addr v0, v2

    .line 7
    invoke-interface {p1}, Li9/m;->getPosition()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    add-long/2addr v2, v0

    .line 12
    iget-object v4, p0, Lq9/k;->m:Lcom/google/android/exoplayer2/util/d0;

    .line 13
    .line 14
    const/4 v5, 0x1

    .line 15
    const/4 v6, 0x0

    .line 16
    if-eqz v4, :cond_1

    .line 17
    .line 18
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    iget v7, p0, Lq9/k;->l:I

    .line 23
    .line 24
    long-to-int v0, v0

    .line 25
    invoke-interface {p1, p2, v7, v0}, Li9/m;->readFully([BII)V

    .line 26
    .line 27
    .line 28
    iget p1, p0, Lq9/k;->j:I

    .line 29
    .line 30
    const p2, 0x66747970

    .line 31
    .line 32
    .line 33
    if-ne p1, p2, :cond_0

    .line 34
    .line 35
    invoke-static {v4}, Lq9/k;->s(Lcom/google/android/exoplayer2/util/d0;)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    iput p1, p0, Lq9/k;->w:I

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-object p1, p0, Lq9/k;->f:Ljava/util/ArrayDeque;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-nez p1, :cond_2

    .line 49
    .line 50
    iget-object p1, p0, Lq9/k;->f:Ljava/util/ArrayDeque;

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Lq9/a$a;

    .line 57
    .line 58
    new-instance p2, Lq9/a$b;

    .line 59
    .line 60
    iget v0, p0, Lq9/k;->j:I

    .line 61
    .line 62
    invoke-direct {p2, v0, v4}, Lq9/a$b;-><init>(ILcom/google/android/exoplayer2/util/d0;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, p2}, Lq9/a$a;->e(Lq9/a$b;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    const-wide/32 v7, 0x40000

    .line 70
    .line 71
    .line 72
    cmp-long v4, v0, v7

    .line 73
    .line 74
    if-gez v4, :cond_3

    .line 75
    .line 76
    long-to-int p2, v0

    .line 77
    invoke-interface {p1, p2}, Li9/m;->skipFully(I)V

    .line 78
    .line 79
    .line 80
    :cond_2
    :goto_0
    move p1, v6

    .line 81
    goto :goto_1

    .line 82
    :cond_3
    invoke-interface {p1}, Li9/m;->getPosition()J

    .line 83
    .line 84
    .line 85
    move-result-wide v7

    .line 86
    add-long/2addr v7, v0

    .line 87
    iput-wide v7, p2, Li9/a0;->a:J

    .line 88
    .line 89
    move p1, v5

    .line 90
    :goto_1
    invoke-direct {p0, v2, v3}, Lq9/k;->q(J)V

    .line 91
    .line 92
    .line 93
    if-eqz p1, :cond_4

    .line 94
    .line 95
    iget p1, p0, Lq9/k;->i:I

    .line 96
    .line 97
    const/4 p2, 0x2

    .line 98
    if-eq p1, p2, :cond_4

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_4
    move v5, v6

    .line 102
    :goto_2
    return v5
.end method

.method private x(Li9/m;Li9/a0;)I
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-interface/range {p1 .. p1}, Li9/m;->getPosition()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    iget v4, v0, Lq9/k;->n:I

    .line 10
    .line 11
    const/4 v5, -0x1

    .line 12
    if-ne v4, v5, :cond_0

    .line 13
    .line 14
    invoke-direct {v0, v2, v3}, Lq9/k;->l(J)I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    iput v4, v0, Lq9/k;->n:I

    .line 19
    .line 20
    if-ne v4, v5, :cond_0

    .line 21
    .line 22
    return v5

    .line 23
    :cond_0
    iget-object v4, v0, Lq9/k;->s:[Lq9/k$a;

    .line 24
    .line 25
    iget v6, v0, Lq9/k;->n:I

    .line 26
    .line 27
    aget-object v4, v4, v6

    .line 28
    .line 29
    iget-object v14, v4, Lq9/k$a;->c:Li9/e0;

    .line 30
    .line 31
    iget v15, v4, Lq9/k$a;->e:I

    .line 32
    .line 33
    iget-object v6, v4, Lq9/k$a;->b:Lq9/r;

    .line 34
    .line 35
    iget-object v7, v6, Lq9/r;->c:[J

    .line 36
    .line 37
    aget-wide v8, v7, v15

    .line 38
    .line 39
    iget-object v6, v6, Lq9/r;->d:[I

    .line 40
    .line 41
    aget v6, v6, v15

    .line 42
    .line 43
    iget-object v13, v4, Lq9/k$a;->d:Li9/f0;

    .line 44
    .line 45
    sub-long v2, v8, v2

    .line 46
    .line 47
    iget v7, v0, Lq9/k;->o:I

    .line 48
    .line 49
    int-to-long v10, v7

    .line 50
    add-long/2addr v2, v10

    .line 51
    const-wide/16 v10, 0x0

    .line 52
    .line 53
    cmp-long v7, v2, v10

    .line 54
    .line 55
    const/4 v12, 0x1

    .line 56
    if-ltz v7, :cond_c

    .line 57
    .line 58
    const-wide/32 v10, 0x40000

    .line 59
    .line 60
    .line 61
    cmp-long v7, v2, v10

    .line 62
    .line 63
    if-ltz v7, :cond_1

    .line 64
    .line 65
    move-object/from16 v1, p2

    .line 66
    .line 67
    move/from16 v17, v12

    .line 68
    .line 69
    goto/16 :goto_4

    .line 70
    .line 71
    :cond_1
    iget-object v7, v4, Lq9/k$a;->a:Lq9/o;

    .line 72
    .line 73
    iget v7, v7, Lq9/o;->g:I

    .line 74
    .line 75
    if-ne v7, v12, :cond_2

    .line 76
    .line 77
    const-wide/16 v7, 0x8

    .line 78
    .line 79
    add-long/2addr v2, v7

    .line 80
    add-int/lit8 v6, v6, -0x8

    .line 81
    .line 82
    :cond_2
    long-to-int v2, v2

    .line 83
    invoke-interface {v1, v2}, Li9/m;->skipFully(I)V

    .line 84
    .line 85
    .line 86
    iget-object v2, v4, Lq9/k$a;->a:Lq9/o;

    .line 87
    .line 88
    iget v3, v2, Lq9/o;->j:I

    .line 89
    .line 90
    const/4 v11, 0x0

    .line 91
    const/4 v10, 0x0

    .line 92
    if-eqz v3, :cond_6

    .line 93
    .line 94
    iget-object v2, v0, Lq9/k;->c:Lcom/google/android/exoplayer2/util/d0;

    .line 95
    .line 96
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    aput-byte v10, v2, v10

    .line 101
    .line 102
    aput-byte v10, v2, v12

    .line 103
    .line 104
    const/4 v3, 0x2

    .line 105
    aput-byte v10, v2, v3

    .line 106
    .line 107
    iget-object v3, v4, Lq9/k$a;->a:Lq9/o;

    .line 108
    .line 109
    iget v3, v3, Lq9/o;->j:I

    .line 110
    .line 111
    rsub-int/lit8 v7, v3, 0x4

    .line 112
    .line 113
    :goto_0
    iget v8, v0, Lq9/k;->p:I

    .line 114
    .line 115
    if-ge v8, v6, :cond_5

    .line 116
    .line 117
    iget v8, v0, Lq9/k;->q:I

    .line 118
    .line 119
    if-nez v8, :cond_4

    .line 120
    .line 121
    invoke-interface {v1, v2, v7, v3}, Li9/m;->readFully([BII)V

    .line 122
    .line 123
    .line 124
    iget v8, v0, Lq9/k;->o:I

    .line 125
    .line 126
    add-int/2addr v8, v3

    .line 127
    iput v8, v0, Lq9/k;->o:I

    .line 128
    .line 129
    iget-object v8, v0, Lq9/k;->c:Lcom/google/android/exoplayer2/util/d0;

    .line 130
    .line 131
    invoke-virtual {v8, v10}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 132
    .line 133
    .line 134
    iget-object v8, v0, Lq9/k;->c:Lcom/google/android/exoplayer2/util/d0;

    .line 135
    .line 136
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/d0;->n()I

    .line 137
    .line 138
    .line 139
    move-result v8

    .line 140
    if-ltz v8, :cond_3

    .line 141
    .line 142
    iput v8, v0, Lq9/k;->q:I

    .line 143
    .line 144
    iget-object v8, v0, Lq9/k;->b:Lcom/google/android/exoplayer2/util/d0;

    .line 145
    .line 146
    invoke-virtual {v8, v10}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 147
    .line 148
    .line 149
    iget-object v8, v0, Lq9/k;->b:Lcom/google/android/exoplayer2/util/d0;

    .line 150
    .line 151
    const/4 v9, 0x4

    .line 152
    invoke-interface {v14, v8, v9}, Li9/e0;->c(Lcom/google/android/exoplayer2/util/d0;I)V

    .line 153
    .line 154
    .line 155
    iget v8, v0, Lq9/k;->p:I

    .line 156
    .line 157
    add-int/2addr v8, v9

    .line 158
    iput v8, v0, Lq9/k;->p:I

    .line 159
    .line 160
    add-int/2addr v6, v7

    .line 161
    goto :goto_0

    .line 162
    :cond_3
    const-string v1, "Invalid NAL length"

    .line 163
    .line 164
    invoke-static {v1, v11}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    throw v1

    .line 169
    :cond_4
    invoke-interface {v14, v1, v8, v10}, Li9/e0;->b(Lcom/google/android/exoplayer2/upstream/g;IZ)I

    .line 170
    .line 171
    .line 172
    move-result v8

    .line 173
    iget v9, v0, Lq9/k;->o:I

    .line 174
    .line 175
    add-int/2addr v9, v8

    .line 176
    iput v9, v0, Lq9/k;->o:I

    .line 177
    .line 178
    iget v9, v0, Lq9/k;->p:I

    .line 179
    .line 180
    add-int/2addr v9, v8

    .line 181
    iput v9, v0, Lq9/k;->p:I

    .line 182
    .line 183
    iget v9, v0, Lq9/k;->q:I

    .line 184
    .line 185
    sub-int/2addr v9, v8

    .line 186
    iput v9, v0, Lq9/k;->q:I

    .line 187
    .line 188
    goto :goto_0

    .line 189
    :cond_5
    move v1, v6

    .line 190
    goto :goto_2

    .line 191
    :cond_6
    iget-object v2, v2, Lq9/o;->f:Lcom/google/android/exoplayer2/p1;

    .line 192
    .line 193
    iget-object v2, v2, Lcom/google/android/exoplayer2/p1;->l:Ljava/lang/String;

    .line 194
    .line 195
    const-string v3, "audio/ac4"

    .line 196
    .line 197
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    if-eqz v2, :cond_8

    .line 202
    .line 203
    iget v2, v0, Lq9/k;->p:I

    .line 204
    .line 205
    if-nez v2, :cond_7

    .line 206
    .line 207
    iget-object v2, v0, Lq9/k;->d:Lcom/google/android/exoplayer2/util/d0;

    .line 208
    .line 209
    invoke-static {v6, v2}, Lcom/google/android/exoplayer2/audio/c;->a(ILcom/google/android/exoplayer2/util/d0;)V

    .line 210
    .line 211
    .line 212
    iget-object v2, v0, Lq9/k;->d:Lcom/google/android/exoplayer2/util/d0;

    .line 213
    .line 214
    const/4 v3, 0x7

    .line 215
    invoke-interface {v14, v2, v3}, Li9/e0;->c(Lcom/google/android/exoplayer2/util/d0;I)V

    .line 216
    .line 217
    .line 218
    iget v2, v0, Lq9/k;->p:I

    .line 219
    .line 220
    add-int/2addr v2, v3

    .line 221
    iput v2, v0, Lq9/k;->p:I

    .line 222
    .line 223
    :cond_7
    add-int/lit8 v6, v6, 0x7

    .line 224
    .line 225
    goto :goto_1

    .line 226
    :cond_8
    if-eqz v13, :cond_9

    .line 227
    .line 228
    invoke-virtual {v13, v1}, Li9/f0;->d(Li9/m;)V

    .line 229
    .line 230
    .line 231
    :cond_9
    :goto_1
    iget v2, v0, Lq9/k;->p:I

    .line 232
    .line 233
    if-ge v2, v6, :cond_5

    .line 234
    .line 235
    sub-int v2, v6, v2

    .line 236
    .line 237
    invoke-interface {v14, v1, v2, v10}, Li9/e0;->b(Lcom/google/android/exoplayer2/upstream/g;IZ)I

    .line 238
    .line 239
    .line 240
    move-result v2

    .line 241
    iget v3, v0, Lq9/k;->o:I

    .line 242
    .line 243
    add-int/2addr v3, v2

    .line 244
    iput v3, v0, Lq9/k;->o:I

    .line 245
    .line 246
    iget v3, v0, Lq9/k;->p:I

    .line 247
    .line 248
    add-int/2addr v3, v2

    .line 249
    iput v3, v0, Lq9/k;->p:I

    .line 250
    .line 251
    iget v3, v0, Lq9/k;->q:I

    .line 252
    .line 253
    sub-int/2addr v3, v2

    .line 254
    iput v3, v0, Lq9/k;->q:I

    .line 255
    .line 256
    goto :goto_1

    .line 257
    :goto_2
    iget-object v2, v4, Lq9/k$a;->b:Lq9/r;

    .line 258
    .line 259
    iget-object v3, v2, Lq9/r;->f:[J

    .line 260
    .line 261
    aget-wide v8, v3, v15

    .line 262
    .line 263
    iget-object v2, v2, Lq9/r;->g:[I

    .line 264
    .line 265
    aget v2, v2, v15

    .line 266
    .line 267
    if-eqz v13, :cond_a

    .line 268
    .line 269
    const/4 v3, 0x0

    .line 270
    const/16 v16, 0x0

    .line 271
    .line 272
    move-object v6, v13

    .line 273
    move-object v7, v14

    .line 274
    move v10, v2

    .line 275
    move-object v2, v11

    .line 276
    move v11, v1

    .line 277
    move/from16 v17, v12

    .line 278
    .line 279
    move v12, v3

    .line 280
    move-object v1, v13

    .line 281
    move-object/from16 v13, v16

    .line 282
    .line 283
    invoke-virtual/range {v6 .. v13}, Li9/f0;->c(Li9/e0;JIIILi9/e0$a;)V

    .line 284
    .line 285
    .line 286
    add-int/lit8 v15, v15, 0x1

    .line 287
    .line 288
    iget-object v3, v4, Lq9/k$a;->b:Lq9/r;

    .line 289
    .line 290
    iget v3, v3, Lq9/r;->b:I

    .line 291
    .line 292
    if-ne v15, v3, :cond_b

    .line 293
    .line 294
    invoke-virtual {v1, v14, v2}, Li9/f0;->a(Li9/e0;Li9/e0$a;)V

    .line 295
    .line 296
    .line 297
    goto :goto_3

    .line 298
    :cond_a
    move/from16 v17, v12

    .line 299
    .line 300
    const/4 v11, 0x0

    .line 301
    const/4 v12, 0x0

    .line 302
    move-object v6, v14

    .line 303
    move-wide v7, v8

    .line 304
    move v9, v2

    .line 305
    move v10, v1

    .line 306
    invoke-interface/range {v6 .. v12}, Li9/e0;->e(JIIILi9/e0$a;)V

    .line 307
    .line 308
    .line 309
    :cond_b
    :goto_3
    iget v1, v4, Lq9/k$a;->e:I

    .line 310
    .line 311
    add-int/lit8 v1, v1, 0x1

    .line 312
    .line 313
    iput v1, v4, Lq9/k$a;->e:I

    .line 314
    .line 315
    iput v5, v0, Lq9/k;->n:I

    .line 316
    .line 317
    const/4 v1, 0x0

    .line 318
    iput v1, v0, Lq9/k;->o:I

    .line 319
    .line 320
    iput v1, v0, Lq9/k;->p:I

    .line 321
    .line 322
    iput v1, v0, Lq9/k;->q:I

    .line 323
    .line 324
    return v1

    .line 325
    :cond_c
    move/from16 v17, v12

    .line 326
    .line 327
    move-object/from16 v1, p2

    .line 328
    .line 329
    :goto_4
    iput-wide v8, v1, Li9/a0;->a:J

    .line 330
    .line 331
    return v17
.end method

.method private y(Li9/m;Li9/a0;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lq9/k;->g:Lq9/m;

    .line 2
    .line 3
    iget-object v1, p0, Lq9/k;->h:Ljava/util/List;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, v1}, Lq9/m;->c(Li9/m;Li9/a0;Ljava/util/List;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v0, 0x1

    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    iget-wide v0, p2, Li9/a0;->a:J

    .line 13
    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    cmp-long p2, v0, v2

    .line 17
    .line 18
    if-nez p2, :cond_0

    .line 19
    .line 20
    invoke-direct {p0}, Lq9/k;->i()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return p1
.end method

.method private static z(I)Z
    .locals 1

    .line 1
    const v0, 0x6d6f6f76

    .line 2
    .line 3
    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const v0, 0x7472616b

    .line 7
    .line 8
    .line 9
    if-eq p0, v0, :cond_1

    .line 10
    .line 11
    const v0, 0x6d646961

    .line 12
    .line 13
    .line 14
    if-eq p0, v0, :cond_1

    .line 15
    .line 16
    const v0, 0x6d696e66

    .line 17
    .line 18
    .line 19
    if-eq p0, v0, :cond_1

    .line 20
    .line 21
    const v0, 0x7374626c

    .line 22
    .line 23
    .line 24
    if-eq p0, v0, :cond_1

    .line 25
    .line 26
    const v0, 0x65647473

    .line 27
    .line 28
    .line 29
    if-eq p0, v0, :cond_1

    .line 30
    .line 31
    const v0, 0x6d657461

    .line 32
    .line 33
    .line 34
    if-ne p0, v0, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 p0, 0x0

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 40
    :goto_1
    return p0
.end method


# virtual methods
.method public b(Li9/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq9/k;->r:Li9/n;

    .line 2
    .line 3
    return-void
.end method

.method public c(Li9/m;)Z
    .locals 1

    .line 1
    iget v0, p0, Lq9/k;->a:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    invoke-static {p1, v0}, Lq9/n;->d(Li9/m;Z)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public d(Li9/m;Li9/a0;)I
    .locals 2

    .line 1
    :cond_0
    iget v0, p0, Lq9/k;->i:I

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_3

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_2

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    invoke-direct {p0, p1, p2}, Lq9/k;->y(Li9/m;Li9/a0;)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1

    .line 19
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :cond_2
    invoke-direct {p0, p1, p2}, Lq9/k;->x(Li9/m;Li9/a0;)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1

    .line 30
    :cond_3
    invoke-direct {p0, p1, p2}, Lq9/k;->w(Li9/m;Li9/a0;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    return v1

    .line 37
    :cond_4
    invoke-direct {p0, p1}, Lq9/k;->v(Li9/m;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_0

    .line 42
    .line 43
    const/4 p1, -0x1

    .line 44
    return p1
.end method

.method public getDurationUs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lq9/k;->v:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getSeekPoints(J)Li9/b0$a;
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lq9/k;->j(JI)Li9/b0$a;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public isSeekable()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public j(JI)Li9/b0$a;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    move/from16 v3, p3

    .line 6
    .line 7
    iget-object v4, v0, Lq9/k;->s:[Lq9/k$a;

    .line 8
    .line 9
    array-length v5, v4

    .line 10
    if-nez v5, :cond_0

    .line 11
    .line 12
    new-instance v1, Li9/b0$a;

    .line 13
    .line 14
    sget-object v2, Li9/c0;->c:Li9/c0;

    .line 15
    .line 16
    invoke-direct {v1, v2}, Li9/b0$a;-><init>(Li9/c0;)V

    .line 17
    .line 18
    .line 19
    return-object v1

    .line 20
    :cond_0
    const/4 v5, -0x1

    .line 21
    if-eq v3, v5, :cond_1

    .line 22
    .line 23
    move v6, v3

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget v6, v0, Lq9/k;->u:I

    .line 26
    .line 27
    :goto_0
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    const-wide/16 v9, -0x1

    .line 33
    .line 34
    if-eq v6, v5, :cond_3

    .line 35
    .line 36
    aget-object v4, v4, v6

    .line 37
    .line 38
    iget-object v4, v4, Lq9/k$a;->b:Lq9/r;

    .line 39
    .line 40
    invoke-static {v4, v1, v2}, Lq9/k;->k(Lq9/r;J)I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    if-ne v6, v5, :cond_2

    .line 45
    .line 46
    new-instance v1, Li9/b0$a;

    .line 47
    .line 48
    sget-object v2, Li9/c0;->c:Li9/c0;

    .line 49
    .line 50
    invoke-direct {v1, v2}, Li9/b0$a;-><init>(Li9/c0;)V

    .line 51
    .line 52
    .line 53
    return-object v1

    .line 54
    :cond_2
    iget-object v11, v4, Lq9/r;->f:[J

    .line 55
    .line 56
    aget-wide v12, v11, v6

    .line 57
    .line 58
    iget-object v11, v4, Lq9/r;->c:[J

    .line 59
    .line 60
    aget-wide v14, v11, v6

    .line 61
    .line 62
    cmp-long v11, v12, v1

    .line 63
    .line 64
    if-gez v11, :cond_4

    .line 65
    .line 66
    iget v11, v4, Lq9/r;->b:I

    .line 67
    .line 68
    add-int/lit8 v11, v11, -0x1

    .line 69
    .line 70
    if-ge v6, v11, :cond_4

    .line 71
    .line 72
    invoke-virtual {v4, v1, v2}, Lq9/r;->b(J)I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eq v1, v5, :cond_4

    .line 77
    .line 78
    if-eq v1, v6, :cond_4

    .line 79
    .line 80
    iget-object v2, v4, Lq9/r;->f:[J

    .line 81
    .line 82
    aget-wide v9, v2, v1

    .line 83
    .line 84
    iget-object v2, v4, Lq9/r;->c:[J

    .line 85
    .line 86
    aget-wide v1, v2, v1

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    const-wide v14, 0x7fffffffffffffffL

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    move-wide v12, v1

    .line 95
    :cond_4
    move-wide v1, v9

    .line 96
    move-wide v9, v7

    .line 97
    :goto_1
    if-ne v3, v5, :cond_7

    .line 98
    .line 99
    const/4 v3, 0x0

    .line 100
    :goto_2
    iget-object v4, v0, Lq9/k;->s:[Lq9/k$a;

    .line 101
    .line 102
    array-length v5, v4

    .line 103
    if-ge v3, v5, :cond_7

    .line 104
    .line 105
    iget v5, v0, Lq9/k;->u:I

    .line 106
    .line 107
    if-eq v3, v5, :cond_6

    .line 108
    .line 109
    aget-object v4, v4, v3

    .line 110
    .line 111
    iget-object v4, v4, Lq9/k$a;->b:Lq9/r;

    .line 112
    .line 113
    invoke-static {v4, v12, v13, v14, v15}, Lq9/k;->o(Lq9/r;JJ)J

    .line 114
    .line 115
    .line 116
    move-result-wide v5

    .line 117
    cmp-long v11, v9, v7

    .line 118
    .line 119
    if-eqz v11, :cond_5

    .line 120
    .line 121
    invoke-static {v4, v9, v10, v1, v2}, Lq9/k;->o(Lq9/r;JJ)J

    .line 122
    .line 123
    .line 124
    move-result-wide v1

    .line 125
    :cond_5
    move-wide v14, v5

    .line 126
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_7
    new-instance v3, Li9/c0;

    .line 130
    .line 131
    invoke-direct {v3, v12, v13, v14, v15}, Li9/c0;-><init>(JJ)V

    .line 132
    .line 133
    .line 134
    cmp-long v4, v9, v7

    .line 135
    .line 136
    if-nez v4, :cond_8

    .line 137
    .line 138
    new-instance v1, Li9/b0$a;

    .line 139
    .line 140
    invoke-direct {v1, v3}, Li9/b0$a;-><init>(Li9/c0;)V

    .line 141
    .line 142
    .line 143
    return-object v1

    .line 144
    :cond_8
    new-instance v4, Li9/c0;

    .line 145
    .line 146
    invoke-direct {v4, v9, v10, v1, v2}, Li9/c0;-><init>(JJ)V

    .line 147
    .line 148
    .line 149
    new-instance v1, Li9/b0$a;

    .line 150
    .line 151
    invoke-direct {v1, v3, v4}, Li9/b0$a;-><init>(Li9/c0;Li9/c0;)V

    .line 152
    .line 153
    .line 154
    return-object v1
.end method

.method public release()V
    .locals 0

    .line 1
    return-void
.end method

.method public seek(JJ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lq9/k;->f:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lq9/k;->l:I

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    iput v1, p0, Lq9/k;->n:I

    .line 11
    .line 12
    iput v0, p0, Lq9/k;->o:I

    .line 13
    .line 14
    iput v0, p0, Lq9/k;->p:I

    .line 15
    .line 16
    iput v0, p0, Lq9/k;->q:I

    .line 17
    .line 18
    const-wide/16 v1, 0x0

    .line 19
    .line 20
    cmp-long p1, p1, v1

    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    iget p1, p0, Lq9/k;->i:I

    .line 25
    .line 26
    const/4 p2, 0x3

    .line 27
    if-eq p1, p2, :cond_0

    .line 28
    .line 29
    invoke-direct {p0}, Lq9/k;->i()V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    iget-object p1, p0, Lq9/k;->g:Lq9/m;

    .line 34
    .line 35
    invoke-virtual {p1}, Lq9/m;->g()V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lq9/k;->h:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    iget-object p1, p0, Lq9/k;->s:[Lq9/k$a;

    .line 45
    .line 46
    array-length p2, p1

    .line 47
    :goto_0
    if-ge v0, p2, :cond_3

    .line 48
    .line 49
    aget-object v1, p1, v0

    .line 50
    .line 51
    invoke-direct {p0, v1, p3, p4}, Lq9/k;->B(Lq9/k$a;J)V

    .line 52
    .line 53
    .line 54
    iget-object v1, v1, Lq9/k$a;->d:Li9/f0;

    .line 55
    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    invoke-virtual {v1}, Li9/f0;->b()V

    .line 59
    .line 60
    .line 61
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    :goto_1
    return-void
.end method
