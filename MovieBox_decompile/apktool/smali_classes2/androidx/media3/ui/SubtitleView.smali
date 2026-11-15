.class public final Landroidx/media3/ui/SubtitleView;
.super Landroid/widget/FrameLayout;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/ui/SubtitleView$a;
    }
.end annotation


# static fields
.field public static final DEFAULT_BOTTOM_PADDING_FRACTION:F = 0.08f

.field public static final DEFAULT_TEXT_SIZE_FRACTION:F = 0.0533f

.field public static final VIEW_TYPE_CANVAS:I = 0x1

.field public static final VIEW_TYPE_WEB:I = 0x2


# instance fields
.field private a:Ljava/util/List;

.field private b:Landroidx/media3/ui/b;

.field private c:I

.field private d:F

.field private e:F

.field private f:Z

.field private g:Z

.field private h:I

.field private i:Landroidx/media3/ui/SubtitleView$a;

.field private j:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/media3/ui/SubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Landroidx/media3/ui/SubtitleView;->a:Ljava/util/List;

    .line 4
    sget-object p2, Landroidx/media3/ui/b;->g:Landroidx/media3/ui/b;

    iput-object p2, p0, Landroidx/media3/ui/SubtitleView;->b:Landroidx/media3/ui/b;

    const/4 p2, 0x0

    .line 5
    iput p2, p0, Landroidx/media3/ui/SubtitleView;->c:I

    const p2, 0x3d5a511a    # 0.0533f

    .line 6
    iput p2, p0, Landroidx/media3/ui/SubtitleView;->d:F

    const p2, 0x3da3d70a    # 0.08f

    .line 7
    iput p2, p0, Landroidx/media3/ui/SubtitleView;->e:F

    const/4 p2, 0x1

    .line 8
    iput-boolean p2, p0, Landroidx/media3/ui/SubtitleView;->f:Z

    .line 9
    iput-boolean p2, p0, Landroidx/media3/ui/SubtitleView;->g:Z

    .line 10
    new-instance v0, Landroidx/media3/ui/a;

    invoke-direct {v0, p1}, Landroidx/media3/ui/a;-><init>(Landroid/content/Context;)V

    .line 11
    iput-object v0, p0, Landroidx/media3/ui/SubtitleView;->i:Landroidx/media3/ui/SubtitleView$a;

    .line 12
    iput-object v0, p0, Landroidx/media3/ui/SubtitleView;->j:Landroid/view/View;

    .line 13
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 14
    iput p2, p0, Landroidx/media3/ui/SubtitleView;->h:I

    return-void
.end method

.method private a(Lu1/a;)Lu1/a;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lu1/a;->a()Lu1/a$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-boolean v0, p0, Landroidx/media3/ui/SubtitleView;->f:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Landroidx/media3/ui/x0;->e(Lu1/a$b;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-boolean v0, p0, Landroidx/media3/ui/SubtitleView;->g:Z

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-static {p1}, Landroidx/media3/ui/x0;->f(Lu1/a$b;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lu1/a$b;->a()Lu1/a;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method private b(IF)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/ui/SubtitleView;->c:I

    .line 2
    .line 3
    iput p2, p0, Landroidx/media3/ui/SubtitleView;->d:F

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/media3/ui/SubtitleView;->c()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private c()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/SubtitleView;->i:Landroidx/media3/ui/SubtitleView$a;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/ui/SubtitleView;->getCuesWithStylingPreferencesApplied()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Landroidx/media3/ui/SubtitleView;->b:Landroidx/media3/ui/b;

    .line 8
    .line 9
    iget v3, p0, Landroidx/media3/ui/SubtitleView;->d:F

    .line 10
    .line 11
    iget v4, p0, Landroidx/media3/ui/SubtitleView;->c:I

    .line 12
    .line 13
    iget v5, p0, Landroidx/media3/ui/SubtitleView;->e:F

    .line 14
    .line 15
    invoke-interface/range {v0 .. v5}, Landroidx/media3/ui/SubtitleView$a;->a(Ljava/util/List;Landroidx/media3/ui/b;FIF)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private getCuesWithStylingPreferencesApplied()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lu1/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/media3/ui/SubtitleView;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/media3/ui/SubtitleView;->g:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/media3/ui/SubtitleView;->a:Ljava/util/List;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/media3/ui/SubtitleView;->a:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    :goto_0
    iget-object v2, p0, Landroidx/media3/ui/SubtitleView;->a:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-ge v1, v2, :cond_1

    .line 31
    .line 32
    iget-object v2, p0, Landroidx/media3/ui/SubtitleView;->a:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lu1/a;

    .line 39
    .line 40
    invoke-direct {p0, v2}, Landroidx/media3/ui/SubtitleView;->a(Lu1/a;)Lu1/a;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    return-object v0
.end method

.method private getUserCaptionFontScale()F
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v2, "captioning"

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    :cond_1
    return v1
.end method

.method private getUserCaptionStyle()Landroidx/media3/ui/b;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Landroidx/media3/ui/b;->g:Landroidx/media3/ui/b;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "captioning"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Landroidx/media3/ui/b;->a(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Landroidx/media3/ui/b;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    sget-object v0, Landroidx/media3/ui/b;->g:Landroidx/media3/ui/b;

    .line 40
    .line 41
    :goto_0
    return-object v0
.end method

.method private setView(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ":",
            "Landroidx/media3/ui/SubtitleView$a;",
            ">(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/SubtitleView;->j:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/ui/SubtitleView;->j:Landroid/view/View;

    .line 7
    .line 8
    instance-of v1, v0, Landroidx/media3/ui/b1;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast v0, Landroidx/media3/ui/b1;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/media3/ui/b1;->g()V

    .line 15
    .line 16
    .line 17
    :cond_0
    iput-object p1, p0, Landroidx/media3/ui/SubtitleView;->j:Landroid/view/View;

    .line 18
    .line 19
    move-object v0, p1

    .line 20
    check-cast v0, Landroidx/media3/ui/SubtitleView$a;

    .line 21
    .line 22
    iput-object v0, p0, Landroidx/media3/ui/SubtitleView;->i:Landroidx/media3/ui/SubtitleView$a;

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public setApplyEmbeddedFontSizes(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/ui/SubtitleView;->g:Z

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/ui/SubtitleView;->c()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setApplyEmbeddedStyles(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/ui/SubtitleView;->f:Z

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/ui/SubtitleView;->c()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setBottomPaddingFraction(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/ui/SubtitleView;->e:F

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/ui/SubtitleView;->c()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setCues(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lu1/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    :goto_0
    iput-object p1, p0, Landroidx/media3/ui/SubtitleView;->a:Ljava/util/List;

    .line 9
    .line 10
    invoke-direct {p0}, Landroidx/media3/ui/SubtitleView;->c()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setFixedTextSize(IF)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    const/4 p2, 0x2

    .line 25
    invoke-direct {p0, p2, p1}, Landroidx/media3/ui/SubtitleView;->b(IF)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public setFractionalTextSize(F)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroidx/media3/ui/SubtitleView;->setFractionalTextSize(FZ)V

    return-void
.end method

.method public setFractionalTextSize(FZ)V
    .locals 0

    .line 2
    invoke-direct {p0, p2, p1}, Landroidx/media3/ui/SubtitleView;->b(IF)V

    return-void
.end method

.method public setStyle(Landroidx/media3/ui/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/ui/SubtitleView;->b:Landroidx/media3/ui/b;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/ui/SubtitleView;->c()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setUserDefaultStyle()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/media3/ui/SubtitleView;->getUserCaptionStyle()Landroidx/media3/ui/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Landroidx/media3/ui/SubtitleView;->setStyle(Landroidx/media3/ui/b;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setUserDefaultTextSize()V
    .locals 2

    .line 1
    const v0, 0x3d5a511a    # 0.0533f

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/media3/ui/SubtitleView;->getUserCaptionFontScale()F

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    mul-float/2addr v1, v0

    .line 9
    invoke-virtual {p0, v1}, Landroidx/media3/ui/SubtitleView;->setFractionalTextSize(F)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setViewType(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/ui/SubtitleView;->h:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    if-eq p1, v0, :cond_2

    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    if-ne p1, v0, :cond_1

    .line 11
    .line 12
    new-instance v0, Landroidx/media3/ui/b1;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Landroidx/media3/ui/b1;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v0}, Landroidx/media3/ui/SubtitleView;->setView(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 28
    .line 29
    .line 30
    throw p1

    .line 31
    :cond_2
    new-instance v0, Landroidx/media3/ui/a;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-direct {v0, v1}, Landroidx/media3/ui/a;-><init>(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, v0}, Landroidx/media3/ui/SubtitleView;->setView(Landroid/view/View;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    iput p1, p0, Landroidx/media3/ui/SubtitleView;->h:I

    .line 44
    .line 45
    return-void
.end method
