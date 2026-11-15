.class public Lcom/makeramen/roundedimageview/RoundedImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# static fields
.field public static final DEFAULT_BORDER_WIDTH:F = 0.0f

.field public static final DEFAULT_RADIUS:F = 0.0f

.field public static final DEFAULT_TILE_MODE:Landroid/graphics/Shader$TileMode;

.field public static final TAG:Ljava/lang/String; = "RoundedImageView"

.field public static final q:[Landroid/widget/ImageView$ScaleType;


# instance fields
.field public final b:[F

.field public c:Landroid/graphics/drawable/Drawable;

.field public d:Landroid/content/res/ColorStateList;

.field public e:F

.field public f:Landroid/graphics/ColorFilter;

.field public g:Z

.field public h:Landroid/graphics/drawable/Drawable;

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:I

.field public m:I

.field public n:Landroid/widget/ImageView$ScaleType;

.field public o:Landroid/graphics/Shader$TileMode;

.field public p:Landroid/graphics/Shader$TileMode;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sput-object v0, Lcom/makeramen/roundedimageview/RoundedImageView;->DEFAULT_TILE_MODE:Landroid/graphics/Shader$TileMode;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    filled-new-array/range {v1 .. v8}, [Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    sput-object v0, Lcom/makeramen/roundedimageview/RoundedImageView;->q:[Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->b:[F

    const/high16 v0, -0x1000000

    .line 3
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->d:Landroid/content/res/ColorStateList;

    .line 4
    iput p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->e:F

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->f:Landroid/graphics/ColorFilter;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->g:Z

    .line 7
    iput-boolean p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->i:Z

    .line 8
    iput-boolean p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->j:Z

    .line 9
    iput-boolean p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->k:Z

    .line 10
    sget-object p1, Lcom/makeramen/roundedimageview/RoundedImageView;->DEFAULT_TILE_MODE:Landroid/graphics/Shader$TileMode;

    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->o:Landroid/graphics/Shader$TileMode;

    .line 11
    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->p:Landroid/graphics/Shader$TileMode;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, p2, v0}, Lcom/makeramen/roundedimageview/RoundedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    const/4 v0, 0x1

    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 14
    new-array v2, v2, [F

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->b:[F

    const/high16 v3, -0x1000000

    .line 15
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->d:Landroid/content/res/ColorStateList;

    .line 16
    iput v1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->e:F

    const/4 v4, 0x0

    .line 17
    iput-object v4, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->f:Landroid/graphics/ColorFilter;

    const/4 v4, 0x0

    .line 18
    iput-boolean v4, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->g:Z

    .line 19
    iput-boolean v4, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->i:Z

    .line 20
    iput-boolean v4, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->j:Z

    .line 21
    iput-boolean v4, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->k:Z

    .line 22
    sget-object v5, Lcom/makeramen/roundedimageview/RoundedImageView;->DEFAULT_TILE_MODE:Landroid/graphics/Shader$TileMode;

    iput-object v5, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->o:Landroid/graphics/Shader$TileMode;

    .line 23
    iput-object v5, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->p:Landroid/graphics/Shader$TileMode;

    .line 24
    sget-object v5, Lcom/makeramen/roundedimageview/R$styleable;->RoundedImageView:[I

    invoke-virtual {p1, p2, v5, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 25
    sget p2, Lcom/makeramen/roundedimageview/R$styleable;->RoundedImageView_android_scaleType:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-ltz p2, :cond_0

    .line 26
    sget-object v5, Lcom/makeramen/roundedimageview/RoundedImageView;->q:[Landroid/widget/ImageView$ScaleType;

    aget-object p2, v5, p2

    invoke-virtual {p0, p2}, Lcom/makeramen/roundedimageview/RoundedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 27
    :cond_0
    sget-object p2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p2}, Lcom/makeramen/roundedimageview/RoundedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 28
    :goto_0
    sget p2, Lcom/makeramen/roundedimageview/R$styleable;->RoundedImageView_riv_corner_radius:I

    .line 29
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    .line 30
    sget v5, Lcom/makeramen/roundedimageview/R$styleable;->RoundedImageView_riv_corner_radius_top_left:I

    .line 31
    invoke-virtual {p1, v5, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    aput v5, v2, v4

    .line 32
    sget v5, Lcom/makeramen/roundedimageview/R$styleable;->RoundedImageView_riv_corner_radius_top_right:I

    .line 33
    invoke-virtual {p1, v5, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    aput v5, v2, v0

    .line 34
    sget v5, Lcom/makeramen/roundedimageview/R$styleable;->RoundedImageView_riv_corner_radius_bottom_right:I

    .line 35
    invoke-virtual {p1, v5, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x2

    aput v5, v2, v6

    .line 36
    sget v5, Lcom/makeramen/roundedimageview/R$styleable;->RoundedImageView_riv_corner_radius_bottom_left:I

    .line 37
    invoke-virtual {p1, v5, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x3

    aput v5, v2, v6

    .line 38
    array-length v2, v2

    move v5, v4

    move v6, v5

    :goto_1
    if-ge v5, v2, :cond_2

    .line 39
    iget-object v7, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->b:[F

    aget v8, v7, v5

    cmpg-float v8, v8, v1

    if-gez v8, :cond_1

    .line 40
    aput v1, v7, v5

    goto :goto_2

    :cond_1
    move v6, v0

    :goto_2
    add-int/2addr v5, v0

    goto :goto_1

    :cond_2
    if-nez v6, :cond_4

    cmpg-float v2, p2, v1

    if-gez v2, :cond_3

    move p2, v1

    .line 41
    :cond_3
    iget-object v2, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->b:[F

    array-length v2, v2

    move v5, v4

    :goto_3
    if-ge v5, v2, :cond_4

    .line 42
    iget-object v6, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->b:[F

    aput p2, v6, v5

    add-int/2addr v5, v0

    goto :goto_3

    .line 43
    :cond_4
    sget p2, Lcom/makeramen/roundedimageview/R$styleable;->RoundedImageView_riv_border_width:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->e:F

    cmpg-float p2, p2, v1

    if-gez p2, :cond_5

    .line 44
    iput v1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->e:F

    .line 45
    :cond_5
    sget p2, Lcom/makeramen/roundedimageview/R$styleable;->RoundedImageView_riv_border_color:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->d:Landroid/content/res/ColorStateList;

    if-nez p2, :cond_6

    .line 46
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->d:Landroid/content/res/ColorStateList;

    .line 47
    :cond_6
    sget p2, Lcom/makeramen/roundedimageview/R$styleable;->RoundedImageView_riv_mutate_background:I

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->k:Z

    .line 48
    sget p2, Lcom/makeramen/roundedimageview/R$styleable;->RoundedImageView_riv_oval:I

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->j:Z

    .line 49
    sget p2, Lcom/makeramen/roundedimageview/R$styleable;->RoundedImageView_riv_tile_mode:I

    const/4 p3, -0x2

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-eq p2, p3, :cond_7

    .line 50
    invoke-static {p2}, Lcom/makeramen/roundedimageview/RoundedImageView;->b(I)Landroid/graphics/Shader$TileMode;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/makeramen/roundedimageview/RoundedImageView;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    .line 51
    invoke-static {p2}, Lcom/makeramen/roundedimageview/RoundedImageView;->b(I)Landroid/graphics/Shader$TileMode;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/makeramen/roundedimageview/RoundedImageView;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    .line 52
    :cond_7
    sget p2, Lcom/makeramen/roundedimageview/R$styleable;->RoundedImageView_riv_tile_mode_x:I

    .line 53
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-eq p2, p3, :cond_8

    .line 54
    invoke-static {p2}, Lcom/makeramen/roundedimageview/RoundedImageView;->b(I)Landroid/graphics/Shader$TileMode;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/makeramen/roundedimageview/RoundedImageView;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    .line 55
    :cond_8
    sget p2, Lcom/makeramen/roundedimageview/R$styleable;->RoundedImageView_riv_tile_mode_y:I

    .line 56
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-eq p2, p3, :cond_9

    .line 57
    invoke-static {p2}, Lcom/makeramen/roundedimageview/RoundedImageView;->b(I)Landroid/graphics/Shader$TileMode;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/makeramen/roundedimageview/RoundedImageView;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    .line 58
    :cond_9
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->g()V

    .line 59
    invoke-virtual {p0, v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->f(Z)V

    .line 60
    iget-boolean p2, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->k:Z

    if-eqz p2, :cond_a

    .line 61
    iget-object p2, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->c:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    :cond_a
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static b(I)Landroid/graphics/Shader$TileMode;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    return-object p0

    :cond_1
    sget-object p0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    return-object p0

    :cond_2
    sget-object p0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->h:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->g:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->h:Landroid/graphics/drawable/Drawable;

    iget-boolean v1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->i:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->f:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method public final c()Landroid/graphics/drawable/Drawable;
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget v2, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->m:I

    if-eqz v2, :cond_1

    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find resource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->m:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RoundedImageView"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->m:I

    :cond_1
    :goto_0
    invoke-static {v1}, Lfw8;->e(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public final d()Landroid/graphics/drawable/Drawable;
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget v2, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->l:I

    if-eqz v2, :cond_1

    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find resource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->l:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RoundedImageView"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->l:I

    :cond_1
    :goto_0
    invoke-static {v1}, Lfw8;->e(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public drawableStateChanged()V
    .locals 0

    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final e(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lfw8;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lfw8;

    invoke-virtual {p1, p2}, Lfw8;->l(Landroid/widget/ImageView$ScaleType;)Lfw8;

    move-result-object p2

    iget v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->e:F

    invoke-virtual {p2, v0}, Lfw8;->i(F)Lfw8;

    move-result-object p2

    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {p2, v0}, Lfw8;->h(Landroid/content/res/ColorStateList;)Lfw8;

    move-result-object p2

    iget-boolean v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->j:Z

    invoke-virtual {p2, v0}, Lfw8;->k(Z)Lfw8;

    move-result-object p2

    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->o:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p2, v0}, Lfw8;->m(Landroid/graphics/Shader$TileMode;)Lfw8;

    move-result-object p2

    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->p:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p2, v0}, Lfw8;->n(Landroid/graphics/Shader$TileMode;)Lfw8;

    iget-object p2, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->b:[F

    if-eqz p2, :cond_1

    aget v0, p2, v1

    const/4 v1, 0x1

    aget v1, p2, v1

    const/4 v2, 0x2

    aget v2, p2, v2

    const/4 v3, 0x3

    aget p2, p2, v3

    invoke-virtual {p1, v0, v1, v2, p2}, Lfw8;->j(FFFF)Lfw8;

    :cond_1
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->a()V

    goto :goto_1

    :cond_2
    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_3

    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/makeramen/roundedimageview/RoundedImageView;->e(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final f(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->k:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lfw8;->e(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->c:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->c:Landroid/graphics/drawable/Drawable;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1, v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->e(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V

    :cond_1
    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->h:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->n:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0, v1}, Lcom/makeramen/roundedimageview/RoundedImageView;->e(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public getBorderColor()I
    .locals 0
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget-object p0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    return p0
.end method

.method public getBorderColors()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->d:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getBorderWidth()F
    .locals 0

    iget p0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->e:F

    return p0
.end method

.method public getCornerRadius()F
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->getMaxCornerRadius()F

    move-result p0

    return p0
.end method

.method public getCornerRadius(I)F
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->b:[F

    aget p0, p0, p1

    return p0
.end method

.method public getMaxCornerRadius()F
    .locals 4

    iget-object p0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->b:[F

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p0, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 0

    iget-object p0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->n:Landroid/widget/ImageView$ScaleType;

    return-object p0
.end method

.method public getTileModeX()Landroid/graphics/Shader$TileMode;
    .locals 0

    iget-object p0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->o:Landroid/graphics/Shader$TileMode;

    return-object p0
.end method

.method public getTileModeY()Landroid/graphics/Shader$TileMode;
    .locals 0

    iget-object p0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->p:Landroid/graphics/Shader$TileMode;

    return-object p0
.end method

.method public isOval()Z
    .locals 0

    iget-boolean p0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->j:Z

    return p0
.end method

.method public mutateBackground(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->k:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->k:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->f(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public mutatesBackground()Z
    .locals 0

    iget-boolean p0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->k:Z

    return p0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->c:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->f(Z)V

    iget-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->c:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    iget v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->m:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->m:I

    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->c()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBorderColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->setBorderColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setBorderColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/high16 p1, -0x1000000

    .line 3
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->d:Landroid/content/res/ColorStateList;

    .line 4
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->g()V

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->f(Z)V

    .line 6
    iget p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->e:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public setBorderWidth(F)V
    .locals 1

    .line 2
    iget v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->e:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iput p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->e:F

    .line 4
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->g()V

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->f(Z)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBorderWidth(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->setBorderWidth(F)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->f:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->f:Landroid/graphics/ColorFilter;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->i:Z

    iput-boolean p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->g:Z

    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->a()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->setCornerRadius(FFFF)V

    return-void
.end method

.method public setCornerRadius(FFFF)V
    .locals 6

    .line 7
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->b:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    cmpl-float v2, v2, p1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v2, :cond_0

    aget v2, v0, v5

    cmpl-float v2, v2, p2

    if-nez v2, :cond_0

    aget v2, v0, v4

    cmpl-float v2, v2, p4

    if-nez v2, :cond_0

    aget v2, v0, v3

    cmpl-float v2, v2, p3

    if-nez v2, :cond_0

    return-void

    .line 8
    :cond_0
    aput p1, v0, v1

    .line 9
    aput p2, v0, v5

    .line 10
    aput p3, v0, v3

    .line 11
    aput p4, v0, v4

    .line 12
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->g()V

    .line 13
    invoke-virtual {p0, v1}, Lcom/makeramen/roundedimageview/RoundedImageView;->f(Z)V

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCornerRadius(IF)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->b:[F

    aget v1, v0, p1

    cmpl-float v1, v1, p2

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    aput p2, v0, p1

    .line 4
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->g()V

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->f(Z)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCornerRadiusDimen(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 2
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->setCornerRadius(FFFF)V

    return-void
.end method

.method public setCornerRadiusDimen(II)V
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/makeramen/roundedimageview/RoundedImageView;->setCornerRadius(IF)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->l:I

    invoke-static {p1}, Lfw8;->d(Landroid/graphics/Bitmap;)Lfw8;

    move-result-object p1

    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->g()V

    iget-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->h:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->l:I

    invoke-static {p1}, Lfw8;->e(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->g()V

    iget-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->h:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    iget v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->l:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->l:I

    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->d()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->g()V

    iget-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->h:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOval(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->j:Z

    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->g()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->f(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 2

    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->n:Landroid/widget/ImageView$ScaleType;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->n:Landroid/widget/ImageView$ScaleType;

    sget-object v0, Lcom/makeramen/roundedimageview/RoundedImageView$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    :pswitch_0
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_0
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->g()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->f(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setTileModeX(Landroid/graphics/Shader$TileMode;)V
    .locals 1

    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->o:Landroid/graphics/Shader$TileMode;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->o:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->g()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->f(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTileModeY(Landroid/graphics/Shader$TileMode;)V
    .locals 1

    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->p:Landroid/graphics/Shader$TileMode;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->p:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->g()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->f(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
