.class public Lj83;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public c:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public d:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public e:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public f:F

.field public g:F

.field public h:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public i:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public j:F

.field public k:F

.field public l:F

.field public m:F

.field public n:F

.field public o:I

.field public p:I

.field public q:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

.field public final r:Ljava/util/Map;

.field public s:Z

.field public t:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f866666    # 1.05f

    iput v0, p0, Lj83;->n:F

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lj83;->r:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Lj83;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lj83;->t(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic b(Lj83;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lj83;->o(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic c(Lj83;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lj83;->u(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic d(Lj83;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lj83;->r(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic e(Lj83;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lj83;->s(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic f(Lj83;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lj83;->q(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic g(Lj83;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lj83;->p(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic h(Lj83;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lj83;->n(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lj83;->s:Z

    iput-boolean v0, p0, Lj83;->t:Z

    iget-object v1, p0, Lj83;->a:Landroid/view/View;

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v1, Landroid/view/ViewGroup;

    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-nez v3, :cond_0

    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayerType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    iget-object v5, p0, Lj83;->r:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setViewLayerType =================== index\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "   originType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "MyLog"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final B()V
    .locals 3

    iget-object v0, p0, Lj83;->b:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lj83;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object v0, p0, Lj83;->b:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    iget-object v0, p0, Lj83;->c:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v2, p0, Lj83;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScaleY()F

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object v0, p0, Lj83;->c:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    iget-object v0, p0, Lj83;->d:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lj83;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object v0, p0, Lj83;->d:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    iget-object v0, p0, Lj83;->e:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v2, p0, Lj83;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object p0, p0, Lj83;->e:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method public C(II)V
    .locals 1

    iput p1, p0, Lj83;->o:I

    iput p2, p0, Lj83;->p:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x43040000    # 132.0f

    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    const/high16 p1, 0x3fa00000    # 1.25f

    iput p1, p0, Lj83;->n:F

    goto :goto_0

    :cond_0
    const/high16 v0, 0x44760000    # 984.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    const p1, 0x3f866666    # 1.05f

    iput p1, p0, Lj83;->n:F

    goto :goto_0

    :cond_1
    sub-float p2, p1, p2

    const/high16 v0, 0x44550000    # 852.0f

    div-float/2addr p2, v0

    const/high16 v0, 0x41400000    # 12.0f

    mul-float/2addr p2, v0

    const/high16 v0, 0x421c0000    # 39.0f

    add-float/2addr p2, v0

    add-float/2addr p2, p1

    div-float/2addr p2, p1

    iput p2, p0, Lj83;->n:F

    :goto_0
    iget-object p1, p0, Lj83;->q:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    if-eqz p1, :cond_3

    sget-object p2, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->DIALOG:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    if-eq p1, p2, :cond_2

    sget-object p2, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->POPUP_WINDOW:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    if-eq p1, p2, :cond_2

    sget-object p2, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->TEXT_SELECTOR_COLLAPSE:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    if-eq p1, p2, :cond_2

    sget-object p2, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->TEXT_SELECTOR_EXPAND:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    if-ne p1, p2, :cond_3

    :cond_2
    const p2, 0x3f8147ae    # 1.01f

    iput p2, p0, Lj83;->n:F

    :cond_3
    if-eqz p1, :cond_4

    sget-object p2, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->DEFAULT:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    if-ne p1, p2, :cond_4

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lj83;->n:F

    :cond_4
    return-void
.end method

.method public final D(Landroidx/dynamicanimation/animation/SpringAnimation;FF)V
    .locals 0

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 3

    iget v0, p0, Lj83;->l:F

    iget v1, p0, Lj83;->j:F

    add-float/2addr v0, v1

    iget v1, p0, Lj83;->m:F

    iget v2, p0, Lj83;->k:F

    add-float/2addr v1, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    invoke-virtual {p0, v0, v2}, Lj83;->m(FF)F

    move-result v0

    invoke-virtual {p0, v1, v2}, Lj83;->m(FF)F

    move-result v1

    iget-object v2, p0, Lj83;->a:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object p0, p0, Lj83;->a:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public j(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lj83;->b:Landroidx/dynamicanimation/animation/SpringAnimation;

    const v1, 0x3b03126f    # 0.002f

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lj83;->k(F)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iput-object v0, p0, Lj83;->b:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v2, Lb83;

    invoke-direct {v2, p0}, Lb83;-><init>(Lj83;)V

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v2, Lc83;

    invoke-direct {v2, p0}, Lc83;-><init>(Lj83;)V

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    :cond_0
    iget-object v0, p0, Lj83;->c:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Lj83;->k(F)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iput-object v0, p0, Lj83;->c:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Ld83;

    invoke-direct {v1, p0}, Ld83;-><init>(Lj83;)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Le83;

    invoke-direct {v1, p0}, Le83;-><init>(Lj83;)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    :cond_1
    iget-object v0, p0, Lj83;->d:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_2

    invoke-virtual {p0, v1}, Lj83;->k(F)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iput-object v0, p0, Lj83;->d:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v2, Lf83;

    invoke-direct {v2, p0}, Lf83;-><init>(Lj83;)V

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    :cond_2
    iget-object v0, p0, Lj83;->e:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_3

    invoke-virtual {p0, v1}, Lj83;->k(F)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iput-object v0, p0, Lj83;->e:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lg83;

    invoke-direct {v1, p0}, Lg83;-><init>(Lj83;)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    :cond_3
    iget-object v0, p0, Lj83;->h:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lj83;->l()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    new-instance v1, Lh83;

    invoke-direct {v1, p0}, Lh83;-><init>(Lj83;)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object v0, p0, Lj83;->h:Landroidx/dynamicanimation/animation/SpringAnimation;

    :cond_4
    iget-object v0, p0, Lj83;->i:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lj83;->l()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    new-instance v1, Li83;

    invoke-direct {v1, p0}, Li83;-><init>(Lj83;)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object v0, p0, Lj83;->i:Landroidx/dynamicanimation/animation/SpringAnimation;

    :cond_5
    iput-object p1, p0, Lj83;->a:Landroid/view/View;

    iget-object p1, p0, Lj83;->q:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    if-nez p1, :cond_6

    sget-object p1, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->DEFAULT:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    invoke-virtual {p0, p1}, Lj83;->y(Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;)V

    :cond_6
    return-void
.end method

.method public final k(F)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 2

    new-instance p0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>()V

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    invoke-virtual {v0, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p0

    check-cast p0, Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method public final l()Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 2

    new-instance p0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v0, 0x437a0000    # 250.0f

    invoke-virtual {p0, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p0

    const v0, 0x3f7d70a4    # 0.99f

    invoke-virtual {p0, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p0

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>()V

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    invoke-virtual {v0, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p0

    const v0, 0x3b03126f    # 0.002f

    invoke-virtual {p0, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p0

    check-cast p0, Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method public final m(FF)F
    .locals 0

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, p2

    return p0
.end method

.method public final synthetic n(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lj83;->s:Z

    invoke-virtual {p0}, Lj83;->x()V

    return-void
.end method

.method public final synthetic o(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    const/high16 p1, 0x447a0000    # 1000.0f

    invoke-virtual {p0, p2, p1}, Lj83;->m(FF)F

    move-result p1

    iget-object p0, p0, Lj83;->a:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    return-void
.end method

.method public final synthetic p(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lj83;->t:Z

    invoke-virtual {p0}, Lj83;->x()V

    return-void
.end method

.method public final synthetic q(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    const/high16 p1, 0x447a0000    # 1000.0f

    invoke-virtual {p0, p2, p1}, Lj83;->m(FF)F

    move-result p1

    iget-object p0, p0, Lj83;->a:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public final synthetic r(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    const/high16 p1, 0x40000000    # 2.0f

    invoke-virtual {p0, p2, p1}, Lj83;->m(FF)F

    move-result p1

    iget-object p0, p0, Lj83;->a:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method public final synthetic s(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    const/high16 p1, 0x40000000    # 2.0f

    invoke-virtual {p0, p2, p1}, Lj83;->m(FF)F

    move-result p1

    iget-object p0, p0, Lj83;->a:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public final synthetic t(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    iput p2, p0, Lj83;->l:F

    invoke-virtual {p0}, Lj83;->i()V

    return-void
.end method

.method public final synthetic u(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    iput p2, p0, Lj83;->m:F

    invoke-virtual {p0}, Lj83;->i()V

    return-void
.end method

.method public v(Landroid/view/MotionEvent;)V
    .locals 4

    iget-object v0, p0, Lj83;->a:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lj83;->f:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v1, p0, Lj83;->g:F

    sub-float/2addr p1, v1

    iget-object v1, p0, Lj83;->d:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    iget-object v1, p0, Lj83;->e:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    iget-object v1, p0, Lj83;->q:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->getK1()F

    move-result v1

    mul-float/2addr v1, v0

    iget-object v2, p0, Lj83;->q:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    invoke-virtual {v2}, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->getK2()F

    move-result v2

    mul-float/2addr v2, p1

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {p0, v1, v3}, Lj83;->m(FF)F

    move-result v1

    invoke-virtual {p0, v2, v3}, Lj83;->m(FF)F

    move-result v2

    iget-object v3, p0, Lj83;->a:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v1, p0, Lj83;->a:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v1, 0x3b5844d0    # 0.0033f

    mul-float/2addr v0, v1

    mul-float/2addr p1, v1

    iget-object v1, p0, Lj83;->q:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->getK3()F

    move-result v1

    mul-float/2addr v1, v0

    iget-object v2, p0, Lj83;->q:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    invoke-virtual {v2}, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->getK4()F

    move-result v2

    mul-float/2addr v2, p1

    sub-float/2addr v1, v2

    iget-object v2, p0, Lj83;->q:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    invoke-virtual {v2}, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->getK5()F

    move-result v2

    mul-float/2addr p1, v2

    iget-object v2, p0, Lj83;->q:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    invoke-virtual {v2}, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->getK6()F

    move-result v2

    mul-float/2addr v0, v2

    sub-float/2addr p1, v0

    iput v1, p0, Lj83;->j:F

    iput p1, p0, Lj83;->k:F

    invoke-virtual {p0}, Lj83;->i()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    iput p1, p0, Lj83;->j:F

    iput p1, p0, Lj83;->k:F

    iget-object p1, p0, Lj83;->h:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    iget-object p1, p0, Lj83;->i:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    invoke-virtual {p0}, Lj83;->B()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lj83;->b:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    iget-object v0, p0, Lj83;->c:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lj83;->f:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lj83;->g:F

    iget-object p1, p0, Lj83;->h:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v0, p0, Lj83;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object p1, p0, Lj83;->i:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v0, p0, Lj83;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object p1, p0, Lj83;->h:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v0, p0, Lj83;->n:F

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    iget-object p1, p0, Lj83;->i:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v0, p0, Lj83;->n:F

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    invoke-virtual {p0}, Lj83;->A()V

    :goto_0
    return-void
.end method

.method public w()V
    .locals 1

    iget-object v0, p0, Lj83;->h:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    iget-object v0, p0, Lj83;->i:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    iget-object v0, p0, Lj83;->b:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    iget-object v0, p0, Lj83;->c:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    iget-object v0, p0, Lj83;->d:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    iget-object v0, p0, Lj83;->e:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    iget-object v0, p0, Lj83;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lj83;->a:Landroid/view/View;

    return-void
.end method

.method public final x()V
    .locals 5

    iget-boolean v0, p0, Lj83;->s:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lj83;->t:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lj83;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreLayerType =================== index\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MyLog"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj83;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lj83;->s:Z

    iput-boolean v0, p0, Lj83;->t:Z

    :cond_1
    return-void
.end method

.method public y(Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;)V
    .locals 1

    iput-object p1, p0, Lj83;->q:Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->getSpringStiffness()F

    move-result v0

    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;->getSpringDamping()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lj83;->z(FF)V

    iget p1, p0, Lj83;->o:I

    if-lez p1, :cond_0

    iget v0, p0, Lj83;->p:I

    if-lez v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lj83;->C(II)V

    :cond_0
    return-void
.end method

.method public final z(FF)V
    .locals 1

    iget-object v0, p0, Lj83;->b:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0, v0, p1, p2}, Lj83;->D(Landroidx/dynamicanimation/animation/SpringAnimation;FF)V

    iget-object v0, p0, Lj83;->c:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0, v0, p1, p2}, Lj83;->D(Landroidx/dynamicanimation/animation/SpringAnimation;FF)V

    iget-object v0, p0, Lj83;->d:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0, v0, p1, p2}, Lj83;->D(Landroidx/dynamicanimation/animation/SpringAnimation;FF)V

    iget-object v0, p0, Lj83;->e:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0, v0, p1, p2}, Lj83;->D(Landroidx/dynamicanimation/animation/SpringAnimation;FF)V

    return-void
.end method
