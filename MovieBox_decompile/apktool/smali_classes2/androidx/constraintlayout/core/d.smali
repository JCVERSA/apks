.class public Landroidx/constraintlayout/core/d;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/d$a;,
        Landroidx/constraintlayout/core/d$b;
    }
.end annotation


# static fields
.field public static r:Z = false

.field public static s:Z = true

.field public static t:Z = true

.field public static u:Z = true

.field public static v:Z = false

.field private static w:I = 0x3e8

.field public static x:Landroidx/constraintlayout/core/e;

.field public static y:J

.field public static z:J


# instance fields
.field public a:Z

.field b:I

.field private c:Ljava/util/HashMap;

.field private d:Landroidx/constraintlayout/core/d$a;

.field private e:I

.field private f:I

.field g:[Landroidx/constraintlayout/core/b;

.field public h:Z

.field public i:Z

.field private j:[Z

.field k:I

.field l:I

.field private m:I

.field final n:Landroidx/constraintlayout/core/c;

.field private o:[Landroidx/constraintlayout/core/SolverVariable;

.field private p:I

.field private q:Landroidx/constraintlayout/core/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
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
    iput-boolean v0, p0, Landroidx/constraintlayout/core/d;->a:Z

    .line 6
    .line 7
    iput v0, p0, Landroidx/constraintlayout/core/d;->b:I

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Landroidx/constraintlayout/core/d;->c:Ljava/util/HashMap;

    .line 11
    .line 12
    const/16 v2, 0x20

    .line 13
    .line 14
    iput v2, p0, Landroidx/constraintlayout/core/d;->e:I

    .line 15
    .line 16
    iput v2, p0, Landroidx/constraintlayout/core/d;->f:I

    .line 17
    .line 18
    iput-object v1, p0, Landroidx/constraintlayout/core/d;->g:[Landroidx/constraintlayout/core/b;

    .line 19
    .line 20
    iput-boolean v0, p0, Landroidx/constraintlayout/core/d;->h:Z

    .line 21
    .line 22
    iput-boolean v0, p0, Landroidx/constraintlayout/core/d;->i:Z

    .line 23
    .line 24
    new-array v1, v2, [Z

    .line 25
    .line 26
    iput-object v1, p0, Landroidx/constraintlayout/core/d;->j:[Z

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    iput v1, p0, Landroidx/constraintlayout/core/d;->k:I

    .line 30
    .line 31
    iput v0, p0, Landroidx/constraintlayout/core/d;->l:I

    .line 32
    .line 33
    iput v2, p0, Landroidx/constraintlayout/core/d;->m:I

    .line 34
    .line 35
    sget v1, Landroidx/constraintlayout/core/d;->w:I

    .line 36
    .line 37
    new-array v1, v1, [Landroidx/constraintlayout/core/SolverVariable;

    .line 38
    .line 39
    iput-object v1, p0, Landroidx/constraintlayout/core/d;->o:[Landroidx/constraintlayout/core/SolverVariable;

    .line 40
    .line 41
    iput v0, p0, Landroidx/constraintlayout/core/d;->p:I

    .line 42
    .line 43
    new-array v0, v2, [Landroidx/constraintlayout/core/b;

    .line 44
    .line 45
    iput-object v0, p0, Landroidx/constraintlayout/core/d;->g:[Landroidx/constraintlayout/core/b;

    .line 46
    .line 47
    invoke-direct {p0}, Landroidx/constraintlayout/core/d;->D()V

    .line 48
    .line 49
    .line 50
    new-instance v0, Landroidx/constraintlayout/core/c;

    .line 51
    .line 52
    invoke-direct {v0}, Landroidx/constraintlayout/core/c;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Landroidx/constraintlayout/core/d;->n:Landroidx/constraintlayout/core/c;

    .line 56
    .line 57
    new-instance v1, Landroidx/constraintlayout/core/PriorityGoalRow;

    .line 58
    .line 59
    invoke-direct {v1, v0}, Landroidx/constraintlayout/core/PriorityGoalRow;-><init>(Landroidx/constraintlayout/core/c;)V

    .line 60
    .line 61
    .line 62
    iput-object v1, p0, Landroidx/constraintlayout/core/d;->d:Landroidx/constraintlayout/core/d$a;

    .line 63
    .line 64
    sget-boolean v1, Landroidx/constraintlayout/core/d;->v:Z

    .line 65
    .line 66
    if-eqz v1, :cond_0

    .line 67
    .line 68
    new-instance v1, Landroidx/constraintlayout/core/d$b;

    .line 69
    .line 70
    invoke-direct {v1, p0, v0}, Landroidx/constraintlayout/core/d$b;-><init>(Landroidx/constraintlayout/core/d;Landroidx/constraintlayout/core/c;)V

    .line 71
    .line 72
    .line 73
    iput-object v1, p0, Landroidx/constraintlayout/core/d;->q:Landroidx/constraintlayout/core/d$a;

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    new-instance v1, Landroidx/constraintlayout/core/b;

    .line 77
    .line 78
    invoke-direct {v1, v0}, Landroidx/constraintlayout/core/b;-><init>(Landroidx/constraintlayout/core/c;)V

    .line 79
    .line 80
    .line 81
    iput-object v1, p0, Landroidx/constraintlayout/core/d;->q:Landroidx/constraintlayout/core/d$a;

    .line 82
    .line 83
    :goto_0
    return-void
.end method

.method private final C(Landroidx/constraintlayout/core/d$a;Z)I
    .locals 12

    .line 1
    sget-object p2, Landroidx/constraintlayout/core/d;->x:Landroidx/constraintlayout/core/e;

    .line 2
    .line 3
    const-wide/16 v0, 0x1

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    iget-wide v2, p2, Landroidx/constraintlayout/core/e;->h:J

    .line 8
    .line 9
    add-long/2addr v2, v0

    .line 10
    iput-wide v2, p2, Landroidx/constraintlayout/core/e;->h:J

    .line 11
    .line 12
    :cond_0
    const/4 p2, 0x0

    .line 13
    move v2, p2

    .line 14
    :goto_0
    iget v3, p0, Landroidx/constraintlayout/core/d;->k:I

    .line 15
    .line 16
    if-ge v2, v3, :cond_1

    .line 17
    .line 18
    iget-object v3, p0, Landroidx/constraintlayout/core/d;->j:[Z

    .line 19
    .line 20
    aput-boolean p2, v3, v2

    .line 21
    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move v2, p2

    .line 26
    move v3, v2

    .line 27
    :cond_2
    :goto_1
    if-nez v2, :cond_e

    .line 28
    .line 29
    sget-object v4, Landroidx/constraintlayout/core/d;->x:Landroidx/constraintlayout/core/e;

    .line 30
    .line 31
    if-eqz v4, :cond_3

    .line 32
    .line 33
    iget-wide v5, v4, Landroidx/constraintlayout/core/e;->i:J

    .line 34
    .line 35
    add-long/2addr v5, v0

    .line 36
    iput-wide v5, v4, Landroidx/constraintlayout/core/e;->i:J

    .line 37
    .line 38
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 39
    .line 40
    iget v4, p0, Landroidx/constraintlayout/core/d;->k:I

    .line 41
    .line 42
    mul-int/lit8 v4, v4, 0x2

    .line 43
    .line 44
    if-lt v3, v4, :cond_4

    .line 45
    .line 46
    return v3

    .line 47
    :cond_4
    invoke-interface {p1}, Landroidx/constraintlayout/core/d$a;->getKey()Landroidx/constraintlayout/core/SolverVariable;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    const/4 v5, 0x1

    .line 52
    if-eqz v4, :cond_5

    .line 53
    .line 54
    iget-object v4, p0, Landroidx/constraintlayout/core/d;->j:[Z

    .line 55
    .line 56
    invoke-interface {p1}, Landroidx/constraintlayout/core/d$a;->getKey()Landroidx/constraintlayout/core/SolverVariable;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    iget v6, v6, Landroidx/constraintlayout/core/SolverVariable;->c:I

    .line 61
    .line 62
    aput-boolean v5, v4, v6

    .line 63
    .line 64
    :cond_5
    iget-object v4, p0, Landroidx/constraintlayout/core/d;->j:[Z

    .line 65
    .line 66
    invoke-interface {p1, p0, v4}, Landroidx/constraintlayout/core/d$a;->b(Landroidx/constraintlayout/core/d;[Z)Landroidx/constraintlayout/core/SolverVariable;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    if-eqz v4, :cond_7

    .line 71
    .line 72
    iget-object v6, p0, Landroidx/constraintlayout/core/d;->j:[Z

    .line 73
    .line 74
    iget v7, v4, Landroidx/constraintlayout/core/SolverVariable;->c:I

    .line 75
    .line 76
    aget-boolean v8, v6, v7

    .line 77
    .line 78
    if-eqz v8, :cond_6

    .line 79
    .line 80
    return v3

    .line 81
    :cond_6
    aput-boolean v5, v6, v7

    .line 82
    .line 83
    :cond_7
    if-eqz v4, :cond_d

    .line 84
    .line 85
    const/4 v5, -0x1

    .line 86
    const v6, 0x7f7fffff    # Float.MAX_VALUE

    .line 87
    .line 88
    .line 89
    move v7, p2

    .line 90
    move v8, v5

    .line 91
    :goto_2
    iget v9, p0, Landroidx/constraintlayout/core/d;->l:I

    .line 92
    .line 93
    if-ge v7, v9, :cond_b

    .line 94
    .line 95
    iget-object v9, p0, Landroidx/constraintlayout/core/d;->g:[Landroidx/constraintlayout/core/b;

    .line 96
    .line 97
    aget-object v9, v9, v7

    .line 98
    .line 99
    iget-object v10, v9, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    .line 100
    .line 101
    iget-object v10, v10, Landroidx/constraintlayout/core/SolverVariable;->j:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 102
    .line 103
    sget-object v11, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 104
    .line 105
    if-ne v10, v11, :cond_8

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_8
    iget-boolean v10, v9, Landroidx/constraintlayout/core/b;->f:Z

    .line 109
    .line 110
    if-eqz v10, :cond_9

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_9
    invoke-virtual {v9, v4}, Landroidx/constraintlayout/core/b;->t(Landroidx/constraintlayout/core/SolverVariable;)Z

    .line 114
    .line 115
    .line 116
    move-result v10

    .line 117
    if-eqz v10, :cond_a

    .line 118
    .line 119
    iget-object v10, v9, Landroidx/constraintlayout/core/b;->e:Landroidx/constraintlayout/core/b$a;

    .line 120
    .line 121
    invoke-interface {v10, v4}, Landroidx/constraintlayout/core/b$a;->i(Landroidx/constraintlayout/core/SolverVariable;)F

    .line 122
    .line 123
    .line 124
    move-result v10

    .line 125
    const/4 v11, 0x0

    .line 126
    cmpg-float v11, v10, v11

    .line 127
    .line 128
    if-gez v11, :cond_a

    .line 129
    .line 130
    iget v9, v9, Landroidx/constraintlayout/core/b;->b:F

    .line 131
    .line 132
    neg-float v9, v9

    .line 133
    div-float/2addr v9, v10

    .line 134
    cmpg-float v10, v9, v6

    .line 135
    .line 136
    if-gez v10, :cond_a

    .line 137
    .line 138
    move v8, v7

    .line 139
    move v6, v9

    .line 140
    :cond_a
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_b
    if-le v8, v5, :cond_2

    .line 144
    .line 145
    iget-object v6, p0, Landroidx/constraintlayout/core/d;->g:[Landroidx/constraintlayout/core/b;

    .line 146
    .line 147
    aget-object v6, v6, v8

    .line 148
    .line 149
    iget-object v7, v6, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    .line 150
    .line 151
    iput v5, v7, Landroidx/constraintlayout/core/SolverVariable;->d:I

    .line 152
    .line 153
    sget-object v5, Landroidx/constraintlayout/core/d;->x:Landroidx/constraintlayout/core/e;

    .line 154
    .line 155
    if-eqz v5, :cond_c

    .line 156
    .line 157
    iget-wide v9, v5, Landroidx/constraintlayout/core/e;->j:J

    .line 158
    .line 159
    add-long/2addr v9, v0

    .line 160
    iput-wide v9, v5, Landroidx/constraintlayout/core/e;->j:J

    .line 161
    .line 162
    :cond_c
    invoke-virtual {v6, v4}, Landroidx/constraintlayout/core/b;->x(Landroidx/constraintlayout/core/SolverVariable;)V

    .line 163
    .line 164
    .line 165
    iget-object v4, v6, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    .line 166
    .line 167
    iput v8, v4, Landroidx/constraintlayout/core/SolverVariable;->d:I

    .line 168
    .line 169
    invoke-virtual {v4, p0, v6}, Landroidx/constraintlayout/core/SolverVariable;->i(Landroidx/constraintlayout/core/d;Landroidx/constraintlayout/core/b;)V

    .line 170
    .line 171
    .line 172
    goto/16 :goto_1

    .line 173
    .line 174
    :cond_d
    move v2, v5

    .line 175
    goto/16 :goto_1

    .line 176
    .line 177
    :cond_e
    return v3
.end method

.method private D()V
    .locals 4

    .line 1
    sget-boolean v0, Landroidx/constraintlayout/core/d;->v:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    :goto_0
    iget v0, p0, Landroidx/constraintlayout/core/d;->l:I

    .line 8
    .line 9
    if-ge v2, v0, :cond_3

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/constraintlayout/core/d;->g:[Landroidx/constraintlayout/core/b;

    .line 12
    .line 13
    aget-object v0, v0, v2

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v3, p0, Landroidx/constraintlayout/core/d;->n:Landroidx/constraintlayout/core/c;

    .line 18
    .line 19
    iget-object v3, v3, Landroidx/constraintlayout/core/c;->a:Landroidx/constraintlayout/core/f;

    .line 20
    .line 21
    invoke-interface {v3, v0}, Landroidx/constraintlayout/core/f;->release(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/d;->g:[Landroidx/constraintlayout/core/b;

    .line 25
    .line 26
    aput-object v1, v0, v2

    .line 27
    .line 28
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    :goto_1
    iget v0, p0, Landroidx/constraintlayout/core/d;->l:I

    .line 32
    .line 33
    if-ge v2, v0, :cond_3

    .line 34
    .line 35
    iget-object v0, p0, Landroidx/constraintlayout/core/d;->g:[Landroidx/constraintlayout/core/b;

    .line 36
    .line 37
    aget-object v0, v0, v2

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    iget-object v3, p0, Landroidx/constraintlayout/core/d;->n:Landroidx/constraintlayout/core/c;

    .line 42
    .line 43
    iget-object v3, v3, Landroidx/constraintlayout/core/c;->b:Landroidx/constraintlayout/core/f;

    .line 44
    .line 45
    invoke-interface {v3, v0}, Landroidx/constraintlayout/core/f;->release(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/core/d;->g:[Landroidx/constraintlayout/core/b;

    .line 49
    .line 50
    aput-object v1, v0, v2

    .line 51
    .line 52
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    return-void
.end method

.method private a(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/core/SolverVariable;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/d;->n:Landroidx/constraintlayout/core/c;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/constraintlayout/core/c;->c:Landroidx/constraintlayout/core/f;

    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/constraintlayout/core/f;->acquire()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroidx/constraintlayout/core/SolverVariable;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Landroidx/constraintlayout/core/SolverVariable;

    .line 14
    .line 15
    invoke-direct {v0, p1, p2}, Landroidx/constraintlayout/core/SolverVariable;-><init>(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/SolverVariable;->h(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0}, Landroidx/constraintlayout/core/SolverVariable;->f()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/SolverVariable;->h(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    iget p1, p0, Landroidx/constraintlayout/core/d;->p:I

    .line 29
    .line 30
    sget p2, Landroidx/constraintlayout/core/d;->w:I

    .line 31
    .line 32
    if-lt p1, p2, :cond_1

    .line 33
    .line 34
    mul-int/lit8 p2, p2, 0x2

    .line 35
    .line 36
    sput p2, Landroidx/constraintlayout/core/d;->w:I

    .line 37
    .line 38
    iget-object p1, p0, Landroidx/constraintlayout/core/d;->o:[Landroidx/constraintlayout/core/SolverVariable;

    .line 39
    .line 40
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, [Landroidx/constraintlayout/core/SolverVariable;

    .line 45
    .line 46
    iput-object p1, p0, Landroidx/constraintlayout/core/d;->o:[Landroidx/constraintlayout/core/SolverVariable;

    .line 47
    .line 48
    :cond_1
    iget-object p1, p0, Landroidx/constraintlayout/core/d;->o:[Landroidx/constraintlayout/core/SolverVariable;

    .line 49
    .line 50
    iget p2, p0, Landroidx/constraintlayout/core/d;->p:I

    .line 51
    .line 52
    add-int/lit8 v1, p2, 0x1

    .line 53
    .line 54
    iput v1, p0, Landroidx/constraintlayout/core/d;->p:I

    .line 55
    .line 56
    aput-object v0, p1, p2

    .line 57
    .line 58
    return-object v0
.end method

.method private final l(Landroidx/constraintlayout/core/b;)V
    .locals 7

    .line 1
    sget-boolean v0, Landroidx/constraintlayout/core/d;->t:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p1, Landroidx/constraintlayout/core/b;->f:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p1, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    .line 10
    .line 11
    iget p1, p1, Landroidx/constraintlayout/core/b;->b:F

    .line 12
    .line 13
    invoke-virtual {v0, p0, p1}, Landroidx/constraintlayout/core/SolverVariable;->g(Landroidx/constraintlayout/core/d;F)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/d;->g:[Landroidx/constraintlayout/core/b;

    .line 18
    .line 19
    iget v1, p0, Landroidx/constraintlayout/core/d;->l:I

    .line 20
    .line 21
    aput-object p1, v0, v1

    .line 22
    .line 23
    iget-object v0, p1, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    .line 24
    .line 25
    iput v1, v0, Landroidx/constraintlayout/core/SolverVariable;->d:I

    .line 26
    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    iput v1, p0, Landroidx/constraintlayout/core/d;->l:I

    .line 30
    .line 31
    invoke-virtual {v0, p0, p1}, Landroidx/constraintlayout/core/SolverVariable;->i(Landroidx/constraintlayout/core/d;Landroidx/constraintlayout/core/b;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    sget-boolean p1, Landroidx/constraintlayout/core/d;->t:Z

    .line 35
    .line 36
    if-eqz p1, :cond_8

    .line 37
    .line 38
    iget-boolean p1, p0, Landroidx/constraintlayout/core/d;->a:Z

    .line 39
    .line 40
    if-eqz p1, :cond_8

    .line 41
    .line 42
    const/4 p1, 0x0

    .line 43
    move v0, p1

    .line 44
    :goto_1
    iget v1, p0, Landroidx/constraintlayout/core/d;->l:I

    .line 45
    .line 46
    if-ge v0, v1, :cond_7

    .line 47
    .line 48
    iget-object v1, p0, Landroidx/constraintlayout/core/d;->g:[Landroidx/constraintlayout/core/b;

    .line 49
    .line 50
    aget-object v1, v1, v0

    .line 51
    .line 52
    if-nez v1, :cond_1

    .line 53
    .line 54
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 55
    .line 56
    const-string v2, "WTF"

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    iget-object v1, p0, Landroidx/constraintlayout/core/d;->g:[Landroidx/constraintlayout/core/b;

    .line 62
    .line 63
    aget-object v1, v1, v0

    .line 64
    .line 65
    if-eqz v1, :cond_6

    .line 66
    .line 67
    iget-boolean v2, v1, Landroidx/constraintlayout/core/b;->f:Z

    .line 68
    .line 69
    if-eqz v2, :cond_6

    .line 70
    .line 71
    iget-object v2, v1, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    .line 72
    .line 73
    iget v3, v1, Landroidx/constraintlayout/core/b;->b:F

    .line 74
    .line 75
    invoke-virtual {v2, p0, v3}, Landroidx/constraintlayout/core/SolverVariable;->g(Landroidx/constraintlayout/core/d;F)V

    .line 76
    .line 77
    .line 78
    sget-boolean v2, Landroidx/constraintlayout/core/d;->v:Z

    .line 79
    .line 80
    if-eqz v2, :cond_2

    .line 81
    .line 82
    iget-object v2, p0, Landroidx/constraintlayout/core/d;->n:Landroidx/constraintlayout/core/c;

    .line 83
    .line 84
    iget-object v2, v2, Landroidx/constraintlayout/core/c;->a:Landroidx/constraintlayout/core/f;

    .line 85
    .line 86
    invoke-interface {v2, v1}, Landroidx/constraintlayout/core/f;->release(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_2
    iget-object v2, p0, Landroidx/constraintlayout/core/d;->n:Landroidx/constraintlayout/core/c;

    .line 91
    .line 92
    iget-object v2, v2, Landroidx/constraintlayout/core/c;->b:Landroidx/constraintlayout/core/f;

    .line 93
    .line 94
    invoke-interface {v2, v1}, Landroidx/constraintlayout/core/f;->release(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    :goto_2
    iget-object v1, p0, Landroidx/constraintlayout/core/d;->g:[Landroidx/constraintlayout/core/b;

    .line 98
    .line 99
    const/4 v2, 0x0

    .line 100
    aput-object v2, v1, v0

    .line 101
    .line 102
    add-int/lit8 v1, v0, 0x1

    .line 103
    .line 104
    move v3, v1

    .line 105
    :goto_3
    iget v4, p0, Landroidx/constraintlayout/core/d;->l:I

    .line 106
    .line 107
    if-ge v1, v4, :cond_4

    .line 108
    .line 109
    iget-object v3, p0, Landroidx/constraintlayout/core/d;->g:[Landroidx/constraintlayout/core/b;

    .line 110
    .line 111
    add-int/lit8 v4, v1, -0x1

    .line 112
    .line 113
    aget-object v5, v3, v1

    .line 114
    .line 115
    aput-object v5, v3, v4

    .line 116
    .line 117
    iget-object v3, v5, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    .line 118
    .line 119
    iget v5, v3, Landroidx/constraintlayout/core/SolverVariable;->d:I

    .line 120
    .line 121
    if-ne v5, v1, :cond_3

    .line 122
    .line 123
    iput v4, v3, Landroidx/constraintlayout/core/SolverVariable;->d:I

    .line 124
    .line 125
    :cond_3
    add-int/lit8 v3, v1, 0x1

    .line 126
    .line 127
    move v6, v3

    .line 128
    move v3, v1

    .line 129
    move v1, v6

    .line 130
    goto :goto_3

    .line 131
    :cond_4
    if-ge v3, v4, :cond_5

    .line 132
    .line 133
    iget-object v1, p0, Landroidx/constraintlayout/core/d;->g:[Landroidx/constraintlayout/core/b;

    .line 134
    .line 135
    aput-object v2, v1, v3

    .line 136
    .line 137
    :cond_5
    add-int/lit8 v4, v4, -0x1

    .line 138
    .line 139
    iput v4, p0, Landroidx/constraintlayout/core/d;->l:I

    .line 140
    .line 141
    add-int/lit8 v0, v0, -0x1

    .line 142
    .line 143
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_7
    iput-boolean p1, p0, Landroidx/constraintlayout/core/d;->a:Z

    .line 147
    .line 148
    :cond_8
    return-void
.end method

.method private n()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/core/d;->l:I

    .line 3
    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/constraintlayout/core/d;->g:[Landroidx/constraintlayout/core/b;

    .line 7
    .line 8
    aget-object v1, v1, v0

    .line 9
    .line 10
    iget-object v2, v1, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    .line 11
    .line 12
    iget v1, v1, Landroidx/constraintlayout/core/b;->b:F

    .line 13
    .line 14
    iput v1, v2, Landroidx/constraintlayout/core/SolverVariable;->f:F

    .line 15
    .line 16
    add-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public static s(Landroidx/constraintlayout/core/d;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;F)Landroidx/constraintlayout/core/b;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/core/d;->r()Landroidx/constraintlayout/core/b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Landroidx/constraintlayout/core/b;->j(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;F)Landroidx/constraintlayout/core/b;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private u(Landroidx/constraintlayout/core/d$a;)I
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    iget v3, v0, Landroidx/constraintlayout/core/d;->l:I

    .line 5
    .line 6
    if-ge v2, v3, :cond_16

    .line 7
    .line 8
    iget-object v3, v0, Landroidx/constraintlayout/core/d;->g:[Landroidx/constraintlayout/core/b;

    .line 9
    .line 10
    aget-object v3, v3, v2

    .line 11
    .line 12
    iget-object v4, v3, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    .line 13
    .line 14
    iget-object v4, v4, Landroidx/constraintlayout/core/SolverVariable;->j:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 15
    .line 16
    sget-object v5, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 17
    .line 18
    if-ne v4, v5, :cond_0

    .line 19
    .line 20
    goto/16 :goto_b

    .line 21
    .line 22
    :cond_0
    iget v3, v3, Landroidx/constraintlayout/core/b;->b:F

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    cmpg-float v3, v3, v4

    .line 26
    .line 27
    if-gez v3, :cond_15

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x0

    .line 31
    :cond_1
    :goto_1
    if-nez v2, :cond_14

    .line 32
    .line 33
    sget-object v5, Landroidx/constraintlayout/core/d;->x:Landroidx/constraintlayout/core/e;

    .line 34
    .line 35
    const-wide/16 v6, 0x1

    .line 36
    .line 37
    if-eqz v5, :cond_2

    .line 38
    .line 39
    iget-wide v8, v5, Landroidx/constraintlayout/core/e;->k:J

    .line 40
    .line 41
    add-long/2addr v8, v6

    .line 42
    iput-wide v8, v5, Landroidx/constraintlayout/core/e;->k:J

    .line 43
    .line 44
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 45
    .line 46
    const v8, 0x7f7fffff    # Float.MAX_VALUE

    .line 47
    .line 48
    .line 49
    const/4 v9, 0x0

    .line 50
    const/4 v10, -0x1

    .line 51
    const/4 v11, -0x1

    .line 52
    const/4 v12, 0x0

    .line 53
    :goto_2
    iget v13, v0, Landroidx/constraintlayout/core/d;->l:I

    .line 54
    .line 55
    const/4 v14, 0x1

    .line 56
    if-ge v9, v13, :cond_11

    .line 57
    .line 58
    iget-object v13, v0, Landroidx/constraintlayout/core/d;->g:[Landroidx/constraintlayout/core/b;

    .line 59
    .line 60
    aget-object v13, v13, v9

    .line 61
    .line 62
    iget-object v15, v13, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    .line 63
    .line 64
    iget-object v15, v15, Landroidx/constraintlayout/core/SolverVariable;->j:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 65
    .line 66
    sget-object v1, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 67
    .line 68
    if-ne v15, v1, :cond_3

    .line 69
    .line 70
    goto/16 :goto_9

    .line 71
    .line 72
    :cond_3
    iget-boolean v1, v13, Landroidx/constraintlayout/core/b;->f:Z

    .line 73
    .line 74
    if-eqz v1, :cond_4

    .line 75
    .line 76
    goto/16 :goto_9

    .line 77
    .line 78
    :cond_4
    iget v1, v13, Landroidx/constraintlayout/core/b;->b:F

    .line 79
    .line 80
    cmpg-float v1, v1, v4

    .line 81
    .line 82
    if-gez v1, :cond_10

    .line 83
    .line 84
    sget-boolean v1, Landroidx/constraintlayout/core/d;->u:Z

    .line 85
    .line 86
    const/16 v15, 0x9

    .line 87
    .line 88
    if-eqz v1, :cond_a

    .line 89
    .line 90
    iget-object v1, v13, Landroidx/constraintlayout/core/b;->e:Landroidx/constraintlayout/core/b$a;

    .line 91
    .line 92
    invoke-interface {v1}, Landroidx/constraintlayout/core/b$a;->getCurrentSize()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    const/4 v14, 0x0

    .line 97
    :goto_3
    if-ge v14, v1, :cond_10

    .line 98
    .line 99
    iget-object v6, v13, Landroidx/constraintlayout/core/b;->e:Landroidx/constraintlayout/core/b$a;

    .line 100
    .line 101
    invoke-interface {v6, v14}, Landroidx/constraintlayout/core/b$a;->b(I)Landroidx/constraintlayout/core/SolverVariable;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    iget-object v7, v13, Landroidx/constraintlayout/core/b;->e:Landroidx/constraintlayout/core/b$a;

    .line 106
    .line 107
    invoke-interface {v7, v6}, Landroidx/constraintlayout/core/b$a;->i(Landroidx/constraintlayout/core/SolverVariable;)F

    .line 108
    .line 109
    .line 110
    move-result v7

    .line 111
    cmpg-float v16, v7, v4

    .line 112
    .line 113
    if-gtz v16, :cond_5

    .line 114
    .line 115
    goto :goto_5

    .line 116
    :cond_5
    const/4 v5, 0x0

    .line 117
    :goto_4
    if-ge v5, v15, :cond_9

    .line 118
    .line 119
    iget-object v15, v6, Landroidx/constraintlayout/core/SolverVariable;->h:[F

    .line 120
    .line 121
    aget v15, v15, v5

    .line 122
    .line 123
    div-float/2addr v15, v7

    .line 124
    cmpg-float v18, v15, v8

    .line 125
    .line 126
    if-gez v18, :cond_6

    .line 127
    .line 128
    if-eq v5, v12, :cond_7

    .line 129
    .line 130
    :cond_6
    if-le v5, v12, :cond_8

    .line 131
    .line 132
    :cond_7
    iget v8, v6, Landroidx/constraintlayout/core/SolverVariable;->c:I

    .line 133
    .line 134
    move v12, v5

    .line 135
    move v11, v8

    .line 136
    move v10, v9

    .line 137
    move v8, v15

    .line 138
    :cond_8
    add-int/lit8 v5, v5, 0x1

    .line 139
    .line 140
    const/16 v15, 0x9

    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_9
    :goto_5
    add-int/lit8 v14, v14, 0x1

    .line 144
    .line 145
    const-wide/16 v6, 0x1

    .line 146
    .line 147
    const/16 v15, 0x9

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_a
    :goto_6
    iget v1, v0, Landroidx/constraintlayout/core/d;->k:I

    .line 151
    .line 152
    if-ge v14, v1, :cond_10

    .line 153
    .line 154
    iget-object v1, v0, Landroidx/constraintlayout/core/d;->n:Landroidx/constraintlayout/core/c;

    .line 155
    .line 156
    iget-object v1, v1, Landroidx/constraintlayout/core/c;->d:[Landroidx/constraintlayout/core/SolverVariable;

    .line 157
    .line 158
    aget-object v1, v1, v14

    .line 159
    .line 160
    iget-object v5, v13, Landroidx/constraintlayout/core/b;->e:Landroidx/constraintlayout/core/b$a;

    .line 161
    .line 162
    invoke-interface {v5, v1}, Landroidx/constraintlayout/core/b$a;->i(Landroidx/constraintlayout/core/SolverVariable;)F

    .line 163
    .line 164
    .line 165
    move-result v5

    .line 166
    cmpg-float v6, v5, v4

    .line 167
    .line 168
    if-gtz v6, :cond_b

    .line 169
    .line 170
    const/16 v6, 0x9

    .line 171
    .line 172
    goto :goto_8

    .line 173
    :cond_b
    const/16 v6, 0x9

    .line 174
    .line 175
    const/4 v7, 0x0

    .line 176
    :goto_7
    if-ge v7, v6, :cond_f

    .line 177
    .line 178
    iget-object v15, v1, Landroidx/constraintlayout/core/SolverVariable;->h:[F

    .line 179
    .line 180
    aget v15, v15, v7

    .line 181
    .line 182
    div-float/2addr v15, v5

    .line 183
    cmpg-float v17, v15, v8

    .line 184
    .line 185
    if-gez v17, :cond_c

    .line 186
    .line 187
    if-eq v7, v12, :cond_d

    .line 188
    .line 189
    :cond_c
    if-le v7, v12, :cond_e

    .line 190
    .line 191
    :cond_d
    move v12, v7

    .line 192
    move v10, v9

    .line 193
    move v11, v14

    .line 194
    move v8, v15

    .line 195
    :cond_e
    add-int/lit8 v7, v7, 0x1

    .line 196
    .line 197
    goto :goto_7

    .line 198
    :cond_f
    :goto_8
    add-int/lit8 v14, v14, 0x1

    .line 199
    .line 200
    goto :goto_6

    .line 201
    :cond_10
    :goto_9
    add-int/lit8 v9, v9, 0x1

    .line 202
    .line 203
    const-wide/16 v6, 0x1

    .line 204
    .line 205
    goto/16 :goto_2

    .line 206
    .line 207
    :cond_11
    const/4 v1, -0x1

    .line 208
    if-eq v10, v1, :cond_13

    .line 209
    .line 210
    iget-object v5, v0, Landroidx/constraintlayout/core/d;->g:[Landroidx/constraintlayout/core/b;

    .line 211
    .line 212
    aget-object v5, v5, v10

    .line 213
    .line 214
    iget-object v6, v5, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    .line 215
    .line 216
    iput v1, v6, Landroidx/constraintlayout/core/SolverVariable;->d:I

    .line 217
    .line 218
    sget-object v1, Landroidx/constraintlayout/core/d;->x:Landroidx/constraintlayout/core/e;

    .line 219
    .line 220
    if-eqz v1, :cond_12

    .line 221
    .line 222
    iget-wide v6, v1, Landroidx/constraintlayout/core/e;->j:J

    .line 223
    .line 224
    const-wide/16 v8, 0x1

    .line 225
    .line 226
    add-long/2addr v6, v8

    .line 227
    iput-wide v6, v1, Landroidx/constraintlayout/core/e;->j:J

    .line 228
    .line 229
    :cond_12
    iget-object v1, v0, Landroidx/constraintlayout/core/d;->n:Landroidx/constraintlayout/core/c;

    .line 230
    .line 231
    iget-object v1, v1, Landroidx/constraintlayout/core/c;->d:[Landroidx/constraintlayout/core/SolverVariable;

    .line 232
    .line 233
    aget-object v1, v1, v11

    .line 234
    .line 235
    invoke-virtual {v5, v1}, Landroidx/constraintlayout/core/b;->x(Landroidx/constraintlayout/core/SolverVariable;)V

    .line 236
    .line 237
    .line 238
    iget-object v1, v5, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    .line 239
    .line 240
    iput v10, v1, Landroidx/constraintlayout/core/SolverVariable;->d:I

    .line 241
    .line 242
    invoke-virtual {v1, v0, v5}, Landroidx/constraintlayout/core/SolverVariable;->i(Landroidx/constraintlayout/core/d;Landroidx/constraintlayout/core/b;)V

    .line 243
    .line 244
    .line 245
    goto :goto_a

    .line 246
    :cond_13
    move v2, v14

    .line 247
    :goto_a
    iget v1, v0, Landroidx/constraintlayout/core/d;->k:I

    .line 248
    .line 249
    div-int/lit8 v1, v1, 0x2

    .line 250
    .line 251
    if-le v3, v1, :cond_1

    .line 252
    .line 253
    move v2, v14

    .line 254
    goto/16 :goto_1

    .line 255
    .line 256
    :cond_14
    move v1, v3

    .line 257
    goto :goto_c

    .line 258
    :cond_15
    :goto_b
    add-int/lit8 v2, v2, 0x1

    .line 259
    .line 260
    goto/16 :goto_0

    .line 261
    .line 262
    :cond_16
    const/4 v1, 0x0

    .line 263
    :goto_c
    return v1
.end method

.method public static x()Landroidx/constraintlayout/core/e;
    .locals 1

    .line 1
    sget-object v0, Landroidx/constraintlayout/core/d;->x:Landroidx/constraintlayout/core/e;

    .line 2
    .line 3
    return-object v0
.end method

.method private z()V
    .locals 6

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/d;->e:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iput v0, p0, Landroidx/constraintlayout/core/d;->e:I

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/constraintlayout/core/d;->g:[Landroidx/constraintlayout/core/b;

    .line 8
    .line 9
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, [Landroidx/constraintlayout/core/b;

    .line 14
    .line 15
    iput-object v0, p0, Landroidx/constraintlayout/core/d;->g:[Landroidx/constraintlayout/core/b;

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/constraintlayout/core/d;->n:Landroidx/constraintlayout/core/c;

    .line 18
    .line 19
    iget-object v1, v0, Landroidx/constraintlayout/core/c;->d:[Landroidx/constraintlayout/core/SolverVariable;

    .line 20
    .line 21
    iget v2, p0, Landroidx/constraintlayout/core/d;->e:I

    .line 22
    .line 23
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, [Landroidx/constraintlayout/core/SolverVariable;

    .line 28
    .line 29
    iput-object v1, v0, Landroidx/constraintlayout/core/c;->d:[Landroidx/constraintlayout/core/SolverVariable;

    .line 30
    .line 31
    iget v0, p0, Landroidx/constraintlayout/core/d;->e:I

    .line 32
    .line 33
    new-array v1, v0, [Z

    .line 34
    .line 35
    iput-object v1, p0, Landroidx/constraintlayout/core/d;->j:[Z

    .line 36
    .line 37
    iput v0, p0, Landroidx/constraintlayout/core/d;->f:I

    .line 38
    .line 39
    iput v0, p0, Landroidx/constraintlayout/core/d;->m:I

    .line 40
    .line 41
    sget-object v1, Landroidx/constraintlayout/core/d;->x:Landroidx/constraintlayout/core/e;

    .line 42
    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    iget-wide v2, v1, Landroidx/constraintlayout/core/e;->d:J

    .line 46
    .line 47
    const-wide/16 v4, 0x1

    .line 48
    .line 49
    add-long/2addr v2, v4

    .line 50
    iput-wide v2, v1, Landroidx/constraintlayout/core/e;->d:J

    .line 51
    .line 52
    iget-wide v2, v1, Landroidx/constraintlayout/core/e;->o:J

    .line 53
    .line 54
    int-to-long v4, v0

    .line 55
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 56
    .line 57
    .line 58
    move-result-wide v2

    .line 59
    iput-wide v2, v1, Landroidx/constraintlayout/core/e;->o:J

    .line 60
    .line 61
    sget-object v0, Landroidx/constraintlayout/core/d;->x:Landroidx/constraintlayout/core/e;

    .line 62
    .line 63
    iget-wide v1, v0, Landroidx/constraintlayout/core/e;->o:J

    .line 64
    .line 65
    iput-wide v1, v0, Landroidx/constraintlayout/core/e;->y:J

    .line 66
    .line 67
    :cond_0
    return-void
.end method


# virtual methods
.method public A()V
    .locals 5

    .line 1
    sget-object v0, Landroidx/constraintlayout/core/d;->x:Landroidx/constraintlayout/core/e;

    .line 2
    .line 3
    const-wide/16 v1, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-wide v3, v0, Landroidx/constraintlayout/core/e;->e:J

    .line 8
    .line 9
    add-long/2addr v3, v1

    .line 10
    iput-wide v3, v0, Landroidx/constraintlayout/core/e;->e:J

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/d;->d:Landroidx/constraintlayout/core/d$a;

    .line 13
    .line 14
    invoke-interface {v0}, Landroidx/constraintlayout/core/d$a;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-direct {p0}, Landroidx/constraintlayout/core/d;->n()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    iget-boolean v0, p0, Landroidx/constraintlayout/core/d;->h:Z

    .line 25
    .line 26
    if-nez v0, :cond_3

    .line 27
    .line 28
    iget-boolean v0, p0, Landroidx/constraintlayout/core/d;->i:Z

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/core/d;->d:Landroidx/constraintlayout/core/d$a;

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/d;->B(Landroidx/constraintlayout/core/d$a;)V

    .line 36
    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_3
    :goto_0
    sget-object v0, Landroidx/constraintlayout/core/d;->x:Landroidx/constraintlayout/core/e;

    .line 40
    .line 41
    if-eqz v0, :cond_4

    .line 42
    .line 43
    iget-wide v3, v0, Landroidx/constraintlayout/core/e;->q:J

    .line 44
    .line 45
    add-long/2addr v3, v1

    .line 46
    iput-wide v3, v0, Landroidx/constraintlayout/core/e;->q:J

    .line 47
    .line 48
    :cond_4
    const/4 v0, 0x0

    .line 49
    :goto_1
    iget v3, p0, Landroidx/constraintlayout/core/d;->l:I

    .line 50
    .line 51
    if-ge v0, v3, :cond_6

    .line 52
    .line 53
    iget-object v3, p0, Landroidx/constraintlayout/core/d;->g:[Landroidx/constraintlayout/core/b;

    .line 54
    .line 55
    aget-object v3, v3, v0

    .line 56
    .line 57
    iget-boolean v3, v3, Landroidx/constraintlayout/core/b;->f:Z

    .line 58
    .line 59
    if-nez v3, :cond_5

    .line 60
    .line 61
    iget-object v0, p0, Landroidx/constraintlayout/core/d;->d:Landroidx/constraintlayout/core/d$a;

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/d;->B(Landroidx/constraintlayout/core/d$a;)V

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_6
    sget-object v0, Landroidx/constraintlayout/core/d;->x:Landroidx/constraintlayout/core/e;

    .line 71
    .line 72
    if-eqz v0, :cond_7

    .line 73
    .line 74
    iget-wide v3, v0, Landroidx/constraintlayout/core/e;->p:J

    .line 75
    .line 76
    add-long/2addr v3, v1

    .line 77
    iput-wide v3, v0, Landroidx/constraintlayout/core/e;->p:J

    .line 78
    .line 79
    :cond_7
    invoke-direct {p0}, Landroidx/constraintlayout/core/d;->n()V

    .line 80
    .line 81
    .line 82
    :goto_2
    return-void
.end method

.method B(Landroidx/constraintlayout/core/d$a;)V
    .locals 5

    .line 1
    sget-object v0, Landroidx/constraintlayout/core/d;->x:Landroidx/constraintlayout/core/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-wide v1, v0, Landroidx/constraintlayout/core/e;->t:J

    .line 6
    .line 7
    const-wide/16 v3, 0x1

    .line 8
    .line 9
    add-long/2addr v1, v3

    .line 10
    iput-wide v1, v0, Landroidx/constraintlayout/core/e;->t:J

    .line 11
    .line 12
    iget-wide v1, v0, Landroidx/constraintlayout/core/e;->u:J

    .line 13
    .line 14
    iget v3, p0, Landroidx/constraintlayout/core/d;->k:I

    .line 15
    .line 16
    int-to-long v3, v3

    .line 17
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    iput-wide v1, v0, Landroidx/constraintlayout/core/e;->u:J

    .line 22
    .line 23
    sget-object v0, Landroidx/constraintlayout/core/d;->x:Landroidx/constraintlayout/core/e;

    .line 24
    .line 25
    iget-wide v1, v0, Landroidx/constraintlayout/core/e;->v:J

    .line 26
    .line 27
    iget v3, p0, Landroidx/constraintlayout/core/d;->l:I

    .line 28
    .line 29
    int-to-long v3, v3

    .line 30
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 31
    .line 32
    .line 33
    move-result-wide v1

    .line 34
    iput-wide v1, v0, Landroidx/constraintlayout/core/e;->v:J

    .line 35
    .line 36
    :cond_0
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/d;->u(Landroidx/constraintlayout/core/d$a;)I

    .line 37
    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/core/d;->C(Landroidx/constraintlayout/core/d$a;Z)I

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Landroidx/constraintlayout/core/d;->n()V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public E()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/core/d;->n:Landroidx/constraintlayout/core/c;

    .line 4
    .line 5
    iget-object v3, v2, Landroidx/constraintlayout/core/c;->d:[Landroidx/constraintlayout/core/SolverVariable;

    .line 6
    .line 7
    array-length v4, v3

    .line 8
    if-ge v1, v4, :cond_1

    .line 9
    .line 10
    aget-object v2, v3, v1

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v2}, Landroidx/constraintlayout/core/SolverVariable;->f()V

    .line 15
    .line 16
    .line 17
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-object v1, v2, Landroidx/constraintlayout/core/c;->c:Landroidx/constraintlayout/core/f;

    .line 21
    .line 22
    iget-object v2, p0, Landroidx/constraintlayout/core/d;->o:[Landroidx/constraintlayout/core/SolverVariable;

    .line 23
    .line 24
    iget v3, p0, Landroidx/constraintlayout/core/d;->p:I

    .line 25
    .line 26
    invoke-interface {v1, v2, v3}, Landroidx/constraintlayout/core/f;->a([Ljava/lang/Object;I)V

    .line 27
    .line 28
    .line 29
    iput v0, p0, Landroidx/constraintlayout/core/d;->p:I

    .line 30
    .line 31
    iget-object v1, p0, Landroidx/constraintlayout/core/d;->n:Landroidx/constraintlayout/core/c;

    .line 32
    .line 33
    iget-object v1, v1, Landroidx/constraintlayout/core/c;->d:[Landroidx/constraintlayout/core/SolverVariable;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Landroidx/constraintlayout/core/d;->c:Ljava/util/HashMap;

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 44
    .line 45
    .line 46
    :cond_2
    iput v0, p0, Landroidx/constraintlayout/core/d;->b:I

    .line 47
    .line 48
    iget-object v1, p0, Landroidx/constraintlayout/core/d;->d:Landroidx/constraintlayout/core/d$a;

    .line 49
    .line 50
    invoke-interface {v1}, Landroidx/constraintlayout/core/d$a;->clear()V

    .line 51
    .line 52
    .line 53
    const/4 v1, 0x1

    .line 54
    iput v1, p0, Landroidx/constraintlayout/core/d;->k:I

    .line 55
    .line 56
    move v1, v0

    .line 57
    :goto_1
    iget v2, p0, Landroidx/constraintlayout/core/d;->l:I

    .line 58
    .line 59
    if-ge v1, v2, :cond_4

    .line 60
    .line 61
    iget-object v2, p0, Landroidx/constraintlayout/core/d;->g:[Landroidx/constraintlayout/core/b;

    .line 62
    .line 63
    aget-object v2, v2, v1

    .line 64
    .line 65
    if-eqz v2, :cond_3

    .line 66
    .line 67
    iput-boolean v0, v2, Landroidx/constraintlayout/core/b;->c:Z

    .line 68
    .line 69
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_4
    invoke-direct {p0}, Landroidx/constraintlayout/core/d;->D()V

    .line 73
    .line 74
    .line 75
    iput v0, p0, Landroidx/constraintlayout/core/d;->l:I

    .line 76
    .line 77
    sget-boolean v0, Landroidx/constraintlayout/core/d;->v:Z

    .line 78
    .line 79
    if-eqz v0, :cond_5

    .line 80
    .line 81
    new-instance v0, Landroidx/constraintlayout/core/d$b;

    .line 82
    .line 83
    iget-object v1, p0, Landroidx/constraintlayout/core/d;->n:Landroidx/constraintlayout/core/c;

    .line 84
    .line 85
    invoke-direct {v0, p0, v1}, Landroidx/constraintlayout/core/d$b;-><init>(Landroidx/constraintlayout/core/d;Landroidx/constraintlayout/core/c;)V

    .line 86
    .line 87
    .line 88
    iput-object v0, p0, Landroidx/constraintlayout/core/d;->q:Landroidx/constraintlayout/core/d$a;

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_5
    new-instance v0, Landroidx/constraintlayout/core/b;

    .line 92
    .line 93
    iget-object v1, p0, Landroidx/constraintlayout/core/d;->n:Landroidx/constraintlayout/core/c;

    .line 94
    .line 95
    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/b;-><init>(Landroidx/constraintlayout/core/c;)V

    .line 96
    .line 97
    .line 98
    iput-object v0, p0, Landroidx/constraintlayout/core/d;->q:Landroidx/constraintlayout/core/d$a;

    .line 99
    .line 100
    :goto_2
    return-void
.end method

.method public b(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget;FI)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 8
    .line 9
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 14
    .line 15
    .line 16
    move-result-object v6

    .line 17
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 18
    .line 19
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-virtual {v0, v5}, Landroidx/constraintlayout/core/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 24
    .line 25
    .line 26
    move-result-object v8

    .line 27
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 28
    .line 29
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    invoke-virtual {v0, v7}, Landroidx/constraintlayout/core/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 34
    .line 35
    .line 36
    move-result-object v13

    .line 37
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 38
    .line 39
    invoke-virtual {v1, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 44
    .line 45
    .line 46
    move-result-object v9

    .line 47
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v2, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 60
    .line 61
    .line 62
    move-result-object v10

    .line 63
    invoke-virtual {v2, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v2, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 76
    .line 77
    .line 78
    move-result-object v11

    .line 79
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/d;->r()Landroidx/constraintlayout/core/b;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    move/from16 v4, p3

    .line 84
    .line 85
    float-to-double v4, v4

    .line 86
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    .line 87
    .line 88
    .line 89
    move-result-wide v14

    .line 90
    move/from16 v7, p4

    .line 91
    .line 92
    move-object/from16 p1, v3

    .line 93
    .line 94
    move-wide/from16 p2, v4

    .line 95
    .line 96
    int-to-double v3, v7

    .line 97
    mul-double/2addr v14, v3

    .line 98
    double-to-float v12, v14

    .line 99
    move-object v7, v2

    .line 100
    invoke-virtual/range {v7 .. v12}, Landroidx/constraintlayout/core/b;->q(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;F)Landroidx/constraintlayout/core/b;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/d;->d(Landroidx/constraintlayout/core/b;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/d;->r()Landroidx/constraintlayout/core/b;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->cos(D)D

    .line 111
    .line 112
    .line 113
    move-result-wide v7

    .line 114
    mul-double/2addr v7, v3

    .line 115
    double-to-float v10, v7

    .line 116
    move-object v5, v2

    .line 117
    move-object v7, v13

    .line 118
    move-object v8, v1

    .line 119
    move-object/from16 v9, p1

    .line 120
    .line 121
    invoke-virtual/range {v5 .. v10}, Landroidx/constraintlayout/core/b;->q(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;F)Landroidx/constraintlayout/core/b;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/d;->d(Landroidx/constraintlayout/core/b;)V

    .line 125
    .line 126
    .line 127
    return-void
.end method

.method public c(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p8

    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/constraintlayout/core/d;->r()Landroidx/constraintlayout/core/b;

    .line 5
    .line 6
    .line 7
    move-result-object v10

    .line 8
    move-object v2, v10

    .line 9
    move-object v3, p1

    .line 10
    move-object v4, p2

    .line 11
    move v5, p3

    .line 12
    move v6, p4

    .line 13
    move-object/from16 v7, p5

    .line 14
    .line 15
    move-object/from16 v8, p6

    .line 16
    .line 17
    move/from16 v9, p7

    .line 18
    .line 19
    invoke-virtual/range {v2 .. v9}, Landroidx/constraintlayout/core/b;->h(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/b;

    .line 20
    .line 21
    .line 22
    const/16 v2, 0x8

    .line 23
    .line 24
    if-eq v1, v2, :cond_0

    .line 25
    .line 26
    invoke-virtual {v10, p0, v1}, Landroidx/constraintlayout/core/b;->d(Landroidx/constraintlayout/core/d;I)Landroidx/constraintlayout/core/b;

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {p0, v10}, Landroidx/constraintlayout/core/d;->d(Landroidx/constraintlayout/core/b;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public d(Landroidx/constraintlayout/core/b;)V
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget-object v0, Landroidx/constraintlayout/core/d;->x:Landroidx/constraintlayout/core/e;

    .line 5
    .line 6
    const-wide/16 v1, 0x1

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-wide v3, v0, Landroidx/constraintlayout/core/e;->f:J

    .line 11
    .line 12
    add-long/2addr v3, v1

    .line 13
    iput-wide v3, v0, Landroidx/constraintlayout/core/e;->f:J

    .line 14
    .line 15
    iget-boolean v3, p1, Landroidx/constraintlayout/core/b;->f:Z

    .line 16
    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    iget-wide v3, v0, Landroidx/constraintlayout/core/e;->g:J

    .line 20
    .line 21
    add-long/2addr v3, v1

    .line 22
    iput-wide v3, v0, Landroidx/constraintlayout/core/e;->g:J

    .line 23
    .line 24
    :cond_1
    iget v0, p0, Landroidx/constraintlayout/core/d;->l:I

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    add-int/2addr v0, v3

    .line 28
    iget v4, p0, Landroidx/constraintlayout/core/d;->m:I

    .line 29
    .line 30
    if-ge v0, v4, :cond_2

    .line 31
    .line 32
    iget v0, p0, Landroidx/constraintlayout/core/d;->k:I

    .line 33
    .line 34
    add-int/2addr v0, v3

    .line 35
    iget v4, p0, Landroidx/constraintlayout/core/d;->f:I

    .line 36
    .line 37
    if-lt v0, v4, :cond_3

    .line 38
    .line 39
    :cond_2
    invoke-direct {p0}, Landroidx/constraintlayout/core/d;->z()V

    .line 40
    .line 41
    .line 42
    :cond_3
    iget-boolean v0, p1, Landroidx/constraintlayout/core/b;->f:Z

    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    if-nez v0, :cond_c

    .line 46
    .line 47
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/b;->D(Landroidx/constraintlayout/core/d;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Landroidx/constraintlayout/core/b;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_4

    .line 55
    .line 56
    return-void

    .line 57
    :cond_4
    invoke-virtual {p1}, Landroidx/constraintlayout/core/b;->r()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/b;->f(Landroidx/constraintlayout/core/d;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_9

    .line 65
    .line 66
    invoke-virtual {p0}, Landroidx/constraintlayout/core/d;->p()Landroidx/constraintlayout/core/SolverVariable;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iput-object v0, p1, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    .line 71
    .line 72
    iget v5, p0, Landroidx/constraintlayout/core/d;->l:I

    .line 73
    .line 74
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/d;->l(Landroidx/constraintlayout/core/b;)V

    .line 75
    .line 76
    .line 77
    iget v6, p0, Landroidx/constraintlayout/core/d;->l:I

    .line 78
    .line 79
    add-int/2addr v5, v3

    .line 80
    if-ne v6, v5, :cond_9

    .line 81
    .line 82
    iget-object v4, p0, Landroidx/constraintlayout/core/d;->q:Landroidx/constraintlayout/core/d$a;

    .line 83
    .line 84
    invoke-interface {v4, p1}, Landroidx/constraintlayout/core/d$a;->a(Landroidx/constraintlayout/core/d$a;)V

    .line 85
    .line 86
    .line 87
    iget-object v4, p0, Landroidx/constraintlayout/core/d;->q:Landroidx/constraintlayout/core/d$a;

    .line 88
    .line 89
    invoke-direct {p0, v4, v3}, Landroidx/constraintlayout/core/d;->C(Landroidx/constraintlayout/core/d$a;Z)I

    .line 90
    .line 91
    .line 92
    iget v4, v0, Landroidx/constraintlayout/core/SolverVariable;->d:I

    .line 93
    .line 94
    const/4 v5, -0x1

    .line 95
    if-ne v4, v5, :cond_a

    .line 96
    .line 97
    iget-object v4, p1, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    .line 98
    .line 99
    if-ne v4, v0, :cond_6

    .line 100
    .line 101
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/b;->v(Landroidx/constraintlayout/core/SolverVariable;)Landroidx/constraintlayout/core/SolverVariable;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    if-eqz v0, :cond_6

    .line 106
    .line 107
    sget-object v4, Landroidx/constraintlayout/core/d;->x:Landroidx/constraintlayout/core/e;

    .line 108
    .line 109
    if-eqz v4, :cond_5

    .line 110
    .line 111
    iget-wide v5, v4, Landroidx/constraintlayout/core/e;->j:J

    .line 112
    .line 113
    add-long/2addr v5, v1

    .line 114
    iput-wide v5, v4, Landroidx/constraintlayout/core/e;->j:J

    .line 115
    .line 116
    :cond_5
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/b;->x(Landroidx/constraintlayout/core/SolverVariable;)V

    .line 117
    .line 118
    .line 119
    :cond_6
    iget-boolean v0, p1, Landroidx/constraintlayout/core/b;->f:Z

    .line 120
    .line 121
    if-nez v0, :cond_7

    .line 122
    .line 123
    iget-object v0, p1, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    .line 124
    .line 125
    invoke-virtual {v0, p0, p1}, Landroidx/constraintlayout/core/SolverVariable;->i(Landroidx/constraintlayout/core/d;Landroidx/constraintlayout/core/b;)V

    .line 126
    .line 127
    .line 128
    :cond_7
    sget-boolean v0, Landroidx/constraintlayout/core/d;->v:Z

    .line 129
    .line 130
    if-eqz v0, :cond_8

    .line 131
    .line 132
    iget-object v0, p0, Landroidx/constraintlayout/core/d;->n:Landroidx/constraintlayout/core/c;

    .line 133
    .line 134
    iget-object v0, v0, Landroidx/constraintlayout/core/c;->a:Landroidx/constraintlayout/core/f;

    .line 135
    .line 136
    invoke-interface {v0, p1}, Landroidx/constraintlayout/core/f;->release(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_8
    iget-object v0, p0, Landroidx/constraintlayout/core/d;->n:Landroidx/constraintlayout/core/c;

    .line 141
    .line 142
    iget-object v0, v0, Landroidx/constraintlayout/core/c;->b:Landroidx/constraintlayout/core/f;

    .line 143
    .line 144
    invoke-interface {v0, p1}, Landroidx/constraintlayout/core/f;->release(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    :goto_0
    iget v0, p0, Landroidx/constraintlayout/core/d;->l:I

    .line 148
    .line 149
    sub-int/2addr v0, v3

    .line 150
    iput v0, p0, Landroidx/constraintlayout/core/d;->l:I

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_9
    move v3, v4

    .line 154
    :cond_a
    :goto_1
    invoke-virtual {p1}, Landroidx/constraintlayout/core/b;->s()Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-nez v0, :cond_b

    .line 159
    .line 160
    return-void

    .line 161
    :cond_b
    move v4, v3

    .line 162
    :cond_c
    if-nez v4, :cond_d

    .line 163
    .line 164
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/d;->l(Landroidx/constraintlayout/core/b;)V

    .line 165
    .line 166
    .line 167
    :cond_d
    return-void
.end method

.method public e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/b;
    .locals 3

    .line 1
    sget-boolean v0, Landroidx/constraintlayout/core/d;->s:Z

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    if-ne p4, v1, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p2, Landroidx/constraintlayout/core/SolverVariable;->g:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget v0, p1, Landroidx/constraintlayout/core/SolverVariable;->d:I

    .line 14
    .line 15
    const/4 v2, -0x1

    .line 16
    if-ne v0, v2, :cond_0

    .line 17
    .line 18
    iget p2, p2, Landroidx/constraintlayout/core/SolverVariable;->f:F

    .line 19
    .line 20
    int-to-float p3, p3

    .line 21
    add-float/2addr p2, p3

    .line 22
    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/core/SolverVariable;->g(Landroidx/constraintlayout/core/d;F)V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    return-object p1

    .line 27
    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/core/d;->r()Landroidx/constraintlayout/core/b;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/core/b;->n(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/b;

    .line 32
    .line 33
    .line 34
    if-eq p4, v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0, p0, p4}, Landroidx/constraintlayout/core/b;->d(Landroidx/constraintlayout/core/d;I)Landroidx/constraintlayout/core/b;

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/d;->d(Landroidx/constraintlayout/core/b;)V

    .line 40
    .line 41
    .line 42
    return-object v0
.end method

.method public f(Landroidx/constraintlayout/core/SolverVariable;I)V
    .locals 5

    .line 1
    sget-boolean v0, Landroidx/constraintlayout/core/d;->s:Z

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget v0, p1, Landroidx/constraintlayout/core/SolverVariable;->d:I

    .line 8
    .line 9
    if-ne v0, v1, :cond_2

    .line 10
    .line 11
    int-to-float p2, p2

    .line 12
    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/core/SolverVariable;->g(Landroidx/constraintlayout/core/d;F)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/core/d;->b:I

    .line 17
    .line 18
    add-int/2addr v1, v2

    .line 19
    if-ge v0, v1, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/constraintlayout/core/d;->n:Landroidx/constraintlayout/core/c;

    .line 22
    .line 23
    iget-object v1, v1, Landroidx/constraintlayout/core/c;->d:[Landroidx/constraintlayout/core/SolverVariable;

    .line 24
    .line 25
    aget-object v1, v1, v0

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    iget-boolean v3, v1, Landroidx/constraintlayout/core/SolverVariable;->n:Z

    .line 30
    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    iget v3, v1, Landroidx/constraintlayout/core/SolverVariable;->o:I

    .line 34
    .line 35
    iget v4, p1, Landroidx/constraintlayout/core/SolverVariable;->c:I

    .line 36
    .line 37
    if-ne v3, v4, :cond_0

    .line 38
    .line 39
    iget v3, v1, Landroidx/constraintlayout/core/SolverVariable;->p:F

    .line 40
    .line 41
    add-float/2addr v3, p2

    .line 42
    invoke-virtual {v1, p0, v3}, Landroidx/constraintlayout/core/SolverVariable;->g(Landroidx/constraintlayout/core/d;F)V

    .line 43
    .line 44
    .line 45
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    return-void

    .line 49
    :cond_2
    iget v0, p1, Landroidx/constraintlayout/core/SolverVariable;->d:I

    .line 50
    .line 51
    if-eq v0, v1, :cond_5

    .line 52
    .line 53
    iget-object v1, p0, Landroidx/constraintlayout/core/d;->g:[Landroidx/constraintlayout/core/b;

    .line 54
    .line 55
    aget-object v0, v1, v0

    .line 56
    .line 57
    iget-boolean v1, v0, Landroidx/constraintlayout/core/b;->f:Z

    .line 58
    .line 59
    if-eqz v1, :cond_3

    .line 60
    .line 61
    int-to-float p1, p2

    .line 62
    iput p1, v0, Landroidx/constraintlayout/core/b;->b:F

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    iget-object v1, v0, Landroidx/constraintlayout/core/b;->e:Landroidx/constraintlayout/core/b$a;

    .line 66
    .line 67
    invoke-interface {v1}, Landroidx/constraintlayout/core/b$a;->getCurrentSize()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-nez v1, :cond_4

    .line 72
    .line 73
    iput-boolean v2, v0, Landroidx/constraintlayout/core/b;->f:Z

    .line 74
    .line 75
    int-to-float p1, p2

    .line 76
    iput p1, v0, Landroidx/constraintlayout/core/b;->b:F

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_4
    invoke-virtual {p0}, Landroidx/constraintlayout/core/d;->r()Landroidx/constraintlayout/core/b;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/b;->m(Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/b;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/d;->d(Landroidx/constraintlayout/core/b;)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_5
    invoke-virtual {p0}, Landroidx/constraintlayout/core/d;->r()Landroidx/constraintlayout/core/b;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/b;->i(Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/b;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/d;->d(Landroidx/constraintlayout/core/b;)V

    .line 98
    .line 99
    .line 100
    :goto_1
    return-void
.end method

.method public g(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IZ)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/core/d;->r()Landroidx/constraintlayout/core/b;

    .line 2
    .line 3
    .line 4
    move-result-object p4

    .line 5
    invoke-virtual {p0}, Landroidx/constraintlayout/core/d;->t()Landroidx/constraintlayout/core/SolverVariable;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    iput v1, v0, Landroidx/constraintlayout/core/SolverVariable;->e:I

    .line 11
    .line 12
    invoke-virtual {p4, p1, p2, v0, p3}, Landroidx/constraintlayout/core/b;->o(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/b;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p4}, Landroidx/constraintlayout/core/d;->d(Landroidx/constraintlayout/core/b;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public h(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/core/d;->r()Landroidx/constraintlayout/core/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/constraintlayout/core/d;->t()Landroidx/constraintlayout/core/SolverVariable;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    iput v2, v1, Landroidx/constraintlayout/core/SolverVariable;->e:I

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2, v1, p3}, Landroidx/constraintlayout/core/b;->o(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/b;

    .line 13
    .line 14
    .line 15
    const/16 p1, 0x8

    .line 16
    .line 17
    if-eq p4, p1, :cond_0

    .line 18
    .line 19
    iget-object p1, v0, Landroidx/constraintlayout/core/b;->e:Landroidx/constraintlayout/core/b$a;

    .line 20
    .line 21
    invoke-interface {p1, v1}, Landroidx/constraintlayout/core/b$a;->i(Landroidx/constraintlayout/core/SolverVariable;)F

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const/high16 p2, -0x40800000    # -1.0f

    .line 26
    .line 27
    mul-float/2addr p1, p2

    .line 28
    float-to-int p1, p1

    .line 29
    invoke-virtual {p0, v0, p1, p4}, Landroidx/constraintlayout/core/d;->m(Landroidx/constraintlayout/core/b;II)V

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/d;->d(Landroidx/constraintlayout/core/b;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public i(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IZ)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/core/d;->r()Landroidx/constraintlayout/core/b;

    .line 2
    .line 3
    .line 4
    move-result-object p4

    .line 5
    invoke-virtual {p0}, Landroidx/constraintlayout/core/d;->t()Landroidx/constraintlayout/core/SolverVariable;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    iput v1, v0, Landroidx/constraintlayout/core/SolverVariable;->e:I

    .line 11
    .line 12
    invoke-virtual {p4, p1, p2, v0, p3}, Landroidx/constraintlayout/core/b;->p(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/b;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p4}, Landroidx/constraintlayout/core/d;->d(Landroidx/constraintlayout/core/b;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public j(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/core/d;->r()Landroidx/constraintlayout/core/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/constraintlayout/core/d;->t()Landroidx/constraintlayout/core/SolverVariable;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    iput v2, v1, Landroidx/constraintlayout/core/SolverVariable;->e:I

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2, v1, p3}, Landroidx/constraintlayout/core/b;->p(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/b;

    .line 13
    .line 14
    .line 15
    const/16 p1, 0x8

    .line 16
    .line 17
    if-eq p4, p1, :cond_0

    .line 18
    .line 19
    iget-object p1, v0, Landroidx/constraintlayout/core/b;->e:Landroidx/constraintlayout/core/b$a;

    .line 20
    .line 21
    invoke-interface {p1, v1}, Landroidx/constraintlayout/core/b$a;->i(Landroidx/constraintlayout/core/SolverVariable;)F

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const/high16 p2, -0x40800000    # -1.0f

    .line 26
    .line 27
    mul-float/2addr p1, p2

    .line 28
    float-to-int p1, p1

    .line 29
    invoke-virtual {p0, v0, p1, p4}, Landroidx/constraintlayout/core/d;->m(Landroidx/constraintlayout/core/b;II)V

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/d;->d(Landroidx/constraintlayout/core/b;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public k(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;FI)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/core/d;->r()Landroidx/constraintlayout/core/b;

    .line 2
    .line 3
    .line 4
    move-result-object v6

    .line 5
    move-object v0, v6

    .line 6
    move-object v1, p1

    .line 7
    move-object v2, p2

    .line 8
    move-object v3, p3

    .line 9
    move-object v4, p4

    .line 10
    move v5, p5

    .line 11
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/b;->k(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;F)Landroidx/constraintlayout/core/b;

    .line 12
    .line 13
    .line 14
    const/16 p1, 0x8

    .line 15
    .line 16
    if-eq p6, p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v6, p0, p6}, Landroidx/constraintlayout/core/b;->d(Landroidx/constraintlayout/core/d;I)Landroidx/constraintlayout/core/b;

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0, v6}, Landroidx/constraintlayout/core/d;->d(Landroidx/constraintlayout/core/b;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method m(Landroidx/constraintlayout/core/b;II)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p3, v0}, Landroidx/constraintlayout/core/d;->o(ILjava/lang/String;)Landroidx/constraintlayout/core/SolverVariable;

    .line 3
    .line 4
    .line 5
    move-result-object p3

    .line 6
    invoke-virtual {p1, p3, p2}, Landroidx/constraintlayout/core/b;->e(Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/b;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public o(ILjava/lang/String;)Landroidx/constraintlayout/core/SolverVariable;
    .locals 5

    .line 1
    sget-object v0, Landroidx/constraintlayout/core/d;->x:Landroidx/constraintlayout/core/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-wide v1, v0, Landroidx/constraintlayout/core/e;->l:J

    .line 6
    .line 7
    const-wide/16 v3, 0x1

    .line 8
    .line 9
    add-long/2addr v1, v3

    .line 10
    iput-wide v1, v0, Landroidx/constraintlayout/core/e;->l:J

    .line 11
    .line 12
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/core/d;->k:I

    .line 13
    .line 14
    add-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    iget v1, p0, Landroidx/constraintlayout/core/d;->f:I

    .line 17
    .line 18
    if-lt v0, v1, :cond_1

    .line 19
    .line 20
    invoke-direct {p0}, Landroidx/constraintlayout/core/d;->z()V

    .line 21
    .line 22
    .line 23
    :cond_1
    sget-object v0, Landroidx/constraintlayout/core/SolverVariable$Type;->ERROR:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 24
    .line 25
    invoke-direct {p0, v0, p2}, Landroidx/constraintlayout/core/d;->a(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/core/SolverVariable;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    iget v0, p0, Landroidx/constraintlayout/core/d;->b:I

    .line 30
    .line 31
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    iput v0, p0, Landroidx/constraintlayout/core/d;->b:I

    .line 34
    .line 35
    iget v1, p0, Landroidx/constraintlayout/core/d;->k:I

    .line 36
    .line 37
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    iput v1, p0, Landroidx/constraintlayout/core/d;->k:I

    .line 40
    .line 41
    iput v0, p2, Landroidx/constraintlayout/core/SolverVariable;->c:I

    .line 42
    .line 43
    iput p1, p2, Landroidx/constraintlayout/core/SolverVariable;->e:I

    .line 44
    .line 45
    iget-object p1, p0, Landroidx/constraintlayout/core/d;->n:Landroidx/constraintlayout/core/c;

    .line 46
    .line 47
    iget-object p1, p1, Landroidx/constraintlayout/core/c;->d:[Landroidx/constraintlayout/core/SolverVariable;

    .line 48
    .line 49
    aput-object p2, p1, v0

    .line 50
    .line 51
    iget-object p1, p0, Landroidx/constraintlayout/core/d;->d:Landroidx/constraintlayout/core/d$a;

    .line 52
    .line 53
    invoke-interface {p1, p2}, Landroidx/constraintlayout/core/d$a;->c(Landroidx/constraintlayout/core/SolverVariable;)V

    .line 54
    .line 55
    .line 56
    return-object p2
.end method

.method public p()Landroidx/constraintlayout/core/SolverVariable;
    .locals 5

    .line 1
    sget-object v0, Landroidx/constraintlayout/core/d;->x:Landroidx/constraintlayout/core/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-wide v1, v0, Landroidx/constraintlayout/core/e;->n:J

    .line 6
    .line 7
    const-wide/16 v3, 0x1

    .line 8
    .line 9
    add-long/2addr v1, v3

    .line 10
    iput-wide v1, v0, Landroidx/constraintlayout/core/e;->n:J

    .line 11
    .line 12
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/core/d;->k:I

    .line 13
    .line 14
    add-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    iget v1, p0, Landroidx/constraintlayout/core/d;->f:I

    .line 17
    .line 18
    if-lt v0, v1, :cond_1

    .line 19
    .line 20
    invoke-direct {p0}, Landroidx/constraintlayout/core/d;->z()V

    .line 21
    .line 22
    .line 23
    :cond_1
    sget-object v0, Landroidx/constraintlayout/core/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/d;->a(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/core/SolverVariable;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget v1, p0, Landroidx/constraintlayout/core/d;->b:I

    .line 31
    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    iput v1, p0, Landroidx/constraintlayout/core/d;->b:I

    .line 35
    .line 36
    iget v2, p0, Landroidx/constraintlayout/core/d;->k:I

    .line 37
    .line 38
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    iput v2, p0, Landroidx/constraintlayout/core/d;->k:I

    .line 41
    .line 42
    iput v1, v0, Landroidx/constraintlayout/core/SolverVariable;->c:I

    .line 43
    .line 44
    iget-object v2, p0, Landroidx/constraintlayout/core/d;->n:Landroidx/constraintlayout/core/c;

    .line 45
    .line 46
    iget-object v2, v2, Landroidx/constraintlayout/core/c;->d:[Landroidx/constraintlayout/core/SolverVariable;

    .line 47
    .line 48
    aput-object v0, v2, v1

    .line 49
    .line 50
    return-object v0
.end method

.method public q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    iget v1, p0, Landroidx/constraintlayout/core/d;->k:I

    .line 6
    .line 7
    add-int/lit8 v1, v1, 0x1

    .line 8
    .line 9
    iget v2, p0, Landroidx/constraintlayout/core/d;->f:I

    .line 10
    .line 11
    if-lt v1, v2, :cond_1

    .line 12
    .line 13
    invoke-direct {p0}, Landroidx/constraintlayout/core/d;->z()V

    .line 14
    .line 15
    .line 16
    :cond_1
    instance-of v1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 17
    .line 18
    if-eqz v1, :cond_5

    .line 19
    .line 20
    check-cast p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i()Landroidx/constraintlayout/core/SolverVariable;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    iget-object v0, p0, Landroidx/constraintlayout/core/d;->n:Landroidx/constraintlayout/core/c;

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->s(Landroidx/constraintlayout/core/c;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i()Landroidx/constraintlayout/core/SolverVariable;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    move-object v0, p1

    .line 38
    :cond_2
    iget p1, v0, Landroidx/constraintlayout/core/SolverVariable;->c:I

    .line 39
    .line 40
    const/4 v1, -0x1

    .line 41
    if-eq p1, v1, :cond_3

    .line 42
    .line 43
    iget v2, p0, Landroidx/constraintlayout/core/d;->b:I

    .line 44
    .line 45
    if-gt p1, v2, :cond_3

    .line 46
    .line 47
    iget-object v2, p0, Landroidx/constraintlayout/core/d;->n:Landroidx/constraintlayout/core/c;

    .line 48
    .line 49
    iget-object v2, v2, Landroidx/constraintlayout/core/c;->d:[Landroidx/constraintlayout/core/SolverVariable;

    .line 50
    .line 51
    aget-object v2, v2, p1

    .line 52
    .line 53
    if-nez v2, :cond_5

    .line 54
    .line 55
    :cond_3
    if-eq p1, v1, :cond_4

    .line 56
    .line 57
    invoke-virtual {v0}, Landroidx/constraintlayout/core/SolverVariable;->f()V

    .line 58
    .line 59
    .line 60
    :cond_4
    iget p1, p0, Landroidx/constraintlayout/core/d;->b:I

    .line 61
    .line 62
    add-int/lit8 p1, p1, 0x1

    .line 63
    .line 64
    iput p1, p0, Landroidx/constraintlayout/core/d;->b:I

    .line 65
    .line 66
    iget v1, p0, Landroidx/constraintlayout/core/d;->k:I

    .line 67
    .line 68
    add-int/lit8 v1, v1, 0x1

    .line 69
    .line 70
    iput v1, p0, Landroidx/constraintlayout/core/d;->k:I

    .line 71
    .line 72
    iput p1, v0, Landroidx/constraintlayout/core/SolverVariable;->c:I

    .line 73
    .line 74
    sget-object v1, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 75
    .line 76
    iput-object v1, v0, Landroidx/constraintlayout/core/SolverVariable;->j:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 77
    .line 78
    iget-object v1, p0, Landroidx/constraintlayout/core/d;->n:Landroidx/constraintlayout/core/c;

    .line 79
    .line 80
    iget-object v1, v1, Landroidx/constraintlayout/core/c;->d:[Landroidx/constraintlayout/core/SolverVariable;

    .line 81
    .line 82
    aput-object v0, v1, p1

    .line 83
    .line 84
    :cond_5
    return-object v0
.end method

.method public r()Landroidx/constraintlayout/core/b;
    .locals 5

    .line 1
    sget-boolean v0, Landroidx/constraintlayout/core/d;->v:Z

    .line 2
    .line 3
    const-wide/16 v1, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/constraintlayout/core/d;->n:Landroidx/constraintlayout/core/c;

    .line 8
    .line 9
    iget-object v0, v0, Landroidx/constraintlayout/core/c;->a:Landroidx/constraintlayout/core/f;

    .line 10
    .line 11
    invoke-interface {v0}, Landroidx/constraintlayout/core/f;->acquire()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroidx/constraintlayout/core/b;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    new-instance v0, Landroidx/constraintlayout/core/d$b;

    .line 20
    .line 21
    iget-object v3, p0, Landroidx/constraintlayout/core/d;->n:Landroidx/constraintlayout/core/c;

    .line 22
    .line 23
    invoke-direct {v0, p0, v3}, Landroidx/constraintlayout/core/d$b;-><init>(Landroidx/constraintlayout/core/d;Landroidx/constraintlayout/core/c;)V

    .line 24
    .line 25
    .line 26
    sget-wide v3, Landroidx/constraintlayout/core/d;->z:J

    .line 27
    .line 28
    add-long/2addr v3, v1

    .line 29
    sput-wide v3, Landroidx/constraintlayout/core/d;->z:J

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v0}, Landroidx/constraintlayout/core/b;->y()V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/core/d;->n:Landroidx/constraintlayout/core/c;

    .line 37
    .line 38
    iget-object v0, v0, Landroidx/constraintlayout/core/c;->b:Landroidx/constraintlayout/core/f;

    .line 39
    .line 40
    invoke-interface {v0}, Landroidx/constraintlayout/core/f;->acquire()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Landroidx/constraintlayout/core/b;

    .line 45
    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    new-instance v0, Landroidx/constraintlayout/core/b;

    .line 49
    .line 50
    iget-object v3, p0, Landroidx/constraintlayout/core/d;->n:Landroidx/constraintlayout/core/c;

    .line 51
    .line 52
    invoke-direct {v0, v3}, Landroidx/constraintlayout/core/b;-><init>(Landroidx/constraintlayout/core/c;)V

    .line 53
    .line 54
    .line 55
    sget-wide v3, Landroidx/constraintlayout/core/d;->y:J

    .line 56
    .line 57
    add-long/2addr v3, v1

    .line 58
    sput-wide v3, Landroidx/constraintlayout/core/d;->y:J

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {v0}, Landroidx/constraintlayout/core/b;->y()V

    .line 62
    .line 63
    .line 64
    :goto_0
    invoke-static {}, Landroidx/constraintlayout/core/SolverVariable;->d()V

    .line 65
    .line 66
    .line 67
    return-object v0
.end method

.method public t()Landroidx/constraintlayout/core/SolverVariable;
    .locals 5

    .line 1
    sget-object v0, Landroidx/constraintlayout/core/d;->x:Landroidx/constraintlayout/core/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-wide v1, v0, Landroidx/constraintlayout/core/e;->m:J

    .line 6
    .line 7
    const-wide/16 v3, 0x1

    .line 8
    .line 9
    add-long/2addr v1, v3

    .line 10
    iput-wide v1, v0, Landroidx/constraintlayout/core/e;->m:J

    .line 11
    .line 12
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/core/d;->k:I

    .line 13
    .line 14
    add-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    iget v1, p0, Landroidx/constraintlayout/core/d;->f:I

    .line 17
    .line 18
    if-lt v0, v1, :cond_1

    .line 19
    .line 20
    invoke-direct {p0}, Landroidx/constraintlayout/core/d;->z()V

    .line 21
    .line 22
    .line 23
    :cond_1
    sget-object v0, Landroidx/constraintlayout/core/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/d;->a(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/core/SolverVariable;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget v1, p0, Landroidx/constraintlayout/core/d;->b:I

    .line 31
    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    iput v1, p0, Landroidx/constraintlayout/core/d;->b:I

    .line 35
    .line 36
    iget v2, p0, Landroidx/constraintlayout/core/d;->k:I

    .line 37
    .line 38
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    iput v2, p0, Landroidx/constraintlayout/core/d;->k:I

    .line 41
    .line 42
    iput v1, v0, Landroidx/constraintlayout/core/SolverVariable;->c:I

    .line 43
    .line 44
    iget-object v2, p0, Landroidx/constraintlayout/core/d;->n:Landroidx/constraintlayout/core/c;

    .line 45
    .line 46
    iget-object v2, v2, Landroidx/constraintlayout/core/c;->d:[Landroidx/constraintlayout/core/SolverVariable;

    .line 47
    .line 48
    aput-object v0, v2, v1

    .line 49
    .line 50
    return-object v0
.end method

.method public v(Landroidx/constraintlayout/core/e;)V
    .locals 0

    .line 1
    sput-object p1, Landroidx/constraintlayout/core/d;->x:Landroidx/constraintlayout/core/e;

    .line 2
    .line 3
    return-void
.end method

.method public w()Landroidx/constraintlayout/core/c;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/d;->n:Landroidx/constraintlayout/core/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public y(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i()Landroidx/constraintlayout/core/SolverVariable;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget p1, p1, Landroidx/constraintlayout/core/SolverVariable;->f:F

    .line 10
    .line 11
    const/high16 v0, 0x3f000000    # 0.5f

    .line 12
    .line 13
    add-float/2addr p1, v0

    .line 14
    float-to-int p1, p1

    .line 15
    return p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1
.end method
