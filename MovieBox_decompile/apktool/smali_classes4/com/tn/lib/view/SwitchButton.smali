.class public Lcom/tn/lib/view/SwitchButton;
.super Landroid/view/View;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tn/lib/view/SwitchButton$State;,
        Lcom/tn/lib/view/SwitchButton$d;
    }
.end annotation


# instance fields
.field private a:F

.field private b:I

.field private c:I

.field private d:I

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/Paint;

.field private g:I

.field private h:I

.field private i:I

.field private j:F

.field private k:Landroid/graphics/RectF;

.field private l:I

.field private m:Z

.field private n:F

.field private o:Lcom/tn/lib/view/SwitchButton$State;

.field private p:Lcom/tn/lib/view/SwitchButton$d;

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/tn/lib/view/SwitchButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, v0}, Lcom/tn/lib/view/SwitchButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, 0x41200000    # 10.0f

    .line 4
    iput v0, p0, Lcom/tn/lib/view/SwitchButton;->j:F

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/tn/lib/view/SwitchButton;->u:Z

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/tn/lib/widget/R$styleable;->SwitchView:[I

    sget v1, Lcom/tn/lib/widget/R$style;->def_switch_view:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_6

    .line 8
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    .line 9
    sget v1, Lcom/tn/lib/widget/R$styleable;->SwitchView_switch_bg_color:I

    const/high16 v2, -0x1000000

    if-ne v0, v1, :cond_0

    .line 10
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/SwitchButton;->b:I

    goto :goto_1

    .line 11
    :cond_0
    sget v1, Lcom/tn/lib/widget/R$styleable;->SwitchView_switch_ball_color:I

    if-ne v0, v1, :cond_1

    .line 12
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/SwitchButton;->d:I

    goto :goto_1

    .line 13
    :cond_1
    sget v1, Lcom/tn/lib/widget/R$styleable;->SwitchView_switch_checked_bg_color:I

    if-ne v0, v1, :cond_2

    .line 14
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/SwitchButton;->c:I

    goto :goto_1

    .line 15
    :cond_2
    sget v1, Lcom/tn/lib/widget/R$styleable;->SwitchView_switch_radius:I

    if-ne v0, v1, :cond_3

    const/16 v1, 0xa

    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/tn/lib/view/SwitchButton;->j:F

    goto :goto_1

    .line 17
    :cond_3
    sget v1, Lcom/tn/lib/widget/R$styleable;->SwitchView_switch_gradient_start_color:I

    if-ne v0, v1, :cond_4

    .line 18
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/SwitchButton;->s:I

    goto :goto_1

    .line 19
    :cond_4
    sget v1, Lcom/tn/lib/widget/R$styleable;->SwitchView_switch_gradient_end_color:I

    if-ne v0, v1, :cond_5

    .line 20
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/SwitchButton;->t:I

    :cond_5
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 21
    :cond_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 22
    invoke-direct {p0}, Lcom/tn/lib/view/SwitchButton;->i()V

    return-void
.end method

.method static bridge synthetic a(Lcom/tn/lib/view/SwitchButton;)Landroid/graphics/Paint;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tn/lib/view/SwitchButton;->f:Landroid/graphics/Paint;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic b(Lcom/tn/lib/view/SwitchButton;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/tn/lib/view/SwitchButton;->b:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic c(Lcom/tn/lib/view/SwitchButton;F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tn/lib/view/SwitchButton;->n:F

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic d(Lcom/tn/lib/view/SwitchButton;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tn/lib/view/SwitchButton;->b:I

    .line 2
    .line 3
    return-void
.end method

.method private e(IIII)V
    .locals 4

    .line 1
    int-to-float p1, p1

    .line 2
    int-to-float p2, p2

    .line 3
    const/4 v0, 0x2

    .line 4
    new-array v1, v0, [F

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput p1, v1, v2

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    aput p2, v1, p1

    .line 11
    .line 12
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    new-instance v1, Lcom/tn/lib/view/SwitchButton$a;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/tn/lib/view/SwitchButton$a;-><init>(Lcom/tn/lib/view/SwitchButton;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Landroid/animation/ArgbEvaluator;

    .line 25
    .line 26
    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p4

    .line 37
    new-array v3, v0, [Ljava/lang/Object;

    .line 38
    .line 39
    aput-object p3, v3, v2

    .line 40
    .line 41
    aput-object p4, v3, p1

    .line 42
    .line 43
    invoke-static {v1, v3}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    new-instance p4, Lcom/tn/lib/view/SwitchButton$b;

    .line 48
    .line 49
    invoke-direct {p4, p0}, Lcom/tn/lib/view/SwitchButton$b;-><init>(Lcom/tn/lib/view/SwitchButton;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p3, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 53
    .line 54
    .line 55
    new-instance p4, Landroid/animation/AnimatorSet;

    .line 56
    .line 57
    invoke-direct {p4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 58
    .line 59
    .line 60
    new-array v0, v0, [Landroid/animation/Animator;

    .line 61
    .line 62
    aput-object p2, v0, v2

    .line 63
    .line 64
    aput-object p3, v0, p1

    .line 65
    .line 66
    invoke-virtual {p4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 67
    .line 68
    .line 69
    const-wide/16 p1, 0x32

    .line 70
    .line 71
    invoke-virtual {p4, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 72
    .line 73
    .line 74
    new-instance p1, Lcom/tn/lib/view/SwitchButton$c;

    .line 75
    .line 76
    invoke-direct {p1, p0}, Lcom/tn/lib/view/SwitchButton$c;-><init>(Lcom/tn/lib/view/SwitchButton;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p4, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p4}, Landroid/animation/AnimatorSet;->start()V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method private f(IILandroid/graphics/Paint$Style;I)Landroid/graphics/Paint;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    .line 9
    .line 10
    int-to-float p1, p4

    .line 11
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 15
    .line 16
    .line 17
    int-to-float p1, p2

    .line 18
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 22
    .line 23
    .line 24
    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 27
    .line 28
    .line 29
    sget-object p1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 32
    .line 33
    .line 34
    return-object v0
.end method

.method private g(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tn/lib/view/SwitchButton;->e:Landroid/graphics/Paint;

    .line 2
    .line 3
    iget v1, p0, Lcom/tn/lib/view/SwitchButton;->d:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lcom/tn/lib/view/SwitchButton;->n:F

    .line 9
    .line 10
    iget v1, p0, Lcom/tn/lib/view/SwitchButton;->i:I

    .line 11
    .line 12
    int-to-float v1, v1

    .line 13
    iget v2, p0, Lcom/tn/lib/view/SwitchButton;->j:F

    .line 14
    .line 15
    iget-object v3, p0, Lcom/tn/lib/view/SwitchButton;->e:Landroid/graphics/Paint;

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private h(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/tn/lib/view/SwitchButton;->o:Lcom/tn/lib/view/SwitchButton$State;

    .line 2
    .line 3
    sget-object v1, Lcom/tn/lib/view/SwitchButton$State;->OPEN:Lcom/tn/lib/view/SwitchButton$State;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/graphics/Paint;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v9, Landroid/graphics/LinearGradient;

    .line 13
    .line 14
    iget v1, p0, Lcom/tn/lib/view/SwitchButton;->h:I

    .line 15
    .line 16
    int-to-float v4, v1

    .line 17
    iget v6, p0, Lcom/tn/lib/view/SwitchButton;->s:I

    .line 18
    .line 19
    iget v7, p0, Lcom/tn/lib/view/SwitchButton;->t:I

    .line 20
    .line 21
    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x0

    .line 25
    const/4 v5, 0x0

    .line 26
    move-object v1, v9

    .line 27
    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/tn/lib/view/SwitchButton;->k:Landroid/graphics/RectF;

    .line 34
    .line 35
    iget v2, p0, Lcom/tn/lib/view/SwitchButton;->i:I

    .line 36
    .line 37
    int-to-float v3, v2

    .line 38
    int-to-float v2, v2

    .line 39
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/tn/lib/view/SwitchButton;->k:Landroid/graphics/RectF;

    .line 44
    .line 45
    iget v1, p0, Lcom/tn/lib/view/SwitchButton;->i:I

    .line 46
    .line 47
    int-to-float v2, v1

    .line 48
    int-to-float v1, v1

    .line 49
    iget-object v3, p0, Lcom/tn/lib/view/SwitchButton;->f:Landroid/graphics/Paint;

    .line 50
    .line 51
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void
.end method

.method private i()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/tn/lib/view/SwitchButton;->b:I

    .line 2
    .line 3
    iput v0, p0, Lcom/tn/lib/view/SwitchButton;->q:I

    .line 4
    .line 5
    iget v0, p0, Lcom/tn/lib/view/SwitchButton;->c:I

    .line 6
    .line 7
    iput v0, p0, Lcom/tn/lib/view/SwitchButton;->r:I

    .line 8
    .line 9
    iget v0, p0, Lcom/tn/lib/view/SwitchButton;->d:I

    .line 10
    .line 11
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {p0, v0, v2, v1, v2}, Lcom/tn/lib/view/SwitchButton;->f(IILandroid/graphics/Paint$Style;I)Landroid/graphics/Paint;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/tn/lib/view/SwitchButton;->e:Landroid/graphics/Paint;

    .line 19
    .line 20
    iget v0, p0, Lcom/tn/lib/view/SwitchButton;->b:I

    .line 21
    .line 22
    invoke-direct {p0, v0, v2, v1, v2}, Lcom/tn/lib/view/SwitchButton;->f(IILandroid/graphics/Paint$Style;I)Landroid/graphics/Paint;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/tn/lib/view/SwitchButton;->f:Landroid/graphics/Paint;

    .line 27
    .line 28
    sget-object v0, Lcom/tn/lib/view/SwitchButton$State;->CLOSE:Lcom/tn/lib/view/SwitchButton$State;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/tn/lib/view/SwitchButton;->o:Lcom/tn/lib/view/SwitchButton$State;

    .line 31
    .line 32
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/tn/lib/view/SwitchButton;->f:Landroid/graphics/Paint;

    .line 36
    .line 37
    iget v1, p0, Lcom/tn/lib/view/SwitchButton;->b:I

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    .line 41
    .line 42
    sget-object v0, Lzg/h;->a:Lzg/h;

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iget v2, p0, Lcom/tn/lib/view/SwitchButton;->j:F

    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, Lzg/h;->a(Landroid/content/Context;F)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    int-to-float v0, v0

    .line 55
    iput v0, p0, Lcom/tn/lib/view/SwitchButton;->j:F

    .line 56
    .line 57
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tn/lib/view/SwitchButton;->m:Z

    .line 2
    .line 3
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-boolean p1, p0, Lcom/tn/lib/view/SwitchButton;->u:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/tn/lib/view/SwitchButton;->o:Lcom/tn/lib/view/SwitchButton$State;

    .line 7
    .line 8
    sget-object v0, Lcom/tn/lib/view/SwitchButton$State;->CLOSE:Lcom/tn/lib/view/SwitchButton$State;

    .line 9
    .line 10
    if-ne p1, v0, :cond_1

    .line 11
    .line 12
    sget-object p1, Lcom/tn/lib/view/SwitchButton$State;->OPEN:Lcom/tn/lib/view/SwitchButton$State;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    move-object p1, v0

    .line 16
    :goto_0
    iput-object p1, p0, Lcom/tn/lib/view/SwitchButton;->o:Lcom/tn/lib/view/SwitchButton$State;

    .line 17
    .line 18
    if-ne p1, v0, :cond_2

    .line 19
    .line 20
    iget p1, p0, Lcom/tn/lib/view/SwitchButton;->l:I

    .line 21
    .line 22
    iget v0, p0, Lcom/tn/lib/view/SwitchButton;->i:I

    .line 23
    .line 24
    iget v1, p0, Lcom/tn/lib/view/SwitchButton;->r:I

    .line 25
    .line 26
    iget v2, p0, Lcom/tn/lib/view/SwitchButton;->q:I

    .line 27
    .line 28
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/tn/lib/view/SwitchButton;->e(IIII)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    iget p1, p0, Lcom/tn/lib/view/SwitchButton;->i:I

    .line 33
    .line 34
    iget v0, p0, Lcom/tn/lib/view/SwitchButton;->l:I

    .line 35
    .line 36
    iget v1, p0, Lcom/tn/lib/view/SwitchButton;->q:I

    .line 37
    .line 38
    iget v2, p0, Lcom/tn/lib/view/SwitchButton;->r:I

    .line 39
    .line 40
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/tn/lib/view/SwitchButton;->e(IIII)V

    .line 41
    .line 42
    .line 43
    :goto_1
    iget-object p1, p0, Lcom/tn/lib/view/SwitchButton;->p:Lcom/tn/lib/view/SwitchButton$d;

    .line 44
    .line 45
    if-eqz p1, :cond_4

    .line 46
    .line 47
    iget-object v0, p0, Lcom/tn/lib/view/SwitchButton;->o:Lcom/tn/lib/view/SwitchButton$State;

    .line 48
    .line 49
    sget-object v1, Lcom/tn/lib/view/SwitchButton$State;->OPEN:Lcom/tn/lib/view/SwitchButton$State;

    .line 50
    .line 51
    if-ne v0, v1, :cond_3

    .line 52
    .line 53
    const/4 v0, 0x1

    .line 54
    goto :goto_2

    .line 55
    :cond_3
    const/4 v0, 0x0

    .line 56
    :goto_2
    invoke-interface {p1, p0, v0}, Lcom/tn/lib/view/SwitchButton$d;->a(Lcom/tn/lib/view/SwitchButton;Z)V

    .line 57
    .line 58
    .line 59
    :cond_4
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tn/lib/view/SwitchButton;->h(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/tn/lib/view/SwitchButton;->g(Landroid/graphics/Canvas;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/high16 v2, 0x40000000    # 2.0f

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    const/high16 v4, -0x80000000

    .line 16
    .line 17
    if-eq v0, v4, :cond_0

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const/high16 v0, 0x42300000    # 44.0f

    .line 31
    .line 32
    invoke-static {v3, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    float-to-int p1, p1

    .line 37
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    :goto_0
    if-eq v1, v4, :cond_1

    .line 42
    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    const/high16 v0, 0x41c00000    # 24.0f

    .line 55
    .line 56
    invoke-static {v3, v0, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    float-to-int p2, p2

    .line 61
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/tn/lib/view/SwitchButton;->g:I

    .line 2
    .line 3
    iput p1, p0, Lcom/tn/lib/view/SwitchButton;->h:I

    .line 4
    .line 5
    int-to-float p3, p1

    .line 6
    const/high16 p4, 0x3f800000    # 1.0f

    .line 7
    .line 8
    mul-float/2addr p3, p4

    .line 9
    const/high16 p4, 0x41f00000    # 30.0f

    .line 10
    .line 11
    div-float/2addr p3, p4

    .line 12
    iput p3, p0, Lcom/tn/lib/view/SwitchButton;->a:F

    .line 13
    .line 14
    div-int/lit8 p2, p2, 0x2

    .line 15
    .line 16
    iput p2, p0, Lcom/tn/lib/view/SwitchButton;->i:I

    .line 17
    .line 18
    sub-int/2addr p1, p2

    .line 19
    iput p1, p0, Lcom/tn/lib/view/SwitchButton;->l:I

    .line 20
    .line 21
    iget-boolean p3, p0, Lcom/tn/lib/view/SwitchButton;->m:Z

    .line 22
    .line 23
    if-eqz p3, :cond_0

    .line 24
    .line 25
    int-to-float p1, p1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    int-to-float p1, p2

    .line 28
    :goto_0
    iput p1, p0, Lcom/tn/lib/view/SwitchButton;->n:F

    .line 29
    .line 30
    new-instance p1, Landroid/graphics/RectF;

    .line 31
    .line 32
    iget p2, p0, Lcom/tn/lib/view/SwitchButton;->h:I

    .line 33
    .line 34
    int-to-float p2, p2

    .line 35
    iget p3, p0, Lcom/tn/lib/view/SwitchButton;->g:I

    .line 36
    .line 37
    int-to-float p3, p3

    .line 38
    const/4 p4, 0x0

    .line 39
    invoke-direct {p1, p4, p4, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lcom/tn/lib/view/SwitchButton;->k:Landroid/graphics/RectF;

    .line 43
    .line 44
    return-void
.end method

.method public setChecked(Z)V
    .locals 3

    .line 1
    iput-boolean p1, p0, Lcom/tn/lib/view/SwitchButton;->m:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/tn/lib/view/SwitchButton$State;->OPEN:Lcom/tn/lib/view/SwitchButton$State;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lcom/tn/lib/view/SwitchButton$State;->CLOSE:Lcom/tn/lib/view/SwitchButton$State;

    .line 9
    .line 10
    :goto_0
    iget-object v1, p0, Lcom/tn/lib/view/SwitchButton;->o:Lcom/tn/lib/view/SwitchButton$State;

    .line 11
    .line 12
    if-ne v1, v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    iput-object v0, p0, Lcom/tn/lib/view/SwitchButton;->o:Lcom/tn/lib/view/SwitchButton$State;

    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    iget p1, p0, Lcom/tn/lib/view/SwitchButton;->l:I

    .line 20
    .line 21
    if-nez p1, :cond_2

    .line 22
    .line 23
    sget-object p1, Lzg/h;->a:Lzg/h;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/high16 v1, 0x42000000    # 32.0f

    .line 30
    .line 31
    invoke-virtual {p1, v0, v1}, Lzg/h;->a(Landroid/content/Context;F)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    int-to-float p1, p1

    .line 36
    iput p1, p0, Lcom/tn/lib/view/SwitchButton;->n:F

    .line 37
    .line 38
    iget p1, p0, Lcom/tn/lib/view/SwitchButton;->r:I

    .line 39
    .line 40
    iput p1, p0, Lcom/tn/lib/view/SwitchButton;->b:I

    .line 41
    .line 42
    iget-object v0, p0, Lcom/tn/lib/view/SwitchButton;->f:Landroid/graphics/Paint;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    sget-object p1, Lcom/tn/lib/view/SwitchButton$State;->CLOSE:Lcom/tn/lib/view/SwitchButton$State;

    .line 52
    .line 53
    if-ne v0, p1, :cond_3

    .line 54
    .line 55
    iget p1, p0, Lcom/tn/lib/view/SwitchButton;->l:I

    .line 56
    .line 57
    iget v0, p0, Lcom/tn/lib/view/SwitchButton;->i:I

    .line 58
    .line 59
    iget v1, p0, Lcom/tn/lib/view/SwitchButton;->r:I

    .line 60
    .line 61
    iget v2, p0, Lcom/tn/lib/view/SwitchButton;->q:I

    .line 62
    .line 63
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/tn/lib/view/SwitchButton;->e(IIII)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    iget p1, p0, Lcom/tn/lib/view/SwitchButton;->i:I

    .line 68
    .line 69
    iget v0, p0, Lcom/tn/lib/view/SwitchButton;->l:I

    .line 70
    .line 71
    iget v1, p0, Lcom/tn/lib/view/SwitchButton;->q:I

    .line 72
    .line 73
    iget v2, p0, Lcom/tn/lib/view/SwitchButton;->r:I

    .line 74
    .line 75
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/tn/lib/view/SwitchButton;->e(IIII)V

    .line 76
    .line 77
    .line 78
    :goto_1
    iget-object p1, p0, Lcom/tn/lib/view/SwitchButton;->p:Lcom/tn/lib/view/SwitchButton$d;

    .line 79
    .line 80
    if-eqz p1, :cond_5

    .line 81
    .line 82
    iget-object v0, p0, Lcom/tn/lib/view/SwitchButton;->o:Lcom/tn/lib/view/SwitchButton$State;

    .line 83
    .line 84
    sget-object v1, Lcom/tn/lib/view/SwitchButton$State;->OPEN:Lcom/tn/lib/view/SwitchButton$State;

    .line 85
    .line 86
    if-ne v0, v1, :cond_4

    .line 87
    .line 88
    const/4 v0, 0x1

    .line 89
    goto :goto_2

    .line 90
    :cond_4
    const/4 v0, 0x0

    .line 91
    :goto_2
    invoke-interface {p1, p0, v0}, Lcom/tn/lib/view/SwitchButton$d;->a(Lcom/tn/lib/view/SwitchButton;Z)V

    .line 92
    .line 93
    .line 94
    :cond_5
    return-void
.end method

.method public setColor(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput p1, p0, Lcom/tn/lib/view/SwitchButton;->q:I

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iput p1, p0, Lcom/tn/lib/view/SwitchButton;->r:I

    .line 12
    .line 13
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iput p1, p0, Lcom/tn/lib/view/SwitchButton;->d:I

    .line 18
    .line 19
    iget-object p1, p0, Lcom/tn/lib/view/SwitchButton;->e:Landroid/graphics/Paint;

    .line 20
    .line 21
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tn/lib/view/SwitchButton;->u:Z

    .line 2
    .line 3
    return-void
.end method

.method public setGradientColors(IILjava/lang/Integer;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tn/lib/view/SwitchButton;->s:I

    .line 2
    .line 3
    iput p2, p0, Lcom/tn/lib/view/SwitchButton;->t:I

    .line 4
    .line 5
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iput p1, p0, Lcom/tn/lib/view/SwitchButton;->d:I

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/tn/lib/view/SwitchButton$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tn/lib/view/SwitchButton;->p:Lcom/tn/lib/view/SwitchButton$d;

    .line 2
    .line 3
    return-void
.end method
