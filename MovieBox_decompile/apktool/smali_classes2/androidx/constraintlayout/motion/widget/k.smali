.class public Landroidx/constraintlayout/motion/widget/k;
.super Landroidx/constraintlayout/motion/widget/d;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/k$a;
    }
.end annotation


# instance fields
.field A:Ljava/util/HashMap;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:I

.field private n:Landroid/view/View;

.field o:F

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:F

.field private t:F

.field private u:Z

.field v:I

.field w:I

.field x:I

.field y:Landroid/graphics/RectF;

.field z:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/d;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroidx/constraintlayout/motion/widget/k;->g:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/k;->h:Ljava/lang/String;

    .line 9
    .line 10
    sget v1, Landroidx/constraintlayout/motion/widget/d;->f:I

    .line 11
    .line 12
    iput v1, p0, Landroidx/constraintlayout/motion/widget/k;->i:I

    .line 13
    .line 14
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/k;->j:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/k;->k:Ljava/lang/String;

    .line 17
    .line 18
    iput v1, p0, Landroidx/constraintlayout/motion/widget/k;->l:I

    .line 19
    .line 20
    iput v1, p0, Landroidx/constraintlayout/motion/widget/k;->m:I

    .line 21
    .line 22
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/k;->n:Landroid/view/View;

    .line 23
    .line 24
    const v0, 0x3dcccccd    # 0.1f

    .line 25
    .line 26
    .line 27
    iput v0, p0, Landroidx/constraintlayout/motion/widget/k;->o:F

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/k;->p:Z

    .line 31
    .line 32
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/k;->q:Z

    .line 33
    .line 34
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/k;->r:Z

    .line 35
    .line 36
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 37
    .line 38
    iput v0, p0, Landroidx/constraintlayout/motion/widget/k;->s:F

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/k;->u:Z

    .line 42
    .line 43
    iput v1, p0, Landroidx/constraintlayout/motion/widget/k;->v:I

    .line 44
    .line 45
    iput v1, p0, Landroidx/constraintlayout/motion/widget/k;->w:I

    .line 46
    .line 47
    iput v1, p0, Landroidx/constraintlayout/motion/widget/k;->x:I

    .line 48
    .line 49
    new-instance v0, Landroid/graphics/RectF;

    .line 50
    .line 51
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/k;->y:Landroid/graphics/RectF;

    .line 55
    .line 56
    new-instance v0, Landroid/graphics/RectF;

    .line 57
    .line 58
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/k;->z:Landroid/graphics/RectF;

    .line 62
    .line 63
    new-instance v0, Ljava/util/HashMap;

    .line 64
    .line 65
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/k;->A:Ljava/util/HashMap;

    .line 69
    .line 70
    const/4 v0, 0x5

    .line 71
    iput v0, p0, Landroidx/constraintlayout/motion/widget/d;->d:I

    .line 72
    .line 73
    new-instance v0, Ljava/util/HashMap;

    .line 74
    .line 75
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/d;->e:Ljava/util/HashMap;

    .line 79
    .line 80
    return-void
.end method

.method private A(Ljava/lang/String;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    move v0, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :cond_1
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/d;->e:Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_4

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Ljava/lang/String;

    .line 44
    .line 45
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    if-nez v0, :cond_3

    .line 52
    .line 53
    invoke-virtual {v3, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_2

    .line 58
    .line 59
    :cond_3
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/d;->e:Ljava/util/HashMap;

    .line 60
    .line 61
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 66
    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    invoke-virtual {v2, p2}, Landroidx/constraintlayout/widget/ConstraintAttribute;->a(Landroid/view/View;)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_4
    return-void
.end method

.method private B(Landroid/graphics/RectF;Landroid/view/View;Z)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    int-to-float v0, v0

    .line 13
    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 14
    .line 15
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    int-to-float v0, v0

    .line 20
    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 21
    .line 22
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    int-to-float v0, v0

    .line 27
    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 28
    .line 29
    if-eqz p3, :cond_0

    .line 30
    .line 31
    invoke-virtual {p2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method static synthetic m(Landroidx/constraintlayout/motion/widget/k;F)F
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/k;->s:F

    .line 2
    .line 3
    return p1
.end method

.method static synthetic n(Landroidx/constraintlayout/motion/widget/k;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/k;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic o(Landroidx/constraintlayout/motion/widget/k;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/k;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic p(Landroidx/constraintlayout/motion/widget/k;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/k;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic q(Landroidx/constraintlayout/motion/widget/k;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/motion/widget/k;->l:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic r(Landroidx/constraintlayout/motion/widget/k;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/k;->l:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic s(Landroidx/constraintlayout/motion/widget/k;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/motion/widget/k;->m:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic t(Landroidx/constraintlayout/motion/widget/k;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/k;->m:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic u(Landroidx/constraintlayout/motion/widget/k;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/constraintlayout/motion/widget/k;->u:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic v(Landroidx/constraintlayout/motion/widget/k;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/k;->u:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic w(Landroidx/constraintlayout/motion/widget/k;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/motion/widget/k;->i:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic x(Landroidx/constraintlayout/motion/widget/k;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/k;->i:I

    .line 2
    .line 3
    return p1
.end method

.method private z(Ljava/lang/String;Landroid/view/View;)V
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string v0, "."

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/k;->A(Ljava/lang/String;Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/k;->A:Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/k;->A:Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/lang/reflect/Method;

    .line 32
    .line 33
    if-nez v0, :cond_3

    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    move-object v0, v1

    .line 37
    :cond_3
    const-string v2, " "

    .line 38
    .line 39
    const-string v3, "\"on class "

    .line 40
    .line 41
    const-string v4, "KeyTrigger"

    .line 42
    .line 43
    if-nez v0, :cond_4

    .line 44
    .line 45
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0, p1, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/k;->A:Ljava/util/HashMap;

    .line 54
    .line 55
    invoke-virtual {v5, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/k;->A:Ljava/util/HashMap;

    .line 60
    .line 61
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v1, "Could not find method \""

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-static {p2}, Landroidx/constraintlayout/motion/widget/a;->d(Landroid/view/View;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :cond_4
    :goto_0
    :try_start_1
    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :catch_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    const-string v0, "Exception in call \""

    .line 119
    .line 120
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/k;->h:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-static {p2}, Landroidx/constraintlayout/motion/widget/a;->d(Landroid/view/View;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    :goto_1
    return-void
.end method


# virtual methods
.method public a(Ljava/util/HashMap;)V
    .locals 0

    .line 1
    return-void
.end method

.method public b()Landroidx/constraintlayout/motion/widget/d;
    .locals 1

    .line 1
    new-instance v0, Landroidx/constraintlayout/motion/widget/k;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/k;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/motion/widget/k;->c(Landroidx/constraintlayout/motion/widget/d;)Landroidx/constraintlayout/motion/widget/d;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public c(Landroidx/constraintlayout/motion/widget/d;)Landroidx/constraintlayout/motion/widget/d;
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/constraintlayout/motion/widget/d;->c(Landroidx/constraintlayout/motion/widget/d;)Landroidx/constraintlayout/motion/widget/d;

    .line 2
    .line 3
    .line 4
    check-cast p1, Landroidx/constraintlayout/motion/widget/k;

    .line 5
    .line 6
    iget v0, p1, Landroidx/constraintlayout/motion/widget/k;->g:I

    .line 7
    .line 8
    iput v0, p0, Landroidx/constraintlayout/motion/widget/k;->g:I

    .line 9
    .line 10
    iget-object v0, p1, Landroidx/constraintlayout/motion/widget/k;->h:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/k;->h:Ljava/lang/String;

    .line 13
    .line 14
    iget v0, p1, Landroidx/constraintlayout/motion/widget/k;->i:I

    .line 15
    .line 16
    iput v0, p0, Landroidx/constraintlayout/motion/widget/k;->i:I

    .line 17
    .line 18
    iget-object v0, p1, Landroidx/constraintlayout/motion/widget/k;->j:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/k;->j:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v0, p1, Landroidx/constraintlayout/motion/widget/k;->k:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/k;->k:Ljava/lang/String;

    .line 25
    .line 26
    iget v0, p1, Landroidx/constraintlayout/motion/widget/k;->l:I

    .line 27
    .line 28
    iput v0, p0, Landroidx/constraintlayout/motion/widget/k;->l:I

    .line 29
    .line 30
    iget v0, p1, Landroidx/constraintlayout/motion/widget/k;->m:I

    .line 31
    .line 32
    iput v0, p0, Landroidx/constraintlayout/motion/widget/k;->m:I

    .line 33
    .line 34
    iget-object v0, p1, Landroidx/constraintlayout/motion/widget/k;->n:Landroid/view/View;

    .line 35
    .line 36
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/k;->n:Landroid/view/View;

    .line 37
    .line 38
    iget v0, p1, Landroidx/constraintlayout/motion/widget/k;->o:F

    .line 39
    .line 40
    iput v0, p0, Landroidx/constraintlayout/motion/widget/k;->o:F

    .line 41
    .line 42
    iget-boolean v0, p1, Landroidx/constraintlayout/motion/widget/k;->p:Z

    .line 43
    .line 44
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/k;->p:Z

    .line 45
    .line 46
    iget-boolean v0, p1, Landroidx/constraintlayout/motion/widget/k;->q:Z

    .line 47
    .line 48
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/k;->q:Z

    .line 49
    .line 50
    iget-boolean v0, p1, Landroidx/constraintlayout/motion/widget/k;->r:Z

    .line 51
    .line 52
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/k;->r:Z

    .line 53
    .line 54
    iget v0, p1, Landroidx/constraintlayout/motion/widget/k;->s:F

    .line 55
    .line 56
    iput v0, p0, Landroidx/constraintlayout/motion/widget/k;->s:F

    .line 57
    .line 58
    iget v0, p1, Landroidx/constraintlayout/motion/widget/k;->t:F

    .line 59
    .line 60
    iput v0, p0, Landroidx/constraintlayout/motion/widget/k;->t:F

    .line 61
    .line 62
    iget-boolean v0, p1, Landroidx/constraintlayout/motion/widget/k;->u:Z

    .line 63
    .line 64
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/k;->u:Z

    .line 65
    .line 66
    iget-object v0, p1, Landroidx/constraintlayout/motion/widget/k;->y:Landroid/graphics/RectF;

    .line 67
    .line 68
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/k;->y:Landroid/graphics/RectF;

    .line 69
    .line 70
    iget-object v0, p1, Landroidx/constraintlayout/motion/widget/k;->z:Landroid/graphics/RectF;

    .line 71
    .line 72
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/k;->z:Landroid/graphics/RectF;

    .line 73
    .line 74
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/k;->A:Ljava/util/HashMap;

    .line 75
    .line 76
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/k;->A:Ljava/util/HashMap;

    .line 77
    .line 78
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/k;->b()Landroidx/constraintlayout/motion/widget/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public d(Ljava/util/HashSet;)V
    .locals 0

    .line 1
    return-void
.end method

.method public e(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->KeyTrigger:[I

    .line 2
    .line 3
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-static {p0, p2, p1}, Landroidx/constraintlayout/motion/widget/k$a;->a(Landroidx/constraintlayout/motion/widget/k;Landroid/content/res/TypedArray;Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public y(FLandroid/view/View;)V
    .locals 9

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/k;->m:I

    .line 2
    .line 3
    sget v1, Landroidx/constraintlayout/motion/widget/d;->f:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eq v0, v1, :cond_6

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/k;->n:Landroid/view/View;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/view/ViewGroup;

    .line 18
    .line 19
    iget v1, p0, Landroidx/constraintlayout/motion/widget/k;->m:I

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/k;->n:Landroid/view/View;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/k;->y:Landroid/graphics/RectF;

    .line 28
    .line 29
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/k;->n:Landroid/view/View;

    .line 30
    .line 31
    iget-boolean v4, p0, Landroidx/constraintlayout/motion/widget/k;->u:Z

    .line 32
    .line 33
    invoke-direct {p0, v0, v1, v4}, Landroidx/constraintlayout/motion/widget/k;->B(Landroid/graphics/RectF;Landroid/view/View;Z)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/k;->z:Landroid/graphics/RectF;

    .line 37
    .line 38
    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/k;->u:Z

    .line 39
    .line 40
    invoke-direct {p0, v0, p2, v1}, Landroidx/constraintlayout/motion/widget/k;->B(Landroid/graphics/RectF;Landroid/view/View;Z)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/k;->y:Landroid/graphics/RectF;

    .line 44
    .line 45
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/k;->z:Landroid/graphics/RectF;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/k;->p:Z

    .line 54
    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/k;->p:Z

    .line 58
    .line 59
    move v0, v2

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    move v0, v3

    .line 62
    :goto_0
    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/k;->r:Z

    .line 63
    .line 64
    if-eqz v1, :cond_2

    .line 65
    .line 66
    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/k;->r:Z

    .line 67
    .line 68
    move v1, v2

    .line 69
    goto :goto_1

    .line 70
    :cond_2
    move v1, v3

    .line 71
    :goto_1
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/k;->q:Z

    .line 72
    .line 73
    move v4, v1

    .line 74
    move v1, v3

    .line 75
    goto/16 :goto_8

    .line 76
    .line 77
    :cond_3
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/k;->p:Z

    .line 78
    .line 79
    if-nez v0, :cond_4

    .line 80
    .line 81
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/k;->p:Z

    .line 82
    .line 83
    move v0, v2

    .line 84
    goto :goto_2

    .line 85
    :cond_4
    move v0, v3

    .line 86
    :goto_2
    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/k;->q:Z

    .line 87
    .line 88
    if-eqz v1, :cond_5

    .line 89
    .line 90
    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/k;->q:Z

    .line 91
    .line 92
    move v1, v2

    .line 93
    goto :goto_3

    .line 94
    :cond_5
    move v1, v3

    .line 95
    :goto_3
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/k;->r:Z

    .line 96
    .line 97
    goto/16 :goto_7

    .line 98
    .line 99
    :cond_6
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/k;->p:Z

    .line 100
    .line 101
    const/4 v1, 0x0

    .line 102
    if-eqz v0, :cond_7

    .line 103
    .line 104
    iget v0, p0, Landroidx/constraintlayout/motion/widget/k;->s:F

    .line 105
    .line 106
    sub-float v4, p1, v0

    .line 107
    .line 108
    iget v5, p0, Landroidx/constraintlayout/motion/widget/k;->t:F

    .line 109
    .line 110
    sub-float/2addr v5, v0

    .line 111
    mul-float/2addr v4, v5

    .line 112
    cmpg-float v0, v4, v1

    .line 113
    .line 114
    if-gez v0, :cond_8

    .line 115
    .line 116
    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/k;->p:Z

    .line 117
    .line 118
    move v0, v2

    .line 119
    goto :goto_4

    .line 120
    :cond_7
    iget v0, p0, Landroidx/constraintlayout/motion/widget/k;->s:F

    .line 121
    .line 122
    sub-float v0, p1, v0

    .line 123
    .line 124
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    iget v4, p0, Landroidx/constraintlayout/motion/widget/k;->o:F

    .line 129
    .line 130
    cmpl-float v0, v0, v4

    .line 131
    .line 132
    if-lez v0, :cond_8

    .line 133
    .line 134
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/k;->p:Z

    .line 135
    .line 136
    :cond_8
    move v0, v3

    .line 137
    :goto_4
    iget-boolean v4, p0, Landroidx/constraintlayout/motion/widget/k;->q:Z

    .line 138
    .line 139
    if-eqz v4, :cond_9

    .line 140
    .line 141
    iget v4, p0, Landroidx/constraintlayout/motion/widget/k;->s:F

    .line 142
    .line 143
    sub-float v5, p1, v4

    .line 144
    .line 145
    iget v6, p0, Landroidx/constraintlayout/motion/widget/k;->t:F

    .line 146
    .line 147
    sub-float/2addr v6, v4

    .line 148
    mul-float/2addr v6, v5

    .line 149
    cmpg-float v4, v6, v1

    .line 150
    .line 151
    if-gez v4, :cond_a

    .line 152
    .line 153
    cmpg-float v4, v5, v1

    .line 154
    .line 155
    if-gez v4, :cond_a

    .line 156
    .line 157
    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/k;->q:Z

    .line 158
    .line 159
    move v4, v2

    .line 160
    goto :goto_5

    .line 161
    :cond_9
    iget v4, p0, Landroidx/constraintlayout/motion/widget/k;->s:F

    .line 162
    .line 163
    sub-float v4, p1, v4

    .line 164
    .line 165
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    iget v5, p0, Landroidx/constraintlayout/motion/widget/k;->o:F

    .line 170
    .line 171
    cmpl-float v4, v4, v5

    .line 172
    .line 173
    if-lez v4, :cond_a

    .line 174
    .line 175
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/k;->q:Z

    .line 176
    .line 177
    :cond_a
    move v4, v3

    .line 178
    :goto_5
    iget-boolean v5, p0, Landroidx/constraintlayout/motion/widget/k;->r:Z

    .line 179
    .line 180
    if-eqz v5, :cond_c

    .line 181
    .line 182
    iget v5, p0, Landroidx/constraintlayout/motion/widget/k;->s:F

    .line 183
    .line 184
    sub-float v6, p1, v5

    .line 185
    .line 186
    iget v7, p0, Landroidx/constraintlayout/motion/widget/k;->t:F

    .line 187
    .line 188
    sub-float/2addr v7, v5

    .line 189
    mul-float/2addr v7, v6

    .line 190
    cmpg-float v5, v7, v1

    .line 191
    .line 192
    if-gez v5, :cond_b

    .line 193
    .line 194
    cmpl-float v1, v6, v1

    .line 195
    .line 196
    if-lez v1, :cond_b

    .line 197
    .line 198
    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/k;->r:Z

    .line 199
    .line 200
    move v1, v2

    .line 201
    goto :goto_6

    .line 202
    :cond_b
    move v1, v3

    .line 203
    :goto_6
    move v8, v4

    .line 204
    move v4, v1

    .line 205
    move v1, v8

    .line 206
    goto :goto_8

    .line 207
    :cond_c
    iget v1, p0, Landroidx/constraintlayout/motion/widget/k;->s:F

    .line 208
    .line 209
    sub-float v1, p1, v1

    .line 210
    .line 211
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    iget v5, p0, Landroidx/constraintlayout/motion/widget/k;->o:F

    .line 216
    .line 217
    cmpl-float v1, v1, v5

    .line 218
    .line 219
    if-lez v1, :cond_d

    .line 220
    .line 221
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/k;->r:Z

    .line 222
    .line 223
    :cond_d
    move v1, v4

    .line 224
    :goto_7
    move v4, v3

    .line 225
    :goto_8
    iput p1, p0, Landroidx/constraintlayout/motion/widget/k;->t:F

    .line 226
    .line 227
    if-nez v1, :cond_e

    .line 228
    .line 229
    if-nez v0, :cond_e

    .line 230
    .line 231
    if-eqz v4, :cond_f

    .line 232
    .line 233
    :cond_e
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 238
    .line 239
    iget v6, p0, Landroidx/constraintlayout/motion/widget/k;->l:I

    .line 240
    .line 241
    invoke-virtual {v5, v6, v4, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->fireTrigger(IZF)V

    .line 242
    .line 243
    .line 244
    :cond_f
    iget p1, p0, Landroidx/constraintlayout/motion/widget/k;->i:I

    .line 245
    .line 246
    sget v5, Landroidx/constraintlayout/motion/widget/d;->f:I

    .line 247
    .line 248
    if-ne p1, v5, :cond_10

    .line 249
    .line 250
    move-object p1, p2

    .line 251
    goto :goto_9

    .line 252
    :cond_10
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    check-cast p1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 257
    .line 258
    iget v5, p0, Landroidx/constraintlayout/motion/widget/k;->i:I

    .line 259
    .line 260
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    :goto_9
    if-eqz v1, :cond_12

    .line 265
    .line 266
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/k;->j:Ljava/lang/String;

    .line 267
    .line 268
    if-eqz v1, :cond_11

    .line 269
    .line 270
    invoke-direct {p0, v1, p1}, Landroidx/constraintlayout/motion/widget/k;->z(Ljava/lang/String;Landroid/view/View;)V

    .line 271
    .line 272
    .line 273
    :cond_11
    iget v1, p0, Landroidx/constraintlayout/motion/widget/k;->v:I

    .line 274
    .line 275
    sget v5, Landroidx/constraintlayout/motion/widget/d;->f:I

    .line 276
    .line 277
    if-eq v1, v5, :cond_12

    .line 278
    .line 279
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 284
    .line 285
    iget v5, p0, Landroidx/constraintlayout/motion/widget/k;->v:I

    .line 286
    .line 287
    new-array v6, v2, [Landroid/view/View;

    .line 288
    .line 289
    aput-object p1, v6, v3

    .line 290
    .line 291
    invoke-virtual {v1, v5, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->viewTransition(I[Landroid/view/View;)V

    .line 292
    .line 293
    .line 294
    :cond_12
    if-eqz v4, :cond_14

    .line 295
    .line 296
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/k;->k:Ljava/lang/String;

    .line 297
    .line 298
    if-eqz v1, :cond_13

    .line 299
    .line 300
    invoke-direct {p0, v1, p1}, Landroidx/constraintlayout/motion/widget/k;->z(Ljava/lang/String;Landroid/view/View;)V

    .line 301
    .line 302
    .line 303
    :cond_13
    iget v1, p0, Landroidx/constraintlayout/motion/widget/k;->w:I

    .line 304
    .line 305
    sget v4, Landroidx/constraintlayout/motion/widget/d;->f:I

    .line 306
    .line 307
    if-eq v1, v4, :cond_14

    .line 308
    .line 309
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 314
    .line 315
    iget v4, p0, Landroidx/constraintlayout/motion/widget/k;->w:I

    .line 316
    .line 317
    new-array v5, v2, [Landroid/view/View;

    .line 318
    .line 319
    aput-object p1, v5, v3

    .line 320
    .line 321
    invoke-virtual {v1, v4, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->viewTransition(I[Landroid/view/View;)V

    .line 322
    .line 323
    .line 324
    :cond_14
    if-eqz v0, :cond_16

    .line 325
    .line 326
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/k;->h:Ljava/lang/String;

    .line 327
    .line 328
    if-eqz v0, :cond_15

    .line 329
    .line 330
    invoke-direct {p0, v0, p1}, Landroidx/constraintlayout/motion/widget/k;->z(Ljava/lang/String;Landroid/view/View;)V

    .line 331
    .line 332
    .line 333
    :cond_15
    iget v0, p0, Landroidx/constraintlayout/motion/widget/k;->x:I

    .line 334
    .line 335
    sget v1, Landroidx/constraintlayout/motion/widget/d;->f:I

    .line 336
    .line 337
    if-eq v0, v1, :cond_16

    .line 338
    .line 339
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 340
    .line 341
    .line 342
    move-result-object p2

    .line 343
    check-cast p2, Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 344
    .line 345
    iget v0, p0, Landroidx/constraintlayout/motion/widget/k;->x:I

    .line 346
    .line 347
    new-array v1, v2, [Landroid/view/View;

    .line 348
    .line 349
    aput-object p1, v1, v3

    .line 350
    .line 351
    invoke-virtual {p2, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->viewTransition(I[Landroid/view/View;)V

    .line 352
    .line 353
    .line 354
    :cond_16
    return-void
.end method
