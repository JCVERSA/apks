.class public Lru/zdevs/zarchiver/ui/ctrl/MenuToggleButton;
.super Landroid/widget/ImageView;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field public a:Z

.field public final b:I

.field public final c:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x5

    .line 5
    invoke-static {v0}, Lz0/c;->a(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput v0, p0, Lru/zdevs/zarchiver/ui/ctrl/MenuToggleButton;->b:I

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Paint;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lru/zdevs/zarchiver/ui/ctrl/MenuToggleButton;->c:Landroid/graphics/Paint;

    .line 17
    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    sget-object v1, La0/c;->d:[I

    .line 21
    .line 22
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {p2, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {v2, v1}, Lz0/c;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    .line 44
    .line 45
    :cond_0
    const/16 p2, 0x600

    .line 46
    .line 47
    invoke-static {p2}, Lt0/b;->k(I)Z

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    if-nez p2, :cond_1

    .line 52
    .line 53
    const p2, 0x7f060009

    .line 54
    .line 55
    .line 56
    invoke-static {p1, p2}, Lz0/c;->g(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const p2, 0x7f030008

    .line 68
    .line 69
    .line 70
    invoke-static {p1, p2}, Lz0/c;->c(Landroid/content/Context;I)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    .line 76
    .line 77
    const/4 p1, 0x1

    .line 78
    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    const p2, 0x7f050014

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    float-to-int p1, p1

    .line 93
    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 94
    .line 95
    .line 96
    return-void
.end method


# virtual methods
.method public final isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lru/zdevs/zarchiver/ui/ctrl/MenuToggleButton;->a:Z

    return v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iget-boolean v2, p0, Lru/zdevs/zarchiver/ui/ctrl/MenuToggleButton;->a:Z

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    iget v2, p0, Lru/zdevs/zarchiver/ui/ctrl/MenuToggleButton;->b:I

    .line 17
    .line 18
    int-to-float v4, v2

    .line 19
    sub-int v3, v0, v2

    .line 20
    .line 21
    int-to-float v5, v3

    .line 22
    sub-int/2addr v1, v2

    .line 23
    int-to-float v6, v1

    .line 24
    int-to-float v7, v0

    .line 25
    iget-object v8, p0, Lru/zdevs/zarchiver/ui/ctrl/MenuToggleButton;->c:Landroid/graphics/Paint;

    .line 26
    .line 27
    move-object v3, p1

    .line 28
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public final performClick()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/ctrl/MenuToggleButton;->toggle()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Landroid/widget/ImageView;->performClick()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, v1}, Landroid/view/View;->playSoundEffect(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return v0
.end method

.method public setChecked(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lru/zdevs/zarchiver/ui/ctrl/MenuToggleButton;->a:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final toggle()V
    .locals 1

    iget-boolean v0, p0, Lru/zdevs/zarchiver/ui/ctrl/MenuToggleButton;->a:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lru/zdevs/zarchiver/ui/ctrl/MenuToggleButton;->setChecked(Z)V

    return-void
.end method
