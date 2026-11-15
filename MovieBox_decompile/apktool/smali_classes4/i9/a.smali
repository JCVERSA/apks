.class public abstract Li9/a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li9/a$a;,
        Li9/a$e;,
        Li9/a$c;,
        Li9/a$d;,
        Li9/a$b;,
        Li9/a$f;
    }
.end annotation


# instance fields
.field protected final a:Li9/a$a;

.field protected final b:Li9/a$f;

.field protected c:Li9/a$c;

.field private final d:I


# direct methods
.method protected constructor <init>(Li9/a$d;Li9/a$f;JJJJJJI)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    move-object/from16 v1, p2

    .line 7
    .line 8
    iput-object v1, v0, Li9/a;->b:Li9/a$f;

    .line 9
    .line 10
    move/from16 v1, p15

    .line 11
    .line 12
    iput v1, v0, Li9/a;->d:I

    .line 13
    .line 14
    new-instance v15, Li9/a$a;

    .line 15
    .line 16
    move-object v1, v15

    .line 17
    move-object/from16 v2, p1

    .line 18
    .line 19
    move-wide/from16 v3, p3

    .line 20
    .line 21
    move-wide/from16 v5, p5

    .line 22
    .line 23
    move-wide/from16 v7, p7

    .line 24
    .line 25
    move-wide/from16 v9, p9

    .line 26
    .line 27
    move-wide/from16 v11, p11

    .line 28
    .line 29
    move-wide/from16 v13, p13

    .line 30
    .line 31
    invoke-direct/range {v1 .. v14}, Li9/a$a;-><init>(Li9/a$d;JJJJJJ)V

    .line 32
    .line 33
    .line 34
    iput-object v15, v0, Li9/a;->a:Li9/a$a;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method protected a(J)Li9/a$c;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v16, Li9/a$c;

    .line 4
    .line 5
    iget-object v1, v0, Li9/a;->a:Li9/a$a;

    .line 6
    .line 7
    move-wide/from16 v2, p1

    .line 8
    .line 9
    invoke-virtual {v1, v2, v3}, Li9/a$a;->g(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v4

    .line 13
    iget-object v1, v0, Li9/a;->a:Li9/a$a;

    .line 14
    .line 15
    invoke-static {v1}, Li9/a$a;->b(Li9/a$a;)J

    .line 16
    .line 17
    .line 18
    move-result-wide v6

    .line 19
    iget-object v1, v0, Li9/a;->a:Li9/a$a;

    .line 20
    .line 21
    invoke-static {v1}, Li9/a$a;->c(Li9/a$a;)J

    .line 22
    .line 23
    .line 24
    move-result-wide v8

    .line 25
    iget-object v1, v0, Li9/a;->a:Li9/a$a;

    .line 26
    .line 27
    invoke-static {v1}, Li9/a$a;->d(Li9/a$a;)J

    .line 28
    .line 29
    .line 30
    move-result-wide v10

    .line 31
    iget-object v1, v0, Li9/a;->a:Li9/a$a;

    .line 32
    .line 33
    invoke-static {v1}, Li9/a$a;->e(Li9/a$a;)J

    .line 34
    .line 35
    .line 36
    move-result-wide v12

    .line 37
    iget-object v1, v0, Li9/a;->a:Li9/a$a;

    .line 38
    .line 39
    invoke-static {v1}, Li9/a$a;->f(Li9/a$a;)J

    .line 40
    .line 41
    .line 42
    move-result-wide v14

    .line 43
    move-object/from16 v1, v16

    .line 44
    .line 45
    invoke-direct/range {v1 .. v15}, Li9/a$c;-><init>(JJJJJJJ)V

    .line 46
    .line 47
    .line 48
    return-object v16
.end method

.method public final b()Li9/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Li9/a;->a:Li9/a$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public c(Li9/m;Li9/a0;)I
    .locals 9

    .line 1
    :goto_0
    iget-object v0, p0, Li9/a;->c:Li9/a$c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Li9/a$c;

    .line 8
    .line 9
    invoke-static {v0}, Li9/a$c;->b(Li9/a$c;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    invoke-static {v0}, Li9/a$c;->c(Li9/a$c;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    invoke-static {v0}, Li9/a$c;->d(Li9/a$c;)J

    .line 18
    .line 19
    .line 20
    move-result-wide v5

    .line 21
    sub-long/2addr v3, v1

    .line 22
    iget v7, p0, Li9/a;->d:I

    .line 23
    .line 24
    int-to-long v7, v7

    .line 25
    cmp-long v3, v3, v7

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    if-gtz v3, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0, v4, v1, v2}, Li9/a;->e(ZJ)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1, v1, v2, p2}, Li9/a;->g(Li9/m;JLi9/a0;)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    return p1

    .line 38
    :cond_0
    invoke-virtual {p0, p1, v5, v6}, Li9/a;->i(Li9/m;J)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_1

    .line 43
    .line 44
    invoke-virtual {p0, p1, v5, v6, p2}, Li9/a;->g(Li9/m;JLi9/a0;)I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    return p1

    .line 49
    :cond_1
    invoke-interface {p1}, Li9/m;->resetPeekPosition()V

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Li9/a;->b:Li9/a$f;

    .line 53
    .line 54
    invoke-static {v0}, Li9/a$c;->e(Li9/a$c;)J

    .line 55
    .line 56
    .line 57
    move-result-wide v2

    .line 58
    invoke-interface {v1, p1, v2, v3}, Li9/a$f;->b(Li9/m;J)Li9/a$e;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-static {v1}, Li9/a$e;->a(Li9/a$e;)I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    const/4 v3, -0x3

    .line 67
    if-eq v2, v3, :cond_5

    .line 68
    .line 69
    const/4 v3, -0x2

    .line 70
    if-eq v2, v3, :cond_4

    .line 71
    .line 72
    const/4 v3, -0x1

    .line 73
    if-eq v2, v3, :cond_3

    .line 74
    .line 75
    if-nez v2, :cond_2

    .line 76
    .line 77
    invoke-static {v1}, Li9/a$e;->c(Li9/a$e;)J

    .line 78
    .line 79
    .line 80
    move-result-wide v2

    .line 81
    invoke-virtual {p0, p1, v2, v3}, Li9/a;->i(Li9/m;J)Z

    .line 82
    .line 83
    .line 84
    const/4 v0, 0x1

    .line 85
    invoke-static {v1}, Li9/a$e;->c(Li9/a$e;)J

    .line 86
    .line 87
    .line 88
    move-result-wide v2

    .line 89
    invoke-virtual {p0, v0, v2, v3}, Li9/a;->e(ZJ)V

    .line 90
    .line 91
    .line 92
    invoke-static {v1}, Li9/a$e;->c(Li9/a$e;)J

    .line 93
    .line 94
    .line 95
    move-result-wide v0

    .line 96
    invoke-virtual {p0, p1, v0, v1, p2}, Li9/a;->g(Li9/m;JLi9/a0;)I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    return p1

    .line 101
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 102
    .line 103
    const-string p2, "Invalid case"

    .line 104
    .line 105
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw p1

    .line 109
    :cond_3
    invoke-static {v1}, Li9/a$e;->b(Li9/a$e;)J

    .line 110
    .line 111
    .line 112
    move-result-wide v2

    .line 113
    invoke-static {v1}, Li9/a$e;->c(Li9/a$e;)J

    .line 114
    .line 115
    .line 116
    move-result-wide v4

    .line 117
    invoke-static {v0, v2, v3, v4, v5}, Li9/a$c;->f(Li9/a$c;JJ)V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_4
    invoke-static {v1}, Li9/a$e;->b(Li9/a$e;)J

    .line 122
    .line 123
    .line 124
    move-result-wide v2

    .line 125
    invoke-static {v1}, Li9/a$e;->c(Li9/a$e;)J

    .line 126
    .line 127
    .line 128
    move-result-wide v4

    .line 129
    invoke-static {v0, v2, v3, v4, v5}, Li9/a$c;->g(Li9/a$c;JJ)V

    .line 130
    .line 131
    .line 132
    goto/16 :goto_0

    .line 133
    .line 134
    :cond_5
    invoke-virtual {p0, v4, v5, v6}, Li9/a;->e(ZJ)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, p1, v5, v6, p2}, Li9/a;->g(Li9/m;JLi9/a0;)I

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    return p1
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li9/a;->c:Li9/a$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method protected final e(ZJ)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Li9/a;->c:Li9/a$c;

    .line 3
    .line 4
    iget-object v0, p0, Li9/a;->b:Li9/a$f;

    .line 5
    .line 6
    invoke-interface {v0}, Li9/a$f;->a()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, p2, p3}, Li9/a;->f(ZJ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method protected f(ZJ)V
    .locals 0

    .line 1
    return-void
.end method

.method protected final g(Li9/m;JLi9/a0;)I
    .locals 2

    .line 1
    invoke-interface {p1}, Li9/m;->getPosition()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    cmp-long p1, p2, v0

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_0
    iput-wide p2, p4, Li9/a0;->a:J

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1
.end method

.method public final h(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Li9/a;->c:Li9/a$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Li9/a$c;->a(Li9/a$c;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    cmp-long v0, v0, p1

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p0, p1, p2}, Li9/a;->a(J)Li9/a$c;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Li9/a;->c:Li9/a$c;

    .line 19
    .line 20
    return-void
.end method

.method protected final i(Li9/m;J)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Li9/m;->getPosition()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sub-long/2addr p2, v0

    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long v0, p2, v0

    .line 9
    .line 10
    if-ltz v0, :cond_0

    .line 11
    .line 12
    const-wide/32 v0, 0x40000

    .line 13
    .line 14
    .line 15
    cmp-long v0, p2, v0

    .line 16
    .line 17
    if-gtz v0, :cond_0

    .line 18
    .line 19
    long-to-int p2, p2

    .line 20
    invoke-interface {p1, p2}, Li9/m;->skipFully(I)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    return p1

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    return p1
.end method
