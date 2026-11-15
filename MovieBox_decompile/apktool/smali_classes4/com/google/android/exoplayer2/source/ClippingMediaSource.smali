.class public final Lcom/google/android/exoplayer2/source/ClippingMediaSource;
.super Lcom/google/android/exoplayer2/source/c;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/ClippingMediaSource$a;,
        Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;
    }
.end annotation


# instance fields
.field private final k:Lcom/google/android/exoplayer2/source/o;

.field private final l:J

.field private final m:J

.field private final n:Z

.field private final o:Z

.field private final p:Z

.field private final q:Ljava/util/ArrayList;

.field private final r:Lcom/google/android/exoplayer2/l3$d;

.field private s:Lcom/google/android/exoplayer2/source/ClippingMediaSource$a;

.field private t:Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

.field private u:J

.field private v:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/o;JJZZZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/c;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    cmp-long v0, p2, v0

    .line 7
    .line 8
    if-ltz v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/google/android/exoplayer2/source/o;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->k:Lcom/google/android/exoplayer2/source/o;

    .line 23
    .line 24
    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->l:J

    .line 25
    .line 26
    iput-wide p4, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->m:J

    .line 27
    .line 28
    iput-boolean p6, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->n:Z

    .line 29
    .line 30
    iput-boolean p7, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->o:Z

    .line 31
    .line 32
    iput-boolean p8, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->p:Z

    .line 33
    .line 34
    new-instance p1, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->q:Ljava/util/ArrayList;

    .line 40
    .line 41
    new-instance p1, Lcom/google/android/exoplayer2/l3$d;

    .line 42
    .line 43
    invoke-direct {p1}, Lcom/google/android/exoplayer2/l3$d;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->r:Lcom/google/android/exoplayer2/l3$d;

    .line 47
    .line 48
    return-void
.end method

.method private M(Lcom/google/android/exoplayer2/l3;)V
    .locals 15

    .line 1
    move-object v1, p0

    .line 2
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->r:Lcom/google/android/exoplayer2/l3$d;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    move-object/from16 v4, p1

    .line 6
    .line 7
    invoke-virtual {v4, v2, v0}, Lcom/google/android/exoplayer2/l3;->r(ILcom/google/android/exoplayer2/l3$d;)Lcom/google/android/exoplayer2/l3$d;

    .line 8
    .line 9
    .line 10
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->r:Lcom/google/android/exoplayer2/l3$d;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/l3$d;->h()J

    .line 13
    .line 14
    .line 15
    move-result-wide v5

    .line 16
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->s:Lcom/google/android/exoplayer2/source/ClippingMediaSource$a;

    .line 17
    .line 18
    const-wide/high16 v7, -0x8000000000000000L

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->q:Ljava/util/ArrayList;

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
    iget-boolean v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->o:Z

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    iget-wide v9, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->u:J

    .line 36
    .line 37
    sub-long/2addr v9, v5

    .line 38
    iget-wide v11, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->m:J

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
    iget-wide v7, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->v:J

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
    iget-wide v9, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->l:J

    .line 51
    .line 52
    iget-wide v11, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->m:J

    .line 53
    .line 54
    iget-boolean v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->p:Z

    .line 55
    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->r:Lcom/google/android/exoplayer2/l3$d;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/l3$d;->f()J

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
    iput-wide v13, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->u:J

    .line 69
    .line 70
    iget-wide v13, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->m:J

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
    iput-wide v7, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->v:J

    .line 80
    .line 81
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->q:Ljava/util/ArrayList;

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
    iget-object v5, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->q:Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    check-cast v5, Lcom/google/android/exoplayer2/source/b;

    .line 97
    .line 98
    iget-wide v6, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->u:J

    .line 99
    .line 100
    iget-wide v13, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->v:J

    .line 101
    .line 102
    invoke-virtual {v5, v6, v7, v13, v14}, Lcom/google/android/exoplayer2/source/b;->l(JJ)V

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
    new-instance v0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$a;

    .line 111
    .line 112
    move-object v3, v0

    .line 113
    move-object/from16 v4, p1

    .line 114
    .line 115
    invoke-direct/range {v3 .. v8}, Lcom/google/android/exoplayer2/source/ClippingMediaSource$a;-><init>(Lcom/google/android/exoplayer2/l3;JJ)V

    .line 116
    .line 117
    .line 118
    iput-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->s:Lcom/google/android/exoplayer2/source/ClippingMediaSource$a;
    :try_end_0
    .catch Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .line 120
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/a;->C(Lcom/google/android/exoplayer2/l3;)V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    iput-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->t:Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

    .line 126
    .line 127
    :goto_5
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->q:Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-ge v2, v0, :cond_6

    .line 134
    .line 135
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->q:Ljava/util/ArrayList;

    .line 136
    .line 137
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    check-cast v0, Lcom/google/android/exoplayer2/source/b;

    .line 142
    .line 143
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->t:Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

    .line 144
    .line 145
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/source/b;->j(Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;)V

    .line 146
    .line 147
    .line 148
    add-int/lit8 v2, v2, 0x1

    .line 149
    .line 150
    goto :goto_5

    .line 151
    :cond_6
    return-void
.end method


# virtual methods
.method protected B(Lcom/google/android/exoplayer2/upstream/k0;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/source/c;->B(Lcom/google/android/exoplayer2/upstream/k0;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->k:Lcom/google/android/exoplayer2/source/o;

    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/source/c;->K(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/o;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method protected D()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/exoplayer2/source/c;->D()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->t:Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->s:Lcom/google/android/exoplayer2/source/ClippingMediaSource$a;

    .line 8
    .line 9
    return-void
.end method

.method protected bridge synthetic J(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/l3;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->L(Ljava/lang/Void;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/l3;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected L(Ljava/lang/Void;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/l3;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->t:Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->M(Lcom/google/android/exoplayer2/l3;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public a()Lcom/google/android/exoplayer2/w1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->k:Lcom/google/android/exoplayer2/source/o;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/o;->a()Lcom/google/android/exoplayer2/w1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public d(Lcom/google/android/exoplayer2/source/o$b;Lcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/n;
    .locals 8

    .line 1
    new-instance v7, Lcom/google/android/exoplayer2/source/b;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->k:Lcom/google/android/exoplayer2/source/o;

    .line 4
    .line 5
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/o;->d(Lcom/google/android/exoplayer2/source/o$b;Lcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/n;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->n:Z

    .line 10
    .line 11
    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->u:J

    .line 12
    .line 13
    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->v:J

    .line 14
    .line 15
    move-object v0, v7

    .line 16
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/b;-><init>(Lcom/google/android/exoplayer2/source/n;ZJJ)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->q:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    return-object v7
.end method

.method public i(Lcom/google/android/exoplayer2/source/n;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->q:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->k:Lcom/google/android/exoplayer2/source/o;

    .line 11
    .line 12
    check-cast p1, Lcom/google/android/exoplayer2/source/b;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/b;->a:Lcom/google/android/exoplayer2/source/n;

    .line 15
    .line 16
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/o;->i(Lcom/google/android/exoplayer2/source/n;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->q:Ljava/util/ArrayList;

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
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->o:Z

    .line 28
    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->s:Lcom/google/android/exoplayer2/source/ClippingMediaSource$a;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lcom/google/android/exoplayer2/source/ClippingMediaSource$a;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/j;->c:Lcom/google/android/exoplayer2/l3;

    .line 40
    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->M(Lcom/google/android/exoplayer2/l3;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->t:Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Lcom/google/android/exoplayer2/source/c;->maybeThrowSourceInfoRefreshError()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    throw v0
.end method
