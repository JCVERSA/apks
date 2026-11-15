.class public Landroidx/constraintlayout/core/widgets/d;
.super Lt0/c;
.source "source.java"


# instance fields
.field public A1:Landroidx/constraintlayout/core/widgets/analyzer/b$a;

.field W0:Landroidx/constraintlayout/core/widgets/analyzer/b;

.field public X0:Landroidx/constraintlayout/core/widgets/analyzer/d;

.field private Y0:I

.field protected Z0:Landroidx/constraintlayout/core/widgets/analyzer/b$b;

.field private a1:Z

.field public b1:Landroidx/constraintlayout/core/e;

.field protected c1:Landroidx/constraintlayout/core/d;

.field d1:I

.field e1:I

.field f1:I

.field g1:I

.field public h1:I

.field public i1:I

.field j1:[Landroidx/constraintlayout/core/widgets/c;

.field k1:[Landroidx/constraintlayout/core/widgets/c;

.field public l1:Z

.field public m1:Z

.field public n1:Z

.field public o1:I

.field public p1:I

.field private q1:I

.field public r1:Z

.field private s1:Z

.field private t1:Z

.field u1:I

.field private v1:Ljava/lang/ref/WeakReference;

.field private w1:Ljava/lang/ref/WeakReference;

.field private x1:Ljava/lang/ref/WeakReference;

.field private y1:Ljava/lang/ref/WeakReference;

.field z1:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lt0/c;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/b;-><init>(Landroidx/constraintlayout/core/widgets/d;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/d;->W0:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 10
    .line 11
    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/d;-><init>(Landroidx/constraintlayout/core/widgets/d;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/d;->X0:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/d;->Z0:Landroidx/constraintlayout/core/widgets/analyzer/b$b;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/d;->a1:Z

    .line 23
    .line 24
    new-instance v2, Landroidx/constraintlayout/core/d;

    .line 25
    .line 26
    invoke-direct {v2}, Landroidx/constraintlayout/core/d;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/d;->c1:Landroidx/constraintlayout/core/d;

    .line 30
    .line 31
    iput v1, p0, Landroidx/constraintlayout/core/widgets/d;->h1:I

    .line 32
    .line 33
    iput v1, p0, Landroidx/constraintlayout/core/widgets/d;->i1:I

    .line 34
    .line 35
    const/4 v2, 0x4

    .line 36
    new-array v3, v2, [Landroidx/constraintlayout/core/widgets/c;

    .line 37
    .line 38
    iput-object v3, p0, Landroidx/constraintlayout/core/widgets/d;->j1:[Landroidx/constraintlayout/core/widgets/c;

    .line 39
    .line 40
    new-array v2, v2, [Landroidx/constraintlayout/core/widgets/c;

    .line 41
    .line 42
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/d;->k1:[Landroidx/constraintlayout/core/widgets/c;

    .line 43
    .line 44
    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/d;->l1:Z

    .line 45
    .line 46
    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/d;->m1:Z

    .line 47
    .line 48
    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/d;->n1:Z

    .line 49
    .line 50
    iput v1, p0, Landroidx/constraintlayout/core/widgets/d;->o1:I

    .line 51
    .line 52
    iput v1, p0, Landroidx/constraintlayout/core/widgets/d;->p1:I

    .line 53
    .line 54
    const/16 v2, 0x101

    .line 55
    .line 56
    iput v2, p0, Landroidx/constraintlayout/core/widgets/d;->q1:I

    .line 57
    .line 58
    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/d;->r1:Z

    .line 59
    .line 60
    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/d;->s1:Z

    .line 61
    .line 62
    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/d;->t1:Z

    .line 63
    .line 64
    iput v1, p0, Landroidx/constraintlayout/core/widgets/d;->u1:I

    .line 65
    .line 66
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/d;->v1:Ljava/lang/ref/WeakReference;

    .line 67
    .line 68
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/d;->w1:Ljava/lang/ref/WeakReference;

    .line 69
    .line 70
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/d;->x1:Ljava/lang/ref/WeakReference;

    .line 71
    .line 72
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/d;->y1:Ljava/lang/ref/WeakReference;

    .line 73
    .line 74
    new-instance v0, Ljava/util/HashSet;

    .line 75
    .line 76
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/d;->z1:Ljava/util/HashSet;

    .line 80
    .line 81
    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/b$a;

    .line 82
    .line 83
    invoke-direct {v0}, Landroidx/constraintlayout/core/widgets/analyzer/b$a;-><init>()V

    .line 84
    .line 85
    .line 86
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/d;->A1:Landroidx/constraintlayout/core/widgets/analyzer/b$a;

    .line 87
    .line 88
    return-void
.end method

.method private B1(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .locals 5

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/widgets/d;->h1:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/d;->k1:[Landroidx/constraintlayout/core/widgets/c;

    .line 6
    .line 7
    array-length v2, v1

    .line 8
    if-lt v0, v2, :cond_0

    .line 9
    .line 10
    array-length v0, v1

    .line 11
    mul-int/lit8 v0, v0, 0x2

    .line 12
    .line 13
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, [Landroidx/constraintlayout/core/widgets/c;

    .line 18
    .line 19
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/d;->k1:[Landroidx/constraintlayout/core/widgets/c;

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/d;->k1:[Landroidx/constraintlayout/core/widgets/c;

    .line 22
    .line 23
    iget v1, p0, Landroidx/constraintlayout/core/widgets/d;->h1:I

    .line 24
    .line 25
    new-instance v2, Landroidx/constraintlayout/core/widgets/c;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/d;->U1()Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    invoke-direct {v2, p1, v3, v4}, Landroidx/constraintlayout/core/widgets/c;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;IZ)V

    .line 33
    .line 34
    .line 35
    aput-object v2, v0, v1

    .line 36
    .line 37
    iget p1, p0, Landroidx/constraintlayout/core/widgets/d;->h1:I

    .line 38
    .line 39
    add-int/lit8 p1, p1, 0x1

    .line 40
    .line 41
    iput p1, p0, Landroidx/constraintlayout/core/widgets/d;->h1:I

    .line 42
    .line 43
    return-void
.end method

.method private E1(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/SolverVariable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/d;->c1:Landroidx/constraintlayout/core/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/d;->c1:Landroidx/constraintlayout/core/d;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x5

    .line 11
    invoke-virtual {v0, p2, p1, v1, v2}, Landroidx/constraintlayout/core/d;->h(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private F1(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/SolverVariable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/d;->c1:Landroidx/constraintlayout/core/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/d;->c1:Landroidx/constraintlayout/core/d;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x5

    .line 11
    invoke-virtual {v0, p1, p2, v1, v2}, Landroidx/constraintlayout/core/d;->h(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private G1(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .locals 5

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/widgets/d;->i1:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/d;->j1:[Landroidx/constraintlayout/core/widgets/c;

    .line 6
    .line 7
    array-length v3, v2

    .line 8
    if-lt v0, v3, :cond_0

    .line 9
    .line 10
    array-length v0, v2

    .line 11
    mul-int/lit8 v0, v0, 0x2

    .line 12
    .line 13
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, [Landroidx/constraintlayout/core/widgets/c;

    .line 18
    .line 19
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/d;->j1:[Landroidx/constraintlayout/core/widgets/c;

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/d;->j1:[Landroidx/constraintlayout/core/widgets/c;

    .line 22
    .line 23
    iget v2, p0, Landroidx/constraintlayout/core/widgets/d;->i1:I

    .line 24
    .line 25
    new-instance v3, Landroidx/constraintlayout/core/widgets/c;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/d;->U1()Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    invoke-direct {v3, p1, v1, v4}, Landroidx/constraintlayout/core/widgets/c;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;IZ)V

    .line 32
    .line 33
    .line 34
    aput-object v3, v0, v2

    .line 35
    .line 36
    iget p1, p0, Landroidx/constraintlayout/core/widgets/d;->i1:I

    .line 37
    .line 38
    add-int/2addr p1, v1

    .line 39
    iput p1, p0, Landroidx/constraintlayout/core/widgets/d;->i1:I

    .line 40
    .line 41
    return-void
.end method

.method public static X1(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/b$b;Landroidx/constraintlayout/core/widgets/analyzer/b$a;I)Z
    .locals 5

    .line 1
    const/4 p0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    return p0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    if-eq v0, v1, :cond_13

    .line 12
    .line 13
    instance-of v0, p1, Landroidx/constraintlayout/core/widgets/f;

    .line 14
    .line 15
    if-nez v0, :cond_13

    .line 16
    .line 17
    instance-of v0, p1, Landroidx/constraintlayout/core/widgets/a;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    goto/16 :goto_8

    .line 22
    .line 23
    :cond_1
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->C()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p3, Landroidx/constraintlayout/core/widgets/analyzer/b$a;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p3, Landroidx/constraintlayout/core/widgets/analyzer/b$a;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iput v0, p3, Landroidx/constraintlayout/core/widgets/analyzer/b$a;->c:I

    .line 40
    .line 41
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iput v0, p3, Landroidx/constraintlayout/core/widgets/analyzer/b$a;->d:I

    .line 46
    .line 47
    iput-boolean p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/b$a;->i:Z

    .line 48
    .line 49
    iput p4, p3, Landroidx/constraintlayout/core/widgets/analyzer/b$a;->j:I

    .line 50
    .line 51
    iget-object p4, p3, Landroidx/constraintlayout/core/widgets/analyzer/b$a;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 52
    .line 53
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 54
    .line 55
    const/4 v1, 0x1

    .line 56
    if-ne p4, v0, :cond_2

    .line 57
    .line 58
    move p4, v1

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    move p4, p0

    .line 61
    :goto_0
    iget-object v2, p3, Landroidx/constraintlayout/core/widgets/analyzer/b$a;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 62
    .line 63
    if-ne v2, v0, :cond_3

    .line 64
    .line 65
    move v0, v1

    .line 66
    goto :goto_1

    .line 67
    :cond_3
    move v0, p0

    .line 68
    :goto_1
    const/4 v2, 0x0

    .line 69
    if-eqz p4, :cond_4

    .line 70
    .line 71
    iget v3, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f0:F

    .line 72
    .line 73
    cmpl-float v3, v3, v2

    .line 74
    .line 75
    if-lez v3, :cond_4

    .line 76
    .line 77
    move v3, v1

    .line 78
    goto :goto_2

    .line 79
    :cond_4
    move v3, p0

    .line 80
    :goto_2
    if-eqz v0, :cond_5

    .line 81
    .line 82
    iget v4, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f0:F

    .line 83
    .line 84
    cmpl-float v2, v4, v2

    .line 85
    .line 86
    if-lez v2, :cond_5

    .line 87
    .line 88
    move v2, v1

    .line 89
    goto :goto_3

    .line 90
    :cond_5
    move v2, p0

    .line 91
    :goto_3
    if-eqz p4, :cond_7

    .line 92
    .line 93
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0(I)Z

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    if-eqz v4, :cond_7

    .line 98
    .line 99
    iget v4, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w:I

    .line 100
    .line 101
    if-nez v4, :cond_7

    .line 102
    .line 103
    if-nez v3, :cond_7

    .line 104
    .line 105
    sget-object p4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 106
    .line 107
    iput-object p4, p3, Landroidx/constraintlayout/core/widgets/analyzer/b$a;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 108
    .line 109
    if-eqz v0, :cond_6

    .line 110
    .line 111
    iget p4, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x:I

    .line 112
    .line 113
    if-nez p4, :cond_6

    .line 114
    .line 115
    sget-object p4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 116
    .line 117
    iput-object p4, p3, Landroidx/constraintlayout/core/widgets/analyzer/b$a;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 118
    .line 119
    :cond_6
    move p4, p0

    .line 120
    :cond_7
    if-eqz v0, :cond_9

    .line 121
    .line 122
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0(I)Z

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    if-eqz v4, :cond_9

    .line 127
    .line 128
    iget v4, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x:I

    .line 129
    .line 130
    if-nez v4, :cond_9

    .line 131
    .line 132
    if-nez v2, :cond_9

    .line 133
    .line 134
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 135
    .line 136
    iput-object v0, p3, Landroidx/constraintlayout/core/widgets/analyzer/b$a;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 137
    .line 138
    if-eqz p4, :cond_8

    .line 139
    .line 140
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w:I

    .line 141
    .line 142
    if-nez v0, :cond_8

    .line 143
    .line 144
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 145
    .line 146
    iput-object v0, p3, Landroidx/constraintlayout/core/widgets/analyzer/b$a;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 147
    .line 148
    :cond_8
    move v0, p0

    .line 149
    :cond_9
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p0()Z

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    if-eqz v4, :cond_a

    .line 154
    .line 155
    sget-object p4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 156
    .line 157
    iput-object p4, p3, Landroidx/constraintlayout/core/widgets/analyzer/b$a;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 158
    .line 159
    move p4, p0

    .line 160
    :cond_a
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q0()Z

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    if-eqz v4, :cond_b

    .line 165
    .line 166
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 167
    .line 168
    iput-object v0, p3, Landroidx/constraintlayout/core/widgets/analyzer/b$a;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 169
    .line 170
    move v0, p0

    .line 171
    :cond_b
    const/4 v4, 0x4

    .line 172
    if-eqz v3, :cond_e

    .line 173
    .line 174
    iget-object v3, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->y:[I

    .line 175
    .line 176
    aget p0, v3, p0

    .line 177
    .line 178
    if-ne p0, v4, :cond_c

    .line 179
    .line 180
    sget-object p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 181
    .line 182
    iput-object p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/b$a;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 183
    .line 184
    goto :goto_5

    .line 185
    :cond_c
    if-nez v0, :cond_e

    .line 186
    .line 187
    iget-object p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/b$a;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 188
    .line 189
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 190
    .line 191
    if-ne p0, v0, :cond_d

    .line 192
    .line 193
    iget p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/b$a;->d:I

    .line 194
    .line 195
    goto :goto_4

    .line 196
    :cond_d
    sget-object p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 197
    .line 198
    iput-object p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/b$a;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 199
    .line 200
    invoke-interface {p2, p1, p3}, Landroidx/constraintlayout/core/widgets/analyzer/b$b;->b(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/b$a;)V

    .line 201
    .line 202
    .line 203
    iget p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/b$a;->f:I

    .line 204
    .line 205
    :goto_4
    iput-object v0, p3, Landroidx/constraintlayout/core/widgets/analyzer/b$a;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 206
    .line 207
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()F

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    int-to-float p0, p0

    .line 212
    mul-float/2addr v0, p0

    .line 213
    float-to-int p0, v0

    .line 214
    iput p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/b$a;->c:I

    .line 215
    .line 216
    :cond_e
    :goto_5
    if-eqz v2, :cond_12

    .line 217
    .line 218
    iget-object p0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->y:[I

    .line 219
    .line 220
    aget p0, p0, v1

    .line 221
    .line 222
    if-ne p0, v4, :cond_f

    .line 223
    .line 224
    sget-object p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 225
    .line 226
    iput-object p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/b$a;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 227
    .line 228
    goto :goto_7

    .line 229
    :cond_f
    if-nez p4, :cond_12

    .line 230
    .line 231
    iget-object p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/b$a;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 232
    .line 233
    sget-object p4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 234
    .line 235
    if-ne p0, p4, :cond_10

    .line 236
    .line 237
    iget p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/b$a;->c:I

    .line 238
    .line 239
    goto :goto_6

    .line 240
    :cond_10
    sget-object p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 241
    .line 242
    iput-object p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/b$a;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 243
    .line 244
    invoke-interface {p2, p1, p3}, Landroidx/constraintlayout/core/widgets/analyzer/b$b;->b(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/b$a;)V

    .line 245
    .line 246
    .line 247
    iget p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/b$a;->e:I

    .line 248
    .line 249
    :goto_6
    iput-object p4, p3, Landroidx/constraintlayout/core/widgets/analyzer/b$a;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 250
    .line 251
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->y()I

    .line 252
    .line 253
    .line 254
    move-result p4

    .line 255
    const/4 v0, -0x1

    .line 256
    if-ne p4, v0, :cond_11

    .line 257
    .line 258
    int-to-float p0, p0

    .line 259
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()F

    .line 260
    .line 261
    .line 262
    move-result p4

    .line 263
    div-float/2addr p0, p4

    .line 264
    float-to-int p0, p0

    .line 265
    iput p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/b$a;->d:I

    .line 266
    .line 267
    goto :goto_7

    .line 268
    :cond_11
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()F

    .line 269
    .line 270
    .line 271
    move-result p4

    .line 272
    int-to-float p0, p0

    .line 273
    mul-float/2addr p4, p0

    .line 274
    float-to-int p0, p4

    .line 275
    iput p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/b$a;->d:I

    .line 276
    .line 277
    :cond_12
    :goto_7
    invoke-interface {p2, p1, p3}, Landroidx/constraintlayout/core/widgets/analyzer/b$b;->b(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/b$a;)V

    .line 278
    .line 279
    .line 280
    iget p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/b$a;->e:I

    .line 281
    .line 282
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o1(I)V

    .line 283
    .line 284
    .line 285
    iget p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/b$a;->f:I

    .line 286
    .line 287
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->P0(I)V

    .line 288
    .line 289
    .line 290
    iget-boolean p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/b$a;->h:Z

    .line 291
    .line 292
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->O0(Z)V

    .line 293
    .line 294
    .line 295
    iget p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/b$a;->g:I

    .line 296
    .line 297
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->E0(I)V

    .line 298
    .line 299
    .line 300
    sget p0, Landroidx/constraintlayout/core/widgets/analyzer/b$a;->k:I

    .line 301
    .line 302
    iput p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/b$a;->j:I

    .line 303
    .line 304
    iget-boolean p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/b$a;->i:Z

    .line 305
    .line 306
    return p0

    .line 307
    :cond_13
    :goto_8
    iput p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/b$a;->e:I

    .line 308
    .line 309
    iput p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/b$a;->f:I

    .line 310
    .line 311
    return p0
.end method

.method private Z1()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/constraintlayout/core/widgets/d;->h1:I

    .line 3
    .line 4
    iput v0, p0, Landroidx/constraintlayout/core/widgets/d;->i1:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public A1(Landroidx/constraintlayout/core/d;)Z
    .locals 12

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/d;->Y1(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/d;Z)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lt0/c;->V0:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    move v3, v2

    .line 18
    move v4, v3

    .line 19
    :goto_0
    const/4 v5, 0x1

    .line 20
    if-ge v3, v1, :cond_1

    .line 21
    .line 22
    iget-object v6, p0, Lt0/c;->V0:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 29
    .line 30
    invoke-virtual {v6, v2, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W0(IZ)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v6, v5, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W0(IZ)V

    .line 34
    .line 35
    .line 36
    instance-of v6, v6, Landroidx/constraintlayout/core/widgets/a;

    .line 37
    .line 38
    if-eqz v6, :cond_0

    .line 39
    .line 40
    move v4, v5

    .line 41
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    if-eqz v4, :cond_3

    .line 45
    .line 46
    move v3, v2

    .line 47
    :goto_1
    if-ge v3, v1, :cond_3

    .line 48
    .line 49
    iget-object v4, p0, Lt0/c;->V0:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 56
    .line 57
    instance-of v6, v4, Landroidx/constraintlayout/core/widgets/a;

    .line 58
    .line 59
    if-eqz v6, :cond_2

    .line 60
    .line 61
    check-cast v4, Landroidx/constraintlayout/core/widgets/a;

    .line 62
    .line 63
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/a;->C1()V

    .line 64
    .line 65
    .line 66
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/d;->z1:Ljava/util/HashSet;

    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 72
    .line 73
    .line 74
    move v3, v2

    .line 75
    :goto_2
    if-ge v3, v1, :cond_6

    .line 76
    .line 77
    iget-object v4, p0, Lt0/c;->V0:Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 84
    .line 85
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f()Z

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    if-eqz v6, :cond_5

    .line 90
    .line 91
    instance-of v6, v4, Landroidx/constraintlayout/core/widgets/i;

    .line 92
    .line 93
    if-eqz v6, :cond_4

    .line 94
    .line 95
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/d;->z1:Ljava/util/HashSet;

    .line 96
    .line 97
    invoke-virtual {v6, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_4
    invoke-virtual {v4, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/d;Z)V

    .line 102
    .line 103
    .line 104
    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_6
    :goto_4
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/d;->z1:Ljava/util/HashSet;

    .line 108
    .line 109
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    if-lez v3, :cond_a

    .line 114
    .line 115
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/d;->z1:Ljava/util/HashSet;

    .line 116
    .line 117
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/d;->z1:Ljava/util/HashSet;

    .line 122
    .line 123
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    .line 129
    .line 130
    move-result v6

    .line 131
    if-eqz v6, :cond_8

    .line 132
    .line 133
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 138
    .line 139
    check-cast v6, Landroidx/constraintlayout/core/widgets/i;

    .line 140
    .line 141
    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/d;->z1:Ljava/util/HashSet;

    .line 142
    .line 143
    invoke-virtual {v6, v7}, Landroidx/constraintlayout/core/widgets/i;->z1(Ljava/util/HashSet;)Z

    .line 144
    .line 145
    .line 146
    move-result v7

    .line 147
    if-eqz v7, :cond_7

    .line 148
    .line 149
    invoke-virtual {v6, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/d;Z)V

    .line 150
    .line 151
    .line 152
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/d;->z1:Ljava/util/HashSet;

    .line 153
    .line 154
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    :cond_8
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/d;->z1:Ljava/util/HashSet;

    .line 158
    .line 159
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    .line 160
    .line 161
    .line 162
    move-result v4

    .line 163
    if-ne v3, v4, :cond_6

    .line 164
    .line 165
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/d;->z1:Ljava/util/HashSet;

    .line 166
    .line 167
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 172
    .line 173
    .line 174
    move-result v4

    .line 175
    if-eqz v4, :cond_9

    .line 176
    .line 177
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 182
    .line 183
    invoke-virtual {v4, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/d;Z)V

    .line 184
    .line 185
    .line 186
    goto :goto_5

    .line 187
    :cond_9
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/d;->z1:Ljava/util/HashSet;

    .line 188
    .line 189
    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 190
    .line 191
    .line 192
    goto :goto_4

    .line 193
    :cond_a
    sget-boolean v3, Landroidx/constraintlayout/core/d;->r:Z

    .line 194
    .line 195
    if-eqz v3, :cond_e

    .line 196
    .line 197
    new-instance v3, Ljava/util/HashSet;

    .line 198
    .line 199
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 200
    .line 201
    .line 202
    move v4, v2

    .line 203
    :goto_6
    if-ge v4, v1, :cond_c

    .line 204
    .line 205
    iget-object v6, p0, Lt0/c;->V0:Ljava/util/ArrayList;

    .line 206
    .line 207
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v6

    .line 211
    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 212
    .line 213
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f()Z

    .line 214
    .line 215
    .line 216
    move-result v7

    .line 217
    if-nez v7, :cond_b

    .line 218
    .line 219
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    :cond_b
    add-int/lit8 v4, v4, 0x1

    .line 223
    .line 224
    goto :goto_6

    .line 225
    :cond_c
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->C()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 230
    .line 231
    if-ne v1, v4, :cond_d

    .line 232
    .line 233
    move v10, v2

    .line 234
    goto :goto_7

    .line 235
    :cond_d
    move v10, v5

    .line 236
    :goto_7
    const/4 v11, 0x0

    .line 237
    move-object v6, p0

    .line 238
    move-object v7, p0

    .line 239
    move-object v8, p1

    .line 240
    move-object v9, v3

    .line 241
    invoke-virtual/range {v6 .. v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e(Landroidx/constraintlayout/core/widgets/d;Landroidx/constraintlayout/core/d;Ljava/util/HashSet;IZ)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 249
    .line 250
    .line 251
    move-result v3

    .line 252
    if-eqz v3, :cond_14

    .line 253
    .line 254
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 259
    .line 260
    invoke-static {p0, p1, v3}, Landroidx/constraintlayout/core/widgets/g;->a(Landroidx/constraintlayout/core/widgets/d;Landroidx/constraintlayout/core/d;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v3, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/d;Z)V

    .line 264
    .line 265
    .line 266
    goto :goto_8

    .line 267
    :cond_e
    move v3, v2

    .line 268
    :goto_9
    if-ge v3, v1, :cond_14

    .line 269
    .line 270
    iget-object v4, p0, Lt0/c;->V0:Ljava/util/ArrayList;

    .line 271
    .line 272
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v4

    .line 276
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 277
    .line 278
    instance-of v6, v4, Landroidx/constraintlayout/core/widgets/d;

    .line 279
    .line 280
    if-eqz v6, :cond_12

    .line 281
    .line 282
    iget-object v6, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 283
    .line 284
    aget-object v7, v6, v2

    .line 285
    .line 286
    aget-object v6, v6, v5

    .line 287
    .line 288
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 289
    .line 290
    if-ne v7, v8, :cond_f

    .line 291
    .line 292
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 293
    .line 294
    invoke-virtual {v4, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T0(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 295
    .line 296
    .line 297
    :cond_f
    if-ne v6, v8, :cond_10

    .line 298
    .line 299
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 300
    .line 301
    invoke-virtual {v4, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k1(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 302
    .line 303
    .line 304
    :cond_10
    invoke-virtual {v4, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/d;Z)V

    .line 305
    .line 306
    .line 307
    if-ne v7, v8, :cond_11

    .line 308
    .line 309
    invoke-virtual {v4, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T0(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 310
    .line 311
    .line 312
    :cond_11
    if-ne v6, v8, :cond_13

    .line 313
    .line 314
    invoke-virtual {v4, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k1(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 315
    .line 316
    .line 317
    goto :goto_a

    .line 318
    :cond_12
    invoke-static {p0, p1, v4}, Landroidx/constraintlayout/core/widgets/g;->a(Landroidx/constraintlayout/core/widgets/d;Landroidx/constraintlayout/core/d;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f()Z

    .line 322
    .line 323
    .line 324
    move-result v6

    .line 325
    if-nez v6, :cond_13

    .line 326
    .line 327
    invoke-virtual {v4, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/d;Z)V

    .line 328
    .line 329
    .line 330
    :cond_13
    :goto_a
    add-int/lit8 v3, v3, 0x1

    .line 331
    .line 332
    goto :goto_9

    .line 333
    :cond_14
    iget v0, p0, Landroidx/constraintlayout/core/widgets/d;->h1:I

    .line 334
    .line 335
    const/4 v1, 0x0

    .line 336
    if-lez v0, :cond_15

    .line 337
    .line 338
    invoke-static {p0, p1, v1, v2}, Landroidx/constraintlayout/core/widgets/b;->b(Landroidx/constraintlayout/core/widgets/d;Landroidx/constraintlayout/core/d;Ljava/util/ArrayList;I)V

    .line 339
    .line 340
    .line 341
    :cond_15
    iget v0, p0, Landroidx/constraintlayout/core/widgets/d;->i1:I

    .line 342
    .line 343
    if-lez v0, :cond_16

    .line 344
    .line 345
    invoke-static {p0, p1, v1, v5}, Landroidx/constraintlayout/core/widgets/b;->b(Landroidx/constraintlayout/core/widgets/d;Landroidx/constraintlayout/core/d;Ljava/util/ArrayList;I)V

    .line 346
    .line 347
    .line 348
    :cond_16
    return v5
.end method

.method public C1(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/d;->y1:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/d;->y1:Ljava/lang/ref/WeakReference;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-le v0, v1, :cond_1

    .line 28
    .line 29
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 30
    .line 31
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/d;->y1:Ljava/lang/ref/WeakReference;

    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method public D1(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/d;->w1:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/d;->w1:Ljava/lang/ref/WeakReference;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-le v0, v1, :cond_1

    .line 28
    .line 29
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 30
    .line 31
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/d;->w1:Ljava/lang/ref/WeakReference;

    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method H1(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/d;->x1:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/d;->x1:Ljava/lang/ref/WeakReference;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-le v0, v1, :cond_1

    .line 28
    .line 29
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 30
    .line 31
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/d;->x1:Ljava/lang/ref/WeakReference;

    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method I1(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/d;->v1:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/d;->v1:Ljava/lang/ref/WeakReference;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-le v0, v1, :cond_1

    .line 28
    .line 29
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 30
    .line 31
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/d;->v1:Ljava/lang/ref/WeakReference;

    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method public J1(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/d;->X0:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/d;->f(Z)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public K1(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/d;->X0:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/d;->g(Z)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public L1(ZI)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/d;->X0:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/widgets/analyzer/d;->h(ZI)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public M1(Landroidx/constraintlayout/core/e;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/d;->b1:Landroidx/constraintlayout/core/e;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/d;->c1:Landroidx/constraintlayout/core/d;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/d;->v(Landroidx/constraintlayout/core/e;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public N1()Landroidx/constraintlayout/core/widgets/analyzer/b$b;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/d;->Z0:Landroidx/constraintlayout/core/widgets/analyzer/b$b;

    .line 2
    .line 3
    return-object v0
.end method

.method public O1()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/widgets/d;->q1:I

    .line 2
    .line 3
    return v0
.end method

.method public P1()Landroidx/constraintlayout/core/d;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/d;->c1:Landroidx/constraintlayout/core/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public Q(Ljava/lang/StringBuilder;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ":{\n"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v1, "  actualWidth:"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d0:I

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v0, "\n"

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v2, "  actualHeight:"

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e0:I

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lt0/c;->v1()Ljava/util/ArrayList;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_0

    .line 88
    .line 89
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 94
    .line 95
    invoke-virtual {v1, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Q(Ljava/lang/StringBuilder;)V

    .line 96
    .line 97
    .line 98
    const-string v1, ",\n"

    .line 99
    .line 100
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_0
    const-string v0, "}"

    .line 105
    .line 106
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method public Q1()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public R1()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/d;->X0:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/d;->j()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public S1()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/d;->X0:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/d;->k()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public T1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/d;->t1:Z

    .line 2
    .line 3
    return v0
.end method

.method public U1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/d;->a1:Z

    .line 2
    .line 3
    return v0
.end method

.method public V1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/d;->s1:Z

    .line 2
    .line 3
    return v0
.end method

.method public W1(IIIIIIIII)J
    .locals 12

    .line 1
    move-object v11, p0

    .line 2
    move/from16 v3, p8

    .line 3
    .line 4
    iput v3, v11, Landroidx/constraintlayout/core/widgets/d;->d1:I

    .line 5
    .line 6
    move/from16 v4, p9

    .line 7
    .line 8
    iput v4, v11, Landroidx/constraintlayout/core/widgets/d;->e1:I

    .line 9
    .line 10
    iget-object v0, v11, Landroidx/constraintlayout/core/widgets/d;->W0:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 11
    .line 12
    move-object v1, p0

    .line 13
    move v2, p1

    .line 14
    move v5, p2

    .line 15
    move v6, p3

    .line 16
    move/from16 v7, p4

    .line 17
    .line 18
    move/from16 v8, p5

    .line 19
    .line 20
    move/from16 v9, p6

    .line 21
    .line 22
    move/from16 v10, p7

    .line 23
    .line 24
    invoke-virtual/range {v0 .. v10}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(Landroidx/constraintlayout/core/widgets/d;IIIIIIIII)J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    return-wide v0
.end method

.method public Y1(I)Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/widgets/d;->q1:I

    .line 2
    .line 3
    and-int/2addr v0, p1

    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    return p1
.end method

.method public a2(Landroidx/constraintlayout/core/widgets/analyzer/b$b;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/d;->Z0:Landroidx/constraintlayout/core/widgets/analyzer/b$b;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/d;->X0:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/d;->n(Landroidx/constraintlayout/core/widgets/analyzer/b$b;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public b2(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/widgets/d;->q1:I

    .line 2
    .line 3
    const/16 p1, 0x200

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/d;->Y1(I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    sput-boolean p1, Landroidx/constraintlayout/core/d;->r:Z

    .line 10
    .line 11
    return-void
.end method

.method public c2(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/widgets/d;->Y0:I

    .line 2
    .line 3
    return-void
.end method

.method public d2(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/d;->a1:Z

    .line 2
    .line 3
    return-void
.end method

.method public e2(Landroidx/constraintlayout/core/d;[Z)Z
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    aput-boolean v1, p2, v0

    .line 4
    .line 5
    const/16 p2, 0x40

    .line 6
    .line 7
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/core/widgets/d;->Y1(I)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->u1(Landroidx/constraintlayout/core/d;Z)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lt0/c;->V0:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    move v2, v1

    .line 21
    :goto_0
    if-ge v1, v0, :cond_1

    .line 22
    .line 23
    iget-object v3, p0, Lt0/c;->V0:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 30
    .line 31
    invoke-virtual {v3, p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->u1(Landroidx/constraintlayout/core/d;Z)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e0()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    return v2
.end method

.method public f2()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/d;->W0:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/b;->e(Landroidx/constraintlayout/core/widgets/d;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public t1(ZZ)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t1(ZZ)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lt0/c;->V0:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_0

    .line 12
    .line 13
    iget-object v2, p0, Lt0/c;->V0:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 20
    .line 21
    invoke-virtual {v2, p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t1(ZZ)V

    .line 22
    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public v0()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/d;->c1:Landroidx/constraintlayout/core/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/constraintlayout/core/d;->E()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Landroidx/constraintlayout/core/widgets/d;->d1:I

    .line 8
    .line 9
    iput v0, p0, Landroidx/constraintlayout/core/widgets/d;->f1:I

    .line 10
    .line 11
    iput v0, p0, Landroidx/constraintlayout/core/widgets/d;->e1:I

    .line 12
    .line 13
    iput v0, p0, Landroidx/constraintlayout/core/widgets/d;->g1:I

    .line 14
    .line 15
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/d;->r1:Z

    .line 16
    .line 17
    invoke-super {p0}, Lt0/c;->v0()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public w1()V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:I

    .line 5
    .line 6
    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i0:I

    .line 7
    .line 8
    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/d;->s1:Z

    .line 9
    .line 10
    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/d;->t1:Z

    .line 11
    .line 12
    iget-object v0, v1, Lt0/c;->V0:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 35
    .line 36
    const/4 v6, 0x1

    .line 37
    aget-object v7, v5, v6

    .line 38
    .line 39
    aget-object v5, v5, v2

    .line 40
    .line 41
    iget-object v8, v1, Landroidx/constraintlayout/core/widgets/d;->b1:Landroidx/constraintlayout/core/e;

    .line 42
    .line 43
    if-eqz v8, :cond_0

    .line 44
    .line 45
    iget-wide v9, v8, Landroidx/constraintlayout/core/e;->E:J

    .line 46
    .line 47
    const-wide/16 v11, 0x1

    .line 48
    .line 49
    add-long/2addr v9, v11

    .line 50
    iput-wide v9, v8, Landroidx/constraintlayout/core/e;->E:J

    .line 51
    .line 52
    :cond_0
    iget v8, v1, Landroidx/constraintlayout/core/widgets/d;->Y0:I

    .line 53
    .line 54
    if-nez v8, :cond_3

    .line 55
    .line 56
    iget v8, v1, Landroidx/constraintlayout/core/widgets/d;->q1:I

    .line 57
    .line 58
    invoke-static {v8, v6}, Landroidx/constraintlayout/core/widgets/g;->b(II)Z

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    if-eqz v8, :cond_3

    .line 63
    .line 64
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/d;->N1()Landroidx/constraintlayout/core/widgets/analyzer/b$b;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    invoke-static {v1, v8}, Landroidx/constraintlayout/core/widgets/analyzer/f;->h(Landroidx/constraintlayout/core/widgets/d;Landroidx/constraintlayout/core/widgets/analyzer/b$b;)V

    .line 69
    .line 70
    .line 71
    move v8, v2

    .line 72
    :goto_0
    if-ge v8, v3, :cond_3

    .line 73
    .line 74
    iget-object v9, v1, Lt0/c;->V0:Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    check-cast v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 81
    .line 82
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o0()Z

    .line 83
    .line 84
    .line 85
    move-result v10

    .line 86
    if-eqz v10, :cond_2

    .line 87
    .line 88
    instance-of v10, v9, Landroidx/constraintlayout/core/widgets/f;

    .line 89
    .line 90
    if-nez v10, :cond_2

    .line 91
    .line 92
    instance-of v10, v9, Landroidx/constraintlayout/core/widgets/a;

    .line 93
    .line 94
    if-nez v10, :cond_2

    .line 95
    .line 96
    instance-of v10, v9, Landroidx/constraintlayout/core/widgets/i;

    .line 97
    .line 98
    if-nez v10, :cond_2

    .line 99
    .line 100
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n0()Z

    .line 101
    .line 102
    .line 103
    move-result v10

    .line 104
    if-nez v10, :cond_2

    .line 105
    .line 106
    invoke-virtual {v9, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 107
    .line 108
    .line 109
    move-result-object v10

    .line 110
    invoke-virtual {v9, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 111
    .line 112
    .line 113
    move-result-object v11

    .line 114
    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 115
    .line 116
    if-ne v10, v12, :cond_1

    .line 117
    .line 118
    iget v10, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w:I

    .line 119
    .line 120
    if-eq v10, v6, :cond_1

    .line 121
    .line 122
    if-ne v11, v12, :cond_1

    .line 123
    .line 124
    iget v10, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x:I

    .line 125
    .line 126
    if-eq v10, v6, :cond_1

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_1
    new-instance v10, Landroidx/constraintlayout/core/widgets/analyzer/b$a;

    .line 130
    .line 131
    invoke-direct {v10}, Landroidx/constraintlayout/core/widgets/analyzer/b$a;-><init>()V

    .line 132
    .line 133
    .line 134
    iget-object v11, v1, Landroidx/constraintlayout/core/widgets/d;->Z0:Landroidx/constraintlayout/core/widgets/analyzer/b$b;

    .line 135
    .line 136
    sget v12, Landroidx/constraintlayout/core/widgets/analyzer/b$a;->k:I

    .line 137
    .line 138
    invoke-static {v2, v9, v11, v10, v12}, Landroidx/constraintlayout/core/widgets/d;->X1(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/b$b;Landroidx/constraintlayout/core/widgets/analyzer/b$a;I)Z

    .line 139
    .line 140
    .line 141
    :cond_2
    :goto_1
    add-int/lit8 v8, v8, 0x1

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_3
    const/4 v8, 0x2

    .line 145
    if-le v3, v8, :cond_9

    .line 146
    .line 147
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 148
    .line 149
    if-eq v5, v9, :cond_4

    .line 150
    .line 151
    if-ne v7, v9, :cond_9

    .line 152
    .line 153
    :cond_4
    iget v10, v1, Landroidx/constraintlayout/core/widgets/d;->q1:I

    .line 154
    .line 155
    const/16 v11, 0x400

    .line 156
    .line 157
    invoke-static {v10, v11}, Landroidx/constraintlayout/core/widgets/g;->b(II)Z

    .line 158
    .line 159
    .line 160
    move-result v10

    .line 161
    if-eqz v10, :cond_9

    .line 162
    .line 163
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/d;->N1()Landroidx/constraintlayout/core/widgets/analyzer/b$b;

    .line 164
    .line 165
    .line 166
    move-result-object v10

    .line 167
    invoke-static {v1, v10}, Landroidx/constraintlayout/core/widgets/analyzer/g;->c(Landroidx/constraintlayout/core/widgets/d;Landroidx/constraintlayout/core/widgets/analyzer/b$b;)Z

    .line 168
    .line 169
    .line 170
    move-result v10

    .line 171
    if-eqz v10, :cond_9

    .line 172
    .line 173
    if-ne v5, v9, :cond_6

    .line 174
    .line 175
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y()I

    .line 176
    .line 177
    .line 178
    move-result v10

    .line 179
    if-ge v0, v10, :cond_5

    .line 180
    .line 181
    if-lez v0, :cond_5

    .line 182
    .line 183
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o1(I)V

    .line 184
    .line 185
    .line 186
    iput-boolean v6, v1, Landroidx/constraintlayout/core/widgets/d;->s1:Z

    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y()I

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    :cond_6
    :goto_2
    if-ne v7, v9, :cond_8

    .line 194
    .line 195
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z()I

    .line 196
    .line 197
    .line 198
    move-result v9

    .line 199
    if-ge v4, v9, :cond_7

    .line 200
    .line 201
    if-lez v4, :cond_7

    .line 202
    .line 203
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->P0(I)V

    .line 204
    .line 205
    .line 206
    iput-boolean v6, v1, Landroidx/constraintlayout/core/widgets/d;->t1:Z

    .line 207
    .line 208
    goto :goto_3

    .line 209
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z()I

    .line 210
    .line 211
    .line 212
    move-result v4

    .line 213
    :cond_8
    :goto_3
    move v9, v4

    .line 214
    move v4, v0

    .line 215
    move v0, v6

    .line 216
    goto :goto_4

    .line 217
    :cond_9
    move v9, v4

    .line 218
    move v4, v0

    .line 219
    move v0, v2

    .line 220
    :goto_4
    const/16 v10, 0x40

    .line 221
    .line 222
    invoke-virtual {v1, v10}, Landroidx/constraintlayout/core/widgets/d;->Y1(I)Z

    .line 223
    .line 224
    .line 225
    move-result v11

    .line 226
    if-nez v11, :cond_b

    .line 227
    .line 228
    const/16 v11, 0x80

    .line 229
    .line 230
    invoke-virtual {v1, v11}, Landroidx/constraintlayout/core/widgets/d;->Y1(I)Z

    .line 231
    .line 232
    .line 233
    move-result v11

    .line 234
    if-eqz v11, :cond_a

    .line 235
    .line 236
    goto :goto_5

    .line 237
    :cond_a
    move v11, v2

    .line 238
    goto :goto_6

    .line 239
    :cond_b
    :goto_5
    move v11, v6

    .line 240
    :goto_6
    iget-object v12, v1, Landroidx/constraintlayout/core/widgets/d;->c1:Landroidx/constraintlayout/core/d;

    .line 241
    .line 242
    iput-boolean v2, v12, Landroidx/constraintlayout/core/d;->h:Z

    .line 243
    .line 244
    iput-boolean v2, v12, Landroidx/constraintlayout/core/d;->i:Z

    .line 245
    .line 246
    iget v13, v1, Landroidx/constraintlayout/core/widgets/d;->q1:I

    .line 247
    .line 248
    if-eqz v13, :cond_c

    .line 249
    .line 250
    if-eqz v11, :cond_c

    .line 251
    .line 252
    iput-boolean v6, v12, Landroidx/constraintlayout/core/d;->i:Z

    .line 253
    .line 254
    :cond_c
    iget-object v11, v1, Lt0/c;->V0:Ljava/util/ArrayList;

    .line 255
    .line 256
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->C()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 257
    .line 258
    .line 259
    move-result-object v12

    .line 260
    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 261
    .line 262
    if-eq v12, v13, :cond_e

    .line 263
    .line 264
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 265
    .line 266
    .line 267
    move-result-object v12

    .line 268
    if-ne v12, v13, :cond_d

    .line 269
    .line 270
    goto :goto_7

    .line 271
    :cond_d
    move v12, v2

    .line 272
    goto :goto_8

    .line 273
    :cond_e
    :goto_7
    move v12, v6

    .line 274
    :goto_8
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/d;->Z1()V

    .line 275
    .line 276
    .line 277
    move v13, v2

    .line 278
    :goto_9
    if-ge v13, v3, :cond_10

    .line 279
    .line 280
    iget-object v14, v1, Lt0/c;->V0:Ljava/util/ArrayList;

    .line 281
    .line 282
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v14

    .line 286
    check-cast v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 287
    .line 288
    instance-of v15, v14, Lt0/c;

    .line 289
    .line 290
    if-eqz v15, :cond_f

    .line 291
    .line 292
    check-cast v14, Lt0/c;

    .line 293
    .line 294
    invoke-virtual {v14}, Lt0/c;->w1()V

    .line 295
    .line 296
    .line 297
    :cond_f
    add-int/lit8 v13, v13, 0x1

    .line 298
    .line 299
    goto :goto_9

    .line 300
    :cond_10
    invoke-virtual {v1, v10}, Landroidx/constraintlayout/core/widgets/d;->Y1(I)Z

    .line 301
    .line 302
    .line 303
    move-result v10

    .line 304
    move v13, v0

    .line 305
    move v0, v2

    .line 306
    move v14, v6

    .line 307
    :goto_a
    if-eqz v14, :cond_22

    .line 308
    .line 309
    add-int/lit8 v15, v0, 0x1

    .line 310
    .line 311
    :try_start_0
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/d;->c1:Landroidx/constraintlayout/core/d;

    .line 312
    .line 313
    invoke-virtual {v0}, Landroidx/constraintlayout/core/d;->E()V

    .line 314
    .line 315
    .line 316
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/d;->Z1()V

    .line 317
    .line 318
    .line 319
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/d;->c1:Landroidx/constraintlayout/core/d;

    .line 320
    .line 321
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o(Landroidx/constraintlayout/core/d;)V

    .line 322
    .line 323
    .line 324
    move v0, v2

    .line 325
    :goto_b
    if-ge v0, v3, :cond_11

    .line 326
    .line 327
    iget-object v6, v1, Lt0/c;->V0:Ljava/util/ArrayList;

    .line 328
    .line 329
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v6

    .line 333
    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 334
    .line 335
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/d;->c1:Landroidx/constraintlayout/core/d;

    .line 336
    .line 337
    invoke-virtual {v6, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o(Landroidx/constraintlayout/core/d;)V

    .line 338
    .line 339
    .line 340
    add-int/lit8 v0, v0, 0x1

    .line 341
    .line 342
    const/4 v2, 0x0

    .line 343
    const/4 v6, 0x1

    .line 344
    goto :goto_b

    .line 345
    :catch_0
    move-exception v0

    .line 346
    goto/16 :goto_c

    .line 347
    .line 348
    :cond_11
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/d;->c1:Landroidx/constraintlayout/core/d;

    .line 349
    .line 350
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/d;->A1(Landroidx/constraintlayout/core/d;)Z

    .line 351
    .line 352
    .line 353
    move-result v14

    .line 354
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/d;->v1:Ljava/lang/ref/WeakReference;

    .line 355
    .line 356
    const/4 v2, 0x0

    .line 357
    if-eqz v0, :cond_12

    .line 358
    .line 359
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    if-eqz v0, :cond_12

    .line 364
    .line 365
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/d;->v1:Ljava/lang/ref/WeakReference;

    .line 366
    .line 367
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 372
    .line 373
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/d;->c1:Landroidx/constraintlayout/core/d;

    .line 374
    .line 375
    iget-object v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 376
    .line 377
    invoke-virtual {v6, v8}, Landroidx/constraintlayout/core/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 378
    .line 379
    .line 380
    move-result-object v6

    .line 381
    invoke-direct {v1, v0, v6}, Landroidx/constraintlayout/core/widgets/d;->F1(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/SolverVariable;)V

    .line 382
    .line 383
    .line 384
    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/d;->v1:Ljava/lang/ref/WeakReference;

    .line 385
    .line 386
    :cond_12
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/d;->x1:Ljava/lang/ref/WeakReference;

    .line 387
    .line 388
    if-eqz v0, :cond_13

    .line 389
    .line 390
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    if-eqz v0, :cond_13

    .line 395
    .line 396
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/d;->x1:Ljava/lang/ref/WeakReference;

    .line 397
    .line 398
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 403
    .line 404
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/d;->c1:Landroidx/constraintlayout/core/d;

    .line 405
    .line 406
    iget-object v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 407
    .line 408
    invoke-virtual {v6, v8}, Landroidx/constraintlayout/core/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 409
    .line 410
    .line 411
    move-result-object v6

    .line 412
    invoke-direct {v1, v0, v6}, Landroidx/constraintlayout/core/widgets/d;->E1(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/SolverVariable;)V

    .line 413
    .line 414
    .line 415
    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/d;->x1:Ljava/lang/ref/WeakReference;

    .line 416
    .line 417
    :cond_13
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/d;->w1:Ljava/lang/ref/WeakReference;

    .line 418
    .line 419
    if-eqz v0, :cond_14

    .line 420
    .line 421
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    if-eqz v0, :cond_14

    .line 426
    .line 427
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/d;->w1:Ljava/lang/ref/WeakReference;

    .line 428
    .line 429
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 434
    .line 435
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/d;->c1:Landroidx/constraintlayout/core/d;

    .line 436
    .line 437
    iget-object v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Q:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 438
    .line 439
    invoke-virtual {v6, v8}, Landroidx/constraintlayout/core/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 440
    .line 441
    .line 442
    move-result-object v6

    .line 443
    invoke-direct {v1, v0, v6}, Landroidx/constraintlayout/core/widgets/d;->F1(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/SolverVariable;)V

    .line 444
    .line 445
    .line 446
    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/d;->w1:Ljava/lang/ref/WeakReference;

    .line 447
    .line 448
    :cond_14
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/d;->y1:Ljava/lang/ref/WeakReference;

    .line 449
    .line 450
    if-eqz v0, :cond_15

    .line 451
    .line 452
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    move-result-object v0

    .line 456
    if-eqz v0, :cond_15

    .line 457
    .line 458
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/d;->y1:Ljava/lang/ref/WeakReference;

    .line 459
    .line 460
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v0

    .line 464
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 465
    .line 466
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/d;->c1:Landroidx/constraintlayout/core/d;

    .line 467
    .line 468
    iget-object v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 469
    .line 470
    invoke-virtual {v6, v8}, Landroidx/constraintlayout/core/d;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 471
    .line 472
    .line 473
    move-result-object v6

    .line 474
    invoke-direct {v1, v0, v6}, Landroidx/constraintlayout/core/widgets/d;->E1(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/SolverVariable;)V

    .line 475
    .line 476
    .line 477
    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/d;->y1:Ljava/lang/ref/WeakReference;

    .line 478
    .line 479
    :cond_15
    if-eqz v14, :cond_16

    .line 480
    .line 481
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/d;->c1:Landroidx/constraintlayout/core/d;

    .line 482
    .line 483
    invoke-virtual {v0}, Landroidx/constraintlayout/core/d;->A()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    .line 485
    .line 486
    goto :goto_d

    .line 487
    :goto_c
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 488
    .line 489
    .line 490
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 491
    .line 492
    new-instance v6, Ljava/lang/StringBuilder;

    .line 493
    .line 494
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 495
    .line 496
    .line 497
    const-string v8, "EXCEPTION : "

    .line 498
    .line 499
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    .line 501
    .line 502
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v0

    .line 509
    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    :cond_16
    :goto_d
    if-eqz v14, :cond_17

    .line 513
    .line 514
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/d;->c1:Landroidx/constraintlayout/core/d;

    .line 515
    .line 516
    sget-object v2, Landroidx/constraintlayout/core/widgets/g;->a:[Z

    .line 517
    .line 518
    invoke-virtual {v1, v0, v2}, Landroidx/constraintlayout/core/widgets/d;->e2(Landroidx/constraintlayout/core/d;[Z)Z

    .line 519
    .line 520
    .line 521
    move-result v0

    .line 522
    goto :goto_f

    .line 523
    :cond_17
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/d;->c1:Landroidx/constraintlayout/core/d;

    .line 524
    .line 525
    invoke-virtual {v1, v0, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->u1(Landroidx/constraintlayout/core/d;Z)V

    .line 526
    .line 527
    .line 528
    const/4 v0, 0x0

    .line 529
    :goto_e
    if-ge v0, v3, :cond_18

    .line 530
    .line 531
    iget-object v2, v1, Lt0/c;->V0:Ljava/util/ArrayList;

    .line 532
    .line 533
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 534
    .line 535
    .line 536
    move-result-object v2

    .line 537
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 538
    .line 539
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/d;->c1:Landroidx/constraintlayout/core/d;

    .line 540
    .line 541
    invoke-virtual {v2, v6, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->u1(Landroidx/constraintlayout/core/d;Z)V

    .line 542
    .line 543
    .line 544
    add-int/lit8 v0, v0, 0x1

    .line 545
    .line 546
    goto :goto_e

    .line 547
    :cond_18
    const/4 v0, 0x0

    .line 548
    :goto_f
    const/16 v2, 0x8

    .line 549
    .line 550
    if-eqz v12, :cond_1b

    .line 551
    .line 552
    if-ge v15, v2, :cond_1b

    .line 553
    .line 554
    sget-object v6, Landroidx/constraintlayout/core/widgets/g;->a:[Z

    .line 555
    .line 556
    const/4 v8, 0x2

    .line 557
    aget-boolean v6, v6, v8

    .line 558
    .line 559
    if-eqz v6, :cond_1b

    .line 560
    .line 561
    const/4 v6, 0x0

    .line 562
    const/4 v8, 0x0

    .line 563
    const/4 v14, 0x0

    .line 564
    :goto_10
    if-ge v6, v3, :cond_19

    .line 565
    .line 566
    iget-object v2, v1, Lt0/c;->V0:Ljava/util/ArrayList;

    .line 567
    .line 568
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 569
    .line 570
    .line 571
    move-result-object v2

    .line 572
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 573
    .line 574
    move/from16 v16, v0

    .line 575
    .line 576
    iget v0, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:I

    .line 577
    .line 578
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y()I

    .line 579
    .line 580
    .line 581
    move-result v17

    .line 582
    add-int v0, v0, v17

    .line 583
    .line 584
    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    .line 585
    .line 586
    .line 587
    move-result v14

    .line 588
    iget v0, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i0:I

    .line 589
    .line 590
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z()I

    .line 591
    .line 592
    .line 593
    move-result v2

    .line 594
    add-int/2addr v0, v2

    .line 595
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    .line 596
    .line 597
    .line 598
    move-result v8

    .line 599
    add-int/lit8 v6, v6, 0x1

    .line 600
    .line 601
    move/from16 v0, v16

    .line 602
    .line 603
    const/16 v2, 0x8

    .line 604
    .line 605
    goto :goto_10

    .line 606
    :cond_19
    move/from16 v16, v0

    .line 607
    .line 608
    iget v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o0:I

    .line 609
    .line 610
    invoke-static {v0, v14}, Ljava/lang/Math;->max(II)I

    .line 611
    .line 612
    .line 613
    move-result v0

    .line 614
    iget v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p0:I

    .line 615
    .line 616
    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    .line 617
    .line 618
    .line 619
    move-result v2

    .line 620
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 621
    .line 622
    if-ne v5, v6, :cond_1a

    .line 623
    .line 624
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y()I

    .line 625
    .line 626
    .line 627
    move-result v8

    .line 628
    if-ge v8, v0, :cond_1a

    .line 629
    .line 630
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o1(I)V

    .line 631
    .line 632
    .line 633
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 634
    .line 635
    const/4 v8, 0x0

    .line 636
    aput-object v6, v0, v8

    .line 637
    .line 638
    const/4 v13, 0x1

    .line 639
    const/16 v16, 0x1

    .line 640
    .line 641
    :cond_1a
    if-ne v7, v6, :cond_1c

    .line 642
    .line 643
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z()I

    .line 644
    .line 645
    .line 646
    move-result v0

    .line 647
    if-ge v0, v2, :cond_1c

    .line 648
    .line 649
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->P0(I)V

    .line 650
    .line 651
    .line 652
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 653
    .line 654
    const/4 v2, 0x1

    .line 655
    aput-object v6, v0, v2

    .line 656
    .line 657
    const/4 v13, 0x1

    .line 658
    const/16 v16, 0x1

    .line 659
    .line 660
    goto :goto_11

    .line 661
    :cond_1b
    move/from16 v16, v0

    .line 662
    .line 663
    :cond_1c
    :goto_11
    iget v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o0:I

    .line 664
    .line 665
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y()I

    .line 666
    .line 667
    .line 668
    move-result v2

    .line 669
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 670
    .line 671
    .line 672
    move-result v0

    .line 673
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y()I

    .line 674
    .line 675
    .line 676
    move-result v2

    .line 677
    if-le v0, v2, :cond_1d

    .line 678
    .line 679
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o1(I)V

    .line 680
    .line 681
    .line 682
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 683
    .line 684
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 685
    .line 686
    const/4 v6, 0x0

    .line 687
    aput-object v2, v0, v6

    .line 688
    .line 689
    const/4 v13, 0x1

    .line 690
    const/16 v16, 0x1

    .line 691
    .line 692
    :cond_1d
    iget v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p0:I

    .line 693
    .line 694
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z()I

    .line 695
    .line 696
    .line 697
    move-result v2

    .line 698
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 699
    .line 700
    .line 701
    move-result v0

    .line 702
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z()I

    .line 703
    .line 704
    .line 705
    move-result v2

    .line 706
    if-le v0, v2, :cond_1e

    .line 707
    .line 708
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->P0(I)V

    .line 709
    .line 710
    .line 711
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 712
    .line 713
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 714
    .line 715
    const/4 v6, 0x1

    .line 716
    aput-object v2, v0, v6

    .line 717
    .line 718
    move v2, v6

    .line 719
    move/from16 v16, v2

    .line 720
    .line 721
    goto :goto_12

    .line 722
    :cond_1e
    const/4 v6, 0x1

    .line 723
    move v2, v13

    .line 724
    :goto_12
    if-nez v2, :cond_20

    .line 725
    .line 726
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 727
    .line 728
    const/4 v8, 0x0

    .line 729
    aget-object v0, v0, v8

    .line 730
    .line 731
    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 732
    .line 733
    if-ne v0, v13, :cond_1f

    .line 734
    .line 735
    if-lez v4, :cond_1f

    .line 736
    .line 737
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y()I

    .line 738
    .line 739
    .line 740
    move-result v0

    .line 741
    if-le v0, v4, :cond_1f

    .line 742
    .line 743
    iput-boolean v6, v1, Landroidx/constraintlayout/core/widgets/d;->s1:Z

    .line 744
    .line 745
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 746
    .line 747
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 748
    .line 749
    aput-object v2, v0, v8

    .line 750
    .line 751
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o1(I)V

    .line 752
    .line 753
    .line 754
    move v2, v6

    .line 755
    move/from16 v16, v2

    .line 756
    .line 757
    :cond_1f
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 758
    .line 759
    aget-object v0, v0, v6

    .line 760
    .line 761
    if-ne v0, v13, :cond_20

    .line 762
    .line 763
    if-lez v9, :cond_20

    .line 764
    .line 765
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z()I

    .line 766
    .line 767
    .line 768
    move-result v0

    .line 769
    if-le v0, v9, :cond_20

    .line 770
    .line 771
    iput-boolean v6, v1, Landroidx/constraintlayout/core/widgets/d;->t1:Z

    .line 772
    .line 773
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 774
    .line 775
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 776
    .line 777
    aput-object v2, v0, v6

    .line 778
    .line 779
    invoke-virtual {v1, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->P0(I)V

    .line 780
    .line 781
    .line 782
    const/16 v0, 0x8

    .line 783
    .line 784
    const/4 v2, 0x1

    .line 785
    const/4 v13, 0x1

    .line 786
    goto :goto_13

    .line 787
    :cond_20
    move v13, v2

    .line 788
    move/from16 v2, v16

    .line 789
    .line 790
    const/16 v0, 0x8

    .line 791
    .line 792
    :goto_13
    if-le v15, v0, :cond_21

    .line 793
    .line 794
    const/4 v14, 0x0

    .line 795
    goto :goto_14

    .line 796
    :cond_21
    move v14, v2

    .line 797
    :goto_14
    move v0, v15

    .line 798
    const/4 v2, 0x0

    .line 799
    const/4 v6, 0x1

    .line 800
    const/4 v8, 0x2

    .line 801
    goto/16 :goto_a

    .line 802
    .line 803
    :cond_22
    iput-object v11, v1, Lt0/c;->V0:Ljava/util/ArrayList;

    .line 804
    .line 805
    if-eqz v13, :cond_23

    .line 806
    .line 807
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 808
    .line 809
    const/4 v2, 0x0

    .line 810
    aput-object v5, v0, v2

    .line 811
    .line 812
    const/4 v2, 0x1

    .line 813
    aput-object v7, v0, v2

    .line 814
    .line 815
    :cond_23
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/d;->c1:Landroidx/constraintlayout/core/d;

    .line 816
    .line 817
    invoke-virtual {v0}, Landroidx/constraintlayout/core/d;->w()Landroidx/constraintlayout/core/c;

    .line 818
    .line 819
    .line 820
    move-result-object v0

    .line 821
    invoke-virtual {v1, v0}, Lt0/c;->z0(Landroidx/constraintlayout/core/c;)V

    .line 822
    .line 823
    .line 824
    return-void
.end method

.method z1(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/widgets/d;->B1(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    if-ne p2, v0, :cond_1

    .line 9
    .line 10
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/widgets/d;->G1(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 11
    .line 12
    .line 13
    :cond_1
    :goto_0
    return-void
.end method
