.class public final Lru/zdevs/zarchiver/ui/editor/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lru/zdevs/zarchiver/ui/editor/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/zdevs/zarchiver/ui/editor/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final a:Landroid/graphics/RectF;

.field public final b:Landroid/graphics/RectF;

.field public c:I

.field public final synthetic d:Lru/zdevs/zarchiver/ui/editor/c;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/ui/editor/c;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lru/zdevs/zarchiver/ui/editor/c$c;->d:Lru/zdevs/zarchiver/ui/editor/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroid/graphics/RectF;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lru/zdevs/zarchiver/ui/editor/c$c;->b:Landroid/graphics/RectF;

    .line 12
    .line 13
    new-instance v0, Landroid/graphics/RectF;

    .line 14
    .line 15
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lru/zdevs/zarchiver/ui/editor/c$c;->a:Landroid/graphics/RectF;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    iput v1, p0, Lru/zdevs/zarchiver/ui/editor/c$c;->c:I

    .line 22
    .line 23
    const/high16 v1, -0x40800000    # -1.0f

    .line 24
    .line 25
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 29
    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final c(Landroid/graphics/Canvas;IIII)V
    .locals 10

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/c$c;->a:Landroid/graphics/RectF;

    .line 2
    .line 3
    const/high16 v1, -0x40800000    # -1.0f

    .line 4
    .line 5
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lru/zdevs/zarchiver/ui/editor/c$c;->b:Landroid/graphics/RectF;

    .line 9
    .line 10
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lru/zdevs/zarchiver/ui/editor/c$c;->d:Lru/zdevs/zarchiver/ui/editor/c;

    .line 14
    .line 15
    if-ltz p2, :cond_0

    .line 16
    .line 17
    if-ltz p3, :cond_0

    .line 18
    .line 19
    iget-object v3, v1, Lru/zdevs/zarchiver/ui/editor/c;->d:[Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    aget-object v3, v3, v4

    .line 23
    .line 24
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    div-int/lit8 v5, v3, 0x2

    .line 29
    .line 30
    div-int/lit8 v6, v3, 0x4

    .line 31
    .line 32
    add-int/2addr v6, v5

    .line 33
    sub-int/2addr p2, v6

    .line 34
    int-to-float v5, p2

    .line 35
    int-to-float v6, p3

    .line 36
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 37
    .line 38
    .line 39
    iget-object v7, v1, Lru/zdevs/zarchiver/ui/editor/c;->d:[Landroid/graphics/drawable/Drawable;

    .line 40
    .line 41
    aget-object v8, v7, v4

    .line 42
    .line 43
    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 44
    .line 45
    .line 46
    neg-int v8, p2

    .line 47
    int-to-float v8, v8

    .line 48
    neg-int v9, p3

    .line 49
    int-to-float v9, v9

    .line 50
    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 51
    .line 52
    .line 53
    add-int/2addr p2, v3

    .line 54
    int-to-float p2, p2

    .line 55
    aget-object v3, v7, v4

    .line 56
    .line 57
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    add-int/2addr v3, p3

    .line 62
    int-to-float p3, v3

    .line 63
    invoke-virtual {v0, v5, v6, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 64
    .line 65
    .line 66
    :cond_0
    if-ltz p4, :cond_1

    .line 67
    .line 68
    if-ltz p5, :cond_1

    .line 69
    .line 70
    iget-object p2, v1, Lru/zdevs/zarchiver/ui/editor/c;->d:[Landroid/graphics/drawable/Drawable;

    .line 71
    .line 72
    const/4 p3, 0x1

    .line 73
    aget-object p2, p2, p3

    .line 74
    .line 75
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    div-int/lit8 v0, p2, 0x4

    .line 80
    .line 81
    sub-int/2addr p4, v0

    .line 82
    int-to-float v0, p4

    .line 83
    int-to-float v3, p5

    .line 84
    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 85
    .line 86
    .line 87
    iget-object v1, v1, Lru/zdevs/zarchiver/ui/editor/c;->d:[Landroid/graphics/drawable/Drawable;

    .line 88
    .line 89
    aget-object v4, v1, p3

    .line 90
    .line 91
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 92
    .line 93
    .line 94
    neg-int v4, p4

    .line 95
    int-to-float v4, v4

    .line 96
    neg-int v5, p5

    .line 97
    int-to-float v5, v5

    .line 98
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 99
    .line 100
    .line 101
    add-int/2addr p4, p2

    .line 102
    int-to-float p1, p4

    .line 103
    aget-object p2, v1, p3

    .line 104
    .line 105
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 106
    .line 107
    .line 108
    move-result p2

    .line 109
    add-int/2addr p2, p5

    .line 110
    int-to-float p2, p2

    .line 111
    invoke-virtual {v2, v0, v3, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 112
    .line 113
    .line 114
    :cond_1
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x0

    .line 7
    iget-object v3, p0, Lru/zdevs/zarchiver/ui/editor/c$c;->d:Lru/zdevs/zarchiver/ui/editor/c;

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    if-eqz v0, :cond_9

    .line 11
    .line 12
    const/4 v5, -0x1

    .line 13
    if-eq v0, v4, :cond_7

    .line 14
    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    const/4 p1, 0x3

    .line 18
    if-eq v0, p1, :cond_7

    .line 19
    .line 20
    iget p1, p0, Lru/zdevs/zarchiver/ui/editor/c$c;->c:I

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    :cond_0
    return v2

    .line 26
    :cond_1
    iget v0, p0, Lru/zdevs/zarchiver/ui/editor/c$c;->c:I

    .line 27
    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    return v2

    .line 31
    :cond_2
    invoke-virtual {v3, p1}, Lru/zdevs/zarchiver/ui/editor/c;->a(Landroid/view/MotionEvent;)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    iget v0, p0, Lru/zdevs/zarchiver/ui/editor/c$c;->c:I

    .line 36
    .line 37
    if-ne v0, v4, :cond_4

    .line 38
    .line 39
    iget-object v0, v3, Lru/zdevs/zarchiver/ui/editor/c;->a:Lc1/a;

    .line 40
    .line 41
    invoke-interface {v0}, Lc1/a;->getSelectionEnd()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-lt p1, v0, :cond_3

    .line 46
    .line 47
    add-int/lit8 p1, v0, -0x1

    .line 48
    .line 49
    :cond_3
    iget-object v1, v3, Lru/zdevs/zarchiver/ui/editor/c;->a:Lc1/a;

    .line 50
    .line 51
    check-cast v1, Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 52
    .line 53
    invoke-virtual {v1, p1, v0, v5}, Lru/zdevs/zarchiver/ui/editor/EditableView;->s(III)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_4
    if-ne v0, v1, :cond_6

    .line 58
    .line 59
    iget-object v0, v3, Lru/zdevs/zarchiver/ui/editor/c;->a:Lc1/a;

    .line 60
    .line 61
    invoke-interface {v0}, Lc1/a;->getSelectionStart()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-gt p1, v0, :cond_5

    .line 66
    .line 67
    add-int/lit8 p1, v0, 0x1

    .line 68
    .line 69
    :cond_5
    iget-object v1, v3, Lru/zdevs/zarchiver/ui/editor/c;->a:Lc1/a;

    .line 70
    .line 71
    check-cast v1, Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 72
    .line 73
    invoke-virtual {v1, v0, p1, v4}, Lru/zdevs/zarchiver/ui/editor/EditableView;->s(III)V

    .line 74
    .line 75
    .line 76
    :cond_6
    :goto_0
    return v4

    .line 77
    :cond_7
    iget p1, p0, Lru/zdevs/zarchiver/ui/editor/c$c;->c:I

    .line 78
    .line 79
    if-nez p1, :cond_8

    .line 80
    .line 81
    return v2

    .line 82
    :cond_8
    iput v2, p0, Lru/zdevs/zarchiver/ui/editor/c$c;->c:I

    .line 83
    .line 84
    iget-object p1, v3, Lru/zdevs/zarchiver/ui/editor/c;->a:Lc1/a;

    .line 85
    .line 86
    check-cast p1, Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 87
    .line 88
    invoke-virtual {p1, v2, v2}, Lru/zdevs/zarchiver/ui/editor/EditableView;->q(IZ)V

    .line 89
    .line 90
    .line 91
    iget-object p1, v3, Lru/zdevs/zarchiver/ui/editor/c;->a:Lc1/a;

    .line 92
    .line 93
    check-cast p1, Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 94
    .line 95
    invoke-virtual {p1, v5}, Lru/zdevs/zarchiver/ui/editor/EditableView;->k(I)V

    .line 96
    .line 97
    .line 98
    return v4

    .line 99
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    iget-object v5, p0, Lru/zdevs/zarchiver/ui/editor/c$c;->a:Landroid/graphics/RectF;

    .line 108
    .line 109
    invoke-virtual {v5, v0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    if-eqz v5, :cond_a

    .line 114
    .line 115
    iput v4, p0, Lru/zdevs/zarchiver/ui/editor/c$c;->c:I

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_a
    iget-object v5, p0, Lru/zdevs/zarchiver/ui/editor/c$c;->b:Landroid/graphics/RectF;

    .line 119
    .line 120
    invoke-virtual {v5, v0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    if-eqz p1, :cond_b

    .line 125
    .line 126
    iput v1, p0, Lru/zdevs/zarchiver/ui/editor/c$c;->c:I

    .line 127
    .line 128
    :goto_1
    iget-object p1, v3, Lru/zdevs/zarchiver/ui/editor/c;->a:Lc1/a;

    .line 129
    .line 130
    const/4 v0, -0x2

    .line 131
    check-cast p1, Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 132
    .line 133
    invoke-virtual {p1, v0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->k(I)V

    .line 134
    .line 135
    .line 136
    iget-object p1, v3, Lru/zdevs/zarchiver/ui/editor/c;->a:Lc1/a;

    .line 137
    .line 138
    iget v0, p0, Lru/zdevs/zarchiver/ui/editor/c$c;->c:I

    .line 139
    .line 140
    check-cast p1, Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 141
    .line 142
    invoke-virtual {p1, v0, v4}, Lru/zdevs/zarchiver/ui/editor/EditableView;->q(IZ)V

    .line 143
    .line 144
    .line 145
    return v4

    .line 146
    :cond_b
    return v2
.end method

.method public final onTouchModeChanged(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lru/zdevs/zarchiver/ui/editor/c$c;->d:Lru/zdevs/zarchiver/ui/editor/c;

    const/4 v0, 0x0

    iput-object v0, p1, Lru/zdevs/zarchiver/ui/editor/c;->b:Lru/zdevs/zarchiver/ui/editor/c$a;

    :cond_0
    return-void
.end method
