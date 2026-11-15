.class public final Lcom/yandex/div/core/view2/animations/Fade;
.super Lcom/yandex/div/core/view2/animations/OutlineAwareVisibility;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/view2/animations/Fade$a;,
        Lcom/yandex/div/core/view2/animations/Fade$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0008\u0000\u0018\u0000 \u00172\u00020\u0001:\u0002\u001b\u001dB\u0011\u0012\u0008\u0008\u0003\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\nJ5\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J5\u0010\u0015\u001a\u0004\u0018\u00010\u00122\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0014J!\u0010\u0017\u001a\u00020\u00022\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0016\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J)\u0010\u001b\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001cR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 \u00a8\u0006!"
    }
    d2 = {
        "Lcom/yandex/div/core/view2/animations/Fade;",
        "Lcom/yandex/div/core/view2/animations/OutlineAwareVisibility;",
        "",
        "alpha",
        "<init>",
        "(F)V",
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
        "fallbackValue",
        "c",
        "(Landroidx/transition/TransitionValues;F)F",
        "startAlpha",
        "endAlpha",
        "a",
        "(Landroid/view/View;FF)Landroid/animation/Animator;",
        "b",
        "F",
        "getAlpha",
        "()F",
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
.field public static final c:Lcom/yandex/div/core/view2/animations/Fade$a;


# instance fields
.field public final b:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div/core/view2/animations/Fade$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div/core/view2/animations/Fade$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div/core/view2/animations/Fade;->c:Lcom/yandex/div/core/view2/animations/Fade$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/yandex/div/core/view2/animations/Fade;-><init>(FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/yandex/div/core/view2/animations/OutlineAwareVisibility;-><init>()V

    .line 4
    iput p1, p0, Lcom/yandex/div/core/view2/animations/Fade;->b:F

    return-void
.end method

.method public synthetic constructor <init>(FILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/yandex/div/core/view2/animations/Fade;-><init>(F)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;FF)Landroid/animation/Animator;
    .locals 2

    cmpg-float p0, p2, p3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    sget-object p0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    invoke-static {p1, p0, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    new-instance p2, Lcom/yandex/div/core/view2/animations/Fade$b;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p3

    invoke-direct {p2, p1, p3}, Lcom/yandex/div/core/view2/animations/Fade$b;-><init>(Landroid/view/View;F)V

    invoke-virtual {p0, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p0
.end method

.method public final c(Landroidx/transition/TransitionValues;F)F
    .locals 1

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    if-eqz p1, :cond_0

    const-string v0, "yandex:fade:alpha"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_1

    move-object p0, p1

    check-cast p0, Ljava/lang/Float;

    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p2

    :cond_2
    return p2
.end method

.method public captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 4

    const-string v0, "transitionValues"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/transition/Visibility;->captureEndValues(Landroidx/transition/TransitionValues;)V

    invoke-virtual {p0}, Landroidx/transition/Visibility;->getMode()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "yandex:fade:alpha"

    const-string v3, "transitionValues.values"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-static {v0, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p0, Lcom/yandex/div/core/view2/animations/Fade;->b:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-static {p0, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    new-instance p0, Lcom/yandex/div/core/view2/animations/Fade$captureEndValues$1;

    invoke-direct {p0, p1}, Lcom/yandex/div/core/view2/animations/Fade$captureEndValues$1;-><init>(Landroidx/transition/TransitionValues;)V

    invoke-static {p1, p0}, Lcom/yandex/div/core/view2/animations/UtilsKt;->c(Landroidx/transition/TransitionValues;Le74;)V

    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 4

    const-string v0, "transitionValues"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/transition/Visibility;->captureStartValues(Landroidx/transition/TransitionValues;)V

    invoke-virtual {p0}, Landroidx/transition/Visibility;->getMode()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "yandex:fade:alpha"

    const-string v3, "transitionValues.values"

    if-eq v0, v1, :cond_1

    const/4 p0, 0x2

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-static {p0, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-static {v0, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p0, Lcom/yandex/div/core/view2/animations/Fade;->b:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    new-instance p0, Lcom/yandex/div/core/view2/animations/Fade$captureStartValues$1;

    invoke-direct {p0, p1}, Lcom/yandex/div/core/view2/animations/Fade$captureStartValues$1;-><init>(Landroidx/transition/TransitionValues;)V

    invoke-static {p1, p0}, Lcom/yandex/div/core/view2/animations/UtilsKt;->c(Landroidx/transition/TransitionValues;Le74;)V

    return-void
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 2

    const-string v0, "sceneRoot"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p4, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget v0, p0, Lcom/yandex/div/core/view2/animations/Fade;->b:F

    invoke-virtual {p0, p3, v0}, Lcom/yandex/div/core/view2/animations/Fade;->c(Landroidx/transition/TransitionValues;F)F

    move-result p3

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p4, v0}, Lcom/yandex/div/core/view2/animations/Fade;->c(Landroidx/transition/TransitionValues;F)F

    move-result v0

    iget-object p4, p4, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "yandex:fade:screenPosition"

    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    const-string v1, "null cannot be cast to non-null type kotlin.IntArray"

    invoke-static {p4, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, [I

    invoke-static {p2, p1, p0, p4}, Lcom/yandex/div/core/view2/animations/ViewCopiesKt;->b(Landroid/view/View;Landroid/view/ViewGroup;Landroidx/transition/Transition;[I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, p3, v0}, Lcom/yandex/div/core/view2/animations/Fade;->a(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 2

    const-string v0, "sceneRoot"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p3, v0}, Lcom/yandex/div/core/view2/animations/Fade;->c(Landroidx/transition/TransitionValues;F)F

    move-result v0

    iget v1, p0, Lcom/yandex/div/core/view2/animations/Fade;->b:F

    invoke-virtual {p0, p4, v1}, Lcom/yandex/div/core/view2/animations/Fade;->c(Landroidx/transition/TransitionValues;F)F

    move-result p4

    const-string v1, "yandex:fade:screenPosition"

    invoke-static {p0, p2, p1, p3, v1}, Lcom/yandex/div/core/view2/animations/UtilsKt;->f(Landroidx/transition/Transition;Landroid/view/View;Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, v0, p4}, Lcom/yandex/div/core/view2/animations/Fade;->a(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method
