.class public final Ls3/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lk2/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls3/b$b;,
        Ls3/b$a;,
        Ls3/b$c;
    }
.end annotation


# static fields
.field public static final h:Lk2/x;


# instance fields
.field private a:Lk2/t;

.field private b:Lk2/s0;

.field private c:I

.field private d:J

.field private e:Ls3/b$b;

.field private f:I

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ls3/a;

    .line 2
    .line 3
    invoke-direct {v0}, Ls3/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ls3/b;->h:Lk2/x;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Ls3/b;->c:I

    .line 6
    .line 7
    const-wide/16 v0, -0x1

    .line 8
    .line 9
    iput-wide v0, p0, Ls3/b;->d:J

    .line 10
    .line 11
    const/4 v2, -0x1

    .line 12
    iput v2, p0, Ls3/b;->f:I

    .line 13
    .line 14
    iput-wide v0, p0, Ls3/b;->g:J

    .line 15
    .line 16
    return-void
.end method

.method public static synthetic a()[Lk2/r;
    .locals 1

    .line 1
    invoke-static {}, Ls3/b;->h()[Lk2/r;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private g()V
    .locals 1

    .line 1
    iget-object v0, p0, Ls3/b;->b:Lk2/s0;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ls3/b;->a:Lk2/t;

    .line 7
    .line 8
    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static synthetic h()[Lk2/r;
    .locals 3

    .line 1
    new-instance v0, Ls3/b;

    .line 2
    .line 3
    invoke-direct {v0}, Ls3/b;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    new-array v1, v1, [Lk2/r;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    aput-object v0, v1, v2

    .line 11
    .line 12
    return-object v1
.end method

.method private i(Lk2/s;)V
    .locals 6

    .line 1
    invoke-interface {p1}, Lk2/s;->getPosition()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    move v0, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    .line 16
    .line 17
    .line 18
    iget v0, p0, Ls3/b;->f:I

    .line 19
    .line 20
    const/4 v2, -0x1

    .line 21
    if-eq v0, v2, :cond_1

    .line 22
    .line 23
    invoke-interface {p1, v0}, Lk2/s;->skipFully(I)V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x4

    .line 27
    iput p1, p0, Ls3/b;->c:I

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    invoke-static {p1}, Ls3/d;->a(Lk2/s;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-interface {p1}, Lk2/s;->getPeekPosition()J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    invoke-interface {p1}, Lk2/s;->getPosition()J

    .line 41
    .line 42
    .line 43
    move-result-wide v4

    .line 44
    sub-long/2addr v2, v4

    .line 45
    long-to-int v0, v2

    .line 46
    invoke-interface {p1, v0}, Lk2/s;->skipFully(I)V

    .line 47
    .line 48
    .line 49
    iput v1, p0, Ls3/b;->c:I

    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    const-string p1, "Unsupported or unrecognized wav file type."

    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    invoke-static {p1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    throw p1
.end method

.method private j(Lk2/s;)V
    .locals 6

    .line 1
    invoke-static {p1}, Ls3/d;->b(Lk2/s;)Ls3/c;

    .line 2
    .line 3
    .line 4
    move-result-object v3

    .line 5
    iget p1, v3, Ls3/c;->a:I

    .line 6
    .line 7
    const/16 v0, 0x11

    .line 8
    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    new-instance p1, Ls3/b$a;

    .line 12
    .line 13
    iget-object v0, p0, Ls3/b;->a:Lk2/t;

    .line 14
    .line 15
    iget-object v1, p0, Ls3/b;->b:Lk2/s0;

    .line 16
    .line 17
    invoke-direct {p1, v0, v1, v3}, Ls3/b$a;-><init>(Lk2/t;Lk2/s0;Ls3/c;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Ls3/b;->e:Ls3/b$b;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x6

    .line 24
    if-ne p1, v0, :cond_1

    .line 25
    .line 26
    new-instance p1, Ls3/b$c;

    .line 27
    .line 28
    iget-object v1, p0, Ls3/b;->a:Lk2/t;

    .line 29
    .line 30
    iget-object v2, p0, Ls3/b;->b:Lk2/s0;

    .line 31
    .line 32
    const-string v4, "audio/g711-alaw"

    .line 33
    .line 34
    const/4 v5, -0x1

    .line 35
    move-object v0, p1

    .line 36
    invoke-direct/range {v0 .. v5}, Ls3/b$c;-><init>(Lk2/t;Lk2/s0;Ls3/c;Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Ls3/b;->e:Ls3/b$b;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 v0, 0x7

    .line 43
    if-ne p1, v0, :cond_2

    .line 44
    .line 45
    new-instance p1, Ls3/b$c;

    .line 46
    .line 47
    iget-object v1, p0, Ls3/b;->a:Lk2/t;

    .line 48
    .line 49
    iget-object v2, p0, Ls3/b;->b:Lk2/s0;

    .line 50
    .line 51
    const-string v4, "audio/g711-mlaw"

    .line 52
    .line 53
    const/4 v5, -0x1

    .line 54
    move-object v0, p1

    .line 55
    invoke-direct/range {v0 .. v5}, Ls3/b$c;-><init>(Lk2/t;Lk2/s0;Ls3/c;Ljava/lang/String;I)V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Ls3/b;->e:Ls3/b$b;

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    iget v0, v3, Ls3/c;->f:I

    .line 62
    .line 63
    invoke-static {p1, v0}, Lk2/w0;->a(II)I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    if-eqz v5, :cond_3

    .line 68
    .line 69
    new-instance p1, Ls3/b$c;

    .line 70
    .line 71
    iget-object v1, p0, Ls3/b;->a:Lk2/t;

    .line 72
    .line 73
    iget-object v2, p0, Ls3/b;->b:Lk2/s0;

    .line 74
    .line 75
    const-string v4, "audio/raw"

    .line 76
    .line 77
    move-object v0, p1

    .line 78
    invoke-direct/range {v0 .. v5}, Ls3/b$c;-><init>(Lk2/t;Lk2/s0;Ls3/c;Ljava/lang/String;I)V

    .line 79
    .line 80
    .line 81
    iput-object p1, p0, Ls3/b;->e:Ls3/b$b;

    .line 82
    .line 83
    :goto_0
    const/4 p1, 0x3

    .line 84
    iput p1, p0, Ls3/b;->c:I

    .line 85
    .line 86
    return-void

    .line 87
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string v0, "Unsupported WAV format type: "

    .line 93
    .line 94
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget v0, v3, Ls3/c;->a:I

    .line 98
    .line 99
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-static {p1}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    throw p1
.end method

.method private k(Lk2/s;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ls3/d;->c(Lk2/s;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Ls3/b;->d:J

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    iput p1, p0, Ls3/b;->c:I

    .line 9
    .line 10
    return-void
.end method

.method private l(Lk2/s;)I
    .locals 6

    .line 1
    iget-wide v0, p0, Ls3/b;->g:J

    .line 2
    .line 3
    const-wide/16 v2, -0x1

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v0, v1

    .line 13
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    .line 14
    .line 15
    .line 16
    iget-wide v2, p0, Ls3/b;->g:J

    .line 17
    .line 18
    invoke-interface {p1}, Lk2/s;->getPosition()J

    .line 19
    .line 20
    .line 21
    move-result-wide v4

    .line 22
    sub-long/2addr v2, v4

    .line 23
    iget-object v0, p0, Ls3/b;->e:Ls3/b$b;

    .line 24
    .line 25
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ls3/b$b;

    .line 30
    .line 31
    invoke-interface {v0, p1, v2, v3}, Ls3/b$b;->c(Lk2/s;J)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    const/4 v1, -0x1

    .line 38
    :cond_1
    return v1
.end method

.method private m(Lk2/s;)V
    .locals 8

    .line 1
    invoke-static {p1}, Ls3/d;->e(Lk2/s;)Landroid/util/Pair;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/lang/Long;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iput v1, p0, Ls3/b;->f:I

    .line 14
    .line 15
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Ljava/lang/Long;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    iget-wide v2, p0, Ls3/b;->d:J

    .line 24
    .line 25
    const-wide/16 v4, -0x1

    .line 26
    .line 27
    cmp-long v6, v2, v4

    .line 28
    .line 29
    if-eqz v6, :cond_0

    .line 30
    .line 31
    const-wide v6, 0xffffffffL

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    cmp-long v6, v0, v6

    .line 37
    .line 38
    if-nez v6, :cond_0

    .line 39
    .line 40
    move-wide v0, v2

    .line 41
    :cond_0
    iget v2, p0, Ls3/b;->f:I

    .line 42
    .line 43
    int-to-long v2, v2

    .line 44
    add-long/2addr v2, v0

    .line 45
    iput-wide v2, p0, Ls3/b;->g:J

    .line 46
    .line 47
    invoke-interface {p1}, Lk2/s;->getLength()J

    .line 48
    .line 49
    .line 50
    move-result-wide v0

    .line 51
    cmp-long p1, v0, v4

    .line 52
    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    iget-wide v2, p0, Ls3/b;->g:J

    .line 56
    .line 57
    cmp-long p1, v2, v0

    .line 58
    .line 59
    if-lez p1, :cond_1

    .line 60
    .line 61
    new-instance p1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v2, "Data exceeds input length: "

    .line 67
    .line 68
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-wide v2, p0, Ls3/b;->g:J

    .line 72
    .line 73
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v2, ", "

    .line 77
    .line 78
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    const-string v2, "WavExtractor"

    .line 89
    .line 90
    invoke-static {v2, p1}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iput-wide v0, p0, Ls3/b;->g:J

    .line 94
    .line 95
    :cond_1
    iget-object p1, p0, Ls3/b;->e:Ls3/b$b;

    .line 96
    .line 97
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Ls3/b$b;

    .line 102
    .line 103
    iget v0, p0, Ls3/b;->f:I

    .line 104
    .line 105
    iget-wide v1, p0, Ls3/b;->g:J

    .line 106
    .line 107
    invoke-interface {p1, v0, v1, v2}, Ls3/b$b;->a(IJ)V

    .line 108
    .line 109
    .line 110
    const/4 p1, 0x4

    .line 111
    iput p1, p0, Ls3/b;->c:I

    .line 112
    .line 113
    return-void
.end method


# virtual methods
.method public b(Lk2/s;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Ls3/d;->a(Lk2/s;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public synthetic c()Lk2/r;
    .locals 1

    .line 1
    invoke-static {p0}, Lk2/q;->b(Lk2/r;)Lk2/r;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public d(Lk2/s;Lk2/l0;)I
    .locals 2

    .line 1
    invoke-direct {p0}, Ls3/b;->g()V

    .line 2
    .line 3
    .line 4
    iget p2, p0, Ls3/b;->c:I

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-eqz p2, :cond_4

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq p2, v1, :cond_3

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq p2, v1, :cond_2

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    if-eq p2, v1, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    if-ne p2, v0, :cond_0

    .line 20
    .line 21
    invoke-direct {p0, p1}, Ls3/b;->l(Lk2/s;)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :cond_1
    invoke-direct {p0, p1}, Ls3/b;->m(Lk2/s;)V

    .line 33
    .line 34
    .line 35
    return v0

    .line 36
    :cond_2
    invoke-direct {p0, p1}, Ls3/b;->j(Lk2/s;)V

    .line 37
    .line 38
    .line 39
    return v0

    .line 40
    :cond_3
    invoke-direct {p0, p1}, Ls3/b;->k(Lk2/s;)V

    .line 41
    .line 42
    .line 43
    return v0

    .line 44
    :cond_4
    invoke-direct {p0, p1}, Ls3/b;->i(Lk2/s;)V

    .line 45
    .line 46
    .line 47
    return v0
.end method

.method public e(Lk2/t;)V
    .locals 2

    .line 1
    iput-object p1, p0, Ls3/b;->a:Lk2/t;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-interface {p1, v0, v1}, Lk2/t;->track(II)Lk2/s0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Ls3/b;->b:Lk2/s0;

    .line 10
    .line 11
    invoke-interface {p1}, Lk2/t;->endTracks()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public synthetic f()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {p0}, Lk2/q;->a(Lk2/r;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public release()V
    .locals 0

    .line 1
    return-void
.end method

.method public seek(JJ)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long p1, p1, v0

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x4

    .line 10
    :goto_0
    iput p1, p0, Ls3/b;->c:I

    .line 11
    .line 12
    iget-object p1, p0, Ls3/b;->e:Ls3/b$b;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-interface {p1, p3, p4}, Ls3/b$b;->b(J)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method
