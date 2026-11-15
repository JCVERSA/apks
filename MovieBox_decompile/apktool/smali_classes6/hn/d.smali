.class public final Lhn/d;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Lcom/transsion/player/config/RenderType;

.field private final b:Z

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:J

.field private final j:I

.field private final k:I

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private final q:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 21

    move-object/from16 v0, p0

    const v19, 0x1ffff

    const/16 v20, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 1
    invoke-direct/range {v0 .. v20}, Lhn/d;-><init>(Lcom/transsion/player/config/RenderType;ZIIIIIIJIIZZZZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/player/config/RenderType;ZIIIIIIJIIZZZZZLjava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p18

    const-string v3, "type"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "traceId"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v1, v0, Lhn/d;->a:Lcom/transsion/player/config/RenderType;

    move v1, p2

    .line 4
    iput-boolean v1, v0, Lhn/d;->b:Z

    move v1, p3

    .line 5
    iput v1, v0, Lhn/d;->c:I

    move v1, p4

    .line 6
    iput v1, v0, Lhn/d;->d:I

    move v1, p5

    .line 7
    iput v1, v0, Lhn/d;->e:I

    move v1, p6

    .line 8
    iput v1, v0, Lhn/d;->f:I

    move v1, p7

    .line 9
    iput v1, v0, Lhn/d;->g:I

    move v1, p8

    .line 10
    iput v1, v0, Lhn/d;->h:I

    move-wide v3, p9

    .line 11
    iput-wide v3, v0, Lhn/d;->i:J

    move/from16 v1, p11

    .line 12
    iput v1, v0, Lhn/d;->j:I

    move/from16 v1, p12

    .line 13
    iput v1, v0, Lhn/d;->k:I

    move/from16 v1, p13

    .line 14
    iput-boolean v1, v0, Lhn/d;->l:Z

    move/from16 v1, p14

    .line 15
    iput-boolean v1, v0, Lhn/d;->m:Z

    move/from16 v1, p15

    .line 16
    iput-boolean v1, v0, Lhn/d;->n:Z

    move/from16 v1, p16

    .line 17
    iput-boolean v1, v0, Lhn/d;->o:Z

    move/from16 v1, p17

    .line 18
    iput-boolean v1, v0, Lhn/d;->p:Z

    .line 19
    iput-object v2, v0, Lhn/d;->q:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/player/config/RenderType;ZIIIIIIJIIZZZZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 18

    move/from16 v0, p19

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 20
    sget-object v1, Lcom/transsion/player/config/RenderType;->SURFACE_VIEW:Lcom/transsion/player/config/RenderType;

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move/from16 v2, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    const/16 v5, 0x32

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_2

    :cond_2
    move/from16 v4, p3

    :goto_2
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_3

    const v6, 0xc350

    goto :goto_3

    :cond_3
    move/from16 v6, p4

    :goto_3
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_4

    const/16 v7, 0xbb8

    goto :goto_4

    :cond_4
    move/from16 v7, p5

    :goto_4
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_5

    const/16 v8, 0x1f4

    goto :goto_5

    :cond_5
    move/from16 v8, p6

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    const/4 v9, 0x2

    goto :goto_6

    :cond_6
    move/from16 v9, p7

    :goto_6
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_7

    const/4 v10, 0x3

    goto :goto_7

    :cond_7
    move/from16 v10, p8

    :goto_7
    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_8

    const-wide/16 v11, 0xfa0

    goto :goto_8

    :cond_8
    move-wide/from16 v11, p9

    :goto_8
    and-int/lit16 v13, v0, 0x200

    if-eqz v13, :cond_9

    goto :goto_9

    :cond_9
    move/from16 v5, p11

    :goto_9
    and-int/lit16 v13, v0, 0x400

    if-eqz v13, :cond_a

    const/16 v13, 0x7530

    goto :goto_a

    :cond_a
    move/from16 v13, p12

    :goto_a
    and-int/lit16 v14, v0, 0x800

    if-eqz v14, :cond_b

    const/4 v14, 0x1

    goto :goto_b

    :cond_b
    move/from16 v14, p13

    :goto_b
    and-int/lit16 v15, v0, 0x1000

    const/16 v16, 0x0

    if-eqz v15, :cond_c

    move/from16 v15, v16

    goto :goto_c

    :cond_c
    move/from16 v15, p14

    :goto_c
    and-int/lit16 v3, v0, 0x2000

    if-eqz v3, :cond_d

    move/from16 v3, v16

    goto :goto_d

    :cond_d
    move/from16 v3, p15

    :goto_d
    move/from16 p20, v3

    and-int/lit16 v3, v0, 0x4000

    if-eqz v3, :cond_e

    goto :goto_e

    :cond_e
    move/from16 v16, p16

    :goto_e
    const v3, 0x8000

    and-int/2addr v3, v0

    if-eqz v3, :cond_f

    const/4 v3, 0x1

    goto :goto_f

    :cond_f
    move/from16 v3, p17

    :goto_f
    const/high16 v17, 0x10000

    and-int v0, v0, v17

    if-eqz v0, :cond_10

    .line 21
    const-string v0, ""

    goto :goto_10

    :cond_10
    move-object/from16 v0, p18

    :goto_10
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move/from16 p3, v2

    move/from16 p4, v4

    move/from16 p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v10

    move-wide/from16 p10, v11

    move/from16 p12, v5

    move/from16 p13, v13

    move/from16 p14, v14

    move/from16 p15, v15

    move/from16 p16, p20

    move/from16 p17, v16

    move/from16 p18, v3

    move-object/from16 p19, v0

    .line 22
    invoke-direct/range {p1 .. p19}, Lhn/d;-><init>(Lcom/transsion/player/config/RenderType;ZIIIIIIJIIZZZZZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Lhn/d;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lhn/d;->m:Z

    .line 2
    .line 3
    return v0
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lhn/d;->o:Z

    .line 2
    .line 3
    return v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lhn/d;->n:Z

    .line 2
    .line 3
    return v0
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lhn/d;->l:Z

    .line 2
    .line 3
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lhn/d;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lhn/d;

    .line 12
    .line 13
    iget-object v1, p0, Lhn/d;->a:Lcom/transsion/player/config/RenderType;

    .line 14
    .line 15
    iget-object v3, p1, Lhn/d;->a:Lcom/transsion/player/config/RenderType;

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-boolean v1, p0, Lhn/d;->b:Z

    .line 21
    .line 22
    iget-boolean v3, p1, Lhn/d;->b:Z

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget v1, p0, Lhn/d;->c:I

    .line 28
    .line 29
    iget v3, p1, Lhn/d;->c:I

    .line 30
    .line 31
    if-eq v1, v3, :cond_4

    .line 32
    .line 33
    return v2

    .line 34
    :cond_4
    iget v1, p0, Lhn/d;->d:I

    .line 35
    .line 36
    iget v3, p1, Lhn/d;->d:I

    .line 37
    .line 38
    if-eq v1, v3, :cond_5

    .line 39
    .line 40
    return v2

    .line 41
    :cond_5
    iget v1, p0, Lhn/d;->e:I

    .line 42
    .line 43
    iget v3, p1, Lhn/d;->e:I

    .line 44
    .line 45
    if-eq v1, v3, :cond_6

    .line 46
    .line 47
    return v2

    .line 48
    :cond_6
    iget v1, p0, Lhn/d;->f:I

    .line 49
    .line 50
    iget v3, p1, Lhn/d;->f:I

    .line 51
    .line 52
    if-eq v1, v3, :cond_7

    .line 53
    .line 54
    return v2

    .line 55
    :cond_7
    iget v1, p0, Lhn/d;->g:I

    .line 56
    .line 57
    iget v3, p1, Lhn/d;->g:I

    .line 58
    .line 59
    if-eq v1, v3, :cond_8

    .line 60
    .line 61
    return v2

    .line 62
    :cond_8
    iget v1, p0, Lhn/d;->h:I

    .line 63
    .line 64
    iget v3, p1, Lhn/d;->h:I

    .line 65
    .line 66
    if-eq v1, v3, :cond_9

    .line 67
    .line 68
    return v2

    .line 69
    :cond_9
    iget-wide v3, p0, Lhn/d;->i:J

    .line 70
    .line 71
    iget-wide v5, p1, Lhn/d;->i:J

    .line 72
    .line 73
    cmp-long v1, v3, v5

    .line 74
    .line 75
    if-eqz v1, :cond_a

    .line 76
    .line 77
    return v2

    .line 78
    :cond_a
    iget v1, p0, Lhn/d;->j:I

    .line 79
    .line 80
    iget v3, p1, Lhn/d;->j:I

    .line 81
    .line 82
    if-eq v1, v3, :cond_b

    .line 83
    .line 84
    return v2

    .line 85
    :cond_b
    iget v1, p0, Lhn/d;->k:I

    .line 86
    .line 87
    iget v3, p1, Lhn/d;->k:I

    .line 88
    .line 89
    if-eq v1, v3, :cond_c

    .line 90
    .line 91
    return v2

    .line 92
    :cond_c
    iget-boolean v1, p0, Lhn/d;->l:Z

    .line 93
    .line 94
    iget-boolean v3, p1, Lhn/d;->l:Z

    .line 95
    .line 96
    if-eq v1, v3, :cond_d

    .line 97
    .line 98
    return v2

    .line 99
    :cond_d
    iget-boolean v1, p0, Lhn/d;->m:Z

    .line 100
    .line 101
    iget-boolean v3, p1, Lhn/d;->m:Z

    .line 102
    .line 103
    if-eq v1, v3, :cond_e

    .line 104
    .line 105
    return v2

    .line 106
    :cond_e
    iget-boolean v1, p0, Lhn/d;->n:Z

    .line 107
    .line 108
    iget-boolean v3, p1, Lhn/d;->n:Z

    .line 109
    .line 110
    if-eq v1, v3, :cond_f

    .line 111
    .line 112
    return v2

    .line 113
    :cond_f
    iget-boolean v1, p0, Lhn/d;->o:Z

    .line 114
    .line 115
    iget-boolean v3, p1, Lhn/d;->o:Z

    .line 116
    .line 117
    if-eq v1, v3, :cond_10

    .line 118
    .line 119
    return v2

    .line 120
    :cond_10
    iget-boolean v1, p0, Lhn/d;->p:Z

    .line 121
    .line 122
    iget-boolean v3, p1, Lhn/d;->p:Z

    .line 123
    .line 124
    if-eq v1, v3, :cond_11

    .line 125
    .line 126
    return v2

    .line 127
    :cond_11
    iget-object v1, p0, Lhn/d;->q:Ljava/lang/String;

    .line 128
    .line 129
    iget-object p1, p1, Lhn/d;->q:Ljava/lang/String;

    .line 130
    .line 131
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    if-nez p1, :cond_12

    .line 136
    .line 137
    return v2

    .line 138
    :cond_12
    return v0
.end method

.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, Lhn/d;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public final g()I
    .locals 1

    .line 1
    iget v0, p0, Lhn/d;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public final h()I
    .locals 1

    .line 1
    iget v0, p0, Lhn/d;->k:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lhn/d;->a:Lcom/transsion/player/config/RenderType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-boolean v1, p0, Lhn/d;->b:Z

    .line 10
    .line 11
    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget v1, p0, Lhn/d;->c:I

    .line 19
    .line 20
    add-int/2addr v0, v1

    .line 21
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    .line 23
    iget v1, p0, Lhn/d;->d:I

    .line 24
    .line 25
    add-int/2addr v0, v1

    .line 26
    mul-int/lit8 v0, v0, 0x1f

    .line 27
    .line 28
    iget v1, p0, Lhn/d;->e:I

    .line 29
    .line 30
    add-int/2addr v0, v1

    .line 31
    mul-int/lit8 v0, v0, 0x1f

    .line 32
    .line 33
    iget v1, p0, Lhn/d;->f:I

    .line 34
    .line 35
    add-int/2addr v0, v1

    .line 36
    mul-int/lit8 v0, v0, 0x1f

    .line 37
    .line 38
    iget v1, p0, Lhn/d;->g:I

    .line 39
    .line 40
    add-int/2addr v0, v1

    .line 41
    mul-int/lit8 v0, v0, 0x1f

    .line 42
    .line 43
    iget v1, p0, Lhn/d;->h:I

    .line 44
    .line 45
    add-int/2addr v0, v1

    .line 46
    mul-int/lit8 v0, v0, 0x1f

    .line 47
    .line 48
    iget-wide v1, p0, Lhn/d;->i:J

    .line 49
    .line 50
    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    add-int/2addr v0, v1

    .line 55
    mul-int/lit8 v0, v0, 0x1f

    .line 56
    .line 57
    iget v1, p0, Lhn/d;->j:I

    .line 58
    .line 59
    add-int/2addr v0, v1

    .line 60
    mul-int/lit8 v0, v0, 0x1f

    .line 61
    .line 62
    iget v1, p0, Lhn/d;->k:I

    .line 63
    .line 64
    add-int/2addr v0, v1

    .line 65
    mul-int/lit8 v0, v0, 0x1f

    .line 66
    .line 67
    iget-boolean v1, p0, Lhn/d;->l:Z

    .line 68
    .line 69
    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    add-int/2addr v0, v1

    .line 74
    mul-int/lit8 v0, v0, 0x1f

    .line 75
    .line 76
    iget-boolean v1, p0, Lhn/d;->m:Z

    .line 77
    .line 78
    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    add-int/2addr v0, v1

    .line 83
    mul-int/lit8 v0, v0, 0x1f

    .line 84
    .line 85
    iget-boolean v1, p0, Lhn/d;->n:Z

    .line 86
    .line 87
    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    add-int/2addr v0, v1

    .line 92
    mul-int/lit8 v0, v0, 0x1f

    .line 93
    .line 94
    iget-boolean v1, p0, Lhn/d;->o:Z

    .line 95
    .line 96
    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    add-int/2addr v0, v1

    .line 101
    mul-int/lit8 v0, v0, 0x1f

    .line 102
    .line 103
    iget-boolean v1, p0, Lhn/d;->p:Z

    .line 104
    .line 105
    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    add-int/2addr v0, v1

    .line 110
    mul-int/lit8 v0, v0, 0x1f

    .line 111
    .line 112
    iget-object v1, p0, Lhn/d;->q:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    add-int/2addr v0, v1

    .line 119
    return v0
.end method

.method public final i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lhn/d;->p:Z

    .line 2
    .line 3
    return v0
.end method

.method public final j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lhn/d;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public final k()I
    .locals 1

    .line 1
    iget v0, p0, Lhn/d;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public final l()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lhn/d;->i:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final m()I
    .locals 1

    .line 1
    iget v0, p0, Lhn/d;->g:I

    .line 2
    .line 3
    return v0
.end method

.method public final n()I
    .locals 1

    .line 1
    iget v0, p0, Lhn/d;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lhn/d;->q:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final p()Lcom/transsion/player/config/RenderType;
    .locals 1

    .line 1
    iget-object v0, p0, Lhn/d;->a:Lcom/transsion/player/config/RenderType;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lhn/d;->a:Lcom/transsion/player/config/RenderType;

    .line 4
    .line 5
    iget-boolean v2, v0, Lhn/d;->b:Z

    .line 6
    .line 7
    iget v3, v0, Lhn/d;->c:I

    .line 8
    .line 9
    iget v4, v0, Lhn/d;->d:I

    .line 10
    .line 11
    iget v5, v0, Lhn/d;->e:I

    .line 12
    .line 13
    iget v6, v0, Lhn/d;->f:I

    .line 14
    .line 15
    iget v7, v0, Lhn/d;->g:I

    .line 16
    .line 17
    iget v8, v0, Lhn/d;->h:I

    .line 18
    .line 19
    iget-wide v9, v0, Lhn/d;->i:J

    .line 20
    .line 21
    iget v11, v0, Lhn/d;->j:I

    .line 22
    .line 23
    iget v12, v0, Lhn/d;->k:I

    .line 24
    .line 25
    iget-boolean v13, v0, Lhn/d;->l:Z

    .line 26
    .line 27
    iget-boolean v14, v0, Lhn/d;->m:Z

    .line 28
    .line 29
    iget-boolean v15, v0, Lhn/d;->n:Z

    .line 30
    .line 31
    move/from16 v16, v15

    .line 32
    .line 33
    iget-boolean v15, v0, Lhn/d;->o:Z

    .line 34
    .line 35
    move/from16 v17, v15

    .line 36
    .line 37
    iget-boolean v15, v0, Lhn/d;->p:Z

    .line 38
    .line 39
    move/from16 v18, v15

    .line 40
    .line 41
    iget-object v15, v0, Lhn/d;->q:Ljava/lang/String;

    .line 42
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    move-object/from16 v19, v15

    .line 49
    .line 50
    const-string v15, "VodConfig(type="

    .line 51
    .line 52
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v1, ", openCache="

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, ", positionTimerIntervalMs="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v1, ", maxBufferDuration="

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v1, ", highBufferDuration="

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v1, ", startBufferDuration="

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v1, ", retryCount="

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v1, ", preloadCount="

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v1, ", preloadDuration="

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v1, ", cacheMaxSizeMB="

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v1, ", networkTimeout="

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v1, ", enableHardwareDecoder="

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v1, ", clearFrameWhenStop="

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const-string v1, ", disableVideo="

    .line 155
    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    move/from16 v1, v16

    .line 160
    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string v1, ", disableAudio="

    .line 165
    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    move/from16 v1, v17

    .line 170
    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    const-string v1, ", openAudioFocus="

    .line 175
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    move/from16 v1, v18

    .line 180
    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string v1, ", traceId="

    .line 185
    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    move-object/from16 v1, v19

    .line 190
    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    const-string v1, ")"

    .line 195
    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    return-object v0
.end method
