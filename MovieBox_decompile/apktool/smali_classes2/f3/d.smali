.class public Lf3/d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lk2/r;


# static fields
.field public static final d:Lk2/x;


# instance fields
.field private a:Lk2/t;

.field private b:Lf3/i;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lf3/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lf3/c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lf3/d;->d:Lk2/x;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a()[Lk2/r;
    .locals 1

    .line 1
    invoke-static {}, Lf3/d;->g()[Lk2/r;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static synthetic g()[Lk2/r;
    .locals 3

    .line 1
    new-instance v0, Lf3/d;

    .line 2
    .line 3
    invoke-direct {v0}, Lf3/d;-><init>()V

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

.method private static h(Landroidx/media3/common/util/j0;)Landroidx/media3/common/util/j0;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    .line 3
    .line 4
    .line 5
    return-object p0
.end method

.method private i(Lk2/s;)Z
    .locals 5

    .line 1
    new-instance v0, Lf3/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lf3/f;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, p1, v1}, Lf3/f;->a(Lk2/s;Z)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v2, :cond_3

    .line 13
    .line 14
    iget v2, v0, Lf3/f;->b:I

    .line 15
    .line 16
    const/4 v4, 0x2

    .line 17
    and-int/2addr v2, v4

    .line 18
    if-eq v2, v4, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget v0, v0, Lf3/f;->i:I

    .line 22
    .line 23
    const/16 v2, 0x8

    .line 24
    .line 25
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    new-instance v2, Landroidx/media3/common/util/j0;

    .line 30
    .line 31
    invoke-direct {v2, v0}, Landroidx/media3/common/util/j0;-><init>(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Landroidx/media3/common/util/j0;->e()[B

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-interface {p1, v4, v3, v0}, Lk2/s;->peekFully([BII)V

    .line 39
    .line 40
    .line 41
    invoke-static {v2}, Lf3/d;->h(Landroidx/media3/common/util/j0;)Landroidx/media3/common/util/j0;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {p1}, Lf3/b;->p(Landroidx/media3/common/util/j0;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    new-instance p1, Lf3/b;

    .line 52
    .line 53
    invoke-direct {p1}, Lf3/b;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, Lf3/d;->b:Lf3/i;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-static {v2}, Lf3/d;->h(Landroidx/media3/common/util/j0;)Landroidx/media3/common/util/j0;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {p1}, Lf3/j;->r(Landroidx/media3/common/util/j0;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_2

    .line 68
    .line 69
    new-instance p1, Lf3/j;

    .line 70
    .line 71
    invoke-direct {p1}, Lf3/j;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object p1, p0, Lf3/d;->b:Lf3/i;

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    invoke-static {v2}, Lf3/d;->h(Landroidx/media3/common/util/j0;)Landroidx/media3/common/util/j0;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {p1}, Lf3/h;->o(Landroidx/media3/common/util/j0;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_3

    .line 86
    .line 87
    new-instance p1, Lf3/h;

    .line 88
    .line 89
    invoke-direct {p1}, Lf3/h;-><init>()V

    .line 90
    .line 91
    .line 92
    iput-object p1, p0, Lf3/d;->b:Lf3/i;

    .line 93
    .line 94
    :goto_0
    return v1

    .line 95
    :cond_3
    :goto_1
    return v3
.end method


# virtual methods
.method public b(Lk2/s;)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lf3/d;->i(Lk2/s;)Z

    .line 2
    .line 3
    .line 4
    move-result p1
    :try_end_0
    .catch Landroidx/media3/common/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return p1

    .line 6
    :catch_0
    const/4 p1, 0x0

    .line 7
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
    .locals 4

    .line 1
    iget-object v0, p0, Lf3/d;->a:Lk2/t;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lf3/d;->b:Lf3/i;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    invoke-direct {p0, p1}, Lf3/d;->i(Lk2/s;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {p1}, Lk2/s;->resetPeekPosition()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string p1, "Failed to determine bitstream type"

    .line 21
    .line 22
    const/4 p2, 0x0

    .line 23
    invoke-static {p1, p2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    throw p1

    .line 28
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lf3/d;->c:Z

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    iget-object v0, p0, Lf3/d;->a:Lk2/t;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    const/4 v2, 0x1

    .line 36
    invoke-interface {v0, v1, v2}, Lk2/t;->track(II)Lk2/s0;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v1, p0, Lf3/d;->a:Lk2/t;

    .line 41
    .line 42
    invoke-interface {v1}, Lk2/t;->endTracks()V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lf3/d;->b:Lf3/i;

    .line 46
    .line 47
    iget-object v3, p0, Lf3/d;->a:Lk2/t;

    .line 48
    .line 49
    invoke-virtual {v1, v3, v0}, Lf3/i;->d(Lk2/t;Lk2/s0;)V

    .line 50
    .line 51
    .line 52
    iput-boolean v2, p0, Lf3/d;->c:Z

    .line 53
    .line 54
    :cond_2
    iget-object v0, p0, Lf3/d;->b:Lf3/i;

    .line 55
    .line 56
    invoke-virtual {v0, p1, p2}, Lf3/i;->g(Lk2/s;Lk2/l0;)I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    return p1
.end method

.method public e(Lk2/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf3/d;->a:Lk2/t;

    .line 2
    .line 3
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
    .locals 1

    .line 1
    iget-object v0, p0, Lf3/d;->b:Lf3/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3, p4}, Lf3/i;->m(JJ)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
