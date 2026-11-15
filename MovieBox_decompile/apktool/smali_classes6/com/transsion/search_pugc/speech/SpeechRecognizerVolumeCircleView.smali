.class public final Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;
.super Landroid/view/View;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView$MicState;,
        Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0015\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001LB\u001d\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000fH\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u000cH\u0014\u00a2\u0006\u0004\u0008\u0013\u0010\u000eJ\u0015\u0010\u0016\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0015\u0010\u0019\u001a\u00020\u000c2\u0006\u0010\u0018\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0015\u0010\u001c\u001a\u00020\u000c2\u0006\u0010\u001b\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u001c\u0010\u001aJ\u0015\u0010\u001f\u001a\u00020\u000c2\u0006\u0010\u001e\u001a\u00020\u001d\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0015\u0010\"\u001a\u00020\u000c2\u0006\u0010!\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\"\u0010\u001aJ\u0015\u0010%\u001a\u00020\u000c2\u0006\u0010$\u001a\u00020#\u00a2\u0006\u0004\u0008%\u0010&J\u0015\u0010\'\u001a\u00020\u000c2\u0006\u0010\u001b\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\'\u0010\u001aR\u0016\u0010*\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010)R\u0016\u0010-\u001a\u00020+8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\n\u0010,R\u0016\u0010/\u001a\u00020+8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008.\u0010,R\u0016\u00101\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u00100R\u0016\u00104\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00082\u00103R\u0016\u00108\u001a\u0002058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00086\u00107R\u0016\u0010:\u001a\u0002058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00089\u00107R\u0016\u0010=\u001a\u00020#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008;\u0010<R\u0014\u0010?\u001a\u0002058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008>\u00107R\u0014\u0010A\u001a\u0002058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008@\u00107R\u0014\u0010E\u001a\u00020B8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008C\u0010DR\u0014\u0010G\u001a\u00020B8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008F\u0010DR\u0014\u0010K\u001a\u00020H8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008I\u0010J\u00a8\u0006M"
    }
    d2 = {
        "Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;",
        "Landroid/view/View;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "dp",
        "b",
        "(I)I",
        "",
        "d",
        "()V",
        "Landroid/graphics/Canvas;",
        "canvas",
        "onDraw",
        "(Landroid/graphics/Canvas;)V",
        "onDetachedFromWindow",
        "Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView$MicState;",
        "state",
        "setMicState",
        "(Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView$MicState;)V",
        "color",
        "setActiveCircleColor",
        "(I)V",
        "widthDp",
        "setActiveStrokeWidth",
        "",
        "duration",
        "setActiveAnimationDuration",
        "(J)V",
        "size",
        "setMicIconSize",
        "",
        "colors",
        "setLoadingGradientColors",
        "([I)V",
        "setLoadingStrokeWidth",
        "a",
        "Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView$MicState;",
        "mMicState",
        "",
        "F",
        "mActiveAnnulusRadius",
        "c",
        "mLoadingAngle",
        "J",
        "mActiveAnimationDuration",
        "e",
        "I",
        "mMicIconSize",
        "Landroid/graphics/Bitmap;",
        "f",
        "Landroid/graphics/Bitmap;",
        "mScaledMicIconNormal",
        "g",
        "mScaledMicIconActive",
        "h",
        "[I",
        "mLoadingGradientColors",
        "i",
        "mMicIconNormal",
        "j",
        "mMicIconActive",
        "Landroid/graphics/Paint;",
        "k",
        "Landroid/graphics/Paint;",
        "mActivePaint",
        "l",
        "mLoadingPaint",
        "Landroid/animation/ValueAnimator;",
        "m",
        "Landroid/animation/ValueAnimator;",
        "mActiveRadiusAnimator",
        "MicState",
        "Search_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private a:Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView$MicState;

.field private b:F

.field private c:F

.field private d:J

.field private e:I

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/graphics/Bitmap;

.field private h:[I

.field private final i:Landroid/graphics/Bitmap;

.field private final j:Landroid/graphics/Bitmap;

.field private final k:Landroid/graphics/Paint;

.field private final l:Landroid/graphics/Paint;

.field private final m:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    sget-object p2, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView$MicState;->NORMAL:Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView$MicState;

    iput-object p2, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->a:Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView$MicState;

    const-wide/16 v0, 0x3e8

    .line 5
    iput-wide v0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->d:J

    const/16 p2, 0x50

    .line 6
    invoke-direct {p0, p2}, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->b(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->e:I

    .line 7
    const-string p2, "#2166E5"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    const-string v0, "#1DD171"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    filled-new-array {p2, v0}, [I

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->h:[I

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/search/R$mipmap;->sr_icon_normal:I

    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    const-string v0, "decodeResource(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->i:Landroid/graphics/Bitmap;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/search/R$mipmap;->sr_icon_active:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->j:Landroid/graphics/Bitmap;

    .line 10
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/high16 v2, -0x10000

    .line 11
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 p1, 0x1

    .line 14
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 15
    iput-object v0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->k:Landroid/graphics/Paint;

    .line 16
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 17
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v2, 0x2

    .line 18
    invoke-direct {p0, v2}, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->b(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 19
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 20
    iput-object v0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->l:Landroid/graphics/Paint;

    .line 21
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 22
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 23
    new-instance v2, Lcom/transsion/search_pugc/speech/p;

    invoke-direct {v2, p0}, Lcom/transsion/search_pugc/speech/p;-><init>(Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 24
    iput-object v0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->m:Landroid/animation/ValueAnimator;

    .line 25
    iget v0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->e:I

    invoke-static {p2, v0, v0, p1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    const-string v0, "createScaledBitmap(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p2, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->f:Landroid/graphics/Bitmap;

    .line 27
    iget p2, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->e:I

    invoke-static {v1, p2, p2, p1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->g:Landroid/graphics/Bitmap;

    .line 29
    iget-object p1, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->h:[I

    invoke-virtual {p0, p1}, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->setLoadingGradientColors([I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->c(Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;Landroid/animation/ValueAnimator;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final b(I)I
    .locals 2

    .line 1
    int-to-float p1, p1

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    float-to-int p1, p1

    .line 20
    return p1
.end method

.method private static final c(Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;Landroid/animation/ValueAnimator;)V
    .locals 9

    .line 1
    const-string v0, "animation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "null cannot be cast to non-null type kotlin.Float"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    check-cast v0, Ljava/lang/Float;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iput v0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->b:F

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    iget-object v0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->k:Landroid/graphics/Paint;

    .line 28
    .line 29
    float-to-double v1, p1

    .line 30
    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    .line 31
    .line 32
    cmpg-double p1, v1, v3

    .line 33
    .line 34
    const/16 v5, 0xff

    .line 35
    .line 36
    if-gtz p1, :cond_0

    .line 37
    .line 38
    int-to-double v5, v5

    .line 39
    const/4 p1, 0x1

    .line 40
    int-to-double v7, p1

    .line 41
    mul-double/2addr v1, v3

    .line 42
    sub-double/2addr v7, v1

    .line 43
    mul-double/2addr v5, v7

    .line 44
    :goto_0
    double-to-int p1, v5

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    int-to-double v5, v5

    .line 47
    sub-double/2addr v1, v3

    .line 48
    mul-double/2addr v1, v3

    .line 49
    sub-double/2addr v3, v1

    .line 50
    mul-double/2addr v5, v3

    .line 51
    goto :goto_0

    .line 52
    :goto_1
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method private final d()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->e:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    div-int/2addr v0, v1

    .line 5
    int-to-float v0, v0

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    div-int/2addr v2, v1

    .line 19
    int-to-float v2, v2

    .line 20
    iget-object v3, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->k:Landroid/graphics/Paint;

    .line 21
    .line 22
    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    int-to-float v4, v1

    .line 27
    div-float/2addr v3, v4

    .line 28
    sub-float/2addr v2, v3

    .line 29
    iget-object v3, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->m:Landroid/animation/ValueAnimator;

    .line 30
    .line 31
    new-array v1, v1, [F

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    aput v0, v1, v4

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    aput v2, v1, v0

    .line 38
    .line 39
    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->m:Landroid/animation/ValueAnimator;

    .line 43
    .line 44
    iget-wide v1, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->d:J

    .line 45
    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->m:Landroid/animation/ValueAnimator;

    .line 50
    .line 51
    const/4 v1, -0x1

    .line 52
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->m:Landroid/animation/ValueAnimator;

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 58
    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->m:Landroid/animation/ValueAnimator;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    const-string v0, "canvas"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->a:Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView$MicState;

    .line 10
    .line 11
    sget-object v1, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView$a;->a:[I

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    aget v0, v1, v0

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    const/4 v2, 0x2

    .line 21
    if-eq v0, v1, :cond_1

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    if-eq v0, v2, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->f:Landroid/graphics/Bitmap;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    iget v4, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->e:I

    .line 33
    .line 34
    sub-int/2addr v3, v4

    .line 35
    div-int/2addr v3, v2

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    iget v5, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->e:I

    .line 41
    .line 42
    sub-int/2addr v4, v5

    .line 43
    div-int/2addr v4, v2

    .line 44
    int-to-float v2, v3

    .line 45
    int-to-float v3, v4

    .line 46
    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->g:Landroid/graphics/Bitmap;

    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    iget v4, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->e:I

    .line 57
    .line 58
    sub-int/2addr v3, v4

    .line 59
    div-int/2addr v3, v2

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    iget v5, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->e:I

    .line 65
    .line 66
    sub-int/2addr v4, v5

    .line 67
    div-int/2addr v4, v2

    .line 68
    div-int/lit8 v6, v5, 0x2

    .line 69
    .line 70
    add-int/2addr v6, v3

    .line 71
    int-to-float v6, v6

    .line 72
    div-int/2addr v5, v2

    .line 73
    add-int/2addr v5, v4

    .line 74
    int-to-float v2, v5

    .line 75
    iget v5, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->b:F

    .line 76
    .line 77
    iget-object v7, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->k:Landroid/graphics/Paint;

    .line 78
    .line 79
    invoke-virtual {p1, v6, v2, v5, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 80
    .line 81
    .line 82
    int-to-float v2, v3

    .line 83
    int-to-float v3, v4

    .line 84
    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    div-int/2addr v0, v2

    .line 93
    int-to-float v0, v0

    .line 94
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    div-int/2addr v1, v2

    .line 99
    int-to-float v1, v1

    .line 100
    iget v3, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->e:I

    .line 101
    .line 102
    div-int/2addr v3, v2

    .line 103
    int-to-float v2, v3

    .line 104
    sub-float v4, v0, v2

    .line 105
    .line 106
    sub-float v5, v1, v2

    .line 107
    .line 108
    add-float v6, v0, v2

    .line 109
    .line 110
    add-float v7, v1, v2

    .line 111
    .line 112
    iget v8, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->c:F

    .line 113
    .line 114
    const/4 v10, 0x0

    .line 115
    iget-object v11, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->l:Landroid/graphics/Paint;

    .line 116
    .line 117
    const/high16 v9, 0x43870000    # 270.0f

    .line 118
    .line 119
    move-object v3, p1

    .line 120
    invoke-virtual/range {v3 .. v11}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 121
    .line 122
    .line 123
    iget p1, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->c:F

    .line 124
    .line 125
    const/high16 v0, 0x40a00000    # 5.0f

    .line 126
    .line 127
    add-float/2addr p1, v0

    .line 128
    iput p1, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->c:F

    .line 129
    .line 130
    const/high16 v0, 0x43b40000    # 360.0f

    .line 131
    .line 132
    cmpl-float p1, p1, v0

    .line 133
    .line 134
    if-lez p1, :cond_2

    .line 135
    .line 136
    const/4 p1, 0x0

    .line 137
    iput p1, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->c:F

    .line 138
    .line 139
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 140
    .line 141
    .line 142
    :goto_0
    return-void
.end method

.method public final setActiveAnimationDuration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->d:J

    .line 2
    .line 3
    return-void
.end method

.method public final setActiveCircleColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->k:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final setActiveStrokeWidth(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->k:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->b(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    int-to-float p1, p1

    .line 8
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final setLoadingGradientColors([I)V
    .locals 6

    .line 1
    const-string v0, "colors"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->h:[I

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    div-int/lit8 v0, v0, 0x2

    .line 13
    .line 14
    int-to-float v0, v0

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    div-int/lit8 v1, v1, 0x2

    .line 20
    .line 21
    int-to-float v1, v1

    .line 22
    iget-object v2, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->l:Landroid/graphics/Paint;

    .line 23
    .line 24
    new-instance v3, Landroid/graphics/SweepGradient;

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    aget v4, p1, v4

    .line 28
    .line 29
    const/4 v5, 0x1

    .line 30
    aget p1, p1, v5

    .line 31
    .line 32
    filled-new-array {v4, p1, p1, v4}, [I

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const/4 v4, 0x4

    .line 37
    new-array v4, v4, [F

    .line 38
    .line 39
    fill-array-data v4, :array_0

    .line 40
    .line 41
    .line 42
    invoke-direct {v3, v0, v1, p1, v4}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    nop

    .line 53
    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final setLoadingStrokeWidth(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->l:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->b(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    int-to-float p1, p1

    .line 8
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final setMicIconSize(I)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->b(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput p1, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->e:I

    .line 6
    .line 7
    iget-object v0, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->i:Landroid/graphics/Bitmap;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-static {v0, p1, p1, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v0, "createScaledBitmap(...)"

    .line 15
    .line 16
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->f:Landroid/graphics/Bitmap;

    .line 20
    .line 21
    iget-object p1, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->j:Landroid/graphics/Bitmap;

    .line 22
    .line 23
    iget v2, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->e:I

    .line 24
    .line 25
    invoke-static {p1, v2, v2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->g:Landroid/graphics/Bitmap;

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final setMicState(Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView$MicState;)V
    .locals 1

    .line 1
    const-string v0, "state"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->a:Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView$MicState;

    .line 7
    .line 8
    sget-object v0, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView$MicState;->ACTIVE:Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView$MicState;

    .line 9
    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->d()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/transsion/search_pugc/speech/SpeechRecognizerVolumeCircleView;->m:Landroid/animation/ValueAnimator;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 22
    .line 23
    .line 24
    return-void
.end method
