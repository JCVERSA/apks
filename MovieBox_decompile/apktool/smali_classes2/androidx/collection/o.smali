.class public abstract Landroidx/collection/o;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field public a:[J

.field public b:[I

.field public c:[Ljava/lang/Object;

.field public d:I

.field public e:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Landroidx/collection/v0;->a:[J

    iput-object v0, p0, Landroidx/collection/o;->a:[J

    .line 4
    invoke-static {}, Landroidx/collection/r;->a()[I

    move-result-object v0

    iput-object v0, p0, Landroidx/collection/o;->b:[I

    .line 5
    sget-object v0, Ln/a;->c:[Ljava/lang/Object;

    iput-object v0, p0, Landroidx/collection/o;->c:[Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/collection/o;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    const v2, -0x3361d2af    # -8.2930312E7f

    .line 6
    .line 7
    .line 8
    mul-int/2addr v2, v1

    .line 9
    shl-int/lit8 v3, v2, 0x10

    .line 10
    .line 11
    xor-int/2addr v2, v3

    .line 12
    and-int/lit8 v3, v2, 0x7f

    .line 13
    .line 14
    iget v4, v0, Landroidx/collection/o;->d:I

    .line 15
    .line 16
    ushr-int/lit8 v2, v2, 0x7

    .line 17
    .line 18
    and-int/2addr v2, v4

    .line 19
    const/4 v5, 0x0

    .line 20
    move v6, v5

    .line 21
    :goto_0
    iget-object v7, v0, Landroidx/collection/o;->a:[J

    .line 22
    .line 23
    shr-int/lit8 v8, v2, 0x3

    .line 24
    .line 25
    and-int/lit8 v9, v2, 0x7

    .line 26
    .line 27
    shl-int/lit8 v9, v9, 0x3

    .line 28
    .line 29
    aget-wide v10, v7, v8

    .line 30
    .line 31
    ushr-long/2addr v10, v9

    .line 32
    const/4 v12, 0x1

    .line 33
    add-int/2addr v8, v12

    .line 34
    aget-wide v13, v7, v8

    .line 35
    .line 36
    rsub-int/lit8 v7, v9, 0x40

    .line 37
    .line 38
    shl-long v7, v13, v7

    .line 39
    .line 40
    int-to-long v13, v9

    .line 41
    neg-long v13, v13

    .line 42
    const/16 v9, 0x3f

    .line 43
    .line 44
    shr-long/2addr v13, v9

    .line 45
    and-long/2addr v7, v13

    .line 46
    or-long/2addr v7, v10

    .line 47
    int-to-long v9, v3

    .line 48
    const-wide v13, 0x101010101010101L

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    mul-long/2addr v9, v13

    .line 54
    xor-long/2addr v9, v7

    .line 55
    sub-long v13, v9, v13

    .line 56
    .line 57
    not-long v9, v9

    .line 58
    and-long/2addr v9, v13

    .line 59
    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    and-long/2addr v9, v13

    .line 65
    :goto_1
    const-wide/16 v15, 0x0

    .line 66
    .line 67
    cmp-long v11, v9, v15

    .line 68
    .line 69
    if-eqz v11, :cond_1

    .line 70
    .line 71
    invoke-static {v9, v10}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 72
    .line 73
    .line 74
    move-result v11

    .line 75
    shr-int/lit8 v11, v11, 0x3

    .line 76
    .line 77
    add-int/2addr v11, v2

    .line 78
    and-int/2addr v11, v4

    .line 79
    iget-object v15, v0, Landroidx/collection/o;->b:[I

    .line 80
    .line 81
    aget v15, v15, v11

    .line 82
    .line 83
    if-ne v15, v1, :cond_0

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_0
    const-wide/16 v15, 0x1

    .line 87
    .line 88
    sub-long v15, v9, v15

    .line 89
    .line 90
    and-long/2addr v9, v15

    .line 91
    goto :goto_1

    .line 92
    :cond_1
    not-long v9, v7

    .line 93
    const/4 v11, 0x6

    .line 94
    shl-long/2addr v9, v11

    .line 95
    and-long/2addr v7, v9

    .line 96
    and-long/2addr v7, v13

    .line 97
    cmp-long v7, v7, v15

    .line 98
    .line 99
    if-eqz v7, :cond_3

    .line 100
    .line 101
    const/4 v11, -0x1

    .line 102
    :goto_2
    if-ltz v11, :cond_2

    .line 103
    .line 104
    move v5, v12

    .line 105
    :cond_2
    return v5

    .line 106
    :cond_3
    add-int/lit8 v6, v6, 0x8

    .line 107
    .line 108
    add-int/2addr v2, v6

    .line 109
    and-int/2addr v2, v4

    .line 110
    goto :goto_0
.end method

.method public final b(I)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    const v2, -0x3361d2af    # -8.2930312E7f

    .line 6
    .line 7
    .line 8
    mul-int/2addr v2, v1

    .line 9
    shl-int/lit8 v3, v2, 0x10

    .line 10
    .line 11
    xor-int/2addr v2, v3

    .line 12
    and-int/lit8 v3, v2, 0x7f

    .line 13
    .line 14
    iget v4, v0, Landroidx/collection/o;->d:I

    .line 15
    .line 16
    ushr-int/lit8 v2, v2, 0x7

    .line 17
    .line 18
    and-int/2addr v2, v4

    .line 19
    const/4 v5, 0x0

    .line 20
    move v6, v5

    .line 21
    :goto_0
    iget-object v7, v0, Landroidx/collection/o;->a:[J

    .line 22
    .line 23
    shr-int/lit8 v8, v2, 0x3

    .line 24
    .line 25
    and-int/lit8 v9, v2, 0x7

    .line 26
    .line 27
    shl-int/lit8 v9, v9, 0x3

    .line 28
    .line 29
    aget-wide v10, v7, v8

    .line 30
    .line 31
    ushr-long/2addr v10, v9

    .line 32
    const/4 v12, 0x1

    .line 33
    add-int/2addr v8, v12

    .line 34
    aget-wide v13, v7, v8

    .line 35
    .line 36
    rsub-int/lit8 v7, v9, 0x40

    .line 37
    .line 38
    shl-long v7, v13, v7

    .line 39
    .line 40
    int-to-long v13, v9

    .line 41
    neg-long v13, v13

    .line 42
    const/16 v9, 0x3f

    .line 43
    .line 44
    shr-long/2addr v13, v9

    .line 45
    and-long/2addr v7, v13

    .line 46
    or-long/2addr v7, v10

    .line 47
    int-to-long v9, v3

    .line 48
    const-wide v13, 0x101010101010101L

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    mul-long/2addr v9, v13

    .line 54
    xor-long/2addr v9, v7

    .line 55
    sub-long v13, v9, v13

    .line 56
    .line 57
    not-long v9, v9

    .line 58
    and-long/2addr v9, v13

    .line 59
    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    and-long/2addr v9, v13

    .line 65
    :goto_1
    const-wide/16 v15, 0x0

    .line 66
    .line 67
    cmp-long v11, v9, v15

    .line 68
    .line 69
    if-eqz v11, :cond_1

    .line 70
    .line 71
    invoke-static {v9, v10}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 72
    .line 73
    .line 74
    move-result v11

    .line 75
    shr-int/lit8 v11, v11, 0x3

    .line 76
    .line 77
    add-int/2addr v11, v2

    .line 78
    and-int/2addr v11, v4

    .line 79
    iget-object v15, v0, Landroidx/collection/o;->b:[I

    .line 80
    .line 81
    aget v15, v15, v11

    .line 82
    .line 83
    if-ne v15, v1, :cond_0

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_0
    const-wide/16 v15, 0x1

    .line 87
    .line 88
    sub-long v15, v9, v15

    .line 89
    .line 90
    and-long/2addr v9, v15

    .line 91
    goto :goto_1

    .line 92
    :cond_1
    not-long v9, v7

    .line 93
    const/4 v11, 0x6

    .line 94
    shl-long/2addr v9, v11

    .line 95
    and-long/2addr v7, v9

    .line 96
    and-long/2addr v7, v13

    .line 97
    cmp-long v7, v7, v15

    .line 98
    .line 99
    if-eqz v7, :cond_3

    .line 100
    .line 101
    const/4 v11, -0x1

    .line 102
    :goto_2
    if-ltz v11, :cond_2

    .line 103
    .line 104
    move v5, v12

    .line 105
    :cond_2
    return v5

    .line 106
    :cond_3
    add-int/lit8 v6, v6, 0x8

    .line 107
    .line 108
    add-int/2addr v2, v6

    .line 109
    and-int/2addr v2, v4

    .line 110
    goto :goto_0
.end method

.method public final c(I)Ljava/lang/Object;
    .locals 13

    .line 1
    const v0, -0x3361d2af    # -8.2930312E7f

    .line 2
    .line 3
    .line 4
    mul-int/2addr v0, p1

    .line 5
    shl-int/lit8 v1, v0, 0x10

    .line 6
    .line 7
    xor-int/2addr v0, v1

    .line 8
    and-int/lit8 v1, v0, 0x7f

    .line 9
    .line 10
    iget v2, p0, Landroidx/collection/o;->d:I

    .line 11
    .line 12
    ushr-int/lit8 v0, v0, 0x7

    .line 13
    .line 14
    and-int/2addr v0, v2

    .line 15
    const/4 v3, 0x0

    .line 16
    :goto_0
    iget-object v4, p0, Landroidx/collection/o;->a:[J

    .line 17
    .line 18
    shr-int/lit8 v5, v0, 0x3

    .line 19
    .line 20
    and-int/lit8 v6, v0, 0x7

    .line 21
    .line 22
    shl-int/lit8 v6, v6, 0x3

    .line 23
    .line 24
    aget-wide v7, v4, v5

    .line 25
    .line 26
    ushr-long/2addr v7, v6

    .line 27
    add-int/lit8 v5, v5, 0x1

    .line 28
    .line 29
    aget-wide v9, v4, v5

    .line 30
    .line 31
    rsub-int/lit8 v4, v6, 0x40

    .line 32
    .line 33
    shl-long v4, v9, v4

    .line 34
    .line 35
    int-to-long v9, v6

    .line 36
    neg-long v9, v9

    .line 37
    const/16 v6, 0x3f

    .line 38
    .line 39
    shr-long/2addr v9, v6

    .line 40
    and-long/2addr v4, v9

    .line 41
    or-long/2addr v4, v7

    .line 42
    int-to-long v6, v1

    .line 43
    const-wide v8, 0x101010101010101L

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    mul-long/2addr v6, v8

    .line 49
    xor-long/2addr v6, v4

    .line 50
    sub-long v8, v6, v8

    .line 51
    .line 52
    not-long v6, v6

    .line 53
    and-long/2addr v6, v8

    .line 54
    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    and-long/2addr v6, v8

    .line 60
    :goto_1
    const-wide/16 v10, 0x0

    .line 61
    .line 62
    cmp-long v12, v6, v10

    .line 63
    .line 64
    if-eqz v12, :cond_1

    .line 65
    .line 66
    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 67
    .line 68
    .line 69
    move-result v10

    .line 70
    shr-int/lit8 v10, v10, 0x3

    .line 71
    .line 72
    add-int/2addr v10, v0

    .line 73
    and-int/2addr v10, v2

    .line 74
    iget-object v11, p0, Landroidx/collection/o;->b:[I

    .line 75
    .line 76
    aget v11, v11, v10

    .line 77
    .line 78
    if-ne v11, p1, :cond_0

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_0
    const-wide/16 v10, 0x1

    .line 82
    .line 83
    sub-long v10, v6, v10

    .line 84
    .line 85
    and-long/2addr v6, v10

    .line 86
    goto :goto_1

    .line 87
    :cond_1
    not-long v6, v4

    .line 88
    const/4 v12, 0x6

    .line 89
    shl-long/2addr v6, v12

    .line 90
    and-long/2addr v4, v6

    .line 91
    and-long/2addr v4, v8

    .line 92
    cmp-long v4, v4, v10

    .line 93
    .line 94
    if-eqz v4, :cond_3

    .line 95
    .line 96
    const/4 v10, -0x1

    .line 97
    :goto_2
    if-ltz v10, :cond_2

    .line 98
    .line 99
    iget-object p1, p0, Landroidx/collection/o;->c:[Ljava/lang/Object;

    .line 100
    .line 101
    aget-object p1, p1, v10

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_2
    const/4 p1, 0x0

    .line 105
    :goto_3
    return-object p1

    .line 106
    :cond_3
    add-int/lit8 v3, v3, 0x8

    .line 107
    .line 108
    add-int/2addr v0, v3

    .line 109
    and-int/2addr v0, v2

    .line 110
    goto :goto_0
.end method

.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/collection/o;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public final e()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/collection/o;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v1, v0, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    instance-of v3, v1, Landroidx/collection/o;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    if-nez v3, :cond_1

    .line 13
    .line 14
    return v4

    .line 15
    :cond_1
    check-cast v1, Landroidx/collection/o;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroidx/collection/o;->e()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-virtual/range {p0 .. p0}, Landroidx/collection/o;->e()I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-eq v3, v5, :cond_2

    .line 26
    .line 27
    return v4

    .line 28
    :cond_2
    iget-object v3, v0, Landroidx/collection/o;->b:[I

    .line 29
    .line 30
    iget-object v5, v0, Landroidx/collection/o;->c:[Ljava/lang/Object;

    .line 31
    .line 32
    iget-object v6, v0, Landroidx/collection/o;->a:[J

    .line 33
    .line 34
    array-length v7, v6

    .line 35
    add-int/lit8 v7, v7, -0x2

    .line 36
    .line 37
    if-ltz v7, :cond_8

    .line 38
    .line 39
    move v8, v4

    .line 40
    :goto_0
    aget-wide v9, v6, v8

    .line 41
    .line 42
    not-long v11, v9

    .line 43
    const/4 v13, 0x7

    .line 44
    shl-long/2addr v11, v13

    .line 45
    and-long/2addr v11, v9

    .line 46
    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    and-long/2addr v11, v13

    .line 52
    cmp-long v11, v11, v13

    .line 53
    .line 54
    if-eqz v11, :cond_7

    .line 55
    .line 56
    sub-int v11, v8, v7

    .line 57
    .line 58
    not-int v11, v11

    .line 59
    ushr-int/lit8 v11, v11, 0x1f

    .line 60
    .line 61
    const/16 v12, 0x8

    .line 62
    .line 63
    rsub-int/lit8 v11, v11, 0x8

    .line 64
    .line 65
    move v13, v4

    .line 66
    :goto_1
    if-ge v13, v11, :cond_6

    .line 67
    .line 68
    const-wide/16 v14, 0xff

    .line 69
    .line 70
    and-long/2addr v14, v9

    .line 71
    const-wide/16 v16, 0x80

    .line 72
    .line 73
    cmp-long v14, v14, v16

    .line 74
    .line 75
    if-gez v14, :cond_5

    .line 76
    .line 77
    shl-int/lit8 v14, v8, 0x3

    .line 78
    .line 79
    add-int/2addr v14, v13

    .line 80
    aget v15, v3, v14

    .line 81
    .line 82
    aget-object v14, v5, v14

    .line 83
    .line 84
    if-nez v14, :cond_4

    .line 85
    .line 86
    invoke-virtual {v1, v15}, Landroidx/collection/o;->c(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v14

    .line 90
    if-nez v14, :cond_3

    .line 91
    .line 92
    invoke-virtual {v1, v15}, Landroidx/collection/o;->b(I)Z

    .line 93
    .line 94
    .line 95
    move-result v14

    .line 96
    if-nez v14, :cond_5

    .line 97
    .line 98
    :cond_3
    return v4

    .line 99
    :cond_4
    invoke-virtual {v1, v15}, Landroidx/collection/o;->c(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v15

    .line 103
    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v14

    .line 107
    if-nez v14, :cond_5

    .line 108
    .line 109
    return v4

    .line 110
    :cond_5
    shr-long/2addr v9, v12

    .line 111
    add-int/lit8 v13, v13, 0x1

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_6
    if-ne v11, v12, :cond_8

    .line 115
    .line 116
    :cond_7
    if-eq v8, v7, :cond_8

    .line 117
    .line 118
    add-int/lit8 v8, v8, 0x1

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_8
    return v2
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/collection/o;->e:I

    .line 2
    .line 3
    if-nez v0, :cond_0

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

.method public final g()Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/collection/o;->e:I

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

.method public hashCode()I
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/collection/o;->b:[I

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/collection/o;->c:[Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/collection/o;->a:[J

    .line 8
    .line 9
    array-length v4, v3

    .line 10
    add-int/lit8 v4, v4, -0x2

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    if-ltz v4, :cond_5

    .line 14
    .line 15
    move v6, v5

    .line 16
    move v7, v6

    .line 17
    :goto_0
    aget-wide v8, v3, v6

    .line 18
    .line 19
    not-long v10, v8

    .line 20
    const/4 v12, 0x7

    .line 21
    shl-long/2addr v10, v12

    .line 22
    and-long/2addr v10, v8

    .line 23
    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    and-long/2addr v10, v12

    .line 29
    cmp-long v10, v10, v12

    .line 30
    .line 31
    if-eqz v10, :cond_3

    .line 32
    .line 33
    sub-int v10, v6, v4

    .line 34
    .line 35
    not-int v10, v10

    .line 36
    ushr-int/lit8 v10, v10, 0x1f

    .line 37
    .line 38
    const/16 v11, 0x8

    .line 39
    .line 40
    rsub-int/lit8 v10, v10, 0x8

    .line 41
    .line 42
    move v12, v5

    .line 43
    :goto_1
    if-ge v12, v10, :cond_2

    .line 44
    .line 45
    const-wide/16 v13, 0xff

    .line 46
    .line 47
    and-long/2addr v13, v8

    .line 48
    const-wide/16 v15, 0x80

    .line 49
    .line 50
    cmp-long v13, v13, v15

    .line 51
    .line 52
    if-gez v13, :cond_1

    .line 53
    .line 54
    shl-int/lit8 v13, v6, 0x3

    .line 55
    .line 56
    add-int/2addr v13, v12

    .line 57
    aget v14, v1, v13

    .line 58
    .line 59
    aget-object v13, v2, v13

    .line 60
    .line 61
    if-eqz v13, :cond_0

    .line 62
    .line 63
    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    .line 64
    .line 65
    .line 66
    move-result v13

    .line 67
    goto :goto_2

    .line 68
    :cond_0
    move v13, v5

    .line 69
    :goto_2
    xor-int/2addr v13, v14

    .line 70
    add-int/2addr v7, v13

    .line 71
    :cond_1
    shr-long/2addr v8, v11

    .line 72
    add-int/lit8 v12, v12, 0x1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    if-ne v10, v11, :cond_6

    .line 76
    .line 77
    :cond_3
    if-eq v6, v4, :cond_4

    .line 78
    .line 79
    add-int/lit8 v6, v6, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_4
    move v5, v7

    .line 83
    :cond_5
    move v7, v5

    .line 84
    :cond_6
    return v7
.end method

.method public toString()Ljava/lang/String;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Landroidx/collection/o;->f()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string v1, "{}"

    .line 10
    .line 11
    return-object v1

    .line 12
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const/16 v2, 0x7b

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v2, v0, Landroidx/collection/o;->b:[I

    .line 23
    .line 24
    iget-object v3, v0, Landroidx/collection/o;->c:[Ljava/lang/Object;

    .line 25
    .line 26
    iget-object v4, v0, Landroidx/collection/o;->a:[J

    .line 27
    .line 28
    array-length v5, v4

    .line 29
    add-int/lit8 v5, v5, -0x2

    .line 30
    .line 31
    if-ltz v5, :cond_5

    .line 32
    .line 33
    const/4 v6, 0x0

    .line 34
    move v7, v6

    .line 35
    move v8, v7

    .line 36
    :goto_0
    aget-wide v9, v4, v7

    .line 37
    .line 38
    not-long v11, v9

    .line 39
    const/4 v13, 0x7

    .line 40
    shl-long/2addr v11, v13

    .line 41
    and-long/2addr v11, v9

    .line 42
    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    and-long/2addr v11, v13

    .line 48
    cmp-long v11, v11, v13

    .line 49
    .line 50
    if-eqz v11, :cond_4

    .line 51
    .line 52
    sub-int v11, v7, v5

    .line 53
    .line 54
    not-int v11, v11

    .line 55
    ushr-int/lit8 v11, v11, 0x1f

    .line 56
    .line 57
    const/16 v12, 0x8

    .line 58
    .line 59
    rsub-int/lit8 v11, v11, 0x8

    .line 60
    .line 61
    move v13, v6

    .line 62
    :goto_1
    if-ge v13, v11, :cond_3

    .line 63
    .line 64
    const-wide/16 v14, 0xff

    .line 65
    .line 66
    and-long/2addr v14, v9

    .line 67
    const-wide/16 v16, 0x80

    .line 68
    .line 69
    cmp-long v14, v14, v16

    .line 70
    .line 71
    if-gez v14, :cond_2

    .line 72
    .line 73
    shl-int/lit8 v14, v7, 0x3

    .line 74
    .line 75
    add-int/2addr v14, v13

    .line 76
    aget v15, v2, v14

    .line 77
    .line 78
    aget-object v14, v3, v14

    .line 79
    .line 80
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v15, "="

    .line 84
    .line 85
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    if-ne v14, v0, :cond_1

    .line 89
    .line 90
    const-string v14, "(this)"

    .line 91
    .line 92
    :cond_1
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    add-int/lit8 v8, v8, 0x1

    .line 96
    .line 97
    iget v14, v0, Landroidx/collection/o;->e:I

    .line 98
    .line 99
    if-ge v8, v14, :cond_2

    .line 100
    .line 101
    const/16 v14, 0x2c

    .line 102
    .line 103
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const/16 v14, 0x20

    .line 107
    .line 108
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    :cond_2
    shr-long/2addr v9, v12

    .line 112
    add-int/lit8 v13, v13, 0x1

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_3
    if-ne v11, v12, :cond_5

    .line 116
    .line 117
    :cond_4
    if-eq v7, v5, :cond_5

    .line 118
    .line 119
    add-int/lit8 v7, v7, 0x1

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_5
    const/16 v2, 0x7d

    .line 123
    .line 124
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    const-string v2, "s.append(\'}\').toString()"

    .line 132
    .line 133
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    return-object v1
.end method
