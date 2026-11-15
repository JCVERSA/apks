.class public final Lcom/hunantv/media/widget/extra/SubtitleView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/subtitle/d$c;


# static fields
.field public static final DEFAULT_BOTTOM_PADDING_FRACTION:F = 0.01f

.field public static final DEFAULT_TEXT_SIZE_FRACTION:F = 0.04f

.field private static final TAG:Ljava/lang/String; = "SubtitleView"


# instance fields
.field private applyEmbeddedFontSizes:Z

.field private applyEmbeddedStyles:Z

.field private bottomPaddingFraction:F

.field private cues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hunantv/media/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private final painters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hunantv/media/widget/extra/SubtitlePainter;",
            ">;"
        }
    .end annotation
.end field

.field private style:Lcom/hunantv/media/a/a;

.field private subtitleConfig:Lcom/hunantv/media/player/subtitle/SubtitleConfig;

.field private textSize:F

.field private textSizeType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/hunantv/media/widget/extra/SubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/hunantv/media/widget/extra/SubtitleView;->painters:Ljava/util/List;

    const/4 p1, 0x0

    iput p1, p0, Lcom/hunantv/media/widget/extra/SubtitleView;->textSizeType:I

    const p1, 0x3d23d70a    # 0.04f

    iput p1, p0, Lcom/hunantv/media/widget/extra/SubtitleView;->textSize:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/hunantv/media/widget/extra/SubtitleView;->applyEmbeddedStyles:Z

    iput-boolean p1, p0, Lcom/hunantv/media/widget/extra/SubtitleView;->applyEmbeddedFontSizes:Z

    new-instance p1, Lcom/hunantv/media/a/a;

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v1, -0x1

    const/high16 v2, 0x7f000000

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/hunantv/media/a/a;-><init>(IIIIILandroid/graphics/Typeface;)V

    iput-object p1, p0, Lcom/hunantv/media/widget/extra/SubtitleView;->style:Lcom/hunantv/media/a/a;

    const p1, 0x3c23d70a    # 0.01f

    iput p1, p0, Lcom/hunantv/media/widget/extra/SubtitleView;->bottomPaddingFraction:F

    return-void
.end method

.method private getUserCaptionFontScaleV19()F
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "captioning"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result p0

    return p0
.end method

.method private getUserCaptionStyleV19()Lcom/hunantv/media/a/a;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "captioning"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object p0

    invoke-static {p0}, Lcom/hunantv/media/a/a;->a(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lcom/hunantv/media/a/a;

    move-result-object p0

    return-object p0
.end method

.method private isCaptionManagerEnabled()Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "captioning"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result p0

    return p0
.end method

.method private resolveCueTextSize(Lcom/hunantv/media/a/b;II)F
    .locals 3

    iget v0, p1, Lcom/hunantv/media/a/b;->m:I

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    iget p1, p1, Lcom/hunantv/media/a/b;->n:F

    const/4 v1, 0x1

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/hunantv/media/widget/extra/SubtitleView;->resolveTextSize(IFII)F

    move-result p0

    invoke-static {p0, v2}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v2
.end method

.method private resolveTextSize(IFII)F
    .locals 0

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return p2

    :cond_1
    int-to-float p0, p3

    :goto_0
    mul-float/2addr p2, p0

    return p2

    :cond_2
    int-to-float p0, p4

    goto :goto_0
.end method

.method private setTextSize(IF)V
    .locals 1

    iget v0, p0, Lcom/hunantv/media/widget/extra/SubtitleView;->textSizeType:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/hunantv/media/widget/extra/SubtitleView;->textSize:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/hunantv/media/widget/extra/SubtitleView;->textSizeType:I

    iput p2, p0, Lcom/hunantv/media/widget/extra/SubtitleView;->textSize:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/hunantv/media/a/b;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/hunantv/media/a/b;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/hunantv/media/widget/extra/SubtitleView;->setCues(Ljava/util/List;)V

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 23

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hunantv/media/widget/extra/SubtitleView;->cues:Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int v13, v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int v12, v3, v4

    if-le v12, v14, :cond_7

    if-gt v13, v15, :cond_1

    goto/16 :goto_2

    :cond_1
    sub-int v11, v12, v14

    iget-object v4, v0, Lcom/hunantv/media/widget/extra/SubtitleView;->subtitleConfig:Lcom/hunantv/media/player/subtitle/SubtitleConfig;

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    iget v6, v4, Lcom/hunantv/media/player/subtitle/SubtitleConfig;->textSizeRatio:F

    cmpl-float v7, v6, v5

    if-lez v7, :cond_2

    iput v6, v0, Lcom/hunantv/media/widget/extra/SubtitleView;->textSize:F

    :cond_2
    iget v6, v4, Lcom/hunantv/media/player/subtitle/SubtitleConfig;->paddingBottomRatio:F

    cmpl-float v7, v6, v5

    if-lez v7, :cond_3

    iput v6, v0, Lcom/hunantv/media/widget/extra/SubtitleView;->bottomPaddingFraction:F

    :cond_3
    iget v6, v4, Lcom/hunantv/media/player/subtitle/SubtitleConfig;->textColor:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    iget-object v8, v0, Lcom/hunantv/media/widget/extra/SubtitleView;->style:Lcom/hunantv/media/a/a;

    iput v6, v8, Lcom/hunantv/media/a/a;->b:I

    :cond_4
    iget v4, v4, Lcom/hunantv/media/player/subtitle/SubtitleConfig;->backgroundColor:I

    if-eq v4, v7, :cond_5

    iget-object v6, v0, Lcom/hunantv/media/widget/extra/SubtitleView;->style:Lcom/hunantv/media/a/a;

    iput v4, v6, Lcom/hunantv/media/a/a;->c:I

    :cond_5
    iget v4, v0, Lcom/hunantv/media/widget/extra/SubtitleView;->textSizeType:I

    iget v6, v0, Lcom/hunantv/media/widget/extra/SubtitleView;->textSize:F

    invoke-direct {v0, v4, v6, v3, v11}, Lcom/hunantv/media/widget/extra/SubtitleView;->resolveTextSize(IFII)F

    move-result v17

    cmpg-float v4, v17, v5

    if-gtz v4, :cond_6

    return-void

    :cond_6
    :goto_1
    if-ge v2, v1, :cond_7

    iget-object v4, v0, Lcom/hunantv/media/widget/extra/SubtitleView;->cues:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/hunantv/media/a/b;

    invoke-direct {v0, v5, v3, v11}, Lcom/hunantv/media/widget/extra/SubtitleView;->resolveCueTextSize(Lcom/hunantv/media/a/b;II)F

    move-result v10

    iget-object v4, v0, Lcom/hunantv/media/widget/extra/SubtitleView;->painters:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hunantv/media/widget/extra/SubtitlePainter;

    iget-boolean v6, v0, Lcom/hunantv/media/widget/extra/SubtitleView;->applyEmbeddedStyles:Z

    iget-boolean v7, v0, Lcom/hunantv/media/widget/extra/SubtitleView;->applyEmbeddedFontSizes:Z

    iget-object v8, v0, Lcom/hunantv/media/widget/extra/SubtitleView;->style:Lcom/hunantv/media/a/a;

    iget v9, v0, Lcom/hunantv/media/widget/extra/SubtitleView;->bottomPaddingFraction:F

    move/from16 v16, v9

    move/from16 v9, v17

    move/from16 v18, v11

    move/from16 v11, v16

    move/from16 v19, v12

    move-object/from16 v12, p1

    move/from16 v20, v13

    move v13, v15

    move/from16 v21, v14

    move/from16 v22, v15

    move/from16 v15, v20

    move/from16 v16, v19

    invoke-virtual/range {v4 .. v16}, Lcom/hunantv/media/widget/extra/SubtitlePainter;->draw(Lcom/hunantv/media/a/b;ZZLcom/hunantv/media/a/a;FFFLandroid/graphics/Canvas;IIII)V

    add-int/lit8 v2, v2, 0x1

    move/from16 v11, v18

    move/from16 v12, v19

    move/from16 v13, v20

    move/from16 v15, v22

    goto :goto_1

    :cond_7
    :goto_2
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    return-void
.end method

.method public onCues(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hunantv/media/a/b;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/hunantv/media/widget/extra/SubtitleView;->setCues(Ljava/util/List;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public setActiveCues(Ljava/util/Vector;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Lcom/hunantv/media/player/subtitle/d$a;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, ""

    const/4 v3, 0x0

    move-object v5, v2

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_2

    invoke-virtual {p1, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/hunantv/media/player/subtitle/a/b;

    if-eqz v6, :cond_1

    iget-object v6, v6, Lcom/hunantv/media/player/subtitle/a/b;->p:[Ljava/lang/String;

    if-eqz v6, :cond_1

    array-length v7, v6

    move v8, v3

    :goto_1
    if-ge v8, v7, :cond_1

    aget-object v9, v6, v8

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move-object v5, v9

    goto :goto_2

    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const-string p1, "subtitle"

    invoke-static {p1, v5}, Lcom/hunantv/media/player/subtitle/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/hunantv/media/a/b;

    invoke-direct {p1, v5}, Lcom/hunantv/media/a/b;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Lcom/hunantv/media/widget/extra/SubtitleView;->onCues(Ljava/util/List;)V

    return-void
.end method

.method public setApplyEmbeddedFontSizes(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/hunantv/media/widget/extra/SubtitleView;->applyEmbeddedFontSizes:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/hunantv/media/widget/extra/SubtitleView;->applyEmbeddedFontSizes:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setApplyEmbeddedStyles(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/hunantv/media/widget/extra/SubtitleView;->applyEmbeddedStyles:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/hunantv/media/widget/extra/SubtitleView;->applyEmbeddedFontSizes:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/hunantv/media/widget/extra/SubtitleView;->applyEmbeddedStyles:Z

    iput-boolean p1, p0, Lcom/hunantv/media/widget/extra/SubtitleView;->applyEmbeddedFontSizes:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBottomPaddingFraction(F)V
    .locals 1

    iget v0, p0, Lcom/hunantv/media/widget/extra/SubtitleView;->bottomPaddingFraction:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/hunantv/media/widget/extra/SubtitleView;->bottomPaddingFraction:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCues(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hunantv/media/a/b;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hunantv/media/widget/extra/SubtitleView;->cues:Ljava/util/List;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/hunantv/media/widget/extra/SubtitleView;->cues:Ljava/util/List;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_0
    iget-object v0, p0, Lcom/hunantv/media/widget/extra/SubtitleView;->painters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p1, :cond_2

    iget-object v0, p0, Lcom/hunantv/media/widget/extra/SubtitleView;->painters:Ljava/util/List;

    new-instance v1, Lcom/hunantv/media/widget/extra/SubtitlePainter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/hunantv/media/widget/extra/SubtitlePainter;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setFixedTextSize(IF)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lcom/hunantv/media/widget/extra/SubtitleView;->setTextSize(IF)V

    return-void
.end method

.method public setFractionalTextSize(F)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/hunantv/media/widget/extra/SubtitleView;->setFractionalTextSize(FZ)V

    return-void
.end method

.method public setFractionalTextSize(FZ)V
    .locals 0

    .line 2
    invoke-direct {p0, p2, p1}, Lcom/hunantv/media/widget/extra/SubtitleView;->setTextSize(IF)V

    return-void
.end method

.method public setOnChangedListener(Lcom/hunantv/media/player/subtitle/d$c$a;)V
    .locals 0

    return-void
.end method

.method public setSize(II)V
    .locals 0

    return-void
.end method

.method public setStyle(Lcom/hunantv/media/a/a;)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/widget/extra/SubtitleView;->style:Lcom/hunantv/media/a/a;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/hunantv/media/widget/extra/SubtitleView;->style:Lcom/hunantv/media/a/a;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSubtitleConfig(Lcom/hunantv/media/player/subtitle/SubtitleConfig;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubtitleView"

    invoke-static {v1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/hunantv/media/widget/extra/SubtitleView;->subtitleConfig:Lcom/hunantv/media/player/subtitle/SubtitleConfig;

    return-void
.end method

.method public setUserDefaultStyle()V
    .locals 2

    sget v0, Lcom/hunantv/media/utils/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/hunantv/media/widget/extra/SubtitleView;->isCaptionManagerEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/hunantv/media/widget/extra/SubtitleView;->getUserCaptionStyleV19()Lcom/hunantv/media/a/a;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/hunantv/media/a/a;->a:Lcom/hunantv/media/a/a;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/hunantv/media/widget/extra/SubtitleView;->setStyle(Lcom/hunantv/media/a/a;)V

    return-void
.end method

.method public setUserDefaultTextSize()V
    .locals 2

    sget v0, Lcom/hunantv/media/utils/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/hunantv/media/widget/extra/SubtitleView;->getUserCaptionFontScaleV19()F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    const v1, 0x3d23d70a    # 0.04f

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/hunantv/media/widget/extra/SubtitleView;->setFractionalTextSize(F)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
