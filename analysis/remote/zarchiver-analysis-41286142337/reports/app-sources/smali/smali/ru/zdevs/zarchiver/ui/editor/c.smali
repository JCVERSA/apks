.class public final Lru/zdevs/zarchiver/ui/editor/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/zdevs/zarchiver/ui/editor/c$a;,
        Lru/zdevs/zarchiver/ui/editor/c$b;,
        Lru/zdevs/zarchiver/ui/editor/c$c;
    }
.end annotation


# instance fields
.field public final a:Lc1/a;

.field public b:Lru/zdevs/zarchiver/ui/editor/c$a;

.field public final c:Landroid/graphics/drawable/Drawable;

.field public final d:[Landroid/graphics/drawable/Drawable;

.field public final e:Landroid/widget/OverScroller;

.field public final f:Landroid/view/GestureDetector;

.field public g:I

.field public h:I

.field public i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc1/a;Lc1/e;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lru/zdevs/zarchiver/ui/editor/c;->a:Lc1/a;

    .line 5
    .line 6
    const/4 p2, 0x0

    .line 7
    iput-object p2, p0, Lru/zdevs/zarchiver/ui/editor/c;->b:Lru/zdevs/zarchiver/ui/editor/c$a;

    .line 8
    .line 9
    const/4 p2, 0x0

    .line 10
    iput-boolean p2, p0, Lru/zdevs/zarchiver/ui/editor/c;->i:Z

    .line 11
    .line 12
    const v0, 0x7f060116

    .line 13
    .line 14
    .line 15
    invoke-static {p1, v0}, Lz0/c;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lru/zdevs/zarchiver/ui/editor/c;->c:Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-virtual {v0, p2, p2, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 30
    .line 31
    .line 32
    const/4 v1, 0x2

    .line 33
    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    .line 34
    .line 35
    iput-object v1, p0, Lru/zdevs/zarchiver/ui/editor/c;->d:[Landroid/graphics/drawable/Drawable;

    .line 36
    .line 37
    const v2, 0x7f060115

    .line 38
    .line 39
    .line 40
    invoke-static {p1, v2}, Lz0/c;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    aput-object v2, v1, p2

    .line 45
    .line 46
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    aget-object v4, v1, p2

    .line 51
    .line 52
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    invoke-virtual {v2, p2, p2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 57
    .line 58
    .line 59
    const v2, 0x7f060117

    .line 60
    .line 61
    .line 62
    invoke-static {p1, v2}, Lz0/c;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    const/4 v3, 0x1

    .line 67
    aput-object v2, v1, v3

    .line 68
    .line 69
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    aget-object v5, v1, v3

    .line 74
    .line 75
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    invoke-virtual {v2, p2, p2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 80
    .line 81
    .line 82
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 83
    .line 84
    const/16 v4, 0x15

    .line 85
    .line 86
    if-lt v2, v4, :cond_0

    .line 87
    .line 88
    const/16 v2, 0xa

    .line 89
    .line 90
    invoke-virtual {p3, v2}, Lc1/e;->b(B)I

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 95
    .line 96
    .line 97
    aget-object p2, v1, p2

    .line 98
    .line 99
    invoke-virtual {p3, v2}, Lc1/e;->b(B)I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 104
    .line 105
    .line 106
    aget-object p2, v1, v3

    .line 107
    .line 108
    invoke-virtual {p3, v2}, Lc1/e;->b(B)I

    .line 109
    .line 110
    .line 111
    move-result p3

    .line 112
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 113
    .line 114
    .line 115
    :cond_0
    new-instance v0, Landroid/widget/OverScroller;

    .line 116
    .line 117
    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    .line 118
    .line 119
    .line 120
    iput-object v0, p0, Lru/zdevs/zarchiver/ui/editor/c;->e:Landroid/widget/OverScroller;

    .line 121
    .line 122
    const/4 v1, 0x0

    .line 123
    const/4 v2, 0x0

    .line 124
    const/4 v3, 0x0

    .line 125
    const/4 v4, 0x0

    .line 126
    const/4 v5, 0x0

    .line 127
    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 128
    .line 129
    .line 130
    new-instance p2, Landroid/view/GestureDetector;

    .line 131
    .line 132
    invoke-direct {p2, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 133
    .line 134
    .line 135
    iput-object p2, p0, Lru/zdevs/zarchiver/ui/editor/c;->f:Landroid/view/GestureDetector;

    .line 136
    .line 137
    invoke-virtual {p2, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 138
    .line 139
    .line 140
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/editor/c;->b()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/editor/c;->c()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lru/zdevs/zarchiver/ui/editor/c;->c:Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    int-to-float v2, v2

    .line 16
    int-to-float v0, v0

    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    add-float/2addr v3, v0

    .line 22
    int-to-float v0, v1

    .line 23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    add-float/2addr p1, v0

    .line 28
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/c;->a:Lc1/a;

    .line 29
    .line 30
    invoke-interface {v0}, Lc1/a;->getLineHeight()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    int-to-float v1, v1

    .line 35
    sub-float/2addr p1, v1

    .line 36
    sub-float/2addr p1, v2

    .line 37
    check-cast v0, Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 38
    .line 39
    invoke-virtual {v0, v3, p1}, Lru/zdevs/zarchiver/ui/editor/EditableView;->h(FF)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    return p1
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/c;->e:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    return v0
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/c;->e:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    return v0
.end method

.method public final d(Landroid/view/MotionEvent;Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/c;->e:Landroid/widget/OverScroller;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    int-to-float v1, v1

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    add-float/2addr v2, v1

    .line 13
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    int-to-float v0, v0

    .line 18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    add-float/2addr p1, v0

    .line 23
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/c;->a:Lc1/a;

    .line 24
    .line 25
    move-object v1, v0

    .line 26
    check-cast v1, Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 27
    .line 28
    invoke-virtual {v1, v2, p1}, Lru/zdevs/zarchiver/ui/editor/EditableView;->h(FF)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    invoke-interface {v0}, Lc1/a;->getEditable()Lru/zdevs/zarchiver/ui/editor/b;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget-object v1, v1, Lru/zdevs/zarchiver/ui/editor/b;->g:[I

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    aget v3, v1, v2

    .line 40
    .line 41
    const/4 v4, -0x1

    .line 42
    const/4 v5, 0x1

    .line 43
    if-eq v3, v4, :cond_1

    .line 44
    .line 45
    if-gt v3, p1, :cond_1

    .line 46
    .line 47
    aget v1, v1, v5

    .line 48
    .line 49
    if-gt p1, v1, :cond_1

    .line 50
    .line 51
    if-eqz p2, :cond_0

    .line 52
    .line 53
    const/4 p1, 0x2

    .line 54
    check-cast v0, Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Lru/zdevs/zarchiver/ui/editor/EditableView;->t(I)V

    .line 57
    .line 58
    .line 59
    :cond_0
    return-void

    .line 60
    :cond_1
    invoke-interface {v0}, Lc1/a;->getEditable()Lru/zdevs/zarchiver/ui/editor/b;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    invoke-virtual {p2, p1}, Lru/zdevs/zarchiver/ui/editor/b;->j(I)[I

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    aget v1, p1, v2

    .line 69
    .line 70
    aget v1, p1, v5

    .line 71
    .line 72
    move-object v1, v0

    .line 73
    check-cast v1, Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 74
    .line 75
    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-nez v3, :cond_2

    .line 80
    .line 81
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-nez v3, :cond_2

    .line 89
    .line 90
    invoke-virtual {v1}, Landroid/view/View;->requestFocusFromTouch()Z

    .line 91
    .line 92
    .line 93
    :cond_2
    iget-object v3, v1, Lru/zdevs/zarchiver/ui/editor/EditableView;->j:Landroid/view/inputmethod/InputMethodManager;

    .line 94
    .line 95
    invoke-virtual {v3, v1}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 99
    .line 100
    .line 101
    invoke-interface {v0}, Lc1/a;->getInputConnection()Lc1/b;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v3}, Lc1/b;->beginBatchEdit()Z

    .line 106
    .line 107
    .line 108
    aget v2, p1, v2

    .line 109
    .line 110
    aget p1, p1, v5

    .line 111
    .line 112
    invoke-virtual {v1, v2, p1, v4}, Lru/zdevs/zarchiver/ui/editor/EditableView;->s(III)V

    .line 113
    .line 114
    .line 115
    const/16 p1, 0x10

    .line 116
    .line 117
    invoke-virtual {p2, p1}, Lru/zdevs/zarchiver/ui/editor/b;->n(I)V

    .line 118
    .line 119
    .line 120
    invoke-interface {v0}, Lc1/a;->getInputConnection()Lc1/b;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {p1}, Lc1/b;->endBatchEdit()Z

    .line 125
    .line 126
    .line 127
    return-void
.end method

.method public final e()V
    .locals 6

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/c;->e:Landroid/widget/OverScroller;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x0

    .line 12
    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lru/zdevs/zarchiver/ui/editor/c;->g:I

    .line 17
    .line 18
    iput v0, p0, Lru/zdevs/zarchiver/ui/editor/c;->h:I

    .line 19
    .line 20
    return-void
.end method

.method public final f(IIZ)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-gez p1, :cond_0

    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget v1, p0, Lru/zdevs/zarchiver/ui/editor/c;->g:I

    .line 7
    .line 8
    if-le p1, v1, :cond_1

    .line 9
    .line 10
    move p1, v1

    .line 11
    :cond_1
    :goto_0
    if-gez p2, :cond_2

    .line 12
    .line 13
    const/4 p2, 0x0

    .line 14
    goto :goto_1

    .line 15
    :cond_2
    iget v0, p0, Lru/zdevs/zarchiver/ui/editor/c;->h:I

    .line 16
    .line 17
    if-le p2, v0, :cond_3

    .line 18
    .line 19
    move p2, v0

    .line 20
    :cond_3
    :goto_1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/c;->a:Lc1/a;

    .line 21
    .line 22
    check-cast v0, Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 23
    .line 24
    const/16 v1, 0x320

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lru/zdevs/zarchiver/ui/editor/EditableView;->k(I)V

    .line 27
    .line 28
    .line 29
    const/4 v1, -0x3

    .line 30
    invoke-virtual {v0, v1}, Lru/zdevs/zarchiver/ui/editor/EditableView;->k(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1, p2, p3}, Lru/zdevs/zarchiver/ui/editor/c;->h(IIZ)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final g(I)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lru/zdevs/zarchiver/ui/editor/c;->b:Lru/zdevs/zarchiver/ui/editor/c$a;

    .line 5
    .line 6
    goto :goto_2

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    if-eq p1, v0, :cond_2

    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    if-ne p1, v1, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    new-instance p1, Lru/zdevs/zarchiver/ui/editor/c$c;

    .line 15
    .line 16
    invoke-direct {p1, p0}, Lru/zdevs/zarchiver/ui/editor/c$c;-><init>(Lru/zdevs/zarchiver/ui/editor/c;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lru/zdevs/zarchiver/ui/editor/c;->b:Lru/zdevs/zarchiver/ui/editor/c$a;

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_2
    :goto_0
    new-instance v1, Lru/zdevs/zarchiver/ui/editor/c$b;

    .line 23
    .line 24
    if-ne p1, v0, :cond_3

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    goto :goto_1

    .line 28
    :cond_3
    const/16 p1, 0x1388

    .line 29
    .line 30
    :goto_1
    invoke-direct {v1, p0, p1}, Lru/zdevs/zarchiver/ui/editor/c$b;-><init>(Lru/zdevs/zarchiver/ui/editor/c;I)V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lru/zdevs/zarchiver/ui/editor/c;->b:Lru/zdevs/zarchiver/ui/editor/c$a;

    .line 34
    .line 35
    :goto_2
    return-void
.end method

.method public final h(IIZ)V
    .locals 7

    .line 1
    iget-object v6, p0, Lru/zdevs/zarchiver/ui/editor/c;->e:Landroid/widget/OverScroller;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {v6, v0}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v6}, Landroid/widget/OverScroller;->getCurrX()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {v6}, Landroid/widget/OverScroller;->getCurrY()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-virtual {v6}, Landroid/widget/OverScroller;->getCurrX()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    sub-int v3, p1, v0

    .line 20
    .line 21
    invoke-virtual {v6}, Landroid/widget/OverScroller;->getCurrY()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    sub-int v4, p2, p1

    .line 26
    .line 27
    if-eqz p3, :cond_0

    .line 28
    .line 29
    const/16 p1, 0x64

    .line 30
    .line 31
    const/16 v5, 0x64

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/16 p1, 0xfa

    .line 35
    .line 36
    const/16 v5, 0xfa

    .line 37
    .line 38
    :goto_0
    move-object v0, v6

    .line 39
    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 40
    .line 41
    .line 42
    if-eqz p3, :cond_1

    .line 43
    .line 44
    invoke-virtual {v6}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void
.end method

.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lru/zdevs/zarchiver/ui/editor/c;->d(Landroid/view/MotionEvent;Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public final onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/editor/c;->e:Landroid/widget/OverScroller;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/editor/c;->a:Lc1/a;

    .line 14
    .line 15
    invoke-interface {p1}, Lc1/a;->postInvalidate()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iput-boolean v1, p0, Lru/zdevs/zarchiver/ui/editor/c;->i:Z

    .line 19
    .line 20
    return v1
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    const/16 v1, 0x3e8

    .line 3
    .line 4
    iget-object v2, v0, Lru/zdevs/zarchiver/ui/editor/c;->a:Lc1/a;

    .line 5
    .line 6
    move-object v3, v2

    .line 7
    check-cast v3, Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 8
    .line 9
    invoke-virtual {v3, v1}, Lru/zdevs/zarchiver/ui/editor/EditableView;->k(I)V

    .line 10
    .line 11
    .line 12
    iget-object v4, v0, Lru/zdevs/zarchiver/ui/editor/c;->e:Landroid/widget/OverScroller;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-virtual {v4, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v4}, Landroid/widget/OverScroller;->getCurrX()I

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    invoke-virtual {v4}, Landroid/widget/OverScroller;->getCurrY()I

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    move/from16 v3, p3

    .line 27
    .line 28
    neg-float v3, v3

    .line 29
    float-to-int v7, v3

    .line 30
    move/from16 v3, p4

    .line 31
    .line 32
    neg-float v3, v3

    .line 33
    float-to-int v8, v3

    .line 34
    const/4 v9, 0x0

    .line 35
    iget v10, v0, Lru/zdevs/zarchiver/ui/editor/c;->g:I

    .line 36
    .line 37
    const/4 v11, 0x0

    .line 38
    iget v12, v0, Lru/zdevs/zarchiver/ui/editor/c;->h:I

    .line 39
    .line 40
    const/4 v13, 0x0

    .line 41
    const/4 v14, 0x0

    .line 42
    invoke-virtual/range {v4 .. v14}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 43
    .line 44
    .line 45
    invoke-interface {v2}, Lc1/a;->postInvalidate()V

    .line 46
    .line 47
    .line 48
    return v1
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lru/zdevs/zarchiver/ui/editor/c;->d(Landroid/view/MotionEvent;Z)V

    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7

    .line 1
    const/16 p1, 0x258

    .line 2
    .line 3
    iget-object p2, p0, Lru/zdevs/zarchiver/ui/editor/c;->a:Lc1/a;

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lru/zdevs/zarchiver/ui/editor/EditableView;->k(I)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lru/zdevs/zarchiver/ui/editor/c;->e:Landroid/widget/OverScroller;

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    invoke-virtual {v1, p1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrX()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    int-to-float v0, v2

    .line 22
    add-float/2addr v0, p3

    .line 23
    iget v3, p0, Lru/zdevs/zarchiver/ui/editor/c;->g:I

    .line 24
    .line 25
    int-to-float v4, v3

    .line 26
    const/4 v5, 0x0

    .line 27
    cmpl-float v4, v0, v4

    .line 28
    .line 29
    if-lez v4, :cond_0

    .line 30
    .line 31
    sub-int/2addr v3, v2

    .line 32
    int-to-float p3, v3

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    cmpg-float v0, v0, v5

    .line 35
    .line 36
    if-gez v0, :cond_1

    .line 37
    .line 38
    const/4 p3, 0x0

    .line 39
    :cond_1
    :goto_0
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    int-to-float v0, v3

    .line 44
    add-float/2addr v0, p4

    .line 45
    iget v4, p0, Lru/zdevs/zarchiver/ui/editor/c;->h:I

    .line 46
    .line 47
    int-to-float v6, v4

    .line 48
    cmpl-float v6, v0, v6

    .line 49
    .line 50
    if-lez v6, :cond_2

    .line 51
    .line 52
    sub-int/2addr v4, v3

    .line 53
    int-to-float p4, v4

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    cmpg-float v0, v0, v5

    .line 56
    .line 57
    if-gez v0, :cond_3

    .line 58
    .line 59
    const/4 p4, 0x0

    .line 60
    :cond_3
    :goto_1
    cmpl-float v0, p3, v5

    .line 61
    .line 62
    if-nez v0, :cond_4

    .line 63
    .line 64
    cmpl-float v0, p4, v5

    .line 65
    .line 66
    if-nez v0, :cond_4

    .line 67
    .line 68
    const/4 p1, 0x0

    .line 69
    return p1

    .line 70
    :cond_4
    float-to-int v4, p3

    .line 71
    float-to-int v5, p4

    .line 72
    const/4 v6, 0x0

    .line 73
    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 74
    .line 75
    .line 76
    invoke-interface {p2}, Lc1/a;->postInvalidate()V

    .line 77
    .line 78
    .line 79
    return p1
.end method

.method public final onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/c;->a:Lc1/a;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 5
    .line 6
    iget-object v2, v1, Lru/zdevs/zarchiver/ui/editor/EditableView;->m:Landroid/view/ActionMode;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x1

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    iget v2, v1, Lru/zdevs/zarchiver/ui/editor/EditableView;->n:I

    .line 13
    .line 14
    if-ne v2, v4, :cond_0

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v2, 0x0

    .line 19
    :goto_0
    if-eqz v2, :cond_1

    .line 20
    .line 21
    invoke-virtual {v1}, Lru/zdevs/zarchiver/ui/editor/EditableView;->u()V

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-interface {v0}, Lc1/a;->getEditable()Lru/zdevs/zarchiver/ui/editor/b;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v2, p0, Lru/zdevs/zarchiver/ui/editor/c;->e:Landroid/widget/OverScroller;

    .line 29
    .line 30
    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrX()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    int-to-float v5, v5

    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    add-float/2addr v6, v5

    .line 40
    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrY()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    int-to-float v2, v2

    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    add-float/2addr p1, v2

    .line 50
    move-object v2, v0

    .line 51
    check-cast v2, Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 52
    .line 53
    invoke-virtual {v2, v6, p1}, Lru/zdevs/zarchiver/ui/editor/EditableView;->h(FF)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    iget-object v5, v2, Lru/zdevs/zarchiver/ui/editor/EditableView;->m:Landroid/view/ActionMode;

    .line 58
    .line 59
    if-eqz v5, :cond_2

    .line 60
    .line 61
    iget v5, v2, Lru/zdevs/zarchiver/ui/editor/EditableView;->n:I

    .line 62
    .line 63
    if-nez v5, :cond_2

    .line 64
    .line 65
    const/4 v5, 0x1

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    const/4 v5, 0x0

    .line 68
    :goto_1
    if-eqz v5, :cond_3

    .line 69
    .line 70
    iget-object v5, v1, Lru/zdevs/zarchiver/ui/editor/b;->g:[I

    .line 71
    .line 72
    invoke-virtual {v2}, Lru/zdevs/zarchiver/ui/editor/EditableView;->u()V

    .line 73
    .line 74
    .line 75
    aget v6, v5, v3

    .line 76
    .line 77
    if-lt p1, v6, :cond_3

    .line 78
    .line 79
    aget v5, v5, v4

    .line 80
    .line 81
    if-ge p1, v5, :cond_3

    .line 82
    .line 83
    return v4

    .line 84
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    if-nez v5, :cond_4

    .line 89
    .line 90
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    if-nez v5, :cond_4

    .line 98
    .line 99
    invoke-virtual {v2}, Landroid/view/View;->requestFocusFromTouch()Z

    .line 100
    .line 101
    .line 102
    :cond_4
    iget-object v5, v2, Lru/zdevs/zarchiver/ui/editor/EditableView;->j:Landroid/view/inputmethod/InputMethodManager;

    .line 103
    .line 104
    invoke-virtual {v5, v2}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v5, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 108
    .line 109
    .line 110
    invoke-interface {v0}, Lc1/a;->getInputConnection()Lc1/b;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-virtual {v3}, Lc1/b;->beginBatchEdit()Z

    .line 115
    .line 116
    .line 117
    const/4 v3, -0x1

    .line 118
    invoke-virtual {v2, p1, p1, v3}, Lru/zdevs/zarchiver/ui/editor/EditableView;->s(III)V

    .line 119
    .line 120
    .line 121
    const/16 p1, 0x40

    .line 122
    .line 123
    invoke-virtual {v1, p1}, Lru/zdevs/zarchiver/ui/editor/b;->n(I)V

    .line 124
    .line 125
    .line 126
    invoke-interface {v0}, Lc1/a;->getInputConnection()Lc1/b;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {p1}, Lc1/b;->endBatchEdit()Z

    .line 131
    .line 132
    .line 133
    return v4
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
