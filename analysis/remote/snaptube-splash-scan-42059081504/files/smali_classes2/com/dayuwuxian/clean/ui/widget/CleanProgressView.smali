.class public final Lcom/dayuwuxian/clean/ui/widget/CleanProgressView;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dayuwuxian/clean/ui/widget/CleanProgressView$a;,
        Lcom/dayuwuxian/clean/ui/widget/CleanProgressView$State;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 \u000f2\u00020\u0001:\u0002\u001d2B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ%\u0010\u000f\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001f\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0017\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0013\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0017\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0018\u0010#\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u001c\u0010(\u001a\n %*\u0004\u0018\u00010$0$8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'R\u0014\u0010*\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010)R\"\u00101\u001a\u00020+8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010,\u001a\u0004\u0008-\u0010.\"\u0004\u0008/\u00100\u00a8\u00063"
    }
    d2 = {
        "Lcom/dayuwuxian/clean/ui/widget/CleanProgressView;",
        "Landroid/widget/FrameLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "",
        "duration",
        "Lkotlin/Function0;",
        "Lo/mg8;",
        "animListener",
        "f",
        "(JLo/bx2;)V",
        "",
        "text",
        "color",
        "setText",
        "(Ljava/lang/String;I)V",
        "Landroid/graphics/drawable/Drawable;",
        "d",
        "(I)Landroid/graphics/drawable/Drawable;",
        "dp",
        "e",
        "(I)I",
        "Landroid/widget/TextView;",
        "a",
        "Landroid/widget/TextView;",
        "tvText",
        "Landroid/widget/ProgressBar;",
        "b",
        "Landroid/widget/ProgressBar;",
        "pbProgress",
        "Landroid/animation/ValueAnimator;",
        "kotlin.jvm.PlatformType",
        "c",
        "Landroid/animation/ValueAnimator;",
        "animator",
        "I",
        "startTextColor",
        "Lcom/dayuwuxian/clean/ui/widget/CleanProgressView$State;",
        "Lcom/dayuwuxian/clean/ui/widget/CleanProgressView$State;",
        "getMState",
        "()Lcom/dayuwuxian/clean/ui/widget/CleanProgressView$State;",
        "setMState",
        "(Lcom/dayuwuxian/clean/ui/widget/CleanProgressView$State;)V",
        "mState",
        "State",
        "clean_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final f:Lcom/dayuwuxian/clean/ui/widget/CleanProgressView$a;


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/ProgressBar;

.field public final c:Landroid/animation/ValueAnimator;

.field public final d:I

.field public e:Lcom/dayuwuxian/clean/ui/widget/CleanProgressView$State;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dayuwuxian/clean/ui/widget/CleanProgressView$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dayuwuxian/clean/ui/widget/CleanProgressView$a;-><init>(Lo/pg1;)V

    sput-object v0, Lcom/dayuwuxian/clean/ui/widget/CleanProgressView;->f:Lcom/dayuwuxian/clean/ui/widget/CleanProgressView$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/dayuwuxian/clean/ui/widget/CleanProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/pg1;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/dayuwuxian/clean/ui/widget/CleanProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/pg1;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    const/16 p3, 0x64

    filled-new-array {p2, p3}, [I

    move-result-object p2

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/dayuwuxian/clean/ui/widget/CleanProgressView;->c:Landroid/animation/ValueAnimator;

    const-string p2, "#3E8BFF"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/dayuwuxian/clean/ui/widget/CleanProgressView;->d:I

    sget-object p2, Lcom/dayuwuxian/clean/ui/widget/CleanProgressView$State;->Start:Lcom/dayuwuxian/clean/ui/widget/CleanProgressView$State;

    iput-object p2, p0, Lcom/dayuwuxian/clean/ui/widget/CleanProgressView;->e:Lcom/dayuwuxian/clean/ui/widget/CleanProgressView$State;

    sget p2, Lcom/dayuwuxian/clean/R$layout;->item_clean_progress:I

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget p1, Lcom/dayuwuxian/clean/R$id;->tv_text:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/dayuwuxian/clean/ui/widget/CleanProgressView;->a:Landroid/widget/TextView;

    sget p1, Lcom/dayuwuxian/clean/R$id;->pb_progress:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/dayuwuxian/clean/ui/widget/CleanProgressView;->b:Landroid/widget/ProgressBar;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/pg1;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/dayuwuxian/clean/ui/widget/CleanProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lcom/dayuwuxian/clean/ui/widget/CleanProgressView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/dayuwuxian/clean/ui/widget/CleanProgressView;->g(Lcom/dayuwuxian/clean/ui/widget/CleanProgressView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic b(Lcom/dayuwuxian/clean/ui/widget/CleanProgressView;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/dayuwuxian/clean/ui/widget/CleanProgressView;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lcom/dayuwuxian/clean/ui/widget/CleanProgressView;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/dayuwuxian/clean/ui/widget/CleanProgressView;->b:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method public static final g(Lcom/dayuwuxian/clean/ui/widget/CleanProgressView;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/dayuwuxian/clean/ui/widget/CleanProgressView;->b:Landroid/widget/ProgressBar;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v0}, Lo/or3;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_0
    return-void
.end method

.method public static synthetic setText$default(Lcom/dayuwuxian/clean/ui/widget/CleanProgressView;Ljava/lang/String;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    iget p2, p0, Lcom/dayuwuxian/clean/ui/widget/CleanProgressView;->d:I

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/dayuwuxian/clean/ui/widget/CleanProgressView;->setText(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final d(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/dayuwuxian/clean/ui/widget/CleanProgressView;->e(I)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method

.method public final e(I)I
    .locals 2

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method public final f(JLo/bx2;)V
    .locals 2

    const-string v0, "animListener"

    invoke-static {p3, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dayuwuxian/clean/ui/widget/CleanProgressView;->e:Lcom/dayuwuxian/clean/ui/widget/CleanProgressView$State;

    sget-object v1, Lcom/dayuwuxian/clean/ui/widget/CleanProgressView$State;->Start:Lcom/dayuwuxian/clean/ui/widget/CleanProgressView$State;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/dayuwuxian/clean/ui/widget/CleanProgressView;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/dayuwuxian/clean/ui/widget/CleanProgressView;->c:Landroid/animation/ValueAnimator;

    new-instance p2, Lo/jr0;

    invoke-direct {p2, p0}, Lo/jr0;-><init>(Lcom/dayuwuxian/clean/ui/widget/CleanProgressView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/dayuwuxian/clean/ui/widget/CleanProgressView;->c:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/dayuwuxian/clean/ui/widget/CleanProgressView$c;

    invoke-direct {p2, p0, p3}, Lcom/dayuwuxian/clean/ui/widget/CleanProgressView$c;-><init>(Lcom/dayuwuxian/clean/ui/widget/CleanProgressView;Lo/bx2;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/dayuwuxian/clean/ui/widget/CleanProgressView;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final getMState()Lcom/dayuwuxian/clean/ui/widget/CleanProgressView$State;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/dayuwuxian/clean/ui/widget/CleanProgressView;->e:Lcom/dayuwuxian/clean/ui/widget/CleanProgressView$State;

    return-object v0
.end method

.method public final setMState(Lcom/dayuwuxian/clean/ui/widget/CleanProgressView$State;)V
    .locals 1
    .param p1    # Lcom/dayuwuxian/clean/ui/widget/CleanProgressView$State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/dayuwuxian/clean/ui/widget/CleanProgressView;->e:Lcom/dayuwuxian/clean/ui/widget/CleanProgressView$State;

    return-void
.end method

.method public final setText(Ljava/lang/String;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "text"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dayuwuxian/clean/ui/widget/CleanProgressView;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/dayuwuxian/clean/ui/widget/CleanProgressView;->a:Landroid/widget/TextView;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, p2}, Lcom/dayuwuxian/clean/ui/widget/CleanProgressView;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/dayuwuxian/clean/ui/widget/CleanProgressView$b;

    invoke-direct {v0, p0, p2}, Lcom/dayuwuxian/clean/ui/widget/CleanProgressView$b;-><init>(Lcom/dayuwuxian/clean/ui/widget/CleanProgressView;I)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :goto_1
    return-void
.end method
