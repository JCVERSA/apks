.class Lcom/transsion/widgets/SwipeImageView$OvalShadow;
.super Landroid/graphics/drawable/shapes/OvalShape;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgets/SwipeImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OvalShadow"
.end annotation


# instance fields
.field private mCircleImageView:Lcom/transsion/widgets/SwipeImageView;

.field private mShadowPaint:Landroid/graphics/Paint;

.field private mShadowRadius:I


# direct methods
.method public constructor <init>(Lcom/transsion/widgets/SwipeImageView;I)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgets/SwipeImageView$OvalShadow;->mCircleImageView:Lcom/transsion/widgets/SwipeImageView;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgets/SwipeImageView$OvalShadow;->mShadowPaint:Landroid/graphics/Paint;

    iput p2, p0, Lcom/transsion/widgets/SwipeImageView$OvalShadow;->mShadowRadius:I

    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/RectShape;->rect()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, p1}, Lcom/transsion/widgets/SwipeImageView$OvalShadow;->updateRadialGradient(I)V

    return-void
.end method

.method private updateRadialGradient(I)V
    .locals 9

    iget-object v0, p0, Lcom/transsion/widgets/SwipeImageView$OvalShadow;->mShadowPaint:Landroid/graphics/Paint;

    new-instance v8, Landroid/graphics/RadialGradient;

    div-int/lit8 p1, p1, 0x2

    int-to-float v3, p1

    iget p0, p0, Lcom/transsion/widgets/SwipeImageView$OvalShadow;->mShadowRadius:I

    int-to-float v4, p0

    const/high16 p0, 0x3d000000    # 0.03125f

    const/4 p1, 0x0

    filled-new-array {p0, p1}, [I

    move-result-object v5

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v1, v8

    move v2, v3

    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/widgets/SwipeImageView$OvalShadow;->mCircleImageView:Lcom/transsion/widgets/SwipeImageView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/transsion/widgets/SwipeImageView$OvalShadow;->mCircleImageView:Lcom/transsion/widgets/SwipeImageView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v2, v0

    int-to-float v1, v1

    iget-object v3, p0, Lcom/transsion/widgets/SwipeImageView$OvalShadow;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget p0, p0, Lcom/transsion/widgets/SwipeImageView$OvalShadow;->mShadowRadius:I

    sub-int/2addr v0, p0

    int-to-float p0, v0

    invoke-virtual {p1, v2, v1, p0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onResize(FF)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/shapes/Shape;->onResize(FF)V

    float-to-int p1, p1

    invoke-direct {p0, p1}, Lcom/transsion/widgets/SwipeImageView$OvalShadow;->updateRadialGradient(I)V

    return-void
.end method
