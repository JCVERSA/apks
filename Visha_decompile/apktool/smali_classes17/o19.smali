.class public final Lo19;
.super Landroid/transition/Visibility;
.source "SourceFile"


# instance fields
.field public final b:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    iput p1, p0, Lo19;->b:F

    return-void
.end method


# virtual methods
.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 3

    const-string p1, "view"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "startValues"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "endValues"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    iget p3, p0, Lo19;->b:F

    invoke-virtual {p2}, Landroid/view/View;->getScaleX()F

    move-result p4

    const/4 v0, 0x2

    new-array v1, v0, [F

    const/4 v2, 0x0

    aput p3, v1, v2

    const/4 p3, 0x1

    aput p4, v1, p3

    invoke-static {p1, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    sget-object p4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    iget p0, p0, Lo19;->b:F

    invoke-virtual {p2}, Landroid/view/View;->getScaleY()F

    move-result v1

    new-array v0, v0, [F

    aput p0, v0, v2

    aput v1, v0, p3

    invoke-static {p4, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    filled-new-array {p1, p0}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-string p1, "ofPropertyValuesHolder(\n\u2026Y\n            )\n        )"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 3

    const-string p1, "view"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "startValues"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "endValues"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual {p2}, Landroid/view/View;->getScaleX()F

    move-result p3

    iget p4, p0, Lo19;->b:F

    const/4 v0, 0x2

    new-array v1, v0, [F

    const/4 v2, 0x0

    aput p3, v1, v2

    const/4 p3, 0x1

    aput p4, v1, p3

    invoke-static {p1, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    sget-object p4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual {p2}, Landroid/view/View;->getScaleY()F

    move-result v1

    iget p0, p0, Lo19;->b:F

    new-array v0, v0, [F

    aput v1, v0, v2

    aput p0, v0, p3

    invoke-static {p4, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    filled-new-array {p1, p0}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-string p1, "ofPropertyValuesHolder(\n\u2026r\n            )\n        )"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
