.class public final Lru/zdevs/zarchiver/ui/editor/c$b;
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
    name = "b"
.end annotation


# instance fields
.field public final a:Landroid/graphics/RectF;

.field public b:Z

.field public c:Z

.field public d:J

.field public final e:I

.field public final synthetic f:Lru/zdevs/zarchiver/ui/editor/c;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/ui/editor/c;I)V
    .locals 4

    .line 1
    iput-object p1, p0, Lru/zdevs/zarchiver/ui/editor/c$b;->f:Lru/zdevs/zarchiver/ui/editor/c;

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
    iput-object p1, p0, Lru/zdevs/zarchiver/ui/editor/c$b;->a:Landroid/graphics/RectF;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lru/zdevs/zarchiver/ui/editor/c$b;->c:Z

    .line 15
    .line 16
    iput-boolean v0, p0, Lru/zdevs/zarchiver/ui/editor/c$b;->b:Z

    .line 17
    .line 18
    iput p2, p0, Lru/zdevs/zarchiver/ui/editor/c$b;->e:I

    .line 19
    .line 20
    if-nez p2, :cond_0

    .line 21
    .line 22
    const-wide/16 v0, 0x0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    int-to-long v2, p2

    .line 30
    add-long/2addr v0, v2

    .line 31
    :goto_0
    iput-wide v0, p0, Lru/zdevs/zarchiver/ui/editor/c$b;->d:J

    .line 32
    .line 33
    const/high16 p2, -0x40800000    # -1.0f

    .line 34
    .line 35
    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 36
    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public final c(Landroid/graphics/Canvas;IIII)V
    .locals 4

    .line 1
    iget-wide p4, p0, Lru/zdevs/zarchiver/ui/editor/c$b;->d:J

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    iget-object v2, p0, Lru/zdevs/zarchiver/ui/editor/c$b;->f:Lru/zdevs/zarchiver/ui/editor/c;

    .line 6
    .line 7
    cmp-long v3, p4, v0

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    cmp-long v3, p4, v0

    .line 16
    .line 17
    if-gez v3, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    invoke-virtual {v2, p1}, Lru/zdevs/zarchiver/ui/editor/c;->g(I)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-object p4, p0, Lru/zdevs/zarchiver/ui/editor/c$b;->a:Landroid/graphics/RectF;

    .line 25
    .line 26
    const/high16 p5, -0x40800000    # -1.0f

    .line 27
    .line 28
    invoke-virtual {p4, p5, p5, p5, p5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 29
    .line 30
    .line 31
    if-ltz p2, :cond_1

    .line 32
    .line 33
    if-ltz p3, :cond_1

    .line 34
    .line 35
    iget-object p5, v2, Lru/zdevs/zarchiver/ui/editor/c;->c:Landroid/graphics/drawable/Drawable;

    .line 36
    .line 37
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 38
    .line 39
    .line 40
    move-result p5

    .line 41
    div-int/lit8 p5, p5, 0x2

    .line 42
    .line 43
    sub-int/2addr p2, p5

    .line 44
    int-to-float p5, p2

    .line 45
    int-to-float v0, p3

    .line 46
    invoke-virtual {p1, p5, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 47
    .line 48
    .line 49
    iget-object v1, v2, Lru/zdevs/zarchiver/ui/editor/c;->c:Landroid/graphics/drawable/Drawable;

    .line 50
    .line 51
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 52
    .line 53
    .line 54
    neg-int v2, p2

    .line 55
    int-to-float v2, v2

    .line 56
    neg-int v3, p3

    .line 57
    int-to-float v3, v3

    .line 58
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    add-int/2addr p1, p2

    .line 66
    int-to-float p1, p1

    .line 67
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    add-int/2addr p2, p3

    .line 72
    int-to-float p2, p2

    .line 73
    invoke-virtual {p4, p5, v0, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 74
    .line 75
    .line 76
    :cond_1
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iget-object v4, p0, Lru/zdevs/zarchiver/ui/editor/c$b;->f:Lru/zdevs/zarchiver/ui/editor/c;

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    if-eqz v0, :cond_8

    .line 12
    .line 13
    const/4 v6, -0x1

    .line 14
    if-eq v0, v5, :cond_2

    .line 15
    .line 16
    const/4 v7, 0x2

    .line 17
    if-eq v0, v7, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x3

    .line 20
    if-eq v0, p1, :cond_2

    .line 21
    .line 22
    iget-boolean p1, p0, Lru/zdevs/zarchiver/ui/editor/c$b;->b:Z

    .line 23
    .line 24
    return p1

    .line 25
    :cond_0
    iget-boolean v0, p0, Lru/zdevs/zarchiver/ui/editor/c$b;->b:Z

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    return v3

    .line 30
    :cond_1
    iput-boolean v3, p0, Lru/zdevs/zarchiver/ui/editor/c$b;->c:Z

    .line 31
    .line 32
    invoke-virtual {v4, p1}, Lru/zdevs/zarchiver/ui/editor/c;->a(Landroid/view/MotionEvent;)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    iget-object v0, v4, Lru/zdevs/zarchiver/ui/editor/c;->a:Lc1/a;

    .line 37
    .line 38
    check-cast v0, Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 39
    .line 40
    invoke-virtual {v0, p1, p1, v6}, Lru/zdevs/zarchiver/ui/editor/EditableView;->s(III)V

    .line 41
    .line 42
    .line 43
    return v5

    .line 44
    :cond_2
    iget-boolean p1, p0, Lru/zdevs/zarchiver/ui/editor/c$b;->b:Z

    .line 45
    .line 46
    if-eqz p1, :cond_7

    .line 47
    .line 48
    iget-object p1, v4, Lru/zdevs/zarchiver/ui/editor/c;->a:Lc1/a;

    .line 49
    .line 50
    check-cast p1, Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 51
    .line 52
    invoke-virtual {p1, v3, v3}, Lru/zdevs/zarchiver/ui/editor/EditableView;->q(IZ)V

    .line 53
    .line 54
    .line 55
    iget-object p1, v4, Lru/zdevs/zarchiver/ui/editor/c;->a:Lc1/a;

    .line 56
    .line 57
    move-object v0, p1

    .line 58
    check-cast v0, Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 59
    .line 60
    iget-object v4, v0, Lru/zdevs/zarchiver/ui/editor/EditableView;->m:Landroid/view/ActionMode;

    .line 61
    .line 62
    if-eqz v4, :cond_3

    .line 63
    .line 64
    iget v0, v0, Lru/zdevs/zarchiver/ui/editor/EditableView;->n:I

    .line 65
    .line 66
    if-ne v0, v5, :cond_3

    .line 67
    .line 68
    const/4 v0, 0x1

    .line 69
    goto :goto_0

    .line 70
    :cond_3
    const/4 v0, 0x0

    .line 71
    :goto_0
    if-eqz v0, :cond_4

    .line 72
    .line 73
    move-object v0, p1

    .line 74
    check-cast v0, Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 75
    .line 76
    invoke-virtual {v0, v6}, Lru/zdevs/zarchiver/ui/editor/EditableView;->k(I)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_4
    iget-boolean v0, p0, Lru/zdevs/zarchiver/ui/editor/c$b;->c:Z

    .line 81
    .line 82
    if-eqz v0, :cond_5

    .line 83
    .line 84
    check-cast p1, Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 85
    .line 86
    invoke-virtual {p1, v5}, Lru/zdevs/zarchiver/ui/editor/EditableView;->t(I)V

    .line 87
    .line 88
    .line 89
    return v5

    .line 90
    :cond_5
    :goto_1
    iget v0, p0, Lru/zdevs/zarchiver/ui/editor/c$b;->e:I

    .line 91
    .line 92
    if-nez v0, :cond_6

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 96
    .line 97
    .line 98
    move-result-wide v1

    .line 99
    int-to-long v6, v0

    .line 100
    add-long/2addr v1, v6

    .line 101
    :goto_2
    iput-wide v1, p0, Lru/zdevs/zarchiver/ui/editor/c$b;->d:J

    .line 102
    .line 103
    iput-boolean v3, p0, Lru/zdevs/zarchiver/ui/editor/c$b;->b:Z

    .line 104
    .line 105
    invoke-interface {p1, v5}, Lc1/a;->setCursorBlink(Z)V

    .line 106
    .line 107
    .line 108
    return v5

    .line 109
    :cond_7
    return v3

    .line 110
    :cond_8
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/c$b;->a:Landroid/graphics/RectF;

    .line 111
    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    invoke-virtual {v0, v6, p1}, Landroid/graphics/RectF;->contains(FF)Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    if-eqz p1, :cond_9

    .line 125
    .line 126
    iput-boolean v5, p0, Lru/zdevs/zarchiver/ui/editor/c$b;->c:Z

    .line 127
    .line 128
    iput-boolean v5, p0, Lru/zdevs/zarchiver/ui/editor/c$b;->b:Z

    .line 129
    .line 130
    iput-wide v1, p0, Lru/zdevs/zarchiver/ui/editor/c$b;->d:J

    .line 131
    .line 132
    iget-object p1, v4, Lru/zdevs/zarchiver/ui/editor/c;->a:Lc1/a;

    .line 133
    .line 134
    invoke-interface {p1, v3}, Lc1/a;->setCursorBlink(Z)V

    .line 135
    .line 136
    .line 137
    const/4 p1, -0x2

    .line 138
    iget-object v0, v4, Lru/zdevs/zarchiver/ui/editor/c;->a:Lc1/a;

    .line 139
    .line 140
    move-object v1, v0

    .line 141
    check-cast v1, Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 142
    .line 143
    invoke-virtual {v1, p1}, Lru/zdevs/zarchiver/ui/editor/EditableView;->k(I)V

    .line 144
    .line 145
    .line 146
    check-cast v0, Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 147
    .line 148
    invoke-virtual {v0, v3, v5}, Lru/zdevs/zarchiver/ui/editor/EditableView;->q(IZ)V

    .line 149
    .line 150
    .line 151
    return v5

    .line 152
    :cond_9
    return v3
.end method

.method public final onTouchModeChanged(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lru/zdevs/zarchiver/ui/editor/c$b;->f:Lru/zdevs/zarchiver/ui/editor/c;

    const/4 v0, 0x0

    iput-object v0, p1, Lru/zdevs/zarchiver/ui/editor/c;->b:Lru/zdevs/zarchiver/ui/editor/c$a;

    :cond_0
    return-void
.end method
