.class public Landroidx/constraintlayout/motion/widget/t;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field private b:Ljava/util/ArrayList;

.field private c:Ljava/util/HashSet;

.field private d:Ljava/lang/String;

.field e:Ljava/util/ArrayList;

.field f:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/t;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    const-string v0, "ViewTransitionController"

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/t;->d:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/t;->f:Ljava/util/ArrayList;

    .line 21
    .line 22
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/t;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 23
    .line 24
    return-void
.end method

.method private h(Landroidx/constraintlayout/motion/widget/s;Z)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/s;->h()I

    .line 2
    .line 3
    .line 4
    move-result v3

    .line 5
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/s;->g()I

    .line 6
    .line 7
    .line 8
    move-result v5

    .line 9
    invoke-static {}, Landroidx/constraintlayout/widget/ConstraintLayout;->getSharedValues()Landroidx/constraintlayout/widget/d;

    .line 10
    .line 11
    .line 12
    move-result-object v6

    .line 13
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/s;->h()I

    .line 14
    .line 15
    .line 16
    move-result v7

    .line 17
    new-instance v8, Landroidx/constraintlayout/motion/widget/t$a;

    .line 18
    .line 19
    move-object v0, v8

    .line 20
    move-object v1, p0

    .line 21
    move-object v2, p1

    .line 22
    move v4, p2

    .line 23
    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/t$a;-><init>(Landroidx/constraintlayout/motion/widget/t;Landroidx/constraintlayout/motion/widget/s;IZI)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v6, v7, v8}, Landroidx/constraintlayout/widget/d;->a(ILandroidx/constraintlayout/widget/d$a;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private varargs l(Landroidx/constraintlayout/motion/widget/s;[Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/t;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    .line 4
    .line 5
    .line 6
    move-result v4

    .line 7
    iget v0, p1, Landroidx/constraintlayout/motion/widget/s;->e:I

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    if-eq v0, v1, :cond_2

    .line 11
    .line 12
    const/4 v0, -0x1

    .line 13
    if-ne v4, v0, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/t;->d:Ljava/lang/String;

    .line 16
    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v0, "No support for ViewTransition within transition yet. Currently: "

    .line 23
    .line 24
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/t;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/t;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 45
    .line 46
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSet(I)Landroidx/constraintlayout/widget/b;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    if-nez v5, :cond_1

    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/t;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 54
    .line 55
    move-object v1, p1

    .line 56
    move-object v2, p0

    .line 57
    move-object v6, p2

    .line 58
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/widget/s;->c(Landroidx/constraintlayout/motion/widget/t;Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/widget/b;[Landroid/view/View;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/t;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 63
    .line 64
    const/4 v5, 0x0

    .line 65
    move-object v1, p1

    .line 66
    move-object v2, p0

    .line 67
    move-object v6, p2

    .line 68
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/widget/s;->c(Landroidx/constraintlayout/motion/widget/t;Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/widget/b;[Landroid/view/View;)V

    .line 69
    .line 70
    .line 71
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroidx/constraintlayout/motion/widget/s;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/t;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/t;->c:Ljava/util/HashSet;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/s;->i()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x4

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/motion/widget/t;->h(Landroidx/constraintlayout/motion/widget/s;Z)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/s;->i()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x5

    .line 26
    if-ne v0, v1, :cond_1

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/motion/widget/t;->h(Landroidx/constraintlayout/motion/widget/s;Z)V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method b(Landroidx/constraintlayout/motion/widget/s$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/t;->e:Ljava/util/ArrayList;

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
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/t;->e:Ljava/util/ArrayList;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/t;->e:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method c()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/t;->e:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroidx/constraintlayout/motion/widget/s$b;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/s$b;->a()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/t;->e:Ljava/util/ArrayList;

    .line 27
    .line 28
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/t;->f:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/t;->f:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/t;->e:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/t;->e:Ljava/util/ArrayList;

    .line 48
    .line 49
    :cond_2
    return-void
.end method

.method d(ILandroidx/constraintlayout/motion/widget/m;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/t;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroidx/constraintlayout/motion/widget/s;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/s;->e()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-ne v2, p1, :cond_0

    .line 24
    .line 25
    iget-object p1, v1, Landroidx/constraintlayout/motion/widget/s;->f:Landroidx/constraintlayout/motion/widget/g;

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/g;->a(Landroidx/constraintlayout/motion/widget/m;)V

    .line 28
    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    return p1

    .line 32
    :cond_1
    const/4 p1, 0x0

    .line 33
    return p1
.end method

.method e(IZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/t;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroidx/constraintlayout/motion/widget/s;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/s;->e()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-ne v2, p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1, p2}, Landroidx/constraintlayout/motion/widget/s;->n(Z)V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method f()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/t;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method g(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/t;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroidx/constraintlayout/motion/widget/s;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/s;->e()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-ne v2, p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/s;->j()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1

    .line 30
    :cond_1
    const/4 p1, 0x0

    .line 31
    return p1
.end method

.method i(Landroidx/constraintlayout/motion/widget/s$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/t;->f:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method j(Landroid/view/MotionEvent;)V
    .locals 19

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    const/4 v7, 0x0

    .line 4
    const/4 v8, 0x1

    .line 5
    iget-object v0, v6, Landroidx/constraintlayout/motion/widget/t;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    .line 8
    .line 9
    .line 10
    move-result v9

    .line 11
    const/4 v0, -0x1

    .line 12
    if-ne v9, v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, v6, Landroidx/constraintlayout/motion/widget/t;->c:Ljava/util/HashSet;

    .line 16
    .line 17
    if-nez v0, :cond_3

    .line 18
    .line 19
    new-instance v0, Ljava/util/HashSet;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, v6, Landroidx/constraintlayout/motion/widget/t;->c:Ljava/util/HashSet;

    .line 25
    .line 26
    iget-object v0, v6, Landroidx/constraintlayout/motion/widget/t;->b:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Landroidx/constraintlayout/motion/widget/s;

    .line 43
    .line 44
    iget-object v2, v6, Landroidx/constraintlayout/motion/widget/t;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 45
    .line 46
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    move v3, v7

    .line 51
    :goto_0
    if-ge v3, v2, :cond_1

    .line 52
    .line 53
    iget-object v4, v6, Landroidx/constraintlayout/motion/widget/t;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 54
    .line 55
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/motion/widget/s;->l(Landroid/view/View;)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-eqz v5, :cond_2

    .line 64
    .line 65
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 66
    .line 67
    .line 68
    iget-object v5, v6, Landroidx/constraintlayout/motion/widget/t;->c:Ljava/util/HashSet;

    .line 69
    .line 70
    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    :cond_2
    add-int/2addr v3, v8

    .line 74
    goto :goto_0

    .line 75
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 76
    .line 77
    .line 78
    move-result v10

    .line 79
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 80
    .line 81
    .line 82
    move-result v11

    .line 83
    new-instance v12, Landroid/graphics/Rect;

    .line 84
    .line 85
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 89
    .line 90
    .line 91
    move-result v13

    .line 92
    iget-object v0, v6, Landroidx/constraintlayout/motion/widget/t;->e:Ljava/util/ArrayList;

    .line 93
    .line 94
    if-eqz v0, :cond_4

    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-nez v0, :cond_4

    .line 101
    .line 102
    iget-object v0, v6, Landroidx/constraintlayout/motion/widget/t;->e:Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-eqz v1, :cond_4

    .line 113
    .line 114
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    check-cast v1, Landroidx/constraintlayout/motion/widget/s$b;

    .line 119
    .line 120
    invoke-virtual {v1, v13, v10, v11}, Landroidx/constraintlayout/motion/widget/s$b;->d(IFF)V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_4
    if-eqz v13, :cond_5

    .line 125
    .line 126
    if-eq v13, v8, :cond_5

    .line 127
    .line 128
    goto :goto_4

    .line 129
    :cond_5
    iget-object v0, v6, Landroidx/constraintlayout/motion/widget/t;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 130
    .line 131
    invoke-virtual {v0, v9}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSet(I)Landroidx/constraintlayout/widget/b;

    .line 132
    .line 133
    .line 134
    move-result-object v14

    .line 135
    iget-object v0, v6, Landroidx/constraintlayout/motion/widget/t;->b:Ljava/util/ArrayList;

    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 138
    .line 139
    .line 140
    move-result-object v15

    .line 141
    :cond_6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-eqz v0, :cond_9

    .line 146
    .line 147
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    move-object v5, v0

    .line 152
    check-cast v5, Landroidx/constraintlayout/motion/widget/s;

    .line 153
    .line 154
    invoke-virtual {v5, v13}, Landroidx/constraintlayout/motion/widget/s;->o(I)Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-eqz v0, :cond_6

    .line 159
    .line 160
    iget-object v0, v6, Landroidx/constraintlayout/motion/widget/t;->c:Ljava/util/HashSet;

    .line 161
    .line 162
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 163
    .line 164
    .line 165
    move-result-object v16

    .line 166
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-eqz v0, :cond_6

    .line 171
    .line 172
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    check-cast v0, Landroid/view/View;

    .line 177
    .line 178
    invoke-virtual {v5, v0}, Landroidx/constraintlayout/motion/widget/s;->l(Landroid/view/View;)Z

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    if-nez v1, :cond_7

    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_7
    invoke-virtual {v0, v12}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 186
    .line 187
    .line 188
    float-to-int v1, v10

    .line 189
    float-to-int v2, v11

    .line 190
    invoke-virtual {v12, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    if-eqz v1, :cond_8

    .line 195
    .line 196
    iget-object v2, v6, Landroidx/constraintlayout/motion/widget/t;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 197
    .line 198
    new-array v4, v8, [Landroid/view/View;

    .line 199
    .line 200
    aput-object v0, v4, v7

    .line 201
    .line 202
    move-object v0, v5

    .line 203
    move-object/from16 v1, p0

    .line 204
    .line 205
    move v3, v9

    .line 206
    move-object/from16 v17, v4

    .line 207
    .line 208
    move-object v4, v14

    .line 209
    move-object/from16 v18, v5

    .line 210
    .line 211
    move-object/from16 v5, v17

    .line 212
    .line 213
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/s;->c(Landroidx/constraintlayout/motion/widget/t;Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/widget/b;[Landroid/view/View;)V

    .line 214
    .line 215
    .line 216
    goto :goto_3

    .line 217
    :cond_8
    move-object/from16 v18, v5

    .line 218
    .line 219
    :goto_3
    move-object/from16 v5, v18

    .line 220
    .line 221
    goto :goto_2

    .line 222
    :cond_9
    :goto_4
    return-void
.end method

.method varargs k(I[Landroid/view/View;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/t;->b:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_4

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Landroidx/constraintlayout/motion/widget/s;

    .line 24
    .line 25
    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/s;->e()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-ne v4, p1, :cond_0

    .line 30
    .line 31
    array-length v2, p2

    .line 32
    const/4 v4, 0x0

    .line 33
    move v5, v4

    .line 34
    :goto_1
    if-ge v5, v2, :cond_2

    .line 35
    .line 36
    aget-object v6, p2, v5

    .line 37
    .line 38
    invoke-virtual {v3, v6}, Landroidx/constraintlayout/motion/widget/s;->d(Landroid/view/View;)Z

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    if-eqz v7, :cond_1

    .line 43
    .line 44
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-nez v2, :cond_3

    .line 55
    .line 56
    new-array v2, v4, [Landroid/view/View;

    .line 57
    .line 58
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, [Landroid/view/View;

    .line 63
    .line 64
    invoke-direct {p0, v3, v2}, Landroidx/constraintlayout/motion/widget/t;->l(Landroidx/constraintlayout/motion/widget/s;[Landroid/view/View;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 68
    .line 69
    .line 70
    :cond_3
    move-object v2, v3

    .line 71
    goto :goto_0

    .line 72
    :cond_4
    if-nez v2, :cond_5

    .line 73
    .line 74
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/t;->d:Ljava/lang/String;

    .line 75
    .line 76
    const-string p2, " Could not find ViewTransition"

    .line 77
    .line 78
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    :cond_5
    return-void
.end method
