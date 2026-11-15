.class public Lcom/noober/background/drawable/MultiSelectorDrawableCreator;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/noober/background/drawable/ICreateDrawable;


# instance fields
.field private context:Landroid/content/Context;

.field private gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private selectorTa:Landroid/content/res/TypedArray;

.field typedArray:Landroid/content/res/TypedArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/noober/background/drawable/MultiSelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/noober/background/drawable/MultiSelectorDrawableCreator;->context:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/noober/background/drawable/MultiSelectorDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    .line 9
    .line 10
    return-void
.end method

.method private addState(Landroid/graphics/drawable/StateListDrawable;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/noober/background/drawable/MultiSelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    if-eqz p2, :cond_8

    .line 8
    .line 9
    const-string v0, ","

    .line 10
    .line 11
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    array-length v0, p2

    .line 16
    const/4 v1, 0x2

    .line 17
    if-lt v0, v1, :cond_7

    .line 18
    .line 19
    array-length v0, p2

    .line 20
    add-int/lit8 v0, v0, -0x1

    .line 21
    .line 22
    new-array v0, v0, [I

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    const/4 v2, 0x0

    .line 26
    :goto_0
    array-length v3, p2

    .line 27
    if-ge v2, v3, :cond_6

    .line 28
    .line 29
    aget-object v3, p2, v2

    .line 30
    .line 31
    array-length v4, p2

    .line 32
    add-int/lit8 v4, v4, -0x1

    .line 33
    .line 34
    if-ne v2, v4, :cond_3

    .line 35
    .line 36
    iget-object v1, p0, Lcom/noober/background/drawable/MultiSelectorDrawableCreator;->context:Landroid/content/Context;

    .line 37
    .line 38
    invoke-static {v1, v3}, Lcom/noober/background/common/ResourceUtils;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    iget-object v4, p0, Lcom/noober/background/drawable/MultiSelectorDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    .line 43
    .line 44
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-lez v4, :cond_0

    .line 49
    .line 50
    :try_start_0
    iget-object v4, p0, Lcom/noober/background/drawable/MultiSelectorDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    .line 51
    .line 52
    invoke-static {v4}, Lcom/noober/background/drawable/DrawableFactory;->getDrawable(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/GradientDrawable;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    iput-object v4, p0, Lcom/noober/background/drawable/MultiSelectorDrawableCreator;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :catch_0
    move-exception v4

    .line 60
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 61
    .line 62
    .line 63
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/noober/background/drawable/MultiSelectorDrawableCreator;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 64
    .line 65
    if-eqz v4, :cond_1

    .line 66
    .line 67
    const/4 v5, -0x1

    .line 68
    if-eq v1, v5, :cond_1

    .line 69
    .line 70
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lcom/noober/background/drawable/MultiSelectorDrawableCreator;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_1
    iget-object v1, p0, Lcom/noober/background/drawable/MultiSelectorDrawableCreator;->context:Landroid/content/Context;

    .line 77
    .line 78
    invoke-static {v1, v3}, Lcom/noober/background/common/ResourceUtils;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    :goto_2
    if-eqz v1, :cond_2

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 86
    .line 87
    const-string p2, "cannot find drawable from the last attribute"

    .line 88
    .line 89
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p1

    .line 93
    :cond_3
    const-string v4, ""

    .line 94
    .line 95
    const-string v5, "-"

    .line 96
    .line 97
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-static {v4}, Lcom/noober/background/common/MultiSelector;->getMultiAttr(Ljava/lang/String;)Lcom/noober/background/common/MultiSelector;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    if-eqz v4, :cond_5

    .line 106
    .line 107
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-eqz v3, :cond_4

    .line 112
    .line 113
    iget v3, v4, Lcom/noober/background/common/MultiSelector;->id:I

    .line 114
    .line 115
    neg-int v3, v3

    .line 116
    aput v3, v0, v2

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_4
    iget v3, v4, Lcom/noober/background/common/MultiSelector;->id:I

    .line 120
    .line 121
    aput v3, v0, v2

    .line 122
    .line 123
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 127
    .line 128
    const-string p2, "the attribute of bl_multi_selector only support state_checkable, state_checked, state_enabled, state_selected, state_pressed, state_focused, state_hovered, state_activated"

    .line 129
    .line 130
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw p1

    .line 134
    :cond_6
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 135
    .line 136
    .line 137
    goto :goto_4

    .line 138
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 139
    .line 140
    const-string p2, "Attributes and drawable must be set at the same time"

    .line 141
    .line 142
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw p1

    .line 146
    :cond_8
    :goto_4
    return-void
.end method


# virtual methods
.method public create()Landroid/graphics/drawable/Drawable;
    .locals 4

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
    :goto_0
    iget-object v2, p0, Lcom/noober/background/drawable/MultiSelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-ge v1, v2, :cond_6

    .line 14
    .line 15
    iget-object v2, p0, Lcom/noober/background/drawable/MultiSelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    sget v3, Lcom/noober/background/R$styleable;->background_multi_selector_bl_multi_selector1:I

    .line 22
    .line 23
    if-ne v2, v3, :cond_0

    .line 24
    .line 25
    invoke-direct {p0, v0, v2}, Lcom/noober/background/drawable/MultiSelectorDrawableCreator;->addState(Landroid/graphics/drawable/StateListDrawable;I)V

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    sget v3, Lcom/noober/background/R$styleable;->background_multi_selector_bl_multi_selector2:I

    .line 30
    .line 31
    if-ne v2, v3, :cond_1

    .line 32
    .line 33
    invoke-direct {p0, v0, v2}, Lcom/noober/background/drawable/MultiSelectorDrawableCreator;->addState(Landroid/graphics/drawable/StateListDrawable;I)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    sget v3, Lcom/noober/background/R$styleable;->background_multi_selector_bl_multi_selector3:I

    .line 38
    .line 39
    if-ne v2, v3, :cond_2

    .line 40
    .line 41
    invoke-direct {p0, v0, v2}, Lcom/noober/background/drawable/MultiSelectorDrawableCreator;->addState(Landroid/graphics/drawable/StateListDrawable;I)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    sget v3, Lcom/noober/background/R$styleable;->background_multi_selector_bl_multi_selector4:I

    .line 46
    .line 47
    if-ne v2, v3, :cond_3

    .line 48
    .line 49
    invoke-direct {p0, v0, v2}, Lcom/noober/background/drawable/MultiSelectorDrawableCreator;->addState(Landroid/graphics/drawable/StateListDrawable;I)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    sget v3, Lcom/noober/background/R$styleable;->background_multi_selector_bl_multi_selector5:I

    .line 54
    .line 55
    if-ne v2, v3, :cond_4

    .line 56
    .line 57
    invoke-direct {p0, v0, v2}, Lcom/noober/background/drawable/MultiSelectorDrawableCreator;->addState(Landroid/graphics/drawable/StateListDrawable;I)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_4
    sget v3, Lcom/noober/background/R$styleable;->background_multi_selector_bl_multi_selector6:I

    .line 62
    .line 63
    if-ne v2, v3, :cond_5

    .line 64
    .line 65
    invoke-direct {p0, v0, v2}, Lcom/noober/background/drawable/MultiSelectorDrawableCreator;->addState(Landroid/graphics/drawable/StateListDrawable;I)V

    .line 66
    .line 67
    .line 68
    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_6
    return-object v0
.end method
