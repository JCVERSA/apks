.class public Lcom/noober/background/drawable/SelectorPre21DrawableCreator;
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
    iput-object p1, p0, Lcom/noober/background/drawable/SelectorPre21DrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    .line 5
    .line 6
    return-void
.end method

.method private setSelectorDrawable(Landroid/graphics/drawable/StateListDrawable;III)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/noober/background/drawable/SelectorPre21DrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/noober/background/drawable/SelectorPre21DrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    .line 10
    .line 11
    invoke-virtual {v0, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/noober/background/drawable/SelectorPre21DrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/noober/background/drawable/DrawableFactory;->getDrawable(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/GradientDrawable;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/noober/background/drawable/SelectorPre21DrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    .line 24
    .line 25
    invoke-virtual {v1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v2, 0x0

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    iget-object v1, p0, Lcom/noober/background/drawable/SelectorPre21DrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    .line 33
    .line 34
    invoke-virtual {v1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object p2, p0, Lcom/noober/background/drawable/SelectorPre21DrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    .line 42
    .line 43
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-eqz p2, :cond_2

    .line 48
    .line 49
    iget-object p2, p0, Lcom/noober/background/drawable/SelectorPre21DrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    .line 50
    .line 51
    sget v1, Lcom/noober/background/R$styleable;->background_bl_stroke_width:I

    .line 52
    .line 53
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    iget-object v1, p0, Lcom/noober/background/drawable/SelectorPre21DrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    .line 58
    .line 59
    invoke-virtual {v1, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 60
    .line 61
    .line 62
    move-result p3

    .line 63
    iget-object v1, p0, Lcom/noober/background/drawable/SelectorPre21DrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    .line 64
    .line 65
    sget v2, Lcom/noober/background/R$styleable;->background_bl_stroke_dashWidth:I

    .line 66
    .line 67
    const/4 v3, 0x0

    .line 68
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    iget-object v2, p0, Lcom/noober/background/drawable/SelectorPre21DrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    .line 73
    .line 74
    sget v4, Lcom/noober/background/R$styleable;->background_bl_stroke_dashGap:I

    .line 75
    .line 76
    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    invoke-virtual {v0, p2, p3, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(IIFF)V

    .line 81
    .line 82
    .line 83
    :cond_2
    filled-new-array {p4}, [I

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 88
    .line 89
    .line 90
    :cond_3
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
    invoke-virtual {p0}, Lcom/noober/background/drawable/SelectorPre21DrawableCreator;->create()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    return-object v0
.end method

.method public create()Landroid/graphics/drawable/StateListDrawable;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 3
    sget v1, Lcom/noober/background/R$styleable;->background_bl_checkable_solid_color:I

    sget v2, Lcom/noober/background/R$styleable;->background_bl_checkable_stroke_color:I

    const v3, 0x101009f

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/noober/background/drawable/SelectorPre21DrawableCreator;->setSelectorDrawable(Landroid/graphics/drawable/StateListDrawable;III)V

    .line 4
    sget v1, Lcom/noober/background/R$styleable;->background_bl_unCheckable_solid_color:I

    sget v2, Lcom/noober/background/R$styleable;->background_bl_unCheckable_stroke_color:I

    const v3, -0x101009f

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/noober/background/drawable/SelectorPre21DrawableCreator;->setSelectorDrawable(Landroid/graphics/drawable/StateListDrawable;III)V

    .line 5
    sget v1, Lcom/noober/background/R$styleable;->background_bl_checked_solid_color:I

    sget v2, Lcom/noober/background/R$styleable;->background_bl_checked_stroke_color:I

    const v3, 0x10100a0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/noober/background/drawable/SelectorPre21DrawableCreator;->setSelectorDrawable(Landroid/graphics/drawable/StateListDrawable;III)V

    .line 6
    sget v1, Lcom/noober/background/R$styleable;->background_bl_unChecked_solid_color:I

    sget v2, Lcom/noober/background/R$styleable;->background_bl_unChecked_stroke_color:I

    const v3, -0x10100a0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/noober/background/drawable/SelectorPre21DrawableCreator;->setSelectorDrawable(Landroid/graphics/drawable/StateListDrawable;III)V

    .line 7
    sget v1, Lcom/noober/background/R$styleable;->background_bl_enabled_solid_color:I

    sget v2, Lcom/noober/background/R$styleable;->background_bl_enabled_stroke_color:I

    const v3, 0x101009e

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/noober/background/drawable/SelectorPre21DrawableCreator;->setSelectorDrawable(Landroid/graphics/drawable/StateListDrawable;III)V

    .line 8
    sget v1, Lcom/noober/background/R$styleable;->background_bl_unEnabled_solid_color:I

    sget v2, Lcom/noober/background/R$styleable;->background_bl_unEnabled_stroke_color:I

    const v3, -0x101009e

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/noober/background/drawable/SelectorPre21DrawableCreator;->setSelectorDrawable(Landroid/graphics/drawable/StateListDrawable;III)V

    .line 9
    sget v1, Lcom/noober/background/R$styleable;->background_bl_selected_solid_color:I

    sget v2, Lcom/noober/background/R$styleable;->background_bl_selected_stroke_color:I

    const v3, 0x10100a1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/noober/background/drawable/SelectorPre21DrawableCreator;->setSelectorDrawable(Landroid/graphics/drawable/StateListDrawable;III)V

    .line 10
    sget v1, Lcom/noober/background/R$styleable;->background_bl_unSelected_solid_color:I

    sget v2, Lcom/noober/background/R$styleable;->background_bl_unSelected_stroke_color:I

    const v3, -0x10100a1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/noober/background/drawable/SelectorPre21DrawableCreator;->setSelectorDrawable(Landroid/graphics/drawable/StateListDrawable;III)V

    .line 11
    sget v1, Lcom/noober/background/R$styleable;->background_bl_pressed_solid_color:I

    sget v2, Lcom/noober/background/R$styleable;->background_bl_pressed_stroke_color:I

    const v3, 0x10100a7

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/noober/background/drawable/SelectorPre21DrawableCreator;->setSelectorDrawable(Landroid/graphics/drawable/StateListDrawable;III)V

    .line 12
    sget v1, Lcom/noober/background/R$styleable;->background_bl_unPressed_solid_color:I

    sget v2, Lcom/noober/background/R$styleable;->background_bl_unPressed_stroke_color:I

    const v3, -0x10100a7

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/noober/background/drawable/SelectorPre21DrawableCreator;->setSelectorDrawable(Landroid/graphics/drawable/StateListDrawable;III)V

    .line 13
    sget v1, Lcom/noober/background/R$styleable;->background_bl_focused_solid_color:I

    sget v2, Lcom/noober/background/R$styleable;->background_bl_focused_stroke_color:I

    const v3, 0x101009c

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/noober/background/drawable/SelectorPre21DrawableCreator;->setSelectorDrawable(Landroid/graphics/drawable/StateListDrawable;III)V

    .line 14
    sget v1, Lcom/noober/background/R$styleable;->background_bl_unFocused_solid_color:I

    sget v2, Lcom/noober/background/R$styleable;->background_bl_unFocused_stroke_color:I

    const v3, -0x101009c

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/noober/background/drawable/SelectorPre21DrawableCreator;->setSelectorDrawable(Landroid/graphics/drawable/StateListDrawable;III)V

    return-object v0
.end method
