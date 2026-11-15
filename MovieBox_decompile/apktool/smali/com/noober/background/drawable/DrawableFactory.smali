.class public Lcom/noober/background/drawable/DrawableFactory;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getAnimationDrawable(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/noober/background/drawable/AnimationDrawableCreator;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/noober/background/drawable/AnimationDrawableCreator;-><init>(Landroid/content/res/TypedArray;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/noober/background/drawable/AnimationDrawableCreator;->create()Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    .line 11
    .line 12
    return-object p0
.end method

.method public static getButtonDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)Landroid/graphics/drawable/StateListDrawable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/noober/background/drawable/ButtonDrawableCreator;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/noober/background/drawable/ButtonDrawableCreator;-><init>(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/noober/background/drawable/ButtonDrawableCreator;->create()Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Landroid/graphics/drawable/StateListDrawable;

    .line 11
    .line 12
    return-object p0
.end method

.method public static getDrawable(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/GradientDrawable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/noober/background/drawable/GradientDrawableCreator;

    invoke-direct {v0, p0}, Lcom/noober/background/drawable/GradientDrawableCreator;-><init>(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Lcom/noober/background/drawable/GradientDrawableCreator;->create()Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static getDrawable(Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/GradientDrawable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/noober/background/drawable/GradientDrawableCreator;

    invoke-direct {v0, p0, p1}, Lcom/noober/background/drawable/GradientDrawableCreator;-><init>(Landroid/content/res/TypedArray;I)V

    invoke-virtual {v0}, Lcom/noober/background/drawable/GradientDrawableCreator;->create()Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static getMultiSelectorDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)Landroid/graphics/drawable/StateListDrawable;
    .locals 1

    .line 1
    new-instance v0, Lcom/noober/background/drawable/MultiSelectorDrawableCreator;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/noober/background/drawable/MultiSelectorDrawableCreator;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/noober/background/drawable/MultiSelectorDrawableCreator;->create()Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Landroid/graphics/drawable/StateListDrawable;

    .line 11
    .line 12
    return-object p0
.end method

.method public static getMultiTextColorSelectorColorCreator(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    new-instance v0, Lcom/noober/background/drawable/MultiTextColorSelectorColorCreator;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/noober/background/drawable/MultiTextColorSelectorColorCreator;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/noober/background/drawable/MultiTextColorSelectorColorCreator;->create()Landroid/content/res/ColorStateList;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static getPressDrawable(Landroid/graphics/drawable/GradientDrawable;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)Landroid/graphics/drawable/StateListDrawable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/noober/background/drawable/PressDrawableCreator;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/noober/background/drawable/PressDrawableCreator;-><init>(Landroid/graphics/drawable/GradientDrawable;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/noober/background/drawable/PressDrawableCreator;->create()Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Landroid/graphics/drawable/StateListDrawable;

    .line 11
    .line 12
    return-object p0
.end method

.method public static getSelectorDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)Landroid/graphics/drawable/StateListDrawable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/noober/background/drawable/SelectorDrawableCreator;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/noober/background/drawable/SelectorDrawableCreator;-><init>(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/noober/background/drawable/SelectorDrawableCreator;->create()Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Landroid/graphics/drawable/StateListDrawable;

    .line 11
    .line 12
    return-object p0
.end method

.method public static getSelectorPre21Drawable(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/StateListDrawable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/noober/background/drawable/SelectorPre21DrawableCreator;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/noober/background/drawable/SelectorPre21DrawableCreator;-><init>(Landroid/content/res/TypedArray;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/noober/background/drawable/SelectorPre21DrawableCreator;->create()Landroid/graphics/drawable/StateListDrawable;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static getStateGradientDrawable(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/StateListDrawable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/noober/background/drawable/GradientStateDrawableCreator;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/noober/background/drawable/GradientStateDrawableCreator;-><init>(Landroid/content/res/TypedArray;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/noober/background/drawable/GradientStateDrawableCreator;->create()Landroid/graphics/drawable/StateListDrawable;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static getTextSelectorColor(Landroid/content/res/TypedArray;)Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    new-instance v0, Lcom/noober/background/drawable/ColorStateCreator;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/noober/background/drawable/ColorStateCreator;-><init>(Landroid/content/res/TypedArray;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/noober/background/drawable/ColorStateCreator;->create()Landroid/content/res/ColorStateList;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method
