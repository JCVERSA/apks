.class public final Lr3/l;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lr3/m;


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Ljava/lang/String;

.field private final c:[Lk2/s0;

.field private d:Z

.field private e:I

.field private f:I

.field private g:J


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lr3/l;->a:Ljava/util/List;

    .line 5
    .line 6
    iput-object p2, p0, Lr3/l;->b:Ljava/lang/String;

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    new-array p1, p1, [Lk2/s0;

    .line 13
    .line 14
    iput-object p1, p0, Lr3/l;->c:[Lk2/s0;

    .line 15
    .line 16
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    iput-wide p1, p0, Lr3/l;->g:J

    .line 22
    .line 23
    return-void
.end method

.method private b(Landroidx/media3/common/util/j0;I)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->H()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eq p1, p2, :cond_1

    .line 14
    .line 15
    iput-boolean v1, p0, Lr3/l;->d:Z

    .line 16
    .line 17
    :cond_1
    iget p1, p0, Lr3/l;->e:I

    .line 18
    .line 19
    add-int/lit8 p1, p1, -0x1

    .line 20
    .line 21
    iput p1, p0, Lr3/l;->e:I

    .line 22
    .line 23
    iget-boolean p1, p0, Lr3/l;->d:Z

    .line 24
    .line 25
    return p1
.end method


# virtual methods
.method public a(Landroidx/media3/common/util/j0;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lr3/l;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget v0, p0, Lr3/l;->e:I

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    const/16 v0, 0x20

    .line 11
    .line 12
    invoke-direct {p0, p1, v0}, Lr3/l;->b(Landroidx/media3/common/util/j0;I)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget v0, p0, Lr3/l;->e:I

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    const/4 v2, 0x1

    .line 23
    if-ne v0, v2, :cond_1

    .line 24
    .line 25
    invoke-direct {p0, p1, v1}, Lr3/l;->b(Landroidx/media3/common/util/j0;I)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->f()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->a()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    iget-object v3, p0, Lr3/l;->c:[Lk2/s0;

    .line 41
    .line 42
    array-length v4, v3

    .line 43
    :goto_0
    if-ge v1, v4, :cond_2

    .line 44
    .line 45
    aget-object v5, v3, v1

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/j0;->W(I)V

    .line 48
    .line 49
    .line 50
    invoke-interface {v5, p1, v2}, Lk2/s0;->c(Landroidx/media3/common/util/j0;I)V

    .line 51
    .line 52
    .line 53
    add-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    iget p1, p0, Lr3/l;->f:I

    .line 57
    .line 58
    add-int/2addr p1, v2

    .line 59
    iput p1, p0, Lr3/l;->f:I

    .line 60
    .line 61
    :cond_3
    return-void
.end method

.method public c(JI)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x4

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 p3, 0x1

    .line 7
    iput-boolean p3, p0, Lr3/l;->d:Z

    .line 8
    .line 9
    iput-wide p1, p0, Lr3/l;->g:J

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lr3/l;->f:I

    .line 13
    .line 14
    const/4 p1, 0x2

    .line 15
    iput p1, p0, Lr3/l;->e:I

    .line 16
    .line 17
    return-void
.end method

.method public d(Z)V
    .locals 10

    .line 1
    iget-boolean p1, p0, Lr3/l;->d:Z

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    iget-wide v0, p0, Lr3/l;->g:J

    .line 6
    .line 7
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    cmp-long p1, v0, v2

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move p1, v0

    .line 20
    :goto_0
    invoke-static {p1}, Landroidx/media3/common/util/a;->g(Z)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lr3/l;->c:[Lk2/s0;

    .line 24
    .line 25
    array-length v1, p1

    .line 26
    move v2, v0

    .line 27
    :goto_1
    if-ge v2, v1, :cond_1

    .line 28
    .line 29
    aget-object v3, p1, v2

    .line 30
    .line 31
    iget-wide v4, p0, Lr3/l;->g:J

    .line 32
    .line 33
    iget v7, p0, Lr3/l;->f:I

    .line 34
    .line 35
    const/4 v8, 0x0

    .line 36
    const/4 v9, 0x0

    .line 37
    const/4 v6, 0x1

    .line 38
    invoke-interface/range {v3 .. v9}, Lk2/s0;->b(JIIILk2/s0$a;)V

    .line 39
    .line 40
    .line 41
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    iput-boolean v0, p0, Lr3/l;->d:Z

    .line 45
    .line 46
    :cond_2
    return-void
.end method

.method public e(Lk2/t;Lr3/l0$d;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lr3/l;->c:[Lk2/s0;

    .line 3
    .line 4
    array-length v1, v1

    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lr3/l;->a:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lr3/l0$a;

    .line 14
    .line 15
    invoke-virtual {p2}, Lr3/l0$d;->a()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Lr3/l0$d;->c()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x3

    .line 23
    invoke-interface {p1, v2, v3}, Lk2/t;->track(II)Lk2/s0;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    new-instance v3, Landroidx/media3/common/r$b;

    .line 28
    .line 29
    invoke-direct {v3}, Landroidx/media3/common/r$b;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Lr3/l0$d;->b()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v3, v4}, Landroidx/media3/common/r$b;->f0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    iget-object v4, p0, Lr3/l;->b:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v3, v4}, Landroidx/media3/common/r$b;->U(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    const-string v4, "application/dvbsubs"

    .line 47
    .line 48
    invoke-virtual {v3, v4}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    iget-object v4, v1, Lr3/l0$a;->c:[B

    .line 53
    .line 54
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v3, v4}, Landroidx/media3/common/r$b;->g0(Ljava/util/List;)Landroidx/media3/common/r$b;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    iget-object v1, v1, Lr3/l0$a;->a:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v3, v1}, Landroidx/media3/common/r$b;->j0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-interface {v2, v1}, Lk2/s0;->d(Landroidx/media3/common/r;)V

    .line 73
    .line 74
    .line 75
    iget-object v1, p0, Lr3/l;->c:[Lk2/s0;

    .line 76
    .line 77
    aput-object v2, v1, v0

    .line 78
    .line 79
    add-int/lit8 v0, v0, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    return-void
.end method

.method public seek()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lr3/l;->d:Z

    .line 3
    .line 4
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    iput-wide v0, p0, Lr3/l;->g:J

    .line 10
    .line 11
    return-void
.end method
