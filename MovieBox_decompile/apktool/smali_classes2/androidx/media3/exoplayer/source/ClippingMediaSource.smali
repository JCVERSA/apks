.class public final Landroidx/media3/exoplayer/source/ClippingMediaSource;
.super Landroidx/media3/exoplayer/source/l0;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/ClippingMediaSource$b;,
        Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;,
        Landroidx/media3/exoplayer/source/ClippingMediaSource$c;
    }
.end annotation


# instance fields
.field private final m:J

.field private final n:J

.field private final o:Z

.field private final p:Z

.field private final q:Z

.field private final r:Z

.field private final s:Ljava/util/ArrayList;

.field private final t:Landroidx/media3/common/e0$c;

.field private u:Landroidx/media3/exoplayer/source/ClippingMediaSource$c;

.field private v:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

.field private w:J

.field private x:J


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/source/ClippingMediaSource$b;)V
    .locals 2

    .line 2
    invoke-static {p1}, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->a(Landroidx/media3/exoplayer/source/ClippingMediaSource$b;)Landroidx/media3/exoplayer/source/r;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/l0;-><init>(Landroidx/media3/exoplayer/source/r;)V

    .line 3
    invoke-static {p1}, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->b(Landroidx/media3/exoplayer/source/ClippingMediaSource$b;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->m:J

    .line 4
    invoke-static {p1}, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->c(Landroidx/media3/exoplayer/source/ClippingMediaSource$b;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->n:J

    .line 5
    invoke-static {p1}, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->d(Landroidx/media3/exoplayer/source/ClippingMediaSource$b;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->o:Z

    .line 6
    invoke-static {p1}, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->e(Landroidx/media3/exoplayer/source/ClippingMediaSource$b;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->p:Z

    .line 7
    invoke-static {p1}, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->f(Landroidx/media3/exoplayer/source/ClippingMediaSource$b;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->q:Z

    .line 8
    invoke-static {p1}, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->g(Landroidx/media3/exoplayer/source/ClippingMediaSource$b;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->r:Z

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->s:Ljava/util/ArrayList;

    .line 10
    new-instance p1, Landroidx/media3/common/e0$c;

    invoke-direct {p1}, Landroidx/media3/common/e0$c;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->t:Landroidx/media3/common/e0$c;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/source/ClippingMediaSource$b;Landroidx/media3/exoplayer/source/ClippingMediaSource$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/ClippingMediaSource;-><init>(Landroidx/media3/exoplayer/source/ClippingMediaSource$b;)V

    return-void
.end method

.method private T(Landroidx/media3/common/e0;)V
    .locals 15

    .line 1
    move-object v1, p0

    .line 2
    iget-object v0, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->t:Landroidx/media3/common/e0$c;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    move-object/from16 v4, p1

    .line 6
    .line 7
    invoke-virtual {v4, v2, v0}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    .line 8
    .line 9
    .line 10
    iget-object v0, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->t:Landroidx/media3/common/e0$c;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/media3/common/e0$c;->e()J

    .line 13
    .line 14
    .line 15
    move-result-wide v5

    .line 16
    iget-object v0, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->u:Landroidx/media3/exoplayer/source/ClippingMediaSource$c;

    .line 17
    .line 18
    const-wide/high16 v7, -0x8000000000000000L

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    iget-object v0, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->s:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    iget-boolean v0, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->p:Z

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    iget-wide v9, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->w:J

    .line 36
    .line 37
    sub-long/2addr v9, v5

    .line 38
    iget-wide v11, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->n:J

    .line 39
    .line 40
    cmp-long v0, v11, v7

    .line 41
    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-wide v7, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->x:J

    .line 46
    .line 47
    sub-long/2addr v7, v5

    .line 48
    :goto_0
    move-wide v5, v9

    .line 49
    goto :goto_4

    .line 50
    :cond_2
    :goto_1
    iget-wide v9, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->m:J

    .line 51
    .line 52
    iget-wide v11, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->n:J

    .line 53
    .line 54
    iget-boolean v0, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->q:Z

    .line 55
    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    iget-object v0, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->t:Landroidx/media3/common/e0$c;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroidx/media3/common/e0$c;->c()J

    .line 61
    .line 62
    .line 63
    move-result-wide v13

    .line 64
    add-long/2addr v9, v13

    .line 65
    add-long/2addr v11, v13

    .line 66
    :cond_3
    add-long v13, v5, v9

    .line 67
    .line 68
    iput-wide v13, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->w:J

    .line 69
    .line 70
    iget-wide v13, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->n:J

    .line 71
    .line 72
    cmp-long v0, v13, v7

    .line 73
    .line 74
    if-nez v0, :cond_4

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_4
    add-long v7, v5, v11

    .line 78
    .line 79
    :goto_2
    iput-wide v7, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->x:J

    .line 80
    .line 81
    iget-object v0, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->s:Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    move v3, v2

    .line 88
    :goto_3
    if-ge v3, v0, :cond_5

    .line 89
    .line 90
    iget-object v5, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->s:Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    check-cast v5, Landroidx/media3/exoplayer/source/b;

    .line 97
    .line 98
    iget-wide v6, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->w:J

    .line 99
    .line 100
    iget-wide v13, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->x:J

    .line 101
    .line 102
    invoke-virtual {v5, v6, v7, v13, v14}, Landroidx/media3/exoplayer/source/b;->n(JJ)V

    .line 103
    .line 104
    .line 105
    add-int/lit8 v3, v3, 0x1

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_5
    move-wide v5, v9

    .line 109
    move-wide v7, v11

    .line 110
    :goto_4
    :try_start_0
    new-instance v0, Landroidx/media3/exoplayer/source/ClippingMediaSource$c;

    .line 111
    .line 112
    iget-boolean v9, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->r:Z

    .line 113
    .line 114
    move-object v3, v0

    .line 115
    move-object/from16 v4, p1

    .line 116
    .line 117
    invoke-direct/range {v3 .. v9}, Landroidx/media3/exoplayer/source/ClippingMediaSource$c;-><init>(Landroidx/media3/common/e0;JJZ)V

    .line 118
    .line 119
    .line 120
    iput-object v0, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->u:Landroidx/media3/exoplayer/source/ClippingMediaSource$c;
    :try_end_0
    .catch Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .line 122
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/a;->A(Landroidx/media3/common/e0;)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    iput-object v0, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->v:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    .line 128
    .line 129
    :goto_5
    iget-object v0, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->s:Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-ge v2, v0, :cond_6

    .line 136
    .line 137
    iget-object v0, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->s:Ljava/util/ArrayList;

    .line 138
    .line 139
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    check-cast v0, Landroidx/media3/exoplayer/source/b;

    .line 144
    .line 145
    iget-object v3, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->v:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    .line 146
    .line 147
    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/source/b;->l(Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;)V

    .line 148
    .line 149
    .line 150
    add-int/lit8 v2, v2, 0x1

    .line 151
    .line 152
    goto :goto_5

    .line 153
    :cond_6
    return-void
.end method


# virtual methods
.method protected B()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/media3/exoplayer/source/c;->B()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->v:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    .line 6
    .line 7
    iput-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->u:Landroidx/media3/exoplayer/source/ClippingMediaSource$c;

    .line 8
    .line 9
    return-void
.end method

.method protected P(Landroidx/media3/common/e0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->v:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/ClippingMediaSource;->T(Landroidx/media3/common/e0;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public g(Landroidx/media3/exoplayer/source/r$b;Landroidx/media3/exoplayer/upstream/b;J)Landroidx/media3/exoplayer/source/q;
    .locals 8

    .line 1
    new-instance v7, Landroidx/media3/exoplayer/source/b;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/media3/exoplayer/source/l0;->k:Landroidx/media3/exoplayer/source/r;

    .line 4
    .line 5
    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/r;->g(Landroidx/media3/exoplayer/source/r$b;Landroidx/media3/exoplayer/upstream/b;J)Landroidx/media3/exoplayer/source/q;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-boolean v2, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->o:Z

    .line 10
    .line 11
    iget-wide v3, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->w:J

    .line 12
    .line 13
    iget-wide v5, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->x:J

    .line 14
    .line 15
    move-object v0, v7

    .line 16
    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/source/b;-><init>(Landroidx/media3/exoplayer/source/q;ZJJ)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->s:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    return-object v7
.end method

.method public k(Landroidx/media3/exoplayer/source/q;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->s:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroidx/media3/exoplayer/source/l0;->k:Landroidx/media3/exoplayer/source/r;

    .line 11
    .line 12
    check-cast p1, Landroidx/media3/exoplayer/source/b;

    .line 13
    .line 14
    iget-object p1, p1, Landroidx/media3/exoplayer/source/b;->a:Landroidx/media3/exoplayer/source/q;

    .line 15
    .line 16
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/r;->k(Landroidx/media3/exoplayer/source/q;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->s:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    iget-boolean p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->p:Z

    .line 28
    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    iget-object p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->u:Landroidx/media3/exoplayer/source/ClippingMediaSource$c;

    .line 32
    .line 33
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Landroidx/media3/exoplayer/source/ClippingMediaSource$c;

    .line 38
    .line 39
    iget-object p1, p1, Landroidx/media3/exoplayer/source/m;->e:Landroidx/media3/common/e0;

    .line 40
    .line 41
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/ClippingMediaSource;->T(Landroidx/media3/common/e0;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->v:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Landroidx/media3/exoplayer/source/c;->maybeThrowSourceInfoRefreshError()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    throw v0
.end method

.method public q(Landroidx/media3/common/t;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/l0;->a()Landroidx/media3/common/t;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Landroidx/media3/common/t;->f:Landroidx/media3/common/t$d;

    .line 6
    .line 7
    iget-object v1, p1, Landroidx/media3/common/t;->f:Landroidx/media3/common/t$d;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/media3/common/t$d;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/media3/exoplayer/source/l0;->k:Landroidx/media3/exoplayer/source/r;

    .line 16
    .line 17
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/r;->q(Landroidx/media3/common/t;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    :goto_0
    return p1
.end method
