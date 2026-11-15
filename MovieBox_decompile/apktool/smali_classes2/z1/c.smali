.class public Lz1/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/media3/exoplayer/offline/q;


# instance fields
.field public final a:J

.field public final b:J

.field public final c:J

.field public final d:Z

.field public final e:J

.field public final f:J

.field public final g:J

.field public final h:J

.field public final i:Lz1/o;

.field public final j:Lz1/l;

.field public final k:Landroid/net/Uri;

.field public final l:Lz1/h;

.field private final m:Ljava/util/List;


# direct methods
.method public constructor <init>(JJJZJJJJLz1/h;Lz1/o;Lz1/l;Landroid/net/Uri;Ljava/util/List;)V
    .locals 3

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    move-wide v1, p1

    .line 6
    iput-wide v1, v0, Lz1/c;->a:J

    .line 7
    .line 8
    move-wide v1, p3

    .line 9
    iput-wide v1, v0, Lz1/c;->b:J

    .line 10
    .line 11
    move-wide v1, p5

    .line 12
    iput-wide v1, v0, Lz1/c;->c:J

    .line 13
    .line 14
    move v1, p7

    .line 15
    iput-boolean v1, v0, Lz1/c;->d:Z

    .line 16
    .line 17
    move-wide v1, p8

    .line 18
    iput-wide v1, v0, Lz1/c;->e:J

    .line 19
    .line 20
    move-wide v1, p10

    .line 21
    iput-wide v1, v0, Lz1/c;->f:J

    .line 22
    .line 23
    move-wide v1, p12

    .line 24
    iput-wide v1, v0, Lz1/c;->g:J

    .line 25
    .line 26
    move-wide/from16 v1, p14

    .line 27
    .line 28
    iput-wide v1, v0, Lz1/c;->h:J

    .line 29
    .line 30
    move-object/from16 v1, p16

    .line 31
    .line 32
    iput-object v1, v0, Lz1/c;->l:Lz1/h;

    .line 33
    .line 34
    move-object/from16 v1, p17

    .line 35
    .line 36
    iput-object v1, v0, Lz1/c;->i:Lz1/o;

    .line 37
    .line 38
    move-object/from16 v1, p19

    .line 39
    .line 40
    iput-object v1, v0, Lz1/c;->k:Landroid/net/Uri;

    .line 41
    .line 42
    move-object/from16 v1, p18

    .line 43
    .line 44
    iput-object v1, v0, Lz1/c;->j:Lz1/l;

    .line 45
    .line 46
    if-nez p20, :cond_0

    .line 47
    .line 48
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    move-object/from16 v1, p20

    .line 54
    .line 55
    :goto_0
    iput-object v1, v0, Lz1/c;->m:Ljava/util/List;

    .line 56
    .line 57
    return-void
.end method

.method private static b(Ljava/util/List;Ljava/util/LinkedList;)Ljava/util/ArrayList;
    .locals 14

    .line 1
    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/media3/common/StreamKey;

    .line 6
    .line 7
    iget v1, v0, Landroidx/media3/common/StreamKey;->periodIndex:I

    .line 8
    .line 9
    new-instance v2, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget v3, v0, Landroidx/media3/common/StreamKey;->groupIndex:I

    .line 15
    .line 16
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    check-cast v4, Lz1/a;

    .line 21
    .line 22
    iget-object v5, v4, Lz1/a;->c:Ljava/util/List;

    .line 23
    .line 24
    new-instance v10, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget v0, v0, Landroidx/media3/common/StreamKey;->streamIndex:I

    .line 30
    .line 31
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lz1/j;

    .line 36
    .line 37
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Landroidx/media3/common/StreamKey;

    .line 45
    .line 46
    iget v6, v0, Landroidx/media3/common/StreamKey;->periodIndex:I

    .line 47
    .line 48
    if-ne v6, v1, :cond_2

    .line 49
    .line 50
    iget v6, v0, Landroidx/media3/common/StreamKey;->groupIndex:I

    .line 51
    .line 52
    if-eq v6, v3, :cond_1

    .line 53
    .line 54
    :cond_2
    new-instance v3, Lz1/a;

    .line 55
    .line 56
    iget-wide v7, v4, Lz1/a;->a:J

    .line 57
    .line 58
    iget v9, v4, Lz1/a;->b:I

    .line 59
    .line 60
    iget-object v11, v4, Lz1/a;->d:Ljava/util/List;

    .line 61
    .line 62
    iget-object v12, v4, Lz1/a;->e:Ljava/util/List;

    .line 63
    .line 64
    iget-object v13, v4, Lz1/a;->f:Ljava/util/List;

    .line 65
    .line 66
    move-object v6, v3

    .line 67
    invoke-direct/range {v6 .. v13}, Lz1/a;-><init>(JILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    iget v3, v0, Landroidx/media3/common/StreamKey;->periodIndex:I

    .line 74
    .line 75
    if-eq v3, v1, :cond_0

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    return-object v2
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lz1/c;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/util/LinkedList;

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 11
    .line 12
    .line 13
    new-instance v2, Landroidx/media3/common/StreamKey;

    .line 14
    .line 15
    const/4 v3, -0x1

    .line 16
    invoke-direct {v2, v3, v3, v3}, Landroidx/media3/common/StreamKey;-><init>(III)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    new-instance v2, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    const-wide/16 v3, 0x0

    .line 28
    .line 29
    const/4 v5, 0x0

    .line 30
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lz1/c;->d()I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    if-ge v5, v6, :cond_2

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    check-cast v6, Landroidx/media3/common/StreamKey;

    .line 46
    .line 47
    iget v6, v6, Landroidx/media3/common/StreamKey;->periodIndex:I

    .line 48
    .line 49
    if-eq v6, v5, :cond_0

    .line 50
    .line 51
    invoke-virtual {v0, v5}, Lz1/c;->e(I)J

    .line 52
    .line 53
    .line 54
    move-result-wide v9

    .line 55
    cmp-long v6, v9, v7

    .line 56
    .line 57
    if-eqz v6, :cond_1

    .line 58
    .line 59
    add-long/2addr v3, v9

    .line 60
    goto :goto_1

    .line 61
    :cond_0
    invoke-virtual {v0, v5}, Lz1/c;->c(I)Lz1/g;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    iget-object v7, v6, Lz1/g;->c:Ljava/util/List;

    .line 66
    .line 67
    invoke-static {v7, v1}, Lz1/c;->b(Ljava/util/List;Ljava/util/LinkedList;)Ljava/util/ArrayList;

    .line 68
    .line 69
    .line 70
    move-result-object v12

    .line 71
    new-instance v7, Lz1/g;

    .line 72
    .line 73
    iget-object v9, v6, Lz1/g;->a:Ljava/lang/String;

    .line 74
    .line 75
    iget-wide v10, v6, Lz1/g;->b:J

    .line 76
    .line 77
    sub-long/2addr v10, v3

    .line 78
    iget-object v13, v6, Lz1/g;->d:Ljava/util/List;

    .line 79
    .line 80
    move-object v8, v7

    .line 81
    invoke-direct/range {v8 .. v13}, Lz1/g;-><init>(Ljava/lang/String;JLjava/util/List;Ljava/util/List;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    iget-wide v5, v0, Lz1/c;->b:J

    .line 91
    .line 92
    cmp-long v1, v5, v7

    .line 93
    .line 94
    if-eqz v1, :cond_3

    .line 95
    .line 96
    sub-long/2addr v5, v3

    .line 97
    move-wide v7, v5

    .line 98
    :cond_3
    new-instance v1, Lz1/c;

    .line 99
    .line 100
    move-object v4, v1

    .line 101
    iget-wide v5, v0, Lz1/c;->a:J

    .line 102
    .line 103
    iget-wide v9, v0, Lz1/c;->c:J

    .line 104
    .line 105
    iget-boolean v11, v0, Lz1/c;->d:Z

    .line 106
    .line 107
    iget-wide v12, v0, Lz1/c;->e:J

    .line 108
    .line 109
    iget-wide v14, v0, Lz1/c;->f:J

    .line 110
    .line 111
    move-object/from16 p1, v4

    .line 112
    .line 113
    iget-wide v3, v0, Lz1/c;->g:J

    .line 114
    .line 115
    move-wide/from16 v16, v3

    .line 116
    .line 117
    iget-wide v3, v0, Lz1/c;->h:J

    .line 118
    .line 119
    move-wide/from16 v18, v3

    .line 120
    .line 121
    iget-object v3, v0, Lz1/c;->l:Lz1/h;

    .line 122
    .line 123
    move-object/from16 v20, v3

    .line 124
    .line 125
    iget-object v3, v0, Lz1/c;->i:Lz1/o;

    .line 126
    .line 127
    move-object/from16 v21, v3

    .line 128
    .line 129
    iget-object v3, v0, Lz1/c;->j:Lz1/l;

    .line 130
    .line 131
    move-object/from16 v22, v3

    .line 132
    .line 133
    iget-object v3, v0, Lz1/c;->k:Landroid/net/Uri;

    .line 134
    .line 135
    move-object/from16 v23, v3

    .line 136
    .line 137
    move-object/from16 v24, v2

    .line 138
    .line 139
    move-object/from16 v4, p1

    .line 140
    .line 141
    invoke-direct/range {v4 .. v24}, Lz1/c;-><init>(JJJZJJJJLz1/h;Lz1/o;Lz1/l;Landroid/net/Uri;Ljava/util/List;)V

    .line 142
    .line 143
    .line 144
    return-object v1
.end method

.method public final c(I)Lz1/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lz1/c;->m:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lz1/g;

    .line 8
    .line 9
    return-object p1
.end method

.method public bridge synthetic copy(Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lz1/c;->a(Ljava/util/List;)Lz1/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lz1/c;->m:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final e(I)J
    .locals 5

    .line 1
    iget-object v0, p0, Lz1/c;->m:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    if-ne p1, v0, :cond_1

    .line 10
    .line 11
    iget-wide v0, p0, Lz1/c;->b:J

    .line 12
    .line 13
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    cmp-long v4, v0, v2

    .line 19
    .line 20
    if-nez v4, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    iget-object v2, p0, Lz1/c;->m:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lz1/g;

    .line 30
    .line 31
    iget-wide v2, p1, Lz1/g;->b:J

    .line 32
    .line 33
    :goto_0
    sub-long v2, v0, v2

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    iget-object v0, p0, Lz1/c;->m:Ljava/util/List;

    .line 37
    .line 38
    add-int/lit8 v1, p1, 0x1

    .line 39
    .line 40
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Lz1/g;

    .line 45
    .line 46
    iget-wide v0, v0, Lz1/g;->b:J

    .line 47
    .line 48
    iget-object v2, p0, Lz1/c;->m:Ljava/util/List;

    .line 49
    .line 50
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Lz1/g;

    .line 55
    .line 56
    iget-wide v2, p1, Lz1/g;->b:J

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :goto_1
    return-wide v2
.end method

.method public final f(I)J
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lz1/c;->e(I)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Landroidx/media3/common/util/a1;->R0(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method
