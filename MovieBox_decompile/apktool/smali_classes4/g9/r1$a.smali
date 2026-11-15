.class final Lg9/r1$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg9/r1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:I

.field private c:J

.field private d:Lcom/google/android/exoplayer2/source/o$b;

.field private e:Z

.field private f:Z

.field final synthetic g:Lg9/r1;


# direct methods
.method public constructor <init>(Lg9/r1;Ljava/lang/String;ILcom/google/android/exoplayer2/source/o$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg9/r1$a;->g:Lg9/r1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lg9/r1$a;->a:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lg9/r1$a;->b:I

    .line 9
    .line 10
    if-nez p4, :cond_0

    .line 11
    .line 12
    const-wide/16 p1, -0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-wide p1, p4, Lv9/j;->d:J

    .line 16
    .line 17
    :goto_0
    iput-wide p1, p0, Lg9/r1$a;->c:J

    .line 18
    .line 19
    if-eqz p4, :cond_1

    .line 20
    .line 21
    invoke-virtual {p4}, Lv9/j;->b()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    iput-object p4, p0, Lg9/r1$a;->d:Lcom/google/android/exoplayer2/source/o$b;

    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method static synthetic a(Lg9/r1$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lg9/r1$a;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lg9/r1$a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lg9/r1$a;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic c(Lg9/r1$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lg9/r1$a;->b:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic d(Lg9/r1$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lg9/r1$a;->e:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic e(Lg9/r1$a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lg9/r1$a;->e:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic f(Lg9/r1$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lg9/r1$a;->f:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic g(Lg9/r1$a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lg9/r1$a;->f:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic h(Lg9/r1$a;)Lcom/google/android/exoplayer2/source/o$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lg9/r1$a;->d:Lcom/google/android/exoplayer2/source/o$b;

    .line 2
    .line 3
    return-object p0
.end method

.method private l(Lcom/google/android/exoplayer2/l3;Lcom/google/android/exoplayer2/l3;I)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/l3;->t()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-lt p3, v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/l3;->t()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-ge p3, p1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move p3, v1

    .line 16
    :goto_0
    return p3

    .line 17
    :cond_1
    iget-object v0, p0, Lg9/r1$a;->g:Lg9/r1;

    .line 18
    .line 19
    invoke-static {v0}, Lg9/r1;->i(Lg9/r1;)Lcom/google/android/exoplayer2/l3$d;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1, p3, v0}, Lcom/google/android/exoplayer2/l3;->r(ILcom/google/android/exoplayer2/l3$d;)Lcom/google/android/exoplayer2/l3$d;

    .line 24
    .line 25
    .line 26
    iget-object p3, p0, Lg9/r1$a;->g:Lg9/r1;

    .line 27
    .line 28
    invoke-static {p3}, Lg9/r1;->i(Lg9/r1;)Lcom/google/android/exoplayer2/l3$d;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    iget p3, p3, Lcom/google/android/exoplayer2/l3$d;->o:I

    .line 33
    .line 34
    :goto_1
    iget-object v0, p0, Lg9/r1$a;->g:Lg9/r1;

    .line 35
    .line 36
    invoke-static {v0}, Lg9/r1;->i(Lg9/r1;)Lcom/google/android/exoplayer2/l3$d;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget v0, v0, Lcom/google/android/exoplayer2/l3$d;->p:I

    .line 41
    .line 42
    if-gt p3, v0, :cond_3

    .line 43
    .line 44
    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/l3;->q(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/l3;->f(Ljava/lang/Object;)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eq v0, v1, :cond_2

    .line 53
    .line 54
    iget-object p1, p0, Lg9/r1$a;->g:Lg9/r1;

    .line 55
    .line 56
    invoke-static {p1}, Lg9/r1;->j(Lg9/r1;)Lcom/google/android/exoplayer2/l3$b;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p2, v0, p1}, Lcom/google/android/exoplayer2/l3;->j(ILcom/google/android/exoplayer2/l3$b;)Lcom/google/android/exoplayer2/l3$b;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iget p1, p1, Lcom/google/android/exoplayer2/l3$b;->c:I

    .line 65
    .line 66
    return p1

    .line 67
    :cond_2
    add-int/lit8 p3, p3, 0x1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    return v1
.end method


# virtual methods
.method public i(ILcom/google/android/exoplayer2/source/o$b;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-nez p2, :cond_1

    .line 4
    .line 5
    iget p2, p0, Lg9/r1$a;->b:I

    .line 6
    .line 7
    if-ne p1, p2, :cond_0

    .line 8
    .line 9
    move v0, v1

    .line 10
    :cond_0
    return v0

    .line 11
    :cond_1
    iget-object p1, p0, Lg9/r1$a;->d:Lcom/google/android/exoplayer2/source/o$b;

    .line 12
    .line 13
    if-nez p1, :cond_3

    .line 14
    .line 15
    invoke-virtual {p2}, Lv9/j;->b()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_2

    .line 20
    .line 21
    iget-wide p1, p2, Lv9/j;->d:J

    .line 22
    .line 23
    iget-wide v2, p0, Lg9/r1$a;->c:J

    .line 24
    .line 25
    cmp-long p1, p1, v2

    .line 26
    .line 27
    if-nez p1, :cond_2

    .line 28
    .line 29
    move v0, v1

    .line 30
    :cond_2
    return v0

    .line 31
    :cond_3
    iget-wide v2, p2, Lv9/j;->d:J

    .line 32
    .line 33
    iget-wide v4, p1, Lv9/j;->d:J

    .line 34
    .line 35
    cmp-long v2, v2, v4

    .line 36
    .line 37
    if-nez v2, :cond_4

    .line 38
    .line 39
    iget v2, p2, Lv9/j;->b:I

    .line 40
    .line 41
    iget v3, p1, Lv9/j;->b:I

    .line 42
    .line 43
    if-ne v2, v3, :cond_4

    .line 44
    .line 45
    iget p2, p2, Lv9/j;->c:I

    .line 46
    .line 47
    iget p1, p1, Lv9/j;->c:I

    .line 48
    .line 49
    if-ne p2, p1, :cond_4

    .line 50
    .line 51
    move v0, v1

    .line 52
    :cond_4
    return v0
.end method

.method public j(Lg9/c$a;)Z
    .locals 9

    .line 1
    iget-wide v0, p0, Lg9/r1$a;->c:J

    .line 2
    .line 3
    const-wide/16 v2, -0x1

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    return v3

    .line 11
    :cond_0
    iget-object v2, p1, Lg9/c$a;->d:Lcom/google/android/exoplayer2/source/o$b;

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    if-nez v2, :cond_2

    .line 15
    .line 16
    iget v0, p0, Lg9/r1$a;->b:I

    .line 17
    .line 18
    iget p1, p1, Lg9/c$a;->c:I

    .line 19
    .line 20
    if-eq v0, p1, :cond_1

    .line 21
    .line 22
    move v3, v4

    .line 23
    :cond_1
    return v3

    .line 24
    :cond_2
    iget-wide v5, v2, Lv9/j;->d:J

    .line 25
    .line 26
    cmp-long v0, v5, v0

    .line 27
    .line 28
    if-lez v0, :cond_3

    .line 29
    .line 30
    return v4

    .line 31
    :cond_3
    iget-object v0, p0, Lg9/r1$a;->d:Lcom/google/android/exoplayer2/source/o$b;

    .line 32
    .line 33
    if-nez v0, :cond_4

    .line 34
    .line 35
    return v3

    .line 36
    :cond_4
    iget-object v0, p1, Lg9/c$a;->b:Lcom/google/android/exoplayer2/l3;

    .line 37
    .line 38
    iget-object v1, v2, Lv9/j;->a:Ljava/lang/Object;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/l3;->f(Ljava/lang/Object;)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iget-object v1, p1, Lg9/c$a;->b:Lcom/google/android/exoplayer2/l3;

    .line 45
    .line 46
    iget-object v2, p0, Lg9/r1$a;->d:Lcom/google/android/exoplayer2/source/o$b;

    .line 47
    .line 48
    iget-object v2, v2, Lv9/j;->a:Ljava/lang/Object;

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/l3;->f(Ljava/lang/Object;)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    iget-object v2, p1, Lg9/c$a;->d:Lcom/google/android/exoplayer2/source/o$b;

    .line 55
    .line 56
    iget-wide v5, v2, Lv9/j;->d:J

    .line 57
    .line 58
    iget-object v7, p0, Lg9/r1$a;->d:Lcom/google/android/exoplayer2/source/o$b;

    .line 59
    .line 60
    iget-wide v7, v7, Lv9/j;->d:J

    .line 61
    .line 62
    cmp-long v5, v5, v7

    .line 63
    .line 64
    if-ltz v5, :cond_b

    .line 65
    .line 66
    if-ge v0, v1, :cond_5

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_5
    if-le v0, v1, :cond_6

    .line 70
    .line 71
    return v4

    .line 72
    :cond_6
    invoke-virtual {v2}, Lv9/j;->b()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_9

    .line 77
    .line 78
    iget-object p1, p1, Lg9/c$a;->d:Lcom/google/android/exoplayer2/source/o$b;

    .line 79
    .line 80
    iget v0, p1, Lv9/j;->b:I

    .line 81
    .line 82
    iget p1, p1, Lv9/j;->c:I

    .line 83
    .line 84
    iget-object v1, p0, Lg9/r1$a;->d:Lcom/google/android/exoplayer2/source/o$b;

    .line 85
    .line 86
    iget v2, v1, Lv9/j;->b:I

    .line 87
    .line 88
    if-gt v0, v2, :cond_7

    .line 89
    .line 90
    if-ne v0, v2, :cond_8

    .line 91
    .line 92
    iget v0, v1, Lv9/j;->c:I

    .line 93
    .line 94
    if-le p1, v0, :cond_8

    .line 95
    .line 96
    :cond_7
    move v3, v4

    .line 97
    :cond_8
    return v3

    .line 98
    :cond_9
    iget-object p1, p1, Lg9/c$a;->d:Lcom/google/android/exoplayer2/source/o$b;

    .line 99
    .line 100
    iget p1, p1, Lv9/j;->e:I

    .line 101
    .line 102
    const/4 v0, -0x1

    .line 103
    if-eq p1, v0, :cond_a

    .line 104
    .line 105
    iget-object v0, p0, Lg9/r1$a;->d:Lcom/google/android/exoplayer2/source/o$b;

    .line 106
    .line 107
    iget v0, v0, Lv9/j;->b:I

    .line 108
    .line 109
    if-le p1, v0, :cond_b

    .line 110
    .line 111
    :cond_a
    move v3, v4

    .line 112
    :cond_b
    :goto_0
    return v3
.end method

.method public k(ILcom/google/android/exoplayer2/source/o$b;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lg9/r1$a;->c:J

    .line 2
    .line 3
    const-wide/16 v2, -0x1

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Lg9/r1$a;->b:I

    .line 10
    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    iget-wide p1, p2, Lv9/j;->d:J

    .line 16
    .line 17
    iput-wide p1, p0, Lg9/r1$a;->c:J

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public m(Lcom/google/android/exoplayer2/l3;Lcom/google/android/exoplayer2/l3;)Z
    .locals 3

    .line 1
    iget v0, p0, Lg9/r1$a;->b:I

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, v0}, Lg9/r1$a;->l(Lcom/google/android/exoplayer2/l3;Lcom/google/android/exoplayer2/l3;I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iput p1, p0, Lg9/r1$a;->b:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    const/4 v1, -0x1

    .line 11
    if-ne p1, v1, :cond_0

    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    iget-object p1, p0, Lg9/r1$a;->d:Lcom/google/android/exoplayer2/source/o$b;

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    return v2

    .line 20
    :cond_1
    iget-object p1, p1, Lv9/j;->a:Ljava/lang/Object;

    .line 21
    .line 22
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/l3;->f(Ljava/lang/Object;)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eq p1, v1, :cond_2

    .line 27
    .line 28
    move v0, v2

    .line 29
    :cond_2
    return v0
.end method
