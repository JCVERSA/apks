.class public Lcom/noober/background/drawable/GradientStateDrawableCreator;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/noober/background/drawable/ICreateDrawable;


# instance fields
.field private typedArray:Landroid/content/res/TypedArray;


# direct methods
.method public constructor <init>(Landroid/content/res/TypedArray;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/noober/background/drawable/GradientStateDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    .line 5
    .line 6
    return-void
.end method

.method private setSelectorDrawable(Landroid/graphics/drawable/StateListDrawable;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/noober/background/drawable/GradientStateDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    .line 2
    .line 3
    invoke-static {v0, p2}, Lcom/noober/background/drawable/DrawableFactory;->getDrawable(Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/GradientDrawable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    filled-new-array {p2}, [I

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public bridge synthetic create()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/noober/background/drawable/GradientStateDrawableCreator;->create()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    return-object v0
.end method

.method public create()Landroid/graphics/drawable/StateListDrawable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/noober/background/drawable/GradientStateDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v2, Lcom/noober/background/R$styleable;->background_bl_checkable_gradient_startColor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/noober/background/drawable/GradientStateDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v2, Lcom/noober/background/R$styleable;->background_bl_unCheckable_gradient_startColor:I

    .line 4
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x101009f

    .line 5
    invoke-direct {p0, v0, v1}, Lcom/noober/background/drawable/GradientStateDrawableCreator;->setSelectorDrawable(Landroid/graphics/drawable/StateListDrawable;I)V

    const v1, -0x101009f

    .line 6
    invoke-direct {p0, v0, v1}, Lcom/noober/background/drawable/GradientStateDrawableCreator;->setSelectorDrawable(Landroid/graphics/drawable/StateListDrawable;I)V

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/noober/background/drawable/GradientStateDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v2, Lcom/noober/background/R$styleable;->background_bl_checked_gradient_startColor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/noober/background/drawable/GradientStateDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v2, Lcom/noober/background/R$styleable;->background_bl_unChecked_gradient_startColor:I

    .line 8
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x10100a0

    .line 9
    invoke-direct {p0, v0, v1}, Lcom/noober/background/drawable/GradientStateDrawableCreator;->setSelectorDrawable(Landroid/graphics/drawable/StateListDrawable;I)V

    const v1, -0x10100a0

    .line 10
    invoke-direct {p0, v0, v1}, Lcom/noober/background/drawable/GradientStateDrawableCreator;->setSelectorDrawable(Landroid/graphics/drawable/StateListDrawable;I)V

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/noober/background/drawable/GradientStateDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v2, Lcom/noober/background/R$styleable;->background_bl_enabled_gradient_startColor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/noober/background/drawable/GradientStateDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v2, Lcom/noober/background/R$styleable;->background_bl_unEnabled_gradient_startColor:I

    .line 12
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x101009e

    .line 13
    invoke-direct {p0, v0, v1}, Lcom/noober/background/drawable/GradientStateDrawableCreator;->setSelectorDrawable(Landroid/graphics/drawable/StateListDrawable;I)V

    const v1, -0x101009e

    .line 14
    invoke-direct {p0, v0, v1}, Lcom/noober/background/drawable/GradientStateDrawableCreator;->setSelectorDrawable(Landroid/graphics/drawable/StateListDrawable;I)V

    .line 15
    :cond_2
    iget-object v1, p0, Lcom/noober/background/drawable/GradientStateDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v2, Lcom/noober/background/R$styleable;->background_bl_selected_gradient_startColor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/noober/background/drawable/GradientStateDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v2, Lcom/noober/background/R$styleable;->background_bl_unSelected_gradient_startColor:I

    .line 16
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x10100a1

    .line 17
    invoke-direct {p0, v0, v1}, Lcom/noober/background/drawable/GradientStateDrawableCreator;->setSelectorDrawable(Landroid/graphics/drawable/StateListDrawable;I)V

    const v1, -0x10100a1

    .line 18
    invoke-direct {p0, v0, v1}, Lcom/noober/background/drawable/GradientStateDrawableCreator;->setSelectorDrawable(Landroid/graphics/drawable/StateListDrawable;I)V

    .line 19
    :cond_3
    iget-object v1, p0, Lcom/noober/background/drawable/GradientStateDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v2, Lcom/noober/background/R$styleable;->background_bl_pressed_gradient_startColor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/noober/background/drawable/GradientStateDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v2, Lcom/noober/background/R$styleable;->background_bl_unPressed_gradient_startColor:I

    .line 20
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x10100a7

    .line 21
    invoke-direct {p0, v0, v1}, Lcom/noober/background/drawable/GradientStateDrawableCreator;->setSelectorDrawable(Landroid/graphics/drawable/StateListDrawable;I)V

    const v1, -0x10100a7

    .line 22
    invoke-direct {p0, v0, v1}, Lcom/noober/background/drawable/GradientStateDrawableCreator;->setSelectorDrawable(Landroid/graphics/drawable/StateListDrawable;I)V

    .line 23
    :cond_4
    iget-object v1, p0, Lcom/noober/background/drawable/GradientStateDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v2, Lcom/noober/background/R$styleable;->background_bl_focused_gradient_startColor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/noober/background/drawable/GradientStateDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v2, Lcom/noober/background/R$styleable;->background_bl_unFocused_gradient_startColor:I

    .line 24
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x101009c

    .line 25
    invoke-direct {p0, v0, v1}, Lcom/noober/background/drawable/GradientStateDrawableCreator;->setSelectorDrawable(Landroid/graphics/drawable/StateListDrawable;I)V

    const v1, -0x101009c

    .line 26
    invoke-direct {p0, v0, v1}, Lcom/noober/background/drawable/GradientStateDrawableCreator;->setSelectorDrawable(Landroid/graphics/drawable/StateListDrawable;I)V

    :cond_5
    return-object v0
.end method
