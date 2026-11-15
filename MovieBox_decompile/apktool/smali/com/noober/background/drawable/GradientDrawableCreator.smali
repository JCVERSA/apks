.class public Lcom/noober/background/drawable/GradientDrawableCreator;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/noober/background/drawable/ICreateDrawable;


# instance fields
.field private gradientState:I

.field private typedArray:Landroid/content/res/TypedArray;


# direct methods
.method constructor <init>(Landroid/content/res/TypedArray;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/noober/background/drawable/GradientDrawableCreator;->gradientState:I

    .line 3
    iput-object p1, p0, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    return-void
.end method

.method constructor <init>(Landroid/content/res/TypedArray;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    .line 6
    iput p2, p0, Lcom/noober/background/drawable/GradientDrawableCreator;->gradientState:I

    return-void
.end method

.method private hasSetRadius([F)Z
    .locals 5

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5
    .line 6
    aget v3, p1, v2

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    cmpl-float v3, v3, v4

    .line 10
    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    :goto_1
    return v1
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
    invoke-virtual {p0}, Lcom/noober/background/drawable/GradientDrawableCreator;->create()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    return-object v0
.end method

.method public create()Landroid/graphics/drawable/GradientDrawable;
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 2
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/16 v0, 0x8

    .line 3
    new-array v0, v0, [F

    .line 4
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v6, 0x0

    move v7, v6

    move v10, v7

    move v13, v10

    move/from16 v17, v13

    move/from16 v18, v17

    move/from16 v19, v18

    move/from16 v20, v19

    move/from16 v21, v20

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 5
    :goto_0
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v5

    if-ge v7, v5, :cond_94

    .line 6
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v5, v7}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    .line 7
    sget v4, Lcom/noober/background/R$styleable;->background_bl_shape:I

    if-ne v5, v4, :cond_0

    .line 8
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    goto/16 :goto_c

    .line 9
    :cond_0
    sget v4, Lcom/noober/background/R$styleable;->background_bl_solid_color:I

    if-ne v5, v4, :cond_1

    .line 10
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    goto/16 :goto_c

    .line 11
    :cond_1
    sget v4, Lcom/noober/background/R$styleable;->background_bl_corners_radius:I

    if-ne v5, v4, :cond_2

    .line 12
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    goto/16 :goto_c

    :cond_2
    const/4 v6, 0x0

    .line 13
    sget v4, Lcom/noober/background/R$styleable;->background_bl_corners_bottomLeftRadius:I

    const/16 v25, 0x7

    const/16 v22, 0x6

    if-ne v5, v4, :cond_3

    .line 14
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    aput v4, v0, v22

    .line 15
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    aput v4, v0, v25

    goto/16 :goto_c

    .line 16
    :cond_3
    sget v4, Lcom/noober/background/R$styleable;->background_bl_corners_bottomRightRadius:I

    const/16 v26, 0x4

    if-ne v5, v4, :cond_4

    .line 17
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    aput v4, v0, v26

    .line 18
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    const/4 v5, 0x5

    aput v4, v0, v5

    goto/16 :goto_c

    .line 19
    :cond_4
    sget v4, Lcom/noober/background/R$styleable;->background_bl_corners_topLeftRadius:I

    if-ne v5, v4, :cond_5

    .line 20
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    const/16 v22, 0x0

    aput v4, v0, v22

    .line 21
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    const/4 v5, 0x1

    aput v4, v0, v5

    goto/16 :goto_c

    .line 22
    :cond_5
    sget v4, Lcom/noober/background/R$styleable;->background_bl_corners_topRightRadius:I

    if-ne v5, v4, :cond_6

    .line 23
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    const/16 v22, 0x2

    aput v4, v0, v22

    .line 24
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    const/4 v5, 0x3

    aput v4, v0, v5

    goto/16 :goto_c

    .line 25
    :cond_6
    sget v4, Lcom/noober/background/R$styleable;->background_bl_corners_leftRadius:I

    if-ne v5, v4, :cond_7

    .line 26
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    const/16 v23, 0x0

    aput v4, v0, v23

    .line 27
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    const/16 v23, 0x1

    aput v4, v0, v23

    .line 28
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    aput v4, v0, v22

    .line 29
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    aput v4, v0, v25

    goto/16 :goto_c

    .line 30
    :cond_7
    sget v4, Lcom/noober/background/R$styleable;->background_bl_corners_topRadius:I

    if-ne v5, v4, :cond_8

    .line 31
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    const/16 v22, 0x0

    aput v4, v0, v22

    .line 32
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    const/16 v22, 0x1

    aput v4, v0, v22

    .line 33
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    const/16 v24, 0x2

    aput v4, v0, v24

    .line 34
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    const/16 v23, 0x3

    aput v4, v0, v23

    goto/16 :goto_c

    :cond_8
    const/16 v23, 0x3

    const/16 v24, 0x2

    .line 35
    sget v4, Lcom/noober/background/R$styleable;->background_bl_corners_rightRadius:I

    if-ne v5, v4, :cond_9

    .line 36
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    aput v4, v0, v24

    .line 37
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    aput v4, v0, v23

    .line 38
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    aput v4, v0, v26

    .line 39
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    const/4 v5, 0x5

    aput v4, v0, v5

    goto/16 :goto_c

    .line 40
    :cond_9
    sget v4, Lcom/noober/background/R$styleable;->background_bl_corners_bottomRadius:I

    if-ne v5, v4, :cond_a

    .line 41
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    aput v4, v0, v26

    .line 42
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    const/16 v23, 0x5

    aput v4, v0, v23

    .line 43
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    aput v4, v0, v22

    .line 44
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    aput v4, v0, v25

    goto/16 :goto_c

    .line 45
    :cond_a
    sget v4, Lcom/noober/background/R$styleable;->background_bl_gradient_angle:I

    const/4 v6, -0x1

    if-eq v5, v4, :cond_86

    sget v4, Lcom/noober/background/R$styleable;->background_bl_checkable_gradient_angle:I

    if-eq v5, v4, :cond_86

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unCheckable_gradient_angle:I

    if-eq v5, v4, :cond_86

    sget v4, Lcom/noober/background/R$styleable;->background_bl_checked_gradient_angle:I

    if-eq v5, v4, :cond_86

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unChecked_gradient_angle:I

    if-eq v5, v4, :cond_86

    sget v4, Lcom/noober/background/R$styleable;->background_bl_enabled_gradient_angle:I

    if-eq v5, v4, :cond_86

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unEnabled_gradient_angle:I

    if-eq v5, v4, :cond_86

    sget v4, Lcom/noober/background/R$styleable;->background_bl_selected_gradient_angle:I

    if-eq v5, v4, :cond_86

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unSelected_gradient_angle:I

    if-eq v5, v4, :cond_86

    sget v4, Lcom/noober/background/R$styleable;->background_bl_pressed_gradient_angle:I

    if-eq v5, v4, :cond_86

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unPressed_gradient_angle:I

    if-eq v5, v4, :cond_86

    sget v4, Lcom/noober/background/R$styleable;->background_bl_focused_gradient_angle:I

    if-eq v5, v4, :cond_86

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unFocused_gradient_angle:I

    if-ne v5, v4, :cond_b

    goto/16 :goto_b

    .line 46
    :cond_b
    sget v4, Lcom/noober/background/R$styleable;->background_bl_gradient_centerX:I

    if-eq v5, v4, :cond_79

    sget v4, Lcom/noober/background/R$styleable;->background_bl_checkable_gradient_centerX:I

    if-eq v5, v4, :cond_79

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unCheckable_gradient_centerX:I

    if-eq v5, v4, :cond_79

    sget v4, Lcom/noober/background/R$styleable;->background_bl_checked_gradient_centerX:I

    if-eq v5, v4, :cond_79

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unChecked_gradient_centerX:I

    if-eq v5, v4, :cond_79

    sget v4, Lcom/noober/background/R$styleable;->background_bl_enabled_gradient_centerX:I

    if-eq v5, v4, :cond_79

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unEnabled_gradient_centerX:I

    if-eq v5, v4, :cond_79

    sget v4, Lcom/noober/background/R$styleable;->background_bl_selected_gradient_centerX:I

    if-eq v5, v4, :cond_79

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unSelected_gradient_centerX:I

    if-eq v5, v4, :cond_79

    sget v4, Lcom/noober/background/R$styleable;->background_bl_pressed_gradient_centerX:I

    if-eq v5, v4, :cond_79

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unPressed_gradient_centerX:I

    if-eq v5, v4, :cond_79

    sget v4, Lcom/noober/background/R$styleable;->background_bl_focused_gradient_centerX:I

    if-eq v5, v4, :cond_79

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unFocused_gradient_centerX:I

    if-ne v5, v4, :cond_c

    goto/16 :goto_a

    .line 47
    :cond_c
    sget v4, Lcom/noober/background/R$styleable;->background_bl_gradient_centerY:I

    if-eq v5, v4, :cond_6c

    sget v4, Lcom/noober/background/R$styleable;->background_bl_checkable_gradient_centerY:I

    if-eq v5, v4, :cond_6c

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unCheckable_gradient_centerY:I

    if-eq v5, v4, :cond_6c

    sget v4, Lcom/noober/background/R$styleable;->background_bl_checked_gradient_centerY:I

    if-eq v5, v4, :cond_6c

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unChecked_gradient_centerY:I

    if-eq v5, v4, :cond_6c

    sget v4, Lcom/noober/background/R$styleable;->background_bl_enabled_gradient_centerY:I

    if-eq v5, v4, :cond_6c

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unEnabled_gradient_centerY:I

    if-eq v5, v4, :cond_6c

    sget v4, Lcom/noober/background/R$styleable;->background_bl_selected_gradient_centerY:I

    if-eq v5, v4, :cond_6c

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unSelected_gradient_centerY:I

    if-eq v5, v4, :cond_6c

    sget v4, Lcom/noober/background/R$styleable;->background_bl_pressed_gradient_centerY:I

    if-eq v5, v4, :cond_6c

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unPressed_gradient_centerY:I

    if-eq v5, v4, :cond_6c

    sget v4, Lcom/noober/background/R$styleable;->background_bl_focused_gradient_centerY:I

    if-eq v5, v4, :cond_6c

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unFocused_gradient_centerY:I

    if-ne v5, v4, :cond_d

    goto/16 :goto_9

    .line 48
    :cond_d
    sget v4, Lcom/noober/background/R$styleable;->background_bl_gradient_centerColor:I

    if-eq v5, v4, :cond_5f

    sget v4, Lcom/noober/background/R$styleable;->background_bl_checkable_gradient_centerColor:I

    if-eq v5, v4, :cond_5f

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unCheckable_gradient_centerColor:I

    if-eq v5, v4, :cond_5f

    sget v4, Lcom/noober/background/R$styleable;->background_bl_checked_gradient_centerColor:I

    if-eq v5, v4, :cond_5f

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unChecked_gradient_centerColor:I

    if-eq v5, v4, :cond_5f

    sget v4, Lcom/noober/background/R$styleable;->background_bl_enabled_gradient_centerColor:I

    if-eq v5, v4, :cond_5f

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unEnabled_gradient_centerColor:I

    if-eq v5, v4, :cond_5f

    sget v4, Lcom/noober/background/R$styleable;->background_bl_selected_gradient_centerColor:I

    if-eq v5, v4, :cond_5f

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unSelected_gradient_centerColor:I

    if-eq v5, v4, :cond_5f

    sget v4, Lcom/noober/background/R$styleable;->background_bl_pressed_gradient_centerColor:I

    if-eq v5, v4, :cond_5f

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unPressed_gradient_centerColor:I

    if-eq v5, v4, :cond_5f

    sget v4, Lcom/noober/background/R$styleable;->background_bl_focused_gradient_centerColor:I

    if-eq v5, v4, :cond_5f

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unFocused_gradient_centerColor:I

    if-ne v5, v4, :cond_e

    goto/16 :goto_8

    .line 49
    :cond_e
    sget v4, Lcom/noober/background/R$styleable;->background_bl_gradient_endColor:I

    if-eq v5, v4, :cond_52

    sget v4, Lcom/noober/background/R$styleable;->background_bl_checkable_gradient_endColor:I

    if-eq v5, v4, :cond_52

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unCheckable_gradient_endColor:I

    if-eq v5, v4, :cond_52

    sget v4, Lcom/noober/background/R$styleable;->background_bl_checked_gradient_endColor:I

    if-eq v5, v4, :cond_52

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unChecked_gradient_endColor:I

    if-eq v5, v4, :cond_52

    sget v4, Lcom/noober/background/R$styleable;->background_bl_enabled_gradient_endColor:I

    if-eq v5, v4, :cond_52

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unEnabled_gradient_endColor:I

    if-eq v5, v4, :cond_52

    sget v4, Lcom/noober/background/R$styleable;->background_bl_selected_gradient_endColor:I

    if-eq v5, v4, :cond_52

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unSelected_gradient_endColor:I

    if-eq v5, v4, :cond_52

    sget v4, Lcom/noober/background/R$styleable;->background_bl_pressed_gradient_endColor:I

    if-eq v5, v4, :cond_52

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unPressed_gradient_endColor:I

    if-eq v5, v4, :cond_52

    sget v4, Lcom/noober/background/R$styleable;->background_bl_focused_gradient_endColor:I

    if-eq v5, v4, :cond_52

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unFocused_gradient_endColor:I

    if-ne v5, v4, :cond_f

    goto/16 :goto_7

    .line 50
    :cond_f
    sget v4, Lcom/noober/background/R$styleable;->background_bl_gradient_startColor:I

    if-eq v5, v4, :cond_45

    sget v4, Lcom/noober/background/R$styleable;->background_bl_checkable_gradient_startColor:I

    if-eq v5, v4, :cond_45

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unCheckable_gradient_startColor:I

    if-eq v5, v4, :cond_45

    sget v4, Lcom/noober/background/R$styleable;->background_bl_checked_gradient_startColor:I

    if-eq v5, v4, :cond_45

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unChecked_gradient_startColor:I

    if-eq v5, v4, :cond_45

    sget v4, Lcom/noober/background/R$styleable;->background_bl_enabled_gradient_startColor:I

    if-eq v5, v4, :cond_45

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unEnabled_gradient_startColor:I

    if-eq v5, v4, :cond_45

    sget v4, Lcom/noober/background/R$styleable;->background_bl_selected_gradient_startColor:I

    if-eq v5, v4, :cond_45

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unSelected_gradient_startColor:I

    if-eq v5, v4, :cond_45

    sget v4, Lcom/noober/background/R$styleable;->background_bl_pressed_gradient_startColor:I

    if-eq v5, v4, :cond_45

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unPressed_gradient_startColor:I

    if-eq v5, v4, :cond_45

    sget v4, Lcom/noober/background/R$styleable;->background_bl_focused_gradient_startColor:I

    if-eq v5, v4, :cond_45

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unFocused_gradient_startColor:I

    if-ne v5, v4, :cond_10

    goto/16 :goto_6

    .line 51
    :cond_10
    sget v4, Lcom/noober/background/R$styleable;->background_bl_gradient_gradientRadius:I

    if-eq v5, v4, :cond_38

    sget v4, Lcom/noober/background/R$styleable;->background_bl_checkable_gradient_gradientRadius:I

    if-eq v5, v4, :cond_38

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unCheckable_gradient_gradientRadius:I

    if-eq v5, v4, :cond_38

    sget v4, Lcom/noober/background/R$styleable;->background_bl_checked_gradient_gradientRadius:I

    if-eq v5, v4, :cond_38

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unChecked_gradient_gradientRadius:I

    if-eq v5, v4, :cond_38

    sget v4, Lcom/noober/background/R$styleable;->background_bl_enabled_gradient_gradientRadius:I

    if-eq v5, v4, :cond_38

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unEnabled_gradient_gradientRadius:I

    if-eq v5, v4, :cond_38

    sget v4, Lcom/noober/background/R$styleable;->background_bl_selected_gradient_gradientRadius:I

    if-eq v5, v4, :cond_38

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unSelected_gradient_gradientRadius:I

    if-eq v5, v4, :cond_38

    sget v4, Lcom/noober/background/R$styleable;->background_bl_pressed_gradient_gradientRadius:I

    if-eq v5, v4, :cond_38

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unPressed_gradient_gradientRadius:I

    if-eq v5, v4, :cond_38

    sget v4, Lcom/noober/background/R$styleable;->background_bl_focused_gradient_gradientRadius:I

    if-eq v5, v4, :cond_38

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unFocused_gradient_gradientRadius:I

    if-ne v5, v4, :cond_11

    goto/16 :goto_5

    .line 52
    :cond_11
    sget v4, Lcom/noober/background/R$styleable;->background_bl_gradient_type:I

    if-eq v5, v4, :cond_2a

    sget v4, Lcom/noober/background/R$styleable;->background_bl_checkable_gradient_type:I

    if-eq v5, v4, :cond_2a

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unCheckable_gradient_type:I

    if-eq v5, v4, :cond_2a

    sget v4, Lcom/noober/background/R$styleable;->background_bl_checked_gradient_type:I

    if-eq v5, v4, :cond_2a

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unChecked_gradient_type:I

    if-eq v5, v4, :cond_2a

    sget v4, Lcom/noober/background/R$styleable;->background_bl_enabled_gradient_type:I

    if-eq v5, v4, :cond_2a

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unEnabled_gradient_type:I

    if-eq v5, v4, :cond_2a

    sget v4, Lcom/noober/background/R$styleable;->background_bl_selected_gradient_type:I

    if-eq v5, v4, :cond_2a

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unSelected_gradient_type:I

    if-eq v5, v4, :cond_2a

    sget v4, Lcom/noober/background/R$styleable;->background_bl_pressed_gradient_type:I

    if-eq v5, v4, :cond_2a

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unPressed_gradient_type:I

    if-eq v5, v4, :cond_2a

    sget v4, Lcom/noober/background/R$styleable;->background_bl_focused_gradient_type:I

    if-eq v5, v4, :cond_2a

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unFocused_gradient_type:I

    if-ne v5, v4, :cond_12

    goto/16 :goto_2

    .line 53
    :cond_12
    sget v4, Lcom/noober/background/R$styleable;->background_bl_gradient_useLevel:I

    if-eq v5, v4, :cond_1d

    sget v4, Lcom/noober/background/R$styleable;->background_bl_checkable_gradient_useLevel:I

    if-eq v5, v4, :cond_1d

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unCheckable_gradient_useLevel:I

    if-eq v5, v4, :cond_1d

    sget v4, Lcom/noober/background/R$styleable;->background_bl_checked_gradient_useLevel:I

    if-eq v5, v4, :cond_1d

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unChecked_gradient_useLevel:I

    if-eq v5, v4, :cond_1d

    sget v4, Lcom/noober/background/R$styleable;->background_bl_enabled_gradient_useLevel:I

    if-eq v5, v4, :cond_1d

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unEnabled_gradient_useLevel:I

    if-eq v5, v4, :cond_1d

    sget v4, Lcom/noober/background/R$styleable;->background_bl_selected_gradient_useLevel:I

    if-eq v5, v4, :cond_1d

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unSelected_gradient_useLevel:I

    if-eq v5, v4, :cond_1d

    sget v4, Lcom/noober/background/R$styleable;->background_bl_pressed_gradient_useLevel:I

    if-eq v5, v4, :cond_1d

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unPressed_gradient_useLevel:I

    if-eq v5, v4, :cond_1d

    sget v4, Lcom/noober/background/R$styleable;->background_bl_focused_gradient_useLevel:I

    if-eq v5, v4, :cond_1d

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unFocused_gradient_useLevel:I

    if-ne v5, v4, :cond_13

    goto/16 :goto_1

    .line 54
    :cond_13
    sget v4, Lcom/noober/background/R$styleable;->background_bl_padding_left:I

    if-ne v5, v4, :cond_14

    .line 55
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    goto/16 :goto_c

    :cond_14
    const/4 v6, 0x0

    .line 56
    sget v4, Lcom/noober/background/R$styleable;->background_bl_padding_top:I

    if-ne v5, v4, :cond_15

    .line 57
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    goto/16 :goto_c

    .line 58
    :cond_15
    sget v4, Lcom/noober/background/R$styleable;->background_bl_padding_right:I

    if-ne v5, v4, :cond_16

    .line 59
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    goto/16 :goto_c

    .line 60
    :cond_16
    sget v4, Lcom/noober/background/R$styleable;->background_bl_padding_bottom:I

    if-ne v5, v4, :cond_17

    .line 61
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_c

    .line 62
    :cond_17
    sget v4, Lcom/noober/background/R$styleable;->background_bl_size_width:I

    if-ne v5, v4, :cond_18

    .line 63
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    goto/16 :goto_c

    .line 64
    :cond_18
    sget v4, Lcom/noober/background/R$styleable;->background_bl_size_height:I

    if-ne v5, v4, :cond_19

    .line 65
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v9

    goto/16 :goto_c

    .line 66
    :cond_19
    sget v4, Lcom/noober/background/R$styleable;->background_bl_stroke_width:I

    if-ne v5, v4, :cond_1a

    .line 67
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v11

    goto/16 :goto_c

    .line 68
    :cond_1a
    sget v4, Lcom/noober/background/R$styleable;->background_bl_stroke_color:I

    if-ne v5, v4, :cond_1b

    .line 69
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v13, 0x0

    invoke-virtual {v4, v5, v13}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    move v13, v4

    goto/16 :goto_c

    .line 70
    :cond_1b
    sget v4, Lcom/noober/background/R$styleable;->background_bl_stroke_dashWidth:I

    if-ne v5, v4, :cond_1c

    .line 71
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v12

    goto/16 :goto_c

    .line 72
    :cond_1c
    sget v4, Lcom/noober/background/R$styleable;->background_bl_stroke_dashGap:I

    if-ne v5, v4, :cond_93

    .line 73
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v14

    goto/16 :goto_c

    .line 74
    :cond_1d
    :goto_1
    iget v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->gradientState:I

    if-ne v4, v6, :cond_1e

    .line 75
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setUseLevel(Z)V

    goto/16 :goto_c

    :cond_1e
    const v6, 0x101009f

    if-ne v4, v6, :cond_1f

    .line 76
    sget v6, Lcom/noober/background/R$styleable;->background_bl_checkable_gradient_useLevel:I

    if-ne v5, v6, :cond_1f

    .line 77
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setUseLevel(Z)V

    goto/16 :goto_c

    :cond_1f
    const v6, -0x101009f

    if-ne v4, v6, :cond_20

    .line 78
    sget v6, Lcom/noober/background/R$styleable;->background_bl_unCheckable_gradient_useLevel:I

    if-ne v5, v6, :cond_20

    .line 79
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setUseLevel(Z)V

    goto/16 :goto_c

    :cond_20
    const v6, 0x10100a0

    if-ne v4, v6, :cond_21

    .line 80
    sget v6, Lcom/noober/background/R$styleable;->background_bl_checked_gradient_useLevel:I

    if-ne v5, v6, :cond_21

    .line 81
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setUseLevel(Z)V

    goto/16 :goto_c

    :cond_21
    const v6, -0x10100a0

    if-ne v4, v6, :cond_22

    .line 82
    sget v6, Lcom/noober/background/R$styleable;->background_bl_unChecked_gradient_useLevel:I

    if-ne v5, v6, :cond_22

    .line 83
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setUseLevel(Z)V

    goto/16 :goto_c

    :cond_22
    const v6, 0x101009e

    if-ne v4, v6, :cond_23

    .line 84
    sget v6, Lcom/noober/background/R$styleable;->background_bl_enabled_gradient_useLevel:I

    if-ne v5, v6, :cond_23

    .line 85
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setUseLevel(Z)V

    goto/16 :goto_c

    :cond_23
    const v6, -0x101009e

    if-ne v4, v6, :cond_24

    .line 86
    sget v6, Lcom/noober/background/R$styleable;->background_bl_unEnabled_gradient_useLevel:I

    if-ne v5, v6, :cond_24

    .line 87
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setUseLevel(Z)V

    goto/16 :goto_c

    :cond_24
    const v6, 0x10100a1

    if-ne v4, v6, :cond_25

    .line 88
    sget v6, Lcom/noober/background/R$styleable;->background_bl_selected_gradient_useLevel:I

    if-ne v5, v6, :cond_25

    .line 89
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setUseLevel(Z)V

    goto/16 :goto_c

    :cond_25
    const v6, -0x10100a1

    if-ne v4, v6, :cond_26

    .line 90
    sget v6, Lcom/noober/background/R$styleable;->background_bl_unSelected_gradient_useLevel:I

    if-ne v5, v6, :cond_26

    .line 91
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setUseLevel(Z)V

    goto/16 :goto_c

    :cond_26
    const v6, 0x10100a7

    if-ne v4, v6, :cond_27

    .line 92
    sget v6, Lcom/noober/background/R$styleable;->background_bl_pressed_gradient_useLevel:I

    if-ne v5, v6, :cond_27

    .line 93
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setUseLevel(Z)V

    goto/16 :goto_c

    :cond_27
    const v6, -0x10100a7

    if-ne v4, v6, :cond_28

    .line 94
    sget v6, Lcom/noober/background/R$styleable;->background_bl_unPressed_gradient_useLevel:I

    if-ne v5, v6, :cond_28

    .line 95
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setUseLevel(Z)V

    goto/16 :goto_c

    :cond_28
    const v6, 0x101009c

    if-ne v4, v6, :cond_29

    .line 96
    sget v6, Lcom/noober/background/R$styleable;->background_bl_focused_gradient_useLevel:I

    if-ne v5, v6, :cond_29

    .line 97
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setUseLevel(Z)V

    goto/16 :goto_c

    :cond_29
    const v6, -0x101009c

    if-ne v4, v6, :cond_93

    .line 98
    sget v4, Lcom/noober/background/R$styleable;->background_bl_unFocused_gradient_useLevel:I

    if-ne v5, v4, :cond_93

    .line 99
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setUseLevel(Z)V

    goto/16 :goto_c

    .line 100
    :cond_2a
    :goto_2
    iget v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->gradientState:I

    if-ne v4, v6, :cond_2c

    .line 101
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v20

    :cond_2b
    :goto_3
    move/from16 v4, v20

    goto/16 :goto_4

    :cond_2c
    const v6, 0x101009f

    if-ne v4, v6, :cond_2d

    .line 102
    sget v6, Lcom/noober/background/R$styleable;->background_bl_checkable_gradient_type:I

    if-ne v5, v6, :cond_2d

    .line 103
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v20

    goto :goto_3

    :cond_2d
    const v6, -0x101009f

    if-ne v4, v6, :cond_2e

    .line 104
    sget v6, Lcom/noober/background/R$styleable;->background_bl_unCheckable_gradient_type:I

    if-ne v5, v6, :cond_2e

    .line 105
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v20

    goto :goto_3

    :cond_2e
    const v6, 0x10100a0

    if-ne v4, v6, :cond_2f

    .line 106
    sget v6, Lcom/noober/background/R$styleable;->background_bl_checked_gradient_type:I

    if-ne v5, v6, :cond_2f

    .line 107
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v20

    goto :goto_3

    :cond_2f
    const v6, -0x10100a0

    if-ne v4, v6, :cond_30

    .line 108
    sget v6, Lcom/noober/background/R$styleable;->background_bl_unChecked_gradient_type:I

    if-ne v5, v6, :cond_30

    .line 109
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v20

    goto :goto_3

    :cond_30
    const v6, 0x101009e

    if-ne v4, v6, :cond_31

    .line 110
    sget v6, Lcom/noober/background/R$styleable;->background_bl_enabled_gradient_type:I

    if-ne v5, v6, :cond_31

    .line 111
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v20

    goto :goto_3

    :cond_31
    const v6, -0x101009e

    if-ne v4, v6, :cond_32

    .line 112
    sget v6, Lcom/noober/background/R$styleable;->background_bl_unEnabled_gradient_type:I

    if-ne v5, v6, :cond_32

    .line 113
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v20

    goto :goto_3

    :cond_32
    const v6, 0x10100a1

    if-ne v4, v6, :cond_33

    .line 114
    sget v6, Lcom/noober/background/R$styleable;->background_bl_selected_gradient_type:I

    if-ne v5, v6, :cond_33

    .line 115
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v20

    goto :goto_3

    :cond_33
    const v6, -0x10100a1

    if-ne v4, v6, :cond_34

    .line 116
    sget v6, Lcom/noober/background/R$styleable;->background_bl_unSelected_gradient_type:I

    if-ne v5, v6, :cond_34

    .line 117
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v20

    goto/16 :goto_3

    :cond_34
    const v6, 0x10100a7

    if-ne v4, v6, :cond_35

    .line 118
    sget v6, Lcom/noober/background/R$styleable;->background_bl_pressed_gradient_type:I

    if-ne v5, v6, :cond_35

    .line 119
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v20

    goto/16 :goto_3

    :cond_35
    const v6, -0x10100a7

    if-ne v4, v6, :cond_36

    .line 120
    sget v6, Lcom/noober/background/R$styleable;->background_bl_unPressed_gradient_type:I

    if-ne v5, v6, :cond_36

    .line 121
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v20

    goto/16 :goto_3

    :cond_36
    const v6, 0x101009c

    if-ne v4, v6, :cond_37

    .line 122
    sget v6, Lcom/noober/background/R$styleable;->background_bl_focused_gradient_type:I

    if-ne v5, v6, :cond_37

    .line 123
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v20

    goto/16 :goto_3

    :cond_37
    const v6, -0x101009c

    if-ne v4, v6, :cond_2b

    .line 124
    sget v4, Lcom/noober/background/R$styleable;->background_bl_unFocused_gradient_type:I

    if-ne v5, v4, :cond_2b

    .line 125
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v20

    goto/16 :goto_3

    .line 126
    :goto_4
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    move/from16 v20, v4

    goto/16 :goto_c

    .line 127
    :cond_38
    :goto_5
    iget v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->gradientState:I

    if-ne v4, v6, :cond_39

    .line 128
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    goto/16 :goto_c

    :cond_39
    const v6, 0x101009f

    if-ne v4, v6, :cond_3a

    .line 129
    sget v6, Lcom/noober/background/R$styleable;->background_bl_checkable_gradient_gradientRadius:I

    if-ne v5, v6, :cond_3a

    .line 130
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    goto/16 :goto_c

    :cond_3a
    const v6, -0x101009f

    if-ne v4, v6, :cond_3b

    .line 131
    sget v6, Lcom/noober/background/R$styleable;->background_bl_unCheckable_gradient_gradientRadius:I

    if-ne v5, v6, :cond_3b

    .line 132
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    goto/16 :goto_c

    :cond_3b
    const v6, 0x10100a0

    if-ne v4, v6, :cond_3c

    .line 133
    sget v6, Lcom/noober/background/R$styleable;->background_bl_checked_gradient_gradientRadius:I

    if-ne v5, v6, :cond_3c

    .line 134
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    goto/16 :goto_c

    :cond_3c
    const v6, -0x10100a0

    if-ne v4, v6, :cond_3d

    .line 135
    sget v6, Lcom/noober/background/R$styleable;->background_bl_unChecked_gradient_gradientRadius:I

    if-ne v5, v6, :cond_3d

    .line 136
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    goto/16 :goto_c

    :cond_3d
    const v6, 0x101009e

    if-ne v4, v6, :cond_3e

    .line 137
    sget v6, Lcom/noober/background/R$styleable;->background_bl_enabled_gradient_gradientRadius:I

    if-ne v5, v6, :cond_3e

    .line 138
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    goto/16 :goto_c

    :cond_3e
    const v6, -0x101009e

    if-ne v4, v6, :cond_3f

    .line 139
    sget v6, Lcom/noober/background/R$styleable;->background_bl_unEnabled_gradient_gradientRadius:I

    if-ne v5, v6, :cond_3f

    .line 140
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    goto/16 :goto_c

    :cond_3f
    const v6, 0x10100a1

    if-ne v4, v6, :cond_40

    .line 141
    sget v6, Lcom/noober/background/R$styleable;->background_bl_selected_gradient_gradientRadius:I

    if-ne v5, v6, :cond_40

    .line 142
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    goto/16 :goto_c

    :cond_40
    const v6, -0x10100a1

    if-ne v4, v6, :cond_41

    .line 143
    sget v6, Lcom/noober/background/R$styleable;->background_bl_unSelected_gradient_gradientRadius:I

    if-ne v5, v6, :cond_41

    .line 144
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    goto/16 :goto_c

    :cond_41
    const v6, 0x10100a7

    if-ne v4, v6, :cond_42

    .line 145
    sget v6, Lcom/noober/background/R$styleable;->background_bl_pressed_gradient_gradientRadius:I

    if-ne v5, v6, :cond_42

    .line 146
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    goto/16 :goto_c

    :cond_42
    const v6, -0x10100a7

    if-ne v4, v6, :cond_43

    .line 147
    sget v6, Lcom/noober/background/R$styleable;->background_bl_unPressed_gradient_gradientRadius:I

    if-ne v5, v6, :cond_43

    .line 148
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    goto/16 :goto_c

    :cond_43
    const v6, 0x101009c

    if-ne v4, v6, :cond_44

    .line 149
    sget v6, Lcom/noober/background/R$styleable;->background_bl_focused_gradient_gradientRadius:I

    if-ne v5, v6, :cond_44

    .line 150
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    goto/16 :goto_c

    :cond_44
    const v6, -0x101009c

    if-ne v4, v6, :cond_93

    .line 151
    sget v4, Lcom/noober/background/R$styleable;->background_bl_unFocused_gradient_gradientRadius:I

    if-ne v5, v4, :cond_93

    .line 152
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    goto/16 :goto_c

    .line 153
    :cond_45
    :goto_6
    iget v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->gradientState:I

    if-ne v4, v6, :cond_46

    .line 154
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    goto/16 :goto_c

    :cond_46
    const v6, 0x101009f

    if-ne v4, v6, :cond_47

    .line 155
    sget v6, Lcom/noober/background/R$styleable;->background_bl_checkable_gradient_startColor:I

    if-ne v5, v6, :cond_47

    .line 156
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    goto/16 :goto_c

    :cond_47
    const v6, -0x101009f

    if-ne v4, v6, :cond_48

    .line 157
    sget v6, Lcom/noober/background/R$styleable;->background_bl_unCheckable_gradient_startColor:I

    if-ne v5, v6, :cond_48

    .line 158
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    goto/16 :goto_c

    :cond_48
    const v6, 0x10100a0

    if-ne v4, v6, :cond_49

    .line 159
    sget v6, Lcom/noober/background/R$styleable;->background_bl_checked_gradient_startColor:I

    if-ne v5, v6, :cond_49

    .line 160
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    goto/16 :goto_c

    :cond_49
    const v6, -0x10100a0

    if-ne v4, v6, :cond_4a

    .line 161
    sget v6, Lcom/noober/background/R$styleable;->background_bl_unChecked_gradient_startColor:I

    if-ne v5, v6, :cond_4a

    .line 162
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    goto/16 :goto_c

    :cond_4a
    const v6, 0x101009e

    if-ne v4, v6, :cond_4b

    .line 163
    sget v6, Lcom/noober/background/R$styleable;->background_bl_enabled_gradient_startColor:I

    if-ne v5, v6, :cond_4b

    .line 164
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    goto/16 :goto_c

    :cond_4b
    const v6, -0x101009e

    if-ne v4, v6, :cond_4c

    .line 165
    sget v6, Lcom/noober/background/R$styleable;->background_bl_unEnabled_gradient_startColor:I

    if-ne v5, v6, :cond_4c

    .line 166
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    goto/16 :goto_c

    :cond_4c
    const v6, 0x10100a1

    if-ne v4, v6, :cond_4d

    .line 167
    sget v6, Lcom/noober/background/R$styleable;->background_bl_selected_gradient_startColor:I

    if-ne v5, v6, :cond_4d

    .line 168
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    goto/16 :goto_c

    :cond_4d
    const v6, -0x10100a1

    if-ne v4, v6, :cond_4e

    .line 169
    sget v6, Lcom/noober/background/R$styleable;->background_bl_unSelected_gradient_startColor:I

    if-ne v5, v6, :cond_4e

    .line 170
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    goto/16 :goto_c

    :cond_4e
    const v6, 0x10100a7

    if-ne v4, v6, :cond_4f

    .line 171
    sget v6, Lcom/noober/background/R$styleable;->background_bl_pressed_gradient_startColor:I

    if-ne v5, v6, :cond_4f

    .line 172
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    goto/16 :goto_c

    :cond_4f
    const v6, -0x10100a7

    if-ne v4, v6, :cond_50

    .line 173
    sget v6, Lcom/noober/background/R$styleable;->background_bl_unPressed_gradient_startColor:I

    if-ne v5, v6, :cond_50

    .line 174
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    goto/16 :goto_c

    :cond_50
    const v6, 0x101009c

    if-ne v4, v6, :cond_51

    .line 175
    sget v6, Lcom/noober/background/R$styleable;->background_bl_focused_gradient_startColor:I

    if-ne v5, v6, :cond_51

    .line 176
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    goto/16 :goto_c

    :cond_51
    const v6, -0x101009c

    if-ne v4, v6, :cond_93

    .line 177
    sget v4, Lcom/noober/background/R$styleable;->background_bl_unFocused_gradient_startColor:I

    if-ne v5, v4, :cond_93

    .line 178
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    goto/16 :goto_c

    .line 179
    :cond_52
    :goto_7
    iget v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->gradientState:I

    if-ne v4, v6, :cond_53

    .line 180
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v19

    goto/16 :goto_c

    :cond_53
    const v6, 0x101009f

    if-ne v4, v6, :cond_54

    .line 181
    sget v6, Lcom/noober/background/R$styleable;->background_bl_checkable_gradient_endColor:I

    if-ne v5, v6, :cond_54

    .line 182
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v19

    goto/16 :goto_c

    :cond_54
    const v6, -0x101009f

    if-ne v4, v6, :cond_55

    .line 183
    sget v6, Lcom/noober/background/R$styleable;->background_bl_unCheckable_gradient_endColor:I

    if-ne v5, v6, :cond_55

    .line 184
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v19

    goto/16 :goto_c

    :cond_55
    const v6, 0x10100a0

    if-ne v4, v6, :cond_56

    .line 185
    sget v6, Lcom/noober/background/R$styleable;->background_bl_checked_gradient_endColor:I

    if-ne v5, v6, :cond_56

    .line 186
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v19

    goto/16 :goto_c

    :cond_56
    const v6, -0x10100a0

    if-ne v4, v6, :cond_57

    .line 187
    sget v6, Lcom/noober/background/R$styleable;->background_bl_unChecked_gradient_endColor:I

    if-ne v5, v6, :cond_57

    .line 188
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v19

    goto/16 :goto_c

    :cond_57
    const v6, 0x101009e

    if-ne v4, v6, :cond_58

    .line 189
    sget v6, Lcom/noober/background/R$styleable;->background_bl_enabled_gradient_endColor:I

    if-ne v5, v6, :cond_58

    .line 190
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v19

    goto/16 :goto_c

    :cond_58
    const v6, -0x101009e

    if-ne v4, v6, :cond_59

    .line 191
    sget v6, Lcom/noober/background/R$styleable;->background_bl_unEnabled_gradient_endColor:I

    if-ne v5, v6, :cond_59

    .line 192
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v19

    goto/16 :goto_c

    :cond_59
    const v6, 0x10100a1

    if-ne v4, v6, :cond_5a

    .line 193
    sget v6, Lcom/noober/background/R$styleable;->background_bl_selected_gradient_endColor:I

    if-ne v5, v6, :cond_5a

    .line 194
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v19

    goto/16 :goto_c

    :cond_5a
    const v6, -0x10100a1

    if-ne v4, v6, :cond_5b

    .line 195
    sget v6, Lcom/noober/background/R$styleable;->background_bl_unSelected_gradient_endColor:I

    if-ne v5, v6, :cond_5b

    .line 196
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v19

    goto/16 :goto_c

    :cond_5b
    const v6, 0x10100a7

    if-ne v4, v6, :cond_5c

    .line 197
    sget v6, Lcom/noober/background/R$styleable;->background_bl_pressed_gradient_endColor:I

    if-ne v5, v6, :cond_5c

    .line 198
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v19

    goto/16 :goto_c

    :cond_5c
    const v6, -0x10100a7

    if-ne v4, v6, :cond_5d

    .line 199
    sget v6, Lcom/noober/background/R$styleable;->background_bl_unPressed_gradient_endColor:I

    if-ne v5, v6, :cond_5d

    .line 200
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v19

    goto/16 :goto_c

    :cond_5d
    const v6, 0x101009c

    if-ne v4, v6, :cond_5e

    .line 201
    sget v6, Lcom/noober/background/R$styleable;->background_bl_focused_gradient_endColor:I

    if-ne v5, v6, :cond_5e

    .line 202
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v19

    goto/16 :goto_c

    :cond_5e
    const v6, -0x101009c

    if-ne v4, v6, :cond_93

    .line 203
    sget v4, Lcom/noober/background/R$styleable;->background_bl_unFocused_gradient_endColor:I

    if-ne v5, v4, :cond_93

    .line 204
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v19

    goto/16 :goto_c

    .line 205
    :cond_5f
    :goto_8
    iget v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->gradientState:I

    if-ne v4, v6, :cond_60

    .line 206
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v17

    goto/16 :goto_c

    :cond_60
    const v6, 0x101009f

    if-ne v4, v6, :cond_61

    .line 207
    sget v6, Lcom/noober/background/R$styleable;->background_bl_checkable_gradient_centerColor:I

    if-ne v5, v6, :cond_61

    .line 208
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v17

    goto/16 :goto_c

    :cond_61
    const v6, -0x101009f

    if-ne v4, v6, :cond_62

    .line 209
    sget v6, Lcom/noober/background/R$styleable;->background_bl_unCheckable_gradient_centerColor:I

    if-ne v5, v6, :cond_62

    .line 210
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v17

    goto/16 :goto_c

    :cond_62
    const v6, 0x10100a0

    if-ne v4, v6, :cond_63

    .line 211
    sget v6, Lcom/noober/background/R$styleable;->background_bl_checked_gradient_centerColor:I

    if-ne v5, v6, :cond_63

    .line 212
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v17

    goto/16 :goto_c

    :cond_63
    const v6, -0x10100a0

    if-ne v4, v6, :cond_64

    .line 213
    sget v6, Lcom/noober/background/R$styleable;->background_bl_unChecked_gradient_centerColor:I

    if-ne v5, v6, :cond_64

    .line 214
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v17

    goto/16 :goto_c

    :cond_64
    const v6, 0x101009e

    if-ne v4, v6, :cond_65

    .line 215
    sget v6, Lcom/noober/background/R$styleable;->background_bl_enabled_gradient_centerColor:I

    if-ne v5, v6, :cond_65

    .line 216
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v17

    goto/16 :goto_c

    :cond_65
    const v6, -0x101009e

    if-ne v4, v6, :cond_66

    .line 217
    sget v6, Lcom/noober/background/R$styleable;->background_bl_unEnabled_gradient_centerColor:I

    if-ne v5, v6, :cond_66

    .line 218
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v17

    goto/16 :goto_c

    :cond_66
    const v6, 0x10100a1

    if-ne v4, v6, :cond_67

    .line 219
    sget v6, Lcom/noober/background/R$styleable;->background_bl_selected_gradient_centerColor:I

    if-ne v5, v6, :cond_67

    .line 220
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v17

    goto/16 :goto_c

    :cond_67
    const v6, -0x10100a1

    if-ne v4, v6, :cond_68

    .line 221
    sget v6, Lcom/noober/background/R$styleable;->background_bl_unSelected_gradient_centerColor:I

    if-ne v5, v6, :cond_68

    .line 222
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v17

    goto/16 :goto_c

    :cond_68
    const v6, 0x10100a7

    if-ne v4, v6, :cond_69

    .line 223
    sget v6, Lcom/noober/background/R$styleable;->background_bl_pressed_gradient_centerColor:I

    if-ne v5, v6, :cond_69

    .line 224
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v17

    goto/16 :goto_c

    :cond_69
    const v6, -0x10100a7

    if-ne v4, v6, :cond_6a

    .line 225
    sget v6, Lcom/noober/background/R$styleable;->background_bl_unPressed_gradient_centerColor:I

    if-ne v5, v6, :cond_6a

    .line 226
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v17

    goto/16 :goto_c

    :cond_6a
    const v6, 0x101009c

    if-ne v4, v6, :cond_6b

    .line 227
    sget v6, Lcom/noober/background/R$styleable;->background_bl_focused_gradient_centerColor:I

    if-ne v5, v6, :cond_6b

    .line 228
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v17

    goto/16 :goto_c

    :cond_6b
    const v6, -0x101009c

    if-ne v4, v6, :cond_93

    .line 229
    sget v4, Lcom/noober/background/R$styleable;->background_bl_unFocused_gradient_centerColor:I

    if-ne v5, v4, :cond_93

    .line 230
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v17

    goto/16 :goto_c

    .line 231
    :cond_6c
    :goto_9
    iget v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->gradientState:I

    if-ne v4, v6, :cond_6d

    .line 232
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v16

    goto/16 :goto_c

    :cond_6d
    const v6, 0x101009f

    if-ne v4, v6, :cond_6e

    .line 233
    sget v6, Lcom/noober/background/R$styleable;->background_bl_checkable_gradient_centerY:I

    if-ne v5, v6, :cond_6e

    .line 234
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v16

    goto/16 :goto_c

    :cond_6e
    const v6, -0x101009f

    if-ne v4, v6, :cond_6f

    .line 235
    sget v6, Lcom/noober/background/R$styleable;->background_bl_unCheckable_gradient_centerY:I

    if-ne v5, v6, :cond_6f

    .line 236
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v16

    goto/16 :goto_c

    :cond_6f
    const v6, 0x10100a0

    if-ne v4, v6, :cond_70

    .line 237
    sget v6, Lcom/noober/background/R$styleable;->background_bl_checked_gradient_centerY:I

    if-ne v5, v6, :cond_70

    .line 238
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v16

    goto/16 :goto_c

    :cond_70
    const v6, -0x10100a0

    if-ne v4, v6, :cond_71

    .line 239
    sget v6, Lcom/noober/background/R$styleable;->background_bl_unChecked_gradient_centerY:I

    if-ne v5, v6, :cond_71

    .line 240
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v16

    goto/16 :goto_c

    :cond_71
    const v6, 0x101009e

    if-ne v4, v6, :cond_72

    .line 241
    sget v6, Lcom/noober/background/R$styleable;->background_bl_enabled_gradient_centerY:I

    if-ne v5, v6, :cond_72

    .line 242
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v16

    goto/16 :goto_c

    :cond_72
    const v6, -0x101009e

    if-ne v4, v6, :cond_73

    .line 243
    sget v6, Lcom/noober/background/R$styleable;->background_bl_unEnabled_gradient_centerY:I

    if-ne v5, v6, :cond_73

    .line 244
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v16

    goto/16 :goto_c

    :cond_73
    const v6, 0x10100a1

    if-ne v4, v6, :cond_74

    .line 245
    sget v6, Lcom/noober/background/R$styleable;->background_bl_selected_gradient_centerY:I

    if-ne v5, v6, :cond_74

    .line 246
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v16

    goto/16 :goto_c

    :cond_74
    const v6, -0x10100a1

    if-ne v4, v6, :cond_75

    .line 247
    sget v6, Lcom/noober/background/R$styleable;->background_bl_unSelected_gradient_centerY:I

    if-ne v5, v6, :cond_75

    .line 248
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v16

    goto/16 :goto_c

    :cond_75
    const v6, 0x10100a7

    if-ne v4, v6, :cond_76

    .line 249
    sget v6, Lcom/noober/background/R$styleable;->background_bl_pressed_gradient_centerY:I

    if-ne v5, v6, :cond_76

    .line 250
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v16

    goto/16 :goto_c

    :cond_76
    const v6, -0x10100a7

    if-ne v4, v6, :cond_77

    .line 251
    sget v6, Lcom/noober/background/R$styleable;->background_bl_unPressed_gradient_centerY:I

    if-ne v5, v6, :cond_77

    .line 252
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v16

    goto/16 :goto_c

    :cond_77
    const v6, 0x101009c

    if-ne v4, v6, :cond_78

    .line 253
    sget v6, Lcom/noober/background/R$styleable;->background_bl_focused_gradient_centerY:I

    if-ne v5, v6, :cond_78

    .line 254
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v16

    goto/16 :goto_c

    :cond_78
    const v6, -0x101009c

    if-ne v4, v6, :cond_93

    .line 255
    sget v4, Lcom/noober/background/R$styleable;->background_bl_unFocused_gradient_centerY:I

    if-ne v5, v4, :cond_93

    .line 256
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v16

    goto/16 :goto_c

    .line 257
    :cond_79
    :goto_a
    iget v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->gradientState:I

    if-ne v4, v6, :cond_7a

    .line 258
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    goto/16 :goto_c

    :cond_7a
    const v6, 0x101009f

    if-ne v4, v6, :cond_7b

    .line 259
    sget v6, Lcom/noober/background/R$styleable;->background_bl_checkable_gradient_centerX:I

    if-ne v5, v6, :cond_7b

    .line 260
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    goto/16 :goto_c

    :cond_7b
    const v6, -0x101009f

    if-ne v4, v6, :cond_7c

    .line 261
    sget v6, Lcom/noober/background/R$styleable;->background_bl_unCheckable_gradient_centerX:I

    if-ne v5, v6, :cond_7c

    .line 262
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    goto/16 :goto_c

    :cond_7c
    const v6, 0x10100a0

    if-ne v4, v6, :cond_7d

    .line 263
    sget v6, Lcom/noober/background/R$styleable;->background_bl_checked_gradient_centerX:I

    if-ne v5, v6, :cond_7d

    .line 264
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    goto/16 :goto_c

    :cond_7d
    const v6, -0x10100a0

    if-ne v4, v6, :cond_7e

    .line 265
    sget v6, Lcom/noober/background/R$styleable;->background_bl_unChecked_gradient_centerX:I

    if-ne v5, v6, :cond_7e

    .line 266
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    goto/16 :goto_c

    :cond_7e
    const v6, 0x101009e

    if-ne v4, v6, :cond_7f

    .line 267
    sget v6, Lcom/noober/background/R$styleable;->background_bl_enabled_gradient_centerX:I

    if-ne v5, v6, :cond_7f

    .line 268
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    goto/16 :goto_c

    :cond_7f
    const v6, -0x101009e

    if-ne v4, v6, :cond_80

    .line 269
    sget v6, Lcom/noober/background/R$styleable;->background_bl_unEnabled_gradient_centerX:I

    if-ne v5, v6, :cond_80

    .line 270
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    goto/16 :goto_c

    :cond_80
    const v6, 0x10100a1

    if-ne v4, v6, :cond_81

    .line 271
    sget v6, Lcom/noober/background/R$styleable;->background_bl_selected_gradient_centerX:I

    if-ne v5, v6, :cond_81

    .line 272
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    goto/16 :goto_c

    :cond_81
    const v6, -0x10100a1

    if-ne v4, v6, :cond_82

    .line 273
    sget v6, Lcom/noober/background/R$styleable;->background_bl_unSelected_gradient_centerX:I

    if-ne v5, v6, :cond_82

    .line 274
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    goto/16 :goto_c

    :cond_82
    const v6, 0x10100a7

    if-ne v4, v6, :cond_83

    .line 275
    sget v6, Lcom/noober/background/R$styleable;->background_bl_pressed_gradient_centerX:I

    if-ne v5, v6, :cond_83

    .line 276
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    goto/16 :goto_c

    :cond_83
    const v6, -0x10100a7

    if-ne v4, v6, :cond_84

    .line 277
    sget v6, Lcom/noober/background/R$styleable;->background_bl_unPressed_gradient_centerX:I

    if-ne v5, v6, :cond_84

    .line 278
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    goto/16 :goto_c

    :cond_84
    const v6, 0x101009c

    if-ne v4, v6, :cond_85

    .line 279
    sget v6, Lcom/noober/background/R$styleable;->background_bl_focused_gradient_centerX:I

    if-ne v5, v6, :cond_85

    .line 280
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    goto/16 :goto_c

    :cond_85
    const v6, -0x101009c

    if-ne v4, v6, :cond_93

    .line 281
    sget v4, Lcom/noober/background/R$styleable;->background_bl_unFocused_gradient_centerX:I

    if-ne v5, v4, :cond_93

    .line 282
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    goto/16 :goto_c

    .line 283
    :cond_86
    :goto_b
    iget v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->gradientState:I

    if-ne v4, v6, :cond_87

    .line 284
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v21

    goto/16 :goto_c

    :cond_87
    const v6, 0x101009f

    if-ne v4, v6, :cond_88

    .line 285
    sget v6, Lcom/noober/background/R$styleable;->background_bl_checkable_gradient_angle:I

    if-ne v5, v6, :cond_88

    .line 286
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v21

    goto/16 :goto_c

    :cond_88
    const v6, -0x101009f

    if-ne v4, v6, :cond_89

    .line 287
    sget v6, Lcom/noober/background/R$styleable;->background_bl_unCheckable_gradient_angle:I

    if-ne v5, v6, :cond_89

    .line 288
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v21

    goto/16 :goto_c

    :cond_89
    const v6, 0x10100a0

    if-ne v4, v6, :cond_8a

    .line 289
    sget v6, Lcom/noober/background/R$styleable;->background_bl_checked_gradient_angle:I

    if-ne v5, v6, :cond_8a

    .line 290
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v21

    goto/16 :goto_c

    :cond_8a
    const v6, -0x10100a0

    if-ne v4, v6, :cond_8b

    .line 291
    sget v6, Lcom/noober/background/R$styleable;->background_bl_unChecked_gradient_angle:I

    if-ne v5, v6, :cond_8b

    .line 292
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v21

    goto/16 :goto_c

    :cond_8b
    const v6, 0x101009e

    if-ne v4, v6, :cond_8c

    .line 293
    sget v6, Lcom/noober/background/R$styleable;->background_bl_enabled_gradient_angle:I

    if-ne v5, v6, :cond_8c

    .line 294
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v21

    goto/16 :goto_c

    :cond_8c
    const v6, -0x101009e

    if-ne v4, v6, :cond_8d

    .line 295
    sget v6, Lcom/noober/background/R$styleable;->background_bl_unEnabled_gradient_angle:I

    if-ne v5, v6, :cond_8d

    .line 296
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v21

    goto :goto_c

    :cond_8d
    const v6, 0x10100a1

    if-ne v4, v6, :cond_8e

    .line 297
    sget v6, Lcom/noober/background/R$styleable;->background_bl_selected_gradient_angle:I

    if-ne v5, v6, :cond_8e

    .line 298
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v21

    goto :goto_c

    :cond_8e
    const v6, -0x10100a1

    if-ne v4, v6, :cond_8f

    .line 299
    sget v6, Lcom/noober/background/R$styleable;->background_bl_unSelected_gradient_angle:I

    if-ne v5, v6, :cond_8f

    .line 300
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v21

    goto :goto_c

    :cond_8f
    const v6, 0x10100a7

    if-ne v4, v6, :cond_90

    .line 301
    sget v6, Lcom/noober/background/R$styleable;->background_bl_pressed_gradient_angle:I

    if-ne v5, v6, :cond_90

    .line 302
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v21

    goto :goto_c

    :cond_90
    const v6, -0x10100a7

    if-ne v4, v6, :cond_91

    .line 303
    sget v6, Lcom/noober/background/R$styleable;->background_bl_unPressed_gradient_angle:I

    if-ne v5, v6, :cond_91

    .line 304
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v21

    goto :goto_c

    :cond_91
    const v6, 0x101009c

    if-ne v4, v6, :cond_92

    .line 305
    sget v6, Lcom/noober/background/R$styleable;->background_bl_focused_gradient_angle:I

    if-ne v5, v6, :cond_92

    .line 306
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v21

    goto :goto_c

    :cond_92
    const v6, -0x101009c

    if-ne v4, v6, :cond_93

    .line 307
    sget v4, Lcom/noober/background/R$styleable;->background_bl_unFocused_gradient_angle:I

    if-ne v5, v4, :cond_93

    .line 308
    iget-object v4, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v21

    :cond_93
    :goto_c
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x0

    goto/16 :goto_0

    .line 309
    :cond_94
    invoke-direct {v1, v0}, Lcom/noober/background/drawable/GradientDrawableCreator;->hasSetRadius([F)Z

    move-result v4

    if-eqz v4, :cond_95

    .line 310
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 311
    :cond_95
    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_size_width:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_96

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_size_height:I

    .line 312
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_96

    float-to-int v0, v8

    float-to-int v4, v9

    .line 313
    invoke-virtual {v2, v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 314
    :cond_96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 315
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 316
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_pressed_solid_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_97

    const v5, 0x10100a7

    .line 317
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_pressed_solid_color:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    :cond_97
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unPressed_solid_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_98

    const v5, -0x10100a7

    .line 320
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unPressed_solid_color:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    :cond_98
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_checkable_solid_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_99

    const v5, 0x101009f

    .line 323
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_checkable_solid_color:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    :cond_99
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unCheckable_solid_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_9a

    const v5, -0x101009f

    .line 326
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unCheckable_solid_color:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    :cond_9a
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_checked_solid_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_9b

    const v5, 0x10100a0

    .line 329
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_checked_solid_color:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    :cond_9b
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unChecked_solid_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_9c

    const v5, -0x10100a0

    .line 332
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unChecked_solid_color:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    :cond_9c
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_enabled_solid_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_9d

    const v5, 0x101009e

    .line 335
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_enabled_solid_color:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    :cond_9d
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unEnabled_solid_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_9e

    const v5, -0x101009e

    .line 338
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unEnabled_solid_color:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    :cond_9e
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_selected_solid_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_9f

    const v5, 0x10100a1

    .line 341
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_selected_solid_color:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    :cond_9f
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unSelected_solid_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_a0

    const v5, -0x10100a1

    .line 344
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unSelected_solid_color:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    :cond_a0
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_focused_solid_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_a1

    const v5, 0x101009c

    .line 347
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_focused_solid_color:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    :cond_a1
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unFocused_solid_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_a2

    const v5, -0x101009c

    .line 350
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unFocused_solid_color:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    :cond_a2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_a6

    .line 353
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 354
    iget-object v6, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v7, Lcom/noober/background/R$styleable;->background_bl_solid_color:I

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_a3

    add-int/lit8 v5, v5, 0x1

    .line 355
    :cond_a3
    new-array v6, v5, [[I

    .line 356
    new-array v5, v5, [I

    .line 357
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v7, 0x0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 358
    filled-new-array {v8}, [I

    move-result-object v8

    aput-object v8, v6, v7

    .line 359
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    .line 360
    :cond_a4
    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_solid_color:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_a5

    const/4 v0, 0x0

    .line 361
    new-array v4, v0, [I

    aput-object v4, v6, v7

    .line 362
    aput v10, v5, v7

    .line 363
    :cond_a5
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v6, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 364
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    goto :goto_e

    .line 365
    :cond_a6
    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_solid_color:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 366
    invoke-virtual {v2, v10}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 367
    :cond_a7
    :goto_e
    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_stroke_width:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 369
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 370
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_pressed_stroke_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_a8

    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unPressed_stroke_color:I

    .line 371
    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_a8

    const v5, 0x10100a7

    .line 372
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v5, -0x10100a7

    .line 373
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_pressed_stroke_color:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unPressed_stroke_color:I

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    :cond_a8
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_checkable_stroke_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_a9

    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unCheckable_stroke_color:I

    .line 377
    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_a9

    const v5, 0x101009f

    .line 378
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v5, -0x101009f

    .line 379
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_checkable_stroke_color:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unCheckable_stroke_color:I

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    :cond_a9
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_checked_stroke_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_aa

    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unChecked_stroke_color:I

    .line 383
    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_aa

    const v5, 0x10100a0

    .line 384
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v5, -0x10100a0

    .line 385
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_checked_stroke_color:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unChecked_stroke_color:I

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    :cond_aa
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_enabled_stroke_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_ab

    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unEnabled_stroke_color:I

    .line 389
    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_ab

    const v5, 0x101009e

    .line 390
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v5, -0x101009e

    .line 391
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_enabled_stroke_color:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unEnabled_stroke_color:I

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    :cond_ab
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_selected_stroke_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_ac

    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unSelected_stroke_color:I

    .line 395
    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_ac

    const v5, 0x10100a1

    .line 396
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v5, -0x10100a1

    .line 397
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_selected_stroke_color:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unSelected_stroke_color:I

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    :cond_ac
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_focused_stroke_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_ad

    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unFocused_stroke_color:I

    .line 401
    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_ad

    const v5, 0x101009c

    .line 402
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v5, -0x101009c

    .line 403
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_focused_stroke_color:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    iget-object v5, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v6, Lcom/noober/background/R$styleable;->background_bl_unFocused_stroke_color:I

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    :cond_ad
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_af

    .line 407
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [[I

    .line 408
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [I

    .line 409
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v7, 0x0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_ae

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 410
    filled-new-array {v8}, [I

    move-result-object v8

    aput-object v8, v5, v7

    .line 411
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v6, v7

    const/4 v8, 0x1

    add-int/2addr v7, v8

    goto :goto_f

    .line 412
    :cond_ae
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v5, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    float-to-int v4, v11

    .line 413
    invoke-virtual {v2, v4, v0, v12, v14}, Landroid/graphics/drawable/GradientDrawable;->setStroke(ILandroid/content/res/ColorStateList;FF)V

    goto :goto_10

    .line 414
    :cond_af
    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_stroke_color:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_b0

    float-to-int v0, v11

    .line 415
    invoke-virtual {v2, v0, v13, v12, v14}, Landroid/graphics/drawable/GradientDrawable;->setStroke(IIFF)V

    .line 416
    :cond_b0
    :goto_10
    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_gradient_centerX:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_b2

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_gradient_centerY:I

    .line 417
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_b1

    goto :goto_12

    :cond_b1
    :goto_11
    move/from16 v4, v16

    goto/16 :goto_13

    :cond_b2
    :goto_12
    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_checkable_gradient_centerX:I

    .line 418
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_b3

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unCheckable_gradient_centerY:I

    .line 419
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_b1

    :cond_b3
    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_checked_gradient_centerX:I

    .line 420
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_b4

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unChecked_gradient_centerY:I

    .line 421
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_b1

    :cond_b4
    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_enabled_gradient_centerX:I

    .line 422
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_b5

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unEnabled_gradient_centerY:I

    .line 423
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_b1

    :cond_b5
    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_selected_gradient_centerX:I

    .line 424
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_b6

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unSelected_gradient_centerY:I

    .line 425
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_b1

    :cond_b6
    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_pressed_gradient_centerX:I

    .line 426
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_b7

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unPressed_gradient_centerY:I

    .line 427
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_b1

    :cond_b7
    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_focused_gradient_centerX:I

    .line 428
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_b8

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unFocused_gradient_centerY:I

    .line 429
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_b8

    goto :goto_11

    .line 430
    :goto_13
    invoke-virtual {v2, v15, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientCenter(FF)V

    .line 431
    :cond_b8
    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_gradient_startColor:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_b9

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_gradient_endColor:I

    .line 432
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_bf

    :cond_b9
    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_checkable_gradient_startColor:I

    .line 433
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_ba

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unCheckable_gradient_endColor:I

    .line 434
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_bf

    :cond_ba
    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_checked_gradient_startColor:I

    .line 435
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_bb

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unChecked_gradient_endColor:I

    .line 436
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_bf

    :cond_bb
    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_enabled_gradient_startColor:I

    .line 437
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_bc

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unEnabled_gradient_endColor:I

    .line 438
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_bf

    :cond_bc
    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_selected_gradient_startColor:I

    .line 439
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_bd

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unSelected_gradient_endColor:I

    .line 440
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_bf

    :cond_bd
    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_pressed_gradient_startColor:I

    .line 441
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_be

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unPressed_gradient_endColor:I

    .line 442
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_bf

    :cond_be
    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_focused_gradient_startColor:I

    .line 443
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_c1

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unFocused_gradient_endColor:I

    .line 444
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 445
    :cond_bf
    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_gradient_centerColor:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_c0

    const/4 v0, 0x3

    .line 446
    new-array v0, v0, [I

    const/4 v4, 0x0

    .line 447
    aput v18, v0, v4

    const/4 v5, 0x1

    .line 448
    aput v17, v0, v5

    const/4 v6, 0x2

    .line 449
    aput v19, v0, v6

    goto :goto_14

    :cond_c0
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    .line 450
    new-array v0, v6, [I

    .line 451
    aput v18, v0, v4

    .line 452
    aput v19, v0, v5

    .line 453
    :goto_14
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    :cond_c1
    if-nez v20, :cond_cc

    .line 454
    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_gradient_angle:I

    .line 455
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_c2

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_checkable_gradient_angle:I

    .line 456
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_c2

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_checked_gradient_angle:I

    .line 457
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_c2

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_enabled_gradient_angle:I

    .line 458
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_c2

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_selected_gradient_angle:I

    .line 459
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_c2

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_pressed_gradient_angle:I

    .line 460
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_c2

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_focused_gradient_angle:I

    .line 461
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_c2

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unCheckable_gradient_angle:I

    .line 462
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_c2

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unChecked_gradient_angle:I

    .line 463
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_c2

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unEnabled_gradient_angle:I

    .line 464
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_c2

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unSelected_gradient_angle:I

    .line 465
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_c2

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unPressed_gradient_angle:I

    .line 466
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_c2

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_unFocused_gradient_angle:I

    .line 467
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_cc

    :cond_c2
    move/from16 v6, v21

    .line 468
    rem-int/lit16 v0, v6, 0x168

    .line 469
    rem-int/lit8 v4, v0, 0x2d

    if-nez v4, :cond_cb

    .line 470
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    if-eqz v0, :cond_ca

    const/16 v5, 0x2d

    if-eq v0, v5, :cond_c9

    const/16 v5, 0x5a

    if-eq v0, v5, :cond_c8

    const/16 v5, 0x87

    if-eq v0, v5, :cond_c7

    const/16 v5, 0xb4

    if-eq v0, v5, :cond_c6

    const/16 v5, 0xe1

    if-eq v0, v5, :cond_c5

    const/16 v5, 0x10e

    if-eq v0, v5, :cond_c4

    const/16 v5, 0x13b

    if-eq v0, v5, :cond_c3

    goto :goto_15

    .line 471
    :cond_c3
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_15

    .line 472
    :cond_c4
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_15

    .line 473
    :cond_c5
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TR_BL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_15

    .line 474
    :cond_c6
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_15

    .line 475
    :cond_c7
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->BR_TL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_15

    .line 476
    :cond_c8
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_15

    .line 477
    :cond_c9
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 478
    :cond_ca
    :goto_15
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    goto :goto_16

    .line 479
    :cond_cb
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<gradient> tag requires \'angle\' attribute to be a multiple of 45"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 480
    :cond_cc
    :goto_16
    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_padding_left:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_ce

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_padding_top:I

    .line 481
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_ce

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_padding_right:I

    .line 482
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_ce

    iget-object v0, v1, Lcom/noober/background/drawable/GradientDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    sget v4, Lcom/noober/background/R$styleable;->background_bl_padding_bottom:I

    .line 483
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 484
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v0, v4, :cond_cd

    .line 485
    iget v0, v3, Landroid/graphics/Rect;->left:I

    iget v4, v3, Landroid/graphics/Rect;->top:I

    iget v5, v3, Landroid/graphics/Rect;->right:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v0, v4, v5, v3}, Lcom/noober/background/drawable/a;->a(Landroid/graphics/drawable/GradientDrawable;IIII)V

    goto :goto_19

    .line 486
    :cond_cd
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "mPadding"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x1

    .line 487
    invoke-virtual {v0, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 488
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_19

    :catch_0
    move-exception v0

    goto :goto_17

    :catch_1
    move-exception v0

    goto :goto_18

    .line 489
    :goto_17
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_19

    .line 490
    :goto_18
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_ce
    :goto_19
    return-object v2
.end method
