.class public final Lw7b;
.super Landroid/transition/Visibility;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw7b$a;,
        Lw7b$b;
    }
.end annotation


# static fields
.field public static final d:Lw7b$a;


# instance fields
.field public final b:Lcom/yandex/div2/DivTooltip$Position;

.field public final c:Ljava/lang/Float;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lw7b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lw7b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lw7b;->d:Lw7b$a;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/div2/DivTooltip$Position;Ljava/lang/Float;)V
    .locals 1

    const-string v0, "position"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    .line 3
    iput-object p1, p0, Lw7b;->b:Lcom/yandex/div2/DivTooltip$Position;

    .line 4
    iput-object p2, p0, Lw7b;->c:Ljava/lang/Float;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/yandex/div2/DivTooltip$Position;Ljava/lang/Float;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2}, Lw7b;-><init>(Lcom/yandex/div2/DivTooltip$Position;Ljava/lang/Float;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/div2/DivTooltip$Position;)F
    .locals 0

    sget-object p0, Lw7b$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_0
    const/4 p0, 0x0

    goto :goto_0

    :pswitch_1
    const/high16 p0, 0x3f000000    # 0.5f

    goto :goto_0

    :pswitch_2
    const/high16 p0, -0x40800000    # -1.0f

    goto :goto_0

    :pswitch_3
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Lcom/yandex/div2/DivTooltip$Position;)F
    .locals 0

    sget-object p0, Lw7b$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_0
    const/high16 p0, 0x3f000000    # 0.5f

    goto :goto_0

    :pswitch_1
    const/high16 p0, -0x40800000    # -1.0f

    goto :goto_0

    :pswitch_2
    const/4 p0, 0x0

    goto :goto_0

    :pswitch_3
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "sceneRoot"

    invoke-static {p1, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "view"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "startValues"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "endValues"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lw7b;->b:Lcom/yandex/div2/DivTooltip$Position;

    invoke-virtual {p0, p1}, Lw7b;->a(Lcom/yandex/div2/DivTooltip$Position;)F

    move-result p1

    iget-object p3, p0, Lw7b;->b:Lcom/yandex/div2/DivTooltip$Position;

    invoke-virtual {p0, p3}, Lw7b;->c(Lcom/yandex/div2/DivTooltip$Position;)F

    move-result p3

    iget-object p4, p0, Lw7b;->c:Ljava/lang/Float;

    if-eqz p4, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p4

    int-to-float p4, p4

    iget-object v3, p0, Lw7b;->c:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float/2addr p4, v3

    goto :goto_0

    :cond_0
    sget-object p4, Lw7b;->d:Lw7b$a;

    invoke-static {p4, p2}, Lw7b$a;->a(Lw7b$a;Landroid/view/View;)F

    move-result p4

    :goto_0
    mul-float/2addr p1, p4

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lw7b;->c:Ljava/lang/Float;

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object p0, p0, Lw7b;->c:Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    mul-float/2addr p1, p0

    goto :goto_1

    :cond_1
    sget-object p0, Lw7b;->d:Lw7b$a;

    invoke-static {p0, p2}, Lw7b$a;->a(Lw7b$a;Landroid/view/View;)F

    move-result p1

    :goto_1
    mul-float/2addr p3, p1

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationY(F)V

    sget-object p0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result p1

    const/4 p3, 0x0

    new-array p4, v2, [F

    aput p1, p4, v1

    aput p3, p4, v0

    invoke-static {p0, p4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    sget-object p1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result p4

    new-array v2, v2, [F

    aput p4, v2, v1

    aput p3, v2, v0

    invoke-static {p1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    filled-new-array {p0, p1}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-string p1, "ofPropertyValuesHolder(\n\u2026f\n            )\n        )"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "sceneRoot"

    invoke-static {p1, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "view"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "startValues"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "endValues"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lw7b;->b:Lcom/yandex/div2/DivTooltip$Position;

    invoke-virtual {p0, p1}, Lw7b;->a(Lcom/yandex/div2/DivTooltip$Position;)F

    move-result p1

    iget-object p3, p0, Lw7b;->b:Lcom/yandex/div2/DivTooltip$Position;

    invoke-virtual {p0, p3}, Lw7b;->c(Lcom/yandex/div2/DivTooltip$Position;)F

    move-result p3

    sget-object p4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    iget-object v3, p0, Lw7b;->c:Ljava/lang/Float;

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lw7b;->c:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float/2addr v3, v4

    goto :goto_0

    :cond_0
    sget-object v3, Lw7b;->d:Lw7b$a;

    invoke-static {v3, p2}, Lw7b$a;->a(Lw7b$a;Landroid/view/View;)F

    move-result v3

    :goto_0
    mul-float/2addr p1, v3

    const/4 v3, 0x0

    new-array v4, v2, [F

    aput v3, v4, v1

    aput p1, v4, v0

    invoke-static {p4, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    sget-object p4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget-object v4, p0, Lw7b;->c:Ljava/lang/Float;

    if-eqz v4, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object p0, p0, Lw7b;->c:Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    mul-float/2addr v4, p0

    goto :goto_1

    :cond_1
    sget-object p0, Lw7b;->d:Lw7b$a;

    invoke-static {p0, p2}, Lw7b$a;->a(Lw7b$a;Landroid/view/View;)F

    move-result v4

    :goto_1
    mul-float/2addr p3, v4

    new-array p0, v2, [F

    aput v3, p0, v1

    aput p3, p0, v0

    invoke-static {p4, p0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    filled-new-array {p1, p0}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-string p1, "ofPropertyValuesHolder(\n\u2026n\n            )\n        )"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
