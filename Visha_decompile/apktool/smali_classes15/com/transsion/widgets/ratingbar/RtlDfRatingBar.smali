.class public Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private mBoundaryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOnRatingChangedListener:Lcom/transsion/widgets/ratingbar/OnRatingChangedListener;

.field private mRating:F

.field private mRatingStatus:Lcom/transsion/widgets/ratingbar/RatingStatus;

.field private mStarEmptyDrawable:Landroid/graphics/drawable/Drawable;

.field private mStarFullDrawable:Landroid/graphics/drawable/Drawable;

.field private mStarHalfDrawable:Landroid/graphics/drawable/Drawable;

.field private mStarHeight:F

.field private mStarPadding:F

.field private mStarTotal:I

.field private mStarWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    const/4 p3, 0x5

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->mBoundaryList:Ljava/util/List;

    if-eqz p2, :cond_0

    .line 5
    invoke-direct {p0, p2}, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->init(Landroid/util/AttributeSet;)V

    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "RtlDfRatingBa Error: You must use RtlDfRatingBa in layout file!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private calculateRating(F)F
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->mStarTotal:I

    add-int/lit8 v1, v1, -0x1

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->mBoundaryList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->mBoundaryList:Ljava/util/List;

    add-int/lit8 v4, v0, 0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->mStarHalfDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->mBoundaryList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v5, p0, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->mBoundaryList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v1, v5

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    int-to-float v0, v0

    add-float/2addr v0, v2

    goto :goto_1

    :cond_0
    int-to-float v0, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_1
    cmpl-float v1, v0, v3

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->mBoundaryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_4

    iget-object v0, p0, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->mBoundaryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->mStarWidth:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    iget p1, p0, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->mStarTotal:I

    int-to-float p1, p1

    sub-float/2addr p1, v2

    :goto_2
    move v0, p1

    goto :goto_3

    :cond_3
    iget p1, p0, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->mStarTotal:I

    int-to-float p1, p1

    goto :goto_2

    :cond_4
    :goto_3
    cmpl-float p1, v0, v3

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->mStarHalfDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_4
    move v0, v2

    :cond_6
    invoke-direct {p0}, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->isRtl()Z

    move-result p1

    if-eqz p1, :cond_7

    iget p0, p0, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->mStarTotal:I

    add-int/lit8 p0, p0, 0x1

    int-to-float p0, p0

    sub-float v0, p0, v0

    :cond_7
    return v0
.end method

.method private createStarImageView(Z)Landroid/widget/ImageView;
    .locals 3

    new-instance p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->mStarWidth:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p0, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->mStarHeight:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-direct {p0}, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->isRtl()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->mStarPadding:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget p0, p0, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->mStarPadding:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    invoke-virtual {v0, v1, v2, p0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->mStarPadding:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget p0, p0, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->mStarPadding:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    invoke-virtual {v0, v1, v2, p0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p1
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/transsion/common/R$styleable;->RtlDfRatingBar:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v1, Lcom/transsion/common/R$styleable;->RtlDfRatingBar_rdrb_ratingStatus:I

    sget-object v2, Lcom/transsion/widgets/ratingbar/RatingStatus;->DISABLE:Lcom/transsion/widgets/ratingbar/RatingStatus;

    iget v2, v2, Lcom/transsion/widgets/ratingbar/RatingStatus;->mStatus:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-static {v1}, Lcom/transsion/widgets/ratingbar/RatingStatus;->getStatus(I)Lcom/transsion/widgets/ratingbar/RatingStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->mRatingStatus:Lcom/transsion/widgets/ratingbar/RatingStatus;

    sget v1, Lcom/transsion/common/R$styleable;->RtlDfRatingBar_rdrb_starFullResource:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->mStarFullDrawable:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/transsion/common/R$styleable;->RtlDfRatingBar_rdrb_starEmptyResource:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->mStarEmptyDrawable:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/transsion/common/R$styleable;->RtlDfRatingBar_rdrb_starHalfResource:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->mStarHalfDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->mStarFullDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->mStarEmptyDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    sget v1, Lcom/transsion/common/R$styleable;->RtlDfRatingBar_rdrb_starImageWidth:I

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->mStarWidth:F

    sget v1, Lcom/transsion/common/R$styleable;->RtlDfRatingBar_rdrb_starImageHeight:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->mStarHeight:F

    sget v1, Lcom/transsion/common/R$styleable;->RtlDfRatingBar_rdrb_starImagePadding:I

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->mStarPadding:F

    sget v1, Lcom/transsion/common/R$styleable;->RtlDfRatingBar_rdrb_starTotal:I

    const/4 v2, 0x5

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->mStarTotal:I

    if-lez v1, :cond_2

    sget v1, Lcom/transsion/common/R$styleable;->RtlDfRatingBar_rdrb_rating:I

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->mRating:F

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    move p1, v0

    :goto_0
    iget v1, p0, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->mStarTotal:I

    if-ge p1, v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    move v1, v0

    :goto_1
    invoke-direct {p0, v1}, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->createStarImageView(Z)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->mRating:F

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->setRating(F)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "RtlDfRatingBar Error: starTotal must be positive!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "RtlDfRatingBa Error: You must declare starFullResource and starEmptyResource!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private isRtl()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->mBoundaryList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    iget p3, p0, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->mStarTotal:I

    if-ge p2, p3, :cond_1

    iget-object p3, p0, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->mBoundaryList:Ljava/util/List;

    if-nez p2, :cond_0

    move p4, p1

    goto :goto_1

    :cond_0
    add-int/lit8 p4, p2, -0x1

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    iget p5, p0, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->mStarWidth:F

    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result p5

    add-int/2addr p4, p5

    iget p5, p0, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->mStarPadding:F

    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result p5

    add-int/2addr p4, p5

    :goto_1
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->mRatingStatus:Lcom/transsion/widgets/ratingbar/RatingStatus;

    sget-object v1, Lcom/transsion/widgets/ratingbar/RatingStatus;->ENABLE:Lcom/transsion/widgets/ratingbar/RatingStatus;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->mBoundaryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->calculateRating(F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->setRating(F)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setOnRatingChangedListener(Lcom/transsion/widgets/ratingbar/OnRatingChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->mOnRatingChangedListener:Lcom/transsion/widgets/ratingbar/OnRatingChangedListener;

    return-void
.end method

.method public setRating(F)V
    .locals 5

    iget v0, p0, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->mStarTotal:I

    int-to-float v1, v0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    int-to-float p1, v0

    :cond_0
    iput p1, p0, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->mRating:F

    iget-object v0, p0, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->mOnRatingChangedListener:Lcom/transsion/widgets/ratingbar/OnRatingChangedListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/transsion/widgets/ratingbar/OnRatingChangedListener;->onRatingChanged(F)V

    :cond_1
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    new-instance v1, Ljava/math/BigDecimal;

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/math/BigDecimal;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->mStarFullDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_1
    iget v2, p0, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->mStarTotal:I

    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->mStarEmptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    float-to-double v1, p1

    const-wide/high16 v3, 0x3fd0000000000000L    # 0.25

    cmpl-double p1, v1, v3

    if-ltz p1, :cond_5

    const-wide/high16 v3, 0x3fe8000000000000L    # 0.75

    cmpg-double p1, v1, v3

    if-gez p1, :cond_4

    iget-object p1, p0, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->mStarHalfDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_4

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->mStarHalfDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_4
    cmpl-double p1, v1, v3

    if-ltz p1, :cond_5

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->mStarFullDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public setRatingStatus(Lcom/transsion/widgets/ratingbar/RatingStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->mRatingStatus:Lcom/transsion/widgets/ratingbar/RatingStatus;

    return-void
.end method
