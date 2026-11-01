.class Lru/zdevs/zarchiver/ui/layout/CheckableRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lru/zdevs/zarchiver/ui/layout/CheckableRelativeLayout;->a:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    const v0, 0x7f030008

    .line 12
    .line 13
    .line 14
    invoke-static {p2, v0}, Lz0/c;->c(Landroid/content/Context;I)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 21
    .line 22
    .line 23
    const/16 v1, 0x190

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/DrawableContainer;->setExitFadeDuration(I)V

    .line 26
    .line 27
    .line 28
    const/16 v1, 0x2d

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 31
    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    new-array v1, v1, [I

    .line 35
    .line 36
    const v2, 0x10100a0

    .line 37
    .line 38
    .line 39
    aput v2, v1, p1

    .line 40
    .line 41
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 42
    .line 43
    invoke-direct {v2, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 47
    .line 48
    .line 49
    new-array p2, p1, [I

    .line 50
    .line 51
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 52
    .line 53
    invoke-direct {v1, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method


# virtual methods
.method public final isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lru/zdevs/zarchiver/ui/layout/CheckableRelativeLayout;->a:Z

    return v0
.end method

.method public final onCreateDrawableState(I)[I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lru/zdevs/zarchiver/ui/layout/CheckableRelativeLayout;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    add-int/2addr p1, v0

    .line 7
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onCreateDrawableState(I)[I

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    new-array v0, v0, [I

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const v2, 0x10100a0

    .line 15
    .line 16
    .line 17
    aput v2, v0, v1

    .line 18
    .line 19
    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 20
    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onCreateDrawableState(I)[I

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method

.method public final setChecked(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lru/zdevs/zarchiver/ui/layout/CheckableRelativeLayout;->a:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final toggle()V
    .locals 1

    iget-boolean v0, p0, Lru/zdevs/zarchiver/ui/layout/CheckableRelativeLayout;->a:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lru/zdevs/zarchiver/ui/layout/CheckableRelativeLayout;->setChecked(Z)V

    return-void
.end method
