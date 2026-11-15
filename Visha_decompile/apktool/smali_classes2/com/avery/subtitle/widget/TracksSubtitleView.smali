.class public Lcom/avery/subtitle/widget/TracksSubtitleView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avery/subtitle/widget/TracksSubtitleView$b;
    }
.end annotation


# static fields
.field public static A:Z


# instance fields
.field public b:Landroid/content/Context;

.field public c:Lcom/avery/subtitle/widget/SubtitleTextView;

.field public d:Lcom/avery/subtitle/widget/SubtitleTextView;

.field public e:F

.field public f:Landroid/view/GestureDetector;

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:F

.field public l:Z

.field public m:Landroid/graphics/drawable/GradientDrawable;

.field public mIsLockMode:Z

.field public mIsMultipleWindow:Z

.field public mIsPipMode:Z

.field public misLandscape:Z

.field public n:Landroid/graphics/drawable/GradientDrawable;

.field public o:Landroid/view/View;

.field public p:Lcom/avery/subtitle/widget/TracksSubtitleView$b;

.field public q:Landroid/view/View;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:I

.field public u:I

.field public v:F

.field public w:F

.field public x:Landroid/view/View$OnLayoutChangeListener;

.field public final y:[I

.field public z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/avery/subtitle/widget/TracksSubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/avery/subtitle/widget/TracksSubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->l:Z

    const/4 p2, 0x0

    .line 5
    iput p2, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->t:I

    iput p2, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->u:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 6
    iput p2, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->v:F

    const/4 p2, 0x2

    .line 7
    new-array p2, p2, [I

    iput-object p2, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->y:[I

    .line 8
    invoke-virtual {p0, p1}, Lcom/avery/subtitle/widget/TracksSubtitleView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/avery/subtitle/widget/TracksSubtitleView;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-virtual/range {p0 .. p9}, Lcom/avery/subtitle/widget/TracksSubtitleView;->f(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic b(Z)Z
    .locals 0

    sput-boolean p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->A:Z

    return p0
.end method

.method public static synthetic c(Lcom/avery/subtitle/widget/TracksSubtitleView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->o:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic d(Lcom/avery/subtitle/widget/TracksSubtitleView;F)F
    .locals 0

    iput p1, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->e:F

    return p1
.end method

.method public static isInDragMode()Z
    .locals 1

    sget-boolean v0, Lcom/avery/subtitle/widget/TracksSubtitleView;->A:Z

    return v0
.end method


# virtual methods
.method public bindToIPlayer(Lcom/transsion/playercommon/player/b;)V
    .locals 1

    iget-object v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->c:Lcom/avery/subtitle/widget/SubtitleTextView;

    invoke-virtual {v0, p1}, Lcom/avery/subtitle/widget/SubtitleTextView;->bindToMediaPlayer(Lcom/transsion/playercommon/player/b;)V

    iget-object v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->d:Lcom/avery/subtitle/widget/SubtitleTextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/avery/subtitle/widget/SubtitleTextView;->bindToMediaPlayer(Lcom/transsion/playercommon/player/b;)V

    :cond_0
    invoke-virtual {p0}, Lcom/avery/subtitle/widget/TracksSubtitleView;->resetLocationY()V

    return-void
.end method

.method public convertTranslationY(Z)V
    .locals 5

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->h:I

    int-to-double v0, p1

    iget p1, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->g:I

    :goto_0
    int-to-double v2, p1

    div-double/2addr v0, v2

    goto :goto_1

    :cond_0
    iget p1, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->g:I

    int-to-double v0, p1

    iget p1, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->h:I

    goto :goto_0

    :goto_1
    iget p1, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->i:I

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr p1, v2

    int-to-float p1, p1

    iget v2, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->j:I

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->k:F

    float-to-double v3, v3

    mul-double/2addr v3, v0

    float-to-double v0, p1

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    float-to-double v3, v2

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p0}, Lcom/avery/subtitle/widget/TracksSubtitleView;->getTranslationY()F

    move-result v1

    const/4 v3, 0x0

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    goto :goto_2

    :cond_1
    move p1, v2

    :goto_2
    iget v1, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->w:F

    mul-float/2addr p1, v1

    invoke-virtual {p0, v0}, Lcom/avery/subtitle/widget/TracksSubtitleView;->setOriginY(F)V

    invoke-virtual {p0, p1}, Lcom/avery/subtitle/widget/TracksSubtitleView;->setTranslationY(F)V

    return-void
.end method

.method public final e(F)Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/avery/subtitle/widget/TracksSubtitleView;->getTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    add-float/2addr v0, p1

    iget v1, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->i:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/avery/subtitle/widget/TracksSubtitleView;->getTranslationY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    add-float/2addr v0, p1

    iget p0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->j:I

    int-to-float p0, p0

    cmpg-float p0, v0, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final synthetic f(Landroid/view/View;IIIIIIII)V
    .locals 0

    if-ne p9, p5, :cond_0

    if-eq p7, p3, :cond_1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onLayoutChange top:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",bottom:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",oldTop:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",oldBottom:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TracksSubtitleView"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->misLandscape:Z

    invoke-virtual {p0, p1}, Lcom/avery/subtitle/widget/TracksSubtitleView;->convertTranslationY(Z)V

    :cond_1
    return-void
.end method

.method public g()I
    .locals 0

    sget p0, Lcom/avery/subtitle/R$layout;->subtitles_layout:I

    return p0
.end method

.method public getTranslationY()F
    .locals 0

    invoke-super {p0}, Landroid/view/View;->getTranslationY()F

    move-result p0

    return p0
.end method

.method public final h()V
    .locals 3

    iget-object v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->p:Lcom/avery/subtitle/widget/TracksSubtitleView$b;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/avery/subtitle/widget/TracksSubtitleView;->getTranslationY()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/avery/subtitle/widget/TracksSubtitleView$b;->b(II)V

    :cond_0
    iget-object v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->p:Lcom/avery/subtitle/widget/TracksSubtitleView$b;

    if-eqz v0, :cond_1

    sget-boolean v1, Lcom/avery/subtitle/widget/TracksSubtitleView;->A:Z

    if-nez v1, :cond_1

    invoke-interface {v0}, Lcom/avery/subtitle/widget/TracksSubtitleView$b;->a()V

    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/avery/subtitle/widget/TracksSubtitleView;->A:Z

    iget-object v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->o:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->c:Lcom/avery/subtitle/widget/SubtitleTextView;

    iget-object v2, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->m:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->d:Lcom/avery/subtitle/widget/SubtitleTextView;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->n:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->c:Lcom/avery/subtitle/widget/SubtitleTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->c:Lcom/avery/subtitle/widget/SubtitleTextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/avery/subtitle/widget/SubtitleTextView;->onSubtitleText(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->d:Lcom/avery/subtitle/widget/SubtitleTextView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->d:Lcom/avery/subtitle/widget/SubtitleTextView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public initBounds()V
    .locals 2

    iget v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->t:I

    iput v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->i:I

    iget-object v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/utils/a;->l(Landroid/content/Context;)I

    move-result v0

    iget v1, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->u:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->j:I

    return-void
.end method

.method public initView(Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->b:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/avery/subtitle/widget/TracksSubtitleView;->g()I

    move-result v0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->q:Landroid/view/View;

    sget v1, Lcom/avery/subtitle/R$id;->subtitle_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avery/subtitle/widget/SubtitleTextView;

    iput-object v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->c:Lcom/avery/subtitle/widget/SubtitleTextView;

    iget-object v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->q:Landroid/view/View;

    sget v1, Lcom/avery/subtitle/R$id;->second_subtitle_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avery/subtitle/widget/SubtitleTextView;

    iput-object v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->d:Lcom/avery/subtitle/widget/SubtitleTextView;

    iget-object v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->q:Landroid/view/View;

    sget v1, Lcom/avery/subtitle/R$id;->drag_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->o:Landroid/view/View;

    iget-object v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->c:Lcom/avery/subtitle/widget/SubtitleTextView;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->m:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->d:Lcom/avery/subtitle/widget/SubtitleTextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->n:Landroid/graphics/drawable/GradientDrawable;

    :cond_0
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/avery/subtitle/widget/TracksSubtitleView$a;

    invoke-direct {v1, p0}, Lcom/avery/subtitle/widget/TracksSubtitleView$a;-><init>(Lcom/avery/subtitle/widget/TracksSubtitleView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->f:Landroid/view/GestureDetector;

    invoke-static {p1}, Lcom/transsion/utils/a;->l(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->g:I

    invoke-static {p1}, Lcom/transsion/utils/a;->m(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->h:I

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {p1, v0}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->t:I

    const/high16 v0, 0x42100000    # 36.0f

    invoke-static {p1, v0}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->u:I

    iget-object p1, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->y:[I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    const/4 v1, 0x0

    aput v0, p1, v1

    iget-object p1, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->y:[I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    aput v0, p1, v2

    invoke-virtual {p0}, Lcom/avery/subtitle/widget/TracksSubtitleView;->initBounds()V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    iput p1, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->v:F

    new-instance p1, Lzva;

    invoke-direct {p1, p0}, Lzva;-><init>(Lcom/avery/subtitle/widget/TracksSubtitleView;)V

    iput-object p1, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->x:Landroid/view/View$OnLayoutChangeListener;

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->x:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->y:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    iget v3, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    aget v2, v0, v4

    iget v5, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v2, v5, :cond_1

    :cond_0
    aput v3, v0, v1

    iget p1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    aput p1, v0, v4

    iget-boolean p1, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->misLandscape:Z

    invoke-virtual {p0, p1}, Lcom/avery/subtitle/widget/TracksSubtitleView;->convertTranslationY(Z)V

    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->x:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public onSubtitleSingleTapUp()V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->mIsLockMode:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->f:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    sget-boolean v0, Lcom/avery/subtitle/widget/TracksSubtitleView;->A:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->e:F

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/avery/subtitle/widget/TracksSubtitleView;->e(F)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/avery/subtitle/widget/TracksSubtitleView;->getTranslationY()F

    move-result v1

    add-float/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/avery/subtitle/widget/TracksSubtitleView;->setTranslationY(F)V

    invoke-virtual {p0}, Lcom/avery/subtitle/widget/TracksSubtitleView;->getTranslationY()F

    move-result v1

    add-float/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/avery/subtitle/widget/TracksSubtitleView;->setOriginY(F)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->z:F

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->z:F

    invoke-virtual {p0}, Lcom/avery/subtitle/widget/TracksSubtitleView;->h()V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->e:F

    :cond_5
    :goto_0
    return v2
.end method

.method public resetLocationY()V
    .locals 2

    const-string v0, "TracksSubtitleView"

    const-string v1, " resetLocationY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/avery/subtitle/widget/TracksSubtitleView;->setTranslationY(F)V

    return-void
.end method

.method public resetTracks()V
    .locals 1

    iget-object v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->c:Lcom/avery/subtitle/widget/SubtitleTextView;

    invoke-virtual {v0}, Lcom/avery/subtitle/widget/SubtitleTextView;->reset()V

    iget-object p0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->d:Lcom/avery/subtitle/widget/SubtitleTextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/avery/subtitle/widget/SubtitleTextView;->reset()V

    :cond_0
    return-void
.end method

.method public restartTracks()V
    .locals 1

    iget-object v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->c:Lcom/avery/subtitle/widget/SubtitleTextView;

    invoke-virtual {v0}, Lcom/avery/subtitle/widget/SubtitleTextView;->start()V

    iget-object p0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->d:Lcom/avery/subtitle/widget/SubtitleTextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/avery/subtitle/widget/SubtitleTextView;->start()V

    :cond_0
    return-void
.end method

.method public setDragListener(Lcom/avery/subtitle/widget/TracksSubtitleView$b;)V
    .locals 0

    iput-object p1, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->p:Lcom/avery/subtitle/widget/TracksSubtitleView$b;

    return-void
.end method

.method public setFirstTrackDelay(J)V
    .locals 0

    iget-object p0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->c:Lcom/avery/subtitle/widget/SubtitleTextView;

    invoke-virtual {p0, p1, p2}, Lcom/avery/subtitle/widget/SubtitleTextView;->setSubtitleDelayMs(J)V

    return-void
.end method

.method public setFirstTrackSubtitle(Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->path:Ljava/lang/String;

    :goto_0
    if-eqz p1, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "NULL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->c:Lcom/avery/subtitle/widget/SubtitleTextView;

    invoke-virtual {p1, v1}, Lcom/avery/subtitle/widget/SubtitleTextView;->setSubtitlePath(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->c:Lcom/avery/subtitle/widget/SubtitleTextView;

    invoke-virtual {p1}, Lcom/avery/subtitle/widget/SubtitleTextView;->start()V

    iput-object v1, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->r:Ljava/lang/String;

    goto :goto_2

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->c:Lcom/avery/subtitle/widget/SubtitleTextView;

    const-string v1, ""

    invoke-virtual {p1, v1}, Lcom/avery/subtitle/widget/SubtitleTextView;->onSubtitleText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->c:Lcom/avery/subtitle/widget/SubtitleTextView;

    invoke-virtual {p1}, Lcom/avery/subtitle/widget/SubtitleTextView;->reset()V

    iput-object v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->r:Ljava/lang/String;

    :goto_2
    return-void
.end method

.method public setLayoutGravity(I)V
    .locals 0

    return-void
.end method

.method public setOriginY(F)V
    .locals 0

    iput p1, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->k:F

    return-void
.end method

.method public setPictureInPictureMode(Z)V
    .locals 4

    iput-boolean p1, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->mIsPipMode:Z

    const-string v0, "LayoutParams"

    const-string v1, "TracksSubtitleView"

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->c:Lcom/avery/subtitle/widget/SubtitleTextView;

    sget v2, Lcom/avery/subtitle/R$drawable;->background_subtitle_pip:I

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->d:Lcom/avery/subtitle/widget/SubtitleTextView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p1, p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_5

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/avery/subtitle/R$dimen;->subtitle_text_padding_horizontal_pip:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    const-string p1, "Failed to get PiP margin dimension"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_1
    iget-object p1, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->c:Lcom/avery/subtitle/widget/SubtitleTextView;

    iget-object v2, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->m:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->d:Lcom/avery/subtitle/widget/SubtitleTextView;

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->n:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p1, p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_5

    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-boolean v3, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->misLandscape:Z

    if-eqz v3, :cond_3

    sget v3, Lcom/avery/subtitle/R$dimen;->subtitle_text_padding_horizontal_land:I

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_3
    sget v3, Lcom/avery/subtitle/R$dimen;->subtitle_text_padding_horizontal:I

    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-boolean v3, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->misLandscape:Z

    if-eqz v3, :cond_4

    sget v3, Lcom/avery/subtitle/R$dimen;->subtitle_text_padding_horizontal_land:I

    goto :goto_1

    :cond_4
    sget v3, Lcom/avery/subtitle/R$dimen;->subtitle_text_padding_horizontal:I

    :goto_1
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :goto_2
    const-string p1, "Failed to get normal margin dimension"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_3
    return-void
.end method

.method public setSecondTrackDelay(J)V
    .locals 0

    iget-object p0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->d:Lcom/avery/subtitle/widget/SubtitleTextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/avery/subtitle/widget/SubtitleTextView;->setSubtitleDelayMs(J)V

    :cond_0
    return-void
.end method

.method public setSecondTrackSubtitle(Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->d:Lcom/avery/subtitle/widget/SubtitleTextView;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->path:Ljava/lang/String;

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "NULL"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->d:Lcom/avery/subtitle/widget/SubtitleTextView;

    invoke-virtual {v0, p1}, Lcom/avery/subtitle/widget/SubtitleTextView;->setSubtitlePath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->d:Lcom/avery/subtitle/widget/SubtitleTextView;

    invoke-virtual {v0}, Lcom/avery/subtitle/widget/SubtitleTextView;->start()V

    iput-object p1, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->s:Ljava/lang/String;

    goto :goto_2

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->d:Lcom/avery/subtitle/widget/SubtitleTextView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->d:Lcom/avery/subtitle/widget/SubtitleTextView;

    invoke-virtual {p1}, Lcom/avery/subtitle/widget/SubtitleTextView;->reset()V

    iput-object v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->s:Ljava/lang/String;

    :cond_3
    :goto_2
    return-void
.end method

.method public setSettingDrag(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->l:Z

    iput-boolean p2, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->mIsLockMode:Z

    if-nez p1, :cond_0

    sget-boolean p1, Lcom/avery/subtitle/widget/TracksSubtitleView;->A:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/avery/subtitle/widget/TracksSubtitleView;->h()V

    :cond_0
    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    iget-object v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->c:Lcom/avery/subtitle/widget/SubtitleTextView;

    invoke-virtual {v0, p1}, Lcom/avery/subtitle/widget/SubtitleTextView;->setSpeed(F)V

    iget-object p0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->d:Lcom/avery/subtitle/widget/SubtitleTextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/avery/subtitle/widget/SubtitleTextView;->setSpeed(F)V

    :cond_0
    return-void
.end method

.method public setTextAlignment(I)V
    .locals 1

    iget-object v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->c:Lcom/avery/subtitle/widget/SubtitleTextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTextAlignment(I)V

    iget-object p0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->d:Lcom/avery/subtitle/widget/SubtitleTextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTextAlignment(I)V

    :cond_0
    return-void
.end method

.method public setTextAppearance(I)V
    .locals 1

    iget-object v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->c:Lcom/avery/subtitle/widget/SubtitleTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object p0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->d:Lcom/avery/subtitle/widget/SubtitleTextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_0
    return-void
.end method

.method public setTextBackground(I)V
    .locals 2

    iget-object v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->m:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->c:Lcom/avery/subtitle/widget/SubtitleTextView;

    iget-object v1, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->m:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->n:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_1
    iget-object p1, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->d:Lcom/avery/subtitle/widget/SubtitleTextView;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->n:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->c:Lcom/avery/subtitle/widget/SubtitleTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->d:Lcom/avery/subtitle/widget/SubtitleTextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setTextSize(F)V
    .locals 2

    iget-object v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->c:Lcom/avery/subtitle/widget/SubtitleTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->d:Lcom/avery/subtitle/widget/SubtitleTextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method public setTranslationY(F)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setTranslationY translationY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TracksSubtitleView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->mIsPipMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p1, v1

    :cond_0
    invoke-virtual {p0}, Lcom/avery/subtitle/widget/TracksSubtitleView;->getTranslationY()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_2

    invoke-super {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->i:I

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->j:I

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    div-float/2addr p1, v0

    goto :goto_0

    :cond_1
    div-float/2addr p1, v2

    :goto_0
    iput p1, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->w:F

    :cond_2
    return-void
.end method

.method public updateSubtitleViewForWindowChange(Lwoc;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSubtitleViewForWindowChange "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TracksSubtitleView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p1, Lwoc;->c:Z

    iget-boolean v1, p1, Lwoc;->d:Z

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->mIsMultipleWindow:Z

    iget-boolean p1, p1, Lwoc;->g:Z

    iput-boolean p1, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->misLandscape:Z

    invoke-virtual {p0}, Lcom/avery/subtitle/widget/TracksSubtitleView;->initBounds()V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p1, p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-boolean v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->misLandscape:Z

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->mIsMultipleWindow:Z

    if-nez v1, :cond_2

    sget v0, Lcom/avery/subtitle/R$dimen;->subtitle_text_padding_horizontal_land:I

    goto :goto_2

    :cond_2
    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->mIsPipMode:Z

    if-eqz v0, :cond_3

    sget v0, Lcom/avery/subtitle/R$dimen;->subtitle_text_padding_horizontal_pip:I

    goto :goto_2

    :cond_3
    sget v0, Lcom/avery/subtitle/R$dimen;->subtitle_text_padding_horizontal:I

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    iget-boolean p1, p0, Lcom/avery/subtitle/widget/TracksSubtitleView;->misLandscape:Z

    invoke-virtual {p0, p1}, Lcom/avery/subtitle/widget/TracksSubtitleView;->convertTranslationY(Z)V

    return-void
.end method
