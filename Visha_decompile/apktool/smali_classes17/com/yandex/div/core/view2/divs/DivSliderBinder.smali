.class public final Lcom/yandex/div/core/view2/divs/DivSliderBinder;
.super Lwu2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/view2/divs/DivSliderBinder$a;
    }
.end annotation


# static fields
.field public static final i:Lcom/yandex/div/core/view2/divs/DivSliderBinder$a;


# instance fields
.field public final b:Lgd2;

.field public final c:Lbu2;

.field public final d:Lcom/yandex/div/core/expression/variables/b;

.field public final e:Lxc3;

.field public final f:F

.field public final g:Z

.field public h:Lwc3;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div/core/view2/divs/DivSliderBinder$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->i:Lcom/yandex/div/core/view2/divs/DivSliderBinder$a;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/div/core/view2/divs/DivBaseBinder;Lgd2;Lbu2;Lcom/yandex/div/core/expression/variables/b;Lxc3;FZ)V
    .locals 1

    const-string v0, "baseBinder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typefaceProvider"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "variableBinder"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorCollectors"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lwu2;-><init>(Lcom/yandex/div/core/view2/divs/DivBaseBinder;)V

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->b:Lgd2;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->c:Lbu2;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->d:Lcom/yandex/div/core/expression/variables/b;

    iput-object p5, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->e:Lxc3;

    iput p6, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->f:F

    iput-boolean p7, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->g:Z

    return-void
.end method

.method public static final synthetic f(Lcom/yandex/div/core/view2/divs/DivSliderBinder;Lcom/yandex/div/internal/widget/slider/SliderView;Loj3;Lcom/yandex/div2/DivDrawable;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->r(Lcom/yandex/div/internal/widget/slider/SliderView;Loj3;Lcom/yandex/div2/DivDrawable;)V

    return-void
.end method

.method public static final synthetic g(Lcom/yandex/div/core/view2/divs/DivSliderBinder;Lcom/yandex/div/internal/widget/slider/SliderView;Loj3;Lcom/yandex/div2/DivSlider$TextStyle;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->s(Lcom/yandex/div/internal/widget/slider/SliderView;Loj3;Lcom/yandex/div2/DivSlider$TextStyle;)V

    return-void
.end method

.method public static final synthetic h(Lcom/yandex/div/core/view2/divs/DivSliderBinder;Lcom/yandex/div/internal/widget/slider/SliderView;Loj3;Lcom/yandex/div2/DivDrawable;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->t(Lcom/yandex/div/internal/widget/slider/SliderView;Loj3;Lcom/yandex/div2/DivDrawable;)V

    return-void
.end method

.method public static final synthetic i(Lcom/yandex/div/core/view2/divs/DivSliderBinder;Lcom/yandex/div/internal/widget/slider/SliderView;Loj3;Lcom/yandex/div2/DivSlider$TextStyle;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->u(Lcom/yandex/div/internal/widget/slider/SliderView;Loj3;Lcom/yandex/div2/DivSlider$TextStyle;)V

    return-void
.end method

.method public static final synthetic j(Lcom/yandex/div/core/view2/divs/DivSliderBinder;Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Loj3;Lcom/yandex/div2/DivDrawable;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->v(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Loj3;Lcom/yandex/div2/DivDrawable;)V

    return-void
.end method

.method public static final synthetic k(Lcom/yandex/div/core/view2/divs/DivSliderBinder;Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Loj3;Lcom/yandex/div2/DivDrawable;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->w(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Loj3;Lcom/yandex/div2/DivDrawable;)V

    return-void
.end method

.method public static final synthetic l(Lcom/yandex/div/core/view2/divs/DivSliderBinder;Lcom/yandex/div/internal/widget/slider/SliderView;Loj3;Lcom/yandex/div2/DivDrawable;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->x(Lcom/yandex/div/internal/widget/slider/SliderView;Loj3;Lcom/yandex/div2/DivDrawable;)V

    return-void
.end method

.method public static final synthetic m(Lcom/yandex/div/core/view2/divs/DivSliderBinder;Lcom/yandex/div/internal/widget/slider/SliderView;Loj3;Lcom/yandex/div2/DivDrawable;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->y(Lcom/yandex/div/internal/widget/slider/SliderView;Loj3;Lcom/yandex/div2/DivDrawable;)V

    return-void
.end method

.method public static final synthetic n(Lcom/yandex/div/core/view2/divs/DivSliderBinder;Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->A(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;)V

    return-void
.end method

.method public static final synthetic o()Lcom/yandex/div/core/view2/divs/DivSliderBinder$a;
    .locals 1

    sget-object v0, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->i:Lcom/yandex/div/core/view2/divs/DivSliderBinder$a;

    return-object v0
.end method

.method public static final synthetic p(Lcom/yandex/div/core/view2/divs/DivSliderBinder;)Lwc3;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->h:Lwc3;

    return-object p0
.end method

.method public static final synthetic q(Lcom/yandex/div/core/view2/divs/DivSliderBinder;)Lgd2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->b:Lgd2;

    return-object p0
.end method


# virtual methods
.method public final A(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;)V
    .locals 1

    iget-boolean v0, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->g:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->h:Lwc3;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$checkSliderTicks$$inlined$doOnPreDraw$1;

    invoke-direct {v0, p1, p1, p0}, Lcom/yandex/div/core/view2/divs/DivSliderBinder$checkSliderTicks$$inlined$doOnPreDraw$1;-><init>(Landroid/view/View;Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Lcom/yandex/div/core/view2/divs/DivSliderBinder;)V

    invoke-static {p1, v0}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    :cond_1
    :goto_0
    return-void
.end method

.method public final B(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Loj3;Lcom/yandex/div2/DivDrawable;)V
    .locals 1

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->r(Lcom/yandex/div/internal/widget/slider/SliderView;Loj3;Lcom/yandex/div2/DivDrawable;)V

    new-instance v0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$observeThumbSecondaryStyle$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivSliderBinder$observeThumbSecondaryStyle$1;-><init>(Lcom/yandex/div/core/view2/divs/DivSliderBinder;Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Loj3;Lcom/yandex/div2/DivDrawable;)V

    invoke-static {p1, p3, p2, v0}, Lsj3;->e(Lqj3;Lcom/yandex/div2/DivDrawable;Loj3;Le74;)V

    return-void
.end method

.method public final C(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Loj3;Lcom/yandex/div2/DivSlider$TextStyle;)V
    .locals 2

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->s(Lcom/yandex/div/internal/widget/slider/SliderView;Loj3;Lcom/yandex/div2/DivSlider$TextStyle;)V

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget-object v0, p3, Lcom/yandex/div2/DivSlider$TextStyle;->h:Lcom/yandex/div/json/expressions/Expression;

    new-instance v1, Lcom/yandex/div/core/view2/divs/DivSliderBinder$observeThumbSecondaryTextStyle$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivSliderBinder$observeThumbSecondaryTextStyle$1;-><init>(Lcom/yandex/div/core/view2/divs/DivSliderBinder;Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Loj3;Lcom/yandex/div2/DivSlider$TextStyle;)V

    invoke-virtual {v0, p2, v1}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;->addSubscription(Lqc2;)V

    return-void
.end method

.method public final D(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Ljava/lang/String;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;)V
    .locals 1

    new-instance v0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$b;

    invoke-direct {v0, p1, p0, p3}, Lcom/yandex/div/core/view2/divs/DivSliderBinder$b;-><init>(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Lcom/yandex/div/core/view2/divs/DivSliderBinder;Lcom/yandex/div/core/view2/a;)V

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->d:Lcom/yandex/div/core/expression/variables/b;

    invoke-virtual {p0, p3, p2, v0, p4}, Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder;->a(Lcom/yandex/div/core/view2/a;Ljava/lang/String;Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder$a;Lcom/yandex/div/core/state/DivStatePath;)Lqc2;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;->addSubscription(Lqc2;)V

    return-void
.end method

.method public final E(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Loj3;Lcom/yandex/div2/DivDrawable;)V
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->t(Lcom/yandex/div/internal/widget/slider/SliderView;Loj3;Lcom/yandex/div2/DivDrawable;)V

    new-instance v0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$observeThumbStyle$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivSliderBinder$observeThumbStyle$1;-><init>(Lcom/yandex/div/core/view2/divs/DivSliderBinder;Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Loj3;Lcom/yandex/div2/DivDrawable;)V

    invoke-static {p1, p3, p2, v0}, Lsj3;->e(Lqj3;Lcom/yandex/div2/DivDrawable;Loj3;Le74;)V

    return-void
.end method

.method public final F(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Loj3;Lcom/yandex/div2/DivSlider$TextStyle;)V
    .locals 2

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->u(Lcom/yandex/div/internal/widget/slider/SliderView;Loj3;Lcom/yandex/div2/DivSlider$TextStyle;)V

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget-object v0, p3, Lcom/yandex/div2/DivSlider$TextStyle;->h:Lcom/yandex/div/json/expressions/Expression;

    new-instance v1, Lcom/yandex/div/core/view2/divs/DivSliderBinder$observeThumbTextStyle$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivSliderBinder$observeThumbTextStyle$1;-><init>(Lcom/yandex/div/core/view2/divs/DivSliderBinder;Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Loj3;Lcom/yandex/div2/DivSlider$TextStyle;)V

    invoke-virtual {v0, p2, v1}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;->addSubscription(Lqc2;)V

    return-void
.end method

.method public final G(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Lcom/yandex/div2/DivSlider;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;)V
    .locals 1

    iget-object p2, p2, Lcom/yandex/div2/DivSlider;->E:Ljava/lang/String;

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$c;

    invoke-direct {v0, p1, p0, p3}, Lcom/yandex/div/core/view2/divs/DivSliderBinder$c;-><init>(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Lcom/yandex/div/core/view2/divs/DivSliderBinder;Lcom/yandex/div/core/view2/a;)V

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->d:Lcom/yandex/div/core/expression/variables/b;

    invoke-virtual {p0, p3, p2, v0, p4}, Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder;->a(Lcom/yandex/div/core/view2/a;Ljava/lang/String;Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder$a;Lcom/yandex/div/core/state/DivStatePath;)Lqc2;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;->addSubscription(Lqc2;)V

    return-void
.end method

.method public final H(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Loj3;Lcom/yandex/div2/DivDrawable;)V
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->v(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Loj3;Lcom/yandex/div2/DivDrawable;)V

    new-instance v0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$observeTickMarkActiveStyle$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivSliderBinder$observeTickMarkActiveStyle$1;-><init>(Lcom/yandex/div/core/view2/divs/DivSliderBinder;Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Loj3;Lcom/yandex/div2/DivDrawable;)V

    invoke-static {p1, p3, p2, v0}, Lsj3;->e(Lqj3;Lcom/yandex/div2/DivDrawable;Loj3;Le74;)V

    return-void
.end method

.method public final I(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Loj3;Lcom/yandex/div2/DivDrawable;)V
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->w(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Loj3;Lcom/yandex/div2/DivDrawable;)V

    new-instance v0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$observeTickMarkInactiveStyle$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivSliderBinder$observeTickMarkInactiveStyle$1;-><init>(Lcom/yandex/div/core/view2/divs/DivSliderBinder;Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Loj3;Lcom/yandex/div2/DivDrawable;)V

    invoke-static {p1, p3, p2, v0}, Lsj3;->e(Lqj3;Lcom/yandex/div2/DivDrawable;Loj3;Le74;)V

    return-void
.end method

.method public final J(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Loj3;Lcom/yandex/div2/DivDrawable;)V
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->x(Lcom/yandex/div/internal/widget/slider/SliderView;Loj3;Lcom/yandex/div2/DivDrawable;)V

    new-instance v0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$observeTrackActiveStyle$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivSliderBinder$observeTrackActiveStyle$1;-><init>(Lcom/yandex/div/core/view2/divs/DivSliderBinder;Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Loj3;Lcom/yandex/div2/DivDrawable;)V

    invoke-static {p1, p3, p2, v0}, Lsj3;->e(Lqj3;Lcom/yandex/div2/DivDrawable;Loj3;Le74;)V

    return-void
.end method

.method public final K(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Loj3;Lcom/yandex/div2/DivDrawable;)V
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->y(Lcom/yandex/div/internal/widget/slider/SliderView;Loj3;Lcom/yandex/div2/DivDrawable;)V

    new-instance v0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$observeTrackInactiveStyle$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivSliderBinder$observeTrackInactiveStyle$1;-><init>(Lcom/yandex/div/core/view2/divs/DivSliderBinder;Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Loj3;Lcom/yandex/div2/DivDrawable;)V

    invoke-static {p1, p3, p2, v0}, Lsj3;->e(Lqj3;Lcom/yandex/div2/DivDrawable;Loj3;Le74;)V

    return-void
.end method

.method public final L(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Lcom/yandex/div2/DivSlider;Loj3;)V
    .locals 16

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-virtual/range {p1 .. p1}, Lcom/yandex/div/internal/widget/slider/SliderView;->getRanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, v8, Lcom/yandex/div2/DivSlider;->u:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/yandex/div2/DivSlider$Range;

    new-instance v13, Lcom/yandex/div/internal/widget/slider/SliderView$d;

    invoke-direct {v13}, Lcom/yandex/div/internal/widget/slider/SliderView$d;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/yandex/div/internal/widget/slider/SliderView;->getRanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v12, Lcom/yandex/div2/DivSlider$Range;->c:Lcom/yandex/div/json/expressions/Expression;

    if-nez v0, :cond_1

    iget-object v0, v8, Lcom/yandex/div2/DivSlider;->s:Lcom/yandex/div/json/expressions/Expression;

    :cond_1
    new-instance v1, Lcom/yandex/div/core/view2/divs/DivSliderBinder$setupRanges$1$1;

    invoke-direct {v1, v7, v13}, Lcom/yandex/div/core/view2/divs/DivSliderBinder$setupRanges$1$1;-><init>(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Lcom/yandex/div/internal/widget/slider/SliderView$d;)V

    invoke-virtual {v0, v9, v1}, Lcom/yandex/div/json/expressions/Expression;->f(Loj3;Le74;)Lqc2;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;->addSubscription(Lqc2;)V

    iget-object v0, v12, Lcom/yandex/div2/DivSlider$Range;->a:Lcom/yandex/div/json/expressions/Expression;

    if-nez v0, :cond_2

    iget-object v0, v8, Lcom/yandex/div2/DivSlider;->r:Lcom/yandex/div/json/expressions/Expression;

    :cond_2
    new-instance v1, Lcom/yandex/div/core/view2/divs/DivSliderBinder$setupRanges$1$2;

    invoke-direct {v1, v7, v13}, Lcom/yandex/div/core/view2/divs/DivSliderBinder$setupRanges$1$2;-><init>(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Lcom/yandex/div/internal/widget/slider/SliderView$d;)V

    invoke-virtual {v0, v9, v1}, Lcom/yandex/div/json/expressions/Expression;->f(Loj3;Le74;)Lqc2;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;->addSubscription(Lqc2;)V

    iget-object v6, v12, Lcom/yandex/div2/DivSlider$Range;->b:Lcom/yandex/div2/DivEdgeInsets;

    const/4 v0, 0x0

    if-nez v6, :cond_3

    invoke-virtual {v13, v0}, Lcom/yandex/div/internal/widget/slider/SliderView$d;->n(I)V

    invoke-virtual {v13, v0}, Lcom/yandex/div/internal/widget/slider/SliderView$d;->m(I)V

    move-object/from16 p0, v11

    goto/16 :goto_6

    :cond_3
    iget-object v1, v6, Lcom/yandex/div2/DivEdgeInsets;->e:Lcom/yandex/div/json/expressions/Expression;

    if-nez v1, :cond_4

    iget-object v2, v6, Lcom/yandex/div2/DivEdgeInsets;->b:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v2, :cond_5

    :cond_4
    const/4 v0, 0x1

    :cond_5
    if-eqz v0, :cond_6

    :goto_1
    move-object v14, v1

    goto :goto_2

    :cond_6
    iget-object v1, v6, Lcom/yandex/div2/DivEdgeInsets;->c:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_1

    :goto_2
    if-eqz v0, :cond_7

    iget-object v0, v6, Lcom/yandex/div2/DivEdgeInsets;->b:Lcom/yandex/div/json/expressions/Expression;

    :goto_3
    move-object v15, v0

    goto :goto_4

    :cond_7
    iget-object v0, v6, Lcom/yandex/div2/DivEdgeInsets;->d:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_3

    :goto_4
    if-eqz v14, :cond_8

    new-instance v5, Lcom/yandex/div/core/view2/divs/DivSliderBinder$setupRanges$1$3$1$1;

    move-object v0, v5

    move-object/from16 v1, p1

    move-object v2, v13

    move-object v3, v6

    move-object/from16 v4, p3

    move-object/from16 p0, v11

    move-object v11, v5

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/yandex/div/core/view2/divs/DivSliderBinder$setupRanges$1$3$1$1;-><init>(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Lcom/yandex/div/internal/widget/slider/SliderView$d;Lcom/yandex/div2/DivEdgeInsets;Loj3;Landroid/util/DisplayMetrics;)V

    invoke-virtual {v14, v9, v11}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;->addSubscription(Lqc2;)V

    goto :goto_5

    :cond_8
    move-object/from16 p0, v11

    :goto_5
    if-eqz v15, :cond_9

    new-instance v11, Lcom/yandex/div/core/view2/divs/DivSliderBinder$setupRanges$1$3$2$1;

    move-object v0, v11

    move-object/from16 v1, p1

    move-object v2, v13

    move-object v3, v6

    move-object/from16 v4, p3

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/yandex/div/core/view2/divs/DivSliderBinder$setupRanges$1$3$2$1;-><init>(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Lcom/yandex/div/internal/widget/slider/SliderView$d;Lcom/yandex/div2/DivEdgeInsets;Loj3;Landroid/util/DisplayMetrics;)V

    invoke-virtual {v15, v9, v11}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;->addSubscription(Lqc2;)V

    :cond_9
    iget-object v11, v6, Lcom/yandex/div2/DivEdgeInsets;->g:Lcom/yandex/div/json/expressions/Expression;

    new-instance v6, Lcom/yandex/div/core/view2/divs/DivSliderBinder$setupRanges$1$3$3;

    move-object v0, v6

    move-object/from16 v1, p1

    move-object v2, v14

    move-object v3, v15

    move-object v4, v13

    move-object/from16 v5, p3

    move-object v14, v6

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/yandex/div/core/view2/divs/DivSliderBinder$setupRanges$1$3$3;-><init>(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/internal/widget/slider/SliderView$d;Loj3;Landroid/util/DisplayMetrics;)V

    invoke-virtual {v11, v9, v14}, Lcom/yandex/div/json/expressions/Expression;->f(Loj3;Le74;)Lqc2;

    :goto_6
    iget-object v0, v12, Lcom/yandex/div2/DivSlider$Range;->d:Lcom/yandex/div2/DivDrawable;

    if-nez v0, :cond_a

    iget-object v0, v8, Lcom/yandex/div2/DivSlider;->I:Lcom/yandex/div2/DivDrawable;

    :cond_a
    move-object v6, v0

    new-instance v11, Lcom/yandex/div/core/view2/divs/DivSliderBinder$setupRanges$1$applyActiveTrackStyle$1;

    move-object v0, v11

    move-object/from16 v1, p1

    move-object v2, v13

    move-object v3, v6

    move-object v4, v10

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/yandex/div/core/view2/divs/DivSliderBinder$setupRanges$1$applyActiveTrackStyle$1;-><init>(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Lcom/yandex/div/internal/widget/slider/SliderView$d;Lcom/yandex/div2/DivDrawable;Landroid/util/DisplayMetrics;Loj3;)V

    sget-object v14, Lzfb;->a:Lzfb;

    invoke-interface {v11, v14}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7, v6, v9, v11}, Lsj3;->e(Lqj3;Lcom/yandex/div2/DivDrawable;Loj3;Le74;)V

    iget-object v0, v12, Lcom/yandex/div2/DivSlider$Range;->e:Lcom/yandex/div2/DivDrawable;

    if-nez v0, :cond_b

    iget-object v0, v8, Lcom/yandex/div2/DivSlider;->J:Lcom/yandex/div2/DivDrawable;

    :cond_b
    move-object v6, v0

    new-instance v11, Lcom/yandex/div/core/view2/divs/DivSliderBinder$setupRanges$1$applyInactiveTrackStyle$1;

    move-object v0, v11

    move-object/from16 v1, p1

    move-object v2, v13

    move-object v3, v6

    move-object v4, v10

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/yandex/div/core/view2/divs/DivSliderBinder$setupRanges$1$applyInactiveTrackStyle$1;-><init>(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Lcom/yandex/div/internal/widget/slider/SliderView$d;Lcom/yandex/div2/DivDrawable;Landroid/util/DisplayMetrics;Loj3;)V

    invoke-interface {v11, v14}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7, v6, v9, v11}, Lsj3;->e(Lqj3;Lcom/yandex/div2/DivDrawable;Loj3;Le74;)V

    move-object/from16 v11, p0

    goto/16 :goto_0

    :cond_c
    return-void
.end method

.method public final M(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Lcom/yandex/div2/DivSlider;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;)V
    .locals 3

    iget-object v0, p2, Lcom/yandex/div2/DivSlider;->B:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Lcom/yandex/div/internal/widget/slider/SliderView;->setThumbSecondaryDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p0, 0x0

    invoke-virtual {p1, v1, p0}, Lcom/yandex/div/internal/widget/slider/SliderView;->setThumbSecondaryValue(Ljava/lang/Float;Z)V

    return-void

    :cond_0
    invoke-virtual {p3}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v2

    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->D(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Ljava/lang/String;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;)V

    iget-object p3, p2, Lcom/yandex/div2/DivSlider;->z:Lcom/yandex/div2/DivDrawable;

    if-eqz p3, :cond_1

    invoke-virtual {p0, p1, v2, p3}, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->B(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Loj3;Lcom/yandex/div2/DivDrawable;)V

    sget-object v1, Lzfb;->a:Lzfb;

    :cond_1
    if-nez v1, :cond_2

    iget-object p3, p2, Lcom/yandex/div2/DivSlider;->C:Lcom/yandex/div2/DivDrawable;

    invoke-virtual {p0, p1, v2, p3}, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->B(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Loj3;Lcom/yandex/div2/DivDrawable;)V

    :cond_2
    iget-object p2, p2, Lcom/yandex/div2/DivSlider;->A:Lcom/yandex/div2/DivSlider$TextStyle;

    invoke-virtual {p0, p1, v2, p2}, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->C(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Loj3;Lcom/yandex/div2/DivSlider$TextStyle;)V

    return-void
.end method

.method public final N(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Lcom/yandex/div2/DivSlider;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;)V
    .locals 1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->G(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Lcom/yandex/div2/DivSlider;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;)V

    invoke-virtual {p3}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object p4

    iget-object v0, p2, Lcom/yandex/div2/DivSlider;->C:Lcom/yandex/div2/DivDrawable;

    invoke-virtual {p0, p1, p4, v0}, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->E(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Loj3;Lcom/yandex/div2/DivDrawable;)V

    invoke-virtual {p3}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object p3

    iget-object p2, p2, Lcom/yandex/div2/DivSlider;->D:Lcom/yandex/div2/DivSlider$TextStyle;

    invoke-virtual {p0, p1, p3, p2}, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->F(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Loj3;Lcom/yandex/div2/DivSlider$TextStyle;)V

    return-void
.end method

.method public final O(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Lcom/yandex/div2/DivSlider;Loj3;)V
    .locals 1

    iget-object v0, p2, Lcom/yandex/div2/DivSlider;->F:Lcom/yandex/div2/DivDrawable;

    invoke-virtual {p0, p1, p3, v0}, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->H(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Loj3;Lcom/yandex/div2/DivDrawable;)V

    iget-object p2, p2, Lcom/yandex/div2/DivSlider;->G:Lcom/yandex/div2/DivDrawable;

    invoke-virtual {p0, p1, p3, p2}, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->I(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Loj3;Lcom/yandex/div2/DivDrawable;)V

    return-void
.end method

.method public final P(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Lcom/yandex/div2/DivSlider;Loj3;)V
    .locals 1

    iget-object v0, p2, Lcom/yandex/div2/DivSlider;->I:Lcom/yandex/div2/DivDrawable;

    invoke-virtual {p0, p1, p3, v0}, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->J(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Loj3;Lcom/yandex/div2/DivDrawable;)V

    iget-object p2, p2, Lcom/yandex/div2/DivSlider;->J:Lcom/yandex/div2/DivDrawable;

    invoke-virtual {p0, p1, p3, p2}, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->K(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Loj3;Lcom/yandex/div2/DivDrawable;)V

    return-void
.end method

.method public bridge synthetic b(Landroid/view/View;Lcom/yandex/div/core/view2/a;Log2;Log2;Lcom/yandex/div/core/state/DivStatePath;)V
    .locals 0

    check-cast p1, Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;

    check-cast p3, Lcom/yandex/div2/DivSlider;

    check-cast p4, Lcom/yandex/div2/DivSlider;

    invoke-virtual/range {p0 .. p5}, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->z(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivSlider;Lcom/yandex/div2/DivSlider;Lcom/yandex/div/core/state/DivStatePath;)V

    return-void
.end method

.method public final r(Lcom/yandex/div/internal/widget/slider/SliderView;Loj3;Lcom/yandex/div2/DivDrawable;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const-string v0, "resources.displayMetrics"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, p0, p2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->y0(Lcom/yandex/div2/DivDrawable;Landroid/util/DisplayMetrics;Loj3;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yandex/div/internal/widget/slider/SliderView;->setThumbSecondaryDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final s(Lcom/yandex/div/internal/widget/slider/SliderView;Loj3;Lcom/yandex/div2/DivSlider$TextStyle;)V
    .locals 4

    if-eqz p3, :cond_0

    new-instance v0, Ldha;

    sget-object v1, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->i:Lcom/yandex/div/core/view2/divs/DivSliderBinder$a;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const-string v3, "resources.displayMetrics"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->c:Lbu2;

    invoke-virtual {v1, p3, v2, p0, p2}, Lcom/yandex/div/core/view2/divs/DivSliderBinder$a;->c(Lcom/yandex/div2/DivSlider$TextStyle;Landroid/util/DisplayMetrics;Lbu2;Loj3;)Lop9;

    move-result-object p0

    invoke-direct {v0, p0}, Ldha;-><init>(Lop9;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/yandex/div/internal/widget/slider/SliderView;->setThumbSecondTextDrawable(Ldha;)V

    return-void
.end method

.method public final t(Lcom/yandex/div/internal/widget/slider/SliderView;Loj3;Lcom/yandex/div2/DivDrawable;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const-string v0, "resources.displayMetrics"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, p0, p2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->y0(Lcom/yandex/div2/DivDrawable;Landroid/util/DisplayMetrics;Loj3;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yandex/div/internal/widget/slider/SliderView;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final u(Lcom/yandex/div/internal/widget/slider/SliderView;Loj3;Lcom/yandex/div2/DivSlider$TextStyle;)V
    .locals 4

    if-eqz p3, :cond_0

    new-instance v0, Ldha;

    sget-object v1, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->i:Lcom/yandex/div/core/view2/divs/DivSliderBinder$a;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const-string v3, "resources.displayMetrics"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->c:Lbu2;

    invoke-virtual {v1, p3, v2, p0, p2}, Lcom/yandex/div/core/view2/divs/DivSliderBinder$a;->c(Lcom/yandex/div2/DivSlider$TextStyle;Landroid/util/DisplayMetrics;Lbu2;Loj3;)Lop9;

    move-result-object p0

    invoke-direct {v0, p0}, Ldha;-><init>(Lop9;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/yandex/div/internal/widget/slider/SliderView;->setThumbTextDrawable(Ldha;)V

    return-void
.end method

.method public final v(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Loj3;Lcom/yandex/div2/DivDrawable;)V
    .locals 2

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const-string v1, "resources.displayMetrics"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v0, p2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->y0(Lcom/yandex/div2/DivDrawable;Landroid/util/DisplayMetrics;Loj3;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/yandex/div/internal/widget/slider/SliderView;->setActiveTickMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->A(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;)V

    return-void
.end method

.method public final w(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Loj3;Lcom/yandex/div2/DivDrawable;)V
    .locals 2

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const-string v1, "resources.displayMetrics"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v0, p2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->y0(Lcom/yandex/div2/DivDrawable;Landroid/util/DisplayMetrics;Loj3;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/yandex/div/internal/widget/slider/SliderView;->setInactiveTickMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->A(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;)V

    return-void
.end method

.method public final x(Lcom/yandex/div/internal/widget/slider/SliderView;Loj3;Lcom/yandex/div2/DivDrawable;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const-string v0, "resources.displayMetrics"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, p0, p2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->y0(Lcom/yandex/div2/DivDrawable;Landroid/util/DisplayMetrics;Loj3;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yandex/div/internal/widget/slider/SliderView;->setActiveTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final y(Lcom/yandex/div/internal/widget/slider/SliderView;Loj3;Lcom/yandex/div2/DivDrawable;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const-string v0, "resources.displayMetrics"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, p0, p2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->y0(Lcom/yandex/div2/DivDrawable;Landroid/util/DisplayMetrics;Loj3;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yandex/div/internal/widget/slider/SliderView;->setInactiveTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public z(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivSlider;Lcom/yandex/div2/DivSlider;Lcom/yandex/div/core/state/DivStatePath;)V
    .locals 3

    const-string p4, "<this>"

    invoke-static {p1, p4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "bindingContext"

    invoke-static {p2, p4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "div"

    invoke-static {p3, p4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "path"

    invoke-static {p5, p4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object p4

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->e:Lxc3;

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div/core/view2/Div2View;->getDataTag()Lei2;

    move-result-object v1

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/div/core/view2/Div2View;->getDivData()Lcom/yandex/div2/DivData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lxc3;->a(Lei2;Lcom/yandex/div2/DivData;)Lwc3;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->h:Lwc3;

    iget v0, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->f:F

    invoke-virtual {p1, v0}, Lcom/yandex/div/internal/widget/slider/SliderView;->setInterceptionAngle(F)V

    iget-object v0, p3, Lcom/yandex/div2/DivSlider;->s:Lcom/yandex/div/json/expressions/Expression;

    new-instance v1, Lcom/yandex/div/core/view2/divs/DivSliderBinder$bind$1;

    invoke-direct {v1, p1, p0}, Lcom/yandex/div/core/view2/divs/DivSliderBinder$bind$1;-><init>(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Lcom/yandex/div/core/view2/divs/DivSliderBinder;)V

    invoke-virtual {v0, p4, v1}, Lcom/yandex/div/json/expressions/Expression;->f(Loj3;Le74;)Lqc2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;->addSubscription(Lqc2;)V

    iget-object v0, p3, Lcom/yandex/div2/DivSlider;->r:Lcom/yandex/div/json/expressions/Expression;

    new-instance v1, Lcom/yandex/div/core/view2/divs/DivSliderBinder$bind$2;

    invoke-direct {v1, p1, p0}, Lcom/yandex/div/core/view2/divs/DivSliderBinder$bind$2;-><init>(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Lcom/yandex/div/core/view2/divs/DivSliderBinder;)V

    invoke-virtual {v0, p4, v1}, Lcom/yandex/div/json/expressions/Expression;->f(Loj3;Le74;)Lqc2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;->addSubscription(Lqc2;)V

    iget-object v0, p3, Lcom/yandex/div2/DivSlider;->o:Lcom/yandex/div/json/expressions/Expression;

    new-instance v1, Lcom/yandex/div/core/view2/divs/DivSliderBinder$bind$3;

    invoke-direct {v1, p1}, Lcom/yandex/div/core/view2/divs/DivSliderBinder$bind$3;-><init>(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;)V

    invoke-virtual {v0, p4, v1}, Lcom/yandex/div/json/expressions/Expression;->f(Loj3;Le74;)Lqc2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;->addSubscription(Lqc2;)V

    invoke-virtual {p1}, Lcom/yandex/div/internal/widget/slider/SliderView;->clearOnThumbChangedListener()V

    invoke-virtual {p0, p1, p3, p2, p5}, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->N(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Lcom/yandex/div2/DivSlider;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;)V

    invoke-virtual {p0, p1, p3, p2, p5}, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->M(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Lcom/yandex/div2/DivSlider;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;)V

    invoke-virtual {p0, p1, p3, p4}, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->P(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Lcom/yandex/div2/DivSlider;Loj3;)V

    invoke-virtual {p0, p1, p3, p4}, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->O(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Lcom/yandex/div2/DivSlider;Loj3;)V

    invoke-virtual {p0, p1, p3, p4}, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->L(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Lcom/yandex/div2/DivSlider;Loj3;)V

    return-void
.end method
