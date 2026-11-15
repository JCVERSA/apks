.class public final Lcom/yandex/div/core/view2/animations/VerticalTranslation;
.super Lcom/yandex/div/core/view2/animations/OutlineAwareVisibility;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/view2/animations/VerticalTranslation$a;,
        Lcom/yandex/div/core/view2/animations/VerticalTranslation$b;,
        Lcom/yandex/div/core/view2/animations/VerticalTranslation$c;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0000\u0018\u0000 \u001a2\u00020\u0001:\u0003\u001b\u0017\u0019B\u001b\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\u000c\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\u000bJ5\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J5\u0010\u0016\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0015R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0004\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u0018\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/yandex/div/core/view2/animations/VerticalTranslation;",
        "Lcom/yandex/div/core/view2/animations/OutlineAwareVisibility;",
        "",
        "translatedValue",
        "stableValue",
        "<init>",
        "(FF)V",
        "Landroidx/transition/TransitionValues;",
        "transitionValues",
        "Lzfb;",
        "captureStartValues",
        "(Landroidx/transition/TransitionValues;)V",
        "captureEndValues",
        "Landroid/view/ViewGroup;",
        "sceneRoot",
        "Landroid/view/View;",
        "view",
        "startValues",
        "endValues",
        "Landroid/animation/Animator;",
        "onAppear",
        "(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;",
        "onDisappear",
        "b",
        "F",
        "c",
        "d",
        "a",
        "div_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final d:Lcom/yandex/div/core/view2/animations/VerticalTranslation$b;


# instance fields
.field public final b:F

.field public final c:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div/core/view2/animations/VerticalTranslation$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div/core/view2/animations/VerticalTranslation$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div/core/view2/animations/VerticalTranslation;->d:Lcom/yandex/div/core/view2/animations/VerticalTranslation$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Lcom/yandex/div/core/view2/animations/VerticalTranslation;-><init>(FFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/yandex/div/core/view2/animations/OutlineAwareVisibility;-><init>()V

    .line 4
    iput p1, p0, Lcom/yandex/div/core/view2/animations/VerticalTranslation;->b:F

    .line 5
    iput p2, p0, Lcom/yandex/div/core/view2/animations/VerticalTranslation;->c:F

    return-void
.end method

.method public synthetic constructor <init>(FFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/high16 p1, -0x40800000    # -1.0f

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 2
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/yandex/div/core/view2/animations/VerticalTranslation;-><init>(FF)V

    return-void
.end method


# virtual methods
.method public captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 1

    const-string v0, "transitionValues"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/transition/Visibility;->captureEndValues(Landroidx/transition/TransitionValues;)V

    new-instance p0, Lcom/yandex/div/core/view2/animations/VerticalTranslation$captureEndValues$1;

    invoke-direct {p0, p1}, Lcom/yandex/div/core/view2/animations/VerticalTranslation$captureEndValues$1;-><init>(Landroidx/transition/TransitionValues;)V

    invoke-static {p1, p0}, Lcom/yandex/div/core/view2/animations/UtilsKt;->c(Landroidx/transition/TransitionValues;Le74;)V

    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 1

    const-string v0, "transitionValues"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/transition/Visibility;->captureStartValues(Landroidx/transition/TransitionValues;)V

    new-instance p0, Lcom/yandex/div/core/view2/animations/VerticalTranslation$captureStartValues$1;

    invoke-direct {p0, p1}, Lcom/yandex/div/core/view2/animations/VerticalTranslation$captureStartValues$1;-><init>(Landroidx/transition/TransitionValues;)V

    invoke-static {p1, p0}, Lcom/yandex/div/core/view2/animations/UtilsKt;->c(Landroidx/transition/TransitionValues;Le74;)V

    return-void
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 6

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "sceneRoot"

    invoke-static {p1, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "view"

    invoke-static {p2, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p4, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/yandex/div/core/view2/animations/VerticalTranslation;->b:F

    int-to-float v2, v2

    mul-float/2addr v3, v2

    iget v4, p0, Lcom/yandex/div/core/view2/animations/VerticalTranslation;->c:F

    mul-float/2addr v4, v2

    iget-object p4, p4, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "yandex:verticalTranslation:screenPosition"

    invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    const-string v2, "null cannot be cast to non-null type kotlin.IntArray"

    invoke-static {p4, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, [I

    invoke-static {p2, p1, p0, p4}, Lcom/yandex/div/core/view2/animations/ViewCopiesKt;->b(Landroid/view/View;Landroid/view/ViewGroup;Landroidx/transition/Transition;[I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationY(F)V

    new-instance p4, Lcom/yandex/div/core/view2/animations/VerticalTranslation$c;

    invoke-direct {p4, p1}, Lcom/yandex/div/core/view2/animations/VerticalTranslation$c;-><init>(Landroid/view/View;)V

    iget v2, p0, Lcom/yandex/div/core/view2/animations/VerticalTranslation;->b:F

    invoke-virtual {p4, p1, v2}, Lcom/yandex/div/core/view2/animations/VerticalTranslation$c;->b(Landroid/view/View;F)V

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v1, [F

    aput v3, v5, v0

    aput v4, v5, p3

    invoke-static {v2, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    iget v3, p0, Lcom/yandex/div/core/view2/animations/VerticalTranslation;->b:F

    iget p0, p0, Lcom/yandex/div/core/view2/animations/VerticalTranslation;->c:F

    new-array v1, v1, [F

    aput v3, v1, v0

    aput p0, v1, p3

    invoke-static {p4, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    filled-new-array {v2, p0}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    new-instance p1, Lcom/yandex/div/core/view2/animations/VerticalTranslation$a;

    invoke-direct {p1, p2}, Lcom/yandex/div/core/view2/animations/VerticalTranslation$a;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 5

    const/4 p4, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "sceneRoot"

    invoke-static {p1, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "view"

    invoke-static {p2, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget v2, p0, Lcom/yandex/div/core/view2/animations/VerticalTranslation;->c:F

    iget v3, p0, Lcom/yandex/div/core/view2/animations/VerticalTranslation;->b:F

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    const-string v4, "yandex:verticalTranslation:screenPosition"

    invoke-static {p0, p2, p1, p3, v4}, Lcom/yandex/div/core/view2/animations/UtilsKt;->f(Landroidx/transition/Transition;Landroid/view/View;Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    sget-object p3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v1, [F

    aput v2, v4, v0

    aput v3, v4, p4

    invoke-static {p3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p3

    new-instance v2, Lcom/yandex/div/core/view2/animations/VerticalTranslation$c;

    invoke-direct {v2, p2}, Lcom/yandex/div/core/view2/animations/VerticalTranslation$c;-><init>(Landroid/view/View;)V

    iget v3, p0, Lcom/yandex/div/core/view2/animations/VerticalTranslation;->c:F

    iget p0, p0, Lcom/yandex/div/core/view2/animations/VerticalTranslation;->b:F

    new-array v1, v1, [F

    aput v3, v1, v0

    aput p0, v1, p4

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    filled-new-array {p3, p0}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    new-instance p1, Lcom/yandex/div/core/view2/animations/VerticalTranslation$a;

    invoke-direct {p1, p2}, Lcom/yandex/div/core/view2/animations/VerticalTranslation$a;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p0
.end method
