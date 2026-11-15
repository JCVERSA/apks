.class public Lcom/noober/background/drawable/PressDrawableCreator;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/noober/background/drawable/ICreateDrawable;


# instance fields
.field private drawable:Landroid/graphics/drawable/GradientDrawable;

.field private pressTa:Landroid/content/res/TypedArray;

.field private typedArray:Landroid/content/res/TypedArray;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/GradientDrawable;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/noober/background/drawable/PressDrawableCreator;->drawable:Landroid/graphics/drawable/GradientDrawable;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/noober/background/drawable/PressDrawableCreator;->pressTa:Landroid/content/res/TypedArray;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/noober/background/drawable/PressDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public create()Landroid/graphics/drawable/Drawable;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    iget-object v3, p0, Lcom/noober/background/drawable/PressDrawableCreator;->pressTa:Landroid/content/res/TypedArray;

    .line 9
    .line 10
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-ge v2, v3, :cond_2

    .line 15
    .line 16
    iget-object v3, p0, Lcom/noober/background/drawable/PressDrawableCreator;->pressTa:Landroid/content/res/TypedArray;

    .line 17
    .line 18
    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    sget v4, Lcom/noober/background/R$styleable;->background_press_bl_pressed_color:I

    .line 23
    .line 24
    if-ne v3, v4, :cond_0

    .line 25
    .line 26
    iget-object v4, p0, Lcom/noober/background/drawable/PressDrawableCreator;->pressTa:Landroid/content/res/TypedArray;

    .line 27
    .line 28
    invoke-virtual {v4, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    iget-object v4, p0, Lcom/noober/background/drawable/PressDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    .line 33
    .line 34
    invoke-static {v4}, Lcom/noober/background/drawable/DrawableFactory;->getDrawable(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/GradientDrawable;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 39
    .line 40
    .line 41
    const v3, 0x10100a7

    .line 42
    .line 43
    .line 44
    filled-new-array {v3}, [I

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_0
    sget v4, Lcom/noober/background/R$styleable;->background_press_bl_unpressed_color:I

    .line 53
    .line 54
    if-ne v3, v4, :cond_1

    .line 55
    .line 56
    iget-object v4, p0, Lcom/noober/background/drawable/PressDrawableCreator;->pressTa:Landroid/content/res/TypedArray;

    .line 57
    .line 58
    invoke-virtual {v4, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    iget-object v4, p0, Lcom/noober/background/drawable/PressDrawableCreator;->drawable:Landroid/graphics/drawable/GradientDrawable;

    .line 63
    .line 64
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 65
    .line 66
    .line 67
    const v3, -0x10100a7

    .line 68
    .line 69
    .line 70
    filled-new-array {v3}, [I

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    iget-object v4, p0, Lcom/noober/background/drawable/PressDrawableCreator;->drawable:Landroid/graphics/drawable/GradientDrawable;

    .line 75
    .line 76
    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 77
    .line 78
    .line 79
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    return-object v0
.end method
