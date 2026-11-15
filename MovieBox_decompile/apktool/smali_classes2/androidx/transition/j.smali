.class public abstract Landroidx/transition/j;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/j$f;,
        Landroidx/transition/j$d;,
        Landroidx/transition/j$g;,
        Landroidx/transition/j$e;
    }
.end annotation


# static fields
.field private static final J:[Landroid/animation/Animator;

.field private static final K:[I

.field private static final L:Landroidx/transition/g;

.field private static M:Ljava/lang/ThreadLocal;


# instance fields
.field private A:Z

.field B:Z

.field private C:Landroidx/transition/j;

.field private D:Ljava/util/ArrayList;

.field E:Ljava/util/ArrayList;

.field F:Landroidx/transition/t;

.field private G:Landroidx/transition/j$e;

.field private H:Landroidx/collection/a;

.field private I:Landroidx/transition/g;

.field private a:Ljava/lang/String;

.field private b:J

.field c:J

.field private d:Landroid/animation/TimeInterpolator;

.field e:Ljava/util/ArrayList;

.field f:Ljava/util/ArrayList;

.field private g:Ljava/util/ArrayList;

.field private h:Ljava/util/ArrayList;

.field private i:Ljava/util/ArrayList;

.field private j:Ljava/util/ArrayList;

.field private k:Ljava/util/ArrayList;

.field private l:Ljava/util/ArrayList;

.field private m:Ljava/util/ArrayList;

.field private n:Ljava/util/ArrayList;

.field private o:Ljava/util/ArrayList;

.field private p:Landroidx/transition/x;

.field private q:Landroidx/transition/x;

.field r:Landroidx/transition/u;

.field private s:[I

.field private t:Ljava/util/ArrayList;

.field private u:Ljava/util/ArrayList;

.field private v:[Landroidx/transition/j$f;

.field w:Z

.field x:Ljava/util/ArrayList;

.field private y:[Landroid/animation/Animator;

.field z:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Landroid/animation/Animator;

    .line 3
    .line 4
    sput-object v0, Landroidx/transition/j;->J:[Landroid/animation/Animator;

    .line 5
    .line 6
    const/4 v0, 0x3

    .line 7
    const/4 v1, 0x4

    .line 8
    const/4 v2, 0x2

    .line 9
    const/4 v3, 0x1

    .line 10
    filled-new-array {v2, v3, v0, v1}, [I

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Landroidx/transition/j;->K:[I

    .line 15
    .line 16
    new-instance v0, Landroidx/transition/j$a;

    .line 17
    .line 18
    invoke-direct {v0}, Landroidx/transition/j$a;-><init>()V

    .line 19
    .line 20
    .line 21
    sput-object v0, Landroidx/transition/j;->L:Landroidx/transition/g;

    .line 22
    .line 23
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 26
    .line 27
    .line 28
    sput-object v0, Landroidx/transition/j;->M:Ljava/lang/ThreadLocal;

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Landroidx/transition/j;->a:Ljava/lang/String;

    .line 13
    .line 14
    const-wide/16 v0, -0x1

    .line 15
    .line 16
    iput-wide v0, p0, Landroidx/transition/j;->b:J

    .line 17
    .line 18
    iput-wide v0, p0, Landroidx/transition/j;->c:J

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Landroidx/transition/j;->d:Landroid/animation/TimeInterpolator;

    .line 22
    .line 23
    new-instance v1, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Landroidx/transition/j;->e:Ljava/util/ArrayList;

    .line 29
    .line 30
    new-instance v1, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Landroidx/transition/j;->f:Ljava/util/ArrayList;

    .line 36
    .line 37
    iput-object v0, p0, Landroidx/transition/j;->g:Ljava/util/ArrayList;

    .line 38
    .line 39
    iput-object v0, p0, Landroidx/transition/j;->h:Ljava/util/ArrayList;

    .line 40
    .line 41
    iput-object v0, p0, Landroidx/transition/j;->i:Ljava/util/ArrayList;

    .line 42
    .line 43
    iput-object v0, p0, Landroidx/transition/j;->j:Ljava/util/ArrayList;

    .line 44
    .line 45
    iput-object v0, p0, Landroidx/transition/j;->k:Ljava/util/ArrayList;

    .line 46
    .line 47
    iput-object v0, p0, Landroidx/transition/j;->l:Ljava/util/ArrayList;

    .line 48
    .line 49
    iput-object v0, p0, Landroidx/transition/j;->m:Ljava/util/ArrayList;

    .line 50
    .line 51
    iput-object v0, p0, Landroidx/transition/j;->n:Ljava/util/ArrayList;

    .line 52
    .line 53
    iput-object v0, p0, Landroidx/transition/j;->o:Ljava/util/ArrayList;

    .line 54
    .line 55
    new-instance v1, Landroidx/transition/x;

    .line 56
    .line 57
    invoke-direct {v1}, Landroidx/transition/x;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object v1, p0, Landroidx/transition/j;->p:Landroidx/transition/x;

    .line 61
    .line 62
    new-instance v1, Landroidx/transition/x;

    .line 63
    .line 64
    invoke-direct {v1}, Landroidx/transition/x;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object v1, p0, Landroidx/transition/j;->q:Landroidx/transition/x;

    .line 68
    .line 69
    iput-object v0, p0, Landroidx/transition/j;->r:Landroidx/transition/u;

    .line 70
    .line 71
    sget-object v1, Landroidx/transition/j;->K:[I

    .line 72
    .line 73
    iput-object v1, p0, Landroidx/transition/j;->s:[I

    .line 74
    .line 75
    const/4 v1, 0x0

    .line 76
    iput-boolean v1, p0, Landroidx/transition/j;->w:Z

    .line 77
    .line 78
    new-instance v2, Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .line 82
    .line 83
    iput-object v2, p0, Landroidx/transition/j;->x:Ljava/util/ArrayList;

    .line 84
    .line 85
    sget-object v2, Landroidx/transition/j;->J:[Landroid/animation/Animator;

    .line 86
    .line 87
    iput-object v2, p0, Landroidx/transition/j;->y:[Landroid/animation/Animator;

    .line 88
    .line 89
    iput v1, p0, Landroidx/transition/j;->z:I

    .line 90
    .line 91
    iput-boolean v1, p0, Landroidx/transition/j;->A:Z

    .line 92
    .line 93
    iput-boolean v1, p0, Landroidx/transition/j;->B:Z

    .line 94
    .line 95
    iput-object v0, p0, Landroidx/transition/j;->C:Landroidx/transition/j;

    .line 96
    .line 97
    iput-object v0, p0, Landroidx/transition/j;->D:Ljava/util/ArrayList;

    .line 98
    .line 99
    new-instance v0, Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .line 103
    .line 104
    iput-object v0, p0, Landroidx/transition/j;->E:Ljava/util/ArrayList;

    .line 105
    .line 106
    sget-object v0, Landroidx/transition/j;->L:Landroidx/transition/g;

    .line 107
    .line 108
    iput-object v0, p0, Landroidx/transition/j;->I:Landroidx/transition/g;

    .line 109
    .line 110
    return-void
.end method

.method private static I(Landroidx/transition/w;Landroidx/transition/w;Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/transition/w;->a:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iget-object p1, p1, Landroidx/transition/w;->a:Ljava/util/Map;

    .line 8
    .line 9
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const/4 p2, 0x1

    .line 20
    if-eqz p0, :cond_2

    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    xor-int/2addr p0, p2

    .line 30
    goto :goto_1

    .line 31
    :cond_2
    :goto_0
    move p0, p2

    .line 32
    :goto_1
    return p0
.end method

.method private J(Landroidx/collection/a;Landroidx/collection/a;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 7

    .line 1
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Landroid/view/View;

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, v2}, Landroidx/transition/j;->H(Landroid/view/View;)Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    invoke-virtual {p4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Landroid/view/View;

    .line 31
    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0, v3}, Landroidx/transition/j;->H(Landroid/view/View;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_0

    .line 39
    .line 40
    invoke-virtual {p1, v2}, Landroidx/collection/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    check-cast v4, Landroidx/transition/w;

    .line 45
    .line 46
    invoke-virtual {p2, v3}, Landroidx/collection/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    check-cast v5, Landroidx/transition/w;

    .line 51
    .line 52
    if-eqz v4, :cond_0

    .line 53
    .line 54
    if-eqz v5, :cond_0

    .line 55
    .line 56
    iget-object v6, p0, Landroidx/transition/j;->t:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    iget-object v4, p0, Landroidx/transition/j;->u:Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v2}, Landroidx/collection/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, v3}, Landroidx/collection/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    return-void
.end method

.method private K(Landroidx/collection/a;Landroidx/collection/a;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroidx/collection/x0;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    :goto_0
    if-ltz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroidx/collection/x0;->keyAt(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Landroid/view/View;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Landroidx/transition/j;->H(Landroid/view/View;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {p2, v1}, Landroidx/collection/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroidx/transition/w;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    iget-object v2, v1, Landroidx/transition/w;->b:Landroid/view/View;

    .line 32
    .line 33
    invoke-virtual {p0, v2}, Landroidx/transition/j;->H(Landroid/view/View;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroidx/collection/x0;->removeAt(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Landroidx/transition/w;

    .line 44
    .line 45
    iget-object v3, p0, Landroidx/transition/j;->t:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    iget-object v2, p0, Landroidx/transition/j;->u:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    return-void
.end method

.method private L(Landroidx/collection/a;Landroidx/collection/a;Landroidx/collection/x;Landroidx/collection/x;)V
    .locals 7

    .line 1
    invoke-virtual {p3}, Landroidx/collection/x;->n()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p3, v1}, Landroidx/collection/x;->o(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Landroid/view/View;

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, v2}, Landroidx/transition/j;->H(Landroid/view/View;)Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    invoke-virtual {p3, v1}, Landroidx/collection/x;->j(I)J

    .line 23
    .line 24
    .line 25
    move-result-wide v3

    .line 26
    invoke-virtual {p4, v3, v4}, Landroidx/collection/x;->e(J)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Landroid/view/View;

    .line 31
    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0, v3}, Landroidx/transition/j;->H(Landroid/view/View;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_0

    .line 39
    .line 40
    invoke-virtual {p1, v2}, Landroidx/collection/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    check-cast v4, Landroidx/transition/w;

    .line 45
    .line 46
    invoke-virtual {p2, v3}, Landroidx/collection/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    check-cast v5, Landroidx/transition/w;

    .line 51
    .line 52
    if-eqz v4, :cond_0

    .line 53
    .line 54
    if-eqz v5, :cond_0

    .line 55
    .line 56
    iget-object v6, p0, Landroidx/transition/j;->t:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    iget-object v4, p0, Landroidx/transition/j;->u:Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v2}, Landroidx/collection/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, v3}, Landroidx/collection/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    return-void
.end method

.method private M(Landroidx/collection/a;Landroidx/collection/a;Landroidx/collection/a;Landroidx/collection/a;)V
    .locals 7

    .line 1
    invoke-virtual {p3}, Landroidx/collection/x0;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p3, v1}, Landroidx/collection/x0;->valueAt(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Landroid/view/View;

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, v2}, Landroidx/transition/j;->H(Landroid/view/View;)Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    invoke-virtual {p3, v1}, Landroidx/collection/x0;->keyAt(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {p4, v3}, Landroidx/collection/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Landroid/view/View;

    .line 31
    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0, v3}, Landroidx/transition/j;->H(Landroid/view/View;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_0

    .line 39
    .line 40
    invoke-virtual {p1, v2}, Landroidx/collection/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    check-cast v4, Landroidx/transition/w;

    .line 45
    .line 46
    invoke-virtual {p2, v3}, Landroidx/collection/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    check-cast v5, Landroidx/transition/w;

    .line 51
    .line 52
    if-eqz v4, :cond_0

    .line 53
    .line 54
    if-eqz v5, :cond_0

    .line 55
    .line 56
    iget-object v6, p0, Landroidx/transition/j;->t:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    iget-object v4, p0, Landroidx/transition/j;->u:Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v2}, Landroidx/collection/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, v3}, Landroidx/collection/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    return-void
.end method

.method private N(Landroidx/transition/x;Landroidx/transition/x;)V
    .locals 5

    .line 1
    new-instance v0, Landroidx/collection/a;

    .line 2
    .line 3
    iget-object v1, p1, Landroidx/transition/x;->a:Landroidx/collection/a;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroidx/collection/a;-><init>(Landroidx/collection/x0;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroidx/collection/a;

    .line 9
    .line 10
    iget-object v2, p2, Landroidx/transition/x;->a:Landroidx/collection/a;

    .line 11
    .line 12
    invoke-direct {v1, v2}, Landroidx/collection/a;-><init>(Landroidx/collection/x0;)V

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    iget-object v3, p0, Landroidx/transition/j;->s:[I

    .line 17
    .line 18
    array-length v4, v3

    .line 19
    if-ge v2, v4, :cond_4

    .line 20
    .line 21
    aget v3, v3, v2

    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    if-eq v3, v4, :cond_3

    .line 25
    .line 26
    const/4 v4, 0x2

    .line 27
    if-eq v3, v4, :cond_2

    .line 28
    .line 29
    const/4 v4, 0x3

    .line 30
    if-eq v3, v4, :cond_1

    .line 31
    .line 32
    const/4 v4, 0x4

    .line 33
    if-eq v3, v4, :cond_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    iget-object v3, p1, Landroidx/transition/x;->c:Landroidx/collection/x;

    .line 37
    .line 38
    iget-object v4, p2, Landroidx/transition/x;->c:Landroidx/collection/x;

    .line 39
    .line 40
    invoke-direct {p0, v0, v1, v3, v4}, Landroidx/transition/j;->L(Landroidx/collection/a;Landroidx/collection/a;Landroidx/collection/x;Landroidx/collection/x;)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    iget-object v3, p1, Landroidx/transition/x;->b:Landroid/util/SparseArray;

    .line 45
    .line 46
    iget-object v4, p2, Landroidx/transition/x;->b:Landroid/util/SparseArray;

    .line 47
    .line 48
    invoke-direct {p0, v0, v1, v3, v4}, Landroidx/transition/j;->J(Landroidx/collection/a;Landroidx/collection/a;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    iget-object v3, p1, Landroidx/transition/x;->d:Landroidx/collection/a;

    .line 53
    .line 54
    iget-object v4, p2, Landroidx/transition/x;->d:Landroidx/collection/a;

    .line 55
    .line 56
    invoke-direct {p0, v0, v1, v3, v4}, Landroidx/transition/j;->M(Landroidx/collection/a;Landroidx/collection/a;Landroidx/collection/a;Landroidx/collection/a;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    invoke-direct {p0, v0, v1}, Landroidx/transition/j;->K(Landroidx/collection/a;Landroidx/collection/a;)V

    .line 61
    .line 62
    .line 63
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_4
    invoke-direct {p0, v0, v1}, Landroidx/transition/j;->c(Landroidx/collection/a;Landroidx/collection/a;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method private O(Landroidx/transition/j;Landroidx/transition/j$g;Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/transition/j;->C:Landroidx/transition/j;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {v0, p1, p2, p3}, Landroidx/transition/j;->O(Landroidx/transition/j;Landroidx/transition/j$g;Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/transition/j;->D:Ljava/util/ArrayList;

    .line 9
    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_3

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/transition/j;->D:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-object v1, p0, Landroidx/transition/j;->v:[Landroidx/transition/j$f;

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    new-array v1, v0, [Landroidx/transition/j$f;

    .line 29
    .line 30
    :cond_1
    const/4 v2, 0x0

    .line 31
    iput-object v2, p0, Landroidx/transition/j;->v:[Landroidx/transition/j$f;

    .line 32
    .line 33
    iget-object v3, p0, Landroidx/transition/j;->D:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, [Landroidx/transition/j$f;

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    :goto_0
    if-ge v3, v0, :cond_2

    .line 43
    .line 44
    aget-object v4, v1, v3

    .line 45
    .line 46
    invoke-interface {p2, v4, p1, p3}, Landroidx/transition/j$g;->a(Landroidx/transition/j$f;Landroidx/transition/j;Z)V

    .line 47
    .line 48
    .line 49
    aput-object v2, v1, v3

    .line 50
    .line 51
    add-int/lit8 v3, v3, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    iput-object v1, p0, Landroidx/transition/j;->v:[Landroidx/transition/j$f;

    .line 55
    .line 56
    :cond_3
    return-void
.end method

.method private V(Landroid/animation/Animator;Landroidx/collection/a;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Landroidx/transition/j$b;

    .line 4
    .line 5
    invoke-direct {v0, p0, p2}, Landroidx/transition/j$b;-><init>(Landroidx/transition/j;Landroidx/collection/a;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroidx/transition/j;->e(Landroid/animation/Animator;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private c(Landroidx/collection/a;Landroidx/collection/a;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-virtual {p1}, Landroidx/collection/x0;->size()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    const/4 v3, 0x0

    .line 8
    if-ge v1, v2, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Landroidx/collection/x0;->valueAt(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Landroidx/transition/w;

    .line 15
    .line 16
    iget-object v4, v2, Landroidx/transition/w;->b:Landroid/view/View;

    .line 17
    .line 18
    invoke-virtual {p0, v4}, Landroidx/transition/j;->H(Landroid/view/View;)Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    iget-object v4, p0, Landroidx/transition/j;->t:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Landroidx/transition/j;->u:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    :goto_1
    invoke-virtual {p2}, Landroidx/collection/x0;->size()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-ge v0, p1, :cond_3

    .line 42
    .line 43
    invoke-virtual {p2, v0}, Landroidx/collection/x0;->valueAt(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Landroidx/transition/w;

    .line 48
    .line 49
    iget-object v1, p1, Landroidx/transition/w;->b:Landroid/view/View;

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Landroidx/transition/j;->H(Landroid/view/View;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    iget-object v1, p0, Landroidx/transition/j;->u:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Landroidx/transition/j;->t:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    return-void
.end method

.method private static d(Landroidx/transition/x;Landroid/view/View;Landroidx/transition/w;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/transition/x;->a:Landroidx/collection/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    const/4 v0, 0x0

    .line 11
    if-ltz p2, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/transition/x;->b:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-ltz v1, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/transition/x;->b:Landroid/util/SparseArray;

    .line 22
    .line 23
    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v1, p0, Landroidx/transition/x;->b:Landroid/util/SparseArray;

    .line 28
    .line 29
    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    if-eqz p2, :cond_3

    .line 37
    .line 38
    iget-object v1, p0, Landroidx/transition/x;->d:Landroidx/collection/a;

    .line 39
    .line 40
    invoke-virtual {v1, p2}, Landroidx/collection/a;->containsKey(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    iget-object v1, p0, Landroidx/transition/x;->d:Landroidx/collection/a;

    .line 47
    .line 48
    invoke-virtual {v1, p2, v0}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    iget-object v1, p0, Landroidx/transition/x;->d:Landroidx/collection/a;

    .line 53
    .line 54
    invoke-virtual {v1, p2, p1}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    instance-of p2, p2, Landroid/widget/ListView;

    .line 62
    .line 63
    if-eqz p2, :cond_5

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    check-cast p2, Landroid/widget/ListView;

    .line 70
    .line 71
    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-interface {v1}, Landroid/widget/Adapter;->hasStableIds()Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_5

    .line 80
    .line 81
    invoke-virtual {p2, p1}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    invoke-virtual {p2, v1}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    .line 86
    .line 87
    .line 88
    move-result-wide v1

    .line 89
    iget-object p2, p0, Landroidx/transition/x;->c:Landroidx/collection/x;

    .line 90
    .line 91
    invoke-virtual {p2, v1, v2}, Landroidx/collection/x;->h(J)I

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    if-ltz p2, :cond_4

    .line 96
    .line 97
    iget-object p1, p0, Landroidx/transition/x;->c:Landroidx/collection/x;

    .line 98
    .line 99
    invoke-virtual {p1, v1, v2}, Landroidx/collection/x;->e(J)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    check-cast p1, Landroid/view/View;

    .line 104
    .line 105
    if-eqz p1, :cond_5

    .line 106
    .line 107
    const/4 p2, 0x0

    .line 108
    invoke-virtual {p1, p2}, Landroid/view/View;->setHasTransientState(Z)V

    .line 109
    .line 110
    .line 111
    iget-object p0, p0, Landroidx/transition/x;->c:Landroidx/collection/x;

    .line 112
    .line 113
    invoke-virtual {p0, v1, v2, v0}, Landroidx/collection/x;->k(JLjava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_4
    const/4 p2, 0x1

    .line 118
    invoke-virtual {p1, p2}, Landroid/view/View;->setHasTransientState(Z)V

    .line 119
    .line 120
    .line 121
    iget-object p0, p0, Landroidx/transition/x;->c:Landroidx/collection/x;

    .line 122
    .line 123
    invoke-virtual {p0, v1, v2, p1}, Landroidx/collection/x;->k(JLjava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    :cond_5
    :goto_2
    return-void
.end method

.method private h(Landroid/view/View;Z)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Landroidx/transition/j;->i:Ljava/util/ArrayList;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    iget-object v1, p0, Landroidx/transition/j;->j:Ljava/util/ArrayList;

    .line 24
    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    iget-object v1, p0, Landroidx/transition/j;->k:Ljava/util/ArrayList;

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    if-eqz v1, :cond_4

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    move v3, v2

    .line 44
    :goto_0
    if-ge v3, v1, :cond_4

    .line 45
    .line 46
    iget-object v4, p0, Landroidx/transition/j;->k:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    check-cast v4, Ljava/lang/Class;

    .line 53
    .line 54
    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-eqz v4, :cond_3

    .line 59
    .line 60
    return-void

    .line 61
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    instance-of v1, v1, Landroid/view/ViewGroup;

    .line 69
    .line 70
    if-eqz v1, :cond_7

    .line 71
    .line 72
    new-instance v1, Landroidx/transition/w;

    .line 73
    .line 74
    invoke-direct {v1, p1}, Landroidx/transition/w;-><init>(Landroid/view/View;)V

    .line 75
    .line 76
    .line 77
    if-eqz p2, :cond_5

    .line 78
    .line 79
    invoke-virtual {p0, v1}, Landroidx/transition/j;->j(Landroidx/transition/w;)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_5
    invoke-virtual {p0, v1}, Landroidx/transition/j;->g(Landroidx/transition/w;)V

    .line 84
    .line 85
    .line 86
    :goto_1
    iget-object v3, v1, Landroidx/transition/w;->c:Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v1}, Landroidx/transition/j;->i(Landroidx/transition/w;)V

    .line 92
    .line 93
    .line 94
    if-eqz p2, :cond_6

    .line 95
    .line 96
    iget-object v3, p0, Landroidx/transition/j;->p:Landroidx/transition/x;

    .line 97
    .line 98
    invoke-static {v3, p1, v1}, Landroidx/transition/j;->d(Landroidx/transition/x;Landroid/view/View;Landroidx/transition/w;)V

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_6
    iget-object v3, p0, Landroidx/transition/j;->q:Landroidx/transition/x;

    .line 103
    .line 104
    invoke-static {v3, p1, v1}, Landroidx/transition/j;->d(Landroidx/transition/x;Landroid/view/View;Landroidx/transition/w;)V

    .line 105
    .line 106
    .line 107
    :cond_7
    :goto_2
    instance-of v1, p1, Landroid/view/ViewGroup;

    .line 108
    .line 109
    if-eqz v1, :cond_c

    .line 110
    .line 111
    iget-object v1, p0, Landroidx/transition/j;->m:Ljava/util/ArrayList;

    .line 112
    .line 113
    if-eqz v1, :cond_8

    .line 114
    .line 115
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_8

    .line 124
    .line 125
    return-void

    .line 126
    :cond_8
    iget-object v0, p0, Landroidx/transition/j;->n:Ljava/util/ArrayList;

    .line 127
    .line 128
    if-eqz v0, :cond_9

    .line 129
    .line 130
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-eqz v0, :cond_9

    .line 135
    .line 136
    return-void

    .line 137
    :cond_9
    iget-object v0, p0, Landroidx/transition/j;->o:Ljava/util/ArrayList;

    .line 138
    .line 139
    if-eqz v0, :cond_b

    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    move v1, v2

    .line 146
    :goto_3
    if-ge v1, v0, :cond_b

    .line 147
    .line 148
    iget-object v3, p0, Landroidx/transition/j;->o:Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    check-cast v3, Ljava/lang/Class;

    .line 155
    .line 156
    invoke-virtual {v3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    if-eqz v3, :cond_a

    .line 161
    .line 162
    return-void

    .line 163
    :cond_a
    add-int/lit8 v1, v1, 0x1

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_b
    check-cast p1, Landroid/view/ViewGroup;

    .line 167
    .line 168
    :goto_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-ge v2, v0, :cond_c

    .line 173
    .line 174
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-direct {p0, v0, p2}, Landroidx/transition/j;->h(Landroid/view/View;Z)V

    .line 179
    .line 180
    .line 181
    add-int/lit8 v2, v2, 0x1

    .line 182
    .line 183
    goto :goto_4

    .line 184
    :cond_c
    return-void
.end method

.method private static y()Landroidx/collection/a;
    .locals 2

    .line 1
    sget-object v0, Landroidx/transition/j;->M:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/collection/a;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroidx/collection/a;

    .line 12
    .line 13
    invoke-direct {v0}, Landroidx/collection/a;-><init>()V

    .line 14
    .line 15
    .line 16
    sget-object v1, Landroidx/transition/j;->M:Ljava/lang/ThreadLocal;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-object v0
.end method


# virtual methods
.method public A()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/transition/j;->e:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public B()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/transition/j;->g:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public C()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/transition/j;->h:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public D()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/transition/j;->f:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public E()[Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public F(Landroid/view/View;Z)Landroidx/transition/w;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/transition/j;->r:Landroidx/transition/u;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroidx/transition/j;->F(Landroid/view/View;Z)Landroidx/transition/w;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    if-eqz p2, :cond_1

    .line 11
    .line 12
    iget-object p2, p0, Landroidx/transition/j;->p:Landroidx/transition/x;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget-object p2, p0, Landroidx/transition/j;->q:Landroidx/transition/x;

    .line 16
    .line 17
    :goto_0
    iget-object p2, p2, Landroidx/transition/x;->a:Landroidx/collection/a;

    .line 18
    .line 19
    invoke-virtual {p2, p1}, Landroidx/collection/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Landroidx/transition/w;

    .line 24
    .line 25
    return-object p1
.end method

.method public G(Landroidx/transition/w;Landroidx/transition/w;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    if-eqz p2, :cond_3

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/transition/j;->E()[Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    array-length v3, v1

    .line 14
    move v4, v0

    .line 15
    :goto_0
    if-ge v4, v3, :cond_3

    .line 16
    .line 17
    aget-object v5, v1, v4

    .line 18
    .line 19
    invoke-static {p1, p2, v5}, Landroidx/transition/j;->I(Landroidx/transition/w;Landroidx/transition/w;Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-eqz v5, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object v1, p1, Landroidx/transition/w;->a:Ljava/util/Map;

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_3

    .line 44
    .line 45
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {p1, p2, v3}, Landroidx/transition/j;->I(Landroidx/transition/w;Landroidx/transition/w;Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_2

    .line 56
    .line 57
    :goto_1
    move v0, v2

    .line 58
    :cond_3
    return v0
.end method

.method H(Landroid/view/View;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroidx/transition/j;->i:Ljava/util/ArrayList;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    return v2

    .line 21
    :cond_0
    iget-object v1, p0, Landroidx/transition/j;->j:Ljava/util/ArrayList;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    return v2

    .line 32
    :cond_1
    iget-object v1, p0, Landroidx/transition/j;->k:Ljava/util/ArrayList;

    .line 33
    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    move v3, v2

    .line 41
    :goto_0
    if-ge v3, v1, :cond_3

    .line 42
    .line 43
    iget-object v4, p0, Landroidx/transition/j;->k:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Ljava/lang/Class;

    .line 50
    .line 51
    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_2

    .line 56
    .line 57
    return v2

    .line 58
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    iget-object v1, p0, Landroidx/transition/j;->l:Ljava/util/ArrayList;

    .line 62
    .line 63
    if-eqz v1, :cond_4

    .line 64
    .line 65
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    if-eqz v1, :cond_4

    .line 70
    .line 71
    iget-object v1, p0, Landroidx/transition/j;->l:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_4

    .line 82
    .line 83
    return v2

    .line 84
    :cond_4
    iget-object v1, p0, Landroidx/transition/j;->e:Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    const/4 v3, 0x1

    .line 91
    if-nez v1, :cond_7

    .line 92
    .line 93
    iget-object v1, p0, Landroidx/transition/j;->f:Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-nez v1, :cond_7

    .line 100
    .line 101
    iget-object v1, p0, Landroidx/transition/j;->h:Ljava/util/ArrayList;

    .line 102
    .line 103
    if-eqz v1, :cond_5

    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-eqz v1, :cond_7

    .line 110
    .line 111
    :cond_5
    iget-object v1, p0, Landroidx/transition/j;->g:Ljava/util/ArrayList;

    .line 112
    .line 113
    if-eqz v1, :cond_6

    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-eqz v1, :cond_7

    .line 120
    .line 121
    :cond_6
    return v3

    .line 122
    :cond_7
    iget-object v1, p0, Landroidx/transition/j;->e:Ljava/util/ArrayList;

    .line 123
    .line 124
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-nez v0, :cond_c

    .line 133
    .line 134
    iget-object v0, p0, Landroidx/transition/j;->f:Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-eqz v0, :cond_8

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_8
    iget-object v0, p0, Landroidx/transition/j;->g:Ljava/util/ArrayList;

    .line 144
    .line 145
    if-eqz v0, :cond_9

    .line 146
    .line 147
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-eqz v0, :cond_9

    .line 156
    .line 157
    return v3

    .line 158
    :cond_9
    iget-object v0, p0, Landroidx/transition/j;->h:Ljava/util/ArrayList;

    .line 159
    .line 160
    if-eqz v0, :cond_b

    .line 161
    .line 162
    move v0, v2

    .line 163
    :goto_1
    iget-object v1, p0, Landroidx/transition/j;->h:Ljava/util/ArrayList;

    .line 164
    .line 165
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    if-ge v0, v1, :cond_b

    .line 170
    .line 171
    iget-object v1, p0, Landroidx/transition/j;->h:Ljava/util/ArrayList;

    .line 172
    .line 173
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    check-cast v1, Ljava/lang/Class;

    .line 178
    .line 179
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    if-eqz v1, :cond_a

    .line 184
    .line 185
    return v3

    .line 186
    :cond_a
    add-int/lit8 v0, v0, 0x1

    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_b
    return v2

    .line 190
    :cond_c
    :goto_2
    return v3
.end method

.method P(Landroidx/transition/j$g;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p0, p1, p2}, Landroidx/transition/j;->O(Landroidx/transition/j;Landroidx/transition/j$g;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public Q(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-boolean p1, p0, Landroidx/transition/j;->B:Z

    .line 2
    .line 3
    if-nez p1, :cond_1

    .line 4
    .line 5
    iget-object p1, p0, Landroidx/transition/j;->x:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object v0, p0, Landroidx/transition/j;->x:Ljava/util/ArrayList;

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/transition/j;->y:[Landroid/animation/Animator;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, [Landroid/animation/Animator;

    .line 20
    .line 21
    sget-object v1, Landroidx/transition/j;->J:[Landroid/animation/Animator;

    .line 22
    .line 23
    iput-object v1, p0, Landroidx/transition/j;->y:[Landroid/animation/Animator;

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    sub-int/2addr p1, v1

    .line 27
    :goto_0
    if-ltz p1, :cond_0

    .line 28
    .line 29
    aget-object v2, v0, p1

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    aput-object v3, v0, p1

    .line 33
    .line 34
    invoke-virtual {v2}, Landroid/animation/Animator;->pause()V

    .line 35
    .line 36
    .line 37
    add-int/lit8 p1, p1, -0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iput-object v0, p0, Landroidx/transition/j;->y:[Landroid/animation/Animator;

    .line 41
    .line 42
    sget-object p1, Landroidx/transition/j$g;->d:Landroidx/transition/j$g;

    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    invoke-virtual {p0, p1, v0}, Landroidx/transition/j;->P(Landroidx/transition/j$g;Z)V

    .line 46
    .line 47
    .line 48
    iput-boolean v1, p0, Landroidx/transition/j;->A:Z

    .line 49
    .line 50
    :cond_1
    return-void
.end method

.method R(Landroid/view/ViewGroup;)V
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Landroidx/transition/j;->t:Ljava/util/ArrayList;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Landroidx/transition/j;->u:Ljava/util/ArrayList;

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/transition/j;->p:Landroidx/transition/x;

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/transition/j;->q:Landroidx/transition/x;

    .line 18
    .line 19
    invoke-direct {p0, v0, v1}, Landroidx/transition/j;->N(Landroidx/transition/x;Landroidx/transition/x;)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Landroidx/transition/j;->y()Landroidx/collection/a;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroidx/collection/x0;->size()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const/4 v3, 0x1

    .line 35
    sub-int/2addr v1, v3

    .line 36
    :goto_0
    if-ltz v1, :cond_5

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroidx/collection/x0;->keyAt(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    check-cast v4, Landroid/animation/Animator;

    .line 43
    .line 44
    if-eqz v4, :cond_4

    .line 45
    .line 46
    invoke-virtual {v0, v4}, Landroidx/collection/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    check-cast v5, Landroidx/transition/j$d;

    .line 51
    .line 52
    if-eqz v5, :cond_4

    .line 53
    .line 54
    iget-object v6, v5, Landroidx/transition/j$d;->a:Landroid/view/View;

    .line 55
    .line 56
    if-eqz v6, :cond_4

    .line 57
    .line 58
    iget-object v6, v5, Landroidx/transition/j$d;->d:Landroid/view/WindowId;

    .line 59
    .line 60
    invoke-virtual {v2, v6}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    if-eqz v6, :cond_4

    .line 65
    .line 66
    iget-object v6, v5, Landroidx/transition/j$d;->c:Landroidx/transition/w;

    .line 67
    .line 68
    iget-object v7, v5, Landroidx/transition/j$d;->a:Landroid/view/View;

    .line 69
    .line 70
    invoke-virtual {p0, v7, v3}, Landroidx/transition/j;->F(Landroid/view/View;Z)Landroidx/transition/w;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    invoke-virtual {p0, v7, v3}, Landroidx/transition/j;->t(Landroid/view/View;Z)Landroidx/transition/w;

    .line 75
    .line 76
    .line 77
    move-result-object v9

    .line 78
    if-nez v8, :cond_0

    .line 79
    .line 80
    if-nez v9, :cond_0

    .line 81
    .line 82
    iget-object v9, p0, Landroidx/transition/j;->q:Landroidx/transition/x;

    .line 83
    .line 84
    iget-object v9, v9, Landroidx/transition/x;->a:Landroidx/collection/a;

    .line 85
    .line 86
    invoke-virtual {v9, v7}, Landroidx/collection/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    move-object v9, v7

    .line 91
    check-cast v9, Landroidx/transition/w;

    .line 92
    .line 93
    :cond_0
    if-nez v8, :cond_1

    .line 94
    .line 95
    if-eqz v9, :cond_4

    .line 96
    .line 97
    :cond_1
    iget-object v7, v5, Landroidx/transition/j$d;->e:Landroidx/transition/j;

    .line 98
    .line 99
    invoke-virtual {v7, v6, v9}, Landroidx/transition/j;->G(Landroidx/transition/w;Landroidx/transition/w;)Z

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    if-eqz v6, :cond_4

    .line 104
    .line 105
    iget-object v5, v5, Landroidx/transition/j$d;->e:Landroidx/transition/j;

    .line 106
    .line 107
    invoke-virtual {v5}, Landroidx/transition/j;->x()Landroidx/transition/j;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4}, Landroid/animation/Animator;->isRunning()Z

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    if-nez v5, :cond_3

    .line 119
    .line 120
    invoke-virtual {v4}, Landroid/animation/Animator;->isStarted()Z

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    if-eqz v5, :cond_2

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_2
    invoke-virtual {v0, v4}, Landroidx/collection/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_3
    :goto_1
    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    .line 132
    .line 133
    .line 134
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, -0x1

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_5
    iget-object v6, p0, Landroidx/transition/j;->p:Landroidx/transition/x;

    .line 138
    .line 139
    iget-object v7, p0, Landroidx/transition/j;->q:Landroidx/transition/x;

    .line 140
    .line 141
    iget-object v8, p0, Landroidx/transition/j;->t:Ljava/util/ArrayList;

    .line 142
    .line 143
    iget-object v9, p0, Landroidx/transition/j;->u:Ljava/util/ArrayList;

    .line 144
    .line 145
    move-object v4, p0

    .line 146
    move-object v5, p1

    .line 147
    invoke-virtual/range {v4 .. v9}, Landroidx/transition/j;->o(Landroid/view/ViewGroup;Landroidx/transition/x;Landroidx/transition/x;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Landroidx/transition/j;->W()V

    .line 151
    .line 152
    .line 153
    return-void
.end method

.method public S(Landroidx/transition/j$f;)Landroidx/transition/j;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/transition/j;->D:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/transition/j;->C:Landroidx/transition/j;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroidx/transition/j;->S(Landroidx/transition/j$f;)Landroidx/transition/j;

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-object p1, p0, Landroidx/transition/j;->D:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_2

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Landroidx/transition/j;->D:Ljava/util/ArrayList;

    .line 29
    .line 30
    :cond_2
    return-object p0
.end method

.method public T(Landroid/view/View;)Landroidx/transition/j;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/transition/j;->f:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public U(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-boolean p1, p0, Landroidx/transition/j;->A:Z

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    iget-boolean p1, p0, Landroidx/transition/j;->B:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    iget-object p1, p0, Landroidx/transition/j;->x:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iget-object v1, p0, Landroidx/transition/j;->x:Ljava/util/ArrayList;

    .line 17
    .line 18
    iget-object v2, p0, Landroidx/transition/j;->y:[Landroid/animation/Animator;

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, [Landroid/animation/Animator;

    .line 25
    .line 26
    sget-object v2, Landroidx/transition/j;->J:[Landroid/animation/Animator;

    .line 27
    .line 28
    iput-object v2, p0, Landroidx/transition/j;->y:[Landroid/animation/Animator;

    .line 29
    .line 30
    add-int/lit8 p1, p1, -0x1

    .line 31
    .line 32
    :goto_0
    if-ltz p1, :cond_0

    .line 33
    .line 34
    aget-object v2, v1, p1

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    aput-object v3, v1, p1

    .line 38
    .line 39
    invoke-virtual {v2}, Landroid/animation/Animator;->resume()V

    .line 40
    .line 41
    .line 42
    add-int/lit8 p1, p1, -0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iput-object v1, p0, Landroidx/transition/j;->y:[Landroid/animation/Animator;

    .line 46
    .line 47
    sget-object p1, Landroidx/transition/j$g;->e:Landroidx/transition/j$g;

    .line 48
    .line 49
    invoke-virtual {p0, p1, v0}, Landroidx/transition/j;->P(Landroidx/transition/j$g;Z)V

    .line 50
    .line 51
    .line 52
    :cond_1
    iput-boolean v0, p0, Landroidx/transition/j;->A:Z

    .line 53
    .line 54
    :cond_2
    return-void
.end method

.method protected W()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/transition/j;->d0()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroidx/transition/j;->y()Landroidx/collection/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Landroidx/transition/j;->E:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Landroid/animation/Animator;

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Landroidx/collection/a;->containsKey(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/transition/j;->d0()V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, v2, v0}, Landroidx/transition/j;->V(Landroid/animation/Animator;Landroidx/collection/a;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object v0, p0, Landroidx/transition/j;->E:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/transition/j;->p()V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public X(J)Landroidx/transition/j;
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/transition/j;->c:J

    .line 2
    .line 3
    return-object p0
.end method

.method public Y(Landroidx/transition/j$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/transition/j;->G:Landroidx/transition/j$e;

    .line 2
    .line 3
    return-void
.end method

.method public Z(Landroid/animation/TimeInterpolator;)Landroidx/transition/j;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/transition/j;->d:Landroid/animation/TimeInterpolator;

    .line 2
    .line 3
    return-object p0
.end method

.method public a(Landroidx/transition/j$f;)Landroidx/transition/j;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/transition/j;->D:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/transition/j;->D:Ljava/util/ArrayList;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/transition/j;->D:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public a0(Landroidx/transition/g;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Landroidx/transition/j;->L:Landroidx/transition/g;

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/transition/j;->I:Landroidx/transition/g;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iput-object p1, p0, Landroidx/transition/j;->I:Landroidx/transition/g;

    .line 9
    .line 10
    :goto_0
    return-void
.end method

.method public b(Landroid/view/View;)Landroidx/transition/j;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/transition/j;->f:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public b0(Landroidx/transition/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/transition/j;->F:Landroidx/transition/t;

    .line 2
    .line 3
    return-void
.end method

.method public c0(J)Landroidx/transition/j;
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/transition/j;->b:J

    .line 2
    .line 3
    return-object p0
.end method

.method protected cancel()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/transition/j;->x:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Landroidx/transition/j;->x:Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/transition/j;->y:[Landroid/animation/Animator;

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, [Landroid/animation/Animator;

    .line 16
    .line 17
    sget-object v2, Landroidx/transition/j;->J:[Landroid/animation/Animator;

    .line 18
    .line 19
    iput-object v2, p0, Landroidx/transition/j;->y:[Landroid/animation/Animator;

    .line 20
    .line 21
    add-int/lit8 v0, v0, -0x1

    .line 22
    .line 23
    :goto_0
    if-ltz v0, :cond_0

    .line 24
    .line 25
    aget-object v2, v1, v0

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    aput-object v3, v1, v0

    .line 29
    .line 30
    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 31
    .line 32
    .line 33
    add-int/lit8 v0, v0, -0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iput-object v1, p0, Landroidx/transition/j;->y:[Landroid/animation/Animator;

    .line 37
    .line 38
    sget-object v0, Landroidx/transition/j$g;->c:Landroidx/transition/j$g;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-virtual {p0, v0, v1}, Landroidx/transition/j;->P(Landroidx/transition/j$g;Z)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/transition/j;->m()Landroidx/transition/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected d0()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/transition/j;->z:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Landroidx/transition/j$g;->a:Landroidx/transition/j$g;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v0, v1}, Landroidx/transition/j;->P(Landroidx/transition/j$g;Z)V

    .line 9
    .line 10
    .line 11
    iput-boolean v1, p0, Landroidx/transition/j;->B:Z

    .line 12
    .line 13
    :cond_0
    iget v0, p0, Landroidx/transition/j;->z:I

    .line 14
    .line 15
    add-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    iput v0, p0, Landroidx/transition/j;->z:I

    .line 18
    .line 19
    return-void
.end method

.method protected e(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/transition/j;->p()V

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroidx/transition/j;->q()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    const-wide/16 v2, 0x0

    .line 12
    .line 13
    cmp-long v0, v0, v2

    .line 14
    .line 15
    if-ltz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/transition/j;->q()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-virtual {p0}, Landroidx/transition/j;->z()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    cmp-long v0, v0, v2

    .line 29
    .line 30
    if-ltz v0, :cond_2

    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/transition/j;->z()J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    invoke-virtual {p1}, Landroid/animation/Animator;->getStartDelay()J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    add-long/2addr v0, v2

    .line 41
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 42
    .line 43
    .line 44
    :cond_2
    invoke-virtual {p0}, Landroidx/transition/j;->s()Landroid/animation/TimeInterpolator;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    invoke-virtual {p0}, Landroidx/transition/j;->s()Landroid/animation/TimeInterpolator;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 55
    .line 56
    .line 57
    :cond_3
    new-instance v0, Landroidx/transition/j$c;

    .line 58
    .line 59
    invoke-direct {v0, p0}, Landroidx/transition/j$c;-><init>(Landroidx/transition/j;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 66
    .line 67
    .line 68
    :goto_0
    return-void
.end method

.method e0(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p1, "@"

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p1, ": "

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-wide v1, p0, Landroidx/transition/j;->c:J

    .line 39
    .line 40
    const-wide/16 v3, -0x1

    .line 41
    .line 42
    cmp-long p1, v1, v3

    .line 43
    .line 44
    const-string v1, ") "

    .line 45
    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    const-string p1, "dur("

    .line 49
    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-wide v5, p0, Landroidx/transition/j;->c:J

    .line 54
    .line 55
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    :cond_0
    iget-wide v5, p0, Landroidx/transition/j;->b:J

    .line 62
    .line 63
    cmp-long p1, v5, v3

    .line 64
    .line 65
    if-eqz p1, :cond_1

    .line 66
    .line 67
    const-string p1, "dly("

    .line 68
    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-wide v2, p0, Landroidx/transition/j;->b:J

    .line 73
    .line 74
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    :cond_1
    iget-object p1, p0, Landroidx/transition/j;->d:Landroid/animation/TimeInterpolator;

    .line 81
    .line 82
    if-eqz p1, :cond_2

    .line 83
    .line 84
    const-string p1, "interp("

    .line 85
    .line 86
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Landroidx/transition/j;->d:Landroid/animation/TimeInterpolator;

    .line 90
    .line 91
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    :cond_2
    iget-object p1, p0, Landroidx/transition/j;->e:Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-gtz p1, :cond_3

    .line 104
    .line 105
    iget-object p1, p0, Landroidx/transition/j;->f:Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-lez p1, :cond_8

    .line 112
    .line 113
    :cond_3
    const-string p1, "tgts("

    .line 114
    .line 115
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-object p1, p0, Landroidx/transition/j;->e:Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    const-string v1, ", "

    .line 125
    .line 126
    const/4 v2, 0x0

    .line 127
    if-lez p1, :cond_5

    .line 128
    .line 129
    move p1, v2

    .line 130
    :goto_0
    iget-object v3, p0, Landroidx/transition/j;->e:Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    if-ge p1, v3, :cond_5

    .line 137
    .line 138
    if-lez p1, :cond_4

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    :cond_4
    iget-object v3, p0, Landroidx/transition/j;->e:Ljava/util/ArrayList;

    .line 144
    .line 145
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    add-int/lit8 p1, p1, 0x1

    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_5
    iget-object p1, p0, Landroidx/transition/j;->f:Ljava/util/ArrayList;

    .line 156
    .line 157
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    if-lez p1, :cond_7

    .line 162
    .line 163
    :goto_1
    iget-object p1, p0, Landroidx/transition/j;->f:Ljava/util/ArrayList;

    .line 164
    .line 165
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    if-ge v2, p1, :cond_7

    .line 170
    .line 171
    if-lez v2, :cond_6

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    :cond_6
    iget-object p1, p0, Landroidx/transition/j;->f:Ljava/util/ArrayList;

    .line 177
    .line 178
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    add-int/lit8 v2, v2, 0x1

    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_7
    const-string p1, ")"

    .line 189
    .line 190
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    return-object p1
.end method

.method public abstract g(Landroidx/transition/w;)V
.end method

.method i(Landroidx/transition/w;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/transition/j;->F:Landroidx/transition/t;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p1, Landroidx/transition/w;->a:Ljava/util/Map;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/transition/j;->F:Landroidx/transition/t;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/transition/t;->b()[Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    :goto_0
    array-length v2, v0

    .line 24
    if-ge v1, v2, :cond_2

    .line 25
    .line 26
    iget-object v2, p1, Landroidx/transition/w;->a:Ljava/util/Map;

    .line 27
    .line 28
    aget-object v3, v0, v1

    .line 29
    .line 30
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Landroidx/transition/j;->F:Landroidx/transition/t;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Landroidx/transition/t;->a(Landroidx/transition/w;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    :goto_1
    return-void
.end method

.method public abstract j(Landroidx/transition/w;)V
.end method

.method k(Landroid/view/ViewGroup;Z)V
    .locals 5

    .line 1
    invoke-virtual {p0, p2}, Landroidx/transition/j;->l(Z)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/transition/j;->e:Ljava/util/ArrayList;

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
    if-gtz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/transition/j;->f:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-lez v0, :cond_2

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Landroidx/transition/j;->g:Ljava/util/ArrayList;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Landroidx/transition/j;->h:Ljava/util/ArrayList;

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    invoke-direct {p0, p1, p2}, Landroidx/transition/j;->h(Landroid/view/View;Z)V

    .line 43
    .line 44
    .line 45
    goto/16 :goto_7

    .line 46
    .line 47
    :cond_3
    :goto_0
    move v0, v1

    .line 48
    :goto_1
    iget-object v2, p0, Landroidx/transition/j;->e:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-ge v0, v2, :cond_7

    .line 55
    .line 56
    iget-object v2, p0, Landroidx/transition/j;->e:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Ljava/lang/Integer;

    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    if-eqz v2, :cond_6

    .line 73
    .line 74
    new-instance v3, Landroidx/transition/w;

    .line 75
    .line 76
    invoke-direct {v3, v2}, Landroidx/transition/w;-><init>(Landroid/view/View;)V

    .line 77
    .line 78
    .line 79
    if-eqz p2, :cond_4

    .line 80
    .line 81
    invoke-virtual {p0, v3}, Landroidx/transition/j;->j(Landroidx/transition/w;)V

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_4
    invoke-virtual {p0, v3}, Landroidx/transition/j;->g(Landroidx/transition/w;)V

    .line 86
    .line 87
    .line 88
    :goto_2
    iget-object v4, v3, Landroidx/transition/w;->c:Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v3}, Landroidx/transition/j;->i(Landroidx/transition/w;)V

    .line 94
    .line 95
    .line 96
    if-eqz p2, :cond_5

    .line 97
    .line 98
    iget-object v4, p0, Landroidx/transition/j;->p:Landroidx/transition/x;

    .line 99
    .line 100
    invoke-static {v4, v2, v3}, Landroidx/transition/j;->d(Landroidx/transition/x;Landroid/view/View;Landroidx/transition/w;)V

    .line 101
    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_5
    iget-object v4, p0, Landroidx/transition/j;->q:Landroidx/transition/x;

    .line 105
    .line 106
    invoke-static {v4, v2, v3}, Landroidx/transition/j;->d(Landroidx/transition/x;Landroid/view/View;Landroidx/transition/w;)V

    .line 107
    .line 108
    .line 109
    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_7
    move p1, v1

    .line 113
    :goto_4
    iget-object v0, p0, Landroidx/transition/j;->f:Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-ge p1, v0, :cond_a

    .line 120
    .line 121
    iget-object v0, p0, Landroidx/transition/j;->f:Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    check-cast v0, Landroid/view/View;

    .line 128
    .line 129
    new-instance v2, Landroidx/transition/w;

    .line 130
    .line 131
    invoke-direct {v2, v0}, Landroidx/transition/w;-><init>(Landroid/view/View;)V

    .line 132
    .line 133
    .line 134
    if-eqz p2, :cond_8

    .line 135
    .line 136
    invoke-virtual {p0, v2}, Landroidx/transition/j;->j(Landroidx/transition/w;)V

    .line 137
    .line 138
    .line 139
    goto :goto_5

    .line 140
    :cond_8
    invoke-virtual {p0, v2}, Landroidx/transition/j;->g(Landroidx/transition/w;)V

    .line 141
    .line 142
    .line 143
    :goto_5
    iget-object v3, v2, Landroidx/transition/w;->c:Ljava/util/ArrayList;

    .line 144
    .line 145
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0, v2}, Landroidx/transition/j;->i(Landroidx/transition/w;)V

    .line 149
    .line 150
    .line 151
    if-eqz p2, :cond_9

    .line 152
    .line 153
    iget-object v3, p0, Landroidx/transition/j;->p:Landroidx/transition/x;

    .line 154
    .line 155
    invoke-static {v3, v0, v2}, Landroidx/transition/j;->d(Landroidx/transition/x;Landroid/view/View;Landroidx/transition/w;)V

    .line 156
    .line 157
    .line 158
    goto :goto_6

    .line 159
    :cond_9
    iget-object v3, p0, Landroidx/transition/j;->q:Landroidx/transition/x;

    .line 160
    .line 161
    invoke-static {v3, v0, v2}, Landroidx/transition/j;->d(Landroidx/transition/x;Landroid/view/View;Landroidx/transition/w;)V

    .line 162
    .line 163
    .line 164
    :goto_6
    add-int/lit8 p1, p1, 0x1

    .line 165
    .line 166
    goto :goto_4

    .line 167
    :cond_a
    :goto_7
    if-nez p2, :cond_d

    .line 168
    .line 169
    iget-object p1, p0, Landroidx/transition/j;->H:Landroidx/collection/a;

    .line 170
    .line 171
    if-eqz p1, :cond_d

    .line 172
    .line 173
    invoke-virtual {p1}, Landroidx/collection/x0;->size()I

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    new-instance p2, Ljava/util/ArrayList;

    .line 178
    .line 179
    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 180
    .line 181
    .line 182
    move v0, v1

    .line 183
    :goto_8
    if-ge v0, p1, :cond_b

    .line 184
    .line 185
    iget-object v2, p0, Landroidx/transition/j;->H:Landroidx/collection/a;

    .line 186
    .line 187
    invoke-virtual {v2, v0}, Landroidx/collection/x0;->keyAt(I)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    check-cast v2, Ljava/lang/String;

    .line 192
    .line 193
    iget-object v3, p0, Landroidx/transition/j;->p:Landroidx/transition/x;

    .line 194
    .line 195
    iget-object v3, v3, Landroidx/transition/x;->d:Landroidx/collection/a;

    .line 196
    .line 197
    invoke-virtual {v3, v2}, Landroidx/collection/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    check-cast v2, Landroid/view/View;

    .line 202
    .line 203
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    add-int/lit8 v0, v0, 0x1

    .line 207
    .line 208
    goto :goto_8

    .line 209
    :cond_b
    :goto_9
    if-ge v1, p1, :cond_d

    .line 210
    .line 211
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    check-cast v0, Landroid/view/View;

    .line 216
    .line 217
    if-eqz v0, :cond_c

    .line 218
    .line 219
    iget-object v2, p0, Landroidx/transition/j;->H:Landroidx/collection/a;

    .line 220
    .line 221
    invoke-virtual {v2, v1}, Landroidx/collection/x0;->valueAt(I)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    check-cast v2, Ljava/lang/String;

    .line 226
    .line 227
    iget-object v3, p0, Landroidx/transition/j;->p:Landroidx/transition/x;

    .line 228
    .line 229
    iget-object v3, v3, Landroidx/transition/x;->d:Landroidx/collection/a;

    .line 230
    .line 231
    invoke-virtual {v3, v2, v0}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    :cond_c
    add-int/lit8 v1, v1, 0x1

    .line 235
    .line 236
    goto :goto_9

    .line 237
    :cond_d
    return-void
.end method

.method l(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Landroidx/transition/j;->p:Landroidx/transition/x;

    .line 4
    .line 5
    iget-object p1, p1, Landroidx/transition/x;->a:Landroidx/collection/a;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/collection/x0;->clear()V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Landroidx/transition/j;->p:Landroidx/transition/x;

    .line 11
    .line 12
    iget-object p1, p1, Landroidx/transition/x;->b:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Landroidx/transition/j;->p:Landroidx/transition/x;

    .line 18
    .line 19
    iget-object p1, p1, Landroidx/transition/x;->c:Landroidx/collection/x;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/collection/x;->b()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object p1, p0, Landroidx/transition/j;->q:Landroidx/transition/x;

    .line 26
    .line 27
    iget-object p1, p1, Landroidx/transition/x;->a:Landroidx/collection/a;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroidx/collection/x0;->clear()V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Landroidx/transition/j;->q:Landroidx/transition/x;

    .line 33
    .line 34
    iget-object p1, p1, Landroidx/transition/x;->b:Landroid/util/SparseArray;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Landroidx/transition/j;->q:Landroidx/transition/x;

    .line 40
    .line 41
    iget-object p1, p1, Landroidx/transition/x;->c:Landroidx/collection/x;

    .line 42
    .line 43
    invoke-virtual {p1}, Landroidx/collection/x;->b()V

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void
.end method

.method public m()Landroidx/transition/j;
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/transition/j;

    .line 6
    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, v0, Landroidx/transition/j;->E:Ljava/util/ArrayList;

    .line 13
    .line 14
    new-instance v1, Landroidx/transition/x;

    .line 15
    .line 16
    invoke-direct {v1}, Landroidx/transition/x;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, v0, Landroidx/transition/j;->p:Landroidx/transition/x;

    .line 20
    .line 21
    new-instance v1, Landroidx/transition/x;

    .line 22
    .line 23
    invoke-direct {v1}, Landroidx/transition/x;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v1, v0, Landroidx/transition/j;->q:Landroidx/transition/x;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    iput-object v1, v0, Landroidx/transition/j;->t:Ljava/util/ArrayList;

    .line 30
    .line 31
    iput-object v1, v0, Landroidx/transition/j;->u:Ljava/util/ArrayList;

    .line 32
    .line 33
    iput-object p0, v0, Landroidx/transition/j;->C:Landroidx/transition/j;

    .line 34
    .line 35
    iput-object v1, v0, Landroidx/transition/j;->D:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    return-object v0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    new-instance v1, Ljava/lang/RuntimeException;

    .line 40
    .line 41
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    throw v1
.end method

.method public n(Landroid/view/ViewGroup;Landroidx/transition/w;Landroidx/transition/w;)Landroid/animation/Animator;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method o(Landroid/view/ViewGroup;Landroidx/transition/x;Landroidx/transition/x;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 19

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    invoke-static {}, Landroidx/transition/j;->y()Landroidx/collection/a;

    .line 6
    .line 7
    .line 8
    move-result-object v9

    .line 9
    new-instance v10, Landroid/util/SparseIntArray;

    .line 10
    .line 11
    invoke-direct {v10}, Landroid/util/SparseIntArray;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v11

    .line 18
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/j;->x()Landroidx/transition/j;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    const-wide v0, 0x7fffffffffffffffL

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    const/4 v13, 0x0

    .line 31
    :goto_0
    if-ge v13, v11, :cond_c

    .line 32
    .line 33
    move-object/from16 v14, p4

    .line 34
    .line 35
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Landroidx/transition/w;

    .line 40
    .line 41
    move-object/from16 v15, p5

    .line 42
    .line 43
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Landroidx/transition/w;

    .line 48
    .line 49
    if-eqz v2, :cond_0

    .line 50
    .line 51
    iget-object v5, v2, Landroidx/transition/w;->c:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-nez v5, :cond_0

    .line 58
    .line 59
    const/4 v2, 0x0

    .line 60
    :cond_0
    if-eqz v3, :cond_1

    .line 61
    .line 62
    iget-object v5, v3, Landroidx/transition/w;->c:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-nez v5, :cond_1

    .line 69
    .line 70
    const/4 v3, 0x0

    .line 71
    :cond_1
    if-nez v2, :cond_3

    .line 72
    .line 73
    if-nez v3, :cond_3

    .line 74
    .line 75
    :cond_2
    move/from16 v16, v11

    .line 76
    .line 77
    goto/16 :goto_5

    .line 78
    .line 79
    :cond_3
    if-eqz v2, :cond_4

    .line 80
    .line 81
    if-eqz v3, :cond_4

    .line 82
    .line 83
    invoke-virtual {v7, v2, v3}, Landroidx/transition/j;->G(Landroidx/transition/w;Landroidx/transition/w;)Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-eqz v5, :cond_2

    .line 88
    .line 89
    :cond_4
    invoke-virtual {v7, v8, v2, v3}, Landroidx/transition/j;->n(Landroid/view/ViewGroup;Landroidx/transition/w;Landroidx/transition/w;)Landroid/animation/Animator;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    if-eqz v5, :cond_2

    .line 94
    .line 95
    if-eqz v3, :cond_9

    .line 96
    .line 97
    iget-object v6, v3, Landroidx/transition/w;->b:Landroid/view/View;

    .line 98
    .line 99
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/j;->E()[Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    if-eqz v4, :cond_8

    .line 104
    .line 105
    array-length v12, v4

    .line 106
    if-lez v12, :cond_8

    .line 107
    .line 108
    new-instance v12, Landroidx/transition/w;

    .line 109
    .line 110
    invoke-direct {v12, v6}, Landroidx/transition/w;-><init>(Landroid/view/View;)V

    .line 111
    .line 112
    .line 113
    move-object/from16 v17, v5

    .line 114
    .line 115
    move/from16 v16, v11

    .line 116
    .line 117
    move-object/from16 v11, p3

    .line 118
    .line 119
    iget-object v5, v11, Landroidx/transition/x;->a:Landroidx/collection/a;

    .line 120
    .line 121
    invoke-virtual {v5, v6}, Landroidx/collection/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    check-cast v5, Landroidx/transition/w;

    .line 126
    .line 127
    if-eqz v5, :cond_5

    .line 128
    .line 129
    const/4 v11, 0x0

    .line 130
    :goto_1
    array-length v14, v4

    .line 131
    if-ge v11, v14, :cond_5

    .line 132
    .line 133
    iget-object v14, v12, Landroidx/transition/w;->a:Ljava/util/Map;

    .line 134
    .line 135
    aget-object v15, v4, v11

    .line 136
    .line 137
    move-object/from16 v18, v4

    .line 138
    .line 139
    iget-object v4, v5, Landroidx/transition/w;->a:Ljava/util/Map;

    .line 140
    .line 141
    invoke-interface {v4, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    invoke-interface {v14, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    add-int/lit8 v11, v11, 0x1

    .line 149
    .line 150
    move-object/from16 v15, p5

    .line 151
    .line 152
    move-object/from16 v4, v18

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_5
    invoke-virtual {v9}, Landroidx/collection/x0;->size()I

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    const/4 v5, 0x0

    .line 160
    :goto_2
    if-ge v5, v4, :cond_7

    .line 161
    .line 162
    invoke-virtual {v9, v5}, Landroidx/collection/x0;->keyAt(I)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v11

    .line 166
    check-cast v11, Landroid/animation/Animator;

    .line 167
    .line 168
    invoke-virtual {v9, v11}, Landroidx/collection/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v11

    .line 172
    check-cast v11, Landroidx/transition/j$d;

    .line 173
    .line 174
    iget-object v14, v11, Landroidx/transition/j$d;->c:Landroidx/transition/w;

    .line 175
    .line 176
    if-eqz v14, :cond_6

    .line 177
    .line 178
    iget-object v14, v11, Landroidx/transition/j$d;->a:Landroid/view/View;

    .line 179
    .line 180
    if-ne v14, v6, :cond_6

    .line 181
    .line 182
    iget-object v14, v11, Landroidx/transition/j$d;->b:Ljava/lang/String;

    .line 183
    .line 184
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/j;->u()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v15

    .line 188
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v14

    .line 192
    if-eqz v14, :cond_6

    .line 193
    .line 194
    iget-object v11, v11, Landroidx/transition/j$d;->c:Landroidx/transition/w;

    .line 195
    .line 196
    invoke-virtual {v11, v12}, Landroidx/transition/w;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v11

    .line 200
    if-eqz v11, :cond_6

    .line 201
    .line 202
    const/4 v4, 0x0

    .line 203
    goto :goto_3

    .line 204
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 205
    .line 206
    goto :goto_2

    .line 207
    :cond_7
    move-object/from16 v4, v17

    .line 208
    .line 209
    goto :goto_3

    .line 210
    :cond_8
    move-object/from16 v17, v5

    .line 211
    .line 212
    move/from16 v16, v11

    .line 213
    .line 214
    move-object/from16 v4, v17

    .line 215
    .line 216
    const/4 v12, 0x0

    .line 217
    :goto_3
    move-object v11, v4

    .line 218
    move-object v4, v6

    .line 219
    move-object v5, v12

    .line 220
    goto :goto_4

    .line 221
    :cond_9
    move-object/from16 v17, v5

    .line 222
    .line 223
    move/from16 v16, v11

    .line 224
    .line 225
    iget-object v4, v2, Landroidx/transition/w;->b:Landroid/view/View;

    .line 226
    .line 227
    move-object/from16 v11, v17

    .line 228
    .line 229
    const/4 v5, 0x0

    .line 230
    :goto_4
    if-eqz v11, :cond_b

    .line 231
    .line 232
    iget-object v6, v7, Landroidx/transition/j;->F:Landroidx/transition/t;

    .line 233
    .line 234
    if-eqz v6, :cond_a

    .line 235
    .line 236
    invoke-virtual {v6, v8, v7, v2, v3}, Landroidx/transition/t;->c(Landroid/view/ViewGroup;Landroidx/transition/j;Landroidx/transition/w;Landroidx/transition/w;)J

    .line 237
    .line 238
    .line 239
    move-result-wide v2

    .line 240
    iget-object v6, v7, Landroidx/transition/j;->E:Ljava/util/ArrayList;

    .line 241
    .line 242
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 243
    .line 244
    .line 245
    move-result v6

    .line 246
    long-to-int v12, v2

    .line 247
    invoke-virtual {v10, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 248
    .line 249
    .line 250
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 251
    .line 252
    .line 253
    move-result-wide v0

    .line 254
    :cond_a
    move-wide v14, v0

    .line 255
    new-instance v12, Landroidx/transition/j$d;

    .line 256
    .line 257
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/j;->u()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    .line 262
    .line 263
    .line 264
    move-result-object v6

    .line 265
    move-object v0, v12

    .line 266
    move-object v1, v4

    .line 267
    move-object/from16 v3, p0

    .line 268
    .line 269
    move-object v4, v6

    .line 270
    move-object v6, v11

    .line 271
    invoke-direct/range {v0 .. v6}, Landroidx/transition/j$d;-><init>(Landroid/view/View;Ljava/lang/String;Landroidx/transition/j;Landroid/view/WindowId;Landroidx/transition/w;Landroid/animation/Animator;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v9, v11, v12}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    iget-object v0, v7, Landroidx/transition/j;->E:Ljava/util/ArrayList;

    .line 278
    .line 279
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-wide v0, v14

    .line 283
    :cond_b
    :goto_5
    add-int/lit8 v13, v13, 0x1

    .line 284
    .line 285
    move/from16 v11, v16

    .line 286
    .line 287
    goto/16 :goto_0

    .line 288
    .line 289
    :cond_c
    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    .line 290
    .line 291
    .line 292
    move-result v2

    .line 293
    if-eqz v2, :cond_d

    .line 294
    .line 295
    const/4 v12, 0x0

    .line 296
    :goto_6
    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    .line 297
    .line 298
    .line 299
    move-result v2

    .line 300
    if-ge v12, v2, :cond_d

    .line 301
    .line 302
    invoke-virtual {v10, v12}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 303
    .line 304
    .line 305
    move-result v2

    .line 306
    iget-object v3, v7, Landroidx/transition/j;->E:Ljava/util/ArrayList;

    .line 307
    .line 308
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    check-cast v2, Landroid/animation/Animator;

    .line 313
    .line 314
    invoke-virtual {v9, v2}, Landroidx/collection/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    check-cast v2, Landroidx/transition/j$d;

    .line 319
    .line 320
    invoke-virtual {v10, v12}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 321
    .line 322
    .line 323
    move-result v3

    .line 324
    int-to-long v3, v3

    .line 325
    sub-long/2addr v3, v0

    .line 326
    iget-object v5, v2, Landroidx/transition/j$d;->f:Landroid/animation/Animator;

    .line 327
    .line 328
    invoke-virtual {v5}, Landroid/animation/Animator;->getStartDelay()J

    .line 329
    .line 330
    .line 331
    move-result-wide v5

    .line 332
    add-long/2addr v3, v5

    .line 333
    iget-object v2, v2, Landroidx/transition/j$d;->f:Landroid/animation/Animator;

    .line 334
    .line 335
    invoke-virtual {v2, v3, v4}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 336
    .line 337
    .line 338
    add-int/lit8 v12, v12, 0x1

    .line 339
    .line 340
    goto :goto_6

    .line 341
    :cond_d
    return-void
.end method

.method protected p()V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/transition/j;->z:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    sub-int/2addr v0, v1

    .line 5
    iput v0, p0, Landroidx/transition/j;->z:I

    .line 6
    .line 7
    if-nez v0, :cond_4

    .line 8
    .line 9
    sget-object v0, Landroidx/transition/j$g;->b:Landroidx/transition/j$g;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {p0, v0, v2}, Landroidx/transition/j;->P(Landroidx/transition/j$g;Z)V

    .line 13
    .line 14
    .line 15
    move v0, v2

    .line 16
    :goto_0
    iget-object v3, p0, Landroidx/transition/j;->p:Landroidx/transition/x;

    .line 17
    .line 18
    iget-object v3, v3, Landroidx/transition/x;->c:Landroidx/collection/x;

    .line 19
    .line 20
    invoke-virtual {v3}, Landroidx/collection/x;->n()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-ge v0, v3, :cond_1

    .line 25
    .line 26
    iget-object v3, p0, Landroidx/transition/j;->p:Landroidx/transition/x;

    .line 27
    .line 28
    iget-object v3, v3, Landroidx/transition/x;->c:Landroidx/collection/x;

    .line 29
    .line 30
    invoke-virtual {v3, v0}, Landroidx/collection/x;->o(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Landroid/view/View;

    .line 35
    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    invoke-virtual {v3, v2}, Landroid/view/View;->setHasTransientState(Z)V

    .line 39
    .line 40
    .line 41
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move v0, v2

    .line 45
    :goto_1
    iget-object v3, p0, Landroidx/transition/j;->q:Landroidx/transition/x;

    .line 46
    .line 47
    iget-object v3, v3, Landroidx/transition/x;->c:Landroidx/collection/x;

    .line 48
    .line 49
    invoke-virtual {v3}, Landroidx/collection/x;->n()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-ge v0, v3, :cond_3

    .line 54
    .line 55
    iget-object v3, p0, Landroidx/transition/j;->q:Landroidx/transition/x;

    .line 56
    .line 57
    iget-object v3, v3, Landroidx/transition/x;->c:Landroidx/collection/x;

    .line 58
    .line 59
    invoke-virtual {v3, v0}, Landroidx/collection/x;->o(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    check-cast v3, Landroid/view/View;

    .line 64
    .line 65
    if-eqz v3, :cond_2

    .line 66
    .line 67
    invoke-virtual {v3, v2}, Landroid/view/View;->setHasTransientState(Z)V

    .line 68
    .line 69
    .line 70
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    iput-boolean v1, p0, Landroidx/transition/j;->B:Z

    .line 74
    .line 75
    :cond_4
    return-void
.end method

.method public q()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/transition/j;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public r()Landroidx/transition/j$e;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/transition/j;->G:Landroidx/transition/j$e;

    .line 2
    .line 3
    return-object v0
.end method

.method public s()Landroid/animation/TimeInterpolator;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/transition/j;->d:Landroid/animation/TimeInterpolator;

    .line 2
    .line 3
    return-object v0
.end method

.method t(Landroid/view/View;Z)Landroidx/transition/w;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/transition/j;->r:Landroidx/transition/u;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroidx/transition/j;->t(Landroid/view/View;Z)Landroidx/transition/w;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    if-eqz p2, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/transition/j;->t:Ljava/util/ArrayList;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, p0, Landroidx/transition/j;->u:Ljava/util/ArrayList;

    .line 16
    .line 17
    :goto_0
    const/4 v1, 0x0

    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    return-object v1

    .line 21
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const/4 v3, 0x0

    .line 26
    :goto_1
    if-ge v3, v2, :cond_5

    .line 27
    .line 28
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    check-cast v4, Landroidx/transition/w;

    .line 33
    .line 34
    if-nez v4, :cond_3

    .line 35
    .line 36
    return-object v1

    .line 37
    :cond_3
    iget-object v4, v4, Landroidx/transition/w;->b:Landroid/view/View;

    .line 38
    .line 39
    if-ne v4, p1, :cond_4

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_5
    const/4 v3, -0x1

    .line 46
    :goto_2
    if-ltz v3, :cond_7

    .line 47
    .line 48
    if-eqz p2, :cond_6

    .line 49
    .line 50
    iget-object p1, p0, Landroidx/transition/j;->u:Ljava/util/ArrayList;

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_6
    iget-object p1, p0, Landroidx/transition/j;->t:Ljava/util/ArrayList;

    .line 54
    .line 55
    :goto_3
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    move-object v1, p1

    .line 60
    check-cast v1, Landroidx/transition/w;

    .line 61
    .line 62
    :cond_7
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/transition/j;->e0(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/transition/j;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public v()Landroidx/transition/g;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/transition/j;->I:Landroidx/transition/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public w()Landroidx/transition/t;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/transition/j;->F:Landroidx/transition/t;

    .line 2
    .line 3
    return-object v0
.end method

.method public final x()Landroidx/transition/j;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/transition/j;->r:Landroidx/transition/u;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/transition/j;->x()Landroidx/transition/j;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    return-object p0
.end method

.method public z()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/transition/j;->b:J

    .line 2
    .line 3
    return-wide v0
.end method
